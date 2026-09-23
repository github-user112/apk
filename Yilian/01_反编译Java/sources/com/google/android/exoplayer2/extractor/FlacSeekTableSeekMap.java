package com.google.android.exoplayer2.extractor;

/* loaded from: classes.dex */
public final class FlacSeekTableSeekMap implements com.google.android.exoplayer2.extractor.SeekMap {
    public final long firstFrameOffset;
    public final com.google.android.exoplayer2.extractor.FlacStreamMetadata flacStreamMetadata;

    public FlacSeekTableSeekMap(com.google.android.exoplayer2.extractor.FlacStreamMetadata flacStreamMetadata, long j) {
        this.flacStreamMetadata = flacStreamMetadata;
        this.firstFrameOffset = j;
    }

    private com.google.android.exoplayer2.extractor.SeekPoint getSeekPoint(long j, long j2) {
        return new com.google.android.exoplayer2.extractor.SeekPoint((j * 1000000) / this.flacStreamMetadata.sampleRate, this.firstFrameOffset + j2);
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public long getDurationUs() {
        return this.flacStreamMetadata.getDurationUs();
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public com.google.android.exoplayer2.extractor.SeekMap.SeekPoints getSeekPoints(long j) {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.flacStreamMetadata.seekTable);
        com.google.android.exoplayer2.extractor.FlacStreamMetadata flacStreamMetadata = this.flacStreamMetadata;
        com.google.android.exoplayer2.extractor.FlacStreamMetadata.SeekTable seekTable = flacStreamMetadata.seekTable;
        long[] jArr = seekTable.pointSampleNumbers;
        long[] jArr2 = seekTable.pointOffsets;
        int iBinarySearchFloor = com.google.android.exoplayer2.util.Util.binarySearchFloor(jArr, flacStreamMetadata.getSampleNumber(j), true, false);
        com.google.android.exoplayer2.extractor.SeekPoint seekPoint = getSeekPoint(iBinarySearchFloor == -1 ? 0L : jArr[iBinarySearchFloor], iBinarySearchFloor != -1 ? jArr2[iBinarySearchFloor] : 0L);
        if (seekPoint.timeUs == j || iBinarySearchFloor == jArr.length - 1) {
            return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint);
        }
        int i = iBinarySearchFloor + 1;
        return new com.google.android.exoplayer2.extractor.SeekMap.SeekPoints(seekPoint, getSeekPoint(jArr[i], jArr2[i]));
    }

    @Override // com.google.android.exoplayer2.extractor.SeekMap
    public boolean isSeekable() {
        return true;
    }
}
