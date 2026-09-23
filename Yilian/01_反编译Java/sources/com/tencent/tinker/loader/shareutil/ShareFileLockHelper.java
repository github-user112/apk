package com.tencent.tinker.loader.shareutil;

/* loaded from: classes.dex */
public class ShareFileLockHelper implements java.io.Closeable {
    public static final int LOCK_WAIT_EACH_TIME = 10;
    public static final int MAX_LOCK_ATTEMPTS = 3;
    public static final java.lang.String TAG = "Tinker.FileLockHelper";
    public final java.nio.channels.FileLock fileLock;
    public final java.io.FileOutputStream outputStream;

    public ShareFileLockHelper(java.io.File file) throws java.lang.InterruptedException, java.io.IOException {
        this.outputStream = new java.io.FileOutputStream(file);
        java.nio.channels.FileLock fileLockLock = null;
        java.lang.Exception e2 = null;
        int i = 0;
        while (i < 3) {
            i++;
            try {
                fileLockLock = this.outputStream.getChannel().lock();
                if (fileLockLock != null) {
                    break;
                }
            } catch (java.lang.Exception e3) {
                e2 = e3;
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "getInfoLock Thread failed time:10", new java.lang.Object[0]);
            }
            try {
                java.lang.Thread.sleep(10L);
            } catch (java.lang.Exception e4) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "getInfoLock Thread sleep exception", e4);
            }
        }
        if (fileLockLock != null) {
            this.fileLock = fileLockLock;
        } else {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Tinker Exception:FileLockHelper lock file failed: ");
            sbO.append(file.getAbsolutePath());
            throw new java.io.IOException(sbO.toString(), e2);
        }
    }

    public static com.tencent.tinker.loader.shareutil.ShareFileLockHelper getFileLock(java.io.File file) {
        return new com.tencent.tinker.loader.shareutil.ShareFileLockHelper(file);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws java.io.IOException {
        try {
            if (this.fileLock != null) {
                this.fileLock.release();
            }
        } finally {
            java.io.FileOutputStream fileOutputStream = this.outputStream;
            if (fileOutputStream != null) {
                fileOutputStream.close();
            }
        }
    }
}
