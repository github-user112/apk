package com.boottask;

import android.content.Context;

import java.lang.reflect.Method;

/**
 * v1.6.71：热点开机自启的总开关。
 *
 * 只改 BootTask **自己的** rules.xml，不需要 root、不需要 adb、不需要 /data/local 权限。
 *
 * 原理：规则引擎 ExecService 遍历 rules 时对每条做 optBoolean("enabled", true)，
 * 为 false 直接跳过（smali/com/boottask/ExecService.smali:203）。所以「关掉」不是删规则，
 * 而是把那条规则的 enabled 置 false —— 规则还在，列表里看得见，随时能再开。
 *
 * 识别方式：action=adbcmd 且 arg 里含 boot_hotspot.sh。
 * 不按下标找，因为用户可能在其前面加/删别的规则，下标会漂。
 *
 * 编译期约束（与 MainActivity 一致）：RuleStore 是 smali 类、stub android.jar 没有
 * org.json —— 两者对 javac 都不可见，只能全反射。
 */
public final class HotspotAuto {

    /** 生产规则里的命令，必须与部署脚本 deploy_final.sh 的 CMD 逐字一致 */
    public static final String CMD =
            "busybox nohup sh /data/local/hotspot/boot_hotspot.sh >/dev/null 2>&1 "
                    + "& sleep 6; echo LAUNCHED_after=$(busybox wc -c < /data/local/hotspot/boot.log)";

    /** 与生产规则一致：BOOT_COMPLETED 后等 90 秒（adbd 的 5555 此时才起来） */
    private static final int DELAY = 90;

    private static final String MARK = "boot_hotspot.sh";

    private HotspotAuto() {
    }

    // ------------------------------------------------------------ 查询

    /** 返回所有热点规则的下标（可能不止一条：用户可能手动加过重复的） */
    public static java.util.List<Integer> allIndexes(Context ctx) {
        java.util.List<Integer> out = new java.util.ArrayList<Integer>();
        Object arr = store("list", new Class[]{Context.class}, new Object[]{ctx});
        if (arr == null) {
            return out;
        }
        int n = intCall(arr, "length");
        for (int i = 0; i < n; i++) {
            Object r = ruleAt(arr, i);
            if (r == null) {
                continue;
            }
            String action = strCall(r, "optString", "action", "");
            String arg = strCall(r, "optString", "arg", "");
            if ("adbcmd".equals(action) && arg != null && arg.indexOf(MARK) >= 0) {
                out.add(Integer.valueOf(i));
            }
        }
        return out;
    }

    public static int findIndex(Context ctx) {
        java.util.List<Integer> idx = allIndexes(ctx);
        return idx.isEmpty() ? -1 : idx.get(0).intValue();
    }

    public static boolean exists(Context ctx) {
        return findIndex(ctx) >= 0;
    }

    /** 只要还有一条热点规则是开着的，就算「已开」 */
    public static boolean isEnabled(Context ctx) {
        java.util.List<Integer> idx = allIndexes(ctx);
        if (idx.isEmpty()) {
            return false;
        }
        Object arr = store("list", new Class[]{Context.class}, new Object[]{ctx});
        for (int k = 0; k < idx.size(); k++) {
            Object r = ruleAt(arr, idx.get(k).intValue());
            if (boolCall(r, "optBoolean", "enabled", true)) {
                return true;
            }
        }
        return false;
    }

    // ------------------------------------------------------------ 修改

    /**
     * 打开 / 关闭。
     *
     * 对所有匹配到的热点规则一起生效（不只是第一条）——RuleStore.add 是纯 append 不去重，
     * 历史上手动加过重复规则时，只 toggle 第一条会出现「关了但仍在跑」的假象。
     *
     * 关闭：每条都置 false
     * 打开：每条都置 true；一条都没有则新建（enabled=true）
     * 本来就没有规则时「关闭」直接算成功（无事可做）
     *
     * @return 是否全部操作成功
     */
    public static boolean setEnabled(Context ctx, boolean on) {
        java.util.List<Integer> idx = allIndexes(ctx);
        if (idx.isEmpty()) {
            return on ? create(ctx) : true;
        }
        Object arr = store("list", new Class[]{Context.class}, new Object[]{ctx});
        boolean ok = true;
        for (int k = 0; k < idx.size(); k++) {
            int i = idx.get(k).intValue();
            if (boolCall(ruleAt(arr, i), "optBoolean", "enabled", true) == on) {
                continue;
            }
            // RuleStore 只提供 toggle（没有 setEnabled），状态不同才翻一次
            Object r = store("toggle", new Class[]{Context.class, int.class},
                    new Object[]{ctx, Integer.valueOf(i)});
            if (!Boolean.TRUE.equals(r)) {
                ok = false;
            }
        }
        return ok;
    }

    /** 新建生产规则（用户在 App 里点「创建」时走这条） */
    private static boolean create(Context ctx) {
        try {
            Class<?> jc = Class.forName("org.json.JSONObject");
            Object j = jc.getDeclaredConstructor().newInstance();
            Method put = jc.getMethod("put", String.class, Object.class);
            put.invoke(j, "event", "boot");
            put.invoke(j, "action", "adbcmd");
            put.invoke(j, "delay", Integer.valueOf(DELAY));
            put.invoke(j, "enabled", Boolean.TRUE);
            put.invoke(j, "arg", CMD);

            Object r = Class.forName("com.boottask.RuleStore")
                    .getMethod("add", Context.class, jc)
                    .invoke(null, ctx, j);
            return Boolean.TRUE.equals(r);
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "HotspotAuto.create failed: " + t);
            return false;
        }
    }

    /**
     * 关掉自启后顺手把 framework 的 wifi_on 改回 1。
     *
     * 必须做：boot_hotspot.sh 跑过之后会把 global wifi_on 写成 0（它自己接管驱动），
     * 所以只是关掉自启的话，下次开机 Android 不会自己开 WiFi，车主得手动点。
     *
     * 走 AdbBridge（adbd 侧 root），因为 App 进程执行 settings put 会被权限挡；
     * 必须异步，AdbBridge 的连接等待最长 150 秒，放主线程会 ANR。
     */
    public static void restoreWifiOnAsync(final Context ctx) {
        new Thread(new Runnable() {
            public void run() {
                try {
                    String out = AdbBridge.exec("settings put global wifi_on 1", 8000L);
                    BootDiagnostics.log(ctx, "HotspotAuto: wifi_on -> 1, out=" + out);
                } catch (Throwable t) {
                    BootDiagnostics.log(ctx, "HotspotAuto: wifi_on restore failed: " + t);
                }
            }
        }, "hotspot-wifion").start();
    }

    // ------------------------------------------------------------ 文案

    public static String buttonText(Context ctx) {
        int i = findIndex(ctx);
        if (i < 0) {
            return "热点自启：未配置（点我创建并开启）";
        }
        return isEnabled(ctx)
                ? "热点自启：已开（点我关）"
                : "热点自启：已关（点我开）";
    }

    public static String statusText(Context ctx) {
        java.util.List<Integer> idx = allIndexes(ctx);
        if (idx.isEmpty()) {
            return "还没有这条规则。点上面的按钮会创建：开机后等 90 秒自动开热点"
                    + "（SSID 9B66BEB4 / 192.168.43.1）";
        }
        String more = idx.size() > 1
                ? "（检测到 " + idx.size() + " 条热点规则，开关会一起生效）"
                : "";
        if (isEnabled(ctx)) {
            return "已开：开机后等 90 秒自动开热点（SSID 9B66BEB4 / 密码 12345678）" + more;
        }
        return "已关：规则还在，只是启动时跳过；WiFi 交回 Android 自己管"
                + "（开机若 WiFi 是关的，在设置里打开一次即可）" + more;
    }

    // ------------------------------------------------------------ 反射帮手

    private static Object store(String method, Class<?>[] sig, Object[] args) {
        try {
            return Class.forName("com.boottask.RuleStore")
                    .getMethod(method, sig).invoke(null, args);
        } catch (Throwable t) {
            return null;
        }
    }

    private static Object ruleAt(Object arr, int i) {
        if (arr == null) {
            return null;
        }
        try {
            return arr.getClass().getMethod("getJSONObject", int.class)
                    .invoke(arr, Integer.valueOf(i));
        } catch (Throwable t) {
            return null;
        }
    }

    private static int intCall(Object obj, String method) {
        try {
            return ((Integer) obj.getClass().getMethod(method).invoke(obj)).intValue();
        } catch (Throwable t) {
            return 0;
        }
    }

    private static String strCall(Object obj, String method, String a, String b) {
        try {
            return (String) obj.getClass()
                    .getMethod(method, String.class, String.class)
                    .invoke(obj, a, b);
        } catch (Throwable t) {
            return b;
        }
    }

    private static boolean boolCall(Object obj, String method, String key, boolean dflt) {
        try {
            Object r = obj.getClass()
                    .getMethod(method, String.class, boolean.class)
                    .invoke(obj, key, Boolean.valueOf(dflt));
            return r instanceof Boolean && ((Boolean) r).booleanValue();
        } catch (Throwable t) {
            return dflt;
        }
    }
}
