package com.boottask;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;

import java.util.ArrayList;
import java.util.List;

/**
 * v1.6.50 系统级开关——无需 su，依赖「装成系统 App」（/system/app 或 /system/priv-app）：
 *
 *   ① 无线 ADB 默认开启：写 Settings.Global.adb_wifi_enabled=1（4.2+ AOSP 的
 *      AdbService 监听这个键，置 1 后 system 会把 adbd 切到 TCP 5555；键存 Settings
 *      库，重启仍有效。整个用户可见的「无线调试」开关就是它）。
 *   ② 禁用开机自启软件：PackageManager.setApplicationEnabledSetting(pkg,
 *      COMPONENT_ENABLED_STATE_DISABLED_USER, 0) —— 不动 /system、不删任何文件，
 *      数据只写在 /data 的用户状态里，pm enable / 勾选恢复 即完全还原。
 *
 * 两个操作分别需要 WRITE_SECURE_SETTINGS / CHANGE_COMPONENT_ENABLED_STATE_USER，
 * 都是 signature|system 保护级（4.4 安装时只给系统 App）。普通安装时所有写操作会
 * 抛 SecurityException —— 本类全程 try/catch 且返回人话结果，绝不让 App 崩掉；
 * 诊断快照里会显示每个权限的授予状态，一眼能判断系统 App 装没装上。
 *
 * 调用方：
 *   主界面按钮 H -> toggleAdbWifi() / adbWifiStatus()
 *   PackageEnableActivity 勾选应用 -> setPackageDisabled()
 *   BootAudioReceiver 开机 -> applyDisabledAtBoot()
 *   BootDiagnostics 诊断段 -> diagnostics()
 */
public final class SystemTools {

    private static final String TAG = "SystemTools";
    public static final String KEY_ADB_WIFI = "adb_wifi_enabled";
    private static final String PREFS = "system_tools";
    private static final String PREF_DISABLED = "disabled_pkgs";

    private SystemTools() {
    }

    // ---------------------------------------------------------------- 权限检测

    public static boolean hasSecureSettings(Context ctx) {
        try {
            return ctx.getPackageManager()
                    .checkPermission("android.permission.WRITE_SECURE_SETTINGS", ctx.getPackageName())
                    == PackageManager.PERMISSION_GRANTED;
        } catch (Throwable t) {
            return false;
        }
    }

    public static boolean hasChangeEnabledState(Context ctx) {
        try {
            return ctx.getPackageManager()
                    .checkPermission("android.permission.CHANGE_COMPONENT_ENABLED_STATE_USER",
                            ctx.getPackageName())
                    == PackageManager.PERMISSION_GRANTED;
        } catch (Throwable t) {
            return false;
        }
    }

    // ---------------------------------------------------------------- 无线 ADB

    /** 读取 adb_wifi_enabled（无系统权限时返回 -1 = 读不了） */
    public static int adbWifiEnabled(Context ctx) {
        try {
            Object v = readGlobal(ctx, KEY_ADB_WIFI, Integer.valueOf(-1));
            return v instanceof Integer ? ((Integer) v).intValue() : -1;
        } catch (Throwable t) {
            return -1;
        }
    }

    /** 一句给界面/诊断用的状态文本 */
    public static String adbWifiStatus(Context ctx) {
        boolean perm = hasSecureSettings(ctx);
        StringBuilder sb = new StringBuilder(128);
        sb.append("WRITE_SECURE_SETTINGS：").append(perm ? "已授权（系统 App）" : "未授权（点了会失败）").append('\n');
        int v = adbWifiEnabled(ctx);
        sb.append(KEY_ADB_WIFI).append(" = ")
                .append(v < 0 ? "读不了" : String.valueOf(v))
                .append(v == 1 ? "  —— 无线调试已开启，重启车机仍生效（端口 5555）"
                        : v == 0 ? "  —— 无线调试未开启" : "");
        return sb.toString();
    }

    /** 切换 adb_wifi_enabled；返回给 Toast/日志的结果文本（短） */
    public static String toggleAdbWifi(Context ctx) {
        if (!hasSecureSettings(ctx)) {
            BootDiagnostics.log(ctx, "wireless adb: 无 WRITE_SECURE_SETTINGS（未装系统 App）");
            return "需要系统 App 权限——请先用 U 盘 appsinstall 覆盖安装（见说明），再回来点这个按钮";
        }
        int cur = adbWifiEnabled(ctx);          // 读不出来当 0 处理（行为上按「未开」切过去）
        int target = cur == 1 ? 0 : 1;
        try {
            Object ok = writeGlobal(ctx, KEY_ADB_WIFI, target);
            boolean done = ok instanceof Boolean && ((Boolean) ok).booleanValue();
            BootDiagnostics.log(ctx, "wireless adb -> " + target + " (write " + (done ? "ok" : "fail") + ")");
            return target == 1
                    ? "已开启无线 ADB（adb_wifi_enabled=1）。\n重启车机后仍生效；电脑上：adb connect 车机IP:5555"
                    : "已关闭无线 ADB（adb_wifi_enabled=0）";
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "wireless adb toggle failed: " + t);
            return "写入被拒绝：" + oneLine(String.valueOf(t))
                    + "\n（需要系统 App 权限：WRITE_SECURE_SETTINGS）";
        }
    }

    // ---------------------------------------------------------------- 禁用自启包

    /** 候选包（第三方，剔除自己），按包名排序 */
    public static List<String> listThirdPartyPackages() {
        String out = AdvActions.run(new String[]{"pm", "list", "packages", "-3"}, 15000L, 262144);
        List<String> pkgs = new ArrayList<String>();
        if (out == null) {
            BootDiagnostics.log(null, "listThirdPartyPackages: pm 无输出");
            return pkgs;
        }
        String[] lines = out.split("\n");
        for (int i = 0; i < lines.length; i++) {
            String line = lines[i].trim();
            if (!line.startsWith("package:")) {
                continue;    // 剥掉 (exit=N) 之类的尾部
            }
            int exit = line.indexOf("(exit=");
            String name = (exit > 0 ? line.substring("package:".length(), exit) : line.substring("package:".length())).trim();
            if (name.length() == 0 || name.equals("com.boottask")) {
                continue;
            }
            if (!pkgs.contains(name)) {
                pkgs.add(name);
            }
        }
        java.util.Collections.sort(pkgs);
        return pkgs;
    }

    /** 该包是否已被禁用（disabled / disabled_user） */
    public static boolean isPackageDisabled(Context ctx, String pkg) {
        try {
            int state = ctx.getPackageManager().getApplicationEnabledSetting(pkg);
            return state == PackageManager.COMPONENT_ENABLED_STATE_DISABLED
                    || state == PackageManager.COMPONENT_ENABLED_STATE_DISABLED_USER;
        } catch (Throwable t) {
            return false;
        }
    }

    /**
     * 禁用或恢复单个包；同时维护 prefs 里的「已禁用清单」（开机重应用用）。
     * @return 给界面的结果文本
     */
    public static String setPackageDisabled(Context ctx, String pkg, boolean disable) {
        if (!hasChangeEnabledState(ctx)) {
            BootDiagnostics.log(ctx, "disable " + pkg + ": 无 CHANGE_COMPONENT_ENABLED_STATE_USER（未装系统 App）");
            return pkg + "：需要系统 App 权限，未改动";
        }
        try {
            ctx.getPackageManager().setApplicationEnabledSetting(pkg,
                    disable ? PackageManager.COMPONENT_ENABLED_STATE_DISABLED_USER
                            : PackageManager.COMPONENT_ENABLED_STATE_DEFAULT,
                    0);
            List<String> list = readDisabledList(ctx);
            if (disable) {
                if (!list.contains(pkg)) {
                    list.add(pkg);
                }
            } else {
                list.remove(pkg);
            }
            writeDisabledList(ctx, list);
            BootDiagnostics.log(ctx, (disable ? "disabled " : "enabled ") + pkg);
            return pkg + (disable ? " 已禁用" : " 已恢复");
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "setPackageDisabled " + pkg + " failed: " + t);
            return pkg + " 操作失败: " + oneLine(String.valueOf(t));
        }
    }

    /** 开机自愈：把 prefs 里的禁用清单重新应用（幂等；无系统权限时只记日志不动） */
    public static void applyDisabledAtBoot(Context ctx) {
        try {
            List<String> list = readDisabledList(ctx);
            if (list.isEmpty()) {
                return;
            }
            if (!hasChangeEnabledState(ctx)) {
                BootDiagnostics.log(ctx, "boot re-apply: 无 CHANGE_COMPONENT_ENABLED_STATE_USER，跳过（"
                        + list.size() + " 个待禁用包）——系统 App 没装上？");
                return;
            }
            int applied = 0;
            for (int i = 0; i < list.size(); i++) {
                String pkg = list.get(i);
                try {
                    ctx.getPackageManager().setApplicationEnabledSetting(pkg,
                            PackageManager.COMPONENT_ENABLED_STATE_DISABLED_USER, 0);
                    applied++;
                } catch (Throwable t) {
                    BootDiagnostics.log(ctx, "boot re-apply " + pkg + " failed: " + t);
                }
            }
            BootDiagnostics.log(ctx, "boot re-apply: 已重禁用 " + applied + "/" + list.size() + " 个包");
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "applyDisabledAtBoot failed: " + t);
        }
    }

    /** 给诊断快照用：权限 + adb 键 + 已禁用清单 */
    public static String diagnostics(Context ctx) {
        StringBuilder sb = new StringBuilder(512);
        sb.append(adbWifiStatus(ctx)).append('\n');
        sb.append("CHANGE_COMPONENT_ENABLED_STATE_USER：")
                .append(hasChangeEnabledState(ctx) ? "已授权（系统 App）" : "未授权").append('\n');
        List<String> list = readDisabledList(ctx);
        sb.append("已禁用清单（").append(list.size()).append(" 个）：");
        if (list.isEmpty()) {
            sb.append("（空）");
        } else {
            for (int i = 0; i < list.size(); i++) {
                sb.append('\n').append("  - ").append(list.get(i));
            }
        }
        return sb.toString();
    }

    public static List<String> readDisabledList(Context ctx) {
        ArrayList<String> list = new ArrayList<String>();
        try {
            String raw = ctx.getSharedPreferences(PREFS, 0).getString(PREF_DISABLED, "");
            if (raw == null || raw.length() == 0) {
                return list;
            }
            String[] parts = raw.split(",");
            for (int i = 0; i < parts.length; i++) {
                String p = parts[i].trim();
                if (p.length() > 0 && !list.contains(p)) {
                    list.add(p);
                }
            }
        } catch (Throwable ignored) {
        }
        return list;
    }

    private static void writeDisabledList(Context ctx, List<String> list) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < list.size(); i++) {
            if (sb.length() > 0) {
                sb.append(',');
            }
            sb.append(list.get(i));
        }
        try {
            ctx.getSharedPreferences(PREFS, 0).edit().putString(PREF_DISABLED, sb.toString()).commit();
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "writeDisabledList failed: " + t);
        }
    }

    // ---------------------------------------------------------------- 反射 Settings.Global
    // stub android.jar 没有 Settings.Global 类（且 NameValueTable 也只剩 putString），
    // 只能全反射。真 4.4 框架里这两个都是 Global 上的 public static 方法。

    private static Object readGlobal(Context ctx, String key, Object fallback) {
        try {
            Class<?> global = Class.forName("android.provider.Settings$Global");
            java.lang.reflect.Method getInt = global.getMethod("getInt",
                    android.content.ContentResolver.class, String.class);
            return getInt.invoke(null, ctx.getContentResolver(), key);
        } catch (java.lang.reflect.InvocationTargetException e) {
            return fallback;      // 键不存在等
        } catch (Throwable t) {
            return fallback;
        }
    }

    private static Object writeGlobal(Context ctx, String key, int value) throws Exception {
        Class<?> global = Class.forName("android.provider.Settings$Global");
        java.lang.reflect.Method putInt = global.getMethod("putInt",
                android.content.ContentResolver.class, String.class, int.class);
        return putInt.invoke(null, ctx.getContentResolver(), key, Integer.valueOf(value));
    }

    private static String oneLine(String s) {
        if (s == null) {
            return "null";
        }
        String r = s.replace('\n', ' ').trim();
        return r.length() > 300 ? r.substring(0, 300) : r;
    }
}
