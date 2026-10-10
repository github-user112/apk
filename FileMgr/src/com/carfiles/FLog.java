package com.carfiles;

import android.content.Context;
import android.util.Log;

import java.io.File;
import java.io.FileWriter;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

/**
 * v1.0 轻量日志（本工程没有 BootDiagnostics，跨类日志统一落这里）。
 *
 * 三处输出：
 *   1) logcat（TAG=FileMgr）—— adb 调试；
 *   2) files/log/filemgr.txt —— 内部副本；
 *   3) /sdcard/carfiles/filemgr.log —— 手机扫码文件页可直接下载（外部副本，超 1MB 清零重开）。
 *
 * 全程 try/catch 吞异常：日志失败绝不能影响业务（对齐 BootDiagnostics.log 的纪律）。
 */
public final class FLog {

    public static final String TAG = "FileMgr";
    private static final long MAX_EXT_BYTES = 1024L * 1024L;

    private FLog() {
    }

    public static synchronized void log(Context ctx, String message) {
        String msg = message == null ? "" : message;
        try {
            Log.i(TAG, msg);
        } catch (Throwable ignored) {
        }
        try {
            if (ctx == null) {
                return;
            }
            Context app = ctx.getApplicationContext();
            if (app == null) {
                app = ctx;
            }
            String ts = new SimpleDateFormat("MM-dd HH:mm:ss", Locale.US).format(new Date());
            // 内部副本：zip/文件页枚举 files/log/
            File inDir = new File(app.getFilesDir(), "log");
            write(inDir, "filemgr.txt", ts, msg, 0L);
            // 外部副本：手机直接取
            File ext = new File("/sdcard/carfiles");
            if (ext.isDirectory() || ext.mkdirs()) {
                File f = new File(ext, "filemgr.log");
                if (f.isFile() && f.length() > MAX_EXT_BYTES) {
                    //noinspection ResultOfMethodCallIgnored
                    f.delete();
                }
                write(ext, "filemgr.log", ts, msg, 0L);
            }
        } catch (Throwable ignored) {
        }
    }

    private static void write(File dir, String name, String ts, String line, long unused) {
        FileWriter w = null;
        try {
            if (!dir.isDirectory() && !dir.mkdirs()) {
                return;
            }
            w = new FileWriter(new File(dir, name), true);
            w.write(ts + " " + line + "\n");
        } catch (Throwable ignored) {
        } finally {
            if (w != null) {
                try {
                    w.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }
}
