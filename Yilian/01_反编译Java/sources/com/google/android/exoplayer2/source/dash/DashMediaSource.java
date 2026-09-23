package com.google.android.exoplayer2.source.dash;

/* loaded from: classes.dex */
public final class DashMediaSource extends com.google.android.exoplayer2.source.BaseMediaSource {
    public static final long DEFAULT_FALLBACK_TARGET_LIVE_OFFSET_MS = 30000;

    @java.lang.Deprecated
    public static final long DEFAULT_LIVE_PRESENTATION_DELAY_MS = 30000;
    public static final java.lang.String DEFAULT_MEDIA_ID = "DashMediaSource";
    public static final long DEFAULT_NOTIFY_MANIFEST_INTERVAL_MS = 5000;
    public static final long MIN_LIVE_DEFAULT_START_POSITION_US = 5000000;
    public static final java.lang.String TAG = "DashMediaSource";
    public final com.google.android.exoplayer2.source.dash.BaseUrlExclusionList baseUrlExclusionList;
    public final com.google.android.exoplayer2.source.dash.DashChunkSource.Factory chunkSourceFactory;
    public final com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    public com.google.android.exoplayer2.upstream.DataSource dataSource;
    public final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager;
    public long elapsedRealtimeOffsetMs;
    public long expiredManifestPublishTimeUs;
    public final long fallbackTargetLiveOffsetMs;
    public int firstPeriodId;
    public android.os.Handler handler;
    public android.net.Uri initialManifestUri;
    public com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration;
    public final com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public com.google.android.exoplayer2.upstream.Loader loader;
    public com.google.android.exoplayer2.source.dash.manifest.DashManifest manifest;
    public final com.google.android.exoplayer2.source.dash.DashMediaSource.ManifestCallback manifestCallback;
    public final com.google.android.exoplayer2.upstream.DataSource.Factory manifestDataSourceFactory;
    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher manifestEventDispatcher;
    public java.io.IOException manifestFatalError;
    public long manifestLoadEndTimestampMs;
    public final com.google.android.exoplayer2.upstream.LoaderErrorThrower manifestLoadErrorThrower;
    public boolean manifestLoadPending;
    public long manifestLoadStartTimestampMs;
    public final com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<? extends com.google.android.exoplayer2.source.dash.manifest.DashManifest> manifestParser;
    public android.net.Uri manifestUri;
    public final java.lang.Object manifestUriLock;
    public final com.google.android.exoplayer2.MediaItem mediaItem;
    public com.google.android.exoplayer2.upstream.TransferListener mediaTransferListener;
    public final android.util.SparseArray<com.google.android.exoplayer2.source.dash.DashMediaPeriod> periodsById;
    public final com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerEmsgCallback playerEmsgCallback;
    public final java.lang.Runnable refreshManifestRunnable;
    public final boolean sideloadedManifest;
    public final java.lang.Runnable simulateManifestRefreshRunnable;
    public int staleManifestReloadAttempt;

    public static final class DashTimeline extends com.google.android.exoplayer2.Timeline {
        public final long elapsedRealtimeEpochOffsetMs;
        public final int firstPeriodId;
        public final com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration;
        public final com.google.android.exoplayer2.source.dash.manifest.DashManifest manifest;
        public final com.google.android.exoplayer2.MediaItem mediaItem;
        public final long offsetInFirstPeriodUs;
        public final long presentationStartTimeMs;
        public final long windowDefaultStartPositionUs;
        public final long windowDurationUs;
        public final long windowStartTimeMs;

        public DashTimeline(long j, long j2, long j3, int i, long j4, long j5, long j6, com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest, com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration) {
            com.google.android.exoplayer2.util.Assertions.checkState(dashManifest.dynamic == (liveConfiguration != null));
            this.presentationStartTimeMs = j;
            this.windowStartTimeMs = j2;
            this.elapsedRealtimeEpochOffsetMs = j3;
            this.firstPeriodId = i;
            this.offsetInFirstPeriodUs = j4;
            this.windowDurationUs = j5;
            this.windowDefaultStartPositionUs = j6;
            this.manifest = dashManifest;
            this.mediaItem = mediaItem;
            this.liveConfiguration = liveConfiguration;
        }

        private long getAdjustedWindowDefaultStartPositionUs(long j) {
            com.google.android.exoplayer2.source.dash.DashSegmentIndex index;
            long j2 = this.windowDefaultStartPositionUs;
            if (!isMovingLiveWindow(this.manifest)) {
                return j2;
            }
            if (j > 0) {
                j2 += j;
                if (j2 > this.windowDurationUs) {
                    return com.google.android.exoplayer2.C.TIME_UNSET;
                }
            }
            long j3 = this.offsetInFirstPeriodUs + j2;
            long periodDurationUs = this.manifest.getPeriodDurationUs(0);
            int i = 0;
            while (i < this.manifest.getPeriodCount() - 1 && j3 >= periodDurationUs) {
                j3 -= periodDurationUs;
                i++;
                periodDurationUs = this.manifest.getPeriodDurationUs(i);
            }
            com.google.android.exoplayer2.source.dash.manifest.Period period = this.manifest.getPeriod(i);
            int adaptationSetIndex = period.getAdaptationSetIndex(2);
            return (adaptationSetIndex == -1 || (index = period.adaptationSets.get(adaptationSetIndex).representations.get(0).getIndex()) == null || index.getSegmentCount(periodDurationUs) == 0) ? j2 : (index.getTimeUs(index.getSegmentNum(j3, periodDurationUs)) + j2) - j3;
        }

        public static boolean isMovingLiveWindow(com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest) {
            return dashManifest.dynamic && dashManifest.minUpdatePeriodMs != com.google.android.exoplayer2.C.TIME_UNSET && dashManifest.durationMs == com.google.android.exoplayer2.C.TIME_UNSET;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(java.lang.Object obj) {
            int iIntValue;
            if ((obj instanceof java.lang.Integer) && (iIntValue = ((java.lang.Integer) obj).intValue() - this.firstPeriodId) >= 0 && iIntValue < getPeriodCount()) {
                return iIntValue;
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Period getPeriod(int i, com.google.android.exoplayer2.Timeline.Period period, boolean z) {
            com.google.android.exoplayer2.util.Assertions.checkIndex(i, 0, getPeriodCount());
            return period.set(z ? this.manifest.getPeriod(i).id : null, z ? java.lang.Integer.valueOf(this.firstPeriodId + i) : null, 0, this.manifest.getPeriodDurationUs(i), com.google.android.exoplayer2.util.Util.msToUs(this.manifest.getPeriod(i).startMs - this.manifest.getPeriod(0).startMs) - this.offsetInFirstPeriodUs);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.manifest.getPeriodCount();
        }

        @Override // com.google.android.exoplayer2.Timeline
        public java.lang.Object getUidOfPeriod(int i) {
            com.google.android.exoplayer2.util.Assertions.checkIndex(i, 0, getPeriodCount());
            return java.lang.Integer.valueOf(this.firstPeriodId + i);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Window getWindow(int i, com.google.android.exoplayer2.Timeline.Window window, long j) {
            com.google.android.exoplayer2.util.Assertions.checkIndex(i, 0, 1);
            long adjustedWindowDefaultStartPositionUs = getAdjustedWindowDefaultStartPositionUs(j);
            java.lang.Object obj = com.google.android.exoplayer2.Timeline.Window.SINGLE_WINDOW_UID;
            com.google.android.exoplayer2.MediaItem mediaItem = this.mediaItem;
            com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest = this.manifest;
            return window.set(obj, mediaItem, dashManifest, this.presentationStartTimeMs, this.windowStartTimeMs, this.elapsedRealtimeEpochOffsetMs, true, isMovingLiveWindow(dashManifest), this.liveConfiguration, adjustedWindowDefaultStartPositionUs, this.windowDurationUs, 0, getPeriodCount() - 1, this.offsetInFirstPeriodUs);
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return 1;
        }
    }

    public final class DefaultPlayerEmsgCallback implements com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerEmsgCallback {
        public DefaultPlayerEmsgCallback() {
        }

        @Override // com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerEmsgCallback
        public void onDashManifestPublishTimeExpired(long j) {
            com.google.android.exoplayer2.source.dash.DashMediaSource.this.onDashManifestPublishTimeExpired(j);
        }

        @Override // com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerEmsgCallback
        public void onDashManifestRefreshRequested() {
            com.google.android.exoplayer2.source.dash.DashMediaSource.this.onDashManifestRefreshRequested();
        }
    }

    public static final class Factory implements com.google.android.exoplayer2.source.MediaSourceFactory {
        public final com.google.android.exoplayer2.source.dash.DashChunkSource.Factory chunkSourceFactory;
        public com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
        public com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider;
        public long fallbackTargetLiveOffsetMs;
        public com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        public final com.google.android.exoplayer2.upstream.DataSource.Factory manifestDataSourceFactory;
        public com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<? extends com.google.android.exoplayer2.source.dash.manifest.DashManifest> manifestParser;
        public java.util.List<com.google.android.exoplayer2.offline.StreamKey> streamKeys;
        public java.lang.Object tag;
        public long targetLiveOffsetOverrideMs;
        public boolean usingCustomDrmSessionManagerProvider;

        public Factory(com.google.android.exoplayer2.source.dash.DashChunkSource.Factory factory, com.google.android.exoplayer2.upstream.DataSource.Factory factory2) {
            this.chunkSourceFactory = (com.google.android.exoplayer2.source.dash.DashChunkSource.Factory) com.google.android.exoplayer2.util.Assertions.checkNotNull(factory);
            this.manifestDataSourceFactory = factory2;
            this.drmSessionManagerProvider = new com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider();
            this.loadErrorHandlingPolicy = new com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy();
            this.targetLiveOffsetOverrideMs = com.google.android.exoplayer2.C.TIME_UNSET;
            this.fallbackTargetLiveOffsetMs = 30000L;
            this.compositeSequenceableLoaderFactory = new com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory();
            this.streamKeys = java.util.Collections.emptyList();
        }

        public Factory(com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
            this(new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.Factory(factory), factory);
        }

        public static /* synthetic */ com.google.android.exoplayer2.drm.DrmSessionManager a(com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.MediaItem mediaItem) {
            return drmSessionManager;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.dash.DashMediaSource createMediaSource(android.net.Uri uri) {
            return createMediaSource(new com.google.android.exoplayer2.MediaItem.Builder().setUri(uri).setMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MPD).setTag(this.tag).build());
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.dash.DashMediaSource createMediaSource(com.google.android.exoplayer2.MediaItem mediaItem) {
            com.google.android.exoplayer2.MediaItem mediaItemBuild = mediaItem;
            com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItemBuild.localConfiguration);
            com.google.android.exoplayer2.upstream.ParsingLoadable.Parser dashManifestParser = this.manifestParser;
            if (dashManifestParser == null) {
                dashManifestParser = new com.google.android.exoplayer2.source.dash.manifest.DashManifestParser();
            }
            java.util.List<com.google.android.exoplayer2.offline.StreamKey> list = mediaItemBuild.localConfiguration.streamKeys.isEmpty() ? this.streamKeys : mediaItemBuild.localConfiguration.streamKeys;
            com.google.android.exoplayer2.upstream.ParsingLoadable.Parser filteringManifestParser = !list.isEmpty() ? new com.google.android.exoplayer2.offline.FilteringManifestParser(dashManifestParser, list) : dashManifestParser;
            boolean z = mediaItemBuild.localConfiguration.tag == null && this.tag != null;
            boolean z2 = mediaItemBuild.localConfiguration.streamKeys.isEmpty() && !list.isEmpty();
            boolean z3 = mediaItemBuild.liveConfiguration.targetOffsetMs == com.google.android.exoplayer2.C.TIME_UNSET && this.targetLiveOffsetOverrideMs != com.google.android.exoplayer2.C.TIME_UNSET;
            if (z || z2 || z3) {
                com.google.android.exoplayer2.MediaItem.Builder builderBuildUpon = mediaItem.buildUpon();
                if (z) {
                    builderBuildUpon.setTag(this.tag);
                }
                if (z2) {
                    builderBuildUpon.setStreamKeys(list);
                }
                if (z3) {
                    builderBuildUpon.setLiveConfiguration(mediaItemBuild.liveConfiguration.buildUpon().setTargetOffsetMs(this.targetLiveOffsetOverrideMs).build());
                }
                mediaItemBuild = builderBuildUpon.build();
            }
            com.google.android.exoplayer2.MediaItem mediaItem2 = mediaItemBuild;
            return new com.google.android.exoplayer2.source.dash.DashMediaSource(mediaItem2, null, this.manifestDataSourceFactory, filteringManifestParser, this.chunkSourceFactory, this.compositeSequenceableLoaderFactory, this.drmSessionManagerProvider.get(mediaItem2), this.loadErrorHandlingPolicy, this.fallbackTargetLiveOffsetMs);
        }

        public com.google.android.exoplayer2.source.dash.DashMediaSource createMediaSource(com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest) {
            return createMediaSource(dashManifest, new com.google.android.exoplayer2.MediaItem.Builder().setUri(android.net.Uri.EMPTY).setMediaId("DashMediaSource").setMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MPD).setStreamKeys(this.streamKeys).setTag(this.tag).build());
        }

        public com.google.android.exoplayer2.source.dash.DashMediaSource createMediaSource(com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest, com.google.android.exoplayer2.MediaItem mediaItem) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(!dashManifest.dynamic);
            com.google.android.exoplayer2.MediaItem.Builder mimeType = mediaItem.buildUpon().setMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_MPD);
            if (mediaItem.localConfiguration == null) {
                mimeType.setUri(android.net.Uri.EMPTY);
            }
            com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
            if (localConfiguration == null || localConfiguration.tag == null) {
                mimeType.setTag(this.tag);
            }
            com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfiguration = mediaItem.liveConfiguration;
            if (liveConfiguration.targetOffsetMs == com.google.android.exoplayer2.C.TIME_UNSET) {
                mimeType.setLiveConfiguration(liveConfiguration.buildUpon().setTargetOffsetMs(this.targetLiveOffsetOverrideMs).build());
            }
            com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration2 = mediaItem.localConfiguration;
            if (localConfiguration2 == null || localConfiguration2.streamKeys.isEmpty()) {
                mimeType.setStreamKeys(this.streamKeys);
            }
            com.google.android.exoplayer2.MediaItem mediaItemBuild = mimeType.build();
            if (!((com.google.android.exoplayer2.MediaItem.LocalConfiguration) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItemBuild.localConfiguration)).streamKeys.isEmpty()) {
                dashManifest = dashManifest.copy(this.streamKeys);
            }
            return new com.google.android.exoplayer2.source.dash.DashMediaSource(mediaItemBuild, dashManifest, null, null, this.chunkSourceFactory, this.compositeSequenceableLoaderFactory, this.drmSessionManagerProvider.get(mediaItemBuild), this.loadErrorHandlingPolicy, this.fallbackTargetLiveOffsetMs);
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public int[] getSupportedTypes() {
            return new int[]{0};
        }

        public com.google.android.exoplayer2.source.dash.DashMediaSource.Factory setCompositeSequenceableLoaderFactory(com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory) {
            if (compositeSequenceableLoaderFactory == null) {
                compositeSequenceableLoaderFactory = new com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory();
            }
            this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.dash.DashMediaSource.Factory setDrmHttpDataSourceFactory(com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory) {
            if (!this.usingCustomDrmSessionManagerProvider) {
                ((com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider) this.drmSessionManagerProvider).setDrmHttpDataSourceFactory(factory);
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.dash.DashMediaSource.Factory setDrmSessionManager(final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager) {
            if (drmSessionManager == null) {
                setDrmSessionManagerProvider((com.google.android.exoplayer2.drm.DrmSessionManagerProvider) null);
            } else {
                setDrmSessionManagerProvider(new com.google.android.exoplayer2.drm.DrmSessionManagerProvider() { // from class: e.c.a.a.n2.f0.a
                    @Override // com.google.android.exoplayer2.drm.DrmSessionManagerProvider
                    public final com.google.android.exoplayer2.drm.DrmSessionManager get(com.google.android.exoplayer2.MediaItem mediaItem) {
                        return com.google.android.exoplayer2.source.dash.DashMediaSource.Factory.a(drmSessionManager, mediaItem);
                    }
                });
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.dash.DashMediaSource.Factory setDrmSessionManagerProvider(com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider) {
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
        public com.google.android.exoplayer2.source.dash.DashMediaSource.Factory setDrmUserAgent(java.lang.String str) {
            if (!this.usingCustomDrmSessionManagerProvider) {
                ((com.google.android.exoplayer2.drm.DefaultDrmSessionManagerProvider) this.drmSessionManagerProvider).setDrmUserAgent(str);
            }
            return this;
        }

        public com.google.android.exoplayer2.source.dash.DashMediaSource.Factory setFallbackTargetLiveOffsetMs(long j) {
            this.fallbackTargetLiveOffsetMs = j;
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.dash.DashMediaSource.Factory setLivePresentationDelayMs(long j, boolean z) {
            this.targetLiveOffsetOverrideMs = z ? j : com.google.android.exoplayer2.C.TIME_UNSET;
            if (!z) {
                setFallbackTargetLiveOffsetMs(j);
            }
            return this;
        }

        @Override // com.google.android.exoplayer2.source.MediaSourceFactory
        public com.google.android.exoplayer2.source.dash.DashMediaSource.Factory setLoadErrorHandlingPolicy(com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            if (loadErrorHandlingPolicy == null) {
                loadErrorHandlingPolicy = new com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy();
            }
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            return this;
        }

        public com.google.android.exoplayer2.source.dash.DashMediaSource.Factory setManifestParser(com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<? extends com.google.android.exoplayer2.source.dash.manifest.DashManifest> parser) {
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
        public com.google.android.exoplayer2.source.dash.DashMediaSource.Factory setStreamKeys(java.util.List<com.google.android.exoplayer2.offline.StreamKey> list) {
            if (list == null) {
                list = java.util.Collections.emptyList();
            }
            this.streamKeys = list;
            return this;
        }

        @java.lang.Deprecated
        public com.google.android.exoplayer2.source.dash.DashMediaSource.Factory setTag(java.lang.Object obj) {
            this.tag = obj;
            return this;
        }
    }

    public static final class Iso8601Parser implements com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<java.lang.Long> {
        public static final java.util.regex.Pattern TIMESTAMP_WITH_TIMEZONE_PATTERN = java.util.regex.Pattern.compile("(.+?)(Z|((\\+|-|−)(\\d\\d)(:?(\\d\\d))?))");

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
        public java.lang.Long parse(android.net.Uri uri, java.io.InputStream inputStream) throws java.io.IOException, java.lang.NumberFormatException {
            java.lang.String line = new java.io.BufferedReader(new java.io.InputStreamReader(inputStream, e.c.b.a.c.f2667c)).readLine();
            try {
                java.util.regex.Matcher matcher = TIMESTAMP_WITH_TIMEZONE_PATTERN.matcher(line);
                if (!matcher.matches()) {
                    java.lang.String strValueOf = java.lang.String.valueOf(line);
                    throw com.google.android.exoplayer2.ParserException.createForMalformedManifest(strValueOf.length() != 0 ? "Couldn't parse timestamp: ".concat(strValueOf) : new java.lang.String("Couldn't parse timestamp: "), null);
                }
                java.lang.String strGroup = matcher.group(1);
                java.text.SimpleDateFormat simpleDateFormat = new java.text.SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss", java.util.Locale.US);
                simpleDateFormat.setTimeZone(java.util.TimeZone.getTimeZone("UTC"));
                long time = simpleDateFormat.parse(strGroup).getTime();
                if (!"Z".equals(matcher.group(2))) {
                    long j = "+".equals(matcher.group(4)) ? 1L : -1L;
                    long j2 = java.lang.Long.parseLong(matcher.group(5));
                    java.lang.String strGroup2 = matcher.group(7);
                    time -= ((((j2 * 60) + (android.text.TextUtils.isEmpty(strGroup2) ? 0L : java.lang.Long.parseLong(strGroup2))) * 60) * 1000) * j;
                }
                return java.lang.Long.valueOf(time);
            } catch (java.text.ParseException e2) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedManifest(null, e2);
            }
        }
    }

    public final class ManifestCallback implements com.google.android.exoplayer2.upstream.Loader.Callback<com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.dash.manifest.DashManifest>> {
        public ManifestCallback() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCanceled(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.dash.manifest.DashManifest> parsingLoadable, long j, long j2, boolean z) {
            com.google.android.exoplayer2.source.dash.DashMediaSource.this.onLoadCanceled(parsingLoadable, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCompleted(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.dash.manifest.DashManifest> parsingLoadable, long j, long j2) {
            com.google.android.exoplayer2.source.dash.DashMediaSource.this.onManifestLoadCompleted(parsingLoadable, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public com.google.android.exoplayer2.upstream.Loader.LoadErrorAction onLoadError(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.dash.manifest.DashManifest> parsingLoadable, long j, long j2, java.io.IOException iOException, int i) {
            return com.google.android.exoplayer2.source.dash.DashMediaSource.this.onManifestLoadError(parsingLoadable, j, j2, iOException, i);
        }
    }

    public final class ManifestLoadErrorThrower implements com.google.android.exoplayer2.upstream.LoaderErrorThrower {
        public ManifestLoadErrorThrower() {
        }

        private void maybeThrowManifestError() throws java.io.IOException {
            if (com.google.android.exoplayer2.source.dash.DashMediaSource.this.manifestFatalError != null) {
                throw com.google.android.exoplayer2.source.dash.DashMediaSource.this.manifestFatalError;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
        public void maybeThrowError() throws java.io.IOException {
            com.google.android.exoplayer2.source.dash.DashMediaSource.this.loader.maybeThrowError();
            maybeThrowManifestError();
        }

        @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
        public void maybeThrowError(int i) throws java.io.IOException {
            com.google.android.exoplayer2.source.dash.DashMediaSource.this.loader.maybeThrowError(i);
            maybeThrowManifestError();
        }
    }

    public final class UtcTimestampCallback implements com.google.android.exoplayer2.upstream.Loader.Callback<com.google.android.exoplayer2.upstream.ParsingLoadable<java.lang.Long>> {
        public UtcTimestampCallback() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCanceled(com.google.android.exoplayer2.upstream.ParsingLoadable<java.lang.Long> parsingLoadable, long j, long j2, boolean z) {
            com.google.android.exoplayer2.source.dash.DashMediaSource.this.onLoadCanceled(parsingLoadable, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public void onLoadCompleted(com.google.android.exoplayer2.upstream.ParsingLoadable<java.lang.Long> parsingLoadable, long j, long j2) {
            com.google.android.exoplayer2.source.dash.DashMediaSource.this.onUtcTimestampLoadCompleted(parsingLoadable, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Callback
        public com.google.android.exoplayer2.upstream.Loader.LoadErrorAction onLoadError(com.google.android.exoplayer2.upstream.ParsingLoadable<java.lang.Long> parsingLoadable, long j, long j2, java.io.IOException iOException, int i) {
            return com.google.android.exoplayer2.source.dash.DashMediaSource.this.onUtcTimestampLoadError(parsingLoadable, j, j2, iOException);
        }
    }

    public static final class XsDateTimeParser implements com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<java.lang.Long> {
        public XsDateTimeParser() {
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.google.android.exoplayer2.upstream.ParsingLoadable.Parser
        public java.lang.Long parse(android.net.Uri uri, java.io.InputStream inputStream) {
            return java.lang.Long.valueOf(com.google.android.exoplayer2.util.Util.parseXsDateTime(new java.io.BufferedReader(new java.io.InputStreamReader(inputStream)).readLine()));
        }
    }

    static {
        com.google.android.exoplayer2.ExoPlayerLibraryInfo.registerModule("goog.exo.dash");
    }

    public DashMediaSource(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<? extends com.google.android.exoplayer2.source.dash.manifest.DashManifest> parser, com.google.android.exoplayer2.source.dash.DashChunkSource.Factory factory2, com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, long j) {
        this.mediaItem = mediaItem;
        this.liveConfiguration = mediaItem.liveConfiguration;
        this.manifestUri = ((com.google.android.exoplayer2.MediaItem.LocalConfiguration) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration)).uri;
        this.initialManifestUri = mediaItem.localConfiguration.uri;
        this.manifest = dashManifest;
        this.manifestDataSourceFactory = factory;
        this.manifestParser = parser;
        this.chunkSourceFactory = factory2;
        this.drmSessionManager = drmSessionManager;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.fallbackTargetLiveOffsetMs = j;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.baseUrlExclusionList = new com.google.android.exoplayer2.source.dash.BaseUrlExclusionList();
        this.sideloadedManifest = dashManifest != null;
        this.manifestEventDispatcher = createEventDispatcher(null);
        this.manifestUriLock = new java.lang.Object();
        this.periodsById = new android.util.SparseArray<>();
        this.playerEmsgCallback = new com.google.android.exoplayer2.source.dash.DashMediaSource.DefaultPlayerEmsgCallback();
        this.expiredManifestPublishTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.elapsedRealtimeOffsetMs = com.google.android.exoplayer2.C.TIME_UNSET;
        if (!this.sideloadedManifest) {
            this.manifestCallback = new com.google.android.exoplayer2.source.dash.DashMediaSource.ManifestCallback();
            this.manifestLoadErrorThrower = new com.google.android.exoplayer2.source.dash.DashMediaSource.ManifestLoadErrorThrower();
            this.refreshManifestRunnable = new java.lang.Runnable() { // from class: e.c.a.a.n2.f0.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.startLoadingManifest();
                }
            };
            this.simulateManifestRefreshRunnable = new java.lang.Runnable() { // from class: e.c.a.a.n2.f0.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.b();
                }
            };
            return;
        }
        com.google.android.exoplayer2.util.Assertions.checkState(true ^ dashManifest.dynamic);
        this.manifestCallback = null;
        this.refreshManifestRunnable = null;
        this.simulateManifestRefreshRunnable = null;
        this.manifestLoadErrorThrower = new com.google.android.exoplayer2.upstream.LoaderErrorThrower.Dummy();
    }

    public static long getAvailableEndTimeInManifestUs(com.google.android.exoplayer2.source.dash.manifest.Period period, long j, long j2) {
        long jMsToUs = com.google.android.exoplayer2.util.Util.msToUs(period.startMs);
        boolean zHasVideoOrAudioAdaptationSets = hasVideoOrAudioAdaptationSets(period);
        long jMin = Long.MAX_VALUE;
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            com.google.android.exoplayer2.source.dash.manifest.AdaptationSet adaptationSet = period.adaptationSets.get(i);
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.Representation> list = adaptationSet.representations;
            if ((!zHasVideoOrAudioAdaptationSets || adaptationSet.type != 3) && !list.isEmpty()) {
                com.google.android.exoplayer2.source.dash.DashSegmentIndex index = list.get(0).getIndex();
                if (index == null) {
                    return jMsToUs + j;
                }
                long availableSegmentCount = index.getAvailableSegmentCount(j, j2);
                if (availableSegmentCount == 0) {
                    return jMsToUs;
                }
                long firstAvailableSegmentNum = (index.getFirstAvailableSegmentNum(j, j2) + availableSegmentCount) - 1;
                jMin = java.lang.Math.min(jMin, index.getDurationUs(firstAvailableSegmentNum, j) + index.getTimeUs(firstAvailableSegmentNum) + jMsToUs);
            }
        }
        return jMin;
    }

    public static long getAvailableStartTimeInManifestUs(com.google.android.exoplayer2.source.dash.manifest.Period period, long j, long j2) {
        long jMsToUs = com.google.android.exoplayer2.util.Util.msToUs(period.startMs);
        boolean zHasVideoOrAudioAdaptationSets = hasVideoOrAudioAdaptationSets(period);
        long jMax = jMsToUs;
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            com.google.android.exoplayer2.source.dash.manifest.AdaptationSet adaptationSet = period.adaptationSets.get(i);
            java.util.List<com.google.android.exoplayer2.source.dash.manifest.Representation> list = adaptationSet.representations;
            if ((!zHasVideoOrAudioAdaptationSets || adaptationSet.type != 3) && !list.isEmpty()) {
                com.google.android.exoplayer2.source.dash.DashSegmentIndex index = list.get(0).getIndex();
                if (index == null || index.getAvailableSegmentCount(j, j2) == 0) {
                    return jMsToUs;
                }
                jMax = java.lang.Math.max(jMax, index.getTimeUs(index.getFirstAvailableSegmentNum(j, j2)) + jMsToUs);
            }
        }
        return jMax;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:54:0x00d5  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d8  */
    /* JADX WARN: Removed duplicated region for block: B:69:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long getIntervalUntilNextManifestRefreshMs(com.google.android.exoplayer2.source.dash.manifest.DashManifest r21, long r22) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.DashMediaSource.getIntervalUntilNextManifestRefreshMs(com.google.android.exoplayer2.source.dash.manifest.DashManifest, long):long");
    }

    private long getManifestLoadRetryDelayMillis() {
        return java.lang.Math.min((this.staleManifestReloadAttempt - 1) * 1000, 5000);
    }

    public static boolean hasVideoOrAudioAdaptationSets(com.google.android.exoplayer2.source.dash.manifest.Period period) {
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            int i2 = period.adaptationSets.get(i).type;
            if (i2 == 1 || i2 == 2) {
                return true;
            }
        }
        return false;
    }

    public static boolean isIndexExplicit(com.google.android.exoplayer2.source.dash.manifest.Period period) {
        for (int i = 0; i < period.adaptationSets.size(); i++) {
            com.google.android.exoplayer2.source.dash.DashSegmentIndex index = period.adaptationSets.get(i).representations.get(0).getIndex();
            if (index == null || index.isExplicit()) {
                return true;
            }
        }
        return false;
    }

    private void loadNtpTimeOffset() {
        com.google.android.exoplayer2.util.SntpClient.initialize(this.loader, new com.google.android.exoplayer2.util.SntpClient.InitializationCallback() { // from class: com.google.android.exoplayer2.source.dash.DashMediaSource.1
            @Override // com.google.android.exoplayer2.util.SntpClient.InitializationCallback
            public void onInitializationFailed(java.io.IOException iOException) {
                com.google.android.exoplayer2.source.dash.DashMediaSource.this.onUtcTimestampResolutionError(iOException);
            }

            @Override // com.google.android.exoplayer2.util.SntpClient.InitializationCallback
            public void onInitialized() {
                com.google.android.exoplayer2.source.dash.DashMediaSource.this.onUtcTimestampResolved(com.google.android.exoplayer2.util.SntpClient.getElapsedRealtimeOffsetMs());
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUtcTimestampResolutionError(java.io.IOException iOException) {
        com.google.android.exoplayer2.util.Log.e("DashMediaSource", "Failed to resolve time offset.", iOException);
        processManifest(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onUtcTimestampResolved(long j) {
        this.elapsedRealtimeOffsetMs = j;
        processManifest(true);
    }

    private void processManifest(boolean z) {
        long j;
        com.google.android.exoplayer2.source.dash.manifest.Period period;
        long j2;
        for (int i = 0; i < this.periodsById.size(); i++) {
            int iKeyAt = this.periodsById.keyAt(i);
            if (iKeyAt >= this.firstPeriodId) {
                this.periodsById.valueAt(i).updateManifest(this.manifest, iKeyAt - this.firstPeriodId);
            }
        }
        com.google.android.exoplayer2.source.dash.manifest.Period period2 = this.manifest.getPeriod(0);
        int periodCount = this.manifest.getPeriodCount() - 1;
        com.google.android.exoplayer2.source.dash.manifest.Period period3 = this.manifest.getPeriod(periodCount);
        long periodDurationUs = this.manifest.getPeriodDurationUs(periodCount);
        long jMsToUs = com.google.android.exoplayer2.util.Util.msToUs(com.google.android.exoplayer2.util.Util.getNowUnixTimeMs(this.elapsedRealtimeOffsetMs));
        long availableStartTimeInManifestUs = getAvailableStartTimeInManifestUs(period2, this.manifest.getPeriodDurationUs(0), jMsToUs);
        long availableEndTimeInManifestUs = getAvailableEndTimeInManifestUs(period3, periodDurationUs, jMsToUs);
        boolean z2 = this.manifest.dynamic && !isIndexExplicit(period3);
        if (z2) {
            long j3 = this.manifest.timeShiftBufferDepthMs;
            if (j3 != com.google.android.exoplayer2.C.TIME_UNSET) {
                availableStartTimeInManifestUs = java.lang.Math.max(availableStartTimeInManifestUs, availableEndTimeInManifestUs - com.google.android.exoplayer2.util.Util.msToUs(j3));
            }
        }
        long j4 = availableEndTimeInManifestUs - availableStartTimeInManifestUs;
        com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest = this.manifest;
        if (dashManifest.dynamic) {
            com.google.android.exoplayer2.util.Assertions.checkState(dashManifest.availabilityStartTimeMs != com.google.android.exoplayer2.C.TIME_UNSET);
            long jMsToUs2 = (jMsToUs - com.google.android.exoplayer2.util.Util.msToUs(this.manifest.availabilityStartTimeMs)) - availableStartTimeInManifestUs;
            updateMediaItemLiveConfiguration(jMsToUs2, j4);
            long jUsToMs = com.google.android.exoplayer2.util.Util.usToMs(availableStartTimeInManifestUs) + this.manifest.availabilityStartTimeMs;
            long jMsToUs3 = jMsToUs2 - com.google.android.exoplayer2.util.Util.msToUs(this.liveConfiguration.targetOffsetMs);
            long jMin = java.lang.Math.min(5000000L, j4 / 2);
            j2 = jMsToUs3 < jMin ? jMin : jMsToUs3;
            j = jUsToMs;
            period = period2;
        } else {
            j = -9223372036854775807L;
            period = period2;
            j2 = 0;
        }
        long jMsToUs4 = availableStartTimeInManifestUs - com.google.android.exoplayer2.util.Util.msToUs(period.startMs);
        com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest2 = this.manifest;
        refreshSourceInfo(new com.google.android.exoplayer2.source.dash.DashMediaSource.DashTimeline(dashManifest2.availabilityStartTimeMs, j, this.elapsedRealtimeOffsetMs, this.firstPeriodId, jMsToUs4, j4, j2, dashManifest2, this.mediaItem, dashManifest2.dynamic ? this.liveConfiguration : null));
        if (this.sideloadedManifest) {
            return;
        }
        this.handler.removeCallbacks(this.simulateManifestRefreshRunnable);
        if (z2) {
            this.handler.postDelayed(this.simulateManifestRefreshRunnable, getIntervalUntilNextManifestRefreshMs(this.manifest, com.google.android.exoplayer2.util.Util.getNowUnixTimeMs(this.elapsedRealtimeOffsetMs)));
        }
        if (this.manifestLoadPending) {
            startLoadingManifest();
            return;
        }
        if (z) {
            com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest3 = this.manifest;
            if (dashManifest3.dynamic) {
                long j5 = dashManifest3.minUpdatePeriodMs;
                if (j5 != com.google.android.exoplayer2.C.TIME_UNSET) {
                    if (j5 == 0) {
                        j5 = 5000;
                    }
                    scheduleManifestRefresh(java.lang.Math.max(0L, (this.manifestLoadStartTimestampMs + j5) - android.os.SystemClock.elapsedRealtime()));
                }
            }
        }
    }

    private void resolveUtcTimingElement(com.google.android.exoplayer2.source.dash.manifest.UtcTimingElement utcTimingElement) {
        com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<java.lang.Long> iso8601Parser;
        java.lang.String str = utcTimingElement.schemeIdUri;
        if (com.google.android.exoplayer2.util.Util.areEqual(str, "urn:mpeg:dash:utc:direct:2014") || com.google.android.exoplayer2.util.Util.areEqual(str, "urn:mpeg:dash:utc:direct:2012")) {
            resolveUtcTimingElementDirect(utcTimingElement);
            return;
        }
        if (com.google.android.exoplayer2.util.Util.areEqual(str, "urn:mpeg:dash:utc:http-iso:2014") || com.google.android.exoplayer2.util.Util.areEqual(str, "urn:mpeg:dash:utc:http-iso:2012")) {
            iso8601Parser = new com.google.android.exoplayer2.source.dash.DashMediaSource.Iso8601Parser();
        } else {
            if (!com.google.android.exoplayer2.util.Util.areEqual(str, "urn:mpeg:dash:utc:http-xsdate:2014") && !com.google.android.exoplayer2.util.Util.areEqual(str, "urn:mpeg:dash:utc:http-xsdate:2012")) {
                if (com.google.android.exoplayer2.util.Util.areEqual(str, "urn:mpeg:dash:utc:ntp:2014") || com.google.android.exoplayer2.util.Util.areEqual(str, "urn:mpeg:dash:utc:ntp:2012")) {
                    loadNtpTimeOffset();
                    return;
                } else {
                    onUtcTimestampResolutionError(new java.io.IOException("Unsupported UTC timing scheme"));
                    return;
                }
            }
            iso8601Parser = new com.google.android.exoplayer2.source.dash.DashMediaSource.XsDateTimeParser();
        }
        resolveUtcTimingElementHttp(utcTimingElement, iso8601Parser);
    }

    private void resolveUtcTimingElementDirect(com.google.android.exoplayer2.source.dash.manifest.UtcTimingElement utcTimingElement) {
        try {
            onUtcTimestampResolved(com.google.android.exoplayer2.util.Util.parseXsDateTime(utcTimingElement.value) - this.manifestLoadEndTimestampMs);
        } catch (com.google.android.exoplayer2.ParserException e2) {
            onUtcTimestampResolutionError(e2);
        }
    }

    private void resolveUtcTimingElementHttp(com.google.android.exoplayer2.source.dash.manifest.UtcTimingElement utcTimingElement, com.google.android.exoplayer2.upstream.ParsingLoadable.Parser<java.lang.Long> parser) {
        startLoading(new com.google.android.exoplayer2.upstream.ParsingLoadable(this.dataSource, android.net.Uri.parse(utcTimingElement.value), 5, parser), new com.google.android.exoplayer2.source.dash.DashMediaSource.UtcTimestampCallback(), 1);
    }

    private void scheduleManifestRefresh(long j) {
        this.handler.postDelayed(this.refreshManifestRunnable, j);
    }

    private <T> void startLoading(com.google.android.exoplayer2.upstream.ParsingLoadable<T> parsingLoadable, com.google.android.exoplayer2.upstream.Loader.Callback<com.google.android.exoplayer2.upstream.ParsingLoadable<T>> callback, int i) {
        this.manifestEventDispatcher.loadStarted(new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, this.loader.startLoading(parsingLoadable, callback, i)), parsingLoadable.type);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void startLoadingManifest() {
        android.net.Uri uri;
        this.handler.removeCallbacks(this.refreshManifestRunnable);
        if (this.loader.hasFatalError()) {
            return;
        }
        if (this.loader.isLoading()) {
            this.manifestLoadPending = true;
            return;
        }
        synchronized (this.manifestUriLock) {
            uri = this.manifestUri;
        }
        this.manifestLoadPending = false;
        startLoading(new com.google.android.exoplayer2.upstream.ParsingLoadable(this.dataSource, uri, 4, this.manifestParser), this.manifestCallback, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(4));
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001e  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateMediaItemLiveConfiguration(long r15, long r17) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.DashMediaSource.updateMediaItemLiveConfiguration(long, long):void");
    }

    public /* synthetic */ void b() {
        processManifest(false);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        int iIntValue = ((java.lang.Integer) mediaPeriodId.periodUid).intValue() - this.firstPeriodId;
        com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcherCreateEventDispatcher = createEventDispatcher(mediaPeriodId, this.manifest.getPeriod(iIntValue).startMs);
        com.google.android.exoplayer2.source.dash.DashMediaPeriod dashMediaPeriod = new com.google.android.exoplayer2.source.dash.DashMediaPeriod(iIntValue + this.firstPeriodId, this.manifest, this.baseUrlExclusionList, iIntValue, this.chunkSourceFactory, this.mediaTransferListener, this.drmSessionManager, createDrmEventDispatcher(mediaPeriodId), this.loadErrorHandlingPolicy, eventDispatcherCreateEventDispatcher, this.elapsedRealtimeOffsetMs, this.manifestLoadErrorThrower, allocator, this.compositeSequenceableLoaderFactory, this.playerEmsgCallback);
        this.periodsById.put(dashMediaPeriod.id, dashMediaPeriod);
        return dashMediaPeriod;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.MediaItem getMediaItem() {
        return this.mediaItem;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
        this.manifestLoadErrorThrower.maybeThrowError();
    }

    public void onDashManifestPublishTimeExpired(long j) {
        long j2 = this.expiredManifestPublishTimeUs;
        if (j2 == com.google.android.exoplayer2.C.TIME_UNSET || j2 < j) {
            this.expiredManifestPublishTimeUs = j;
        }
    }

    public void onDashManifestRefreshRequested() {
        this.handler.removeCallbacks(this.simulateManifestRefreshRunnable);
        startLoadingManifest();
    }

    public void onLoadCanceled(com.google.android.exoplayer2.upstream.ParsingLoadable<?> parsingLoadable, long j, long j2) {
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.manifestEventDispatcher.loadCanceled(loadEventInfo, parsingLoadable.type);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00a6  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00c6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onManifestLoadCompleted(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.dash.manifest.DashManifest> r19, long r20, long r22) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.dash.DashMediaSource.onManifestLoadCompleted(com.google.android.exoplayer2.upstream.ParsingLoadable, long, long):void");
    }

    public com.google.android.exoplayer2.upstream.Loader.LoadErrorAction onManifestLoadError(com.google.android.exoplayer2.upstream.ParsingLoadable<com.google.android.exoplayer2.source.dash.manifest.DashManifest> parsingLoadable, long j, long j2, java.io.IOException iOException, int i) {
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

    public void onUtcTimestampLoadCompleted(com.google.android.exoplayer2.upstream.ParsingLoadable<java.lang.Long> parsingLoadable, long j, long j2) {
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        this.manifestEventDispatcher.loadCompleted(loadEventInfo, parsingLoadable.type);
        onUtcTimestampResolved(parsingLoadable.getResult().longValue() - j);
    }

    public com.google.android.exoplayer2.upstream.Loader.LoadErrorAction onUtcTimestampLoadError(com.google.android.exoplayer2.upstream.ParsingLoadable<java.lang.Long> parsingLoadable, long j, long j2, java.io.IOException iOException) {
        this.manifestEventDispatcher.loadError(new com.google.android.exoplayer2.source.LoadEventInfo(parsingLoadable.loadTaskId, parsingLoadable.dataSpec, parsingLoadable.getUri(), parsingLoadable.getResponseHeaders(), j, j2, parsingLoadable.bytesLoaded()), parsingLoadable.type, iOException, true);
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(parsingLoadable.loadTaskId);
        onUtcTimestampResolutionError(iOException);
        return com.google.android.exoplayer2.upstream.Loader.DONT_RETRY;
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        this.mediaTransferListener = transferListener;
        this.drmSessionManager.prepare();
        if (this.sideloadedManifest) {
            processManifest(false);
            return;
        }
        this.dataSource = this.manifestDataSourceFactory.createDataSource();
        this.loader = new com.google.android.exoplayer2.upstream.Loader("DashMediaSource");
        this.handler = com.google.android.exoplayer2.util.Util.createHandlerForCurrentLooper();
        startLoadingManifest();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        com.google.android.exoplayer2.source.dash.DashMediaPeriod dashMediaPeriod = (com.google.android.exoplayer2.source.dash.DashMediaPeriod) mediaPeriod;
        dashMediaPeriod.release();
        this.periodsById.remove(dashMediaPeriod.id);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        this.manifestLoadPending = false;
        this.dataSource = null;
        com.google.android.exoplayer2.upstream.Loader loader = this.loader;
        if (loader != null) {
            loader.release();
            this.loader = null;
        }
        this.manifestLoadStartTimestampMs = 0L;
        this.manifestLoadEndTimestampMs = 0L;
        this.manifest = this.sideloadedManifest ? this.manifest : null;
        this.manifestUri = this.initialManifestUri;
        this.manifestFatalError = null;
        android.os.Handler handler = this.handler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.handler = null;
        }
        this.elapsedRealtimeOffsetMs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.staleManifestReloadAttempt = 0;
        this.expiredManifestPublishTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.firstPeriodId = 0;
        this.periodsById.clear();
        this.baseUrlExclusionList.reset();
        this.drmSessionManager.release();
    }

    public void replaceManifestUri(android.net.Uri uri) {
        synchronized (this.manifestUriLock) {
            this.manifestUri = uri;
            this.initialManifestUri = uri;
        }
    }
}
