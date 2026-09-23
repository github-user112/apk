package com.google.android.exoplayer2.offline;

/* loaded from: classes.dex */
public interface WritableDownloadIndex extends com.google.android.exoplayer2.offline.DownloadIndex {
    void putDownload(com.google.android.exoplayer2.offline.Download download);

    void removeDownload(java.lang.String str);

    void setDownloadingStatesToQueued();

    void setStatesToRemoving();

    void setStopReason(int i);

    void setStopReason(java.lang.String str, int i);
}
