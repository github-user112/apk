package com.boottask;

import android.app.ActivityManager;
import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.IBinder;
import android.os.SystemClock;
import android.util.Log;

import java.io.File;
import java.io.FileWriter;
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
 */
public class AudioMonitor extends Service {

    private static final String TAG = "AudioMonitor";
    private static final long INTERVAL_MS = 5000L;
    private static final String PREFS = "audiomon";
    private static final String KEY_TARGET = "blockPkg";

    private static volatile boolean sRunning = false;
    private static volatile String sLastAction = "监控未运行";
    private static volatile Context sCtx;
    private static volatile String sLastFocusHash = "";
    private static final Set<String> sSeenProcs = new HashSet<String>();
    private static int sAliveTicks = 0;

    private final Handler mHandler = new Handler();
    private boolean mBusy = false;

    private final Runnable mTask = new Runnable() {
        public void run() {
            if (!mBusy) {
                mBusy = true;
                try {
                    tick(AudioMonitor.this);
                } catch (Throwable t) {
                    Log.w(TAG, "tick: " + t);
                }
                mBusy = false;
            }
            mHandler.postDelayed(this, INTERVAL_MS);
        }
    };

    public static boolean isRunning() {
        return sRunning;
    }

    public static String lastAction() {
        return sLastAction;
    }

    // ---------------------------------------------------------------- 拦截目标

    public static void setBlockTarget(Context ctx, String pkg) {
        SharedPreferences sp = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        sp.edit().putString(KEY_TARGET, pkg).commit();
        logFile(ctx, "设定拦截目标 = " + pkg);
        sLastAction = "拦截目标：" + pkg;
    }

    public static void clearBlockTarget(Context ctx) {
        SharedPreferences sp = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
        sp.edit().remove(KEY_TARGET).commit();
        logFile(ctx, "清空拦截目标");
        sLastAction = "拦截目标：无";
    }

    public static String blockTarget(Context ctx) {
        try {
            SharedPreferences sp = ctx.getSharedPreferences(PREFS, Context.MODE_PRIVATE);
            return sp.getString(KEY_TARGET, null);
        } catch (Throwable t) {
            return null;
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
        String target = blockTarget(this);
        long up = SystemClock.elapsedRealtime() / 1000L;
        sLastAction = target == null ? "监控中（未设拦截目标）" : "监控+拦截中：" + target;
        logFile(this, "==== 声音监控启动（开机已运行 " + up + "s，拦截目标="
                + (target == null ? "无" : target) + "）====");
        mHandler.post(mTask);
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        return START_STICKY;
    }

    @Override
    public void onDestroy() {
        mHandler.removeCallbacks(mTask);
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

        // 3) 拦截
        String target = blockTarget(ctx);
        if (target == null) {
            sLastAction = "监控中（未设拦截目标），已见进程 " + sSeenProcs.size();
            return;
        }
        boolean alive = false;
        String pidLine = null;
        for (int i = 0; i < lines.length; i++) {
            if (lines[i].indexOf(target) >= 0) {
                alive = true;
                pidLine = lines[i].trim();
                break;
            }
        }
        if (!alive) {
            sAliveTicks = 0;
            sLastAction = "拦截目标 " + target + " 未运行 ✓";
            return;
        }
        // 存活 → 杀（免 root 只能杀非前台进程）
        sAliveTicks++;
        boolean killed = false;
        String how;
        try {
            ActivityManager am = (ActivityManager) ctx.getSystemService(Context.ACTIVITY_SERVICE);
            am.killBackgroundProcesses(target);
            killed = true;
            how = "killBackgroundProcesses 已调用";
        } catch (Throwable t) {
            how = "kill 异常 " + t;
        }
        // 连续 2 轮（~10 秒）还在 → 杀不掉（多半是前台进程），自动静音兜底保证无声
        if (sAliveTicks >= 2) {
            try {
                MuteGuard.mute(ctx);
                how += " + MuteGuard 静音兜底（已挂看门狗）";
            } catch (Throwable t) {
                how += "；静音兜底失败 " + t;
            }
        }
        logFile(ctx, "🔴 目标存活 [" + pidLine + "] → " + how + "（5 秒后复查）");
        sLastAction = "拦截中：" + target + " 存活，已尝试杀"
                + (sAliveTicks >= 2 ? " + 静音兜底" : "");
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
            write(ctx.getFilesDir(), "audio_monitor.txt", ts, line);
            File ext = new File("/sdcard/boottask");
            if (!ext.isDirectory() && !ext.mkdirs()) {
                return;
            }
            write(ext.getAbsoluteFile(), "audio_monitor.log", ts, line);
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
            File f = new File(ctx.getFilesDir(), "audio_monitor.txt");
            if (!f.exists()) {
                return "（还没有记录）";
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
