package com.google.android.exoplayer2.offline;

/* loaded from: classes.dex */
public interface Downloader {

    public interface ProgressListener {
        void onProgress(long j, long j2, float f2);
    }

    void cancel();

    void download(com.google.android.exoplayer2.offline.Downloader.ProgressListener progressListener);

    void remove();
}
