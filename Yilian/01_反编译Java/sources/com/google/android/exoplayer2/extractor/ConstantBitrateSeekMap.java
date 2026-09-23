package com.google.android.exoplayer2.extractor;

/* loaded from: classes.dex */
public class ConstantBitrateSeekMap implements com.google.android.exoplayer2.extractor.SeekMap {
    public final boolean allowSeeksIfLengthUnknown;
    public final int bitrate;
    public final long dataSize;
    public final long durationUs;
    public final long firstFrameBytePosition;
    public final int frameSize;
    public final long inputLength;

    public ConstantBitrateSeekMap(long j, long j2, int i, int i2) {
        this(j, j2, i, i2, false);
    }

    public ConstantBitrateSeekMap(long j, long j2, int i, int i2, boolean z) {
        long timeUsAtPosition;
        this.inputLength = j;
        this.firstFrameBytePosition = j2;
        this.frameSize = i2 == -1 ? 1 : i2;
        this.bitrate = i;
        this.allowSeeksIfLengthUnknown = z;
        if (j == -1) {
            this.dataSize = -1L;
            timeUsAtPosition = com.google.android.exoplayer2.C.TIME_UNSET;
        } else {
            this.dataSize = j - j2;
            timeUsAtPosition = getTimeUsAtPosition(j, j2, i);
        }
        this.durationUs = timeUsAtPosition;
    }

    private long getFramePositionForTimeUs(long j) {
        int i = this.frameSize;
        long jMin = (((j * this.bitrate) / 8000000) / i) * i;
        long j2 = this.dataSize;
        if (j2 != -1) {
            jMin = java.lang.Math.min(jMin, j2 - i);
        }
        return this.firstFrameBytePosition + java.lang.Math.max(jMin, 0L);
    }

    public static long getTimeUsAtPosition(long j, long j2, int i) {
        return ((java.lang.Math.max(0L, j - j2) * 8) * 1000000) / i;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j) {
        if (this.dataSize == -1 && !this.allowSeeksIfLengthUnknown) {
            return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(new com.google.android.exoplayer2.extractor.SeekPoint(0L, this.firstFrameBytePosition));
        }
        long framePositionForTimeUs = getFramePositionForTimeUs(j);
        long timeUsAtPosition = getTimeUsAtPosition(framePositionForTimeUs);
        com.google.android.exoplayer2.extractor.SeekPoint seekPoint = new com.google.android.exoplayer2.extractor.SeekPoint(timeUsAtPosition, framePositionForTimeUs);
        if (this.dataSize != -1 && timeUsAtPosition < j) {
            int i = this.frameSize;
            if (i + framePositionForTimeUs < this.inputLength) {
                long j2 = framePositionForTimeUs + i;
                return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint, new com.google.android.exoplayer2.extractor.SeekPoint(getTimeUsAtPosition(j2), j2));
            }
        }
        return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint);
    }

    public long getTimeUsAtPosition(long j) {
        return getTimeUsAtPosition(j, this.firstFrameBytePosition, this.bitrate);
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return this.dataSize != -1 || this.allowSeeksIfLengthUnknown;
    }
}
