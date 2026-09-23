package com.google.android.exoplayer2.extractor.mp3;

/* loaded from: classes.dex */
public final class IndexSeeker implements com.google.android.exoplayer2.extractor.mp3.Seeker {
    public static final long MIN_TIME_BETWEEN_POINTS_US = 100000;
    public final long dataEndPosition;
    public long durationUs;
    public final com.google.android.exoplayer2.util.LongArray timesUs = new com.google.android.exoplayer2.util.LongArray();
    public final com.google.android.exoplayer2.util.LongArray positions = new com.google.android.exoplayer2.util.LongArray();

    public IndexSeeker(long j, long j2, long j3) {
        this.durationUs = j;
        this.dataEndPosition = j3;
        this.timesUs.add(0L);
        this.positions.add(j2);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return this.dataEndPosition;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j) {
        int iBinarySearchFloor = com.google.android.exoplayer2.util.Util.binarySearchFloor(this.timesUs, j, true, true);
        com.google.android.exoplayer2.extractor.SeekPoint seekPoint = new com.google.android.exoplayer2.extractor.SeekPoint(this.timesUs.get(iBinarySearchFloor), this.positions.get(iBinarySearchFloor));
        if (seekPoint.timeUs == j || iBinarySearchFloor == this.timesUs.size() - 1) {
            return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint);
        }
        int i = iBinarySearchFloor + 1;
        return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint, new com.google.android.exoplayer2.extractor.SeekPoint(this.timesUs.get(i), this.positions.get(i)));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        return this.timesUs.get(com.google.android.exoplayer2.util.Util.binarySearchFloor(this.positions, j, true, true));
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }

    public boolean isTimeUsInIndex(long j) {
        com.google.android.exoplayer2.util.LongArray longArray = this.timesUs;
        return j - longArray.get(longArray.size() - 1) < 100000;
    }

    public void maybeAddSeekPoint(long j, long j2) {
        if (isTimeUsInIndex(j)) {
            return;
        }
        this.timesUs.add(j);
        this.positions.add(j2);
    }

    public void setDurationUs(long j) {
        this.durationUs = j;
    }
}
