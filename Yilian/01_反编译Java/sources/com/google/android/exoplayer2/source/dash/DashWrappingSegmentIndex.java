package com.google.android.exoplayer2.source.dash;

/* loaded from: classes.dex */
public final class DashWrappingSegmentIndex implements com.google.android.exoplayer2.source.dash.DashSegmentIndex {
    public final com.google.android.exoplayer2.extractor.ChunkIndex chunkIndex;
    public final long timeOffsetUs;

    public DashWrappingSegmentIndex(com.google.android.exoplayer2.extractor.ChunkIndex chunkIndex, long j) {
        this.chunkIndex = chunkIndex;
        this.timeOffsetUs = j;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getAvailableSegmentCount(long j, long j2) {
        return this.chunkIndex.length;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getDurationUs(long j, long j2) {
        return this.chunkIndex.durationsUs[(int) j];
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getFirstAvailableSegmentNum(long j, long j2) {
        return 0L;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getFirstSegmentNum() {
        return 0L;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getNextSegmentAvailableTimeUs(long j, long j2) {
        return com.google.android.exoplayer2.C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getSegmentCount(long j) {
        return this.chunkIndex.length;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getSegmentNum(long j, long j2) {
        return this.chunkIndex.getChunkIndex(j + this.timeOffsetUs);
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public com.google.android.exoplayer2.source.dash.manifest.RangedUri getSegmentUrl(long j) {
        return new com.google.android.exoplayer2.source.dash.manifest.RangedUri(null, this.chunkIndex.offsets[(int) j], r0.sizes[r9]);
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public long getTimeUs(long j) {
        return this.chunkIndex.timesUs[(int) j] - this.timeOffsetUs;
    }

    @Override // com.google.android.exoplayer2.source.dash.DashSegmentIndex
    public boolean isExplicit() {
        return true;
    }
}
