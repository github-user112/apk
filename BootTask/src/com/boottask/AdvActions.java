package com.boottask;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.util.Log;

/**
 * v1.4 扩展动作：发送广播 / Root 命令，外加供诊断使用的通用 shell 执行器。
 *
 * 参数由 ExecService 从规则 JSON 解出后传入（本类不依赖 org.json，构建用 android.jar 无该包）：
 *   action = "broadcast" | "rootcmd"
 *   arg    = 内容
 *     broadcast: action[|component][|k=v;k2=v2]
 *                - component 形如 pkg/cls（cls 以 . 开头时自动补 pkg）；仅 pkg 时为 setPackage
 *                - extra 值前缀：无前缀=String，i:=int，b:=boolean
 *                例：com.xxx.SWITCH_SOURCE|com.xxx.main/.SourceReceiver|from=boot;i:mode=1
 *     rootcmd:   任意 shell 命令，优先经 su 执行，无 su 时退回普通 shell 并记录日志
 *                例：input tap 360 640
 *
 * 本类必须异常安全：任何 Throwable 都不外抛，exec() 对未知动作返回 false 交回旧链路。
 */
public final class AdvActions {
    private static final long CMD_TIMEOUT_MS = 15000L;
    private static final int LOG_OUT_MAX = 800;

    private AdvActions() {
    }

    /** return true = 该规则已由本类处理（含处理失败），false = 非本类动作，交回旧逻辑 */
    public static boolean exec(Context context, String action, String arg) {
        try {
            if ("broadcast".equals(action)) {
                doBroadcast(context, arg == null ? "" : arg);
                return true;
            }
            if ("rootcmd".equals(action)) {
                doRootCmd(context, arg == null ? "" : arg);
                return true;
            }
            if ("adbcmd".equals(action)) {
                doAdbCmd(context, arg == null ? "" : arg);
                return true;
            }
            return false;
        } catch (Throwable t) {
            BootDiagnostics.log(context, "adv action '" + action + "' failed: " + t);
            return true;
        }
    }

    // ---------------------------------------------------------------- broadcast

    private static void doBroadcast(Context context, String argIn) {
        String arg = argIn.trim();
        if (arg.length() == 0) {
            BootDiagnostics.log(context, "broadcast skipped: arg empty");
            return;
        }
        String[] parts = arg.split("\\|");
        String actionString = parts[0].trim();
        if (actionString.length() == 0) {
            BootDiagnostics.log(context, "broadcast skipped: action empty");
            return;
        }
        Intent intent = new Intent(actionString);
        if (parts.length >= 2) {
            String comp = parts[1].trim();
            if (comp.length() > 0) {
                int slash = comp.indexOf('/');
                if (slash > 0) {
                    String pkg = comp.substring(0, slash);
                    String cls = comp.substring(slash + 1);
                    if (cls.startsWith(".")) {
                        cls = pkg + cls;
                    }
                    intent.setComponent(new ComponentName(pkg, cls));
                } else {
                    intent.setPackage(comp);
                }
            }
        }
        if (parts.length >= 3) {
            applyExtras(intent, parts[2]);
        }
        try {
            context.sendBroadcast(intent);
            BootDiagnostics.log(context, "broadcast sent: " + actionString
                    + (intent.getComponent() != null ? " -> " + intent.getComponent() : ""));
        } catch (Throwable t) {
            BootDiagnostics.log(context, "broadcast send failed: " + t);
        }
    }

    private static void applyExtras(Intent intent, String spec) {
        String[] pairs = spec.split(";");
        for (int i = 0; i < pairs.length; i++) {
            String pair = pairs[i].trim();
            if (pair.length() == 0) {
                continue;
            }
            int eq = pair.indexOf('=');
            if (eq <= 0) {
                continue;
            }
            String key = pair.substring(0, eq).trim();
            String raw = pair.substring(eq + 1);
            try {
                if (raw.startsWith("i:")) {
                    intent.putExtra(key, Integer.parseInt(raw.substring(2)));
                } else if (raw.startsWith("b:")) {
                    intent.putExtra(key, Boolean.parseBoolean(raw.substring(2)));
                } else {
                    intent.putExtra(key, raw);
                }
            } catch (Throwable t) {
                Log.w("BootTask", "extra skipped '" + pair + "': " + t);
            }
        }
    }

    // ---------------------------------------------------------------- rootcmd

    /**
     * su 通道可用性探测结果（null = 还没探测过）。
     * <p>
     * v1.6.70：**不能**用"su 进程 exit 0"来判断通道可用。实测（MuMu + mksu 版 su）：
     * App 带 no_new_privs，su 打印 {@code su: setuid(0) failed (no_new_privs?)} 之后
     * 并没有退出，而是**继续以 App 身份把命令执行完**并 exit 0。日志长这样：
     * <pre>
     * rootcmd[su] ok 104ms: su: setuid(0) failed (no_new_privs?)
     * uid=10042(u0_a42) gid=10042(...)      &lt;-- 命令确实跑了，但身份不是 root
     * ROOTCMD_CHAIN_OK (exit=0)
     * </pre>
     * 于是 v1.6.69 的 "exit=0 即成功" 判据仍然会把这种伪成功当真，永远降级不到 adbd。
     * 唯一可靠判据：让 su 跑一次 {@code id}，看输出里有没有 {@code uid=0}。
     * 探测结果缓存，一次开机最多多花一次 exec（~100ms）。
     */
    private static Boolean sSuUsable = null;

    private static boolean suUsable(Context context) {
        if (sSuUsable != null) {
            return sSuUsable.booleanValue();
        }
        long t0 = System.currentTimeMillis();
        // 超时给 8s：真 root 管理器（SuperSU 一类）可能弹授权框，给点时间。
        String probe = run(new String[]{"su", "-c", "id"}, 8000L, 4096);
        boolean ok = probe != null && probe.indexOf("uid=0") >= 0;
        sSuUsable = Boolean.valueOf(ok);
        BootDiagnostics.log(context, "su probe " + (System.currentTimeMillis() - t0) + "ms: "
                + (ok ? "usable" : "unusable") + " -> " + clip(probe, 200));
        return ok;
    }

    private static void doRootCmd(Context context, String argIn) {
        String cmd = argIn.trim();
        if (cmd.length() == 0) {
            BootDiagnostics.log(context, "rootcmd skipped: arg empty");
            return;
        }

        // 通道 1: su（本机若无 su，ProcessBuilder 直接抛 IOException -> null）
        long t0 = System.currentTimeMillis();
        if (suUsable(context)) {
            String output = run(new String[]{"su", "-c", cmd}, CMD_TIMEOUT_MS, 8192);
            if (output != null && output.endsWith("(exit=0)")) {
                BootDiagnostics.log(context, "rootcmd[su] ok " + (System.currentTimeMillis() - t0)
                        + "ms: " + clip(output, LOG_OUT_MAX));
                return;
            }
            BootDiagnostics.log(context, "rootcmd[su] failed " + (System.currentTimeMillis() - t0)
                    + "ms: 探测可用但本次执行失败 -> " + clip(output, LOG_OUT_MAX));
        } else {
            // v1.6.66：以前这一级失败是静默的（run() 对"无输出且退出码非 0"返回 null 但不留痕），
            // 现场只看到 adbd 和 sh 两行，无法判断 su 到底是不存在还是被拒。补上这一行。
            BootDiagnostics.log(context, "rootcmd[su] skipped " + (System.currentTimeMillis() - t0)
                    + "ms: su 通道不可用（不存在 / 无 setuid 位 / 被 no_new_privs 忽略）");
        }

        // 通道 2: 本机 adbd（127.0.0.1:5555）。adbd 本身以 root 运行，
        // 提权发生在 adbd 而非 App 进程，因此不受 zygote 的 PR_SET_NO_NEW_PRIVS 影响。
        // 这是本机（无 su）拿到 root 的主通道。
        t0 = System.currentTimeMillis();
        String viaAdb = AdbBridge.exec(cmd, CMD_TIMEOUT_MS);
        if (viaAdb != null) {
            BootDiagnostics.log(context, "rootcmd[adbd] ok " + (System.currentTimeMillis() - t0)
                    + "ms: " + clip(viaAdb, LOG_OUT_MAX));
            return;
        }
        BootDiagnostics.log(context, "rootcmd[adbd] failed " + (System.currentTimeMillis() - t0)
                + "ms: adbd 不可达或未授权（检查 service.adb.tcp.port / adb_keys）");

        // 通道 3: 普通 shell 兜底（无 root，多数命令会失败，但至少留下 exit 码）
        t0 = System.currentTimeMillis();
        String shOut = run(new String[]{"sh", "-c", cmd}, CMD_TIMEOUT_MS, 8192);
        BootDiagnostics.log(context, "rootcmd[sh] done " + (System.currentTimeMillis() - t0)
                + "ms: " + clip(shOut, LOG_OUT_MAX));
    }

    /**
     * 只走 adbd 通道（跳过 su），用于单独验证 127.0.0.1:5555 这条链路。
     * 生产规则仍用 rootcmd（su 优先、adbd 兜底）；本动作只做诊断：
     *   {"event":"boot","action":"adbcmd","arg":"id","delay":0}
     * 走通了日志里是 adbcmd[adbd] ok，走不通是 adbcmd[adbd] FAILED。
     */
    private static void doAdbCmd(Context context, String argIn) {
        String cmd = argIn.trim();
        if (cmd.length() == 0) {
            BootDiagnostics.log(context, "adbcmd skipped: arg empty");
            return;
        }
        long t0 = System.currentTimeMillis();
        String out = AdbBridge.exec(cmd, CMD_TIMEOUT_MS);
        long dt = System.currentTimeMillis() - t0;
        if (out == null) {
            BootDiagnostics.log(context, "adbcmd[adbd] FAILED " + dt
                    + "ms: 连接/认证/协议任一环节失败（检查 5555 监听、adb_keys、ro.adb.secure）");
            return;
        }
        BootDiagnostics.log(context, "adbcmd[adbd] ok " + dt + "ms: " + clip(out, LOG_OUT_MAX));
    }

    /**
     * 通用 shell 执行器（诊断与动作共用）。
     * 读侧用「硬截止轮询」：available()+exitValue() 探测，到时强杀。
     * 不依赖 EOF —— su 这类会 fork 守护进程持有管道的命令，EOF 永远不会来。
     *
     * @return null = 进程起不起来；否则返回截断后的合并输出并附 (exit=N)
     */
    static String run(String[] cmd, long timeoutMs, int maxBytes) {
        Process process = null;
        StringBuilder builder = new StringBuilder();
        int exit = -1;
        boolean exited = false;
        try {
            process = new ProcessBuilder(cmd).redirectErrorStream(true).start();
            java.io.InputStream in = process.getInputStream();
            java.io.InputStreamReader reader = new java.io.InputStreamReader(in, "UTF-8");
            char[] buffer = new char[2048];
            long deadline = System.currentTimeMillis() + timeoutMs;
            while (builder.length() < 4194304) {
                if (System.currentTimeMillis() > deadline) {
                    break;
                }
                int avail;
                try {
                    avail = in.available();
                } catch (Throwable t) {
                    break;
                }
                if (avail > 0) {
                    int count = reader.read(buffer, 0, Math.min(avail, buffer.length));
                    if (count < 0) {
                        break;
                    }
                    builder.append(buffer, 0, count);
                    continue;
                }
                try {
                    exit = process.exitValue();
                    exited = true;
                    break;
                } catch (Throwable stillRunning) {
                    // 未退出，稍等再轮询
                }
                try {
                    Thread.sleep(100L);
                } catch (InterruptedException e) {
                    break;
                }
            }
        } catch (Throwable t) {
            // 以前这里静默返回 null，结果文件管理器里 root 列目录失败时完全查不出原因。
            // （App 起进程的 PATH/env 可能缺 /system/bin，exec 直接 IOException）
            Log.w("BootTask", "run failed: " + java.util.Arrays.toString(cmd) + " -> " + t);
            return null;
        } finally {
            if (process != null) {
                try {
                    process.destroy();
                } catch (Throwable ignored) {
                }
            }
        }
        if (!exited) {
            // v1.6.51：destroy() 后默认进程马上退出，但 4.4 上被 SIGTERM 挂住的 native
            // 进程会让后面的 waitFor() 永久阻塞 —— 这就是诊断快照总卡在
            // 「CPU 频率/负载/温度 → top -n 1」的元凶。改成 daemon 线程 join 最多 1500ms，
            // 拿不到退出值就按 timeout 返回。
            final Process p = process;
            Thread wt = new Thread(new Runnable() {
                public void run() {
                    try {
                        p.waitFor();
                    } catch (Throwable ignored) {
                    }
                }
            }, "run-wait");
            wt.setDaemon(true);
            wt.start();
            try {
                wt.join(1500L);
            } catch (InterruptedException ignored) {
            }
            try {
                exit = p.exitValue();
                exited = true;
            } catch (Throwable stillRunning) {
                exit = -1;
            }
        }
        if (builder.length() == 0 && (exited ? exit != 0 : true)) {
            return null;
        }
        return clip(builder.toString(), maxBytes) + " (exit=" + exit + (exited ? "" : ",timeout") + ")";
    }

    private static String clip(String text, int max) {
        if (text == null) {
            return "";
        }
        String trimmed = text.trim();
        if (trimmed.length() <= max) {
            return trimmed;
        }
        return trimmed.substring(0, max) + "…[truncated]";
    }
}
