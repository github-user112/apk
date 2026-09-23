package com.tencent.tinker.lib.reporter;

/* loaded from: classes.dex */
public class DefaultLoadReporter implements com.tencent.tinker.lib.reporter.LoadReporter {
    public static final java.lang.String TAG = "Tinker.DefaultLoadReporter";
    public final android.content.Context context;

    public DefaultLoadReporter(android.content.Context context) {
        this.context = context;
    }

    public void checkAndCleanPatch() {
        com.tencent.tinker.lib.tinker.Tinker.with(this.context).cleanPatch();
    }

    @Override // com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadException(java.lang.Throwable th, int i) throws java.lang.Throwable {
        if (i == -4) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch loadReporter onLoadException: patch load unCatch exception: %s", th);
            com.tencent.tinker.loader.shareutil.ShareTinkerInternals.setTinkerDisableWithSharedPreferences(this.context);
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "unCaught exception disable tinker forever with sp", new java.lang.Object[0]);
            java.lang.String strCheckTinkerLastUncaughtCrash = com.tencent.tinker.loader.shareutil.SharePatchFileUtil.checkTinkerLastUncaughtCrash(this.context);
            if (!com.tencent.tinker.loader.shareutil.ShareTinkerInternals.isNullOrNil(strCheckTinkerLastUncaughtCrash)) {
                com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getPatchLastCrashFile(this.context));
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "tinker uncaught real exception:" + strCheckTinkerLastUncaughtCrash, new java.lang.Object[0]);
            }
        } else if (i == -3) {
            if (th.getMessage().contains(com.tencent.tinker.loader.shareutil.ShareConstants.CHECK_RES_INSTALL_FAIL)) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("patch loadReporter onLoadException: tinker res check fail:");
                sbO.append(th.getMessage());
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, sbO.toString(), new java.lang.Object[0]);
            } else {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch loadReporter onLoadException: patch load resource exception: %s", th);
            }
            com.tencent.tinker.loader.shareutil.ShareTinkerInternals.setTinkerDisableWithSharedPreferences(this.context);
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "res exception disable tinker forever with sp", new java.lang.Object[0]);
        } else if (i == -2) {
            if (th.getMessage().contains(com.tencent.tinker.loader.shareutil.ShareConstants.CHECK_DEX_INSTALL_FAIL)) {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("patch loadReporter onLoadException: tinker dex check fail:");
                sbO2.append(th.getMessage());
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, sbO2.toString(), new java.lang.Object[0]);
            } else {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch loadReporter onLoadException: patch load dex exception: %s", th);
            }
            com.tencent.tinker.loader.shareutil.ShareTinkerInternals.setTinkerDisableWithSharedPreferences(this.context);
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "dex exception disable tinker forever with sp", new java.lang.Object[0]);
        } else if (i == -1) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch loadReporter onLoadException: patch load unknown exception: %s", th);
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "tinker load exception, welcome to submit issue to us: https://github.com/Tencent/tinker/issues", new java.lang.Object[0]);
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, th, "tinker load exception", new java.lang.Object[0]);
        com.tencent.tinker.lib.tinker.Tinker.with(this.context).setTinkerDisable();
        checkAndCleanPatch();
    }

    @Override // com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadFileMd5Mismatch(java.io.File file, int i) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch load Reporter onLoadFileMd5Mismatch: patch file md5 mismatch file: %s, fileType: %d", file.getAbsolutePath(), java.lang.Integer.valueOf(i));
        checkAndCleanPatch();
    }

    @Override // com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadFileNotFound(java.io.File file, int i, boolean z) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch loadReporter onLoadFileNotFound: patch file not found: %s, fileType: %d, isDirectory: %b", file.getAbsolutePath(), java.lang.Integer.valueOf(i), java.lang.Boolean.valueOf(z));
        if (i == 4) {
            retryPatch();
        } else {
            checkAndCleanPatch();
        }
    }

    @Override // com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadInterpret(int i, java.lang.Throwable th) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch loadReporter onLoadInterpret: type: %d, throwable: %s", java.lang.Integer.valueOf(i), th);
        if (i == 0) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch loadReporter onLoadInterpret ok", new java.lang.Object[0]);
        } else if (i == 1) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch loadReporter onLoadInterpret fail, can get instruction set from existed oat file", new java.lang.Object[0]);
        } else if (i == 2) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "patch loadReporter onLoadInterpret fail, command line to interpret return error", new java.lang.Object[0]);
        }
        retryPatch();
    }

    @Override // com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadPackageCheckFail(java.io.File file, int i) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch loadReporter onLoadPackageCheckFail: load patch package check fail file path: %s, errorCode: %d", file.getAbsolutePath(), java.lang.Integer.valueOf(i));
        checkAndCleanPatch();
    }

    @Override // com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadPatchInfoCorrupted(java.lang.String str, java.lang.String str2, java.io.File file) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch loadReporter onLoadPatchInfoCorrupted: patch info file damage: %s, from version: %s to version: %s", file.getAbsolutePath(), str, str2);
        checkAndCleanPatch();
    }

    @Override // com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadPatchListenerReceiveFail(java.io.File file, int i) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch loadReporter onLoadPatchListenerReceiveFail: patch receive fail: %s, code: %d", file.getAbsolutePath(), java.lang.Integer.valueOf(i));
    }

    @Override // com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadPatchVersionChanged(java.lang.String str, java.lang.String str2, java.io.File file, java.lang.String str3) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, e.a.c.a.a.g("patch loadReporter onLoadPatchVersionChanged: patch version change from ", str, " to ", str2), new java.lang.Object[0]);
        if (str == null || str2 == null || str.equals(str2) || !com.tencent.tinker.lib.tinker.Tinker.with(this.context).isMainProcess()) {
            return;
        }
        com.tencent.tinker.lib.util.UpgradePatchRetry.getInstance(this.context).onPatchResetMaxCheck(str2);
        java.io.File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles != null) {
            for (java.io.File file2 : fileArrListFiles) {
                java.lang.String name = file2.getName();
                if (file2.isDirectory() && !name.equals(str3)) {
                    com.tencent.tinker.loader.shareutil.SharePatchFileUtil.deleteDir(file2);
                }
            }
        }
    }

    @Override // com.tencent.tinker.lib.reporter.LoadReporter
    public void onLoadResult(java.io.File file, int i, long j) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patch loadReporter onLoadResult: patch load result, path:%s, code: %d, cost: %dms", file.getAbsolutePath(), java.lang.Integer.valueOf(i), java.lang.Long.valueOf(j));
    }

    public boolean retryPatch() {
        java.io.File file;
        com.tencent.tinker.lib.tinker.Tinker tinkerWith = com.tencent.tinker.lib.tinker.Tinker.with(this.context);
        if (!tinkerWith.isMainProcess() || (file = tinkerWith.getTinkerLoadResultIfPresent().patchVersionFile) == null || !com.tencent.tinker.lib.util.UpgradePatchRetry.getInstance(this.context).onPatchListenerCheck(com.tencent.tinker.loader.shareutil.SharePatchFileUtil.getMD5(file))) {
            return false;
        }
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "try to repair oat file on patch process", new java.lang.Object[0]);
        com.tencent.tinker.lib.tinker.TinkerInstaller.onReceiveUpgradePatch(this.context, file.getAbsolutePath());
        return true;
    }
}
