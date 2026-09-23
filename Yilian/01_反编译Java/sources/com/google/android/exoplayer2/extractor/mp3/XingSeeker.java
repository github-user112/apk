package com.google.android.exoplayer2.extractor.mp3;

/* loaded from: classes.dex */
public final class XingSeeker implements com.google.android.exoplayer2.extractor.mp3.Seeker {
    public static final java.lang.String TAG = "XingSeeker";
    public final long dataEndPosition;
    public final long dataSize;
    public final long dataStartPosition;
    public final long durationUs;
    public final long[] tableOfContents;
    public final int xingFrameSize;

    public XingSeeker(long j, int i, long j2) {
        this(j, i, j2, -1L, null);
    }

    public XingSeeker(long j, int i, long j2, long j3, long[] jArr) {
        this.dataStartPosition = j;
        this.xingFrameSize = i;
        this.durationUs = j2;
        this.tableOfContents = jArr;
        this.dataSize = j3;
        this.dataEndPosition = j3 != -1 ? j + j3 : -1L;
    }

    public static com.google.android.exoplayer2.extractor.mp3.XingSeeker create(long j, long j2, com.google.android.exoplayer2.audio.MpegAudioUtil.Header header, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int unsignedIntToInt;
        int i = header.samplesPerFrame;
        int i2 = header.sampleRate;
        int i3 = parsableByteArray.readInt();
        if ((i3 & 1) != 1 || (unsignedIntToInt = parsableByteArray.readUnsignedIntToInt()) == 0) {
            return null;
        }
        long jScaleLargeTimestamp = com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(unsignedIntToInt, i * 1000000, i2);
        if ((i3 & 6) != 6) {
            return new com.google.android.exoplayer2.extractor.mp3.XingSeeker(j2, header.frameSize, jScaleLargeTimestamp);
        }
        long unsignedInt = parsableByteArray.readUnsignedInt();
        long[] jArr = new long[100];
        for (int i4 = 0; i4 < 100; i4++) {
            jArr[i4] = parsableByteArray.readUnsignedByte();
        }
        if (j != -1) {
            long j3 = j2 + unsignedInt;
            if (j != j3) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder(67);
                sb.append("XING data size mismatch: ");
                sb.append(j);
                sb.append(", ");
                sb.append(j3);
                com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
            }
        }
        return new com.google.android.exoplayer2.extractor.mp3.XingSeeker(j2, header.frameSize, jScaleLargeTimestamp, unsignedInt, jArr);
    }

    private long getTimeUsForTableIndex(int i) {
        return (this.durationUs * i) / 100;
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
        if (!isSeekable()) {
            return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(new com.google.android.exoplayer2.extractor.SeekPoint(0L, this.dataStartPosition + this.xingFrameSize));
        }
        long jConstrainValue = com.google.android.exoplayer2.util.Util.constrainValue(j, 0L, this.durationUs);
        double d2 = jConstrainValue;
        java.lang.Double.isNaN(d2);
        double d3 = this.durationUs;
        java.lang.Double.isNaN(d3);
        double d4 = (d2 * 100.0d) / d3;
        double d5 = 0.0d;
        if (d4 > 0.0d) {
            if (d4 >= 100.0d) {
                d5 = 256.0d;
            } else {
                int i = (int) d4;
                double d6 = ((long[]) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.tableOfContents))[i];
                double d7 = i == 99 ? 256.0d : r3[i + 1];
                double d8 = i;
                java.lang.Double.isNaN(d8);
                java.lang.Double.isNaN(d6);
                java.lang.Double.isNaN(d6);
                d5 = d6 + ((d7 - d6) * (d4 - d8));
            }
        }
        double d9 = this.dataSize;
        java.lang.Double.isNaN(d9);
        return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(new com.google.android.exoplayer2.extractor.SeekPoint(jConstrainValue, this.dataStartPosition + com.google.android.exoplayer2.util.Util.constrainValue(java.lang.Math.round((d5 / 256.0d) * d9), this.xingFrameSize, this.dataSize - 1)));
    }

    @Override // com.google.android.exoplayer2.extractor.mp3.Seeker
    public long getTimeUs(long j) {
        double d2;
        long j2 = j - this.dataStartPosition;
        if (!isSeekable() || j2 <= this.xingFrameSize) {
            return 0L;
        }
        long[] jArr = (long[]) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.tableOfContents);
        double d3 = j2;
        java.lang.Double.isNaN(d3);
        double d4 = this.dataSize;
        java.lang.Double.isNaN(d4);
        double d5 = (d3 * 256.0d) / d4;
        int iBinarySearchFloor = com.google.android.exoplayer2.util.Util.binarySearchFloor(jArr, (long) d5, true, true);
        long timeUsForTableIndex = getTimeUsForTableIndex(iBinarySearchFloor);
        long j3 = jArr[iBinarySearchFloor];
        int i = iBinarySearchFloor + 1;
        long timeUsForTableIndex2 = getTimeUsForTableIndex(i);
        long j4 = iBinarySearchFloor == 99 ? 256L : jArr[i];
        if (j3 == j4) {
            d2 = 0.0d;
        } else {
            double d6 = j3;
            java.lang.Double.isNaN(d6);
            double d7 = j4 - j3;
            java.lang.Double.isNaN(d7);
            d2 = (d5 - d6) / d7;
        }
        double d8 = timeUsForTableIndex2 - timeUsForTableIndex;
        java.lang.Double.isNaN(d8);
        return java.lang.Math.round(d2 * d8) + timeUsForTableIndex;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return this.tableOfContents != null;
    }
}
