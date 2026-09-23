package com.google.android.exoplayer2.source.chunk;

/* loaded from: classes.dex */
public final class InitializationChunk extends com.google.android.exoplayer2.source.chunk.Chunk {
    public final com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor;
    public volatile boolean loadCanceled;
    public long nextLoadPosition;
    public com.google.android.exoplayer2.source.chunk.ChunkExtractor.TrackOutputProvider trackOutputProvider;

    public InitializationChunk(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, com.google.android.exoplayer2.Format format, int i, java.lang.Object obj, com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor) {
        super(dataSource, dataSpec, 2, format, i, obj, com.google.android.exoplayer2.C.TIME_UNSET, com.google.android.exoplayer2.C.TIME_UNSET);
        this.chunkExtractor = chunkExtractor;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void cancelLoad() {
        this.loadCanceled = true;
    }

    public void init(com.google.android.exoplayer2.source.chunk.ChunkExtractor.TrackOutputProvider trackOutputProvider) {
        this.trackOutputProvider = trackOutputProvider;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void load() {
        if (this.nextLoadPosition == 0) {
            this.chunkExtractor.init(this.trackOutputProvider, com.google.android.exoplayer2.C.TIME_UNSET, com.google.android.exoplayer2.C.TIME_UNSET);
        }
        try {
            com.google.android.exoplayer2.upstream.DataSpec dataSpecSubrange = this.dataSpec.subrange(this.nextLoadPosition);
            com.google.android.exoplayer2.extractor.DefaultExtractorInput defaultExtractorInput = new com.google.android.exoplayer2.extractor.DefaultExtractorInput(this.dataSource, dataSpecSubrange.position, this.dataSource.open(dataSpecSubrange));
            while (!this.loadCanceled && this.chunkExtractor.read(defaultExtractorInput)) {
                try {
                } finally {
                    this.nextLoadPosition = defaultExtractorInput.getPosition() - this.dataSpec.position;
                }
            }
        } finally {
            com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(this.dataSource);
        }
    }
}
