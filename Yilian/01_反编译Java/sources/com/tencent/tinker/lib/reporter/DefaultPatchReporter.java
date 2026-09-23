package com.tencent.tinker.lib.reporter;

/* loaded from: classes.dex */
public class DefaultPatchReporter implements com.tencent.tinker.lib.reporter.PatchReporter {
    public static final java.lang.String TAG = "Tinker.DefaultPatchReporter";
    public static boolean shouldRetry = false;
    public final android.content.Context context;

    public DefaultPatchReporter(android.content.Context context) {
        this.context = context;
    }

    private void deleteOptFiles(java.util.List<java.io.File> list) {
        java.util.Iterator<java.io.File> it = list.iterator();
        while (it.hasNext()) {
            com.tencent.tinker.loader.shareutil.SharePatchFileUtil.safeDeleteFile(it.next());
        }
    }

    @Override // com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchDexOptFail(java.io.File file, java.util.List<java.io.File> list, java.lang.Throwable th) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patchReporter onPatchDexOptFail: dex opt fail path: %s, dex size: %d", file.getAbsolutePath(), java.lang.Integer.valueOf(list.size()));
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, th, "onPatchDexOptFail:", new java.lang.Object[0]);
        if (!th.getMessage().contains(com.tencent.tinker.loader.shareutil.ShareConstants.CHECK_DEX_OAT_EXIST_FAIL) && !th.getMessage().contains(com.tencent.tinker.loader.shareutil.ShareConstants.CHECK_DEX_OAT_FORMAT_FAIL)) {
            com.tencent.tinker.lib.tinker.Tinker.with(this.context).cleanPatchByPatchApk(file);
        } else {
            shouldRetry = true;
            deleteOptFiles(list);
        }
    }

    @Override // com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchException(java.io.File file, java.lang.Throwable th) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patchReporter onPatchException: patch exception path: %s, throwable: %s", file.getAbsolutePath(), th.getMessage());
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "tinker patch exception, welcome to submit issue to us: https://github.com/Tencent/tinker/issues", new java.lang.Object[0]);
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.printErrStackTrace(TAG, th, "tinker patch exception", new java.lang.Object[0]);
        com.tencent.tinker.lib.tinker.Tinker.with(this.context).setTinkerDisable();
        com.tencent.tinker.lib.tinker.Tinker.with(this.context).cleanPatchByPatchApk(file);
    }

    @Override // com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchInfoCorrupted(java.io.File file, java.lang.String str, java.lang.String str2) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patchReporter onPatchInfoCorrupted: patch info is corrupted. old: %s, new: %s", str, str2);
        com.tencent.tinker.lib.tinker.Tinker.with(this.context).cleanPatch();
    }

    @Override // com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchPackageCheckFail(java.io.File file, int i) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patchReporter onPatchPackageCheckFail: package check failed. path: %s, code: %d", file.getAbsolutePath(), java.lang.Integer.valueOf(i));
        if (i == -3 || i == -4 || i == -8) {
            com.tencent.tinker.lib.tinker.Tinker.with(this.context).cleanPatchByPatchApk(file);
        }
    }

    @Override // com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchResult(java.io.File file, boolean z, long j) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patchReporter onPatchResult: patch all result path: %s, success: %b, cost: %d", file.getAbsolutePath(), java.lang.Boolean.valueOf(z), java.lang.Long.valueOf(j));
        if (shouldRetry) {
            return;
        }
        com.tencent.tinker.lib.util.UpgradePatchRetry.getInstance(this.context).onPatchServiceResult();
    }

    @Override // com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchServiceStart(android.content.Intent intent) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patchReporter onPatchServiceStart: patch service start", new java.lang.Object[0]);
        shouldRetry = false;
        com.tencent.tinker.lib.util.UpgradePatchRetry.getInstance(this.context).onPatchServiceStart(intent);
    }

    @Override // com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchTypeExtractFail(java.io.File file, java.io.File file2, java.lang.String str, int i) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patchReporter onPatchTypeExtractFail: file extract fail type: %s, path: %s, extractTo: %s, filename: %s", com.tencent.tinker.loader.shareutil.ShareTinkerInternals.getTypeString(i), file.getPath(), file2.getPath(), str);
        com.tencent.tinker.lib.tinker.Tinker.with(this.context).cleanPatchByPatchApk(file);
    }

    @Override // com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchVersionCheckFail(java.io.File file, com.tencent.tinker.loader.shareutil.SharePatchInfo sharePatchInfo, java.lang.String str) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "patchReporter onPatchVersionCheckFail: patch version exist. path: %s, version: %s", file.getAbsolutePath(), str);
    }
}
