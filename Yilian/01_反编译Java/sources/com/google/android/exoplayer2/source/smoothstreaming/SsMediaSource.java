package com.google.android.exoplayer2.source.smoothstreaming;

/* loaded from: classes.dex */
public final class SsMediaSource extends com.google.android.exoplayer2.source.BaseMediaSource implements com.google.android.exoplayer2.upstream.Loader.Callback<com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest>> {
    public static final long DEFAULT_LIVE_PRESENTATION_DELAY_MS = 30000;
    public static final int MINIMUM_MANIFEST_REFRESH_PERIOD_MS = 5000;
    public static final long MIN_LIVE_DEFAULT_START_POSITION_US = 5000000;
    public final com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource.Factory chunkSourceFactory;
    public final com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    public final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager;
    public final long livePresentationDelayMs;
    public final com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public final com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration;
    public com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest manifest;
    public com.google.android.exoplayer2.upstream.DataSource manifestDataSource;
    public final com.google.android.exoplayer2.upstream.DataSource.Factory manifestDataSourceFactory;
    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher manifestEventDispatcher;
    public long manifestLoadStartTimestamp;
    public com.google.android.exoplayer2.upstream.Loader manifestLoader;
    public com.google.android.exoplayer2.upstream.LoaderErrorThrower manifestLoaderErrorThrower;
    public final com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<? extends com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest> manifestParser;
    public android.os.Handler manifestRefreshHandler;
    public final android.net.Uri manifestUri;
    public final com.google.android.exoplayer2.MediaItem mediaItem;
    public final java.util.ArrayList<com.google.android.exoplayer2.source.smoothstreaming.SsMediaPeriod> mediaPeriods;
    public com.google.android.exoplayer2.upstream.TransferListener mediaTransferListener;
    public final boolean sideloadedManifest;

    public static final class Factory implements com.google.android.exoplayer2.source.MediaSourceFactory {
        public final com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource.Factory chunkSourceFactory;
        public com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
        public com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider;
        public long livePresentationDelayMs;
        public com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        public final com.google.android.exoplayer2.upstream.DataSource.Factory manifestDataSourceFactory;
        public com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<? extends com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest> manifestParser;
        public java.util.List<com.google.android.exoplayer2.offline.StreamKey> streamKeys;
        public java.lang.Object tag;
        public boolean usingCustomDrmSessionManagerProvider;

        public Factory(com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource.Factory factory, com.google.android.exoplayer2.upstream.DataSource.Factory factory2) {
            this.chunkSourceFactory = (com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource.Factory) com.google.android.exoplayer2.util.Assertions.checkNotNull(factory);
            this.manifestDataSourceFactory = factory2;
            this.drmSessionManagerProvider = new com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider();
            this.loadErrorHandlingPolicy = new com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy();
            this.livePresentationDelayMs = 30000L;
            this.compositeSequenceableLoaderFactory = new com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory();
            this.streamKeys = java.util.Collections.emptyList();
        }

        public Factory(com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
            this(new com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource.Factory(factory), factory);
        }

        public static /* synthetic */ com.google.android.exoplayer2.drm.DrmSessionManager a(com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.MediaItem mediaItem) {
            return drmSessionManager;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource createMediaSource(android.net.Uri uri) {
            return createMediaSource(new com.google.android.exoplayer2.MediaItem.Builder().setUri(uri).build());
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource createMediaSource(com.google.android.exoplayer2.MediaItem mediaItem) {
            com.google.android.exoplayer2.MediaItem.Builder builderBuildUpon;
            com.google.android.exoplayer2.MediaItem.Builder tag;
            com.google.android.exoplayer2.MediaItem mediaItemBuild = mediaItem;
            com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItemBuild.localConfiguration);
            com.google.android.exoplayer2.upstream.ParsingLoadable.Parser ssManifestParser = this.manifestParser;
            if (ssManifestParser == null) {
                ssManifestParser = new com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser();
            }
            java.util.List<com.google.android.exoplayer2.offline.StreamKey> list = !mediaItemBuild.localConfiguration.streamKeys.isEmpty() ? mediaItemBuild.localConfiguration.streamKeys : this.streamKeys;
            com.google.android.exoplayer2.upstream.ParsingLoadable.Parser filteringManifestParser = !list.isEmpty() ? new com.google.android.exoplayer2.offline.FilteringManifestParser(ssManifestParser, list) : ssManifestParser;
            boolean z = mediaItemBuild.localConfiguration.tag == null && this.tag != null;
            boolean z2 = mediaItemBuild.localConfiguration.streamKeys.isEmpty() && !list.isEmpty();
            if (!z || !z2) {
                if (z) {
                    tag = mediaItem.buildUpon().setTag(this.tag);
                    mediaItemBuild = tag.build();
                    com.google.android.exoplayer2.MediaItem mediaItem2 = mediaItemBuild;
                    return new com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource(mediaItem2, null, this.manifestDataSourceFactory, filteringManifestParser, this.chunkSourceFactory, this.compositeSequenceableLoaderFactory, this.drmSessionManagerProvider.get(mediaItem2), this.loadErrorHandlingPolicy, this.livePresentationDelayMs);
                }
                if (z2) {
                    builderBuildUpon = mediaItem.buildUpon();
                }
                com.google.android.exoplayer2.MediaItem mediaItem22 = mediaItemBuild;
                return new com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource(mediaItem22, null, this.manifestDataSourceFactory, filteringManifestParser, this.chunkSourceFactory, this.compositeSequenceableLoaderFactory, this.drmSessionManagerProvider.get(mediaItem22), this.loadErrorHandlingPolicy, this.livePresentationDelayMs);
            }
            builderBuildUpon = mediaItem.buildUpon().setTag(this.tag);
            tag = builderBuildUpon.setStreamKeys(list);
            mediaItemBuild = tag.build();
            com.google.android.exoplayer2.MediaItem mediaItem222 = mediaItemBuild;
            return new com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource(mediaItem222, null, this.manifestDataSourceFactory, filteringManifestParser, this.chunkSourceFactory, this.compositeSequenceableLoaderFactory, this.drmSessionManagerProvider.get(mediaItem222), this.loadErrorHandlingPolicy, this.livePresentationDelayMs);
        }

        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource createMediaSource(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifest) {
            return createMediaSource(ssManifest, com.google.android.exoplayer2.MediaItem.fromUri(android.net.Uri.EMPTY));
        }

        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource createMediaSource(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifest, com.google.android.exoplayer2.MediaItem mediaItem) {
            com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifestCopy = ssManifest;
            com.google.android.exoplayer2.util.Assertions.checkArgument(!ssManifestCopy.isLive);
            com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
            java.util.List<com.google.android.exoplayer2.offline.StreamKey> list = (localConfiguration == null || localConfiguration.streamKeys.isEmpty()) ? this.streamKeys : mediaItem.localConfiguration.streamKeys;
            if (!list.isEmpty()) {
                ssManifestCopy = ssManifestCopy.copy(list);
            }
            com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifest2 = ssManifestCopy;
            boolean z = mediaItem.localConfiguration != null;
            com.google.android.exoplayer2.MediaItem mediaItemBuild = mediaItem.buildUpon().setMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_SS).setUri(z ? mediaItem.localConfiguration.uri : android.net.Uri.EMPTY).setTag(z && mediaItem.localConfiguration.tag != null ? mediaItem.localConfiguration.tag : this.tag).setStreamKeys(list).build();
            return new com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource(mediaItemBuild, ssManifest2, null, null, this.chunkSourceFactory, this.compositeSequenceableLoaderFactory, this.drmSessionManagerProvider.get(mediaItemBuild), this.loadErrorHandlingPolicy, this.livePresentationDelayMs);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public int[] getSupportedTypes() {
            return new int[]{1};
        }

        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource.Factory setCompositeSequenceableLoaderFactory(com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory) {
            if (compositeSequenceableLoaderFactory == null) {
                compositeSequenceableLoaderFactory = new com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory();
            }
            this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource.Factory setDrmHttpDataSourceFactory(com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory) {
            if (!this.usingCustomDrmSessionManagerProvider) {
                ((com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider) this.drmSessionManagerProvider).setDrmHttpDataSourceFactory(factory);
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource.Factory setDrmSessionManager(final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager) {
            if (drmSessionManager == null) {
                setDrmSessionManagerProvider((com.google.android.exoplayer2.drm.DrmSessionManagerProvider) null);
            } else {
                setDrmSessionManagerProvider(new com.google.android.exoplayer2.drm.DrmSessionManagerProvider() { // from class: e.c.a.a.n2.h0.a
                    @Override // com.google.android.exoplayer2.drm.DrmSessionManagerProvider
                    public final com.google.android.exoplayer2.drm.DrmSessionManager get(com.google.android.exoplayer2.MediaItem mediaItem) {
                        return com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource.Factory.a(drmSessionManager, mediaItem);
                    }
                });
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource.Factory setDrmSessionManagerProvider(com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider) {
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
        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource.Factory setDrmUserAgent(java.lang.String str) {
            if (!this.usingCustomDrmSessionManagerProvider) {
                ((com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider) this.drmSessionManagerProvider).setDrmUserAgent(str);
            }
            return this;
        }

        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource.Factory setLivePresentationDelayMs(long j) {
            this.livePresentationDelayMs = j;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource.Factory setLoadErrorHandlingPolicy(com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            if (loadErrorHandlingPolicy == null) {
                loadErrorHandlingPolicy = new com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy();
            }
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            return this;
        }

        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource.Factory setManifestParser(com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<? extends com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest> parser) {
            this.manifestParser = parser;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public /* bridge */ /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory setStreamKeys(java.util.List list) {
            return setStreamKeys((java.util.List<com.google.android.exoplayer2.offline.StreamKey>) list);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource.Factory setStreamKeys(java.util.List<com.google.android.exoplayer2.offline.StreamKey> list) {
            if (list == null) {
                list = java.util.Collections.emptyList();
            }
            this.streamKeys = list;
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource.Factory setTag(java.lang.Object obj) {
            this.tag = obj;
            return this;
        }
    }

    static {
        com.google.android.exoplayer2.ExoPlayerLibraryInfo.registerModule("goog.exo.smoothstreaming");
    }

    public SsMediaSource(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifest, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<? extends com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest> parser, com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource.Factory factory2, com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, long j) {
        com.google.android.exoplayer2.util.Assertions.checkState(ssManifest == null || !ssManifest.isLive);
        this.mediaItem = mediaItem;
        com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration = (com.google.android.exoplayer2.MediaItem.LocalConfiguration) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration);
        this.localConfiguration = localConfiguration;
        this.manifest = ssManifest;
        this.manifestUri = localConfiguration.uri.equals(android.net.Uri.EMPTY) ? null : com.google.android.exoplayer2.util.Util.fixSmoothStreamingIsmManifestUri(this.localConfiguration.uri);
        this.manifestDataSourceFactory = factory;
        this.manifestParser = parser;
        this.chunkSourceFactory = factory2;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.drmSessionManager = drmSessionManager;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.livePresentationDelayMs = j;
        this.manifestEventDispatcher = createEventDispatcher(null);
        this.sideloadedManifest = ssManifest != null;
        this.mediaPeriods = new java.util.ArrayList<>();
    }

    private void processManifest() {
        com.google.android.exoplayer2.source.SinglePeriodTimeline singlePeriodTimeline;
        for (int i = 0; i < this.mediaPeriods.size(); i++) {
            this.mediaPeriods.get(i).updateManifest(this.manifest);
        }
        long jMax = Long.MIN_VALUE;
        long jMax2 = Long.MAX_VALUE;
        for (com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement streamElement : this.manifest.streamElements) {
            if (streamElement.chunkCount > 0) {
                jMax2 = java.lang.Math.min(jMax2, streamElement.getStartTimeUs(0));
                jMax = java.lang.Math.max(jMax, streamElement.getChunkDurationUs(streamElement.chunkCount - 1) + streamElement.getStartTimeUs(streamElement.chunkCount - 1));
            }
        }
        if (jMax2 == Long.MAX_VALUE) {
            long j = this.manifest.isLive ? -9223372036854775807L : 0L;
            com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifest = this.manifest;
            boolean z = ssManifest.isLive;
            singlePeriodTimeline = new com.google.android.exoplayer2.source.SinglePeriodTimeline(j, 0L, 0L, 0L, true, z, z, (java.lang.Object) ssManifest, this.mediaItem);
        } else {
            com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifest2 = this.manifest;
            if (ssManifest2.isLive) {
                long j2 = ssManifest2.dvrWindowLengthUs;
                if (j2 != com.google.android.exoplayer2.C.TIME_UNSET && j2 > 0) {
                    jMax2 = java.lang.Math.max(jMax2, jMax - j2);
                }
                long j3 = jMax2;
                long j4 = jMax - j3;
                long jMsToUs = j4 - com.google.android.exoplayer2.util.Util.msToUs(this.livePresentationDelayMs);
                if (jMsToUs < 5000000) {
                    jMsToUs = java.lang.Math.min(5000000L, j4 / 2);
                }
                singlePeriodTimeline = new com.google.android.exoplayer2.source.SinglePeriodTimeline(com.google.android.exoplayer2.C.TIME_UNSET, j4, j3, jMsToUs, true, true, true, (java.lang.Object) this.manifest, this.mediaItem);
            } else {
                long j5 = ssManifest2.durationUs;
                long j6 = j5 != com.google.android.exoplayer2.C.TIME_UNSET ? j5 : jMax - jMax2;
                singlePeriodTimeline = new com.google.android.exoplayer2.source.SinglePeriodTimeline(jMax2 + j6, j6, jMax2, 0L, true, false, false, (java.lang.Object) this.manifest, this.mediaItem);
            }
        }
        refreshSourceInfo(singlePeriodTimeline);
    }

    private void scheduleManifestRefresh() {
        if (this.manifest.isLive) {
            this.manifestRefreshHandler.postDelayed(new java.lang.Runnable() { // from class: e.c.a.a.n2.h0.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.startLoadingManifest();
                }
            }, java.lang.Math.max(0L, (this.manifestLoadStartTimestamp + 5000) - android.os.SystemClock.elapsedRealtime()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoadingManifest() {
        if (this.manifestLoader.hasFatalError()) {
            return;
        }
        com.google.android.exoplayer2.upstream.ParsingLoadable parsingLoadable = new com.google.android.exoplayer2.upstream.ParsingLoadable(this.manifestDataSource, this.manifestUri, 4, this.manifestParser);
        this.manifestEventDispatcher.loadStarted(new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, this.manifestLoader.startLoading(parsingLoadable, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(parsingLoadable.type))), parsingLoadable.type);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcherCreateEventDispatcher = createEventDispatcher(mediaPeriodId);
        com.google.android.exoplayer2.source.smoothstreaming.SsMediaPeriod ssMediaPeriod = new com.google.android.exoplayer2.source.smoothstreaming.SsMediaPeriod(this.manifest, this.chunkSourceFactory, this.mediaTransferListener, this.compositeSequenceableLoaderFactory, this.drmSessionManager, createDrmEventDispatcher(mediaPeriodId), this.loadErrorHandlingPolicy, eventDispatcherCreateEventDispatcher, this.manifestLoaderErrorThrower, allocator);
        this.mediaPeriods.add(ssMediaPeriod);
        return ssMediaPeriod;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCanceled(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest> parsingLoadable, long j, long j2, boolean z) {
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.manifestEventDispatcher.loadCanceled(loadEventInfo, parsingLoadable.type);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCompleted(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest> parsingLoadable, long j, long j2) {
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.manifestEventDispatcher.loadCompleted(loadEventInfo, parsingLoadable.type);
        this.manifest = parsingLoadable.getResult();
        this.manifestLoadStartTimestamp = j - j2;
        processManifest();
        scheduleManifestRefresh();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public com.google.android.exoplayer2.upstream.Loader.LoadErrorAction onLoadError(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest> parsingLoadable, long j, long j2, java.io.IOException iOException, int i) {
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(new com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new com.google.android.exoplayer2.source.MediaLoadData(parsingLoadable.type), iOException, i));
        com.google.android.exoplayer2.upstream.Loader.LoadErrorAction loadErrorActionCreateRetryAction = retryDelayMsFor == com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.upstream.Loader.DONT_RETRY_FATAL : com.google.android.exoplayer2.upstream.Loader.createRetryAction(false, retryDelayMsFor);
        boolean z = !loadErrorActionCreateRetryAction.isRetry();
        this.manifestEventDispatcher.loadError(loadEventInfo, parsingLoadable.type, iOException, z);
        if (z) {
            this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        }
        return loadErrorActionCreateRetryAction;
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        this.mediaTransferListener = transferListener;
        this.drmSessionManager.prepare();
        if (this.sideloadedManifest) {
            this.manifestLoaderErrorThrower = new com.google.android.exoplayer2.upstream.LoaderErrorThrower.Dummy();
            processManifest();
            return;
        }
        this.manifestDataSource = this.manifestDataSourceFactory.createDataSource();
        com.google.android.exoplayer2.upstream.Loader loader = new com.google.android.exoplayer2.upstream.Loader("SsMediaSource");
        this.manifestLoader = loader;
        this.manifestLoaderErrorThrower = loader;
        this.manifestRefreshHandler = com.google.android.exoplayer2.util.Util.createHandlerForCurrentLooper();
        startLoadingManifest();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        ((com.google.android.exoplayer2.source.smoothstreaming.SsMediaPeriod) mediaPeriod).release();
        this.mediaPeriods.remove(mediaPeriod);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        this.manifest = this.sideloadedManifest ? this.manifest : null;
        this.manifestDataSource = null;
        this.manifestLoadStartTimestamp = 0L;
        com.google.android.exoplayer2.upstream.Loader loader = this.manifestLoader;
        if (loader != null) {
            loader.release();
            this.manifestLoader = null;
        }
        android.os.Handler handler = this.manifestRefreshHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.manifestRefreshHandler = null;
        }
        this.drmSessionManager.release();
    }
}
