package com.boottask;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.view.accessibility.AccessibilityManager;
import android.accessibilityservice.AccessibilityServiceInfo;

import java.util.List;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * v1.6.30 直连免打扰：开关 + 状态 + 计数（**不再自己做点击动作**）。
 *
 * <p><b>v1.6.29 的教训（别再犯）</b>：那一版假设 framework 有
 * {@code WIFI_P2P_CONNECTION_REQUESTED} 广播、隐藏方法
 * {@code WifiP2pManager.requestGroupInfo(WifiP2pDevice)}、EXTRA 键
 * {@code android.net.wifi.p2p.extra.WIFI_P2P_DEVICE}。经 android-all 4.4 全量 jar
 * （含 @hide）复核：**三者全部不存在**，接收器永不触发、accept() 必抛
 * NoSuchMethodException —— 功能静默无效，注释里的"标准做法"是没验证就写的。
 * 真正的做法是 {@link P2pDialogClicker}（无障碍服务）去点弹窗。
 *
 * <p>本类现在只负责三件事：
 * ① 开关（prefs），P2pDialogClicker 每次动作前都来问一句；
 * ② 状态行文案——包括**无障碍服务是否已被用户在系统里启用**（没启用就等于没开）；
 * ③ 计数与最近结果（点了哪个按钮 / 点了几次 / 错过几次），供事后看日志。
 */
public final class P2pAutoAccept {

    private static final String PREF = "p2p_auto_accept";
    private static final String K_ON = "on";
    private static final String K_CLICKED = "clicked";
    private static final String K_MISS = "miss";
    private static final String K_LAST = "last";
    private static final String K_LAST_AT = "lastAt";
    private static final String K_KEYS = "scene_keys";   // v1.6.40 自定义触发关键字

    private P2pAutoAccept() {
    }

    // ------------------------------------------------------------------ 开关

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

    // ------------------------------------------------------------------ 自定义触发关键字（v1.6.40）

    /**
     * 自定义触发关键字（逗号/分号/换行分隔，全角半角都行）。
     * 返回 null = 用户没设过，用 P2pDialogClicker 的内置 P2P 词表；
     * 返回非空数组 = 只认这些词（窗口含任一词 + 有同意类按钮 → 才点）。
     */
    public static String[] sceneKeys(Context c) {
        try {
            String raw = prefs(c).getString(K_KEYS, "");
            if (raw == null) {
                return null;
            }
            raw = raw.trim();
            if (raw.length() == 0) {
                return null;
            }
            String[] parts = raw.split("[,，;；\\n]+");
            java.util.ArrayList<String> out = new java.util.ArrayList<String>();
            for (int i = 0; i < parts.length; i++) {
                String s = parts[i].trim();
                if (s.length() > 0) {
                    out.add(s);
                }
            }
            return out.isEmpty() ? null : out.toArray(new String[0]);
        } catch (Throwable t) {
            return null;
        }
    }

    public static String sceneKeysRaw(Context c) {
        try {
            String s = prefs(c).getString(K_KEYS, "");
            return s == null ? "" : s;
        } catch (Throwable t) {
            return "";
        }
    }

    public static void setSceneKeys(Context c, String raw) {
        try {
            prefs(c).edit().putString(K_KEYS, raw == null ? "" : raw.trim()).commit();
        } catch (Throwable t) {
        }
        BootDiagnostics.log(c, "P2pAutoAccept: sceneKeys -> "
                + (sceneKeys(c) == null ? "（内置词表）" : raw));
    }

    // ------------------------------------------------------------------ 计数（由无障碍服务上报）

    public static void noteClicked(Context c, String label, String pkg) {
        try {
            prefs(c).edit()
                    .putInt(K_CLICKED, clicked(c) + 1)
                    .putString(K_LAST, "已点「" + label + "」（" + pkg + "）")
                    .putString(K_LAST_AT, now())
                    .commit();
        } catch (Throwable t) {
        }
    }

    public static void noteMiss(Context c) {
        try {
            prefs(c).edit().putInt(K_MISS, miss(c) + 1).commit();
        } catch (Throwable t) {
        }
    }

    /** 无障碍服务连上/断开时记一笔，方便判断"开了没生效"还是"服务压根没启用"。 */
    public static void noteServiceState(Context c, boolean on) {
        try {
            prefs(c).edit().putString(K_LAST, on ? "无障碍服务已连接" : "无障碍服务已断开")
                    .putString(K_LAST_AT, now()).commit();
        } catch (Throwable t) {
        }
        BootDiagnostics.log(c, "P2pAutoAccept: accessibility service " + (on ? "connected" : "destroyed"));
    }

    public static int clicked(Context c) {
        try {
            return prefs(c).getInt(K_CLICKED, 0);
        } catch (Throwable t) {
            return 0;
        }
    }

    public static int miss(Context c) {
        try {
            return prefs(c).getInt(K_MISS, 0);
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

    public static String lastAt(Context c) {
        try {
            String s = prefs(c).getString(K_LAST_AT, "");
            return s == null ? "" : s;
        } catch (Throwable t) {
            return "";
        }
    }

    // ------------------------------------------------------------------ 无障碍服务是否真的开着

    /**
     * 查系统里启用的无障碍服务列表里有没有我们这个。
     *
     * <p>4.4 的 {@code AccessibilityServiceInfo} 没有 {@code getServiceInfo()}（那是
     * {@code ServiceInfo} 包装，晚版本才有），只有 {@code getId()}（形如
     * {@code com.boottask/com.boottask.P2pDialogClicker}）和公开字段 {@code packageNames}。
     * 两个都判：getId 后半段等类名，或 packageNames 含本包名。
     */
    public static boolean isAccessibilityServiceEnabled(Context c) {
        try {
            AccessibilityManager am = (AccessibilityManager)
                    c.getSystemService(Context.ACCESSIBILITY_SERVICE);
            if (am == null || !am.isEnabled()) {
                return false;
            }
            List<AccessibilityServiceInfo> list =
                    am.getEnabledAccessibilityServiceList(AccessibilityServiceInfo.FEEDBACK_GENERIC);
            if (list == null) {
                return false;
            }
            String cls = P2pDialogClicker.class.getName();
            String pkg = c.getPackageName();
            for (int i = 0; i < list.size(); i++) {
                AccessibilityServiceInfo info = list.get(i);
                if (info == null) {
                    continue;
                }
                try {
                    String id = info.getId();
                    if (id != null && id.endsWith(cls)) {
                        return true;
                    }
                } catch (Throwable ignored) {
                }
                try {
                    String[] pns = info.packageNames;
                    if (pns != null) {
                        for (int k = 0; k < pns.length; k++) {
                            if (pkg.equals(pns[k])) {
                                return true;
                            }
                        }
                    }
                } catch (Throwable ignored) {
                }
            }
        } catch (Throwable t) {
            BootDiagnostics.log(c, "P2pAutoAccept: query accessibility failed " + t);
        }
        return false;
    }

    /** 把用户送到系统「辅助功能」设置页去开服务。 */
    public static Intent settingsIntent() {
        return new Intent("android.settings.ACCESSIBILITY_SETTINGS");
    }

    // ------------------------------------------------------------------ 状态行

    public static String statusText(Context c) {
        StringBuilder sb = new StringBuilder();
        boolean on = isEnabled(c);
        sb.append("开关：").append(on ? "已开启" : "已关闭");
        sb.append("　无障碍服务：").append(isAccessibilityServiceEnabled(c)
                ? "已在系统里启用" : "未启用（开关开了也不生效！）");
        sb.append("\n已自动点击 ").append(clicked(c)).append(" 次");
        if (miss(c) > 0) {
            sb.append("，错过 ").append(miss(c)).append(" 次");
        }
        String l = last(c);
        if (l.length() > 0) {
            sb.append("；最近：").append(lastAt(c)).append(" ").append(l);
        }
        if (clicked(c) == 0 && on && isAccessibilityServiceEnabled(c)) {
            sb.append("\n※ 还没有点击记录：连一次直连，回来看这里；日志在 boottask-logs.zip");
        }
        return sb.toString();
    }

    // ------------------------------------------------------------------ 小工具

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