package com.boottask;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;

import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * v1.6.29 直连免打扰：手机请求加入车机的 P2P 组时，替用户点掉系统的「是否允许连接」弹窗。
 *
 * <p>原理（AOSP 4.4 的标准做法）：
 * 手机（peer）向车机组（车机是 GO）申请加入时，框架会发一个有序广播
 * {@code android.net.wifi.p2p.connection.WIFI_P2P_CONNECTION_REQUESTED}，
 * EXTRA 里带着请求方设备。系统 Settings 的接收器收到后弹那个框；
 * 而「允许」的真正动作是框架的<b>隐藏</b>方法
 * {@code WifiP2pManager.requestGroupInfo(WifiP2pDevice)}——弹窗的「允许」按钮调的就是它。
 * 所以本工程自己注册一个 Manifest 接收器抢先拿到这个广播，直接调该方法，
 * 弹窗的「允许」就没有必要再由用户点（有些 ROM 的厂商弹窗仍会闪一下，
 * 但连接请求已经解决，不再阻断直连）。
 *
 * <p>纪律：
 * ① 隐藏 API 全走反射——stub android.jar 里根本没有 {@code requestGroupInfo(WifiP2pDevice)}
 *    和 {@code EXTRA_DEVICE}，直接引用编不过（也不该编）；
 * ② 反射失败只记日志不抛——ROM 差异大，缺方法不能把接收器搞崩；
 * ③ 收到请求就先累加「seen」计数（哪怕开关是关的），这样「一次都没收到」
 *    就能立刻区分「系统没把广播发给第三方」还是「自动同意没生效」；
 * ④ 只在开关打开时才调同意（关着就是纯记录，不打扰）。
 */
public final class P2pAutoAccept {

    /** WIFI_P2P_CONNECTION_REQUESTED 广播里的设备 extra key（API16+ 常量的字面值）。 */
    private static final String EXTRA_DEVICE = "android.net.wifi.p2p.extra.WIFI_P2P_DEVICE";

    private static final String PREF = "p2p_auto_accept";
    private static final String K_ON = "on";
    private static final String K_SEEN = "seen";
    private static final String K_LAST = "last";

    private P2pAutoAccept() {
    }

    // ------------------------------------------------------------------ 开关与状态

    public static boolean isEnabled(Context c) {
        try {
            return prefs(c).getBoolean(K_ON, false);
        } catch (Throwable t) {
            return false;
        }
    }

    public static void setEnabled(Context c, boolean on) {
        try {
            prefs(c).edit().putBoolean(K_ON, on).commit();
        } catch (Throwable t) {
        }
        BootDiagnostics.log(c, "P2pAutoAccept: switch -> " + (on ? "on" : "off"));
    }

    /** 累计收到过的配对请求数（不含开关状态）——用于判断广播到底发没发到本 App。 */
    public static int seen(Context c) {
        try {
            return prefs(c).getInt(K_SEEN, 0);
        } catch (Throwable t) {
            return 0;
        }
    }

    public static String last(Context c) {
        try {
            String s = prefs(c).getString(K_LAST, "");
            return s == null ? "" : s;
        } catch (Throwable t) {
            return "";
        }
    }

    /** 主界面状态行文案。 */
    public static String statusText(Context c) {
        if (!isEnabled(c)) {
            return "状态：已关闭（每次直连都要在弹窗上点「允许」）";
        }
        StringBuilder sb = new StringBuilder("状态：已开启 · 累计收到配对请求 ");
        sb.append(seen(c)).append(" 次");
        String l = last(c);
        if (l.length() > 0) {
            sb.append("（最近：").append(l).append("）");
        }
        if (seen(c) == 0) {
            sb.append("　※ 还没收到过：连一次直连再回来看；仍为 0 说明");
            sb.append("该 ROM 不把请求广播给第三方 App，需换另一方案");
        }
        return sb.toString();
    }

    // ------------------------------------------------------------------ 核心

    /**
     * 收到 WIFI_P2P_CONNECTION_REQUESTED 的处理入口（接收器调用）。
     * 无论开关开关与否都会记 seen/设备名，方便事后看日志判读。
     */
    public static void onConnectionRequested(Context c, Intent in) {
        if (c == null || in == null) {
            return;
        }
        Object dev = null;
        try {
            dev = in.getParcelableExtra(EXTRA_DEVICE);
        } catch (Throwable t) {
        }
        String who = describe(dev);
        try {
            prefs(c).edit().putInt(K_SEEN, seen(c) + 1)
                    .putString(K_LAST, now() + " " + who).commit();
        } catch (Throwable t) {
        }
        if (!isEnabled(c)) {
            BootDiagnostics.log(c, "P2pAutoAccept: request seen but switch off: " + who);
            return;
        }
        String r = accept(c, dev);
        BootDiagnostics.log(c, "P2pAutoAccept: " + who + " -> " + r);
    }

    /** 调隐藏 API requestGroupInfo(WifiP2pDevice) —— 等价于用户在弹窗上点「允许」。 */
    private static String accept(Context c, Object dev) {
        if (dev == null) {
            return "no EXTRA_DEVICE（ROM 没带设备信息，放弃自动同意）";
        }
        Object mgr;
        try {
            mgr = c.getSystemService("wifi_p2p");
        } catch (Throwable t) {
            return "getSystemService(wifi_p2p) failed: " + t;
        }
        if (mgr == null) {
            return "wifi_p2p service null（WiFi 没开？）";
        }
        try {
            Class<?> devCls = Class.forName("android.net.wifi.p2p.WifiP2pDevice");
            Method m = mgr.getClass().getMethod("requestGroupInfo", devCls);
            m.invoke(mgr, dev);
            return "已自动同意（requestGroupInfo）";
        } catch (NoSuchMethodException e) {
            // 部分 ROM 只有无参的 requestGroupInfo（那是查组信息，不等于同意），不瞎调
            return "该 ROM 没有隐藏接口 requestGroupInfo(WifiP2pDevice)（弹窗消不掉）";
        } catch (Throwable t) {
            return "自动同意失败：" + t;
        }
    }

    /** 反射取设备名/地址；各 ROM getter 命名不一，逐个降级，最后退到 toString。 */
    private static String describe(Object dev) {
        if (dev == null) {
            return "设备未知(EXTRA_DEVICE 为空)";
        }
        String name = firstString(dev, new String[]{"getDeviceName", "getName"});
        String addr = firstString(dev, new String[]{"getDeviceAddress", "getAddress"});
        if (name == null && addr == null) {
            String s = String.valueOf(dev);
            return s.length() > 120 ? s.substring(0, 120) + "…" : s;
        }
        return (name == null ? "(无名字)" : name) + (addr == null ? "" : " @" + addr);
    }

    private static String firstString(Object dev, String[] getters) {
        for (int i = 0; i < getters.length; i++) {
            try {
                Object v = dev.getClass().getMethod(getters[i]).invoke(dev);
                if (v != null && String.valueOf(v).length() > 0) {
                    return String.valueOf(v);
                }
            } catch (Throwable ignored) {
            }
        }
        return null;
    }

    private static String now() {
        try {
            return new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US).format(new Date());
        } catch (Throwable t) {
            return "";
        }
    }

    private static SharedPreferences prefs(Context c) {
        return c.getSharedPreferences(PREF, Context.MODE_PRIVATE);
    }
}