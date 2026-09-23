package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class DefaultMediaSourceFactory implements com.google.android.exoplayer2.source.MediaSourceFactory {
    public static final java.lang.String TAG = "DefaultMediaSourceFactory";
    public com.google.android.exoplayer2.ui.AdViewProvider adViewProvider;
    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory.AdsLoaderProvider adsLoaderProvider;
    public final com.google.android.exoplayer2.upstream.DataSource.Factory dataSourceFactory;
    public final com.google.android.exoplayer2.source.DefaultMediaSourceFactory.DelegateFactoryLoader delegateFactoryLoader;
    public long liveMaxOffsetMs;
    public float liveMaxSpeed;
    public long liveMinOffsetMs;
    public float liveMinSpeed;
    public long liveTargetOffsetMs;
    public com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public boolean useProgressiveMediaSourceForSubtitles;

    public interface AdsLoaderProvider {
        com.google.android.exoplayer2.source.ads.AdsLoader getAdsLoader(com.google.android.exoplayer2.MediaItem.AdsConfiguration adsConfiguration);
    }

    public static final class DelegateFactoryLoader {
        public final com.google.android.exoplayer2.upstream.DataSource.Factory dataSourceFactory;
        public com.google.android.exoplayer2.upstream.HttpDataSource.Factory drmHttpDataSourceFactory;
        public com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager;
        public com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider;
        public final com.google.android.exoplayer2.extractor.ExtractorsFactory extractorsFactory;
        public com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
        public java.util.List<com.google.android.exoplayer2.offline.StreamKey> streamKeys;
        public java.lang.String userAgent;
        public final java.util.Map<java.lang.Integer, e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory>> mediaSourceFactorySuppliers = new java.util.HashMap();
        public final java.util.Set<java.lang.Integer> supportedTypes = new java.util.HashSet();
        public final java.util.Map<java.lang.Integer, com.google.android.exoplayer2.source.MediaSourceFactory> mediaSourceFactories = new java.util.HashMap();

        public DelegateFactoryLoader(com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.extractor.ExtractorsFactory extractorsFactory) {
            this.dataSourceFactory = factory;
            this.extractorsFactory = extractorsFactory;
        }

        private void ensureAllSuppliersAreLoaded() {
            maybeLoadSupplier(0);
            maybeLoadSupplier(1);
            maybeLoadSupplier(2);
            maybeLoadSupplier(3);
            maybeLoadSupplier(4);
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x007f  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory> maybeLoadSupplier(int r4) {
            /*
                r3 = this;
                java.lang.Class<com.google.android.exoplayer2.source.MediaSourceFactory> r0 = com.google.android.exoplayer2.source.MediaSourceFactory.class
                java.util.Map<java.lang.Integer, e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory>> r1 = r3.mediaSourceFactorySuppliers
                java.lang.Integer r2 = java.lang.Integer.valueOf(r4)
                boolean r1 = r1.containsKey(r2)
                if (r1 == 0) goto L1b
                java.util.Map<java.lang.Integer, e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory>> r0 = r3.mediaSourceFactorySuppliers
                java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
                java.lang.Object r4 = r0.get(r4)
                e.c.b.a.k r4 = (e.c.b.a.k) r4
                return r4
            L1b:
                r1 = 0
                if (r4 == 0) goto L64
                r2 = 1
                if (r4 == r2) goto L54
                r2 = 2
                if (r4 == r2) goto L44
                r2 = 3
                if (r4 == r2) goto L34
                r0 = 4
                if (r4 == r0) goto L2b
                goto L74
            L2b:
                e.c.a.a.n2.d r0 = new e.c.a.a.n2.d     // Catch: java.lang.ClassNotFoundException -> L32
                r0.<init>()     // Catch: java.lang.ClassNotFoundException -> L32
                r1 = r0
                goto L74
            L32:
                goto L74
            L34:
                java.lang.String r2 = "com.google.android.exoplayer2.source.rtsp.RtspMediaSource$Factory"
                java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L32
                java.lang.Class r0 = r2.asSubclass(r0)     // Catch: java.lang.ClassNotFoundException -> L32
                e.c.a.a.n2.f r2 = new e.c.a.a.n2.f     // Catch: java.lang.ClassNotFoundException -> L32
                r2.<init>()     // Catch: java.lang.ClassNotFoundException -> L32
                goto L73
            L44:
                java.lang.String r2 = "com.google.android.exoplayer2.source.hls.HlsMediaSource$Factory"
                java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L32
                java.lang.Class r0 = r2.asSubclass(r0)     // Catch: java.lang.ClassNotFoundException -> L32
                e.c.a.a.n2.c r2 = new e.c.a.a.n2.c     // Catch: java.lang.ClassNotFoundException -> L32
                r2.<init>()     // Catch: java.lang.ClassNotFoundException -> L32
                goto L73
            L54:
                java.lang.String r2 = "com.google.android.exoplayer2.source.smoothstreaming.SsMediaSource$Factory"
                java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L32
                java.lang.Class r0 = r2.asSubclass(r0)     // Catch: java.lang.ClassNotFoundException -> L32
                e.c.a.a.n2.e r2 = new e.c.a.a.n2.e     // Catch: java.lang.ClassNotFoundException -> L32
                r2.<init>()     // Catch: java.lang.ClassNotFoundException -> L32
                goto L73
            L64:
                java.lang.String r2 = "com.google.android.exoplayer2.source.dash.DashMediaSource$Factory"
                java.lang.Class r2 = java.lang.Class.forName(r2)     // Catch: java.lang.ClassNotFoundException -> L32
                java.lang.Class r0 = r2.asSubclass(r0)     // Catch: java.lang.ClassNotFoundException -> L32
                e.c.a.a.n2.g r2 = new e.c.a.a.n2.g     // Catch: java.lang.ClassNotFoundException -> L32
                r2.<init>()     // Catch: java.lang.ClassNotFoundException -> L32
            L73:
                r1 = r2
            L74:
                java.util.Map<java.lang.Integer, e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory>> r0 = r3.mediaSourceFactorySuppliers
                java.lang.Integer r2 = java.lang.Integer.valueOf(r4)
                r0.put(r2, r1)
                if (r1 == 0) goto L88
                java.util.Set<java.lang.Integer> r0 = r3.supportedTypes
                java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
                r0.add(r4)
            L88:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.DefaultMediaSourceFactory.DelegateFactoryLoader.maybeLoadSupplier(int):e.c.b.a.k");
        }

        public /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory a(java.lang.Class cls) {
            return com.google.android.exoplayer2.source.DefaultMediaSourceFactory.newInstance(cls, this.dataSourceFactory);
        }

        public /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory b(java.lang.Class cls) {
            return com.google.android.exoplayer2.source.DefaultMediaSourceFactory.newInstance(cls, this.dataSourceFactory);
        }

        public /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory c(java.lang.Class cls) {
            return com.google.android.exoplayer2.source.DefaultMediaSourceFactory.newInstance(cls, this.dataSourceFactory);
        }

        public /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory e() {
            return new com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory(this.dataSourceFactory, this.extractorsFactory);
        }

        public com.google.android.exoplayer2.source.MediaSourceFactory getMediaSourceFactory(int i) {
            com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory = this.mediaSourceFactories.get(java.lang.Integer.valueOf(i));
            if (mediaSourceFactory != null) {
                return mediaSourceFactory;
            }
            e.c.b.a.k<com.google.android.exoplayer2.source.MediaSourceFactory> kVarMaybeLoadSupplier = maybeLoadSupplier(i);
            if (kVarMaybeLoadSupplier == null) {
                return null;
            }
            com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory2 = kVarMaybeLoadSupplier.get();
            com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory = this.drmHttpDataSourceFactory;
            if (factory != null) {
                mediaSourceFactory2.setDrmHttpDataSourceFactory(factory);
            }
            java.lang.String str = this.userAgent;
            if (str != null) {
                mediaSourceFactory2.setDrmUserAgent(str);
            }
            com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager = this.drmSessionManager;
            if (drmSessionManager != null) {
                mediaSourceFactory2.setDrmSessionManager(drmSessionManager);
            }
            com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider = this.drmSessionManagerProvider;
            if (drmSessionManagerProvider != null) {
                mediaSourceFactory2.setDrmSessionManagerProvider(drmSessionManagerProvider);
            }
            com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy = this.loadErrorHandlingPolicy;
            if (loadErrorHandlingPolicy != null) {
                mediaSourceFactory2.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
            }
            java.util.List<com.google.android.exoplayer2.offline.StreamKey> list = this.streamKeys;
            if (list != null) {
                mediaSourceFactory2.setStreamKeys(list);
            }
            this.mediaSourceFactories.put(java.lang.Integer.valueOf(i), mediaSourceFactory2);
            return mediaSourceFactory2;
        }

        public int[] getSupportedTypes() {
            ensureAllSuppliersAreLoaded();
            return d.s.y.a0(this.supportedTypes);
        }

        public void setDrmHttpDataSourceFactory(com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory) {
            this.drmHttpDataSourceFactory = factory;
            java.util.Iterator<com.google.android.exoplayer2.source.MediaSourceFactory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().setDrmHttpDataSourceFactory(factory);
            }
        }

        public void setDrmSessionManager(com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager) {
            this.drmSessionManager = drmSessionManager;
            java.util.Iterator<com.google.android.exoplayer2.source.MediaSourceFactory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().setDrmSessionManager(drmSessionManager);
            }
        }

        public void setDrmSessionManagerProvider(com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider) {
            this.drmSessionManagerProvider = drmSessionManagerProvider;
            java.util.Iterator<com.google.android.exoplayer2.source.MediaSourceFactory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().setDrmSessionManagerProvider(drmSessionManagerProvider);
            }
        }

        public void setDrmUserAgent(java.lang.String str) {
            this.userAgent = str;
            java.util.Iterator<com.google.android.exoplayer2.source.MediaSourceFactory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().setDrmUserAgent(str);
            }
        }

        public void setLoadErrorHandlingPolicy(com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
            this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
            java.util.Iterator<com.google.android.exoplayer2.source.MediaSourceFactory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
            }
        }

        public void setStreamKeys(java.util.List<com.google.android.exoplayer2.offline.StreamKey> list) {
            this.streamKeys = list;
            java.util.Iterator<com.google.android.exoplayer2.source.MediaSourceFactory> it = this.mediaSourceFactories.values().iterator();
            while (it.hasNext()) {
                it.next().setStreamKeys(list);
            }
        }
    }

    public static final class UnknownSubtitlesExtractor implements com.google.android.exoplayer2.extractor.Extractor {
        public final com.google.android.exoplayer2.Format format;

        public UnknownSubtitlesExtractor(com.google.android.exoplayer2.Format format) {
            this.format = format;
        }

        @Override // com.google.android.exoplayer2.extractor.Extractor
        public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
            com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = extractorOutput.track(0, 3);
            extractorOutput.seekMap(new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(com.google.android.exoplayer2.C.TIME_UNSET));
            extractorOutput.endTracks();
            trackOutputTrack.format(this.format.buildUpon().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.TEXT_UNKNOWN).setCodecs(this.format.sampleMimeType).build());
        }

        @Override // com.google.android.exoplayer2.extractor.Extractor
        public int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
            return extractorInput.skip(Integer.MAX_VALUE) == -1 ? -1 : 0;
        }

        @Override // com.google.android.exoplayer2.extractor.Extractor
        public void release() {
        }

        @Override // com.google.android.exoplayer2.extractor.Extractor
        public void seek(long j, long j2) {
        }

        @Override // com.google.android.exoplayer2.extractor.Extractor
        public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
            return true;
        }
    }

    public DefaultMediaSourceFactory(android.content.Context context) {
        this(new com.google.android.exoplayer2.upstream.DefaultDataSource.Factory(context));
    }

    public DefaultMediaSourceFactory(android.content.Context context, com.google.android.exoplayer2.extractor.ExtractorsFactory extractorsFactory) {
        this(new com.google.android.exoplayer2.upstream.DefaultDataSource.Factory(context), extractorsFactory);
    }

    public DefaultMediaSourceFactory(com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
        this(factory, new com.google.android.exoplayer2.extractor.DefaultExtractorsFactory());
    }

    public DefaultMediaSourceFactory(com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.extractor.ExtractorsFactory extractorsFactory) {
        this.dataSourceFactory = factory;
        this.delegateFactoryLoader = new com.google.android.exoplayer2.source.DefaultMediaSourceFactory.DelegateFactoryLoader(factory, extractorsFactory);
        this.liveTargetOffsetMs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.liveMinOffsetMs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.liveMaxOffsetMs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.liveMinSpeed = -3.4028235E38f;
        this.liveMaxSpeed = -3.4028235E38f;
    }

    public static /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] a(com.google.android.exoplayer2.Format format) {
        com.google.android.exoplayer2.extractor.Extractor[] extractorArr = new com.google.android.exoplayer2.extractor.Extractor[1];
        extractorArr[0] = com.google.android.exoplayer2.text.SubtitleDecoderFactory.DEFAULT.supportsFormat(format) ? new com.google.android.exoplayer2.text.SubtitleExtractor(com.google.android.exoplayer2.text.SubtitleDecoderFactory.DEFAULT.createDecoder(format), format) : new com.google.android.exoplayer2.source.DefaultMediaSourceFactory.UnknownSubtitlesExtractor(format);
        return extractorArr;
    }

    public static com.google.android.exoplayer2.source.MediaSource maybeClipMediaSource(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.source.MediaSource mediaSource) {
        com.google.android.exoplayer2.MediaItem.ClippingConfiguration clippingConfiguration = mediaItem.clippingConfiguration;
        if (clippingConfiguration.startPositionMs == 0 && clippingConfiguration.endPositionMs == Long.MIN_VALUE && !clippingConfiguration.relativeToDefaultPosition) {
            return mediaSource;
        }
        long jMsToUs = com.google.android.exoplayer2.util.Util.msToUs(mediaItem.clippingConfiguration.startPositionMs);
        long jMsToUs2 = com.google.android.exoplayer2.util.Util.msToUs(mediaItem.clippingConfiguration.endPositionMs);
        com.google.android.exoplayer2.MediaItem.ClippingConfiguration clippingConfiguration2 = mediaItem.clippingConfiguration;
        return new com.google.android.exoplayer2.source.ClippingMediaSource(mediaSource, jMsToUs, jMsToUs2, !clippingConfiguration2.startsAtKeyFrame, clippingConfiguration2.relativeToLiveWindow, clippingConfiguration2.relativeToDefaultPosition);
    }

    private com.google.android.exoplayer2.source.MediaSource maybeWrapWithAdsMediaSource(com.google.android.exoplayer2.MediaItem mediaItem, com.google.android.exoplayer2.source.MediaSource mediaSource) {
        java.lang.String str;
        com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration);
        com.google.android.exoplayer2.MediaItem.AdsConfiguration adsConfiguration = mediaItem.localConfiguration.adsConfiguration;
        if (adsConfiguration == null) {
            return mediaSource;
        }
        com.google.android.exoplayer2.source.DefaultMediaSourceFactory.AdsLoaderProvider adsLoaderProvider = this.adsLoaderProvider;
        com.google.android.exoplayer2.ui.AdViewProvider adViewProvider = this.adViewProvider;
        if (adsLoaderProvider == null || adViewProvider == null) {
            str = "Playing media without ads. Configure ad support by calling setAdsLoaderProvider and setAdViewProvider.";
        } else {
            com.google.android.exoplayer2.source.ads.AdsLoader adsLoader = adsLoaderProvider.getAdsLoader(adsConfiguration);
            if (adsLoader != null) {
                com.google.android.exoplayer2.upstream.DataSpec dataSpec = new com.google.android.exoplayer2.upstream.DataSpec(adsConfiguration.adTagUri);
                java.lang.Object obj = adsConfiguration.adsId;
                return new com.google.android.exoplayer2.source.ads.AdsMediaSource(mediaSource, dataSpec, obj != null ? obj : e.c.b.b.s.s(mediaItem.mediaId, mediaItem.localConfiguration.uri, adsConfiguration.adTagUri), this, adsLoader, adViewProvider);
            }
            str = "Playing media without ads, as no AdsLoader was provided.";
        }
        com.google.android.exoplayer2.util.Log.w(TAG, str);
        return mediaSource;
    }

    public static com.google.android.exoplayer2.source.MediaSourceFactory newInstance(java.lang.Class<? extends com.google.android.exoplayer2.source.MediaSourceFactory> cls) {
        try {
            return cls.getConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]);
        } catch (java.lang.Exception e2) {
            throw new java.lang.IllegalStateException(e2);
        }
    }

    public static com.google.android.exoplayer2.source.MediaSourceFactory newInstance(java.lang.Class<? extends com.google.android.exoplayer2.source.MediaSourceFactory> cls, com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
        try {
            return cls.getConstructor(com.google.android.exoplayer2.upstream.DataSource.Factory.class).newInstance(factory);
        } catch (java.lang.Exception e2) {
            throw new java.lang.IllegalStateException(e2);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    @java.lang.Deprecated
    public /* synthetic */ com.google.android.exoplayer2.source.MediaSource createMediaSource(android.net.Uri uri) {
        return createMediaSource(com.google.android.exoplayer2.MediaItem.fromUri(uri));
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public com.google.android.exoplayer2.source.MediaSource createMediaSource(com.google.android.exoplayer2.MediaItem mediaItem) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaItem.localConfiguration);
        com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration = mediaItem.localConfiguration;
        int iInferContentTypeForUriAndMimeType = com.google.android.exoplayer2.util.Util.inferContentTypeForUriAndMimeType(localConfiguration.uri, localConfiguration.mimeType);
        com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory = this.delegateFactoryLoader.getMediaSourceFactory(iInferContentTypeForUriAndMimeType);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(68);
        sb.append("No suitable media source factory found for content type: ");
        sb.append(iInferContentTypeForUriAndMimeType);
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(mediaSourceFactory, sb.toString());
        com.google.android.exoplayer2.MediaItem.LiveConfiguration.Builder builderBuildUpon = mediaItem.liveConfiguration.buildUpon();
        if (mediaItem.liveConfiguration.targetOffsetMs == com.google.android.exoplayer2.C.TIME_UNSET) {
            builderBuildUpon.setTargetOffsetMs(this.liveTargetOffsetMs);
        }
        if (mediaItem.liveConfiguration.minPlaybackSpeed == -3.4028235E38f) {
            builderBuildUpon.setMinPlaybackSpeed(this.liveMinSpeed);
        }
        if (mediaItem.liveConfiguration.maxPlaybackSpeed == -3.4028235E38f) {
            builderBuildUpon.setMaxPlaybackSpeed(this.liveMaxSpeed);
        }
        if (mediaItem.liveConfiguration.minOffsetMs == com.google.android.exoplayer2.C.TIME_UNSET) {
            builderBuildUpon.setMinOffsetMs(this.liveMinOffsetMs);
        }
        if (mediaItem.liveConfiguration.maxOffsetMs == com.google.android.exoplayer2.C.TIME_UNSET) {
            builderBuildUpon.setMaxOffsetMs(this.liveMaxOffsetMs);
        }
        com.google.android.exoplayer2.MediaItem.LiveConfiguration liveConfigurationBuild = builderBuildUpon.build();
        if (!liveConfigurationBuild.equals(mediaItem.liveConfiguration)) {
            mediaItem = mediaItem.buildUpon().setLiveConfiguration(liveConfigurationBuild).build();
        }
        com.google.android.exoplayer2.source.MediaSource mediaSourceCreateMediaSource = mediaSourceFactory.createMediaSource(mediaItem);
        e.c.b.b.s<com.google.android.exoplayer2.MediaItem.SubtitleConfiguration> sVar = ((com.google.android.exoplayer2.MediaItem.LocalConfiguration) com.google.android.exoplayer2.util.Util.castNonNull(mediaItem.localConfiguration)).subtitleConfigurations;
        if (!sVar.isEmpty()) {
            com.google.android.exoplayer2.source.MediaSource[] mediaSourceArr = new com.google.android.exoplayer2.source.MediaSource[sVar.size() + 1];
            mediaSourceArr[0] = mediaSourceCreateMediaSource;
            for (int i = 0; i < sVar.size(); i++) {
                if (this.useProgressiveMediaSourceForSubtitles) {
                    final com.google.android.exoplayer2.Format formatBuild = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(sVar.get(i).mimeType).setLanguage(sVar.get(i).language).setSelectionFlags(sVar.get(i).selectionFlags).setRoleFlags(sVar.get(i).roleFlags).setLabel(sVar.get(i).label).build();
                    mediaSourceArr[i + 1] = new com.google.android.exoplayer2.source.ProgressiveMediaSource.Factory(this.dataSourceFactory, new com.google.android.exoplayer2.extractor.ExtractorsFactory() { // from class: e.c.a.a.n2.h
                        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
                        public final com.google.android.exoplayer2.extractor.Extractor[] createExtractors() {
                            return com.google.android.exoplayer2.source.DefaultMediaSourceFactory.a(formatBuild);
                        }

                        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
                        public /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] createExtractors(android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map) {
                            return createExtractors();
                        }
                    }).createMediaSource(com.google.android.exoplayer2.MediaItem.fromUri(sVar.get(i).uri.toString()));
                } else {
                    mediaSourceArr[i + 1] = new com.google.android.exoplayer2.source.SingleSampleMediaSource.Factory(this.dataSourceFactory).setLoadErrorHandlingPolicy(this.loadErrorHandlingPolicy).createMediaSource(sVar.get(i), com.google.android.exoplayer2.C.TIME_UNSET);
                }
            }
            mediaSourceCreateMediaSource = new com.google.android.exoplayer2.source.MergingMediaSource(mediaSourceArr);
        }
        return maybeWrapWithAdsMediaSource(mediaItem, maybeClipMediaSource(mediaItem, mediaSourceCreateMediaSource));
    }

    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory experimentalUseProgressiveMediaSourceForSubtitles(boolean z) {
        this.useProgressiveMediaSourceForSubtitles = z;
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public int[] getSupportedTypes() {
        return this.delegateFactoryLoader.getSupportedTypes();
    }

    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory setAdViewProvider(com.google.android.exoplayer2.ui.AdViewProvider adViewProvider) {
        this.adViewProvider = adViewProvider;
        return this;
    }

    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory setAdsLoaderProvider(com.google.android.exoplayer2.source.DefaultMediaSourceFactory.AdsLoaderProvider adsLoaderProvider) {
        this.adsLoaderProvider = adsLoaderProvider;
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory setDrmHttpDataSourceFactory(com.google.android.exoplayer2.upstream.HttpDataSource.Factory factory) {
        this.delegateFactoryLoader.setDrmHttpDataSourceFactory(factory);
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory setDrmSessionManager(com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager) {
        this.delegateFactoryLoader.setDrmSessionManager(drmSessionManager);
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory setDrmSessionManagerProvider(com.google.android.exoplayer2.drm.DrmSessionManagerProvider drmSessionManagerProvider) {
        this.delegateFactoryLoader.setDrmSessionManagerProvider(drmSessionManagerProvider);
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory setDrmUserAgent(java.lang.String str) {
        this.delegateFactoryLoader.setDrmUserAgent(str);
        return this;
    }

    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory setLiveMaxOffsetMs(long j) {
        this.liveMaxOffsetMs = j;
        return this;
    }

    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory setLiveMaxSpeed(float f2) {
        this.liveMaxSpeed = f2;
        return this;
    }

    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory setLiveMinOffsetMs(long j) {
        this.liveMinOffsetMs = j;
        return this;
    }

    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory setLiveMinSpeed(float f2) {
        this.liveMinSpeed = f2;
        return this;
    }

    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory setLiveTargetOffsetMs(long j) {
        this.liveTargetOffsetMs = j;
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory setLoadErrorHandlingPolicy(com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.delegateFactoryLoader.setLoadErrorHandlingPolicy(loadErrorHandlingPolicy);
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    @java.lang.Deprecated
    public com.google.android.exoplayer2.source.DefaultMediaSourceFactory setStreamKeys(java.util.List<com.google.android.exoplayer2.offline.StreamKey> list) {
        this.delegateFactoryLoader.setStreamKeys(list);
        return this;
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceFactory
    @java.lang.Deprecated
    public /* bridge */ /* synthetic */ com.google.android.exoplayer2.source.MediaSourceFactory setStreamKeys(java.util.List list) {
        return setStreamKeys((java.util.List<com.google.android.exoplayer2.offline.StreamKey>) list);
    }
}
