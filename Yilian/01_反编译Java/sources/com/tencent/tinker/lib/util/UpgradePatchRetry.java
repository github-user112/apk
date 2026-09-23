package com.tencent.tinker.lib.util;

/* loaded from: classes.dex */
public class UpgradePatchRetry {
    public static final java.lang.String RETRY_COUNT_PROPERTY = "times";
    public static final java.lang.String RETRY_FILE_MD5_PROPERTY = "md5";
    public static final java.lang.String RETRY_INFO_NAME = "patch.retry";
    public static final int RETRY_MAX_COUNT = 20;
    public static final java.lang.String TAG = "Tinker.UpgradePatchRetry";
    public static final java.lang.String TEMP_PATCH_NAME = "temp.apk";
    public static com.tencent.tinker.lib.util.UpgradePatchRetry sInstance;
    public android.content.Context context;
    public boolean isRetryEnable = true;
    public int maxRetryCount = 20;
    public java.io.File retryInfoFile;
    public java.io.File tempPatchFile;

    public static class RetryInfo {
        public java.lang.String md5;
        public java.lang.String times;

        public RetryInfo(java.lang.String str, java.lang.String str2) {
            this.md5 = str;
            this.times = str2;
        }

        public static com.tencent.tinker.lib.util.UpgradePatchRetry.RetryInfo readRetryProperty(java.io.File file) throws java.lang.Throwable {
            java.lang.String property;
            java.io.InputStream fileInputStream;
            java.util.Properties properties = new java.util.Properties();
            java.lang.String property2 = null;
            try {
                try {
                    fileInputStream = new java.io.FileInputStream(file);
                    try {
                        properties.load(fileInputStream);
                        property = properties.getProperty(com.tencent.tinker.lib.util.UpgradePatchRetry.RETRY_FILE_MD5_PROPERTY);
                    } catch (java.io.IOException e2) {
                        e = e2;
                        property = null;
                    }
                    try {
                        property2 = properties.getProperty("times");
                    } catch (java.io.IOException e3) {
                        e = e3;
                        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(com.tencent.tinker.lib.util.UpgradePatchRetry.TAG, "fail to readRetryProperty:" + e, new java.lang.Object[0]);
                        com.tencent.tinker.commons.util.IOHelper.closeQuietly(fileInputStream);
                        return new com.tencent.tinker.lib.util.UpgradePatchRetry.RetryInfo(property, property2);
                    }
                } catch (java.lang.Throwable th) {
                    th = th;
                    property2 = fileInputStream;
                    com.tencent.tinker.commons.util.IOHelper.closeQuietly(property2);
                    throw th;
                }
            } catch (java.io.IOException e4) {
                e = e4;
                property = null;
                fileInputStream = null;
            } catch (java.lang.Throwable th2) {
                th = th2;
                com.tencent.tinker.commons.util.IOHelper.closeQuietly(property2);
                throw th;
            }
            com.tencent.tinker.commons.util.IOHelper.closeQuietly(fileInputStream);
            return new com.tencent.tinker.lib.util.UpgradePatchRetry.RetryInfo(property, property2);
        }

        public static void writeRetryProperty(java.io.File file, com.tencent.tinker.lib.util.UpgradePatchRetry.RetryInfo retryInfo) throws java.lang.Throwable {
            java.io.FileOutputStream fileOutputStream;
            if (retryInfo == null) {
                return;
            }
            java.io.File parentFile = file.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            java.util.Properties properties = new java.util.Properties();
            properties.put(com.tencent.tinker.lib.util.UpgradePatchRetry.RETRY_FILE_MD5_PROPERTY, retryInfo.md5);
            properties.put("times", retryInfo.times);
            java.io.FileOutputStream fileOutputStream2 = null;
            try {
                try {
                    fileOutputStream = new java.io.FileOutputStream(file, false);
                } catch (java.lang.Exception e2) {
                    e = e2;
                }
            } catch (java.lang.Throwable th) {
                th = th;
            }
            try {
                properties.store(fileOutputStream, (java.lang.String) null);
                com.tencent.tinker.commons.util.IOHelper.closeQuietly(fileOutputStream);
            } catch (java.lang.Exception e3) {
                e = e3;
                fileOutputStream2 = fileOutputStream;
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(com.tencent.tinker.lib.util.UpgradePatchRetry.TAG, e, "retry write property fail", new java.lang.Object[0]);
                com.tencent.tinker.commons.util.IOHelper.closeQuietly(fileOutputStream2);
            } catch (java.lang.Throwable th2) {
                th = th2;
                fileOutputStream2 = fileOutputStream;
                com.tencent.tinker.commons.util.IOHelper.closeQuietly(fileOutputStream2);
                throw th;
            }
        }
    }

    public UpgradePatchRetry(android.content.Context context) {
        this.retryInfoFile = null;
        this.tempPatchFile = null;
        this.context = null;
        this.context = context;
        this.retryInfoFile = new java.io.File(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchTempDirectory(context), RETRY_INFO_NAME);
        this.tempPatchFile = new java.io.File(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchTempDirectory(context), TEMP_PATCH_NAME);
    }

    private void copyToTempFile(java.io.File file) throws java.lang.Throwable {
        if (file.getAbsolutePath().equals(this.tempPatchFile.getAbsolutePath())) {
            return;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "try copy file: %s to %s", file.getAbsolutePath(), this.tempPatchFile.getAbsolutePath());
        try {
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.copyFileUsingStream(file, this.tempPatchFile);
        } catch (java.io.IOException unused) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "fail to copy file: %s to %s", file.getAbsolutePath(), this.tempPatchFile.getAbsolutePath());
        }
    }

    public static com.tencent.tinker.lib.util.UpgradePatchRetry getInstance(android.content.Context context) {
        if (sInstance == null) {
            sInstance = new com.tencent.tinker.lib.util.UpgradePatchRetry(context);
        }
        return sInstance;
    }

    public boolean onPatchListenerCheck(java.lang.String str) throws java.lang.Throwable {
        int i;
        if (!this.isRetryEnable) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchListenerCheck retry disabled, just return", new java.lang.Object[0]);
            return true;
        }
        if (!this.retryInfoFile.exists()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchListenerCheck retry file is not exist, just return", new java.lang.Object[0]);
            return true;
        }
        if (str == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchListenerCheck md5 is null, just return", new java.lang.Object[0]);
            return true;
        }
        com.tencent.tinker.lib.util.UpgradePatchRetry.RetryInfo retryProperty = com.tencent.tinker.lib.util.UpgradePatchRetry.RetryInfo.readRetryProperty(this.retryInfoFile);
        if (!str.equals(retryProperty.md5) || (i = java.lang.Integer.parseInt(retryProperty.times)) < this.maxRetryCount) {
            return true;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchListenerCheck, retry count %d must exceed than max retry count", java.lang.Integer.valueOf(i));
        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(this.tempPatchFile);
        return false;
    }

    public boolean onPatchResetMaxCheck(java.lang.String str) {
        if (!this.isRetryEnable) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchResetMaxCheck retry disabled, just return", new java.lang.Object[0]);
            return true;
        }
        if (!this.retryInfoFile.exists()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchResetMaxCheck retry file is not exist, just return", new java.lang.Object[0]);
            return true;
        }
        if (str == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchResetMaxCheck md5 is null, just return", new java.lang.Object[0]);
            return true;
        }
        com.tencent.tinker.lib.util.UpgradePatchRetry.RetryInfo retryProperty = com.tencent.tinker.lib.util.UpgradePatchRetry.RetryInfo.readRetryProperty(this.retryInfoFile);
        if (str.equals(retryProperty.md5)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "onPatchResetMaxCheck, reset max check to 1", new java.lang.Object[0]);
            retryProperty.times = "1";
            com.tencent.tinker.lib.util.UpgradePatchRetry.RetryInfo.writeRetryProperty(this.retryInfoFile, retryProperty);
        }
        return true;
    }

    public boolean onPatchRetryLoad() {
        if (!this.isRetryEnable) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchRetryLoad retry disabled, just return", new java.lang.Object[0]);
            return false;
        }
        if (!com.tencent.tinker.lib.tinker.Tinker.with(this.context).isMainProcess()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchRetryLoad retry is not main process, just return", new java.lang.Object[0]);
            return false;
        }
        if (!this.retryInfoFile.exists()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchRetryLoad retry info not exist, just return", new java.lang.Object[0]);
            return false;
        }
        if (com.tencent.tinker.lib.util.TinkerServiceInternals.isTinkerPatchServiceRunning(this.context)) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchRetryLoad tinker service is running, just return", new java.lang.Object[0]);
            return false;
        }
        java.lang.String absolutePath = this.tempPatchFile.getAbsolutePath();
        if (absolutePath == null || !new java.io.File(absolutePath).exists()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchRetryLoad patch file: %s is not exist, just return", absolutePath);
            return false;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchRetryLoad patch file: %s is exist, retry to patch", absolutePath);
        com.tencent.tinker.lib.tinker.TinkerInstaller.onReceiveUpgradePatch(this.context, absolutePath);
        return true;
    }

    public void onPatchServiceResult() {
        if (!this.isRetryEnable) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchServiceResult retry disabled, just return", new java.lang.Object[0]);
        } else if (this.tempPatchFile.exists()) {
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(this.tempPatchFile);
        }
    }

    public void onPatchServiceStart(android.content.Intent intent) {
        com.tencent.tinker.lib.util.UpgradePatchRetry.RetryInfo retryInfo;
        if (!this.isRetryEnable) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchServiceStart retry disabled, just return", new java.lang.Object[0]);
            return;
        }
        if (intent == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "onPatchServiceStart intent is null, just return", new java.lang.Object[0]);
            return;
        }
        java.lang.String patchPathExtra = com.tencent.tinker.lib.service.TinkerPatchService.getPatchPathExtra(intent);
        if (patchPathExtra == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchServiceStart patch path is null, just return", new java.lang.Object[0]);
            return;
        }
        java.io.File file = new java.io.File(patchPathExtra);
        java.lang.String md5 = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getMD5(file);
        if (md5 == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchServiceStart patch md5 is null, just return", new java.lang.Object[0]);
            return;
        }
        if (this.retryInfoFile.exists()) {
            retryInfo = com.tencent.tinker.lib.util.UpgradePatchRetry.RetryInfo.readRetryProperty(this.retryInfoFile);
            java.lang.String str = retryInfo.md5;
            if (str == null || retryInfo.times == null || !md5.equals(str)) {
                copyToTempFile(file);
                retryInfo.md5 = md5;
                retryInfo.times = "1";
            } else {
                int i = java.lang.Integer.parseInt(retryInfo.times);
                if (i >= this.maxRetryCount) {
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(this.tempPatchFile);
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "onPatchServiceStart retry more than max count, delete retry info file!", new java.lang.Object[0]);
                    return;
                }
                retryInfo.times = java.lang.String.valueOf(i + 1);
            }
        } else {
            copyToTempFile(file);
            retryInfo = new com.tencent.tinker.lib.util.UpgradePatchRetry.RetryInfo(md5, "1");
        }
        com.tencent.tinker.lib.util.UpgradePatchRetry.RetryInfo.writeRetryProperty(this.retryInfoFile, retryInfo);
    }

    public void setMaxRetryCount(int i) {
        if (i <= 0) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "max count must large than 0", new java.lang.Object[0]);
        } else {
            this.maxRetryCount = i;
        }
    }

    public void setRetryEnable(boolean z) {
        this.isRetryEnable = z;
    }
}
