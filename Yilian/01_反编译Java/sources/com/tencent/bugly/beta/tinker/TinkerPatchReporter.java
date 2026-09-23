package com.tencent.bugly.beta.tinker;

/* loaded from: classes.dex */
public class TinkerPatchReporter extends com.tencent.tinker.lib.reporter.DefaultPatchReporter {
    public final com.tencent.tinker.lib.reporter.PatchReporter userPatchReporter;

    public TinkerPatchReporter(android.content.Context context) {
        super(context);
        this.userPatchReporter = com.tencent.bugly.beta.tinker.TinkerManager.userPatchReporter;
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultPatchReporter, com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchDexOptFail(java.io.File file, java.util.List<java.io.File> list, java.lang.Throwable th) {
        super.onPatchDexOptFail(file, list, th);
        com.tencent.tinker.lib.reporter.PatchReporter patchReporter = this.userPatchReporter;
        if (patchReporter != null) {
            patchReporter.onPatchDexOptFail(file, list, th);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onApplyDexOptFail(th);
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultPatchReporter, com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchException(java.io.File file, java.lang.Throwable th) {
        super.onPatchException(file, th);
        com.tencent.tinker.lib.reporter.PatchReporter patchReporter = this.userPatchReporter;
        if (patchReporter != null) {
            patchReporter.onPatchException(file, th);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onApplyCrash(th);
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultPatchReporter, com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchInfoCorrupted(java.io.File file, java.lang.String str, java.lang.String str2) {
        super.onPatchInfoCorrupted(file, str, str2);
        com.tencent.tinker.lib.reporter.PatchReporter patchReporter = this.userPatchReporter;
        if (patchReporter != null) {
            patchReporter.onPatchInfoCorrupted(file, str, str2);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onApplyInfoCorrupted();
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultPatchReporter, com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchPackageCheckFail(java.io.File file, int i) {
        super.onPatchPackageCheckFail(file, i);
        com.tencent.tinker.lib.reporter.PatchReporter patchReporter = this.userPatchReporter;
        if (patchReporter != null) {
            patchReporter.onPatchPackageCheckFail(file, i);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onApplyPackageCheckFail(i);
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultPatchReporter, com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchResult(java.io.File file, boolean z, long j) {
        super.onPatchResult(file, z, j);
        com.tencent.tinker.lib.reporter.PatchReporter patchReporter = this.userPatchReporter;
        if (patchReporter != null) {
            patchReporter.onPatchResult(file, z, j);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onApplied(j, z);
            com.tencent.tinker.lib.util.UpgradePatchRetry.getInstance(this.context).onPatchServiceResult();
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultPatchReporter, com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchServiceStart(android.content.Intent intent) {
        super.onPatchServiceStart(intent);
        com.tencent.tinker.lib.reporter.PatchReporter patchReporter = this.userPatchReporter;
        if (patchReporter != null) {
            patchReporter.onPatchServiceStart(intent);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onApplyPatchServiceStart();
            com.tencent.tinker.lib.util.UpgradePatchRetry.getInstance(this.context).onPatchServiceStart(intent);
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultPatchReporter, com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchTypeExtractFail(java.io.File file, java.io.File file2, java.lang.String str, int i) {
        super.onPatchTypeExtractFail(file, file2, str, i);
        com.tencent.tinker.lib.reporter.PatchReporter patchReporter = this.userPatchReporter;
        if (patchReporter != null) {
            patchReporter.onPatchTypeExtractFail(file, file2, str, i);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onApplyExtractFail(i);
        }
    }

    @Override // com.tencent.tinker.lib.reporter.DefaultPatchReporter, com.tencent.tinker.lib.reporter.PatchReporter
    public void onPatchVersionCheckFail(java.io.File file, com.tencent.tinker.loader.shareutil.SharePatchInfo sharePatchInfo, java.lang.String str) {
        super.onPatchVersionCheckFail(file, sharePatchInfo, str);
        com.tencent.tinker.lib.reporter.PatchReporter patchReporter = this.userPatchReporter;
        if (patchReporter != null) {
            patchReporter.onPatchVersionCheckFail(file, sharePatchInfo, str);
        } else {
            com.tencent.bugly.beta.tinker.TinkerReport.onApplyVersionCheckFail();
        }
    }
}
