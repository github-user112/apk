package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public final class HlsMediaSource extends com.google.android.exoplayer2.source.BaseMediaSource implements com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PrimaryPlaylistListener {
    public static final int METADATA_TYPE_EMSG = 3;
    public static final int METADATA_TYPE_ID3 = 1;
    public final boolean allowChunklessPreparation;
    public final com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    public final com.google.android.exoplayer2.source.hls.HlsDataSourceFactory dataSourceFactory;
    public final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager;
    public final long elapsedRealTimeOffsetMs;
    public final com.google.android.exoplayer2.source.hls.HlsExtractorFactory extractorFactory;
    public com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration;
    public final com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public final com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration;
    public final com.google.android.exoplayer2.MediaItem mediaItem;
    public com.google.android.exoplayer2.upstream.TransferListener mediaTransferListener;
    public final int metadataType;
    public final com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker playlistTracker;
    public final boolean useSessionKeys;

    public static final class Factory implements com.google.android.exoplayer2.source.MediaSourceFactory {
        public boolean allowChunklessPreparation;
        public com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
        public com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider;
        public long elapsedRealTimeOffsetMs;
        public com.google.android.exoplayer2.source.hls.HlsExtractorFactory extractorFactory;
        public final com.google.android.exoplayer2.source.hls.HlsDataSourceFactory hlsDataSourceFactory;
        public com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        public int metadataType;
        public com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory playlistParserFactory;
        public com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.Factory playlistTrackerFactory;
        public java.util.List<com.google.android.exoplayer2.offline.StreamKey> streamKeys;
        public java.lang.Object tag;
        public boolean useSessionKeys;
        public boolean usingCustomDrmSessionManagerProvider;

        public Factory(com.google.android.exoplayer2.source.hls.HlsDataSourceFactory hlsDataSourceFactory) {
            this.hlsDataSourceFactory = (com.google.android.exoplayer2.source.hls.HlsDataSourceFactory) com.google.android.exoplayer2.util.Assertions.checkNotNull(hlsDataSourceFactory);
            this.drmSessionManagerProvider = new com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider();
            this.playlistParserFactory = new com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistParserFactory();
            this.playlistTrackerFactory = com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.FACTORY;
            this.extractorFactory = com.google.android.exoplayer2.source.hls.HlsExtractorFactory.DEFAULT;
            this.loadErrorHandlingPolicy = new com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy();
            this.compositeSequenceableLoaderFactory = new com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory();
            this.metadataType = 1;
            this.streamKeys = java.util.Collections.emptyList();
            this.elapsedRealTimeOffsetMs = com.google.android.exoplayer2.C.TIME_UNSET;
        }

        public Factory(com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
            this(new com.google.android.exoplayer2.source.hls.DefaultHlsDataSourceFactory(factory));
        }

        public static /* synthetic */ com.google.android.exoplayer2.drm.DrmSessionManager a(com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.MediaItem mediaItem) {
            return drmSessionManager;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.hls.HlsMediaSource createMediaSource(android.net.Uri uri) {
            return createMediaSource(new com.google.android.exoplayer2.MediaItem.Builder().setUri(uri).setMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_M3U8).build());
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.hls.HlsMediaSource createMediaSource(com.google.android.exoplayer2.MediaItem mediaItem) {
            com.google.android.exoplayer2.MediaItem.Builder builderBuildUpon;
            com.google.android.exoplayer2.MediaItem.Builder tag;
            com.google.android.exoplayer2.MediaItem mediaItemBuild = mediaItem;
            com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItemBuild.localConfiguration);
            com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory filteringHlsPlaylistParserFactory = this.playlistParserFactory;
            java.util.List<com.google.android.exoplayer2.offline.StreamKey> list = mediaItemBuild.localConfiguration.streamKeys.isEmpty() ? this.streamKeys : mediaItemBuild.localConfiguration.streamKeys;
            if (!list.isEmpty()) {
                filteringHlsPlaylistParserFactory = new com.google.android.exoplayer2.source.hls.playlist.FilteringHlsPlaylistParserFactory(filteringHlsPlaylistParserFactory, list);
            }
            boolean z = mediaItemBuild.localConfiguration.tag == null && this.tag != null;
            boolean z2 = mediaItemBuild.localConfiguration.streamKeys.isEmpty() && !list.isEmpty();
            if (!z || !z2) {
                if (z) {
                    tag = mediaItem.buildUpon().setTag(this.tag);
                    mediaItemBuild = tag.build();
                    com.google.android.exoplayer2.MediaItem mediaItem2 = mediaItemBuild;
                    com.google.android.exoplayer2.source.hls.HlsDataSourceFactory hlsDataSourceFactory = this.hlsDataSourceFactory;
                    com.google.android.exoplayer2.source.hls.HlsExtractorFactory hlsExtractorFactory = this.extractorFactory;
                    com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory = this.compositeSequenceableLoaderFactory;
                    com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager = this.drmSessionManagerProvider.get(mediaItem2);
                    com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.loadErrorHandlingPolicy;
                    return new com.google.android.exoplayer2.source.hls.HlsMediaSource(mediaItem2, hlsDataSourceFactory, hlsExtractorFactory, compositeSequenceableLoaderFactory, drmSessionManager, loadErrorHandlingPolicy, this.playlistTrackerFactory.createTracker(this.hlsDataSourceFactory, loadErrorHandlingPolicy, filteringHlsPlaylistParserFactory), this.elapsedRealTimeOffsetMs, this.allowChunklessPreparation, this.metadataType, this.useSessionKeys);
                }
                if (z2) {
                    builderBuildUpon = mediaItem.buildUpon();
                }
                com.google.android.exoplayer2.MediaItem mediaItem22 = mediaItemBuild;
                com.google.android.exoplayer2.source.hls.HlsDataSourceFactory hlsDataSourceFactory2 = this.hlsDataSourceFactory;
                com.google.android.exoplayer2.source.hls.HlsExtractorFactory hlsExtractorFactory2 = this.extractorFactory;
                com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory2 = this.compositeSequenceableLoaderFactory;
                com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager2 = this.drmSessionManagerProvider.get(mediaItem22);
                com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy2 = this.loadErrorHandlingPolicy;
                return new com.google.android.exoplayer2.source.hls.HlsMediaSource(mediaItem22, hlsDataSourceFactory2, hlsExtractorFactory2, compositeSequenceableLoaderFactory2, drmSessionManager2, loadErrorHandlingPolicy2, this.playlistTrackerFactory.createTracker(this.hlsDataSourceFactory, loadErrorHandlingPolicy2, filteringHlsPlaylistParserFactory), this.elapsedRealTimeOffsetMs, this.allowChunklessPreparation, this.metadataType, this.useSessionKeys);
            }
            builderBuildUpon = mediaItem.buildUpon().setTag(this.tag);
            tag = builderBuildUpon.setStreamKeys(list);
            mediaItemBuild = tag.build();
            com.google.android.exoplayer2.MediaItem mediaItem222 = mediaItemBuild;
            com.google.android.exoplayer2.source.hls.HlsDataSourceFactory hlsDataSourceFactory22 = this.hlsDataSourceFactory;
            com.google.android.exoplayer2.source.hls.HlsExtractorFactory hlsExtractorFactory22 = this.extractorFactory;
            com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory22 = this.compositeSequenceableLoaderFactory;
            com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager22 = this.drmSessionManagerProvider.get(mediaItem222);
            com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy22 = this.loadErrorHandlingPolicy;
            return new com.google.android.exoplayer2.source.hls.HlsMediaSource(mediaItem222, hlsDataSourceFactory22, hlsExtractorFactory22, compositeSequenceableLoaderFactory22, drmSessionManager22, loadErrorHandlingPolicy22, this.playlistTrackerFactory.createTracker(this.hlsDataSourceFactory, loadErrorHandlingPolicy22, filteringHlsPlaylistParserFactory), this.elapsedRealTimeOffsetMs, this.allowChunklessPreparation, this.metadataType, this.useSessionKeys);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public int[] getSupportedTypes() {
            return new int[]{2};
        }

        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setAllowChunklessPreparation(boolean z) {
            this.allowChunklessPreparation = z;
            return this;
        }

        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setCompositeSequenceableLoaderFactory(com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory) {
            if (compositeSequenceableLoaderFactory == null) {
                compositeSequenceableLoaderFactory = new com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory();
            }
            this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setDrmHttpDataSourceFactory(com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory) {
            if (!this.usingCustomDrmSessionManagerProvider) {
                ((com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider) this.drmSessionManagerProvider).setDrmHttpDataSourceFactory(factory);
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setDrmSessionManager(final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager) {
            if (drmSessionManager == null) {
                setDrmSessionManagerProvider((com.google.android.exoplayer2.drm.DrmSessionManagerProvider) null);
            } else {
                setDrmSessionManagerProvider(new com.google.android.exoplayer2.drm.DrmSessionManagerProvider() { // from class: e.c.a.a.n2.g0.b
                    @Override // com.google.android.exoplayer2.drm.DrmSessionManagerProvider
                    public final com.google.android.exoplayer2.drm.DrmSessionManager get(com.google.android.exoplayer2.MediaItem mediaItem) {
                        return com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory.a(drmSessionManager, mediaItem);
                    }
                });
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setDrmSessionManagerProvider(com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider) {
            boolean z;
            if (drmSessionManagerProvider != null) {
                this.drmSessionManagerProvider = drmSessionManagerProvider;
                z = true;
            } else {
                this.drmSessionManagerProvider = new com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider();
                z = false;
            }
            this.usingCustomDrmSessionManagerProvider = z;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setDrmUserAgent(java.lang.String str) {
            if (!this.usingCustomDrmSessionManagerProvider) {
                ((com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider) this.drmSessionManagerProvider).setDrmUserAgent(str);
            }
            return this;
        }

        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setElapsedRealTimeOffsetMs(long j) {
            this.elapsedRealTimeOffsetMs = j;
            return this;
        }

        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setExtractorFactory(com.google.android.exoplayer2.source.hls.HlsExtractorFactory hlsExtractorFactory) {
            if (hlsExtractorFactory == null) {
                hlsExtractorFactory = com.google.android.exoplayer2.source.hls.HlsExtractorFactory.DEFAULT;
            }
            this.extractorFactory = hlsExtractorFactory;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setLoadErrorHandlingPolicy(com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            if (loadErrorHandlingPolicy == null) {
                loadErrorHandlingPolicy = new com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy();
            }
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            return this;
        }

        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setMetadataType(int i) {
            this.metadataType = i;
            return this;
        }

        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setPlaylistParserFactory(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParserFactory hlsPlaylistParserFactory) {
            if (hlsPlaylistParserFactory == null) {
                hlsPlaylistParserFactory = new com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistParserFactory();
            }
            this.playlistParserFactory = hlsPlaylistParserFactory;
            return this;
        }

        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setPlaylistTrackerFactory(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.Factory factory) {
            if (factory == null) {
                factory = com.google.android.exoplayer2.source.hls.playlist.DefaultHlsPlaylistTracker.FACTORY;
            }
            this.playlistTrackerFactory = factory;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public /* bridge */ /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory setStreamKeys(java.util.List list) {
            return setStreamKeys((java.util.List<com.google.android.exoplayer2.offline.StreamKey>) list);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setStreamKeys(java.util.List<com.google.android.exoplayer2.offline.StreamKey> list) {
            if (list == null) {
                list = java.util.Collections.emptyList();
            }
            this.streamKeys = list;
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setTag(java.lang.Object obj) {
            this.tag = obj;
            return this;
        }

        public com.google.android.exoplayer2.source.hls.HlsMediaSource.Factory setUseSessionKeys(boolean z) {
            this.useSessionKeys = z;
            return this;
        }
    }

    @java.lang.annotation.Target({java.lang.annotation.ElementType.TYPE_USE})
    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface MetadataType {
    }

    static {
        com.google.android.exoplayer2.ExoPlayerLibraryInfo.registerModule("goog.exo.hls");
    }

    public HlsMediaSource(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.source.hls.HlsDataSourceFactory hlsDataSourceFactory, com.google.android.exoplayer2.source.hls.HlsExtractorFactory hlsExtractorFactory, com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker hlsPlaylistTracker, long j, boolean z, int i, boolean z2) {
        this.localConfiguration = (com.google.android.exoplayer2.MediaItem.LocalConfiguration) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration);
        this.mediaItem = mediaItem;
        this.liveConfiguration = mediaItem.liveConfiguration;
        this.dataSourceFactory = hlsDataSourceFactory;
        this.extractorFactory = hlsExtractorFactory;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.drmSessionManager = drmSessionManager;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.playlistTracker = hlsPlaylistTracker;
        this.elapsedRealTimeOffsetMs = j;
        this.allowChunklessPreparation = z;
        this.metadataType = i;
        this.useSessionKeys = z2;
    }

    private com.google.android.exoplayer2.source.SinglePeriodTimeline createTimelineForLive(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, long j, long j2, com.google.android.exoplayer2.source.hls.HlsManifest hlsManifest) {
        long initialStartTimeUs = hlsMediaPlaylist.startTimeUs - this.playlistTracker.getInitialStartTimeUs();
        long j3 = hlsMediaPlaylist.hasEndTag ? initialStartTimeUs + hlsMediaPlaylist.durationUs : -9223372036854775807L;
        long liveEdgeOffsetUs = getLiveEdgeOffsetUs(hlsMediaPlaylist);
        long j4 = this.liveConfiguration.targetOffsetMs;
        maybeUpdateLiveConfiguration(com.google.android.exoplayer2.util.Util.constrainValue(j4 != com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.util.Util.msToUs(j4) : getTargetLiveOffsetUs(hlsMediaPlaylist, liveEdgeOffsetUs), liveEdgeOffsetUs, hlsMediaPlaylist.durationUs + liveEdgeOffsetUs));
        return new com.google.android.exoplayer2.source.SinglePeriodTimeline(j, j2, com.google.android.exoplayer2.C.TIME_UNSET, j3, hlsMediaPlaylist.durationUs, initialStartTimeUs, getLiveWindowDefaultStartPositionUs(hlsMediaPlaylist, liveEdgeOffsetUs), true, !hlsMediaPlaylist.hasEndTag, hlsMediaPlaylist.playlistType == 2 && hlsMediaPlaylist.hasPositiveStartOffset, hlsManifest, this.mediaItem, this.liveConfiguration);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.exoplayer2.source.SinglePeriodTimeline createTimelineForOnDemand(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist r25, long r26, long r28, com.google.android.exoplayer2.source.hls.HlsManifest r30) {
        /*
            r24 = this;
            r0 = r25
            long r1 = r0.startOffsetUs
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L2f
            java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist$Segment> r1 = r0.segments
            boolean r1 = r1.isEmpty()
            if (r1 == 0) goto L16
            goto L2f
        L16:
            boolean r1 = r0.preciseStart
            if (r1 != 0) goto L2c
            long r1 = r0.startOffsetUs
            long r3 = r0.durationUs
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L23
            goto L2c
        L23:
            java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist$Segment> r3 = r0.segments
            com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist$Segment r1 = findClosestPrecedingSegment(r3, r1)
            long r1 = r1.relativeStartTimeUs
            goto L31
        L2c:
            long r1 = r0.startOffsetUs
            goto L31
        L2f:
            r1 = 0
        L31:
            r16 = r1
            com.google.android.exoplayer2.source.SinglePeriodTimeline r1 = new com.google.android.exoplayer2.source.SinglePeriodTimeline
            r3 = r1
            r8 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            long r10 = r0.durationUs
            r12 = r10
            r14 = 0
            r18 = 1
            r19 = 0
            r20 = 1
            r0 = r24
            com.google.android.exoplayer2.MediaItem r2 = r0.mediaItem
            r22 = r2
            r23 = 0
            r4 = r26
            r6 = r28
            r21 = r30
            r3.<init>(r4, r6, r8, r10, r12, r14, r16, r18, r19, r20, r21, r22, r23)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsMediaSource.createTimelineForOnDemand(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist, long, long, com.google.android.exoplayer2.source.hls.HlsManifest):com.google.android.exoplayer2.source.SinglePeriodTimeline");
    }

    public static com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part findClosestPrecedingIndependentPart(java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part> list, long j) {
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part part = null;
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part part2 = list.get(i);
            if (part2.relativeStartTimeUs > j || !part2.isIndependent) {
                if (part2.relativeStartTimeUs > j) {
                    break;
                }
            } else {
                part = part2;
            }
        }
        return part;
    }

    public static com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment findClosestPrecedingSegment(java.util.List<com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment> list, long j) {
        return list.get(com.google.android.exoplayer2.util.Util.binarySearchFloor((java.util.List<? extends java.lang.Comparable<? super java.lang.Long>>) list, java.lang.Long.valueOf(j), true, true));
    }

    private long getLiveEdgeOffsetUs(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist) {
        if (hlsMediaPlaylist.hasProgramDateTime) {
            return com.google.android.exoplayer2.util.Util.msToUs(com.google.android.exoplayer2.util.Util.getNowUnixTimeMs(this.elapsedRealTimeOffsetMs)) - hlsMediaPlaylist.getEndTimeUs();
        }
        return 0L;
    }

    private long getLiveWindowDefaultStartPositionUs(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, long j) {
        long jMsToUs = hlsMediaPlaylist.startOffsetUs;
        if (jMsToUs == com.google.android.exoplayer2.C.TIME_UNSET) {
            jMsToUs = (hlsMediaPlaylist.durationUs + j) - com.google.android.exoplayer2.util.Util.msToUs(this.liveConfiguration.targetOffsetMs);
        }
        if (hlsMediaPlaylist.preciseStart) {
            return jMsToUs;
        }
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part partFindClosestPrecedingIndependentPart = findClosestPrecedingIndependentPart(hlsMediaPlaylist.trailingParts, jMsToUs);
        if (partFindClosestPrecedingIndependentPart != null) {
            return partFindClosestPrecedingIndependentPart.relativeStartTimeUs;
        }
        if (hlsMediaPlaylist.segments.isEmpty()) {
            return 0L;
        }
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment segmentFindClosestPrecedingSegment = findClosestPrecedingSegment(hlsMediaPlaylist.segments, jMsToUs);
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part partFindClosestPrecedingIndependentPart2 = findClosestPrecedingIndependentPart(segmentFindClosestPrecedingSegment.parts, jMsToUs);
        return partFindClosestPrecedingIndependentPart2 != null ? partFindClosestPrecedingIndependentPart2.relativeStartTimeUs : segmentFindClosestPrecedingSegment.relativeStartTimeUs;
    }

    public static long getTargetLiveOffsetUs(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, long j) {
        long j2;
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.ServerControl serverControl = hlsMediaPlaylist.serverControl;
        long j3 = hlsMediaPlaylist.startOffsetUs;
        if (j3 != com.google.android.exoplayer2.C.TIME_UNSET) {
            j2 = hlsMediaPlaylist.durationUs - j3;
        } else {
            long j4 = serverControl.partHoldBackUs;
            if (j4 == com.google.android.exoplayer2.C.TIME_UNSET || hlsMediaPlaylist.partTargetDurationUs == com.google.android.exoplayer2.C.TIME_UNSET) {
                long j5 = serverControl.holdBackUs;
                j2 = j5 != com.google.android.exoplayer2.C.TIME_UNSET ? j5 : hlsMediaPlaylist.targetDurationUs * 3;
            } else {
                j2 = j4;
            }
        }
        return j2 + j;
    }

    private void maybeUpdateLiveConfiguration(long j) {
        long jUsToMs = com.google.android.exoplayer2.util.Util.usToMs(j);
        com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration = this.liveConfiguration;
        if (jUsToMs != liveConfiguration.targetOffsetMs) {
            this.liveConfiguration = liveConfiguration.buildUpon().setTargetOffsetMs(jUsToMs).build();
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcherCreateEventDispatcher = createEventDispatcher(mediaPeriodId);
        return new com.google.android.exoplayer2.source.hls.HlsMediaPeriod(this.extractorFactory, this.playlistTracker, this.dataSourceFactory, this.mediaTransferListener, this.drmSessionManager, createDrmEventDispatcher(mediaPeriodId), this.loadErrorHandlingPolicy, eventDispatcherCreateEventDispatcher, allocator, this.compositeSequenceableLoaderFactory, this.allowChunklessPreparation, this.metadataType, this.useSessionKeys);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
        this.playlistTracker.maybeThrowPrimaryPlaylistRefreshError();
    }

    @Override // com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistTracker.PrimaryPlaylistListener
    public void onPrimaryPlaylistRefreshed(com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist) {
        long jUsToMs = hlsMediaPlaylist.hasProgramDateTime ? com.google.android.exoplayer2.util.Util.usToMs(hlsMediaPlaylist.startTimeUs) : -9223372036854775807L;
        int i = hlsMediaPlaylist.playlistType;
        long j = (i == 2 || i == 1) ? jUsToMs : -9223372036854775807L;
        com.google.android.exoplayer2.source.hls.HlsManifest hlsManifest = new com.google.android.exoplayer2.source.hls.HlsManifest((com.google.android.exoplayer2.source.hls.playlist.HlsMasterPlaylist) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.playlistTracker.getMasterPlaylist()), hlsMediaPlaylist);
        refreshSourceInfo(this.playlistTracker.isLive() ? createTimelineForLive(hlsMediaPlaylist, j, jUsToMs, hlsManifest) : createTimelineForOnDemand(hlsMediaPlaylist, j, jUsToMs, hlsManifest));
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        this.mediaTransferListener = transferListener;
        this.drmSessionManager.prepare();
        this.playlistTracker.start(this.localConfiguration.uri, createEventDispatcher(null), this);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        ((com.google.android.exoplayer2.source.hls.HlsMediaPeriod) mediaPeriod).release();
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        this.playlistTracker.stop();
        this.drmSessionManager.release();
    }
}
