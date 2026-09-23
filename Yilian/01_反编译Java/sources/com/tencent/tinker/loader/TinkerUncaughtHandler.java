package com.tencent.tinker.loader;

/* loaded from: classes.dex */
public class TinkerUncaughtHandler implements java.lang.Thread.UncaughtExceptionHandler {
    public static final java.lang.String TAG = "Tinker.UncaughtHandler";
    public final android.content.Context context;
    public final java.io.File crashFile;
    public final java.lang.Thread.UncaughtExceptionHandler ueh = java.lang.Thread.getDefaultUncaughtExceptionHandler();

    public TinkerUncaughtHandler(android.content.Context context) {
        this.context = context;
        this.crashFile = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchLastCrashFile(context);
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(java.lang.Thread thread, java.lang.Throwable th) throws java.lang.Throwable {
        java.io.PrintWriter printWriter;
        java.io.IOException e2;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("TinkerUncaughtHandler catch exception:");
        sbO.append(android.util.Log.getStackTraceString(th));
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, sbO.toString(), new java.lang.Object[0]);
        this.ueh.uncaughtException(thread, th);
        if (this.crashFile == null || !(java.lang.Thread.getDefaultUncaughtExceptionHandler() instanceof com.tencent.tinker.loader.TinkerUncaughtHandler)) {
            return;
        }
        java.io.File parentFile = this.crashFile.getParentFile();
        if (!parentFile.exists() && !parentFile.mkdirs()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "print crash file error: create directory fail!", new java.lang.Object[0]);
            return;
        }
        java.io.PrintWriter printWriter2 = null;
        try {
            printWriter = new java.io.PrintWriter(new java.io.FileWriter(this.crashFile, false));
            try {
                try {
                    printWriter.println("process:" + com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getProcessName(this.context));
                    printWriter.println(com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getExceptionCauseString(th));
                } catch (java.io.IOException e3) {
                    e2 = e3;
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "print crash file error:" + android.util.Log.getStackTraceString(e2), new java.lang.Object[0]);
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(printWriter);
                    android.os.Process.killProcess(android.os.Process.myPid());
                }
            } catch (java.lang.Throwable th2) {
                th = th2;
                printWriter2 = printWriter;
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(printWriter2);
                throw th;
            }
        } catch (java.io.IOException e4) {
            printWriter = null;
            e2 = e4;
        } catch (java.lang.Throwable th3) {
            th = th3;
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(printWriter2);
            throw th;
        }
        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.closeQuietly(printWriter);
        android.os.Process.killProcess(android.os.Process.myPid());
    }
}
