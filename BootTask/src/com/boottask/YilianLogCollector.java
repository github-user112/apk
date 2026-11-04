package com.boottask;

import android.content.Context;
import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;

/**
 * v1.6.49 亿连运行日志收集器 —— 让「下载日志」（boottask-logs.zip）带上亿连自带的文件日志。
 *
 * 亿连（net.easyconn）运行时会无条件往 /sdcard/logger/ 写 logs_*.csv（500KB 轮转），
 * 但那里的 .csv 既不在 logxfer 的扩展名白名单（.log/.txt/.gz/.zip）里，目录也不在
 * 收集名单里 —— 旧版「下载日志」里一份亿连原生日志都拿不到，只能看诊断快照里
 * 截断的 300 行 tail。
 *
 * 本类在打开「下载日志」页时（BootDiagnostics.capture 一起跑）把最新若干份复制到
 * App 私有目录 files/log/ 下并改名为 yilian_*.txt，交给现有 logxfer 管线打包。
 *
 * 设计要点：
 *  - 只拷最新 3 份、单份 ≤ 8MB，控制 zip 体积；
 *  - 幂等：目标文件同名同大小直接跳过，重复打开页面不会反复拷；
 *  - 保留源 mtime（解压后排序/日期口径与原文件一致，logxfer 的 dateKey 也认）；
 *  - 直接读失败再走 su cat（4.4 fuse sdcard 一般直读就行，兜底给个保障）；
 *  - 全程 try/catch，任何一步失败只写进报告，绝不连累诊断快照生成。
 */
public final class YilianLogCollector {
    private static final String TAG = "YilianLogCollector";
    private static final int MAX_FILES = 3;
    private static final long MAX_BYTES = 8L * 1024 * 1024;

    private YilianLogCollector() {
    }

    /** 扫描并复制，返回给诊断快照的报告文本。 */
    public static String collect(Context ctx) {
        StringBuilder rep = new StringBuilder(1024);
        File dstDir = new File(ctx.getFilesDir(), "log");
        try {
            if (!dstDir.isDirectory() && !dstDir.mkdirs()) {
                return "目标目录 files/log 创建失败，跳过收集";
            }
        } catch (Throwable t) {
            return "目标目录创建异常: " + t;
        }

        File srcDir = findLoggerDir(rep);
        if (srcDir == null) {
            rep.append("（/sdcard/logger 不存在 —— 亿连可能没在运行或未生成文件日志）\n");
            return rep.toString();
        }
        rep.append("源目录: ").append(srcDir.getAbsolutePath()).append('\n');

        File[] all = null;
        try {
            all = srcDir.listFiles();
        } catch (Throwable t) {
            rep.append("列目录失败: ").append(t).append('\n');
        }
        java.util.ArrayList<File> csv = new java.util.ArrayList<File>();
        if (all != null) {
            for (int i = 0; i < all.length; i++) {
                File f = all[i];
                String n = f.getName();
                if (f.isFile() && n.startsWith("logs_") && n.endsWith(".csv") && f.length() > 0) {
                    csv.add(f);
                }
            }
        }
        if (csv.isEmpty()) {
            rep.append("目录里没有 logs_*.csv（亿连未产出文件日志）\n");
            return rep.toString();
        }
        sortByLastModifiedDesc(csv);
        rep.append("找到 ").append(csv.size()).append(" 份 logs_*.csv，打包最新 ")
                .append(Math.min(csv.size(), MAX_FILES)).append('\n');

        int copied = 0, skipped = 0, failed = 0;
        long total = 0;
        for (int i = 0; i < csv.size() && copied + skipped < MAX_FILES; i++) {
            File src = csv.get(i);
            if (src.length() > MAX_BYTES) {
                rep.append("  - ").append(src.getName()).append(" 超过 8MB，跳过\n");
                continue;
            }
            File dst = new File(dstDir, "yilian_" + sanitize(baseName(src.getName())) + ".txt");
            try {
                if (dst.isFile() && dst.length() == src.length()) {
                    skipped++;
                    total += dst.length();
                    rep.append("  - ").append(dst.getName()).append(" 已存在且同大小，跳过\n");
                    continue;
                }
                if (copyDirect(src, dst) || copyViaSu(src, dst)) {
                    if (dst.length() > 0) {
                        copied++;
                        total += dst.length();
                        try {
                            dst.setLastModified(src.lastModified());
                        } catch (Throwable ignored) {
                        }
                        rep.append("  - ").append(src.getName()).append(" → ").append(dst.getName())
                                .append("（").append(dst.length() / 1024).append(" KB）\n");
                    } else {
                        failed++;
                        rep.append("  - ").append(src.getName()).append(" 复制后为空\n");
                    }
                } else {
                    failed++;
                    rep.append("  - ").append(src.getName()).append(" 复制失败（直读与 su 均失败）\n");
                }
            } catch (Throwable t) {
                failed++;
                rep.append("  - ").append(src.getName()).append(" 复制异常: ").append(t).append('\n');
            }
        }
        rep.append("合计: 复制 ").append(copied).append(" 份，已存在跳过 ").append(skipped)
                .append(" 份，失败 ").append(failed).append(" 份，共 ").append(total / 1024).append(" KB\n")
                .append("（boottask-logs.zip 里以 yilian_ 开头的 .txt 就是亿连原生运行日志）\n");
        Log.i(TAG, "collected yilian logs: copied=" + copied + " skipped=" + skipped + " failed=" + failed);
        return rep.toString();
    }

    // ---------------------------------------------------------------- 内部

    private static File findLoggerDir(StringBuilder rep) {
        String[] candidates = {"/sdcard/logger", "/storage/emulated/0/logger",
                "/storage/sdcard0/logger", "/mnt/sdcard/logger"};
        for (int i = 0; i < candidates.length; i++) {
            File d = new File(candidates[i]);
            if (d.isDirectory()) {
                return d;
            }
        }
        // 4.4 fuse sdcard 可能在 App 视角下 list 权限受限 —— 兜底 su -c ls 确认一下
        String ls = AdvActions.run(new String[]{"su", "-c", "ls -d /sdcard/logger"}, 8000L, 256);
        if (ls != null && ls.indexOf("logger") >= 0 && ls.indexOf("No such") < 0) {
            return new File("/sdcard/logger");
        }
        return null;
    }

    private static void sortByLastModifiedDesc(java.util.ArrayList<File> files) {
        for (int i = 0; i < files.size() - 1; i++) {
            for (int j = 0; j < files.size() - 1 - i; j++) {
                if (files.get(j).lastModified() < files.get(j + 1).lastModified()) {
                    File t = files.get(j);
                    files.set(j, files.get(j + 1));
                    files.set(j + 1, t);
                }
            }
        }
    }

    private static boolean copyDirect(File src, File dst) {
        FileInputStream in = null;
        FileOutputStream out = null;
        try {
            in = new FileInputStream(src);
            out = new FileOutputStream(dst);
            byte[] buf = new byte[8192];
            int n;
            while ((n = in.read(buf)) > 0) {
                out.write(buf, 0, n);
            }
            out.flush();
            return true;
        } catch (Throwable t) {
            return false;
        } finally {
            try {
                if (in != null) {
                    in.close();
                }
                if (out != null) {
                    out.close();
                }
            } catch (Throwable ignored) {
            }
        }
    }

    /** 4.4 上直读偶发 EACCES 时用 su 兜底（源/目的目录 App 可写，只是输入端权限问题） */
    private static boolean copyViaSu(File src, File dst) {
        String out = AdvActions.run(new String[]{"su", "-c",
                "cat \"" + src.getAbsolutePath() + "\" > \"" + dst.getAbsolutePath() + "\""},
                30000L, 1024);
        return dst.isFile() && dst.length() > 0;
    }

    private static String baseName(String name) {
        String n = name;
        int dot = n.lastIndexOf('.');
        if (dot > 0) {
            n = n.substring(0, dot);
        }
        return n;
    }

    private static String sanitize(String s) {
        StringBuilder b = new StringBuilder(s.length());
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9')
                    || c == '.' || c == '-' || c == '_') {
                b.append(c);
            } else {
                b.append('_');
            }
        }
        return b.length() == 0 ? "log" : b.toString();
    }
}
