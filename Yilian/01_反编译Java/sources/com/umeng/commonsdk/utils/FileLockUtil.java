package com.umeng.commonsdk.utils;

/* loaded from: classes.dex */
public class FileLockUtil {
    public final java.lang.Object lockObject = new java.lang.Object();

    /* JADX WARN: Removed duplicated region for block: B:22:0x0022 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.nio.channels.FileLock getFileLock(java.lang.String r3) {
        /*
            r0 = 0
            java.io.RandomAccessFile r1 = new java.io.RandomAccessFile     // Catch: java.io.IOException -> L15 java.io.FileNotFoundException -> L1b
            java.lang.String r2 = "rw"
            r1.<init>(r3, r2)     // Catch: java.io.IOException -> L15 java.io.FileNotFoundException -> L1b
            java.nio.channels.FileChannel r3 = r1.getChannel()     // Catch: java.io.IOException -> L15 java.io.FileNotFoundException -> L1b
            java.nio.channels.FileLock r3 = r3.lock()     // Catch: java.io.IOException -> L11 java.io.FileNotFoundException -> L13
            return r3
        L11:
            r1 = move-exception
            goto L17
        L13:
            r1 = move-exception
            goto L1d
        L15:
            r1 = move-exception
            r3 = r0
        L17:
            r1.printStackTrace()
            goto L20
        L1b:
            r1 = move-exception
            r3 = r0
        L1d:
            r1.printStackTrace()
        L20:
            if (r3 == 0) goto L2a
            r3.close()     // Catch: java.io.IOException -> L26
            goto L2a
        L26:
            r3 = move-exception
            r3.printStackTrace()
        L2a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.utils.FileLockUtil.getFileLock(java.lang.String):java.nio.channels.FileLock");
    }

    public void doFileOperateion(java.io.File file, com.umeng.commonsdk.utils.FileLockCallback fileLockCallback) {
        if (file.exists()) {
            synchronized (this.lockObject) {
                java.nio.channels.FileLock fileLock = getFileLock(file.getAbsolutePath());
                if (fileLock != null) {
                    try {
                        try {
                            fileLockCallback.onFileLock(file.getName());
                        } catch (java.lang.Exception e2) {
                            e2.printStackTrace();
                            try {
                                fileLock.release();
                                fileLock.channel().close();
                            } catch (java.io.IOException e3) {
                                e = e3;
                                e.printStackTrace();
                            }
                        }
                        try {
                            fileLock.release();
                            fileLock.channel().close();
                        } catch (java.io.IOException e4) {
                            e = e4;
                            e.printStackTrace();
                        }
                    } finally {
                    }
                }
            }
        }
    }

    public void doFileOperateion(java.io.File file, com.umeng.commonsdk.utils.FileLockCallback fileLockCallback, int i) {
        if (file.exists()) {
            synchronized (this.lockObject) {
                java.nio.channels.FileLock fileLock = getFileLock(file.getAbsolutePath());
                if (fileLock != null) {
                    try {
                        try {
                            fileLockCallback.onFileLock(file, i);
                            try {
                                fileLock.release();
                                fileLock.channel().close();
                            } catch (java.lang.Throwable th) {
                                th = th;
                                th.printStackTrace();
                            }
                        } catch (java.lang.Exception e2) {
                            e2.printStackTrace();
                            try {
                                fileLock.release();
                                fileLock.channel().close();
                            } catch (java.lang.Throwable th2) {
                                th = th2;
                                th.printStackTrace();
                            }
                        }
                    } finally {
                    }
                }
            }
        }
    }

    public void doFileOperateion(java.io.File file, com.umeng.commonsdk.utils.FileLockCallback fileLockCallback, java.lang.Object obj) {
        if (file.exists()) {
            synchronized (this.lockObject) {
                java.nio.channels.FileLock fileLock = getFileLock(file.getAbsolutePath());
                if (fileLock != null) {
                    try {
                        try {
                            fileLockCallback.onFileLock(file.getName(), obj);
                        } catch (java.lang.Exception e2) {
                            e2.printStackTrace();
                            try {
                                fileLock.release();
                                fileLock.channel().close();
                            } catch (java.io.IOException e3) {
                                e = e3;
                                e.printStackTrace();
                            }
                        }
                        try {
                            fileLock.release();
                            fileLock.channel().close();
                        } catch (java.io.IOException e4) {
                            e = e4;
                            e.printStackTrace();
                        }
                    } finally {
                    }
                }
            }
        }
    }

    public void doFileOperateion(java.lang.String str, com.umeng.commonsdk.utils.FileLockCallback fileLockCallback) {
        java.io.File file = new java.io.File(str);
        if (file.exists()) {
            synchronized (this.lockObject) {
                java.nio.channels.FileLock fileLock = getFileLock(str);
                if (fileLock != null) {
                    try {
                        try {
                            fileLockCallback.onFileLock(file.getName());
                            try {
                                fileLock.release();
                                fileLock.channel().close();
                            } catch (java.io.IOException e2) {
                                e = e2;
                                e.printStackTrace();
                            }
                        } catch (java.lang.Exception e3) {
                            e3.printStackTrace();
                            try {
                                fileLock.release();
                                fileLock.channel().close();
                            } catch (java.io.IOException e4) {
                                e = e4;
                                e.printStackTrace();
                            }
                        }
                    } finally {
                    }
                }
            }
        }
    }
}
