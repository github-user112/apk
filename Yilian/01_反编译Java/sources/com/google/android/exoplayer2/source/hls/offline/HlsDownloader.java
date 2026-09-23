package com.google.android.exoplayer2.source.hls.offline;

/* loaded from: classes.dex */
public final class HlsDownloader extends com.google.android.exoplayer2.offline.SegmentDownloader<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist> {
    public HlsDownloader(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist> parser, com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory, java.util.concurrent.Executor executor) {
        super(mediaItem, parser, factory, executor);
    }

    public HlsDownloader(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory) {
        this(mediaItem, factory, new java.util.concurrent.Executor() { // from class: e.c.a.a.n2.g0.f.a
            @Override // java.util.concurrent.Executor
            public final void execute(java.lang.Runnable runnable) {
                runnable.run();
            }
        });
    }

    public HlsDownloader(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory, java.util.concurrent.Executor executor) {
        this(mediaItem, new com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser(), factory, executor);
    }

    private void addMediaPlaylistDataSpecs(java.util.List<android.net.Uri> list, java.util.List<com.google.android.exoplayer2.upstream.DataSpec> list2) {
        for (int i = 0; i < list.size(); i++) {
            list2.add(com.google.android.exoplayer2.offline.SegmentDownloader.getCompressibleDataSpec(list.get(i)));
        }
    }

    private void addSegment(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment segment, java.util.HashSet<android.net.Uri> hashSet, java.util.ArrayList<com.google.android.exoplayer2.offline.SegmentDownloader.Segment> arrayList) {
        java.lang.String str = hlsMediaPlaylist.baseUri;
        long j = hlsMediaPlaylist.startTimeUs + segment.relativeStartTimeUs;
        java.lang.String str2 = segment.fullSegmentEncryptionKeyUri;
        if (str2 != null) {
            android.net.Uri uriResolveToUri = com.google.android.exoplayer2.util.UriUtil.resolveToUri(str, str2);
            if (hashSet.add(uriResolveToUri)) {
                arrayList.add(new com.google.android.exoplayer2.offline.SegmentDownloader.Segment(j, com.google.android.exoplayer2.offline.SegmentDownloader.getCompressibleDataSpec(uriResolveToUri)));
            }
        }
        arrayList.add(new com.google.android.exoplayer2.offline.SegmentDownloader.Segment(j, new com.google.android.exoplayer2.upstream.DataSpec(com.google.android.exoplayer2.util.UriUtil.resolveToUri(str, segment.url), segment.byteRangeOffset, segment.byteRangeLength)));
    }

    @Override // com.google.android.exoplayer2.offline.SegmentDownloader
    public java.util.List<com.google.android.exoplayer2.offline.SegmentDownloader.Segment> getSegments(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.source.hls.playlist.HlsPlaylist hlsPlaylist, boolean z) throws java.io.IOException {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (hlsPlaylist instanceof com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist) {
            addMediaPlaylistDataSpecs(((com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist) hlsPlaylist).mediaPlaylistUrls, arrayList);
        } else {
            arrayList.add(com.google.android.exoplayer2.offline.SegmentDownloader.getCompressibleDataSpec(android.net.Uri.parse(hlsPlaylist.baseUri)));
        }
        java.util.ArrayList<com.google.android.exoplayer2.offline.SegmentDownloader.Segment> arrayList2 = new java.util.ArrayList<>();
        java.util.HashSet<android.net.Uri> hashSet = new java.util.HashSet<>();
        java.util.Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            com.google.android.exoplayer2.upstream.DataSpec dataSpec = (com.google.android.exoplayer2.upstream.DataSpec) it.next();
            arrayList2.add(new com.google.android.exoplayer2.offline.SegmentDownloader.Segment(0L, dataSpec));
            try {
                com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist = (com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist) getManifest(dataSource, dataSpec, z);
                com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment segment = null;
                java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment> list = hlsMediaPlaylist.segments;
                for (int i = 0; i < list.size(); i++) {
                    com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment segment2 = list.get(i);
                    com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment segment3 = segment2.initializationSegment;
                    if (segment3 != null && segment3 != segment) {
                        addSegment(hlsMediaPlaylist, segment3, hashSet, arrayList2);
                        segment = segment3;
                    }
                    addSegment(hlsMediaPlaylist, segment2, hashSet, arrayList2);
                }
            } catch (java.io.IOException e2) {
                if (!z) {
                    throw e2;
                }
            }
        }
        return arrayList2;
    }
}
