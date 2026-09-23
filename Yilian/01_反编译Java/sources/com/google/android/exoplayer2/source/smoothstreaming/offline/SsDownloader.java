package com.google.android.exoplayer2.source.smoothstreaming.offline;

/* loaded from: classes.dex */
public final class SsDownloader extends com.google.android.exoplayer2.offline.SegmentDownloader<com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest> {
    public SsDownloader(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest> parser, com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory, java.util.concurrent.Executor executor) {
        super(mediaItem, parser, factory, executor);
    }

    public SsDownloader(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory) {
        this(mediaItem, factory, new java.util.concurrent.Executor() { // from class: e.c.a.a.n2.h0.c.a
            @Override // java.util.concurrent.Executor
            public final void execute(java.lang.Runnable runnable) {
                runnable.run();
            }
        });
    }

    public SsDownloader(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory, java.util.concurrent.Executor executor) {
        this(mediaItem.buildUpon().setUri(com.google.android.exoplayer2.util.Util.fixSmoothStreamingIsmManifestUri(((com.google.android.exoplayer2.MediaItem.LocalConfiguration) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration)).uri)).build(), new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser(), factory, executor);
    }

    @Override // com.google.android.exoplayer2.offline.SegmentDownloader
    public java.util.List<com.google.android.exoplayer2.offline.SegmentDownloader.Segment> getSegments(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifest, boolean z) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement streamElement : ssManifest.streamElements) {
            for (int i = 0; i < streamElement.formats.length; i++) {
                for (int i2 = 0; i2 < streamElement.chunkCount; i2++) {
                    arrayList.add(new com.google.android.exoplayer2.offline.SegmentDownloader.Segment(streamElement.getStartTimeUs(i2), new com.google.android.exoplayer2.upstream.DataSpec(streamElement.buildRequestUri(i, i2))));
                }
            }
        }
        return arrayList;
    }
}
