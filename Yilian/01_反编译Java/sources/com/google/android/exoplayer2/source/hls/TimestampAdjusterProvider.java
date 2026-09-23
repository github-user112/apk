package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public final class TimestampAdjusterProvider {
    public final android.util.SparseArray<com.google.android.exoplayer2.util.TimestampAdjuster> timestampAdjusters = new android.util.SparseArray<>();

    public com.google.android.exoplayer2.util.TimestampAdjuster getAdjuster(int i) {
        com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster = this.timestampAdjusters.get(i);
        if (timestampAdjuster != null) {
            return timestampAdjuster;
        }
        com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster2 = new com.google.android.exoplayer2.util.TimestampAdjuster(com.google.android.exoplayer2.util.TimestampAdjuster.MODE_SHARED);
        this.timestampAdjusters.put(i, timestampAdjuster2);
        return timestampAdjuster2;
    }

    public void reset() {
        this.timestampAdjusters.clear();
    }
}
