package com.tencent.bugly.beta.download;

/* loaded from: classes.dex */
public interface DownloadListener {
    void onCompleted(com.tencent.bugly.beta.download.DownloadTask downloadTask);

    void onFailed(com.tencent.bugly.beta.download.DownloadTask downloadTask, int i, java.lang.String str);

    void onReceive(com.tencent.bugly.beta.download.DownloadTask downloadTask);
}
