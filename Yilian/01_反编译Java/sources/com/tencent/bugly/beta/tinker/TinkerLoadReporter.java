package com.tencent.bugly.beta.tinker;

/* loaded from: classes.dex */
public class TinkerLoadReporter extends com.tencent.tinker.lib.reporter.DefaultLoadReporter {
    public static final java.lang.String TAG = "Tinker.TinkerLoadReporter";
    public final com.tencent.tinker.lib.reporter.LoadReporter userLoadReporter;

    public class a implements android.os.MessageQueue.IdleHandler {
        public a() {
        }

        @Override // android.os.MessageQueue.IdleHandler
        public boolean queueIdle() {
            if (!com.tencent.tinker.lib.util.UpgradePatchRetry.getInstance(com.tencent.bugly.beta.tinker.TinkerLoadReporter.this.context).onPatchRetryLoad()) {
                return false;
            }
            com.tencent.bugly.beta.tinker.TinkerReport.onReportRetryPatch();
            return false;
        }
    }

    public TinkerLoadReporter(android.content.Context context) {
        super(context);
        this.userLoadReporter = com.tencent.bugly.beta.tinker.TinkerManager.userLoadReporter;
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultLoadReporter, com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadException(java.lang.Throwable th, int i) throws java.lang.Throwable {
        super.onLoadException(th, i);
        com.tencent.tinker.lib.reporter.LoadReporter loadReporter = this.userLoadReporter;
        if (loadReporter != null) {
            loadReporter.onLoadException(th, i);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onLoadException(th, i);
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultLoadReporter, com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadFileMd5Mismatch(java.io.File file, int i) {
        super.onLoadFileMd5Mismatch(file, i);
        com.tencent.tinker.lib.reporter.LoadReporter loadReporter = this.userLoadReporter;
        if (loadReporter != null) {
            loadReporter.onLoadFileMd5Mismatch(file, i);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onLoadFileMisMatch(i);
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultLoadReporter, com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadFileNotFound(java.io.File file, int i, boolean z) {
        java.io.File file2;
        super.onLoadFileNotFound(file, i, z);
        com.tencent.tinker.lib.reporter.LoadReporter loadReporter = this.userLoadReporter;
        if (loadReporter != null) {
            loadReporter.onLoadFileNotFound(file, i, z);
            return;
        }
        com.tencent.tinker.lib.util.TinkerLog.i(TAG, "patch loadReporter onLoadFileNotFound: patch file not found: %s, fileType:%d, isDirectory:%b", file.getAbsolutePath(), java.lang.Integer.valueOf(i), java.lang.Boolean.valueOf(z));
        if (i == 4) {
            com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(this.context);
            if (tinkerWith.isMainProcess() && (file2 = tinkerWith.getTinkerLoadResultIfPresent().patchVersionFile) != null) {
                if (com.tencent.tinker.lib.util.UpgradePatchRetry.getInstance(this.context).onPatchListenerCheck(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getMD5(file2))) {
                    com.tencent.tinker.lib.util.TinkerLog.i(TAG, "try to repair oat file on patch process", new java.lang.Object[0]);
                    com.tencent.tinker.lib.tinker.TinkerInstaller.onReceiveUpgradePatch(this.context, file2.getAbsolutePath());
                } else {
                    com.tencent.tinker.lib.util.TinkerLog.i(TAG, "repair retry exceed must max time, just clean", new java.lang.Object[0]);
                    checkAndCleanPatch();
                }
            }
        } else {
            checkAndCleanPatch();
        }
        com.tencent.bugly.beta.tinker.TinkerReport.onLoadFileNotFound(i);
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultLoadReporter, com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadInterpret(int i, java.lang.Throwable th) {
        super.onLoadInterpret(i, th);
        com.tencent.tinker.lib.reporter.LoadReporter loadReporter = this.userLoadReporter;
        if (loadReporter != null) {
            loadReporter.onLoadInterpret(i, th);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onLoadInterpretReport(i, th);
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultLoadReporter, com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadPackageCheckFail(java.io.File file, int i) {
        super.onLoadPackageCheckFail(file, i);
        com.tencent.tinker.lib.reporter.LoadReporter loadReporter = this.userLoadReporter;
        if (loadReporter != null) {
            loadReporter.onLoadPackageCheckFail(file, i);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onLoadPackageCheckFail(i);
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultLoadReporter, com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadPatchInfoCorrupted(java.lang.String str, java.lang.String str2, java.io.File file) {
        super.onLoadPatchInfoCorrupted(str, str2, file);
        com.tencent.tinker.lib.reporter.LoadReporter loadReporter = this.userLoadReporter;
        if (loadReporter != null) {
            loadReporter.onLoadPatchInfoCorrupted(str, str2, file);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onLoadInfoCorrupted();
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultLoadReporter, com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadPatchListenerReceiveFail(java.io.File file, int i) {
        super.onLoadPatchListenerReceiveFail(file, i);
        com.tencent.tinker.lib.reporter.LoadReporter loadReporter = this.userLoadReporter;
        if (loadReporter != null) {
            loadReporter.onLoadPatchListenerReceiveFail(file, i);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onTryApplyFail(i);
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultLoadReporter, com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadPatchVersionChanged(java.lang.String str, java.lang.String str2, java.io.File file, java.lang.String str3) {
        super.onLoadPatchVersionChanged(str, str2, file, str3);
        com.tencent.tinker.lib.reporter.LoadReporter loadReporter = this.userLoadReporter;
        if (loadReporter != null) {
            loadReporter.onLoadPatchVersionChanged(str, str2, file, str3);
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultLoadReporter, com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadResult(java.io.File file, int i, long j) {
        super.onLoadResult(file, i, j);
        com.tencent.tinker.lib.reporter.LoadReporter loadReporter = this.userLoadReporter;
        if (loadReporter != null) {
            loadReporter.onLoadResult(file, i, j);
            return;
        }
        if (i == 0) {
            com.tencent.bugly.beta.tinker.TinkerReport.onLoaded(j);
        }
        android.os.Looper.getMainLooper();
        android.os.Looper.myQueue().addIdleHandler(new com.tencent.bugly.beta.tinker.TinkerLoadReporter.a());
    }
}
