package com.carfiles;

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
            return false;
        } catch (Throwable t) {
            FLog.log(context, "adv action '" + action + "' failed: " + t);
            return true;
        }
    }

    // ---------------------------------------------------------------- broadcast

    private static void doBroadcast(Context context, String argIn) {
        String arg = argIn.trim();
        if (arg.length() == 0) {
            FLog.log(context, "broadcast skipped: arg empty");
            return;
        }
        String[] parts = arg.split("\\|");
        String actionString = parts[0].trim();
        if (actionString.length() == 0) {
            FLog.log(context, "broadcast skipped: action empty");
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
            FLog.log(context, "broadcast sent: " + actionString
                    + (intent.getComponent() != null ? " -> " + intent.getComponent() : ""));
        } catch (Throwable t) {
            FLog.log(context, "broadcast send failed: " + t);
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
                Log.w("CarFiles", "extra skipped '" + pair + "': " + t);
            }
        }
    }

    // ---------------------------------------------------------------- rootcmd

    private static void doRootCmd(Context context, String argIn) {
        String cmd = argIn.trim();
        if (cmd.length() == 0) {
            FLog.log(context, "rootcmd skipped: arg empty");
            return;
        }
        String output = run(new String[]{"su", "-c", cmd}, CMD_TIMEOUT_MS, 8192);
        if (output == null) {
            FLog.log(context, "su unavailable/empty-fail, fallback plain shell: " + cmd);
            output = run(new String[]{"sh", "-c", cmd}, CMD_TIMEOUT_MS, 8192);
        }
        FLog.log(context, "rootcmd done: " + clip(output, LOG_OUT_MAX));
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
            Log.w("CarFiles", "run failed: " + java.util.Arrays.toString(cmd) + " -> " + t);
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
            try {
                process.waitFor();
                exit = process.exitValue();
                exited = true;
            } catch (Throwable ignored) {
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
