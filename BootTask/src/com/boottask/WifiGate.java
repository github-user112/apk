package com.boottask;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.wifi.WifiManager;

import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * v1.6.64「WiFi 闸门」——息屏关 WiFi，亮屏开 WiFi（普通 App 可做，无需 root）。
 *
 * 与 BtGate 同套路：开机/息屏立刻关，亮屏延迟 3s 开，解锁(USER_PRESENT)忽略。
 * 权限：CHANGE_WIFI_STATE 是普通权限（Manifest 已声明），WifiManager.setWifiEnabled
 * 在 4.4 上普通 App 可调。
 *
 * 边界：
 *  - 关 WiFi 会顺带拆掉 P2P 组（p2p0）和热点 AP，亮屏后系统会重建直连；
 *    CarLife 用车时再连，不影响熄屏/解锁阶段（本来也连不上）。
 *  - 若热点(热点开关)开着，setWifiEnabled(false) 可能被系统忽略，
 *    本类只如实记结果，不硬抢。
 */
public final class WifiGate {

    private static final String PREFS = "wifigate";
    private static final String KEY_ENABLED = "enabled";
    private static final long ON_DELAY_MS = 3000L;

    private static volatile String sLast = "（还没执行过）";

    private WifiGate() {
    }

    public static boolean isEnabled(Context ctx) {
        try {
            return ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .getBoolean(KEY_ENABLED, true);   // 默认开：用户这次点名要它
        } catch (Throwable t) {
            return true;
        }
    }

    public static void setEnabled(Context ctx, boolean on) {
        try {
            ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE)
                    .edit().putBoolean(KEY_ENABLED, on).commit();
        } catch (Throwable ignored) {
        }
        sLast = on ? "已开启闸门（息屏关 WiFi，亮屏 3s 后开）"
                : "已关闭闸门（WiFi 开关回到系统/手动控制）";
        logFile(ctx, sLast);
        try {
            BootDiagnostics.log(ctx, "WifiGate " + sLast);
        } catch (Throwable ignored) {
        }
    }

    public static String lastResult() {
        return sLast;
    }

    public static String wifiStateName(Context ctx) {
        try {
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            if (wm == null) {
                return "无 WifiManager";
            }
            switch (wm.getWifiState()) {
                case WifiManager.WIFI_STATE_ENABLING: return "ENABLING(开启中)";
                case WifiManager.WIFI_STATE_ENABLED: return "ENABLED(已开)";
                case WifiManager.WIFI_STATE_DISABLING: return "DISABLING(关闭中)";
                case WifiManager.WIFI_STATE_DISABLED: return "DISABLED(已关)";
                case WifiManager.WIFI_STATE_UNKNOWN: return "UNKNOWN";
                default: return "state=" + wm.getWifiState();
            }
        } catch (Throwable t) {
            return "读失败 " + t.getClass().getSimpleName();
        }
    }

    /** 开机/息屏：立刻关 WiFi。 */
    public static String turnOffNow(Context ctx, String reason) {
        String out;
        try {
            WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
            if (wm == null) {
                out = "无 WifiManager，关不了 WiFi（" + reason + "）";
            } else if (wm.getWifiState() == WifiManager.WIFI_STATE_DISABLED) {
                out = "WiFi 本来就是关的（" + reason + "）";
            } else {
                boolean ok = wm.setWifiEnabled(false);
                try {
                    Thread.sleep(800L);
                } catch (InterruptedException ignored) {
                }
                int st = wm.getWifiState();
                if (st == WifiManager.WIFI_STATE_DISABLED) {
                    out = "已关 WiFi（" + reason + "）";
                } else if (ok) {
                    out = "已请求关 WiFi（" + reason + "），当前状态 " + wifiStateName(ctx)
                            + " （热点开着时可能被忽略，属预期）";
                } else {
                    out = "关 WiFi 失败 setWifiEnabled=false 返回 false（" + reason + "），当前 "
                            + wifiStateName(ctx);
                }
            }
        } catch (Throwable t) {
            out = "关 WiFi 失败（" + reason + "）: " + t.getClass().getSimpleName();
        }
        sLast = out;
        logFile(ctx, out);
        try {
            BootDiagnostics.log(ctx, "WifiGate " + out);
        } catch (Throwable ignored) {
        }
        return out;
    }

    /** 亮屏后：延迟 3 秒再开。 */
    public static void turnOnDelayed(final Context ctx, String reason) {
        new Thread(new Runnable() {
            public void run() {
                try {
                    Thread.sleep(ON_DELAY_MS);
                } catch (InterruptedException ignored) {
                    return;
                }
                try {
                    android.os.PowerManager pm = (android.os.PowerManager)
                            ctx.getSystemService(Context.POWER_SERVICE);
                    if (pm != null && !pm.isScreenOn()) {
                        String out = "亮屏 3s 后已熄屏，跳过开 WiFi（" + reason + "）";
                        sLast = out;
                        logFile(ctx, out);
                        return;
                    }
                } catch (Throwable ignored) {
                }
                String out;
                try {
                    WifiManager wm = (WifiManager) ctx.getSystemService(Context.WIFI_SERVICE);
                    if (wm == null) {
                        out = "无 WifiManager，亮屏也不开（" + reason + "）";
                    } else if (wm.getWifiState() == WifiManager.WIFI_STATE_ENABLED) {
                        out = "WiFi 已经是开的，亮屏后保持（" + reason + "）";
                    } else {
                        boolean ok = wm.setWifiEnabled(true);
                        try {
                            Thread.sleep(1500L);
                        } catch (InterruptedException ignored) {
                        }
                        int st = wm.getWifiState();
                        if (st == WifiManager.WIFI_STATE_ENABLED
                                || st == WifiManager.WIFI_STATE_ENABLING) {
                            out = "亮屏 3s 后已开 WiFi（" + reason + "）";
                        } else {
                            out = "开 WiFi 看起来失败 setWifiEnabled(true)=" + ok
                                    + "（" + reason + "），当前 " + wifiStateName(ctx);
                        }
                    }
                } catch (Throwable t) {
                    out = "开 WiFi 失败（" + reason + "）: "
                            + t.getClass().getSimpleName() + " " + t.getMessage();
                }
                sLast = out;
                logFile(ctx, out);
                try {
                    BootDiagnostics.log(ctx, "WifiGate " + out);
                } catch (Throwable ignored) {
                }
            }
        }, "wifigate-on").start();
    }

    /** 界面/诊断用的状态行 */
    public static String statusText(Context ctx) {
        StringBuilder sb = new StringBuilder();
        sb.append("【WiFi 闸门】").append(isEnabled(ctx) ? "开" : "关").append('\n');
        sb.append("策略：息屏关、开机关、亮屏 3s 后开（解锁不动）\n");
        sb.append("当前 WiFi：").append(wifiStateName(ctx)).append('\n');
        sb.append("上次动作：").append(sLast).append('\n');
        sb.append("（关 WiFi 会拆 P2P 组和热点，亮屏后系统重建直连）");
        return sb.toString();
    }

    // ------------------------------------------------------------------ 日志

    private static void logFile(Context ctx, String text) {
        try {
            File dir = new File(ctx.getFilesDir(), "log");
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            File f = new File(dir, "wifigate.txt");
            if (f.length() > 65536L) {
                f.delete();
            }
            FileWriter w = new FileWriter(f, true);
            String ts = new SimpleDateFormat("MM-dd HH:mm:ss").format(new Date());
            w.write(ts + " " + text + "\n");
            w.close();
        } catch (Throwable ignored) {
        }
    }
}
