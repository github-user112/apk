package com.boottask;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public final class BootDiagnostics {
    private static final long MAX_LOG_BYTES = 524288L;

    public static synchronized void log(Context context, String message) {
        String text = message == null ? "null" : message;
        Log.d("BootTask", text);
        try {
            File dir = logDir(context);
            if (dir == null) {
                return;
            }
            File file = new File(dir, "boottask.log");
            if (file.length() > MAX_LOG_BYTES) {
                File previous = new File(dir, "boottask.previous.log");
                previous.delete();
                if (!file.renameTo(previous)) {
                    file.delete();
                }
            }
            Writer writer = new OutputStreamWriter(new FileOutputStream(file, true), "UTF-8");
            try {
                writer.write(new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.US).format(new Date()));
                writer.write(' ');
                writer.write(text);
                writer.write('\n');
                writer.flush();
            } finally {
                close(writer);
            }
        } catch (Throwable t) {
            Log.e("BootTask", "write diagnostic log failed: " + t);
        }
    }

    public static void capture(Context context) {
        log(context, "diagnostic snapshot requested");
        Writer writer = null;
        try {
            File dir = logDir(context);
            if (dir == null) {
                return;
            }
            File file = new File(dir, "diagnostic.txt");
            writer = new OutputStreamWriter(new FileOutputStream(file, false), "UTF-8");
            writer.write("BootTask diagnostic snapshot\n");
            writer.write("time=" + new SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US).format(new Date()) + "\n");
            writer.write("package=" + context.getPackageName() + "\n");
            writer.write("sdk=" + Build.VERSION.SDK_INT + "\n");
            writer.write("android=" + Build.VERSION.RELEASE + "\n");
            writer.write("device=" + Build.MANUFACTURER + " " + Build.MODEL + "\n");
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            writer.write("version=" + packageInfo.versionName + " (" + packageInfo.versionCode + ")\n");
            ApplicationInfo applicationInfo = context.getApplicationInfo();
            writer.write("enabled=" + applicationInfo.enabled + "\n");
            writer.write("filesDir=" + context.getFilesDir().getAbsolutePath() + "\n");
            writer.write("rules=" + context.getSharedPreferences("rules", 0).getString("list", "[]") + "\n");
            try {
                writer.write("audio=" + MuteGuard.describe(context) + "\n");
            } catch (Throwable t) {
                writer.write("audio=error: " + t + "\n");
            }
            writer.write("\n--- filtered logcat ---\n");
            writer.flush();
            dumpLogcat(writer);
        } catch (Throwable t) {
            Log.e("BootTask", "capture diagnostic log failed: " + t);
            if (writer != null) {
                try {
                    writer.write("\ncapture failed: " + t + "\n");
                    writer.flush();
                } catch (Throwable ignored) {
                }
            }
        } finally {
            close(writer);
        }
    }

    private static File logDir(Context context) {
        File dir = new File(context.getFilesDir(), "log");
        return dir.isDirectory() || dir.mkdirs() ? dir : null;
    }

    private static void dumpLogcat(Writer writer) {
        Process process = null;
        try {
            process = new ProcessBuilder(
                    "logcat", "-d", "-v", "time", "-s",
                    "BootTask:V",
                    "BootTaskLogXfer:V",
                    "CarLifeLogXfer:V",
                    "ActivityManager:I",
                    "PackageManager:I",
                    "AndroidRuntime:E")
                    .redirectErrorStream(true)
                    .start();
            BufferedReader reader = new BufferedReader(new InputStreamReader(process.getInputStream(), "UTF-8"));
            char[] buffer = new char[4096];
            int total = 0;
            try {
                while (total < 262144) {
                    int count = reader.read(buffer, 0, Math.min(buffer.length, 262144 - total));
                    if (count <= 0) {
                        break;
                    }
                    writer.write(buffer, 0, count);
                    total += count;
                }
                if (total >= 262144) {
                    writer.write("\n[logcat truncated at 256 KB]\n");
                }
                writer.flush();
            } finally {
                close(reader);
            }
        } catch (Throwable t) {
            try {
                writer.write("logcat unavailable: " + t + "\n");
                writer.flush();
            } catch (Throwable ignored) {
            }
        } finally {
            if (process != null) {
                process.destroy();
            }
        }
    }

    private static void close(Object closeable) {
        if (closeable == null) {
            return;
        }
        try {
            if (closeable instanceof Writer) {
                ((Writer) closeable).close();
            } else if (closeable instanceof BufferedReader) {
                ((BufferedReader) closeable).close();
            }
        } catch (Throwable ignored) {
        }
    }

    public static final class LogActivity extends com.baidu.carlifevehicle.logxfer.LogDownloadActivity {
        @Override
        protected void onCreate(Bundle state) {
            super.onCreate(state);
            capture(this);
            try {
                ViewGroup content = (ViewGroup) findViewById(android.R.id.content);
                if (content != null && content.getChildCount() > 0) {
                    View root = content.getChildAt(0);
                    if (root instanceof ViewGroup && ((ViewGroup) root).getChildCount() > 0) {
                        View title = ((ViewGroup) root).getChildAt(0);
                        if (title instanceof TextView) {
                            ((TextView) title).setText("开机任务日志下载");
                        }
                    }
                }
            } catch (Throwable ignored) {
            }
        }
    }
}
