package com.google.android.exoplayer2.source.dash.offline;

/* loaded from: classes.dex */
public final class DashDownloader extends com.google.android.exoplayer2.offline.SegmentDownloader<com.google.android.exoplayer2.source.dash.manifest.DashManifest> {
    public final com.google.android.exoplayer2.source.dash.BaseUrlExclusionList baseUrlExclusionList;

    public DashDownloader(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<com.google.android.exoplayer2.source.dash.manifest.DashManifest> parser, com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory, java.util.concurrent.Executor executor) {
        super(mediaItem, parser, factory, executor);
        this.baseUrlExclusionList = new com.google.android.exoplayer2.source.dash.BaseUrlExclusionList();
    }

    public DashDownloader(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory) {
        this(mediaItem, factory, new java.util.concurrent.Executor() { // from class: e.c.a.a.n2.f0.e.a
            @Override // java.util.concurrent.Executor
            public final void execute(java.lang.Runnable runnable) {
                runnable.run();
            }
        });
    }

    public DashDownloader(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.cache.CacheDataSource.Factory factory, java.util.concurrent.Executor executor) {
        this(mediaItem, new com.google.android.exoplayer2.source.dash.manifest.DashManifestParser(), factory, executor);
    }

    /* JADX WARN: Removed duplicated region for block: B:48:0x00bb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00b7 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void addSegmentsForAdaptationSet(com.google.android.exoplayer2.upstream.DataSource r27, com.google.android.exoplayer2.source.dash.manifest.AdaptationSet r28, long r29, long r31, boolean r33, java.util.ArrayList<com.google.android.exoplayer2.offline.SegmentDownloader.Segment> r34) throws java.io.IOException {
        /*
            r26 = this;
            r7 = r26
            r8 = r28
            r9 = r33
            r10 = r34
            r0 = 0
            r11 = 0
        La:
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.Representation> r0 = r8.representations
            int r0 = r0.size()
            if (r11 >= r0) goto Lbc
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.Representation> r0 = r8.representations
            java.lang.Object r0 = r0.get(r11)
            com.google.android.exoplayer2.source.dash.manifest.Representation r0 = (com.google.android.exoplayer2.source.dash.manifest.Representation) r0
            int r1 = r8.type     // Catch: java.io.IOException -> Lb0
            r12 = r27
            com.google.android.exoplayer2.source.dash.DashSegmentIndex r13 = r7.getSegmentIndex(r12, r1, r0, r9)     // Catch: java.io.IOException -> Lae
            if (r13 == 0) goto La2
            r14 = r31
            long r16 = r13.getSegmentCount(r14)
            r1 = -1
            int r3 = (r16 > r1 ? 1 : (r16 == r1 ? 0 : -1))
            if (r3 == 0) goto L9a
            com.google.android.exoplayer2.source.dash.BaseUrlExclusionList r1 = r7.baseUrlExclusionList
            e.c.b.b.s<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> r2 = r0.baseUrls
            com.google.android.exoplayer2.source.dash.manifest.BaseUrl r1 = r1.selectBaseUrl(r2)
            java.lang.Object r1 = com.google.android.exoplayer2.util.Util.castNonNull(r1)
            com.google.android.exoplayer2.source.dash.manifest.BaseUrl r1 = (com.google.android.exoplayer2.source.dash.manifest.BaseUrl) r1
            java.lang.String r6 = r1.url
            com.google.android.exoplayer2.source.dash.manifest.RangedUri r18 = r0.getInitializationUri()
            if (r18 == 0) goto L58
            r1 = r26
            r2 = r0
            r3 = r6
            r4 = r29
            r19 = r6
            r6 = r18
            com.google.android.exoplayer2.offline.SegmentDownloader$Segment r1 = r1.createSegment(r2, r3, r4, r6)
            r10.add(r1)
            goto L5a
        L58:
            r19 = r6
        L5a:
            com.google.android.exoplayer2.source.dash.manifest.RangedUri r6 = r0.getIndexUri()
            if (r6 == 0) goto L6e
            r1 = r26
            r2 = r0
            r3 = r19
            r4 = r29
            com.google.android.exoplayer2.offline.SegmentDownloader$Segment r1 = r1.createSegment(r2, r3, r4, r6)
            r10.add(r1)
        L6e:
            long r1 = r13.getFirstSegmentNum()
            long r16 = r1 + r16
            r20 = 1
            long r16 = r16 - r20
            r4 = r1
        L79:
            int r1 = (r4 > r16 ? 1 : (r4 == r16 ? 0 : -1))
            if (r1 > 0) goto Lb7
            long r1 = r13.getTimeUs(r4)
            long r22 = r1 + r29
            com.google.android.exoplayer2.source.dash.manifest.RangedUri r6 = r13.getSegmentUrl(r4)
            r1 = r26
            r2 = r0
            r3 = r19
            r24 = r4
            r4 = r22
            com.google.android.exoplayer2.offline.SegmentDownloader$Segment r1 = r1.createSegment(r2, r3, r4, r6)
            r10.add(r1)
            long r4 = r24 + r20
            goto L79
        L9a:
            com.google.android.exoplayer2.offline.DownloadException r0 = new com.google.android.exoplayer2.offline.DownloadException
            java.lang.String r1 = "Unbounded segment index"
            r0.<init>(r1)
            throw r0
        La2:
            r14 = r31
            com.google.android.exoplayer2.offline.DownloadException r0 = new com.google.android.exoplayer2.offline.DownloadException     // Catch: java.io.IOException -> Lac
            java.lang.String r1 = "Missing segment index"
            r0.<init>(r1)     // Catch: java.io.IOException -> Lac
            throw r0     // Catch: java.io.IOException -> Lac
        Lac:
            r0 = move-exception
            goto Lb5
        Lae:
            r0 = move-exception
            goto Lb3
        Lb0:
            r0 = move-exception
            r12 = r27
        Lb3:
            r14 = r31
        Lb5:
            if (r9 == 0) goto Lbb
        Lb7:
            int r11 = r11 + 1
            goto La
        Lbb:
            throw r0
        Lbc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.offline.DashDownloader.addSegmentsForAdaptationSet(com.google.android.exoplayer2.upstream.DataSource, com.google.android.exoplayer2.source.dash.manifest.AdaptationSet, long, long, boolean, java.util.ArrayList):void");
    }

    private com.google.android.exoplayer2.offline.SegmentDownloader.Segment createSegment(com.google.android.exoplayer2.source.dash.manifest.Representation representation, java.lang.String str, long j, com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri) {
        return new com.google.android.exoplayer2.offline.SegmentDownloader.Segment(j, com.google.android.exoplayer2.source.dash.DashUtil.buildDataSpec(representation, str, rangedUri, 0));
    }

    private com.google.android.exoplayer2.source.dash.DashSegmentIndex getSegmentIndex(final com.google.android.exoplayer2.upstream.DataSource dataSource, final int i, final com.google.android.exoplayer2.source.dash.manifest.Representation representation, boolean z) {
        com.google.android.exoplayer2.source.dash.DashSegmentIndex index = representation.getIndex();
        if (index != null) {
            return index;
        }
        com.google.android.exoplayer2.extractor.ChunkIndex chunkIndex = (com.google.android.exoplayer2.extractor.ChunkIndex) execute(new com.google.android.exoplayer2.util.RunnableFutureTask<com.google.android.exoplayer2.extractor.ChunkIndex, java.io.IOException>(this) { // from class: com.google.android.exoplayer2.source.dash.offline.DashDownloader.1
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // com.google.android.exoplayer2.util.RunnableFutureTask
            public com.google.android.exoplayer2.extractor.ChunkIndex doWork() {
                return com.google.android.exoplayer2.source.dash.DashUtil.loadChunkIndex(dataSource, i, representation);
            }
        }, z);
        if (chunkIndex == null) {
            return null;
        }
        return new com.google.android.exoplayer2.source.dash.DashWrappingSegmentIndex(chunkIndex, representation.presentationTimeOffsetUs);
    }

    @Override // com.google.android.exoplayer2.offline.SegmentDownloader
    public java.util.List<com.google.android.exoplayer2.offline.SegmentDownloader.Segment> getSegments(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest, boolean z) throws java.io.IOException {
        java.util.ArrayList<com.google.android.exoplayer2.offline.SegmentDownloader.Segment> arrayList = new java.util.ArrayList<>();
        for (int i = 0; i < dashManifest.getPeriodCount(); i++) {
            com.google.android.exoplayer2.source.dash.manifest.Period period = dashManifest.getPeriod(i);
            long jMsToUs = com.google.android.exoplayer2.util.Util.msToUs(period.startMs);
            long periodDurationUs = dashManifest.getPeriodDurationUs(i);
            int i2 = 0;
            for (java.util.List<com.google.android.exoplayer2.source.dash.manifest.AdaptationSet> list = period.adaptationSets; i2 < list.size(); list = list) {
                addSegmentsForAdaptationSet(dataSource, list.get(i2), jMsToUs, periodDurationUs, z, arrayList);
                i2++;
            }
        }
        return arrayList;
    }
}
