package com.baidu.carlifevehicle.logxfer;

import android.bluetooth.BluetoothAdapter;

import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/**
 * 1.22 新增：蓝牙「未开启」时不再一次判死，而是等待 + 自愈。
 *
 * 背景（车机 4.4.2 实测症状）：直连模式界面上打出
 * 【蓝牙】蓝牙未开启，跳过蓝牙通道，但用户明明已经在车机系统里连上了手机。
 *
 * 触发这一条的**唯一**条件是（见 a/a/a/a/m/m/d/a.smali）：
 *     d.b() 拿到的 BluetoothAdapter 非 null 且 isEnabled() 返回 false
 * 原代码在这时直接 return —— 蓝牙通道整条被跳过，P2P 组永远等不到手机来 join。
 *
 * 车机上「isEnabled() 报 false 但蓝牙其实能用」常见于三种情况：
 *   A. 时序：App 启动时蓝牙还在 STATE_TURNING_ON，之后再没人重试
 *      （1.18 加的 STATE_ON 广播重试只在 enable() 真的触发开机广播时才有效）
 *   B. ROM 双蓝牙：车机蓝牙电话/音乐走 MCU，Android 标准 BluetoothAdapter 一直是 OFF
 *   C. 状态不同步：BluetoothManager.getAdapter() 与 getDefaultAdapter() 结论不一致
 *
 * 本类做的三件事：
 *   1. 能等就等：未开启时每秒重试一次，最多 30 次（30 秒），期间界面能看见进度
 *   2. 边等边开：每次等待都顺手 enable() 一次（已有 BLUETOOTH_ADMIN 权限）
 *   3. 说清真相：无适配器 / 状态不一致 / 等待超时 分别打不同的日志，便于定位是 A/B/C
 *
 * 线程安全：只在 SDK 的线程池里被调用，重跑也走同一个线程池（不能挪到主线程，
 *           后面的 SPP connect 是阻塞调用，上主线程会 ANR）。
 */
public final class BtGuard {

    private static final String TAG = "CarLife_SDK";
    private static final String CONNLOG = "com.baidu.carlifevehicle.ConnLog";

    /** 最多等待的次数（每次 1 秒），超过就放弃，行为退回 1.21（跳过蓝牙通道）。 */
    private static final int MAX_WAIT = 30;

    private static int sWait = 0;

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

    /** 优先送进界面日志区（ConnLog），拿到不到才退回 logcat。 */
    private static void say(String s) {
        try {
            Class<?> c = Class.forName(CONNLOG);
            java.lang.reflect.Method m = c.getMethod("logLine", String.class);
            m.invoke(null, s);
        } catch (Throwable t) {
            android.util.Log.d(TAG, s);
        }
    }

    /**
     * 由 a/a/a/a/m/m/d/a.run() 在「决定要不要跳过蓝牙通道」时调用。
     *
     * @param skip  原逻辑的结论：true = 蓝牙没开、准备跳过
     * @param target 原 Runnable 自己（重试时原样重跑，含全部插桩日志）
     * @return true = 本次跳过握手；false = 蓝牙可用，继续走握手
     */
    public static boolean onSkipDecision(boolean skip, Runnable target) {
        BluetoothAdapter a = null;
        try {
            a = BluetoothAdapter.getDefaultAdapter();
        } catch (Throwable t) {
            a = null;
        }

        if (!skip) {
            // 蓝牙已开启 → 正常握手，等待计数清零
            if (sWait != 0) {
                say("✔ [蓝牙] 已开启, 继续带外握手");
                sWait = 0;
            }
            return false;
        }

        if (a == null) {
            say("✖ [蓝牙] 系统无蓝牙适配器(getDefaultAdapter=null), 放弃蓝牙通道");
            sWait = 0;
            return true;
        }

        boolean enabled = false;
        try {
            enabled = a.isEnabled();
        } catch (Throwable t) {
            enabled = false;
        }

        if (enabled) {
            // CarLife 走 BluetoothManager.getAdapter() 判成 false，
            // 但标准 getDefaultAdapter() 说是 true —— ROM 状态不同步（情况 C）
            say("⚠ [蓝牙] 状态不一致: BluetoothManager.getAdapter()=off / getDefaultAdapter()=on");
        }

        if (sWait >= MAX_WAIT) {
            say("✖ [蓝牙] 已等待 " + MAX_WAIT + "s 仍未开启, 放弃蓝牙通道(请检查车机蓝牙)");
            sWait = 0;
            return true;
        }

        sWait++;
        if (!enabled) {
            try {
                a.enable();
            } catch (Throwable t) {
                // 没有 BLUETOOTH_ADMIN 或 ROM 拒绝，忽略；等下一次再看状态
            }
        }
        say("… [蓝牙] 未开启, 第 " + sWait + "/" + MAX_WAIT + " 次等待(1s 后重试, 已请求 enable)");
        try {
            EXEC.schedule(target, 1, TimeUnit.SECONDS);
        } catch (Throwable t) {
            sWait = 0;
            return true;
        }
        return true;
    }
}
