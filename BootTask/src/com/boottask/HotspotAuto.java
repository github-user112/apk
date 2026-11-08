package com.boottask;

import android.content.Context;
import android.content.SharedPreferences;

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

    /** v1.6.72：记录「默认开」是否已经处理过，避免用户删掉规则后每次打开 App 又被重建 */
    private static final String PREFS = "hotspot_auto";
    private static final String K_DEFAULT_DONE = "default_applied";

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
     * v1.6.72：热点自启默认「开」。
     *
     * 首次打开 App（升级到本版本后第一次）时，如果一条热点规则都没有，就自动建一条
     * enabled=true 的规则，省掉用户手动点一次。
     *
     * 只做一次（prefs 里打标记）：用户明确关掉、甚至把规则删了之后，再打开 App 不会被强行重建，
     * 否则「关」这个动作就永远不彻底。
     */
    public static void ensureDefaultOn(Context ctx) {
        try {
            SharedPreferences sp = ctx.getSharedPreferences(PREFS, 0);
            if (sp.getBoolean(K_DEFAULT_DONE, false)) {
                return;
            }
            if (!exists(ctx)) {
                boolean ok = create(ctx);
                BootDiagnostics.log(ctx, "HotspotAuto: default rule created ok=" + ok);
            }
            sp.edit().putBoolean(K_DEFAULT_DONE, true).commit();
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "HotspotAuto.ensureDefaultOn failed: " + t);
        }
    }

    /**
     * v1.6.72：点「开」时立刻开一次热点，不等下次上电。
     *
     * 设备端脚本一趟做完：清 DISABLED/failcnt（否则脚本自己会 skip）、把 mode 写回 ap
     * （否则走 restore_sta 分支）、nohup 起主脚本，然后在同一会话里轮询 boot.log 判结果。
     * 一次连接搞定，避免反复建 adbd 连接（每次异常断开都会在 adbd 侧留 CLOSE_WAIT）。
     *
     * 轮询用「本轮新增日志」判断，不会被日志里上一次的 HOTSPOT UP 骗到：
     * 先记字节数 S，每轮取 tail -c (当前大小 - S)。
     *
     * @return 给用户看的一句话（Toast 内容）
     */
    public static String startNow(Context ctx) {
        try {
            // 连接等待只给 20 秒：手动点的时候机器早起来了，adbd 连不上就是连不上，
            // 不该让人干等 150 秒（MuMu 实测过 154 秒才回来，像卡死）。
            String out = AdbBridge.exec(START_NOW_SH, 150000L, 20000L);
            BootDiagnostics.log(ctx, "HotspotAuto.startNow out=" + out);
            if (out == null) {
                return "连不上本机 adbd，这次没开成（开关已记下，下次开机会照常开）";
            }
            if (out.indexOf("RESULT=ALREADY_UP") >= 0) {
                return "热点本来就在跑（192.168.43.1），不用再开";
            }
            if (out.indexOf("RESULT=UP") >= 0) {
                return "已开：热点可用（SSID 9B66BEB4 / 192.168.43.1）";
            }
            if (out.indexOf("RESULT=FAIL") >= 0) {
                return "开热点失败，详见 /data/local/hotspot/boot.log";
            }
            return "已发起，但两分钟内没等到热点就绪；稍后再看状态";
        } catch (Throwable t) {
            BootDiagnostics.log(ctx, "HotspotAuto.startNow failed: " + t);
            return "启动失败：" + t;
        }
    }

    /**
     * 设备端一次性脚本。用 $(...) 让车机自己展开（App 侧不做拼接）。
     *
     * 判定「开好了没」以 wlan0 上有 192.168.43.1 为准 —— 这是脚本配完 IP 的唯一证据，
     * 比读日志稳：不依赖字节偏移，也不受日志里上一次成功/失败记录干扰。
     * 另外顺带看本轮新增日志里有没有 HOTSPOT FAILED，有就提前报失败。
     *
     * 注意本机 /system/bin 没有 cut/awk/sed，全走 busybox；
     * tail 只用 -c N（不用 +N，旧 busybox 语义不一致）。
     * wc 用「文件参数」形式而不是 < 重定向：日志还不存在时，
     * `< 重定向失败是 shell 报错，2>/dev/null 吞不掉，会往 stderr 喷一行噪音。
     */
    private static final String START_NOW_SH =
            "H=/data/local/hotspot; L=$H/boot.log; "
            + "A=$(busybox ifconfig wlan0 2>/dev/null); "
            + "case \"$A\" in *192.168.43.1*) echo RESULT=ALREADY_UP; exit 0;; esac; "
            + "set -- $(busybox wc -c $L 2>/dev/null); S=${1:-0}; "
            + "rm -f $H/DISABLED $H/failcnt; echo ap > $H/mode; "
            + "busybox nohup sh $H/boot_hotspot.sh >/dev/null 2>&1 & "
            + "sleep 6; i=0; "
            + "while [ $i -lt 14 ]; do "
            + "A=$(busybox ifconfig wlan0 2>/dev/null); "
            + "case \"$A\" in *192.168.43.1*) echo RESULT=UP; exit 0;; esac; "
            + "set -- $(busybox wc -c $L 2>/dev/null); N=${1:-0}; "
            + "[ \"$N\" -le \"$S\" ] 2>/dev/null && N=$S; "
            + "D=$((N-S)); [ $D -le 0 ] && D=1; "
            + "T=$(busybox tail -c $D $L 2>/dev/null); "
            + "case \"$T\" in "
            + "*\"HOTSPOT FAILED\"*) echo RESULT=FAIL; echo \"$T\"; exit 2;; "
            + "esac; "
            + "sleep 8; i=$((i+1)); "
            + "done; "
            + "echo RESULT=TIMEOUT; busybox tail -n 10 $L 2>/dev/null; exit 3";

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
                    // v1.6.72：写完立刻回读。只写不读的话失败与成功都是 null，
                    // 日志里看到的「-> 1」是假的（MuMu 实测踩过）。
                    String out = AdbBridge.exec(
                            "settings put global wifi_on 1; settings get global wifi_on", 12000L);
                    String v = out == null ? "" : out.trim();
                    BootDiagnostics.log(ctx, "HotspotAuto: wifi_on -> [" + v + "]"
                            + ("1".equals(v) ? "" : " (未生效)"));
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
            return "热点自启：未配置（点我开启并立刻开热点）";
        }
        return isEnabled(ctx)
                ? "热点自启：已开（点我关）"
                : "热点自启：已关（点我开，并立刻开热点）";
    }

    public static String statusText(Context ctx) {
        java.util.List<Integer> idx = allIndexes(ctx);
        if (idx.isEmpty()) {
            return "还没有这条规则。点上面的按钮会创建并开启："
                    + "开机后等 90 秒自动开热点（SSID 9B66BEB4 / 192.168.43.1）";
        }
        String more = idx.size() > 1
                ? "（检测到 " + idx.size() + " 条热点规则，开关会一起生效）"
                : "";
        if (isEnabled(ctx)) {
            return "已开：开机后等 90 秒自动开热点（SSID 9B66BEB4 / 密码 12345678）" + more;
        }
        return "已关：下次开机不再自动开热点。点上面的按钮会立刻开一次，并恢复开机自启" + more;
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
