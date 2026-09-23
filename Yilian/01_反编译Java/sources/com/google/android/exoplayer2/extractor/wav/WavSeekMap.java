package com.google.android.exoplayer2.extractor.wav;

/* loaded from: classes.dex */
public final class WavSeekMap implements com.google.android.exoplayer2.extractor.SeekMap {
    public final long blockCount;
    public final long durationUs;
    public final long firstBlockPosition;
    public final int framesPerBlock;
    public final com.google.android.exoplayer2.extractor.wav.WavFormat wavFormat;

    public WavSeekMap(com.google.android.exoplayer2.extractor.wav.WavFormat wavFormat, int i, long j, long j2) {
        this.wavFormat = wavFormat;
        this.framesPerBlock = i;
        this.firstBlockPosition = j;
        long j3 = (j2 - j) / wavFormat.blockSize;
        this.blockCount = j3;
        this.durationUs = blockIndexToTimeUs(j3);
    }

    private long blockIndexToTimeUs(long j) {
        return com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(j * this.framesPerBlock, 1000000L, this.wavFormat.frameRateHz);
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.durationUs;
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j) {
        long jConstrainValue = com.google.android.exoplayer2.util.Util.constrainValue((this.wavFormat.frameRateHz * j) / (this.framesPerBlock * 1000000), 0L, this.blockCount - 1);
        long j2 = (this.wavFormat.blockSize * jConstrainValue) + this.firstBlockPosition;
        long jBlockIndexToTimeUs = blockIndexToTimeUs(jConstrainValue);
        com.google.android.exoplayer2.extractor.SeekPoint seekPoint = new com.google.android.exoplayer2.extractor.SeekPoint(jBlockIndexToTimeUs, j2);
        if (jBlockIndexToTimeUs >= j || jConstrainValue == this.blockCount - 1) {
            return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint);
        }
        long j3 = jConstrainValue + 1;
        return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint, new com.google.android.exoplayer2.extractor.SeekPoint(blockIndexToTimeUs(j3), (this.wavFormat.blockSize * j3) + this.firstBlockPosition));
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
