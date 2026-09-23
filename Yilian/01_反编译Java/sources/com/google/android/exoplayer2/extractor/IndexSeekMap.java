package com.google.android.exoplayer2.extractor;

/* loaded from: classes.dex */
public final class IndexSeekMap implements com.google.android.exoplayer2.extractor.SeekMap {
    public final long durationUs;
    public final boolean isSeekable;
    public final long[] positions;
    public final long[] timesUs;

    public IndexSeekMap(long[] jArr, long[] jArr2, long j) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(jArr.length == jArr2.length);
        int length = jArr2.length;
        boolean z = length > 0;
        this.isSeekable = z;
        if (!z || jArr2[0] <= 0) {
            this.positions = jArr;
            this.timesUs = jArr2;
        } else {
            int i = length + 1;
            long[] jArr3 = new long[i];
            this.positions = jArr3;
            this.timesUs = new long[i];
            java.lang.System.arraycopy(jArr, 0, jArr3, 1, length);
            java.lang.System.arraycopy(jArr2, 0, this.timesUs, 1, length);
        }
        this.durationUs = j;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j) {
        if (!this.isSeekable) {
            return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(com.google.android.exoplayer2.extractor.SeekPoint.START);
        }
        int iBinarySearchFloor = com.google.android.exoplayer2.util.Util.binarySearchFloor(this.timesUs, j, true, true);
        com.google.android.exoplayer2.extractor.SeekPoint seekPoint = new com.google.android.exoplayer2.extractor.SeekPoint(this.timesUs[iBinarySearchFloor], this.positions[iBinarySearchFloor]);
        if (seekPoint.timeUs == j || iBinarySearchFloor == this.timesUs.length - 1) {
            return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint);
        }
        int i = iBinarySearchFloor + 1;
        return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint, new com.google.android.exoplayer2.extractor.SeekPoint(this.timesUs[i], this.positions[i]));
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return this.isSeekable;
    }
}
