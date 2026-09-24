package com.baidu.carlifevehicle.logxfer;

import android.content.Context;
import android.util.Log;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * 会话日志写入器（1.30 新增）。
 *
 * 需求（用户 2026-09-24 提出）：
 *   1) 每次启动生成一份新的日志 —— 不要所有会话糊成一个大文件，
 *      导出后分不清哪段是哪次运行的；
 *   2) 每份日志的大小超过 30KB 就生成新的 —— 即"每份日志不超过 30KB"，
 *      超出就滚动切分（auto_XXXX.part2.log ...），和 CarLife 自带的
 *      CONFIG_MAX_LOG_FILE_SIZE=5MB 轮转互不干扰。
 *
 * 落盘位置：files/log/session/。LogHttpServer 列表会递归收集这个目录。
 *
 * 写入路径挂点：ConnLog.append(String) 是**唯一落盘点**（网络/SDK 日志都走
 * n/g$a.a -> ConnLog.logLine -> ConnLog.append），所以在那里插一行
 * SessionLog.append(line) 就能捕获屏幕上的全部日志，无需改 SDK 类。
 *
 * 线程模型：append() 可能被任意线程调用，所有文件操作在 synchronized(this) 内。
 * IO 失败一律静默降级（mEnabled=false 自杀），绝不影响主日志链路。
 */
public final class SessionLog {

    private static final String TAG = "CarLifeLogXfer";
    /** 单个日志文件的字节上限（需求："每份日志的大小超过 30kb，生成新的"）。 */
    private static final long MAX_BYTES = 30L * 1024L;
    /** 滚动封顶：part 编号最大到 30（30KB x 30 = 900KB/会话，够长的会话用）。 */
    private static final int MAX_PARTS = 30;
    /** 目录内最多保留 40 份（含历史会话），老的按修改时间清掉。 */
    private static final int MAX_FILES = 40;

    private static SessionLog sInst;

    private File mDir;
    private Writer mOut;
    private File mCur;
    private long mWritten;
    private int mPart;
    private String mBase;
    private boolean mEnabled;

    private SessionLog() {
    }

    private static SessionLog get() {
        if (sInst == null) {
            sInst = new SessionLog();
        }
        return sInst;
    }

    /**
     * 每次进程启动调用一次（VehicleApplication.onCreate 里插桩）。
     * 生成带启动时间戳的新文件名，旧会话文件自然保留。
     */
    public static synchronized void init(Context c) {
        SessionLog s = get();
        if (s.mEnabled) {
            return;     // 同一次启动只建一次
        }
        try {
            if (c == null) {
                return;
            }
            File ef = null;
            try {
                ef = c.getExternalFilesDir(null);
            } catch (Throwable ignored) {
            }
            if (ef != null) {
                s.mDir = new File(ef, "log/session");
            } else {
                s.mDir = new File(c.getFilesDir(), "log/session");
            }
            if (!s.mDir.isDirectory() && !s.mDir.mkdirs()) {
                Log.w(TAG, "SessionLog mkdir failed: " + s.mDir);
                return;
            }
            s.mBase = new SimpleDateFormat("yyyyMMdd-HHmmss", Locale.US).format(new Date());
            s.mEnabled = true;
            s.openLocked();
            s.cleanupLocked();
            String line = "========== CarLife 会话日志 "
                    + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.US).format(new Date())
                    + " ==========";
            s.writeLocked(line);
            Log.i(TAG, "SessionLog started: " + (s.mCur == null ? "null" : s.mCur.getName()));
        } catch (Throwable t) {
            Log.w(TAG, "SessionLog init failed: " + t);
            s.mEnabled = false;
        }
    }

    /** ConnLog.append 的落盘镜像；一行一条。写不进就断开自己，绝不抛出。 */
    public static synchronized void append(String line) {
        SessionLog s = get();
        if (!s.mEnabled || line == null) {
            return;
        }
        try {
            s.writeLocked(line);
        } catch (Throwable t) {
            s.enabledOffLocked(t);
        }
    }

    private void enabledOffLocked(Throwable t) {
        Log.w(TAG, "SessionLog write failed, disabled: " + t);
        mEnabled = false;
        closeLocked();
    }

    private void openLocked() {
        mPart = 1;
        mCur = new File(mDir, mBase + ".log");
        mWritten = 0;
        try {
            mOut = new OutputStreamWriter(new FileOutputStream(mCur), "UTF-8");
        } catch (Throwable t) {
            Log.w(TAG, "SessionLog open failed: " + t);
            mOut = null;
            mCur = null;
        }
    }

    private void writeLocked(String line) {
        if (mOut == null) {
            return;
        }
        String l = line + "\n";
        byte[] raw;
        try {
            raw = l.getBytes("UTF-8");
        } catch (Throwable t) {
            raw = l.getBytes();
        }
        try {
            if (mWritten + raw.length > MAX_BYTES && mWritten > 0) {
                rotateLocked();
                if (mOut == null) {
                    return;
                }
            }
            mOut.write(l);
            mOut.flush();
            mWritten += raw.length;
        } catch (Throwable t) {
            enabledOffLocked(t);
        }
    }

    /** 超过 30KB 就关当前文件，开 part2/part3/...；到 MAX_PARTS 就停（本会话不再收）。 */
    private void rotateLocked() {
        closeLocked();
        if (mPart >= MAX_PARTS) {
            Log.i(TAG, "SessionLog part limit reached");
            return;
        }
        mPart++;
        mCur = new File(mDir, mBase + ".part" + mPart + ".log");
        mWritten = 0;
        try {
            mOut = new OutputStreamWriter(new FileOutputStream(mCur), "UTF-8");
        } catch (Throwable t) {
            Log.w(TAG, "SessionLog rotate failed: " + t);
            mOut = null;
            mCur = null;
        }
    }

    private void closeLocked() {
        if (mOut != null) {
            try {
                mOut.close();
            } catch (Throwable ignored) {
            }
            mOut = null;
        }
    }

    /** 目录内文件数超限时，按修改时间删最旧的（只碰 session/ 目录，绝不越界）。 */
    private void cleanupLocked() {
        try {
            File[] fs = mDir.listFiles();
            if (fs == null || fs.length <= MAX_FILES) {
                return;
            }
            // 冒泡按修改时间升序，删掉最旧的多余部分
            for (int i = 0; i < fs.length - 1; i++) {
                for (int j = 0; j < fs.length - 1 - i; j++) {
                    if (fs[j].lastModified() > fs[j + 1].lastModified()) {
                        File t = fs[j];
                        fs[j] = fs[j + 1];
                        fs[j + 1] = t;
                    }
                }
            }
            int drop = fs.length - MAX_FILES;
            for (int i = 0; i < drop; i++) {
                try {
                    if (!fs[i].getName().equals(mCur == null ? "" : mCur.getName())) {
                        fs[i].delete();
                    }
                } catch (Throwable ignored) {
                }
            }
        } catch (Throwable ignored) {
        }
    }
}
