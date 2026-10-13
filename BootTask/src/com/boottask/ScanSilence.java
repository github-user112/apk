package com.boottask;

import android.content.Context;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiManager;

import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;

/**
 * v1.6.32「扫描静默」——尽最大努力压掉后台 WiFi 扫描，**每一步如实报成败**。
 *
 * 分四步（①②在本车上大概率被拒——settings provider 对普通 App 抛 SecurityException，
 * 4.4 的 WRITE_SECURE_SETTINGS 是签名权限第三方拿不到；10-01 车机日志实锤
 * `settings get global ...` 都是「无权限读取」。所以拒绝不是意外，是免 root 的天花板：
 * 此时原样保留错误文本 + 给出电脑端 adb 一条命令——shell uid 有 WRITE_SECURE_SETTINGS，
 * 不需要 root 就能写）：
 *
 *   ① settings put global wifi_scan_always_enabled 0
 *      —— 关「WiFi 没连上时仍持续扫描」（位置扫描/常扫开关）
 *   ② settings put global wifi_supplicant_scan_interval_ms 300000
 *      —— 拉长 supplicant 周期扫描间隔到 5 分钟
 *      （键名 javap 复核自 4.4 framework：Settings$Global.WIFI_SUPPLICANT_SCAN_INTERVAL_MS；
 *        注意单位是**毫秒**；老文档里的 wifi_scan_throttle_enabled 是 Android 7+ 的键，4.4 上无效）
 *   ③ 禁用全部已保存 WiFi（disableNetwork，CHANGE_WIFI_STATE 普通权限 **必成**）：
 *      supplicant 不再为它们扫描/漫游 —— 免 root 唯一一定落地的硬手段；
 *   ④ 高性能 WiFi 锁（NoRootFixes.wifiHighPerf，防省电降速混进判断）。
 *
 * 还原 undo()：重新启用③记录的网络；①②用读回的原值恢复——读不到原值就给 adb 还原命令。
 *
 * 验证闭环（点不了名时的差分定位）：
 *   静默前「① 数扫描 60 秒」→ 执行本静默 → 再「① 数扫描 60 秒」：
 *   频率大降 = 已保存网络重连扫描是主犯（③起效）；
 *   没降   = 框架周期/位置扫描（①②被拒所致）→ 走日志里的 adb 命令再复测。
 */
public class ScanSilence {

    private static final String PREFS = "scansilence";
    private static final String KEY_NETS = "disabledNets";
    private static final String KEY_PRIOR_ALWAYS = "priorScanAlways";
    private static final String KEY_PRIOR_INT = "priorSuppIntervalMs";

    private static volatile String sLast = "（未执行）";

    public static String lastResult() {
        return sLast;
    }

    /** 扫描静默：settings 尝试（①②）+ 禁保存网络（③）+ 高性能锁（④），逐步报成败 */
    public static String silence(Context ctx) {
        StringBuilder rep = new StringBuilder("【扫描静默 v1.6.32】\n");
        rep.append(putGlobal(ctx, "wifi_scan_always_enabled", "0", KEY_PRIOR_ALWAYS));
        rep.append(putGlobal(ctx, "wifi_supplicant_scan_interval_ms", "300000", KEY_PRIOR_INT));
        rep.append(disableSaved(ctx));
        try {
            rep.append("④ 高性能 WiFi 锁：").append(NoRootFixes.wifiHighPerf(ctx)).append('\n');
        } catch (Throwable t) {
            rep.append("④ 高性能 WiFi 锁：异常 ").append(t).append('\n');
        }
        rep.append("→ 复测：点『① 数扫描 60 秒』对比频率（静默前也数一次更严谨）。\n");
        rep.append("  频率大降=已保存网络重连扫描是主犯；没降=框架周期/位置扫描，执行上面的 adb 命令。");
        sLast = rep.toString();
        logFile(ctx, sLast);
        return sLast;
    }

    /** 还原：重新启用被禁网络 + 用读到的原值恢复 settings（读不到就给 adb 还原命令） */
    public static String undo(Context ctx) {
        StringBuilder rep = new StringBuilder("【扫描静默·还原】\n");
        rep.append(enableSaved(ctx));
        String a = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                .getString(KEY_PRIOR_ALWAYS, "");
        String b = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                .getString(KEY_PRIOR_INT, "");
        if (a.length() > 0) {
            rep.append(putGlobalRaw(ctx, "wifi_scan_always_enabled", a));
        } else {
            rep.append("wifi_scan_always_enabled：原值没读到过（静默时写入即被拒），若电脑端改过则执行\n")
                    .append("   adb shell settings put global wifi_scan_always_enabled 1\n");
        }
        if (b.length() > 0) {
            rep.append(putGlobalRaw(ctx, "wifi_supplicant_scan_interval_ms", b));
        }
        rep.append("（settings 开关重启车机也会回到 ROM 默认值）");
        sLast = rep.toString();
        logFile(ctx, sLast);
        return sLast;
    }

    // ------------------------------------------------------------------ steps

    /**
     * 写一个 global 设置键：先读原值存档（供 undo），再写，再回读验证。
     * 4.4 上普通 App 调 settings provider 会被 SecurityException 拒（10-01 车机日志实锤
     * 连 get 都是「无权限读取」）——失败时保留命令输出原文 + 给 adb 一条命令。
     */
    private static String putGlobal(Context ctx, String key, String val, String priorKey) {
        String prior = readGlobal(key);
        if (isUsableValue(prior)) {
            ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                    .putString(priorKey, prior).commit();
        }
        return putGlobalRaw(ctx, key, val);
    }

    private static String putGlobalRaw(Context ctx, String key, String val) {
        String out = AdvActions.run(new String[]{"settings", "put", "global", key, val},
                6000L, 1024);
        String back = readGlobal(key);
        if (val.equals(back)) {
            return "✓ " + key + "=" + val + " 写入成功（回读一致）\n";
        }
        String err = oneLine(out);
        return "✗ " + key + "=" + val + " 写入失败 → " + err + "\n"
                + "   电脑执行（shell 有权限，无需 root）：adb shell settings put global "
                + key + " " + val + "\n";
    }

    private static String readGlobal(String key) {
        String v = AdvActions.run(new String[]{"settings", "get", "global", key}, 6000L, 1024);
        return v == null ? "" : v.trim();
    }

    /** 读回值可用 = 非空且不含错误特征（这台车上是「(无权限读取，需 root)」类文本） */
    private static boolean isUsableValue(String v) {
        return v != null && v.length() > 0
                && v.indexOf("权限") < 0 && v.indexOf("Exception") < 0
                && v.indexOf("Error") < 0 && v.indexOf('(') < 0;
    }

    /** 禁用全部已保存 WiFi（普通权限必成），网络 id 存档供 undo 重新启用 */
    private static String disableSaved(Context ctx) {
        try {
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            List<WifiConfiguration> cfgs = wm.getConfiguredNetworks();
            if (cfgs == null || cfgs.isEmpty()) {
                return "③ 禁用已保存 WiFi：没有已保存的网络（本来就无重连扫描源）\n";
            }
            StringBuilder ids = new StringBuilder();
            int ok = 0;
            int fail = 0;
            for (int i = 0; i < cfgs.size(); i++) {
                WifiConfiguration c = cfgs.get(i);
                if (c == null || c.networkId < 0) {
                    continue;
                }
                if (wm.disableNetwork(c.networkId)) {
                    ok++;
                    if (ids.length() > 0) {
                        ids.append(',');
                    }
                    ids.append(c.networkId);
                } else {
                    fail++;
                }
            }
            if (ok > 0) {
                ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                        .putString(KEY_NETS, ids.toString()).commit();
            }
            return "③ 禁用已保存 WiFi：" + ok + " 个成功（id=" + ids + "），" + fail
                    + " 个失败——supplicant 不再为它们扫描/漫游（免 root 必成的硬手段）\n";
        } catch (Throwable t) {
            return "③ 禁用已保存 WiFi：异常 " + t + "\n";
        }
    }

    private static String enableSaved(Context ctx) {
        try {
            String csv = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .getString(KEY_NETS, "");
            if (csv.length() == 0) {
                return "③ 没有存档的被禁网络（本次静默没禁成功过）\n";
            }
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            String[] arr = csv.split(",");
            int ok = 0;
            for (int i = 0; i < arr.length; i++) {
                try {
                    if (wm.enableNetwork(Integer.parseInt(arr[i].trim()), false)) {
                        ok++;
                    }
                } catch (NumberFormatException ignored) {
                }
            }
            ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE).edit()
                    .remove(KEY_NETS).commit();
            return "③ 重新启用保存网络：" + ok + "/" + arr.length + " 个成功\n";
        } catch (Throwable t) {
            return "③ 重新启用保存网络：异常 " + t + "\n";
        }
    }

    // ------------------------------------------------------------------ 日志

    private static void logFile(Context ctx, String text) {
        try {
            File dir = new File(ctx.getFilesDir(), "log");
            if (!dir.isDirectory() && !dir.mkdirs()) {
                dir = ctx.getFilesDir();
            }
            File f = new File(dir, "scan_silence.txt");
            if (f.length() > 512000L) {
                f.delete();
            }
            java.io.FileWriter w = new java.io.FileWriter(f, true);
            w.write(timeNow() + " " + text.replace("\n", "\n" + timeNow() + "  ") + "\n");
            w.close();
        } catch (Throwable ignored) {
        }
        try {
            File ext = new File("/sdcard/boottask");
            if (!ext.isDirectory() && !ext.mkdirs()) {
                return;
            }
            File ef = new File(ext, "scan_silence.log");
            if (ef.length() > 1048576L) {
                ef.delete();
            }
            java.io.FileWriter w2 = new java.io.FileWriter(ef, true);
            w2.write(timeNow() + " " + text.replace("\n", "\n" + timeNow() + "  ") + "\n");
            w2.close();
        } catch (Throwable ignored) {
        }
    }

    private static String oneLine(String s) {
        if (s == null || s.trim().length() == 0) {
            return "(无输出——settings 命令可能未执行/被拒无回显)";
        }
        String r = s.replace('\n', ' ').replace('\r', ' ').trim();
        return r.length() > 160 ? r.substring(0, 160) : r;
    }

    private static String timeNow() {
        try {
            return new java.text.SimpleDateFormat("MM-dd HH:mm:ss")
                    .format(new java.util.Date());
        } catch (Throwable t) {
            return "";
        }
    }
}
