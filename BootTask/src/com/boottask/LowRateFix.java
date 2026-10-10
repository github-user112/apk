package com.boottask;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.Intent;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;

import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/**
 * v1.6.25「低速断连」一站式修复（免 root）。
 *
 * 背景：亿连弹「WiFi传输速率低」→ 断联。反编译实锤是 RTT>200ms 连续 3 次触发（测时延非带宽），
 * 弹窗本身不断链；断链是同因两果。剩余嫌疑：①wlan0 对已保存网络的后台扫描/重连逼单射频跳信道
 * ②蓝牙与 WLAN 共抢 2.4G ③GO 自身负担。其中 ①② 免 root 即可消除，本类一键全做：
 *
 *   1) 蓝牙关闭（BluetoothAdapter.disable，普通权限）—— 记录原状态供还原；
 *   2) 清已保存 WiFi 网络：逐个 removeNetwork；无权限删就退化为 disableNetwork
 *      （禁用的网络 supplicant 同样不再自动重连，效果等价，且还原时能重新 enable）；
 *   3) 确认 WiFi 开着（P2P 依赖 STA 域）；
 *   4) 申请高性能 WiFi 锁 + 组播锁（NoRootFixes）；
 *   5) 启动 P2pGuard 巡检（防热点双连 + 直连时保持蓝牙关闭）。
 *
 * 做完之后：投屏 15 分钟 → 主界面「开始测 RTT」→ 不弹即实锤根因在 ①/②；
 * 还弹则根因在 GO 负担 → 转手机热点模式。「还原」可恢复蓝牙与全部被禁用网络。
 *
 * 编译约束同 MainActivity：不 import org.json；不引用 smali 类。
 */
public final class LowRateFix {

    private static final String PREFS = "lowrate";
    private static final String KEY_BT_WAS_ON = "btWasOn";
    private static final String KEY_DISABLED = "disabledNetIds";
    private static final String KEY_LAST = "lastResult";

    private LowRateFix() {
    }

    /** 一键修复。耗时主要是 BT 状态等待，须在后台线程调用；返回给 Toast/状态栏的摘要 */
    public static String runFix(Context ctx) {
        StringBuilder rep = new StringBuilder();
        log(ctx, "=== 一键修复开始 ===");

        // ---- ① 蓝牙 ----
        rep.append(btOff(ctx)).append(' ');

        // ---- ② 已保存网络 ----
        rep.append(clearSavedNetworks(ctx)).append(' ');

        // ---- ③ WiFi 保持开启 ----
        rep.append(ensureWifiOn(ctx)).append(' ');

        // ---- ④ 高性能锁 ----
        try {
            rep.append(NoRootFixes.wifiHighPerf(ctx)).append(' ');
        } catch (Throwable t) {
            rep.append("[高性能锁]异常:").append(t).append(' ');
        }

        // ---- ⑤ 直连保护守护 ----
        try {
            ctx.startService(new Intent(ctx, P2pGuard.class));
            rep.append("[直连保护]已启动(8s巡检)");
        } catch (Throwable t) {
            rep.append("[直连保护]启动失败:").append(t);
        }

        String result = rep.toString();
        ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                .edit().putString(KEY_LAST, result).commit();
        log(ctx, result);
        log(ctx, "下一步：投屏 15 分钟 → 主界面点「开始测 RTT」→"
                + " 不弹=根因是保存网络扫描/蓝牙争抢（已解决）；还弹=GO 负担，转手机热点模式。");
        log(ctx, "=== 一键修复结束 ===");
        return result;
    }

    /** 还原：重新启用被禁用网络 + 恢复蓝牙 + 释放锁 */
    public static String undo(Context ctx) {
        StringBuilder rep = new StringBuilder();
        log(ctx, "=== 还原开始 ===");
        rep.append(P2pGuard.restoreAutoConnect(ctx)).append(' ');
        rep.append(restoreNetworks(ctx)).append(' ');
        rep.append(btRestore(ctx));
        try {
            rep.append(' ').append(NoRootFixes.wifiLockRelease(ctx));
        } catch (Throwable ignored) {
        }
        String result = rep.toString();
        ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                .edit().putString(KEY_LAST, result).commit();
        log(ctx, result);
        log(ctx, "=== 还原结束 ===");
        return result;
    }

    public static String lastResult(Context ctx) {
        try {
            return ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .getString(KEY_LAST, "（还没执行过）");
        } catch (Throwable t) {
            return "（还没执行过）";
        }
    }

    // ------------------------------------------------------------------ 分步实现

    private static String btOff(Context ctx) {
        try {
            // 打开 P2pGuard 的蓝牙压制（直连活跃时蓝牙开着就自动关回）
            ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .edit().putBoolean("btGuard", true).commit();
            BluetoothAdapter ad = BluetoothAdapter.getDefaultAdapter();
            if (ad == null) {
                return "[蓝牙]无适配器，跳过";
            }
            boolean wasOn = ad.isEnabled();
            ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .edit().putBoolean(KEY_BT_WAS_ON, wasOn).commit();
            if (!wasOn) {
                return "[蓝牙]本来就没开";
            }
            boolean ok = ad.disable();
            try {
                Thread.sleep(1200L);
            } catch (InterruptedException ignored) {
            }
            return "[蓝牙]已关(ok=" + ok + "，还原可开回)";
        } catch (Throwable t) {
            return "[蓝牙]失败:" + t.getClass().getSimpleName();
        }
    }

    private static String btRestore(Context ctx) {
        try {
            // 还原 = 退出修复模式：关闭守护的蓝牙压制
            ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .edit().putBoolean("btGuard", false).commit();
            boolean wasOn = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .getBoolean(KEY_BT_WAS_ON, false);
            BluetoothAdapter ad = BluetoothAdapter.getDefaultAdapter();
            if (ad == null) {
                return "[蓝牙]无适配器";
            }
            if (!wasOn) {
                return "[蓝牙]保持关闭（修复前也没开）";
            }
            boolean ok = ad.enable();
            return "[蓝牙]已请求开启(ok=" + ok + ")";
        } catch (Throwable t) {
            return "[蓝牙]恢复失败:" + t.getClass().getSimpleName();
        }
    }

    /** 清保存网络：删得掉就删，删不掉就禁用（效果等价：supplicant 不再自动重连） */
    private static String clearSavedNetworks(Context ctx) {
        try {
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            if (wm == null) {
                return "[保存网络]取不到 WifiManager";
            }
            List<WifiConfiguration> all = wm.getConfiguredNetworks();
            if (all == null || all.isEmpty()) {
                return "[保存网络]0 个（已是最好状态，无后台重连目标）";
            }
            int removed = 0;
            int disabled = 0;
            int failed = 0;
            StringBuilder names = new StringBuilder();
            StringBuilder disabledIds = new StringBuilder();
            for (int i = 0; i < all.size(); i++) {
                WifiConfiguration c = all.get(i);
                String ssid = c.SSID == null ? "?" : c.SSID.replace("\"", "");
                int id = c.networkId;
                boolean done = false;
                // v1.6.26：改「禁用优先」——removeNetwork 是永久删除，还原按钮恢复不了，
                // 用户得重输密码；disableNetwork 同样掐断自动重连/后台扫描，但可逆。
                // 只有禁用失败时才退化为删除（并在结果里说明）。
                try {
                    done = wm.disableNetwork(id);
                    if (done) {
                        disabled++;
                        if (disabledIds.length() > 0) {
                            disabledIds.append(',');
                        }
                        disabledIds.append(id);
                    }
                } catch (Throwable ignored) {
                    done = false;
                }
                if (!done) {
                    try {
                        done = wm.removeNetwork(id);
                        if (done) {
                            removed++;
                        }
                    } catch (Throwable ignored) {
                        done = false;
                    }
                    if (!done) {
                        failed++;
                    }
                }
                if (names.length() > 0) {
                    names.append(',');
                }
                names.append(ssid).append(done ? "" : "(失败)");
            }
            ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .edit().putString(KEY_DISABLED, disabledIds.toString()).commit();
            StringBuilder r = new StringBuilder("[保存网络]共").append(all.size())
                    .append("个:禁").append(disabled).append("/删").append(removed)
                    .append("/失败").append(failed)
                    .append(" (").append(names).append(")");
            if (removed > 0) {
                r.append(" ⚠ 禁用失败被删的 ").append(removed)
                        .append(" 个无法自动还原，需在 设置→WLAN 重输密码");
            }
            if (failed > 0) {
                r.append(" ⚠ 失败的请去 设置→WLAN 手动\"取消保存\"");
            }
            return r.toString();
        } catch (Throwable t) {
            return "[保存网络]失败:" + t.getClass().getSimpleName();
        }
    }

    /** 还原时把被禁用的网络重新启用 */
    private static String restoreNetworks(Context ctx) {
        try {
            String ids = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .getString(KEY_DISABLED, "");
            if (ids.length() == 0) {
                return "[禁用网络]没有需要恢复的";
            }
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            String[] arr = ids.split(",");
            int n = 0;
            for (int i = 0; i < arr.length; i++) {
                try {
                    if (wm.enableNetwork(Integer.parseInt(arr[i].trim()), false)) {
                        n++;
                    }
                } catch (Throwable ignored) {
                }
            }
            ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .edit().putString(KEY_DISABLED, "").commit();
            return "[禁用网络]已恢复自动连接 " + n + "/" + arr.length + " 个";
        } catch (Throwable t) {
            return "[禁用网络]恢复失败:" + t.getClass().getSimpleName();
        }
    }

    private static String ensureWifiOn(Context ctx) {
        try {
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            if (wm.getWifiState() == WifiManager.WIFI_STATE_ENABLED) {
                return "[WiFi]已开启";
            }
            boolean ok = wm.setWifiEnabled(true);
            return "[WiFi]" + (ok ? "已请求开启（P2P 依赖它）" : "开启失败，请手动开");
        } catch (Throwable t) {
            return "[WiFi]检查失败:" + t.getClass().getSimpleName();
        }
    }

    // ------------------------------------------------------------------ 日志

    private static void log(Context ctx, String line) {
        try {
            File dir = new File(ctx.getFilesDir(), "log");
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            File f = new File(dir, "lowrate_fix.txt");
            if (f.length() > 65536) {
                f.delete();
            }
            String ts = new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US)
                    .format(new Date());
            FileWriter w = new FileWriter(f, true);
            w.write(ts + " " + line + "\n");
            w.close();
        } catch (Throwable ignored) {
        }
    }
}
