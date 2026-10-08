package com.boottask;

import android.util.Log;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * v1.6.15 文件管理器底层：统一的目录项模型 + 两套访问通道。
 *
 * 两种模式：
 *   - 普通模式：Java File API。只能读写 App 有权限的路径（/sdcard、自身数据目录），
 *     无权限目录 listFiles() 返回 null（不是抛异常，这点必须判出来给提示）。
 *   - root 模式：`su -c ls -la`、`rm/mv/cp/mkdir` 走 shell。能看能改 /system、/etc、/data 等。
 *     车机是 eng 版，大概率有 su；没有 su 时降级回普通模式并明确提示，绝不静默失败。
 *
 * 为什么 root 模式要用 ls 解析而不是 File API：App 自己 uid 不是 0，
 * File.canRead()/listFiles() 一律 false，只能借 su 的眼睛看。
 *
 * 写操作的安全边界：所有删除走二次确认（UI 层）；root 写文本先写 App 私有临时文件
 * 再 su cp 到目标（避免 shell 引号转义把内容搞坏）。
 */
public final class FileOps {

    public static final String TAG = "BootTaskFileOps";
    private static final int MAX_ENTRIES = 1200;
    private static final long SU_CACHE_MS = 30000L;

    /** 目录项。size < 0 表示拿不到（root ls 解析失败或特殊文件） */
    public static final class Entry {
        public String name;
        public String path;
        public boolean dir;
        public long size = -1L;
        public long modified = 0L;
        public String perms = "";
        public String owner = "";

        public String displayMeta() {
            StringBuilder b = new StringBuilder(64);
            b.append(dir ? "目录" : size < 0 ? "文件" : human(size));
            if (modified > 0) {
                b.append("  ").append(timeStr(modified));
            }
            if (perms.length() > 0) {
                b.append("  ").append(perms);
            }
            return b.toString();
        }
    }

    /**
     * 不用一条正则吃掉所有 ls 格式 —— 车机上可能是 toolbox / toybox / busybox 三种之一：
     *   toolbox（车机 4.4 常见）：perms owner group date time name   ← 目录行**没有 size 列**
     *   busybox/toybox：         perms links owner group size date time name
     * 用「从行尾倒推」识别更稳：先定位日期片段，日期之后全是文件名（允许空格），
     * 日期前面紧挨着的那个 token 若全数字就是 size，没有就按 -1（UI 显示 ?）。
     */

    private static final String MONTHS = "Jan Feb Mar Apr May Jun Jul Aug Sep Oct Nov Dec";

    private static int sSu = 0;      // 0=未知 1=可用 2=不可用
    private static long sSuAt = 0L;
    private static volatile String sLastError;

    /** 上一次操作的失败原因（给 UI 显示，避免“什么都打不开但不知道为啥”） */
    public static String lastError() {
        return sLastError;
    }

    private FileOps() {
    }

    // ------------------------------------------------------------------ root 探测

    /** root 是否可用（结果缓存 30s：用户刚点完授权弹窗后回来能刷新到） */
    public static boolean suOk() {
        long now = System.currentTimeMillis();
        if (sSu != 0 && now - sSuAt < SU_CACHE_MS) {
            return sSu == 1;
        }
        String out = AdvActions.run(new String[]{"su", "-c", "id"}, 15000L, 4096);
        sSu = (out != null && out.indexOf("uid=0") >= 0) ? 1 : 2;
        sSuAt = now;
        Log.i(TAG, "su probe -> available=" + (sSu == 1));
        return sSu == 1;
    }

    /** 手动失效缓存（界面里点了“重试 root”用） */
    public static void resetSu() {
        sSu = 0;
        sSuAt = 0L;
    }

    /**
     * 走 su 执行命令。
     *
     * 超时 12 秒（不是越长越好）：卡在 SuperSU/Magisk 的授权弹窗时，su 既不输出也不退出，
     * 用户会眼看着界面转圈但毫无反馈。宁可快速失败并把「去点允许」写进提示里。
     * 慢操作的例外已经单独处理：安装 APK 走 ApkInstaller 自己的 60s 超时。
     *
     * @return 原始输出（已去掉 run() 追加的 (exit=N) 尾巴）；null = 没执行成功
     */
    public static String su(String cmd) {
        return stripExit(AdvActions.run(new String[]{"su", "-c", cmd}, 12000L, 300000));
    }

    private static String stripExit(String s) {
        if (s == null) {
            return null;
        }
        int i = s.lastIndexOf("(exit=");
        return i > 0 ? s.substring(0, i).trim() : s.trim();
    }

    /**
     * 命令行参数转义。
     *
     * 不用单引号包裹 —— MuMu/部分 ROM 的 su 遇到 su -c "cmd 'a b'" 这种嵌套引号会
     * 解析失败且静默返回非零无输出（表现为 root 列目录永远空）。
     * 改成 shell 逐字符反斜杠转义：不含任何引号，任何 su 实现都能正确过 shell 解析。
     */
    public static String q(String s) {
        StringBuilder b = new StringBuilder(s.length() + 8);
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if ((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9')
                    || c == '_' || c == '.' || c == '/' || c == '-' || c == '~'
                    || c == '+' || c == ',') {
                b.append(c);
            } else {
                b.append('\\').append(c);
            }
        }
        return b.toString();
    }

    // ------------------------------------------------------------------ 列目录

    /**
     * 列出目录内容（已排序、已去 . 与 ..）。
     *
     * @return null = 列不出来（不存在 / 无权限 / root 失败），UI 据此提示
     */
    public static Entry[] list(String dir, boolean rootMode) {
        List<Entry> l;
        if (rootMode) {
            // 尾斜杠是必须的：/sdcard 这类是软链接，不加斜杠 ls 只列链接本身一行
            String slashDir = dir.endsWith("/") ? dir : dir + "/";
            String cmd = "ls -la " + q(slashDir);
            String out = su(cmd);
            Log.d(TAG, "ls raw[" + dir + "] len=" + (out == null ? -1 : out.length()));
            if (out == null || out.indexOf("No such") >= 0
                    || out.indexOf("Permission denied") >= 0) {
                sLastError = "root 列目录失败。执行的命令：" + cmd
                        + "，返回：" + (out == null
                        ? "空（su 12 秒没响应：多半卡在授权弹窗，打开 SuperSU/Magisk 允许本应用；"
                        + "也可能 ROM 确实没有 root）"
                        : out);
                return null;
            }
            sLastError = null;
            l = parseLs(out, dir);
        } else {
            File d = new File(dir);
            File[] fs = d.listFiles();
            if (fs == null) {
                return null;
            }
            l = new ArrayList<Entry>();
            for (int i = 0; i < fs.length && l.size() < MAX_ENTRIES; i++) {
                l.add(fromFile(fs[i]));
            }
        }
        return sort(l, dir);
    }

    private static Entry fromFile(File f) {
        Entry e = new Entry();
        e.name = f.getName();
        e.path = f.getAbsolutePath();
        e.dir = f.isDirectory();
        e.size = f.isFile() ? f.length() : -1L;
        e.modified = f.lastModified();
        if (e.size < 0 && e.dir) {
            e.size = -1L;
        }
        e.perms = (f.canRead() ? "r" : "-") + (f.canWrite() ? "w" : "-")
                + (f.canExecute() ? "x" : "-");
        e.owner = "";
        return e;
    }

    private static List<Entry> parseLs(String out, String dir) {
        List<Entry> l = new ArrayList<Entry>();
        String[] lines = out.split("\n");
        for (int i = 0; i < lines.length && l.size() < MAX_ENTRIES; i++) {
            String line = lines[i].trim();
            if (line.length() == 0 || line.startsWith("total")) {
                continue;
            }
            Entry e = parseLine(line, dir);
            if (e != null) {
                l.add(e);
            }
        }
        return l;
    }

    private static Entry parseLine(String line, String dir) {
        String[] t = line.split("\\s+");
        if (t.length < 5) {
            return null;
        }
        char type = t[0].length() > 0 ? t[0].charAt(0) : '-';
        if ("-dlbcpsDL".indexOf(type) < 0) {
            return null;
        }
        // 定位日期片段起点与上一位（时间在 TOOLBOX 下也要算进去）
        int di = -1;
        int dEnd = -1;
        for (int i = 1; i < t.length - 1; i++) {
            if (isIsoDate(t[i]) && isClock(t[i + 1])) {
                di = i;
                dEnd = i + 1;
                break;
            }
            if (isMonth(t[i])) {
                if (isDay(t[i + 1]) && i + 2 < t.length
                        && (isClock(t[i + 2]) || isYear(t[i + 2]))) {
                    di = i;
                    dEnd = i + 2;
                    break;
                }
                if (isDay(t[i + 1]) || isClock(t[i + 1]) || isYear(t[i + 1])) {
                    di = i;
                    dEnd = i + 1;
                    break;
                }
            }
        }
        if (di < 0 || dEnd + 1 >= t.length) {
            return null;
        }
        StringBuilder nb = new StringBuilder();
        for (int i = dEnd + 1; i < t.length; i++) {
            if (nb.length() > 0) {
                nb.append(' ');
            }
            nb.append(t[i]);
        }
        String name = nb.toString();
        int arrow = name.indexOf(" -> ");
        if (arrow > 0) {
            name = name.substring(0, arrow);      // 软链接只取名字，箭头后面是链接目标
        }
        if (name.equals(".") || name.equals("..") || name.length() == 0) {
            return null;
        }
        Entry e = new Entry();
        e.name = name;
        e.dir = type == 'd';
        e.size = -1L;
        if (di - 1 >= 1 && isDigits(t[di - 1])) {
            try {
                e.size = Long.parseLong(t[di - 1]);
            } catch (Throwable ignored) {
            }
        }
        String timeStr = "";
        for (int i = di; i <= dEnd; i++) {
            if (timeStr.length() > 0) {
                timeStr += " ";
            }
            timeStr += t[i];
        }
        e.modified = parseTime(timeStr);
        e.perms = line.substring(0, Math.min(10, line.length()));
        e.path = join(dir, name);
        return e;
    }

    private static boolean isIsoDate(String s) {
        return s.length() == 10 && s.charAt(4) == '-' && s.charAt(7) == '-' && isDigits(
                s.substring(0, 4) + s.substring(5, 7) + s.substring(8, 10));
    }

    private static boolean isClock(String s) {
        return s.length() == 5 && s.charAt(2) == ':' && isDigits(s.substring(0, 2))
                && isDigits(s.substring(3, 5));
    }

    private static boolean isYear(String s) {
        return s.length() == 4 && isDigits(s);
    }

    private static boolean isDay(String s) {
        return s.length() <= 2 && s.length() > 0 && isDigits(s);
    }

    private static boolean isDigits(String s) {
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            if (c < '0' || c > '9') {
                return false;
            }
        }
        return s.length() > 0;
    }

    private static boolean isMonth(String s) {
        return s.length() == 3 && MONTHS.indexOf(s) >= 0;
    }

    /** ls 的两种时间格式：yyyy-MM-dd HH:mm（本车机）与 MMM dd HH:mm（部分 ROM） */
    private static long parseTime(String s) {
        String[] fmts = new String[]{"yyyy-MM-dd HH:mm", "MMM dd HH:mm", "MMM dd yyyy"};
        for (int i = 0; i < fmts.length; i++) {
            try {
                Date d = new SimpleDateFormat(fmts[i]).parse(s);
                if (d != null) {
                    return d.getTime();
                }
            } catch (Throwable ignored) {
            }
        }
        return 0L;
    }

    private static Entry[] sort(List<Entry> l, String dir) {
        Entry[] a = l.toArray(new Entry[l.size()]);
        for (int i = 1; i < a.length; i++) {          // 插入排序：量小、稳定、写法最笨最不容易错
            Entry cur = a[i];
            int j = i - 1;
            while (j >= 0 && compare(a[j], cur) > 0) {
                a[j + 1] = a[j];
                j--;
            }
            a[j + 1] = cur;
        }
        return a;
    }

    private static int compare(Entry x, Entry y) {
        if (x.dir != y.dir) {
            return x.dir ? -1 : 1;
        }
        return x.name.compareToIgnoreCase(y.name);
    }

    public static String join(String dir, String name) {
        if (dir.endsWith("/")) {
            return dir + name;
        }
        return dir + "/" + name;
    }

    public static String parent(String path) {
        int i = path.lastIndexOf('/');
        if (i <= 0) {
            return "/";
        }
        return path.substring(0, i);
    }

    // ------------------------------------------------------------------ 读文本

    /**
     * 读文本文件（最多 max 字节，超了只是截断，不 OOM）。
     * 无权限时 root 模式退回 `su -c cat`，让用户能看 /etc/ec.conf 这类文件。
     */
    public static String readText(String path, boolean rootMode, int max) {
        if (rootMode) {
            String out = su("cat " + q(path));
            if (out == null) {
                return null;
            }
            return out.length() > max ? out.substring(0, max) : out;
        }
        FileInputStream fis = null;
        try {
            File f = new File(path);
            if (!f.isFile()) {
                return null;
            }
            long len = f.length();
            int n = (int) Math.min(len, max);
            byte[] b = new byte[n];
            fis = new FileInputStream(f);
            int off = 0;
            while (off < n) {
                int r = fis.read(b, off, n - off);
                if (r < 0) {
                    break;
                }
                off += r;
            }
            return new String(b, 0, off, "UTF-8");
        } catch (Throwable t) {
            Log.w(TAG, "readText " + path + ": " + t);
            return null;
        } finally {
            if (fis != null) {
                try {
                    fis.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    // ------------------------------------------------------------------ 写操作

    /**
     * 保存文本。root 模式先写 App 私有临时文件再 su cp 过去
     * （shell 里 echo 重定向处理换行和特殊字符太容易出错，还可能被 SELinux 拦）。
     *
     * @return null = 成功；否则返回错误信息
     */
    public static String writeText(String path, String text) {
        boolean rootMode = !canDirectWrite(path);
        if (!rootMode) {
            FileOutputStream fos = null;
            try {
                fos = new FileOutputStream(path, false);
                fos.write(text.getBytes("UTF-8"));
                fos.flush();
                return null;
            } catch (Throwable t) {
                Log.w(TAG, "writeText: " + t);
                return String.valueOf(t);
            } finally {
                if (fos != null) {
                    try {
                        fos.close();
                    } catch (Throwable ignored) {
                    }
                }
            }
        }
        if (!suOk()) {
            return "文件不可写且无 root（需要 su 才能改 " + path + "）";
        }
        FileOutputStream fos = null;
        File tmp = null;
        try {
            tmp = File.createTempFile("bt", ".tmp", tmpDir());
            fos = new FileOutputStream(tmp);
            fos.write(text.getBytes("UTF-8"));
            fos.close();
            fos = null;
            File target = new File(path);
            String mode = modeOf(target);
            String out = su("cp " + q(tmp.getAbsolutePath()) + " " + q(path)
                    + (mode != null ? " && chmod " + mode + " " + q(path) : ""));
            if (out == null) {
                return "复制失败（su 无输出，多半被拒）";
            }
            return null;
        } catch (Throwable t) {
            return String.valueOf(t);
        } finally {
            if (fos != null) {
                try {
                    fos.close();
                } catch (Throwable ignored) {
                }
            }
            if (tmp != null) {
                try {
                    tmp.delete();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    /** 目标文件已存在时读回原权限位，改写后保持（不至于把 644 变成 600） */
    private static String modeOf(File f) {
        try {
            if (!f.isFile()) {
                return null;
            }
            String out = su("stat -c %a " + q(f.getAbsolutePath()));
            if (out != null && out.trim().length() > 0) {
                return out.trim();
            }
        } catch (Throwable ignored) {
        }
        return null;
    }

    /** App 能不能直接写这个路径（父目录存在且可写 / 或文件本身可写） */
    public static boolean canDirectWrite(String path) {
        try {
            File f = new File(path);
            if (f.exists()) {
                return f.canWrite();
            }
            File p = f.getParentFile();
            return p != null && p.exists() && p.canWrite();
        } catch (Throwable t) {
            return false;
        }
    }

    public static File tmpDir() {
        File d = new File("/data/data/com.boottask/files/tmp");
        try {
            if (!d.exists()) {
                d.mkdirs();
            }
        } catch (Throwable ignored) {
        }
        return d;
    }

    /** 删除（目录递归） */
    public static String delete(String path) {
        boolean rootMode = suOk() && !canDirectDelete(path);
        if (!rootMode) {
            boolean ok = rmRecursive(new File(path));
            return ok ? null : "删除失败（无权限？）";
        }
        String out = su("rm -rf " + q(path));
        return out == null ? "删除失败" : null;
    }

    private static boolean canDirectDelete(String path) {
        try {
            File f = new File(path);
            File p = f.getParentFile();
            return p != null && p.canWrite();
        } catch (Throwable t) {
            return false;
        }
    }

    private static boolean rmRecursive(File f) {
        if (f.isDirectory()) {
            File[] kids = f.listFiles();
            if (kids != null) {
                for (int i = 0; i < kids.length; i++) {
                    rmRecursive(kids[i]);
                }
            }
        }
        try {
            return f.delete();
        } catch (Throwable t) {
            return false;
        }
    }

    /** 复制（目录递归） */
    public static String copy(String from, String to, boolean move) {
        boolean needRoot = !canReadTree(from) || !canDirectWrite(to);
        if (needRoot && !suOk()) {
            return "需要 root 才能操作该路径";
        }
        if (needRoot) {
            String out = su((move ? "mv " : "cp -r ") + q(from) + " " + q(to));
            return out == null ? "操作失败" : null;
        }
        try {
            File src = new File(from);
            File dst = new File(to);
            if (src.isDirectory()) {
                copyDir(src, dst);
            } else {
                streamCopy(src, dst);
            }
            if (move) {
                rmRecursive(src);
            }
            return null;
        } catch (Throwable t) {
            return String.valueOf(t);
        }
    }

    private static boolean canReadTree(String path) {
        File f = new File(path);
        return f.exists() && f.canRead();
    }

    private static void copyDir(File src, File dst) throws Exception {
        if (!dst.exists() && !dst.mkdirs()) {
            throw new Exception("建目录失败 " + dst.getAbsolutePath());
        }
        File[] kids = src.listFiles();
        if (kids == null) {
            return;
        }
        for (int i = 0; i < kids.length; i++) {
            File t = new File(dst, kids[i].getName());
            if (kids[i].isDirectory()) {
                copyDir(kids[i], t);
            } else {
                streamCopy(kids[i], t);
            }
        }
    }

    public static void streamCopy(File src, File dst) throws Exception {
        FileInputStream in = null;
        FileOutputStream out = null;
        try {
            in = new FileInputStream(src);
            out = new FileOutputStream(dst);
            byte[] b = new byte[65536];
            int n;
            while ((n = in.read(b)) > 0) {
                out.write(b, 0, n);
            }
            out.flush();
        } finally {
            if (in != null) {
                in.close();
            }
            if (out != null) {
                out.close();
            }
        }
    }

    public static String rename(String from, String to) {
        return copy(from, to, true);
    }

    public static String mkdir(String path) {
        File f = new File(path);
        File p = f.getParentFile();
        if (p != null && p.exists() && p.canWrite()) {
            return f.mkdirs() ? null : "创建失败";
        }
        if (!suOk()) {
            return "无权限创建（父目录不可写且无 root）";
        }
        String out = su("mkdir -p " + q(path));
        return out == null ? "创建失败" : null;
    }

    // ------------------------------------------------------------------ 搜索

    /** 在当前目录下递归搜名字含关键字的项（限条数，避免 /system 扫到天荒地老） */
    public static List<Entry> search(String root, String key, boolean rootMode, int limit) {
        List<Entry> hits = new ArrayList<Entry>();
        String lower = key.toLowerCase();
        if (rootMode) {
            // root 模式一次性跑完 find，比逐层 Java 回调快得多（车机 CPU 弱）
            String cmd = "find " + q(root) + " -maxdepth 4 -iname " + q("*" + lower + "*") + " 2>/dev/null";
            String out = su(cmd);
            if (out != null) {
                String[] lines = out.split("\n");
                for (int i = 0; i < lines.length && hits.size() < limit; i++) {
                    String p = lines[i].trim();
                    if (p.length() == 0) {
                        continue;
                    }
                    Entry e = new Entry();
                    int slash = p.lastIndexOf('/');
                    e.name = slash >= 0 ? p.substring(slash + 1) : p;
                    e.path = p;
                    e.dir = false;
                    hits.add(e);
                }
            }
            return hits;
        }
        walk(new File(root), lower, hits, limit, 0);
        return hits;
    }

    private static void walk(File dir, String lower, List<Entry> hits, int limit, int depth) {
        if (hits.size() >= limit || depth > 4) {
            return;
        }
        File[] kids = dir.listFiles();
        if (kids == null) {
            return;
        }
        for (int i = 0; i < kids.length && hits.size() < limit; i++) {
            File f = kids[i];
            if (f.getName().toLowerCase().indexOf(lower) >= 0) {
                Entry e = fromFile(f);
                hits.add(e);
            }
            if (f.isDirectory()) {
                walk(f, lower, hits, limit, depth + 1);
            }
        }
    }

    // ------------------------------------------------------------------ 工具

    public static String human(long n) {
        if (n < 0) {
            return "?";
        }
        if (n < 1024) {
            return n + " B";
        }
        if (n < 1024L * 1024L) {
            return (n / 1024) + " KB";
        }
        if (n < 1024L * 1024L * 1024L) {
            return String.format("%.1f MB", n / (1024.0 * 1024.0));
        }
        return String.format("%.2f GB", n / (1024.0 * 1024.0 * 1024.0));
    }

    public static String timeStr(long ms) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm").format(new Date(ms));
        } catch (Throwable t) {
            return "-";
        }
    }

    /** 目录下 lrwx 判断等留的兜底：路径是否存在（root 模式下也只作提示用） */
    public static boolean existsRoot(String path, boolean rootMode) {
        if (!rootMode) {
            return new File(path).exists();
        }
        String out = su("ls -d " + q(path) + " >/dev/null 2>&1 && echo YES");
        return out != null && out.indexOf("YES") >= 0;
    }
}
