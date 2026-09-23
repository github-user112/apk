package com.tencent.tinker.lib.reporter;

/* loaded from: classes.dex */
public interface LoadReporter {
    void onLoadException(java.lang.Throwable th, int i);

    void onLoadFileMd5Mismatch(java.io.File file, int i);

    void onLoadFileNotFound(java.io.File file, int i, boolean z);

    void onLoadInterpret(int i, java.lang.Throwable th);

    void onLoadPackageCheckFail(java.io.File file, int i);

    void onLoadPatchInfoCorrupted(java.lang.String str, java.lang.String str2, java.io.File file);

    void onLoadPatchListenerReceiveFail(java.io.File file, int i);

    void onLoadPatchVersionChanged(java.lang.String str, java.lang.String str2, java.io.File file, java.lang.String str3);

    void onLoadResult(java.io.File file, int i, long j);
}
