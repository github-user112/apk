package com.tencent.tinker.lib.reporter;

/* loaded from: classes.dex */
public interface PatchReporter {
    void onPatchDexOptFail(java.io.File file, java.util.List<java.io.File> list, java.lang.Throwable th);

    void onPatchException(java.io.File file, java.lang.Throwable th);

    void onPatchInfoCorrupted(java.io.File file, java.lang.String str, java.lang.String str2);

    void onPatchPackageCheckFail(java.io.File file, int i);

    void onPatchResult(java.io.File file, boolean z, long j);

    void onPatchServiceStart(android.content.Intent intent);

    void onPatchTypeExtractFail(java.io.File file, java.io.File file2, java.lang.String str, int i);

    void onPatchVersionCheckFail(java.io.File file, com.tencent.tinker.loader.shareutil.SharePatchInfo sharePatchInfo, java.lang.String str);
}
