package com.google.android.exoplayer2.source.chunk;

/* loaded from: classes.dex */
public class ContainerMediaChunk extends com.google.android.exoplayer2.source.chunk.BaseMediaChunk {
    public final int chunkCount;
    public final com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor;
    public volatile boolean loadCanceled;
    public boolean loadCompleted;
    public long nextLoadPosition;
    public final long sampleOffsetUs;

    public ContainerMediaChunk(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, com.google.android.exoplayer2.Format format, int i, java.lang.Object obj, long j, long j2, long j3, long j4, long j5, int i2, long j6, com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor) {
        super(dataSource, dataSpec, format, i, obj, j, j2, j3, j4, j5);
        this.chunkCount = i2;
        this.sampleOffsetUs = j6;
        this.chunkExtractor = chunkExtractor;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void cancelLoad() {
        this.loadCanceled = true;
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunk
    public long getNextChunkIndex() {
        return this.chunkIndex + this.chunkCount;
    }

    public com.google.android.exoplayer2.source.chunk.ChunkExtractor.TrackOutputProvider getTrackOutputProvider(com.google.android.exoplayer2.source.chunk.BaseMediaChunkOutput baseMediaChunkOutput) {
        return baseMediaChunkOutput;
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public final void load() {
        if (this.nextLoadPosition == 0) {
            com.google.android.exoplayer2.source.chunk.BaseMediaChunkOutput output = getOutput();
            output.setSampleOffsetUs(this.sampleOffsetUs);
            com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor = this.chunkExtractor;
            com.google.android.exoplayer2.source.chunk.ChunkExtractor.TrackOutputProvider trackOutputProvider = getTrackOutputProvider(output);
            long j = this.clippedStartTimeUs;
            long j2 = j == com.google.android.exoplayer2.C.TIME_UNSET ? -9223372036854775807L : j - this.sampleOffsetUs;
            long j3 = this.clippedEndTimeUs;
            chunkExtractor.init(trackOutputProvider, j2, j3 == com.google.android.exoplayer2.C.TIME_UNSET ? -9223372036854775807L : j3 - this.sampleOffsetUs);
        }
        try {
            com.google.android.exoplayer2.upstream.DataSpec dataSpecSubrange = this.dataSpec.subrange(this.nextLoadPosition);
            com.google.android.exoplayer2.extractor.DefaultExtractorInput defaultExtractorInput = new com.google.android.exoplayer2.extractor.DefaultExtractorInput(this.dataSource, dataSpecSubrange.position, this.dataSource.open(dataSpecSubrange));
            do {
                try {
                    if (this.loadCanceled) {
                        break;
                    }
                } finally {
                    this.nextLoadPosition = defaultExtractorInput.getPosition() - this.dataSpec.position;
                }
            } while (this.chunkExtractor.read(defaultExtractorInput));
            com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(this.dataSource);
            this.loadCompleted = !this.loadCanceled;
        } catch (java.lang.Throwable th) {
            com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(this.dataSource);
            throw th;
        }
    }
}
