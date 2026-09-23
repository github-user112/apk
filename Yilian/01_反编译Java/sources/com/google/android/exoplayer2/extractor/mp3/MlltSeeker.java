package com.google.android.exoplayer2.extractor.mp3;

/* loaded from: classes.dex */
public final class MlltSeeker implements com.google.android.exoplayer2.extractor.mp3.Seeker {
    public final long durationUs;
    public final long[] referencePositions;
    public final long[] referenceTimesMs;

    public MlltSeeker(long[] jArr, long[] jArr2, long j) {
        this.referencePositions = jArr;
        this.referenceTimesMs = jArr2;
        this.durationUs = j == com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.util.Util.msToUs(jArr2[jArr2.length - 1]) : j;
    }

    public static com.google.android.exoplayer2.extractor.mp3.MlltSeeker create(long j, com.google.android.exoplayer2.metadata.id3.MlltFrame mlltFrame, long j2) {
        int length = mlltFrame.bytesDeviations.length;
        int i = length + 1;
        long[] jArr = new long[i];
        long[] jArr2 = new long[i];
        jArr[0] = j;
        long j3 = 0;
        jArr2[0] = 0;
        for (int i2 = 1; i2 <= length; i2++) {
            int i3 = i2 - 1;
            j += mlltFrame.bytesBetweenReference + mlltFrame.bytesDeviations[i3];
            j3 += mlltFrame.millisecondsBetweenReference + mlltFrame.millisecondsDeviations[i3];
            jArr[i2] = j;
            jArr2[i2] = j3;
        }
        return new com.google.android.exoplayer2.extractor.mp3.MlltSeeker(jArr, jArr2, j2);
    }

    public static android.util.Pair<java.lang.Long, java.lang.Long> linearlyInterpolate(long j, long[] jArr, long[] jArr2) {
        double d2;
        java.lang.Long lValueOf;
        java.lang.Long lValueOf2;
        int iBinarySearchFloor = com.google.android.exoplayer2.util.Util.binarySearchFloor(jArr, j, true, true);
        long j2 = jArr[iBinarySearchFloor];
        long j3 = jArr2[iBinarySearchFloor];
        int i = iBinarySearchFloor + 1;
        if (i == jArr.length) {
            lValueOf = java.lang.Long.valueOf(j2);
            lValueOf2 = java.lang.Long.valueOf(j3);
        } else {
            long j4 = jArr[i];
            long j5 = jArr2[i];
            if (j4 == j2) {
                d2 = 0.0d;
            } else {
                double d3 = j;
                double d4 = j2;
                java.lang.Double.isNaN(d3);
                java.lang.Double.isNaN(d4);
                double d5 = j4 - j2;
                java.lang.Double.isNaN(d5);
                d2 = (d3 - d4) / d5;
            }
            double d6 = j5 - j3;
            java.lang.Double.isNaN(d6);
            lValueOf = java.lang.Long.valueOf(j);
            lValueOf2 = java.lang.Long.valueOf(((long) (d2 * d6)) + j3);
        }
        return android.util.Pair.create(lValueOf, lValueOf2);
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getDataEndPosition() {
        return -1L;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j) {
        android.util.Pair<java.lang.Long, java.lang.Long> pairLinearlyInterpolate = linearlyInterpolate(com.google.android.exoplayer2.util.Util.usToMs(com.google.android.exoplayer2.util.Util.constrainValue(j, 0L, this.durationUs)), this.referenceTimesMs, this.referencePositions);
        return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(new com.google.android.exoplayer2.extractor.SeekPoint(com.google.android.exoplayer2.util.Util.msToUs(((java.lang.Long) pairLinearlyInterpolate.first).longValue()), ((java.lang.Long) pairLinearlyInterpolate.second).longValue()));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        return com.google.android.exoplayer2.util.Util.msToUs(((java.lang.Long) linearlyInterpolate(j, this.referencePositions, this.referenceTimesMs).second).longValue());
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
