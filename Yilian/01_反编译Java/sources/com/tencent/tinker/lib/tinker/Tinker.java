package com.tencent.tinker.lib.tinker;

/* loaded from: classes.dex */
public class Tinker {
    public static final java.lang.String TAG = "Tinker.Tinker";
    public static boolean sInstalled = false;
    public static com.tencent.tinker.lib.tinker.Tinker sInstance;
    public final android.content.Context context;
    public final com.tencent.tinker.lib.filepatch.AbstractFilePatch customPatcher;
    public final boolean isMainProcess;
    public final boolean isPatchProcess;
    public final com.tencent.tinker.lib.listener.PatchListener listener;
    public final com.tencent.tinker.lib.reporter.LoadReporter loadReporter;
    public boolean loaded;
    public final java.io.File patchDirectory;
    public final java.io.File patchInfoFile;
    public final java.io.File patchInfoLockFile;
    public final com.tencent.tinker.lib.reporter.PatchReporter patchReporter;
    public int tinkerFlags;
    public com.tencent.tinker.lib.tinker.TinkerLoadResult tinkerLoadResult;
    public final boolean tinkerLoadVerifyFlag;

    public static class Builder {
        public final android.content.Context context;
        public com.tencent.tinker.lib.listener.PatchListener listener;
        public com.tencent.tinker.lib.reporter.LoadReporter loadReporter;
        public final boolean mainProcess;
        public java.io.File patchDirectory;
        public java.io.File patchInfoFile;
        public java.io.File patchInfoLockFile;
        public final boolean patchProcess;
        public com.tencent.tinker.lib.reporter.PatchReporter patchReporter;
        public com.tencent.tinker.lib.filepatch.AbstractFilePatch patcher;
        public int status = -1;
        public java.lang.Boolean tinkerLoadVerifyFlag;

        public Builder(android.content.Context context) {
            if (context == null) {
                throw new com.tencent.tinker.loader.TinkerRuntimeException("Context must not be null.");
            }
            this.context = context;
            this.mainProcess = com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isInMainProcess(context);
            this.patchProcess = com.tencent.tinker.lib.util.TinkerServiceInternals.isInTinkerPatchServiceProcess(context);
            java.io.File patchDirectory = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchDirectory(context);
            this.patchDirectory = patchDirectory;
            if (patchDirectory == null) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(com.tencent.tinker.lib.tinker.Tinker.TAG, "patchDirectory is null!", new java.lang.Object[0]);
                return;
            }
            this.patchInfoFile = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchInfoFile(patchDirectory.getAbsolutePath());
            this.patchInfoLockFile = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchInfoLockFile(this.patchDirectory.getAbsolutePath());
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(com.tencent.tinker.lib.tinker.Tinker.TAG, "tinker patch directory: %s", this.patchDirectory);
        }

        public com.tencent.tinker.lib.tinker.Tinker build() {
            if (this.status == -1) {
                this.status = 15;
            }
            if (this.loadReporter == null) {
                this.loadReporter = new com.tencent.tinker.lib.reporter.DefaultLoadReporter(this.context);
            }
            if (this.patchReporter == null) {
                this.patchReporter = new com.tencent.tinker.lib.reporter.DefaultPatchReporter(this.context);
            }
            if (this.listener == null) {
                this.listener = new com.tencent.tinker.lib.listener.DefaultPatchListener(this.context);
            }
            if (this.tinkerLoadVerifyFlag == null) {
                this.tinkerLoadVerifyFlag = java.lang.Boolean.FALSE;
            }
            return new com.tencent.tinker.lib.tinker.Tinker(this.context, this.status, this.loadReporter, this.patchReporter, this.listener, this.patchDirectory, this.patchInfoFile, this.patchInfoLockFile, this.patcher, this.mainProcess, this.patchProcess, this.tinkerLoadVerifyFlag.booleanValue());
        }

        public com.tencent.tinker.lib.tinker.Tinker.Builder customPatcher(com.tencent.tinker.lib.filepatch.AbstractFilePatch abstractFilePatch) {
            this.patcher = abstractFilePatch;
            return this;
        }

        public com.tencent.tinker.lib.tinker.Tinker.Builder listener(com.tencent.tinker.lib.listener.PatchListener patchListener) {
            if (patchListener == null) {
                throw new com.tencent.tinker.loader.TinkerRuntimeException("listener must not be null.");
            }
            if (this.listener != null) {
                throw new com.tencent.tinker.loader.TinkerRuntimeException("listener is already set.");
            }
            this.listener = patchListener;
            return this;
        }

        public com.tencent.tinker.lib.tinker.Tinker.Builder loadReport(com.tencent.tinker.lib.reporter.LoadReporter loadReporter) {
            if (loadReporter == null) {
                throw new com.tencent.tinker.loader.TinkerRuntimeException("loadReporter must not be null.");
            }
            if (this.loadReporter != null) {
                throw new com.tencent.tinker.loader.TinkerRuntimeException("loadReporter is already set.");
            }
            this.loadReporter = loadReporter;
            return this;
        }

        public com.tencent.tinker.lib.tinker.Tinker.Builder patchReporter(com.tencent.tinker.lib.reporter.PatchReporter patchReporter) {
            if (patchReporter == null) {
                throw new com.tencent.tinker.loader.TinkerRuntimeException("patchReporter must not be null.");
            }
            if (this.patchReporter != null) {
                throw new com.tencent.tinker.loader.TinkerRuntimeException("patchReporter is already set.");
            }
            this.patchReporter = patchReporter;
            return this;
        }

        public com.tencent.tinker.lib.tinker.Tinker.Builder tinkerFlags(int i) {
            if (this.status != -1) {
                throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerFlag is already set.");
            }
            this.status = i;
            return this;
        }

        public com.tencent.tinker.lib.tinker.Tinker.Builder tinkerLoadVerifyFlag(java.lang.Boolean bool) {
            if (bool == null) {
                throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerLoadVerifyFlag must not be null.");
            }
            if (this.tinkerLoadVerifyFlag != null) {
                throw new com.tencent.tinker.loader.TinkerRuntimeException("tinkerLoadVerifyFlag is already set.");
            }
            this.tinkerLoadVerifyFlag = bool;
            return this;
        }
    }

    public Tinker(android.content.Context context, int i, com.tencent.tinker.lib.reporter.LoadReporter loadReporter, com.tencent.tinker.lib.reporter.PatchReporter patchReporter, com.tencent.tinker.lib.listener.PatchListener patchListener, java.io.File file, java.io.File file2, java.io.File file3, com.tencent.tinker.lib.filepatch.AbstractFilePatch abstractFilePatch, boolean z, boolean z2, boolean z3) {
        this.loaded = false;
        this.context = context;
        this.listener = patchListener;
        this.loadReporter = loadReporter;
        this.patchReporter = patchReporter;
        this.tinkerFlags = i;
        this.patchDirectory = file;
        this.patchInfoFile = file2;
        this.patchInfoLockFile = file3;
        this.customPatcher = abstractFilePatch;
        this.isMainProcess = z;
        this.tinkerLoadVerifyFlag = z3;
        this.isPatchProcess = z2;
    }

    public static void create(com.tencent.tinker.lib.tinker.Tinker tinker) {
        if (sInstance != null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("Tinker instance is already set.");
        }
        sInstance = tinker;
    }

    public static boolean isTinkerInstalled() {
        return sInstalled;
    }

    public static com.tencent.tinker.lib.tinker.Tinker with(android.content.Context context) {
        if (!sInstalled) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("you must install tinker before get tinker sInstance");
        }
        synchronized (com.tencent.tinker.lib.tinker.Tinker.class) {
            if (sInstance == null) {
                sInstance = new com.tencent.tinker.lib.tinker.Tinker.Builder(context).build();
            }
        }
        return sInstance;
    }

    public void cleanPatch() {
        com.tencent.tinker.loader.shareutil.ShareTinkerInternals.cleanPatch(getContext());
    }

    public void cleanPatchByPatchApk(java.io.File file) {
        if (this.patchDirectory == null || file == null || !file.exists()) {
            return;
        }
        cleanPatchByVersion(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchVersionDirectory(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getMD5(file)));
    }

    public void cleanPatchByVersion(java.lang.String str) {
        if (this.patchDirectory == null || str == null) {
            return;
        }
        com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(this.patchDirectory.getAbsolutePath() + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + str);
    }

    public android.content.Context getContext() {
        return this.context;
    }

    public com.tencent.tinker.lib.filepatch.AbstractFilePatch getCustomPatcher() {
        return this.customPatcher;
    }

    public com.tencent.tinker.lib.reporter.LoadReporter getLoadReporter() {
        return this.loadReporter;
    }

    public java.io.File getPatchDirectory() {
        return this.patchDirectory;
    }

    public java.io.File getPatchInfoFile() {
        return this.patchInfoFile;
    }

    public java.io.File getPatchInfoLockFile() {
        return this.patchInfoLockFile;
    }

    public com.tencent.tinker.lib.listener.PatchListener getPatchListener() {
        return this.listener;
    }

    public com.tencent.tinker.lib.reporter.PatchReporter getPatchReporter() {
        return this.patchReporter;
    }

    public int getTinkerFlags() {
        return this.tinkerFlags;
    }

    public com.tencent.tinker.lib.tinker.TinkerLoadResult getTinkerLoadResultIfPresent() {
        return this.tinkerLoadResult;
    }

    public long getTinkerRomSpace() {
        java.io.File file = this.patchDirectory;
        if (file == null) {
            return 0L;
        }
        return com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getFileOrDirectorySize(file) / android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID;
    }

    public void install(android.content.Intent intent) throws java.lang.ClassNotFoundException {
        install(intent, com.tencent.tinker.lib.service.DefaultTinkerResultService.class, new com.tencent.tinker.lib.patch.UpgradePatch());
    }

    public void install(android.content.Intent intent, java.lang.Class<? extends com.tencent.tinker.lib.service.AbstractResultService> cls, com.tencent.tinker.lib.patch.AbstractPatch abstractPatch) throws java.lang.ClassNotFoundException {
        sInstalled = true;
        com.tencent.tinker.lib.service.TinkerPatchService.setPatchProcessor(abstractPatch, cls);
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "try to install tinker, isEnable: %b, version: %s", java.lang.Boolean.valueOf(isTinkerEnabled()), "1.9.14.26.3");
        if (!isTinkerEnabled()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "tinker is disabled", new java.lang.Object[0]);
            return;
        }
        if (intent == null) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("intentResult must not be null.");
        }
        com.tencent.tinker.lib.tinker.TinkerLoadResult tinkerLoadResult = new com.tencent.tinker.lib.tinker.TinkerLoadResult();
        this.tinkerLoadResult = tinkerLoadResult;
        tinkerLoadResult.parseTinkerResult(getContext(), intent);
        com.tencent.tinker.lib.reporter.LoadReporter loadReporter = this.loadReporter;
        java.io.File file = this.patchDirectory;
        com.tencent.tinker.lib.tinker.TinkerLoadResult tinkerLoadResult2 = this.tinkerLoadResult;
        loadReporter.onLoadResult(file, tinkerLoadResult2.loadCode, tinkerLoadResult2.costTime);
        if (this.loaded) {
            return;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "tinker load fail!", new java.lang.Object[0]);
    }

    public boolean isEnabledForDex() {
        return com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnabledForDex(this.tinkerFlags);
    }

    public boolean isEnabledForNativeLib() {
        return com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnabledForNativeLib(this.tinkerFlags);
    }

    public boolean isEnabledForResource() {
        return com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnabledForResource(this.tinkerFlags);
    }

    public boolean isMainProcess() {
        return this.isMainProcess;
    }

    public boolean isPatchProcess() {
        return this.isPatchProcess;
    }

    public boolean isTinkerEnabled() {
        return com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isTinkerEnabled(this.tinkerFlags);
    }

    public boolean isTinkerLoadVerify() {
        return this.tinkerLoadVerifyFlag;
    }

    public boolean isTinkerLoaded() {
        return this.loaded;
    }

    public void rollbackPatch() {
        if (!isTinkerLoaded()) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "rollbackPatch: tinker is not loaded, just return", new java.lang.Object[0]);
            return;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerInternals.killAllOtherProcess(this.context);
        cleanPatch();
        android.os.Process.killProcess(android.os.Process.myPid());
    }

    public void setPatchServiceNotificationId(int i) {
        com.tencent.tinker.lib.service.TinkerPatchService.setTinkerNotificationId(i);
    }

    public void setTinkerDisable() {
        this.tinkerFlags = 0;
    }

    public void setTinkerLoaded(boolean z) {
        this.loaded = z;
    }
}
