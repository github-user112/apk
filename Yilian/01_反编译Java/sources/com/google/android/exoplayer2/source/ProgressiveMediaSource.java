package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class ProgressiveMediaSource extends com.google.android.exoplayer2.source.BaseMediaSource implements com.google.android.exoplayer2.source.ProgressiveMediaPeriod.Listener {
    public static final int DEFAULT_LOADING_CHECK_INTERVAL_BYTES = 1048576;
    public final int continueLoadingCheckIntervalBytes;
    public final com.google.android.exoplayer2.upstream.DataSource.Factory dataSourceFactory;
    public final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager;
    public final com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadableLoadErrorHandlingPolicy;
    public final com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration;
    public final com.google.android.exoplayer2.MediaItem mediaItem;
    public final com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory progressiveMediaExtractorFactory;
    public long timelineDurationUs;
    public boolean timelineIsLive;
    public boolean timelineIsPlaceholder;
    public boolean timelineIsSeekable;
    public com.google.android.exoplayer2.upstream.TransferListener transferListener;

    public static final class Factory implements com.google.android.exoplayer2.source.MediaSourceFactory {
        public int continueLoadingCheckIntervalBytes;
        public java.lang.String customCacheKey;
        public final com.google.android.exoplayer2.upstream.DataSource.Factory dataSourceFactory;
        public com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider;
        public com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        public com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory progressiveMediaExtractorFactory;
        public java.lang.Object tag;
        public boolean usingCustomDrmSessionManagerProvider;

        public Factory(com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
            this(factory, new com.google.android.exoplayer2.extractor.DefaultExtractorsFactory());
        }

        public Factory(com.google.android.exoplayer2.upstream.DataSource.Factory factory, final com.google.android.exoplayer2.extractor.ExtractorsFactory extractorsFactory) {
            this(factory, new com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory() { // from class: e.c.a.a.n2.r
                @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory
                public final com.google.android.exoplayer2.source.ProgressiveMediaExtractor createProgressiveMediaExtractor() {
                    return com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory.a(extractorsFactory);
                }
            });
        }

        public Factory(com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory factory2) {
            this.dataSourceFactory = factory;
            this.progressiveMediaExtractorFactory = factory2;
            this.drmSessionManagerProvider = new com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider();
            this.loadErrorHandlingPolicy = new com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy();
            this.continueLoadingCheckIntervalBytes = com.google.android.exoplayer2.source.ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
        }

        public static /* synthetic */ com.google.android.exoplayer2.source.ProgressiveMediaExtractor a(com.google.android.exoplayer2.extractor.ExtractorsFactory extractorsFactory) {
            return new com.google.android.exoplayer2.source.BundledExtractorsAdapter(extractorsFactory);
        }

        public static /* synthetic */ com.google.android.exoplayer2.drm.DrmSessionManager b(com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.MediaItem mediaItem) {
            return drmSessionManager;
        }

        public static /* synthetic */ com.google.android.exoplayer2.source.ProgressiveMediaExtractor c(com.google.android.exoplayer2.extractor.ExtractorsFactory extractorsFactory) {
            if (extractorsFactory == null) {
                extractorsFactory = new com.google.android.exoplayer2.extractor.DefaultExtractorsFactory();
            }
            return new com.google.android.exoplayer2.source.BundledExtractorsAdapter(extractorsFactory);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.ProgressiveMediaSource createMediaSource(android.net.Uri uri) {
            return createMediaSource(new com.google.android.exoplayer2.MediaItem.Builder().setUri(uri).build());
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.ProgressiveMediaSource createMediaSource(com.google.android.exoplayer2.MediaItem mediaItem) {
            com.google.android.exoplayer2.MediaItem.Builder builderBuildUpon;
            com.google.android.exoplayer2.MediaItem.Builder tag;
            com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration);
            boolean z = mediaItem.localConfiguration.tag == null && this.tag != null;
            boolean z2 = mediaItem.localConfiguration.customCacheKey == null && this.customCacheKey != null;
            if (!z || !z2) {
                if (z) {
                    tag = mediaItem.buildUpon().setTag(this.tag);
                    mediaItem = tag.build();
                    com.google.android.exoplayer2.MediaItem mediaItem2 = mediaItem;
                    return new com.google.android.exoplayer2.source.ProgressiveMediaSource(mediaItem2, this.dataSourceFactory, this.progressiveMediaExtractorFactory, this.drmSessionManagerProvider.get(mediaItem2), this.loadErrorHandlingPolicy, this.continueLoadingCheckIntervalBytes);
                }
                if (z2) {
                    builderBuildUpon = mediaItem.buildUpon();
                }
                com.google.android.exoplayer2.MediaItem mediaItem22 = mediaItem;
                return new com.google.android.exoplayer2.source.ProgressiveMediaSource(mediaItem22, this.dataSourceFactory, this.progressiveMediaExtractorFactory, this.drmSessionManagerProvider.get(mediaItem22), this.loadErrorHandlingPolicy, this.continueLoadingCheckIntervalBytes);
            }
            builderBuildUpon = mediaItem.buildUpon().setTag(this.tag);
            tag = builderBuildUpon.setCustomCacheKey(this.customCacheKey);
            mediaItem = tag.build();
            com.google.android.exoplayer2.MediaItem mediaItem222 = mediaItem;
            return new com.google.android.exoplayer2.source.ProgressiveMediaSource(mediaItem222, this.dataSourceFactory, this.progressiveMediaExtractorFactory, this.drmSessionManagerProvider.get(mediaItem222), this.loadErrorHandlingPolicy, this.continueLoadingCheckIntervalBytes);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public int[] getSupportedTypes() {
            return new int[]{4};
        }

        public com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory setContinueLoadingCheckIntervalBytes(int i) {
            this.continueLoadingCheckIntervalBytes = i;
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory setCustomCacheKey(java.lang.String str) {
            this.customCacheKey = str;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory setDrmHttpDataSourceFactory(com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory) {
            if (!this.usingCustomDrmSessionManagerProvider) {
                ((com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider) this.drmSessionManagerProvider).setDrmHttpDataSourceFactory(factory);
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory setDrmSessionManager(final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager) {
            if (drmSessionManager == null) {
                setDrmSessionManagerProvider((com.google.android.exoplayer2.drm.DrmSessionManagerProvider) null);
            } else {
                setDrmSessionManagerProvider(new com.google.android.exoplayer2.drm.DrmSessionManagerProvider() { // from class: e.c.a.a.n2.s
                    @Override // com.google.android.exoplayer2.drm.DrmSessionManagerProvider
                    public final com.google.android.exoplayer2.drm.DrmSessionManager get(com.google.android.exoplayer2.MediaItem mediaItem) {
                        return com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory.b(drmSessionManager, mediaItem);
                    }
                });
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory setDrmSessionManagerProvider(com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider) {
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
        public com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory setDrmUserAgent(java.lang.String str) {
            if (!this.usingCustomDrmSessionManagerProvider) {
                ((com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider) this.drmSessionManagerProvider).setDrmUserAgent(str);
            }
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory setExtractorsFactory(final com.google.android.exoplayer2.extractor.ExtractorsFactory extractorsFactory) {
            this.progressiveMediaExtractorFactory = new com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory() { // from class: e.c.a.a.n2.t
                @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory
                public final com.google.android.exoplayer2.source.ProgressiveMediaExtractor createProgressiveMediaExtractor() {
                    return com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory.c(extractorsFactory);
                }
            };
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory setLoadErrorHandlingPolicy(com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            if (loadErrorHandlingPolicy == null) {
                loadErrorHandlingPolicy = new com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy();
            }
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory setStreamKeys(java.util.List<com.google.android.exoplayer2.offline.StreamKey> list) {
            return e.c.a.a.n2.c0.$default$setStreamKeys(this, list);
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory setTag(java.lang.Object obj) {
            this.tag = obj;
            return this;
        }
    }

    public ProgressiveMediaSource(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory factory2, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, int i) {
        this.localConfiguration = (com.google.android.exoplayer2.MediaItem.LocalConfiguration) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration);
        this.mediaItem = mediaItem;
        this.dataSourceFactory = factory;
        this.progressiveMediaExtractorFactory = factory2;
        this.drmSessionManager = drmSessionManager;
        this.loadableLoadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.continueLoadingCheckIntervalBytes = i;
        this.timelineIsPlaceholder = true;
        this.timelineDurationUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }

    private void notifySourceInfoRefreshed() {
        com.google.android.exoplayer2.Timeline singlePeriodTimeline = new com.google.android.exoplayer2.source.SinglePeriodTimeline(this.timelineDurationUs, this.timelineIsSeekable, false, this.timelineIsLive, (java.lang.Object) null, this.mediaItem);
        if (this.timelineIsPlaceholder) {
            singlePeriodTimeline = new com.google.android.exoplayer2.source.ForwardingTimeline(this, singlePeriodTimeline) { // from class: com.google.android.exoplayer2.source.ProgressiveMediaSource.1
                @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
                public com.google.android.exoplayer2.Timeline.Period getPeriod(int i, com.google.android.exoplayer2.Timeline.Period period, boolean z) {
                    super.getPeriod(i, period, z);
                    period.isPlaceholder = true;
                    return period;
                }

                @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
                public com.google.android.exoplayer2.Timeline.Window getWindow(int i, com.google.android.exoplayer2.Timeline.Window window, long j) {
                    super.getWindow(i, window, j);
                    window.isPlaceholder = true;
                    return window;
                }
            };
        }
        refreshSourceInfo(singlePeriodTimeline);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        com.google.android.exoplayer2.upstream.DataSource dataSourceCreateDataSource = this.dataSourceFactory.createDataSource();
        com.google.android.exoplayer2.upstream.TransferListener transferListener = this.transferListener;
        if (transferListener != null) {
            dataSourceCreateDataSource.addTransferListener(transferListener);
        }
        return new com.google.android.exoplayer2.source.ProgressiveMediaPeriod(this.localConfiguration.uri, dataSourceCreateDataSource, this.progressiveMediaExtractorFactory.createProgressiveMediaExtractor(), this.drmSessionManager, createDrmEventDispatcher(mediaPeriodId), this.loadableLoadErrorHandlingPolicy, createEventDispatcher(mediaPeriodId), this, allocator, this.localConfiguration.customCacheKey, this.continueLoadingCheckIntervalBytes);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaPeriod.Listener
    public void onSourceInfoRefreshed(long j, boolean z, boolean z2) {
        if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
            j = this.timelineDurationUs;
        }
        if (!this.timelineIsPlaceholder && this.timelineDurationUs == j && this.timelineIsSeekable == z && this.timelineIsLive == z2) {
            return;
        }
        this.timelineDurationUs = j;
        this.timelineIsSeekable = z;
        this.timelineIsLive = z2;
        this.timelineIsPlaceholder = false;
        notifySourceInfoRefreshed();
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        this.transferListener = transferListener;
        this.drmSessionManager.prepare();
        notifySourceInfoRefreshed();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        ((com.google.android.exoplayer2.source.ProgressiveMediaPeriod) mediaPeriod).release();
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        this.drmSessionManager.release();
    }
}
