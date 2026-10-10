package com.boottask;

import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.IBinder;
import android.os.SystemClock;
import android.util.Log;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;

/**
 * v1.6.21 开机后「启动 + 声音」监控 & 多媒体拦截（免 root）。
 *
 * 需求：车机收音机开机自动打开并播放。两步走——
 *   1) 监控：开机后每 5 秒
 *        - ps 快照 diff → 记录每个「新出现」的进程（谁被拉起来了，带时间戳）
 *        - dumpsys audio → 音频焦点 / 流音量相关行变化时记录（谁在抢声音、音量谁动的）
 *      全部落 /sdcard/boottask/audio_monitor.log（超 1MB 清零）+ 内部 audio_monitor.txt。
 *   2) 拦截：设定目标包名（如收音机/多媒体）后，巡检发现目标进程存活即
 *      ActivityManager.killBackgroundProcesses() 杀掉（KILL_BACKGROUND_PROCESSES，普通权限）。
 *      ⚠ 免 root 只能杀「非前台」进程；若目标是前台 Activity 杀不掉，日志会记明
 *      "存活但杀不掉"，此时结论是：改用静音兜底（MuteGuard/一键静音）或冻结。
 *
 * 开机自动启动：BootAudioReceiver（Java，manifest 注册）收 BOOT_COMPLETED 拉起本服务。
 *
 * v1.6.27「开机静音 = 直接关软件」：
 *   - 拦截目标支持**多个**（blockPkgs 逗号分隔；旧单目标键兼容读）；
 *   - root 下用 `am force-stop` 杀 —— 前台（正在播的收音机）也能杀，且被 force-stop
 *     的应用进入 stopped 状态，**下次开机不再自启**；免 root 仍 killBackgroundProcesses；
 *   - `bootCandidates()` 把「日志里开机打开的软件」解析成多选清单给 UI；
 *   - 巡检挪到独立线程（原主线程跑 ps+dumpsys 会周期性卡死界面）。
 */
public class AudioMonitor extends Service {

    private static final String TAG = "AudioMonitor";
    private static final long INTERVAL_MS = 5000L;
    private static final String PREFS = "audiomon";
    private static final String KEY_TARGET = "blockPkg";      // 旧版单目标（兼容读）
    private static final String KEY_TARGETS = "blockPkgs";    // v1.6.27 多目标，逗号分隔

    private static volatile boolean sRunning = false;
    private static volatile String sLastAction = "监控未运行";
    private static volatile Context sCtx;
    private static volatile String sLastFocusHash = "";
    private static final Set<String> sSeenProcs = new HashSet<String>();
    private static int sAliveTicks = 0;

    // v1.6.27：巡检从主线程挪到独立线程。原 Handler 是主线程 Handler，tick 里
    // ps(最长 6s)+dumpsys audio(最长 8s) 两次阻塞式执行 —— 与 WifiRateProbe 同款
    // ANR 源：监控一开，整个 App 主线程周期性被卡住（界面点不动/输入超时）。
    private volatile boolean mStop = false;
    private Thread mLoop;

    public static boolean isRunning() {
        return sRunning;
    }

    public static String lastAction() {
        return sLastAction;
    }

    // ---------------------------------------------------------------- 拦截目标（v1.6.27 多目标）

    /** 覆盖式设置拦截目标（单个，兼容 AppPickActivity 单选流程） */
    public static void setBlockTarget(Context ctx, String pkg) {
        setBlockTargets(ctx, pkg);
    }

    /**
     * v1.6.27：设置多个拦截目标（逗号分隔包名）。开机静音的「关软件」就写这里——
     * 巡检每轮对每个存活目标执行杀（root 走 am force-stop：前台也能杀，
     * 且被 force-stop 的应用进入 stopped 状态，下次开机不再自启）。
     */
    public static void setBlockTargets(Context ctx, String csv) {
        SharedPreferences sp = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        sp.edit().putString(KEY_TARGETS, csv == null ? "" : csv)
                .remove(KEY_TARGET).commit();
        String shown = (csv == null || csv.length() == 0) ? "无" : csv;
        logFile(ctx, "设定拦截目标 = " + shown);
        sLastAction = "拦截目标：" + shown;
    }

    public static void clearBlockTarget(Context ctx) {
        SharedPreferences sp = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        sp.edit().remove(KEY_TARGET).remove(KEY_TARGETS).commit();
        logFile(ctx, "清空拦截目标");
        sLastAction = "拦截目标：无";
    }

    /** 展示用：全部目标逗号连接；没设返回 null（兼容旧调用点） */
    public static String blockTarget(Context ctx) {
        String[] t = blockTargets(ctx);
        if (t.length == 0) {
            return null;
        }
        StringBuilder b = new StringBuilder();
        for (int i = 0; i < t.length; i++) {
            if (i > 0) {
                b.append(", ");
            }
            b.append(t[i]);
        }
        return b.toString();
    }

    /** v1.6.27：读全部拦截目标；新键优先，退回读旧版单目标键（老配置不丢） */
    public static String[] blockTargets(Context ctx) {
        try {
            SharedPreferences sp = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            String csv = sp.getString(KEY_TARGETS, null);
            if (csv == null || csv.trim().length() == 0) {
                csv = sp.getString(KEY_TARGET, null);   // 旧版单目标
            }
            if (csv == null || csv.trim().length() == 0) {
                return new String[0];
            }
            String[] raw = csv.split(",");
            java.util.List<String> out = new java.util.ArrayList<String>();
            for (int i = 0; i < raw.length; i++) {
                String p = raw[i].trim();
                if (p.length() > 0 && !out.contains(p)) {
                    out.add(p);
                }
            }
            return out.toArray(new String[out.size()]);
        } catch (Throwable t) {
            return new String[0];
        }
    }

    // ---------------------------------------------------------------- 生命周期

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        sCtx = this;
        sRunning = true;
        sSeenProcs.clear();
        sLastFocusHash = "";
        migrateOldLog(this, "audio_monitor.txt");   // v1.6.25：旧根目录日志搬进 log/（zip 只收 log/）
        String target = blockTarget(this);
        long up = SystemClock.elapsedRealtime() / 1000L;
        sLastAction = target == null ? "监控中（未设拦截目标）" : "监控+拦截中：" + target;
        logFile(this, "==== 声音监控启动（开机已运行 " + up + "s，拦截目标="
                + (target == null ? "无" : target) + "）====");
        mStop = false;
        mLoop = new Thread(new Runnable() {
            public void run() {
                while (!mStop) {
                    try {
                        tick(AudioMonitor.this);
                    } catch (Throwable t) {
                        Log.w(TAG, "tick: " + t);
                    }
                    try {
                        Thread.sleep(INTERVAL_MS);
                    } catch (InterruptedException e) {
                        return;
                    }
                }
            }
        }, "AudioMonitor");
        mLoop.start();
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        return START_STICKY;
    }

    @Override
    public void onDestroy() {
        mStop = true;
        if (mLoop != null) {
            mLoop.interrupt();
            mLoop = null;
        }
        sRunning = false;
        sLastAction = "监控已停止";
        logFile(this, "==== 声音监控停止 ====");
        super.onDestroy();
    }

    // ---------------------------------------------------------------- 巡检

    static void tick(Context ctx) {
        String psout = AdvActions.run(new String[]{"ps"}, 6000L, 65536);
        if (psout == null) {
            return;
        }

        // 1) 新进程检测（首轮只建档不记录，避免把开机已有进程全刷出来）
        boolean firstRound = sSeenProcs.isEmpty();
        String[] lines = psout.split("\n");
        StringBuilder fresh = new StringBuilder();
        Set<String> now = new HashSet<String>();
        for (int i = 0; i < lines.length; i++) {
            String line = lines[i].trim();
            int sp = line.lastIndexOf(' ');
            if (sp <= 0) {
                continue;
            }
            String proc = line.substring(sp + 1).trim();
            if (proc.length() == 0 || proc.indexOf(':') == proc.length() - 1) {
                continue;
            }
            now.add(proc);
            if (!firstRound && !sSeenProcs.contains(proc) && !proc.equals("ps")) {
                if (fresh.length() > 0) {
                    fresh.append(", ");
                }
                fresh.append(proc);
            }
        }
        sSeenProcs.addAll(now);
        if (fresh.length() > 0) {
            String msg = "🟢 新进程：" + fresh;
            logFile(ctx, msg);
        }

        // 2) 音频焦点 / 音量变化检测
        String audio = AdvActions.run(new String[]{"dumpsys", "audio"}, 8000L, 131072);
        if (audio != null) {
            StringBuilder sb = new StringBuilder();
            String[] alines = audio.split("\n");
            for (int i = 0; i < alines.length; i++) {
                String low = alines[i].toLowerCase(Locale.US);
                if (low.indexOf("focus") >= 0 || low.indexOf("stream_music") >= 0
                        || low.indexOf("volume:") >= 0) {
                    sb.append(alines[i].trim()).append('\n');
                }
            }
            String h = String.valueOf(sb.toString().hashCode());
            if (!h.equals(sLastFocusHash)) {
                if (sLastFocusHash.length() > 0) {
                    // 只在变化时记全文（首次只更新指纹，避免启动瞬间刷屏）
                    logFile(ctx, "🔊 音频焦点/音量变化：\n" + sb.toString().trim());
                }
                sLastFocusHash = h;
            }
        }

        // 3) 拦截（v1.6.27：多目标 + root force-stop）
        String[] tgts = blockTargets(ctx);
        if (tgts.length == 0) {
            sLastAction = "监控中（未设拦截目标），已见进程 " + sSeenProcs.size();
            return;
        }
        java.util.List<String> alive = new java.util.ArrayList<String>();
        for (int t = 0; t < tgts.length; t++) {
            for (int i = 0; i < lines.length; i++) {
                if (lines[i].indexOf(tgts[t]) >= 0) {
                    alive.add(tgts[t]);
                    break;
                }
            }
        }
        if (alive.isEmpty()) {
            sAliveTicks = 0;
            sLastAction = "拦截目标全部未运行 ✓（共 " + tgts.length + " 个）";
            return;
        }
        // 存活 → 杀
        sAliveTicks++;
        boolean root = FileOps.suOk();
        String how = killTargets(ctx, alive, root);
        // 连续 2 轮（~10 秒）还在 → 杀不掉（多半是免 root 杀不了前台），自动静音兜底保证无声
        if (sAliveTicks >= 2) {
            try {
                MuteGuard.mute(ctx);
                how += " + MuteGuard 静音兜底（已挂看门狗）";
            } catch (Throwable t) {
                how += "；静音兜底失败 " + t;
            }
        }
        StringBuilder aliveNames = new StringBuilder();
        for (int i = 0; i < alive.size(); i++) {
            if (i > 0) {
                aliveNames.append(", ");
            }
            aliveNames.append(alive.get(i));
        }
        logFile(ctx, "🔴 目标存活 [" + aliveNames + "] → " + how + "（5 秒后复查）");
        sLastAction = "拦截中：" + aliveNames
                + (sAliveTicks >= 2 ? " 仍存活，已加静音兜底" : " 已尝试杀");
    }

    /**
     * 对每个存活目标执行杀。
     * root：`am force-stop <pkg>` —— 前台进程也能杀（免 root 的 killBackgroundProcesses
     *       杀不了前台，正是「开机动画 FM 在响就是关不掉」的痛点）；且 force-stop 后
     *       应用进入 stopped 状态，**下次开机不再自启**，手动打开才恢复。
     * 免 root：killBackgroundProcesses（只能杀非前台，杀不掉就靠 15 秒静音规则兜底）。
     */
    private static String killTargets(Context ctx, java.util.List<String> pkgs, boolean root) {
        StringBuilder how = new StringBuilder();
        for (int i = 0; i < pkgs.size(); i++) {
            String p = pkgs.get(i);
            if (i > 0) {
                how.append("; ");
            }
            if (root) {
                String out = FileOps.su("am force-stop " + p);
                how.append(p).append(": force-stop");
                if (out != null && out.length() > 0) {
                    how.append(" (").append(out.trim()).append(")");
                }
            } else {
                try {
                    ActivityManager am = (ActivityManager)
                            ctx.getSystemService(Context.ACTIVITY_SERVICE);
                    am.killBackgroundProcesses(p);
                    how.append(p).append(": killBackgroundProcesses 已调用");
                } catch (Throwable t) {
                    how.append(p).append(": kill 异常 ").append(t);
                }
            }
        }
        return how.toString();
    }

    /**
     * v1.6.27：立即杀一轮（UI 保存目标后当场验证用），返回给人看的结论。
     * 只做 ps+杀，不做 dumpsys focus 那套重活 —— 调用方通常在后台线程。
     */
    public static String killNow(Context ctx) {
        String[] tgts = blockTargets(ctx);
        if (tgts.length == 0) {
            return "未设拦截目标";
        }
        String psout = AdvActions.run(new String[]{"ps"}, 6000L, 65536);
        if (psout == null) {
            return "ps 读取失败，无法判断目标是否存活";
        }
        String[] lines = psout.split("\n");
        java.util.List<String> alive = new java.util.ArrayList<String>();
        for (int t = 0; t < tgts.length; t++) {
            for (int i = 0; i < lines.length; i++) {
                if (lines[i].indexOf(tgts[t]) >= 0) {
                    alive.add(tgts[t]);
                    break;
                }
            }
        }
        if (alive.isEmpty()) {
            sLastAction = "目标当前未运行 ✓";
            logFile(ctx, "⚡ 立即拦截：目标均未在跑（共 " + tgts.length + " 个），下次自启巡检会杀");
            return "目标当前都没在跑 —— 重启后巡检会自动杀（共 " + tgts.length + " 个目标）";
        }
        boolean root = FileOps.suOk();
        String how = killTargets(ctx, alive, root);
        StringBuilder names = new StringBuilder();
        for (int i = 0; i < alive.size(); i++) {
            if (i > 0) {
                names.append(", ");
            }
            names.append(alive.get(i));
        }
        logFile(ctx, "⚡ 立即拦截 [" + names + "] → " + how);
        sLastAction = "已立即拦截：" + names;
        if (root) {
            return "✅ root force-stop 已杀：" + names
                    + "\n(force-stop 后这些应用下次开机不再自启；手动打开可恢复)";
        }
        return "⚠ 免 root 只能杀非前台进程：" + names
                + "\n若它们在前台（正在播）杀不掉——已配的 15 秒静音规则会兜底；"
                + "开发者选项开 Root 后再来一发可强杀前台";
    }

    /**
     * v1.6.27：开机静音「关软件」选择器的数据源。
     *  ① 音频监控日志里的「🟢 新进程」行 —— 带首次出现时间的开机自启记录（用户说的
     *     「日志里有开机打开的软件」就是它）；
     *  ② 当前 ps 里在跑、长得像应用包名的进程 —— 补上「监控首轮建档之前就已起来」
     *     的漏网进程（首轮只建档不记录，日志里没有它们）。
     * 返回 LinkedHashMap<pkg, 显示文本>（插入顺序 = 展示顺序），已剔除系统 native
     * 进程（无 '.' 的守护进程）与 denylist。
     */
    public static java.util.LinkedHashMap<String, String> bootCandidates(Context ctx) {
        java.util.LinkedHashMap<String, String> out = new java.util.LinkedHashMap<String, String>();
        // ① 日志
        try {
            File[] cand = {
                    new File(ctx.getFilesDir(), "log/audio_monitor.txt"),
                    new File(ctx.getFilesDir(), "audio_monitor.txt"),   // 迁移前的老位置
                    new File("/sdcard/boottask/audio_monitor.log")      // 外部副本
            };
            for (int c = 0; c < cand.length && out.isEmpty(); c++) {
                File f = cand[c];
                if (!f.isFile()) {
                    continue;
                }
                BufferedReader br = new BufferedReader(new InputStreamReader(
                        new FileInputStream(f), "UTF-8"));
                String line;
                while ((line = br.readLine()) != null) {
                    int i = line.indexOf("新进程：");
                    if (i < 0) {
                        continue;
                    }
                    // 行格式 "MM-dd HH:mm:ss 🟢 新进程：a, b" → 取 HH:mm:ss 做首现时间
                    String ts = line.length() >= 14 ? line.substring(6, 14) : "";
                    String rest = line.substring(i + 4);
                    String[] toks = rest.split(", ");
                    for (int k = 0; k < toks.length; k++) {
                        String base = basePkg(toks[k]);
                        if (isPickable(base) && !out.containsKey(base)) {
                            out.put(base, ts + "  " + base);
                        }
                    }
                }
                br.close();
            }
        } catch (Throwable ignored) {
        }
        // ② ps 补漏（按包名排序后追加）
        try {
            String psout = AdvActions.run(new String[]{"ps"}, 6000L, 65536);
            if (psout != null) {
                String[] lines = psout.split("\n");
                java.util.List<String> extra = new java.util.ArrayList<String>();
                for (int i = 0; i < lines.length; i++) {
                    String t = lines[i].trim();
                    int sp = t.lastIndexOf(' ');
                    if (sp <= 0) {
                        continue;
                    }
                    String base = basePkg(t.substring(sp + 1).trim());
                    if (isPickable(base) && !out.containsKey(base) && !extra.contains(base)) {
                        extra.add(base);
                    }
                }
                java.util.Collections.sort(extra);
                for (int i = 0; i < extra.size(); i++) {
                    out.put(extra.get(i), "(当前在跑)  " + extra.get(i));
                }
            }
        } catch (Throwable ignored) {
        }
        return out;
    }

    /** "com.foo:remote" → "com.foo" */
    private static String basePkg(String proc) {
        if (proc == null) {
            return "";
        }
        String p = proc.trim();
        int c = p.indexOf(':');
        return c > 0 ? p.substring(0, c) : p;
    }

    /**
     * 能不能作为「关软件」候选：像应用包名（含 '.'、无 '/'）+ 不是自己 + 不在 denylist。
     * denylist 只挡关了会出事的：SystemUI（关了状态栏没了）与桌面（关了没桌面）。
     */
    private static boolean isPickable(String base) {
        if (base == null || base.length() < 4 || base.indexOf('.') < 0
                || base.indexOf('/') >= 0) {
            return false;
        }
        if (base.equals("com.boottask") || base.equals("com.android.systemui")) {
            return false;
        }
        return !base.startsWith("com.android.launcher");
    }

    // ---------------------------------------------------------------- 日志

    static void logFile(Context ctx, String line) {
        try {
            if (ctx == null) {
                ctx = sCtx;
            }
            if (ctx == null) {
                return;
            }
            String ts = new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US)
                    .format(new Date());
            // v1.6.25：内部副本改落 files/log/（打包下载只枚举 files/log/，根目录文件进不了 zip）
            File inDir = new File(ctx.getFilesDir(), "log");
            if (!inDir.isDirectory() && !inDir.mkdirs()) {
                inDir = ctx.getFilesDir();   // 退化
            }
            write(inDir, "audio_monitor.txt", ts, line);
            File ext = new File("/sdcard/boottask");
            if (!ext.isDirectory() && !ext.mkdirs()) {
                return;
            }
            write(ext.getAbsoluteFile(), "audio_monitor.log", ts, line);
        } catch (Throwable ignored) {
        }
    }

    /** v1.6.25：把旧版写在 getFilesDir() 根的历史日志搬进 log/（rename 失败则内容搬运） */
    private static void migrateOldLog(Context ctx, String name) {
        try {
            File root = ctx.getFilesDir();
            File oldF = new File(root, name);
            if (!oldF.isFile() || oldF.length() == 0) {
                return;
            }
            File dir = new File(root, "log");
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            File newF = new File(dir, name);
            if (newF.exists()) {
                return;
            }
            if (!oldF.renameTo(newF)) {
                java.io.FileInputStream in = new java.io.FileInputStream(oldF);
                byte[] b = new byte[(int) oldF.length()];
                int off = 0;
                while (off < b.length) {
                    int n = in.read(b, off, b.length - off);
                    if (n < 0) {
                        break;
                    }
                    off += n;
                }
                in.close();
                java.io.FileOutputStream out = new java.io.FileOutputStream(newF, true);
                out.write(b);
                out.close();
                oldF.delete();
            }
        } catch (Throwable ignored) {
        }
    }

    private static void write(File dir, String name, String ts, String line) {
        try {
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            File f = new File(dir, name);
            if (f.length() > 1048576L) {
                f.delete();
            }
            FileWriter w = new FileWriter(f, true);
            w.write(ts + " " + line + "\n");
            w.close();
        } catch (Throwable ignored) {
        }
    }

    static String readLog(Context ctx) {
        try {
            if (ctx == null) {
                ctx = sCtx;
            }
            if (ctx == null) {
                return "（监控未启动过）";
            }
            File f = new File(new File(ctx.getFilesDir(), "log"), "audio_monitor.txt");
            if (!f.exists()) {
                // v1.6.25 兼容：迁移前旧版写在 getFilesDir() 根
                f = new File(ctx.getFilesDir(), "audio_monitor.txt");
            }
            if (!f.exists()) {
                return "（监控未启动过）";
            }
            byte[] data = new byte[(int) Math.min(f.length(), 8192)];
            java.io.FileInputStream in = new java.io.FileInputStream(f);
            int off = 0;
            while (off < data.length) {
                int n = in.read(data, off, data.length - off);
                if (n < 0) {
                    break;
                }
                off += n;
            }
            in.close();
            return new String(data, 0, off, "UTF-8").trim();
        } catch (Throwable t) {
            return "（读取失败 " + t + "）";
        }
    }
}
