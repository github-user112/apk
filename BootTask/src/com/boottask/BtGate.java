package com.boottask;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;
import android.content.SharedPreferences;

import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * v1.6.63「蓝牙闸门」——解锁/熄屏不打开蓝牙，点火亮屏后才打开。
 *
 * 用户诉求：汽车解锁之后蓝牙就打开了，能不能关掉；只有点火之后、车机亮屏之后
 * 再打开蓝牙。
 *
 * 做法（普通 App 就能做，无需 root）：
 *  - 开机 (BOOT_COMPLETED)：立刻关蓝牙（BluetoothAdapter.disable，需要普通权限
 *    BLUETOOTH_ADMIN，本 App Manifest 已声明）；
 *  - 熄屏 (SCREEN_OFF)：立刻关蓝牙；
 *  - 解锁 (USER_PRESENT)：故意忽略，不开蓝牙 —— 这就是用户要的；
 *  - 亮屏 (SCREEN_ON)：延迟 3 秒后开蓝牙（等系统稳住，避免点火启动风暴）。
 *
 * 边界（必须如实说明）：
 *  - 这只控制 Android 层 BluetoothAdapter 的开关（Settings.Global bluetooth_on）。
 *    德赛车机还有一层厂商蓝牙栈 svbt/svbtmanager（com.desay_svautomotive.svbt*），
 *    手机连车载电话/音乐走的那层是它，不走 BluetoothAdapter —— 那层普通 App 关不掉，
 *    要 root/adb 去禁 svbt 自启。诊断快照里有 ps/service list/签名段可定性。
 *  - CarLife 直连握手也要蓝牙（传 SSID/PSK）：亮屏 3s 后开，对“开屏要用车机”的场景
 *    无影响；熄屏/解锁阶段直连本来也不能用，无需蓝牙。
 *  - 与 LowRateFix/P2pGuard 的 btGuard（直连活跃时压蓝牙）是两条独立闸门，
 *    同一时间开着它们会打架：P2pGuard 每 8s 会把蓝牙再压回去。
 *    本闸门默认开，两个都开请只在需要省 2.4G 时才开 P2pGuard 的 btGuard。
 */
public final class BtGate {

    private static final String PREFS = "btgate";
    private static final String KEY_ENABLED = "enabled";
    private static final long ON_DELAY_MS = 3000L;

    private static volatile String sLast = "（还没执行过）";

    private BtGate() {
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
        sLast = on ? "已开启闸门（解锁不打开，亮屏 3s 后打开）"
                : "已关闭闸门（蓝牙开关回到系统/手动控制）";
        logFile(ctx, sLast);
        try {
            BootDiagnostics.log(ctx, "BtGate " + sLast);
        } catch (Throwable ignored) {
        }
    }

    public static String lastResult() {
        return sLast;
    }

    /** 开机/熄屏：立刻关蓝牙。注意：无适配器或 disable 失败都如实记，不崩。 */
    public static String turnOffNow(Context ctx, String reason) {
        String out;
        try {
            BluetoothAdapter ad = BluetoothAdapter.getDefaultAdapter();
            if (ad == null) {
                out = "无 BluetoothAdapter（getDefaultAdapter()=null，可能是 svbt 桩），"
                        + "Android 层关不掉——看诊断里的 svbt 段";
            } else if (!ad.isEnabled()) {
                out = "蓝牙本来就是关的（" + reason + "）";
            } else {
                boolean ok = ad.disable();
                try {
                    Thread.sleep(800L);
                } catch (InterruptedException ignored) {
                }
                boolean still = ad.isEnabled();
                if (ok && !still) {
                    out = "已关蓝牙（" + reason + "）";
                } else if (ok && still) {
                    out = "disable() 返回 true 但 isEnabled 仍为 true（" + reason
                            + "）——svbt 桩可能在顶回去，看诊断里的 svbt 段";
                } else {
                    out = "关蓝牙失败 disable()=" + ok + "（" + reason + "）";
                }
            }
        } catch (Throwable t) {
            out = "关蓝牙失败（" + reason + "）: " + t.getClass().getSimpleName()
                    + " " + t.getMessage();
        }
        sLast = out;
        logFile(ctx, out);
        try {
            BootDiagnostics.log(ctx, "BtGate " + out);
        } catch (Throwable ignored) {
        }
        return out;
    }

    /** 亮屏后：延迟 3 秒再开（须在后台线程调用本方法内部的等待）。 */
    public static void turnOnDelayed(final Context ctx, String reason) {
        new Thread(new Runnable() {
            public void run() {
                try {
                    Thread.sleep(ON_DELAY_MS);
                } catch (InterruptedException ignored) {
                    return;
                }
                // 三秒后如果又熄屏了，别把蓝牙再开起来
                try {
                    android.os.PowerManager pm = (android.os.PowerManager)
                            ctx.getSystemService(Context.POWER_SERVICE);
                    if (pm != null && !pm.isScreenOn()) {
                        String out = "亮屏 3s 后已熄屏，跳过开蓝牙（" + reason + "）";
                        sLast = out;
                        logFile(ctx, out);
                        return;
                    }
                } catch (Throwable ignored) {
                }
                String out;
                try {
                    BluetoothAdapter ad = BluetoothAdapter.getDefaultAdapter();
                    if (ad == null) {
                        out = "无 BluetoothAdapter，亮屏也不开（" + reason + "）";
                    } else if (ad.isEnabled()) {
                        out = "蓝牙已经是开的，亮屏后保持（" + reason + "）";
                    } else {
                        boolean ok = ad.enable();
                        try {
                            Thread.sleep(1200L);
                        } catch (InterruptedException ignored) {
                        }
                        if (!ad.isEnabled()) {
                            out = "开蓝牙看起来失败 enable()=" + ok + "（" + reason
                                    + "）——蓝牙堆栈可能没就绪，再等几秒或看诊断";
                        } else {
                            out = "亮屏 3s 后已开蓝牙（" + reason + "）";
                        }
                    }
                } catch (Throwable t) {
                    out = "开蓝牙失败（" + reason + "）: "
                            + t.getClass().getSimpleName() + " " + t.getMessage();
                }
                sLast = out;
                logFile(ctx, out);
                try {
                    BootDiagnostics.log(ctx, "BtGate " + out);
                } catch (Throwable ignored) {
                }
            }
        }, "btgate-on").start();
    }

    /** 界面/诊断用的状态行 */
    public static String statusText(Context ctx) {
        StringBuilder sb = new StringBuilder();
        sb.append("【蓝牙闸门】").append(isEnabled(ctx) ? "开" : "关").append('\n');
        sb.append("策略：解锁(USER_PRESENT)不开、熄屏关、开机关、亮屏 3s 后开\n");
        try {
            BluetoothAdapter ad = BluetoothAdapter.getDefaultAdapter();
            if (ad == null) {
                sb.append("当前 Android 蓝牙：无适配器(null)——厂商 svbt 桩在顶，"
                        + "看诊断里的「ps/svbt」段\n");
            } else {
                sb.append("当前 Android 蓝牙：").append(ad.isEnabled() ? "开" : "关")
                        .append(" state=").append(ad.getState()).append('\n');
            }
        } catch (Throwable t) {
            sb.append("当前 Android 蓝牙：读失败 ").append(t).append('\n');
        }
        sb.append("上次动作：").append(sLast).append('\n');
        sb.append("（svbt 厂商栈不受此闸门控制，手机直连车载蓝牙不经过它；要关那层需 root/adb）");
        return sb.toString();
    }

    // ------------------------------------------------------------------ 日志

    private static void logFile(Context ctx, String text) {
        try {
            File dir = new File(ctx.getFilesDir(), "log");
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            File f = new File(dir, "btgate.txt");
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
