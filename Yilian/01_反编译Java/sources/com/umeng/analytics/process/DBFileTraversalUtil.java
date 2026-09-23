package com.umeng.analytics.process;

/* loaded from: classes.dex */
public class DBFileTraversalUtil {
    public static java.util.concurrent.ExecutorService a = java.util.concurrent.Executors.newSingleThreadExecutor();
    public static com.umeng.commonsdk.utils.FileLockUtil b = new com.umeng.commonsdk.utils.FileLockUtil();

    public interface a {
        void a();
    }

    public static void traverseDBFiles(java.lang.String str, final com.umeng.commonsdk.utils.FileLockCallback fileLockCallback, final com.umeng.analytics.process.DBFileTraversalUtil.a aVar) {
        final java.io.File file = new java.io.File(str);
        if (file.exists() && file.isDirectory()) {
            a.execute(new java.lang.Runnable() { // from class: com.umeng.analytics.process.DBFileTraversalUtil.1
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        for (java.io.File file2 : file.listFiles()) {
                            if (file2.getName().endsWith(com.umeng.analytics.process.a.f1403d)) {
                                com.umeng.analytics.process.DBFileTraversalUtil.b.doFileOperateion(file2, fileLockCallback);
                                com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> file: " + file2.getName());
                            }
                        }
                        if (aVar != null) {
                            aVar.a();
                        }
                    } catch (java.lang.Throwable unused) {
                    }
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> end *** ");
                }
            });
        }
    }
}
