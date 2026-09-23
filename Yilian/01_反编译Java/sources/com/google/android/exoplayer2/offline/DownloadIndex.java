package com.google.android.exoplayer2.offline;

/* loaded from: classes.dex */
public interface DownloadIndex {
    com.google.android.exoplayer2.offline.Download getDownload(java.lang.String str);

    com.google.android.exoplayer2.offline.DownloadCursor getDownloads(int... iArr);
}
