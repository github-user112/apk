package com.baidu.carlifevehicle.logxfer;

import android.bluetooth.BluetoothAdapter;
import android.content.Context;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/**
 * 1.22 引入 / **1.29 重写**：蓝牙「未开启」时的等待 + 自愈 + 诊断。
 *
 * ===================== 1.29 为什么重写（车机 4.4.2 实机日志定论） =====================
 * 2026-09-23 车机（Android 4.4.2 / telechips tcc893x）1.28 日志实测：
 *
 *   19:39:03.835 ==== [阶段1] 蓝牙带外握手 ====
 *   19:39:03.850 … [蓝牙] 未开启, 第 1/30 次等待(1s 后重试, 已请求 enable)
 *   19:39:03.868 bluetoothAdapter?.isEnabled: false, so return
 *   …… 连续 30 次，每秒一次，每次都 enable() ……
 *   19:39:34.103 ✖ [蓝牙] 已等待 30s 仍未开启, 放弃蓝牙通道
 *
 * 同一份日志里，**热点模式（CONNECT_TYPE=5）100% 连上了**：
 *   19:45:06.509 connect  packet:172.29.200.143  → 19:45:20.160 rate=100%
 *
 * 结论：链路本身没问题，**唯一堵点是车机的 Android 蓝牙**。
 * 车机侧 P2P 组其实建成功了（DIRECT-cH-CarLife-HU / GO 192.168.49.1），
 * 但没有蓝牙把 SSID/PSK 送给手机 → 手机永远不会来 join → 表现"组网成功但进不去"。
 *
 * ⚠ 1.22 版的不足（这次必须补上）：
 *   ① 只打了「未开启 + 第 N 次」——**看不出现在到底是 OFF 还是 TURNING_ON**，
 *      也看不出 enable() 到底返回 true 还是被 ROM 拒了 → 无法定案。
 *   ② 两条获取路径（BluetoothManager.getAdapter() / getDefaultAdapter()）的对比
 *      只在"结论不一致"时才打，而实测两者**都是 off**（4.4 上本就是同一个对象），
 *      所以那行永远不会出现，等于没诊断。
 *   ③ 判死后 sWait 清零 → 若 run() 被再次调用（d$c 每 1s/5s 重试就会再调），
 *      **会重新开始 30s 等待，陷入"等 30s → 放弃 → 再等 30s"的空转**。
 *
 * 1.29 补的能力：
 *   1. 深度诊断：state 码(10/11/12/13/15) + isEnabled + 地址/名 + 已配对数 +
 *      enable() 返回值 + 异常 + Settings.Global(bluetooth_on)，分档打印不刷屏
 *   2. 双路径开启：BluetoothManager 那条 + getDefaultAdapter()，TURNING_ON 时不重复打搅
 *   3. 等待 30s → 45s（车机蓝牙上电确实慢）
 *   4. 判死一次就记住（sDead），后续调用只打一行，不再空转；蓝牙一旦真的开起来立即恢复
 *   5. 放弃时给出**确定性结论 + 可操作步骤**（直连必需蓝牙 → 改走热点）
 *
 * 线程安全：只在 SDK 的线程池里被调用，重跑也走同一个线程池（不能挪到主线程，
 *           后面的 SPP connect 是阻塞调用，上主线程会 ANR）。
 */
public final class BtGuard {

    private static final String TAG = "CarLife_SDK";
    private static final String CONNLOG = "com.baidu.carlifevehicle.ConnLog";

    /** 最多等待的次数（每次 1 秒），超过就判死。1.22 是 30，1.29 放宽到 45。 */
    private static final int MAX_WAIT = 45;

    private static int sWait = 0;

    /** 1.29: 已判死一次就不再重复等 45s（避免 d$c 重试造成的"等-弃-再等"空转）。 */
    private static boolean sDead = false;

    private static Context sCtx = null;
    private static boolean sCtxTried = false;

    private static final ScheduledExecutorService EXEC =
            Executors.newSingleThreadScheduledExecutor(new ThreadFactory() {
                public Thread newThread(Runnable r) {
                    Thread t = new Thread(r, "CarLifeBtWait");
                    t.setDaemon(true);
                    return t;
                }
            });

    private BtGuard() {
    }

    /** 优先送进界面日志区（ConnLog），拿不到才退回 logcat。 */
    private static void say(String s) {
        try {
            Class<?> c = Class.forName(CONNLOG);
            java.lang.reflect.Method m = c.getMethod("logLine", String.class);
            m.invoke(null, s);
        } catch (Throwable t) {
            android.util.Log.d(TAG, s);
        }
    }

    /** 反射拿 Application Context（只是为了读 Settings；拿不到就退化，不影响主流程）。 */
    private static Context ctx() {
        if (sCtx != null || sCtxTried) {
            return sCtx;
        }
        sCtxTried = true;
        try {
            Class<?> at = Class.forName("android.app.ActivityThread");
            java.lang.reflect.Method cur = at.getMethod("currentActivityThread");
            Object o = cur.invoke(null);
            java.lang.reflect.Method getApp = at.getMethod("getApplication");
            sCtx = (Context) getApp.invoke(o);
        } catch (Throwable t) {
            sCtx = null;
        }
        return sCtx;
    }

    /** state 码翻译成人话（10=OFF 11=正在开 12=ON 13=正在关 14/15=BLE 态）。 */
    private static String stateName(int st) {
        switch (st) {
            case 10: return "OFF";
            case 11: return "TURNING_ON";
            case 12: return "ON";
            case 13: return "TURNING_OFF";
            case 14: return "BLE_TURNING_ON";
            case 15: return "BLE_ON";
            default: return "?";
        }
    }

    private static int stateOf(BluetoothAdapter a) {
        if (a == null) {
            return -1;
        }
        try {
            return a.getState();
        } catch (Throwable t) {
            return -2;
        }
    }

    private static boolean enabledOf(BluetoothAdapter a) {
        if (a == null) {
            return false;
        }
        try {
            return a.isEnabled();
        } catch (Throwable t) {
            return false;
        }
    }

    /** Settings.Global("bluetooth_on")：1=系统认为该开。-9 = 读不到。 */
    private static int bluetoothOnSetting() {
        try {
            Context c = ctx();
            if (c == null) {
                return -9;
            }
            Class<?> sg = Class.forName("android.provider.Settings$Global");
            java.lang.reflect.Method m = sg.getMethod("getInt",
                    android.content.ContentResolver.class, String.class, int.class);
            Object v = m.invoke(null, c.getContentResolver(), "bluetooth_on", -9);
            return ((Integer) v).intValue();
        } catch (Throwable t) {
            return -9;
        }
    }

    /**
     * 1.29: 最后一招 —— 直接把 Settings.Global("bluetooth_on") 写成 1 再 enable()。
     *
     * 有些车机 ROM 的 BluetoothManagerService 会拿这个全局开关当闸门：开关是 0 时
     * enable() 直接返回/被吞掉，App 侧的 enable() 永远打不开。
     * 写它需要 WRITE_SECURE_SETTINGS（三方 App 一般没有 → 抛 SecurityException），
     * 所以这里**只试不赌**：失败就记一行，不影响主流程。本车机若是 /system/priv-app
     * 安装，有可能真的写进去。
     *
     * @return null=没试/跳过；true=写成功了；false=写了但没权限
     */
    private static Boolean pokeBluetoothOnSetting() {
        try {
            Context c = ctx();
            if (c == null) {
                return null;
            }
            Class<?> sg = Class.forName("android.provider.Settings$Global");
            java.lang.reflect.Method put = sg.getMethod("putInt",
                    android.content.ContentResolver.class, String.class, int.class);
            put.invoke(null, c.getContentResolver(), "bluetooth_on", Integer.valueOf(1));
            return Boolean.TRUE;
        } catch (Throwable t) {
            return Boolean.FALSE;
        }
    }

    /**
     * CarLife 自己用的那条获取路径：context.getSystemService("bluetooth").getAdapter()。
     * 4.4 上它和 getDefaultAdapter() 一般是同一个对象，但 ROM 改过就可能不是，必须对比。
     */
    private static BluetoothAdapter managerAdapter() {
        try {
            Context c = ctx();
            if (c == null) {
                return null;
            }
            Object svc = c.getSystemService("bluetooth");
            if (svc == null) {
                return null;
            }
            java.lang.reflect.Method m = svc.getClass().getMethod("getAdapter");
            Object a = m.invoke(svc);
            return (BluetoothAdapter) a;
        } catch (Throwable t) {
            return null;
        }
    }

    /** 拼一行完整诊断（只在关键节点打印，避免刷屏）。 */
    private static String diag(boolean viaManagerEnabled, Boolean enableRet, String err) {
        BluetoothAdapter a = null;
        try {
            a = BluetoothAdapter.getDefaultAdapter();
        } catch (Throwable t) {
            a = null;
        }
        BluetoothAdapter m = managerAdapter();

        int st = stateOf(a);
        boolean on = enabledOf(a);
        boolean mOn = enabledOf(m);

        StringBuilder sb = new StringBuilder();
        sb.append("[蓝牙诊断] state=").append(st).append("(").append(stateName(st)).append(")");
        sb.append(" isEnabled=").append(on);
        sb.append(" 系统路径(BluetoothManager)isEnabled=").append(mOn);
        sb.append(" 同一对象=").append(m == a);
        sb.append(" bluetooth_on=").append(bluetoothOnSetting());

        if (a != null) {
            String addr = "?";
            String name = "?";
            try {
                addr = String.valueOf(a.getAddress());
            } catch (Throwable t) {
                addr = "err";
            }
            try {
                name = String.valueOf(a.getName());
            } catch (Throwable t) {
                name = "err";
            }
            sb.append(" addr=").append(addr).append(" name=").append(name);

            int bonded = -1;
            try {
                java.util.Set<?> s = a.getBondedDevices();
                bonded = (s == null) ? -1 : s.size();
            } catch (Throwable t) {
                bonded = -2;
            }
            sb.append(" 已配对=").append(bonded);
        } else {
            sb.append(" adapter=null");
        }
        if (enableRet != null) {
            sb.append(" enable()返回=").append(enableRet.booleanValue());
        }
        if (err != null) {
            sb.append(" 异常=").append(err);
        }
        return sb.toString();
    }

    /**
     * 由 a/a/a/a/m/m/d/a.run() 在「决定要不要跳过蓝牙通道」时调用。
     * 签名**保持不变**（1.22 起的插桩点就是这一行，改签名要动 smali，没必要）。
     *
     * @param skip   原逻辑的结论：true = 蓝牙没开、准备跳过
     * @param target 原 Runnable 自己（重试时原样重跑，含全部插桩日志）
     * @return true = 本次跳过握手；false = 蓝牙可用，继续走握手
     */
    public static boolean onSkipDecision(boolean skip, Runnable target) {
        // ---- 蓝牙可用：正常握手 ----
        if (!skip) {
            if (sDead) {
                sDead = false;
                say("✔ [蓝牙] 已开启(此前判过不可用，现已恢复), 继续带外握手");
            } else if (sWait != 0) {
                say("✔ [蓝牙] 已开启, 继续带外握手");
            }
            sWait = 0;
            return false;
        }

        BluetoothAdapter a = null;
        try {
            a = BluetoothAdapter.getDefaultAdapter();
        } catch (Throwable t) {
            a = null;
        }

        if (a == null) {
            sDead = true;
            sWait = 0;
            say("✖ [蓝牙] 系统无蓝牙适配器(getDefaultAdapter=null), 放弃蓝牙通道");
            say("   → 这台车机没有 Android 蓝牙硬件，已自动启用【无蓝牙直连】兜底（见下方指引）");
            // 1.40: 蓝牙判死 → 亿连式无蓝牙兜底（挂 UDP 7999 监听 + 显示直连组 SSID/PSK）
            NoBtFallback.onBtDead();
            return true;
        }

        // ---- 1.29: 已经判死过 → 只打一行，不再空等 45s ----
        if (sDead) {
            if (sWait == 0) {
                say("… [蓝牙] 仍不可用(已判死, 跳过等待) → 无蓝牙兜底已启用, 按【无蓝牙直连】指引操作");
            }
            return true;
        }

        boolean enabled = enabledOf(a);
        int st = stateOf(a);

        // 状态不一致（情况 C）：CarLife 走的系统路径判 off，标准路径判 on → 以「开」为准
        if (enabled != enabledOf(managerAdapter())) {
            say("⚠ [蓝牙] 状态不一致: getDefaultAdapter()=" + enabled
                    + " / BluetoothManager.getAdapter()=" + enabledOf(managerAdapter()));
        }

        // ---- 判死 ----
        if (sWait >= MAX_WAIT) {
            sDead = true;
            sWait = 0;
            say("✖ [蓝牙] 已等待 " + MAX_WAIT + "s 仍未开启(state=" + st + "), 放弃蓝牙通道");
            say("   " + diag(enabledOf(managerAdapter()), null, null));
            say("════════════════════════════════════════");
            say("✖ [蓝牙不可用] 车机 Android 蓝牙没能开启 → 原版直连的 SSID/PSK 没法走蓝牙给手机");
            say("   车机侧直连组其实建好了(DIRECT-…/GO 192.168.49.1)，它本身就是个带密码的 WiFi 热点");
            say("   ★ 1.40 已自动启用【无蓝牙直连】(亿连式)：手机 WLAN 手动连上直连网络即可，见下方指引");
            say("   备选：① 改点【热点】页签 ② 改用【USB】有线");
            say("════════════════════════════════════════");
            // 1.40: 蓝牙判死 → 亿连式无蓝牙兜底（挂 UDP 7999 监听 + 显示直连组 SSID/PSK）
            NoBtFallback.onBtDead();
            return true;
        }

        sWait++;

        // ---- 边等边开：TURNING_ON 时不再重复 enable（免得打断状态机）----
        Boolean ret = null;
        String err = null;
        if (!enabled && st != 11 && st != 14) {
            try {
                ret = Boolean.valueOf(a.enable());
            } catch (Throwable t) {
                err = String.valueOf(t.getClass().getSimpleName());
            }
            // 双路径：若系统路径拿到的是另一个对象，也开一次
            BluetoothAdapter m = managerAdapter();
            if (m != null && m != a) {
                try {
                    m.enable();
                } catch (Throwable t) {
                    err = (err == null ? "" : err + "/") + String.valueOf(t.getClass().getSimpleName());
                }
            }
        } else if (!enabled) {
            err = "skip(TURNING_ON)";
        }

        // ---- 最后一招：等了 12s / 30s 还不开，试着把全局开关掰到 1 ----
        if (!enabled && (sWait == 12 || sWait == 30)) {
            Boolean poke = pokeBluetoothOnSetting();
            say("… [蓝牙] 尝试改写 Settings.Global(bluetooth_on)=1 → "
                    + (poke == null ? "无 Context, 跳过"
                       : (poke.booleanValue() ? "写入成功" : "无 WRITE_SECURE_SETTINGS 权限")));
        }

        // ---- 打印：进度每轮一行，完整诊断只在关键轮次 ----
        boolean verbose = (sWait == 1 || sWait == 2 || sWait == 5
                || sWait == 10 || sWait == 20 || sWait == 30 || sWait >= MAX_WAIT);
        if (verbose) {
            say("… [蓝牙] 未开启, 第 " + sWait + "/" + MAX_WAIT + " 次等待(1s 后重试)"
                    + " state=" + st + "(" + stateName(st) + ")"
                    + (ret == null ? "" : " enable()=" + ret.booleanValue())
                    + (err == null ? "" : " " + err));
            say("   " + diag(enabledOf(managerAdapter()), ret, err));
        } else if (sWait % 5 == 0) {
            say("… [蓝牙] 未开启, 第 " + sWait + "/" + MAX_WAIT + " 次等待(1s 后重试)"
                    + " state=" + st + "(" + stateName(st) + ")");
        }

        try {
            EXEC.schedule(target, 1, TimeUnit.SECONDS);
        } catch (Throwable t) {
            sWait = 0;
            return true;
        }
        return true;
    }
}
