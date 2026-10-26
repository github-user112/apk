package com.boottask;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.SystemClock;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * v1.6.44 亿连进程监视（开机自启，免 root，取代已删的 AudioMonitor / MuteGuard /
 * RateWatcher）。只看 net.easyconn 这一个包：不碰声音、不 ping 网络。
 *
 * 每 5 秒扫一次 /proc/&lt;pid&gt;/cmdline 找亿连进程：
 *   - 状态跳变立刻记一行 —— 进程出现（开机拉起/被重启）/ 消失（被杀、崩溃、退出）
 *   - 存活时每 60 秒一条心跳：pid / 内存 RSS / CPU%（/proc/&lt;pid&gt;/stat 的
 *     utime+stime 差值），用来旁证「活着但卡死 / 吃满 CPU」
 *   - 一直没出现也记：每 5 分钟一条，说明这次开机亿连压根没起来
 *
 * 扫描 /proc 而不跑 `ps`：不 fork 子进程，弱车机上开销更小，也不受 ROM 的 ps
 * 列格式影响。
 *
 * 拿不到的（免 root 天花板）：ANR「应用无响应」、崩溃堆栈 —— Android 4.1+
 * 第三方只能读自己 uid 的 logcat，am_anr / AndroidRuntime 都读不到（10-01 车机
 * 日志实锤：logcat 段 233 行全是本 App 自己 pid）。上面的 CPU/内存只是旁证。
 *
 * 日志：files/log/yilian_watch.txt（进 boottask-logs.zip）+ /sdcard/boottask/yilian_watch.log
 */
public class YilianWatcher extends Service {

    private static final String TAG = "YilianWatcher";
    private static final String PKG = "net.easyconn";
    private static final long INTERVAL_MS = 5000L;
    private static final long HEARTBEAT_MS = 60000L;
    private static final long ABSENT_EVERY_MS = 300000L;
    private static final int CLK_TCK = 100;

    private static boolean sRunning = false;
    private static String sStatus = "未运行";

    private boolean mStop = false;
    private boolean mLastAlive = false;
    private long mAliveSince = 0;
    private long mAbsenceSince = 0;
    private long mLastBeat = 0;
    private long mLastTicks = -1;
    private long mLastTickAt = 0;

    /** pid + /proc/&lt;pid&gt;/stat 里要的字段（-1 = 取不到） */
    private static final class ProcInfo {
        final int pid;
        final long ticks;   // utime + stime
        final long rssKb;   // RSS（KB）

        ProcInfo(int pid, long ticks, long rssKb) {
            this.pid = pid;
            this.ticks = ticks;
            this.rssKb = rssKb;
        }
    }

    public static boolean isRunning() {
        return sRunning;
    }

    public static String status() {
        return sRunning ? sStatus : "未运行";
    }

    @Override
    public IBinder onBind(Intent intent) {
        return null;
    }

    @Override
    public int onStartCommand(Intent intent, int flags, int startId) {
        return START_STICKY;   // 被杀后系统重建（要常驻）
    }

    @Override
    public void onCreate() {
        super.onCreate();
        sRunning = true;
        mStop = false;
        logFile("=== 亿连进程监视启动（每 5s 扫 /proc，出现/消失 + CPU/内存心跳）===");
        new Thread(new Runnable() {
            public void run() {
                try {
                    watchLoop();
                } catch (Throwable t) {
                    logFile("监视异常终止: " + t);
                    android.util.Log.w(TAG, "watch fail", t);
                } finally {
                    sRunning = false;
                    sStatus = "已停止";
                    stopSelf();
                }
            }
        }, "YilianWatcher").start();
    }

    @Override
    public void onDestroy() {
        mStop = true;
        super.onDestroy();
    }

    // ------------------------------------------------------------------ 主循环

    private void watchLoop() {
        mAbsenceSince = SystemClock.elapsedRealtime();
        while (!mStop) {
            try {
                sample();
            } catch (Throwable t) {
                logFile("采样异常: " + t);
            }
            try {
                Thread.sleep(INTERVAL_MS);
            } catch (InterruptedException e) {
                return;
            }
        }
    }

    private void sample() {
        long now = SystemClock.elapsedRealtime();
        ProcInfo p = findProc();
        boolean alive = p != null;

        if (alive && !mLastAlive) {
            mAliveSince = now;
            mLastBeat = 0;
            mLastTicks = -1;
            mLastTickAt = 0;
            logFile("▶ 亿连进程出现 pid=" + p.pid + "（开机拉起或被重启）");
        } else if (!alive && mLastAlive) {
            logFile("✖ 亿连进程消失（被杀/崩溃/退出；此前存活 "
                    + (now - mAliveSince) / 60000 + " 分钟）");
            mLastTicks = -1;
            mLastTickAt = 0;
        } else if (!alive && now - mAbsenceSince >= ABSENT_EVERY_MS) {
            mAbsenceSince = now;
            logFile("○ 亿连仍未出现（开机后 " + now / 60000 + " 分钟）");
        }

        if (alive) {
            double cpu = -1;
            if (mLastTicks >= 0 && mLastTickAt > 0 && now > mLastTickAt) {
                long wallMs = now - mLastTickAt;
                cpu = (p.ticks - mLastTicks) * 1000.0 / CLK_TCK / wallMs * 100;
                if (cpu < 0) {
                    cpu = -1;
                }
            }
            mLastTicks = p.ticks;
            mLastTickAt = now;

            if (now - mLastBeat >= HEARTBEAT_MS) {
                mLastBeat = now;
                logFile(String.format(java.util.Locale.US,
                        "● 亿连存活 pid=%d rss=%.1fMB cpu=%.1f%% 已存活 %d 分钟",
                        p.pid, p.rssKb / 1024.0, cpu, (now - mAliveSince) / 60000));
            }
        }

        mLastAlive = alive;
        sStatus = alive
                ? "运行中 pid=" + p.pid + " rss=" + p.rssKb / 1024 + "MB"
                : "运行中（亿连进程未见）";
    }

    /** 扫 /proc 找 net.easyconn 的进程；返回 null = 没在跑。 */
    private static ProcInfo findProc() {
        String[] names = new File("/proc").list();
        if (names == null) {
            return null;
        }
        for (int i = 0; i < names.length; i++) {
            String n = names[i];
            if (n.length() == 0 || n.charAt(0) < '0' || n.charAt(0) > '9') {
                continue;
            }
            if (!cmdlineHas(new File("/proc/" + n, "cmdline"), PKG)) {
                continue;
            }
            String stat = readWhole(new File("/proc/" + n, "stat"), 4096);
            long ticks = -1;
            long rssKb = -1;
            int close = stat.lastIndexOf(')');
            if (close >= 0 && close + 1 < stat.length()) {
                String[] t = stat.substring(close + 1).trim().split("\\s+");
                if (t.length > 17) {
                    ticks = parseLong(t[11]) + parseLong(t[12]);   // utime + stime
                    rssKb = parseLong(t[17]) * 4;                 // RSS 页数 × 4KB
                }
            }
            return new ProcInfo(Integer.parseInt(n), ticks, rssKb);
        }
        return null;
    }

    private static boolean cmdlineHas(File f, String pkg) {
        FileInputStream in = null;
        try {
            in = new FileInputStream(f);
            byte[] buf = new byte[512];
            int total = 0;
            int r;
            while (total < buf.length && (r = in.read(buf, total, buf.length - total)) > 0) {
                total += r;
            }
            for (int i = 0; i < total; i++) {
                if (buf[i] == 0) {
                    continue;
                }
                String line = new String(buf, 0, i, "UTF-8");
                if (line.contains(pkg)) {
                    return true;
                }
            }
        } catch (Throwable ignored) {
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
        }
        return false;
    }

    private static String readWhole(File f, int max) {
        FileInputStream in = null;
        try {
            in = new FileInputStream(f);
            byte[] buf = new byte[max];
            int total = 0;
            int r;
            while (total < buf.length && (r = in.read(buf, total, buf.length - total)) > 0) {
                total += r;
            }
            return new String(buf, 0, total, "UTF-8");
        } catch (Throwable t) {
            return "";
        } finally {
            if (in != null) {
                try {
                    in.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    private static long parseLong(String s) {
        try {
            return Long.parseLong(s);
        } catch (Throwable t) {
            return 0;
        }
    }

    // ------------------------------------------------------------------ 日志
    // 与被删的三探针同契约：files/log/（进 zip）+ /sdcard/boottask/（文件管理页可直接取）

    private void logFile(String s) {
        String line = timeNow() + " " + s + "\n";
        File f = new File(new File(getFilesDir(), "log"), "yilian_watch.txt");
        try {
            File d = f.getParentFile();
            if (d != null && !d.isDirectory()) {
                d.mkdirs();
            }
        } catch (Throwable ignored) {
        }
        if (f.length() > 512000L) {
            f.delete();
        }
        FileWriter w = null;
        try {
            w = new FileWriter(f, true);
            w.write(line);
        } catch (Throwable ignored) {
        } finally {
            if (w != null) {
                try {
                    w.close();
                } catch (Throwable ignored) {
                }
            }
        }
        try {
            File ext = new File("/sdcard/boottask");
            if (!ext.isDirectory() && !ext.mkdirs()) {
                return;
            }
            File ef = new File(ext, "yilian_watch.log");
            if (ef.length() > 1048576L) {
                ef.delete();
            }
            FileWriter w2 = new FileWriter(ef, true);
            w2.write(line);
            w2.close();
        } catch (Throwable ignored) {
        }
    }

    private static String timeNow() {
        return new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US).format(new Date());
    }
}
