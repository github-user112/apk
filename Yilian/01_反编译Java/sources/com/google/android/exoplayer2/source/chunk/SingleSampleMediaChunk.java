package com.google.android.exoplayer2.source.chunk;

/* loaded from: classes.dex */
public final class SingleSampleMediaChunk extends com.google.android.exoplayer2.source.chunk.BaseMediaChunk {
    public boolean loadCompleted;
    public long nextLoadPosition;
    public final com.google.android.exoplayer2.Format sampleFormat;
    public final int trackType;

    public SingleSampleMediaChunk(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, com.google.android.exoplayer2.Format format, int i, java.lang.Object obj, long j, long j2, long j3, int i2, com.google.android.exoplayer2.Format format2) {
        super(dataSource, dataSpec, format, i, obj, j, j2, com.google.android.exoplayer2.C.TIME_UNSET, com.google.android.exoplayer2.C.TIME_UNSET, j3);
        this.trackType = i2;
        this.sampleFormat = format2;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void cancelLoad() {
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void load() {
        com.google.android.exoplayer2.source.chunk.BaseMediaChunkOutput output = getOutput();
        output.setSampleOffsetUs(0L);
        com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = output.track(0, this.trackType);
        trackOutputTrack.format(this.sampleFormat);
        try {
            long jOpen = this.dataSource.open(this.dataSpec.subrange(this.nextLoadPosition));
            if (jOpen != -1) {
                jOpen += this.nextLoadPosition;
            }
            com.google.android.exoplayer2.extractor.DefaultExtractorInput defaultExtractorInput = new com.google.android.exoplayer2.extractor.DefaultExtractorInput(this.dataSource, this.nextLoadPosition, jOpen);
            for (int iSampleData = 0; iSampleData != -1; iSampleData = trackOutputTrack.sampleData((com.google.android.exoplayer2.upstream.DataReader) defaultExtractorInput, Integer.MAX_VALUE, true)) {
                this.nextLoadPosition += iSampleData;
            }
            trackOutputTrack.sampleMetadata(this.startTimeUs, 1, (int) this.nextLoadPosition, 0, null);
            com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(this.dataSource);
            this.loadCompleted = true;
        } catch (java.lang.Throwable th) {
            com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(this.dataSource);
            throw th;
        }
    }
}
