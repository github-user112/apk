package com.tencent.bugly.beta.interfaces;

/* loaded from: classes.dex */
public interface BetaPatchListener {
    void onApplyFailure(java.lang.String str);

    void onApplySuccess(java.lang.String str);

    void onDownloadFailure(java.lang.String str);

    void onDownloadReceived(long j, long j2);

    void onDownloadSuccess(java.lang.String str);

    void onPatchReceived(java.lang.String str);

    void onPatchRollback();
}
