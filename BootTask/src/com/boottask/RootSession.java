package com.boottask;

import android.content.Context;
import android.util.Log;

import java.io.File;
import java.io.FileWriter;

/**
 * v1.6.49 通用 root 会话模板 —— 「无损 root，执行某些操作之后，再锁上」。
 *
 * 背景：Android 的 /system 分区默认以 ro（只读）挂载。所有改 /system 的操作都必须
 * 先 remount rw。旧代码（QuickRepair 写 /etc/ec.conf）的做法是：
 *   remount rw → 写 → 完事，从不 remount 回 ro
 * —— 车机 /system 就此一直可写，任何进程都能再改它，和用户的「锁上」需求正好相反。
 *
 * 本类把这件事固化成统一模板，任何「要动 /system 的操作」都应该走这里：
 *   0) probe root（没有 su 直接放弃，不动任何东西）
 *   1) 记录 /proc/mounts 中 /system 挂载状态（操作前基线）
 *   2) remount rw /system（失败 → 不执行操作，直接退出；绝不在半锁状态下继续）
 *   3) 依次执行操作命令（每个都带完整输出回显）
 *   4) 【无论成败，finally】remount ro 并校验 /proc/mounts 里真的是 ro
 *      —— 本类存在的意义就是这一步：任何分支退出都必须把 /system 锁回 ro。
 *   5) 全程写 files/log/root_session.txt（进 boottask-logs.zip）+ boottask.log
 *
 * 用法：
 *   String r = RootSession.run(ctx, "[写亿连配置]", new String[]{
 *       "printf '…' > /etc/ec.conf", "chmod 644 /etc/ec.conf"});
 *
 * 编译约束：不 import org.json；不引用其它 App 内部类，只复用 AdvActions / BootDiagnostics。
 */
public final class RootSession {
    private static final String TAG = "RootSession";
    private static final long ROOT_PROBE_TIMEOUT_MS = 15000L;
    private static final long REMOUNT_TIMEOUT_MS = 10000L;

    private RootSession() {
    }

    /** 诊断快照用：只读探测，不改任何东西。 */
    public static String probe(Context ctx) {
        StringBuilder sb = new StringBuilder(512);
        String id = AdvActions.run(new String[]{"su", "-c", "id"}, ROOT_PROBE_TIMEOUT_MS, 1024);
        boolean root = id != null && id.indexOf("uid=0") >= 0;
        sb.append("su 可用性: ").append(root ? "是（uid=0，App 内可以走 root 会话）"
                : (id == null ? "否（su 起不来/被拒：\n" + QuickRepair.rootStatus() + "）"
                        : "否（su 输出：" + oneLine(id) + "）")).append('\n');
        String systemMount = findSystemMountLine();
        sb.append("/system 挂载: ").append(systemMount == null ? "/proc/mounts 里没找到 /system 条目" : systemMount)
                .append('\n');
        sb.append("当前状态: ").append(systemMount == null ? "未知" : mountStateOf(systemMount)).append('\n');
        sb.append("说明: root 会话模板（RootSession）固定走 remount rw → 操作 → remount ro，\n")
                .append("      无论成败都会尝试把 /system 锁回只读并在 /proc/mounts 复核；\n")
                .append("      每次会话都会落到 files/log/root_session.txt（下载日志里带）。\n");
        return sb.toString();
    }

    /**
     * 执行一个 root 会话。返回给调用方的简短摘要（详细过程落 root_session.txt）。
     *
     * @param opCommands 每个元素是一条经 su -c 执行的命令，按序执行；
     *                   调用方负责命令本身的安全性（本类不做命令注入防护）。
     */
    public static String run(Context ctx, String name, String[] opCommands) {
        StringBuilder rep = new StringBuilder();
        StringBuilder detail = new StringBuilder();
        String id = AdvActions.run(new String[]{"su", "-c", "id"}, ROOT_PROBE_TIMEOUT_MS, 1024);
        boolean root = id != null && id.indexOf("uid=0") >= 0;
        detail.append("=== ").append(stamp()).append(' ').append(name).append(" ===\n");
        detail.append("su -c id -> ").append(id == null ? "(su 不可用)" : oneLine(id)).append('\n');
        if (!root) {
            detail.append("root 不可用，未做任何改动。\n");
            writeSession(ctx, detail);
            BootDiagnostics.log(ctx, "RootSession " + name + "：无 root，未执行");
            return name + "：su 不可用，本次未执行（未改动任何东西）。" + QuickRepair.rootStatus();
        }

        String before = findSystemMountLine();
        detail.append("操作前 /system: ").append(before == null ? "(未找到条目)" : before).append('\n');

        // 2) remount rw（/system 失败时整体回退到根分区；两种谁通用谁）
        AdvActions.run(new String[]{"su", "-c", "sync"}, REMOUNT_TIMEOUT_MS, 256);
        String rw1 = AdvActions.run(new String[]{"su", "-c", "mount -o remount,rw /system"}, REMOUNT_TIMEOUT_MS, 4096);
        detail.append("remount,rw /system -> ").append(rw1 == null ? "(命令未执行)" : oneLine(rw1)).append('\n');
        String cur = findSystemMountLine();
        if (cur == null || !isRw(cur)) {
            AdvActions.run(new String[]{"su", "-c", "mount -o remount,rw /"}, REMOUNT_TIMEOUT_MS, 4096);
            cur = findSystemMountLine();
            detail.append("remount,rw /     -> ").append(cur == null ? "(未找到条目)" : cur).append('\n');
        }
        detail.append("remount 后状态: ").append(cur == null ? "未知" : mountStateOf(cur)).append('\n');
        if (cur == null || !isRw(cur)) {
            detail.append("remount rw 失败，操作未执行；已保持原状。\n");
            writeSession(ctx, detail);
            BootDiagnostics.log(ctx, "RootSession " + name + "：remount rw 失败，放弃");
            return name + "：/system 无法 remount rw（" + (cur == null ? "读不到挂载" : oneLine(cur)) + "），操作未执行。";
        }

        // 3)+4) 执行操作；无论成败都必须经 finally —— 锁回只读
        try {
            if (opCommands != null) {
                for (int i = 0; i < opCommands.length; i++) {
                    String cmd = opCommands[i];
                    String out = AdvActions.run(new String[]{"su", "-c", cmd}, 30000L, 8192);
                    detail.append("[op ").append(i).append("] ").append(cmd).append("\n     -> ")
                            .append(out == null ? "(无输出/失败)" : oneLine(out)).append('\n');
                }
            }
        } catch (Throwable t) {
            detail.append("op 阶段异常: ").append(t).append('\n');
        } finally {
            // 无论上面成败都必须走到：锁回只读 + 落盘 + 返回摘要
            String roResult = relockReadOnly(detail);
            detail.append("remount,ro /system -> ").append(roResult).append('\n');
            String after = findSystemMountLine();
            detail.append("操作后 /system: ").append(after == null ? "(未找到条目)" : after).append('\n');
            String afterState = after == null ? "未知" : mountStateOf(after);
            detail.append("最终状态: ").append(afterState).append('\n');
            writeSession(ctx, detail);
            BootDiagnostics.log(ctx, "RootSession " + name + "：完成，/system=" + afterState);
            rep.append(name).append(" 完成，/system 最终").append(afterState);
            if (after != null && isRw(after)) {
                rep.append(" ⚠ 未能锁回只读！");
            }
        }
        return rep.toString();
    }

    // ---------------------------------------------------------------- 内部

    private static String relockReadOnly(StringBuilder detail) {
        AdvActions.run(new String[]{"su", "-c", "sync"}, REMOUNT_TIMEOUT_MS, 256);
        String ro1 = AdvActions.run(new String[]{"su", "-c", "mount -o remount,ro /system"}, REMOUNT_TIMEOUT_MS, 4096);
        String first = ro1 == null ? "(命令未执行)" : oneLine(ro1);
        String cur = findSystemMountLine();
        if (cur != null && isRo(cur)) {
            return first + " ✔";
        }
        String ro2 = AdvActions.run(new String[]{"su", "-c", "mount -o remount,ro /"}, REMOUNT_TIMEOUT_MS, 4096);
        String second = ro2 == null ? "(命令未执行)" : oneLine(ro2);
        detail.append("remount,ro /       -> ").append(second).append('\n');
        cur = findSystemMountLine();
        boolean locked = cur != null && isRo(cur);
        return first + (locked ? "" : "（回退尝试 /）") + (locked ? " ✔" : " ✘ 未锁回");
    }

    /** 从 /proc/mounts 找 /system 挂载行（命令可能被 SELinux 拒，退回 cat 也拿不到时返回 null） */
    private static String findSystemMountLine() {
        String mounts = BootDiagnostics.readSmall("/proc/mounts", 16384);
        if (mounts != null) {
            String hit = findMountIn(mounts);
            if (hit != null) {
                return hit;
            }
        }
        // 有些 4.4 ROM 的 kernel 不把 /proc/mounts 给第三方读，试 su fallback
        String suMounts = AdvActions.run(new String[]{"su", "-c", "cat /proc/mounts"}, REMOUNT_TIMEOUT_MS, 16384);
        return suMounts == null ? null : findMountIn(suMounts);
    }

    private static String findMountIn(String mounts) {
        String[] lines = mounts.split("\n");
        for (int i = 0; i < lines.length; i++) {
            String[] f = lines[i].trim().split("\\s+");
            if (f.length >= 4 && "/system".equals(f[1])) {
                return f[2] + " " + f[3];   // fs 类型 + 挂载选项，如 "ext4 ro,relatime,data=ordered"
            }
        }
        return null;
    }

    private static boolean isRw(String mountLine) {
        return mountLine != null && mountLine.indexOf(" rw") >= 0;
    }

    private static boolean isRo(String mountLine) {
        int i = mountLine == null ? -1 : mountLine.indexOf(' ');
        String opts = i >= 0 ? mountLine.substring(i + 1) : "";
        return opts.startsWith("ro") || opts.indexOf(",ro") >= 0;
    }

    private static String mountStateOf(String mountLine) {
        if (mountLine == null) {
            return "未知";
        }
        if (isRo(mountLine)) {
            return "只读 ro（已锁）";
        }
        if (isRw(mountLine)) {
            return "可写 rw（⚠ 未锁定）";
        }
        return "未解析（原文：" + mountLine + "）";
    }

    private static String stamp() {
        return new java.text.SimpleDateFormat("MM-dd HH:mm:ss", java.util.Locale.US).format(new java.util.Date());
    }

    private static void writeSession(Context ctx, StringBuilder detail) {
        try {
            File dir = new File(ctx.getFilesDir(), "log");
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            File f = new File(dir, "root_session.txt");
            if (f.length() > 512000L) {
                f.delete();
            }
            FileWriter w = new FileWriter(f, true);
            w.write(detail.toString());
            w.write('\n');
            w.close();
        } catch (Throwable t) {
            Log.w(TAG, "write session log failed: " + t);
        }
    }

    private static String oneLine(String s) {
        if (s == null) {
            return "null";
        }
        String r = s.replace('\n', ' ').trim();
        return r.length() > 300 ? r.substring(0, 300) : r;
    }
}
