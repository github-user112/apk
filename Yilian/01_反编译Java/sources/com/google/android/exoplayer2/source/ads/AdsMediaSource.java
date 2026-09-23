package com.google.android.exoplayer2.source.ads;

/* loaded from: classes.dex */
public final class AdsMediaSource extends com.google.android.exoplayer2.source.CompositeMediaSource<com.google.android.exoplayer2.source.MediaSource.MediaPeriodId> {
    public static final com.google.android.exoplayer2.source.MediaSource.MediaPeriodId CHILD_SOURCE_MEDIA_PERIOD_ID = new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(new java.lang.Object());
    public final com.google.android.exoplayer2.source.MediaSourceFactory adMediaSourceFactory;
    public com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState;
    public final com.google.android.exoplayer2.upstream.DataSpec adTagDataSpec;
    public final com.google.android.exoplayer2.ui.AdViewProvider adViewProvider;
    public final java.lang.Object adsId;
    public final com.google.android.exoplayer2.source.ads.AdsLoader adsLoader;
    public com.google.android.exoplayer2.source.ads.AdsMediaSource.ComponentListener componentListener;
    public final com.google.android.exoplayer2.source.MediaSource contentMediaSource;
    public com.google.android.exoplayer2.Timeline contentTimeline;
    public final android.os.Handler mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
    public final com.google.android.exoplayer2.Timeline.Period period = new com.google.android.exoplayer2.Timeline.Period();
    public com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder[][] adMediaSourceHolders = new com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder[0][];

    public static final class AdLoadException extends java.io.IOException {
        public static final int TYPE_AD = 0;
        public static final int TYPE_AD_GROUP = 1;
        public static final int TYPE_ALL_ADS = 2;
        public static final int TYPE_UNEXPECTED = 3;
        public final int type;

        @java.lang.annotation.Documented
        @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
        public @interface Type {
        }

        public AdLoadException(int i, java.lang.Exception exc) {
            super(exc);
            this.type = i;
        }

        public static com.google.android.exoplayer2.source.ads.AdsMediaSource.AdLoadException createForAd(java.lang.Exception exc) {
            return new com.google.android.exoplayer2.source.ads.AdsMediaSource.AdLoadException(0, exc);
        }

        public static com.google.android.exoplayer2.source.ads.AdsMediaSource.AdLoadException createForAdGroup(java.lang.Exception exc, int i) {
            return new com.google.android.exoplayer2.source.ads.AdsMediaSource.AdLoadException(1, new java.io.IOException(e.a.c.a.a.F(35, "Failed to load ad group ", i), exc));
        }

        public static com.google.android.exoplayer2.source.ads.AdsMediaSource.AdLoadException createForAllAds(java.lang.Exception exc) {
            return new com.google.android.exoplayer2.source.ads.AdsMediaSource.AdLoadException(2, exc);
        }

        public static com.google.android.exoplayer2.source.ads.AdsMediaSource.AdLoadException createForUnexpected(java.lang.RuntimeException runtimeException) {
            return new com.google.android.exoplayer2.source.ads.AdsMediaSource.AdLoadException(3, runtimeException);
        }

        public java.lang.RuntimeException getRuntimeExceptionForUnexpected() {
            com.google.android.exoplayer2.util.Assertions.checkState(this.type == 3);
            return (java.lang.RuntimeException) com.google.android.exoplayer2.util.Assertions.checkNotNull(getCause());
        }
    }

    public final class AdMediaSourceHolder {
        public final java.util.List<com.google.android.exoplayer2.source.MaskingMediaPeriod> activeMediaPeriods = new java.util.ArrayList();
        public com.google.android.exoplayer2.source.MediaSource adMediaSource;
        public android.net.Uri adUri;
        public final com.google.android.exoplayer2.source.MediaSource.MediaPeriodId id;
        public com.google.android.exoplayer2.Timeline timeline;

        public AdMediaSourceHolder(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            this.id = mediaPeriodId;
        }

        public com.google.android.exoplayer2.source.MediaPeriod createMediaPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
            com.google.android.exoplayer2.source.MaskingMediaPeriod maskingMediaPeriod = new com.google.android.exoplayer2.source.MaskingMediaPeriod(mediaPeriodId, allocator, j);
            this.activeMediaPeriods.add(maskingMediaPeriod);
            com.google.android.exoplayer2.source.MediaSource mediaSource = this.adMediaSource;
            if (mediaSource != null) {
                maskingMediaPeriod.setMediaSource(mediaSource);
                maskingMediaPeriod.setPrepareListener(com.google.android.exoplayer2.source.ads.AdsMediaSource.this.new AdPrepareListener((android.net.Uri) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.adUri)));
            }
            com.google.android.exoplayer2.Timeline timeline = this.timeline;
            if (timeline != null) {
                maskingMediaPeriod.createPeriod(new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(timeline.getUidOfPeriod(0), mediaPeriodId.windowSequenceNumber));
            }
            return maskingMediaPeriod;
        }

        public long getDurationUs() {
            com.google.android.exoplayer2.Timeline timeline = this.timeline;
            return timeline == null ? com.google.android.exoplayer2.C.TIME_UNSET : timeline.getPeriod(0, com.google.android.exoplayer2.source.ads.AdsMediaSource.this.period).getDurationUs();
        }

        public void handleSourceInfoRefresh(com.google.android.exoplayer2.Timeline timeline) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(timeline.getPeriodCount() == 1);
            if (this.timeline == null) {
                java.lang.Object uidOfPeriod = timeline.getUidOfPeriod(0);
                for (int i = 0; i < this.activeMediaPeriods.size(); i++) {
                    com.google.android.exoplayer2.source.MaskingMediaPeriod maskingMediaPeriod = this.activeMediaPeriods.get(i);
                    maskingMediaPeriod.createPeriod(new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(uidOfPeriod, maskingMediaPeriod.id.windowSequenceNumber));
                }
            }
            this.timeline = timeline;
        }

        public boolean hasMediaSource() {
            return this.adMediaSource != null;
        }

        public void initializeWithMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, android.net.Uri uri) {
            this.adMediaSource = mediaSource;
            this.adUri = uri;
            for (int i = 0; i < this.activeMediaPeriods.size(); i++) {
                com.google.android.exoplayer2.source.MaskingMediaPeriod maskingMediaPeriod = this.activeMediaPeriods.get(i);
                maskingMediaPeriod.setMediaSource(mediaSource);
                maskingMediaPeriod.setPrepareListener(com.google.android.exoplayer2.source.ads.AdsMediaSource.this.new AdPrepareListener(uri));
            }
            com.google.android.exoplayer2.source.ads.AdsMediaSource.this.prepareChildSource(this.id, mediaSource);
        }

        public boolean isInactive() {
            return this.activeMediaPeriods.isEmpty();
        }

        public void release() {
            if (hasMediaSource()) {
                com.google.android.exoplayer2.source.ads.AdsMediaSource.this.releaseChildSource(this.id);
            }
        }

        public void releaseMediaPeriod(com.google.android.exoplayer2.source.MaskingMediaPeriod maskingMediaPeriod) {
            this.activeMediaPeriods.remove(maskingMediaPeriod);
            maskingMediaPeriod.releasePeriod();
        }
    }

    public final class AdPrepareListener implements com.google.android.exoplayer2.source.MaskingMediaPeriod.PrepareListener {
        public final android.net.Uri adUri;

        public AdPrepareListener(android.net.Uri uri) {
            this.adUri = uri;
        }

        public /* synthetic */ void a(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            com.google.android.exoplayer2.source.ads.AdsMediaSource.this.adsLoader.handlePrepareComplete(com.google.android.exoplayer2.source.ads.AdsMediaSource.this, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
        }

        public /* synthetic */ void b(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, java.io.IOException iOException) {
            com.google.android.exoplayer2.source.ads.AdsMediaSource.this.adsLoader.handlePrepareError(com.google.android.exoplayer2.source.ads.AdsMediaSource.this, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, iOException);
        }

        @Override // com.google.android.exoplayer2.source.MaskingMediaPeriod.PrepareListener
        public void onPrepareComplete(final com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            com.google.android.exoplayer2.source.ads.AdsMediaSource.this.mainHandler.post(new java.lang.Runnable() { // from class: e.c.a.a.n2.d0.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(mediaPeriodId);
                }
            });
        }

        @Override // com.google.android.exoplayer2.source.MaskingMediaPeriod.PrepareListener
        public void onPrepareError(final com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, final java.io.IOException iOException) {
            com.google.android.exoplayer2.source.ads.AdsMediaSource.this.createEventDispatcher(mediaPeriodId).loadError(new com.google.android.exoplayer2.source.LoadEventInfo(com.google.android.exoplayer2.source.LoadEventInfo.getNewId(), new com.google.android.exoplayer2.upstream.DataSpec(this.adUri), android.os.SystemClock.elapsedRealtime()), 6, (java.io.IOException) com.google.android.exoplayer2.source.ads.AdsMediaSource.AdLoadException.createForAd(iOException), true);
            com.google.android.exoplayer2.source.ads.AdsMediaSource.this.mainHandler.post(new java.lang.Runnable() { // from class: e.c.a.a.n2.d0.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.b(mediaPeriodId, iOException);
                }
            });
        }
    }

    public final class ComponentListener implements com.google.android.exoplayer2.source.ads.AdsLoader.EventListener {
        public final android.os.Handler playerHandler = com.google.android.exoplayer2.util.Util.createHandlerForCurrentLooper();
        public volatile boolean stopped;

        public ComponentListener() {
        }

        public /* synthetic */ void a(com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
            if (this.stopped) {
                return;
            }
            com.google.android.exoplayer2.source.ads.AdsMediaSource.this.onAdPlaybackState(adPlaybackState);
        }

        @Override // com.google.android.exoplayer2.source.ads.AdsLoader.EventListener
        public /* synthetic */ void onAdClicked() {
            e.c.a.a.n2.d0.i.$default$onAdClicked(this);
        }

        @Override // com.google.android.exoplayer2.source.ads.AdsLoader.EventListener
        public void onAdLoadError(com.google.android.exoplayer2.source.ads.AdsMediaSource.AdLoadException adLoadException, com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
            if (this.stopped) {
                return;
            }
            com.google.android.exoplayer2.source.ads.AdsMediaSource.this.createEventDispatcher(null).loadError(new com.google.android.exoplayer2.source.LoadEventInfo(com.google.android.exoplayer2.source.LoadEventInfo.getNewId(), dataSpec, android.os.SystemClock.elapsedRealtime()), 6, (java.io.IOException) adLoadException, true);
        }

        @Override // com.google.android.exoplayer2.source.ads.AdsLoader.EventListener
        public void onAdPlaybackState(final com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
            if (this.stopped) {
                return;
            }
            this.playerHandler.post(new java.lang.Runnable() { // from class: e.c.a.a.n2.d0.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(adPlaybackState);
                }
            });
        }

        @Override // com.google.android.exoplayer2.source.ads.AdsLoader.EventListener
        public /* synthetic */ void onAdTapped() {
            e.c.a.a.n2.d0.i.$default$onAdTapped(this);
        }

        public void stop() {
            this.stopped = true;
            this.playerHandler.removeCallbacksAndMessages(null);
        }
    }

    public AdsMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, java.lang.Object obj, com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory, com.google.android.exoplayer2.source.ads.AdsLoader adsLoader, com.google.android.exoplayer2.ui.AdViewProvider adViewProvider) {
        this.contentMediaSource = mediaSource;
        this.adMediaSourceFactory = mediaSourceFactory;
        this.adsLoader = adsLoader;
        this.adViewProvider = adViewProvider;
        this.adTagDataSpec = dataSpec;
        this.adsId = obj;
        adsLoader.setSupportedContentTypes(mediaSourceFactory.getSupportedTypes());
    }

    private long[][] getAdDurationsUs() {
        long[][] jArr = new long[this.adMediaSourceHolders.length][];
        int i = 0;
        while (true) {
            com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder[][] adMediaSourceHolderArr = this.adMediaSourceHolders;
            if (i >= adMediaSourceHolderArr.length) {
                return jArr;
            }
            jArr[i] = new long[adMediaSourceHolderArr[i].length];
            int i2 = 0;
            while (true) {
                com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder[][] adMediaSourceHolderArr2 = this.adMediaSourceHolders;
                if (i2 < adMediaSourceHolderArr2[i].length) {
                    com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder adMediaSourceHolder = adMediaSourceHolderArr2[i][i2];
                    jArr[i][i2] = adMediaSourceHolder == null ? com.google.android.exoplayer2.C.TIME_UNSET : adMediaSourceHolder.getDurationUs();
                    i2++;
                }
            }
            i++;
        }
    }

    private void maybeUpdateAdMediaSources() {
        android.net.Uri uri;
        com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState = this.adPlaybackState;
        if (adPlaybackState == null) {
            return;
        }
        for (int i = 0; i < this.adMediaSourceHolders.length; i++) {
            int i2 = 0;
            while (true) {
                com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder[][] adMediaSourceHolderArr = this.adMediaSourceHolders;
                if (i2 < adMediaSourceHolderArr[i].length) {
                    com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder adMediaSourceHolder = adMediaSourceHolderArr[i][i2];
                    com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i);
                    if (adMediaSourceHolder != null && !adMediaSourceHolder.hasMediaSource()) {
                        android.net.Uri[] uriArr = adGroup.uris;
                        if (i2 < uriArr.length && (uri = uriArr[i2]) != null) {
                            com.google.android.exoplayer2.MediaItem.Builder uri2 = new com.google.android.exoplayer2.MediaItem.Builder().setUri(uri);
                            com.google.android.exoplayer2.MediaItem.LocalConfiguration localConfiguration = this.contentMediaSource.getMediaItem().localConfiguration;
                            if (localConfiguration != null) {
                                uri2.setDrmConfiguration(localConfiguration.drmConfiguration);
                            }
                            adMediaSourceHolder.initializeWithMediaSource(this.adMediaSourceFactory.createMediaSource(uri2.build()), uri);
                        }
                    }
                    i2++;
                }
            }
        }
    }

    private void maybeUpdateSourceInfo() {
        com.google.android.exoplayer2.Timeline timeline = this.contentTimeline;
        com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState = this.adPlaybackState;
        if (adPlaybackState == null || timeline == null) {
            return;
        }
        if (adPlaybackState.adGroupCount == 0) {
            refreshSourceInfo(timeline);
        } else {
            this.adPlaybackState = adPlaybackState.withAdDurationsUs(getAdDurationsUs());
            refreshSourceInfo(new com.google.android.exoplayer2.source.ads.SinglePeriodAdTimeline(timeline, this.adPlaybackState));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onAdPlaybackState(com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState2 = this.adPlaybackState;
        if (adPlaybackState2 == null) {
            com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder[][] adMediaSourceHolderArr = new com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder[adPlaybackState.adGroupCount][];
            this.adMediaSourceHolders = adMediaSourceHolderArr;
            java.util.Arrays.fill(adMediaSourceHolderArr, new com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder[0]);
        } else {
            com.google.android.exoplayer2.util.Assertions.checkState(adPlaybackState.adGroupCount == adPlaybackState2.adGroupCount);
        }
        this.adPlaybackState = adPlaybackState;
        maybeUpdateAdMediaSources();
        maybeUpdateSourceInfo();
    }

    public /* synthetic */ void b(com.google.android.exoplayer2.source.ads.AdsMediaSource.ComponentListener componentListener) {
        this.adsLoader.start(this, this.adTagDataSpec, this.adsId, this.adViewProvider, componentListener);
    }

    public /* synthetic */ void c(com.google.android.exoplayer2.source.ads.AdsMediaSource.ComponentListener componentListener) {
        this.adsLoader.stop(this, componentListener);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        if (((com.google.android.exoplayer2.source.ads.AdPlaybackState) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.adPlaybackState)).adGroupCount <= 0 || !mediaPeriodId.isAd()) {
            com.google.android.exoplayer2.source.MaskingMediaPeriod maskingMediaPeriod = new com.google.android.exoplayer2.source.MaskingMediaPeriod(mediaPeriodId, allocator, j);
            maskingMediaPeriod.setMediaSource(this.contentMediaSource);
            maskingMediaPeriod.createPeriod(mediaPeriodId);
            return maskingMediaPeriod;
        }
        int i = mediaPeriodId.adGroupIndex;
        int i2 = mediaPeriodId.adIndexInAdGroup;
        com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder[][] adMediaSourceHolderArr = this.adMediaSourceHolders;
        if (adMediaSourceHolderArr[i].length <= i2) {
            adMediaSourceHolderArr[i] = (com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder[]) java.util.Arrays.copyOf(adMediaSourceHolderArr[i], i2 + 1);
        }
        com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder adMediaSourceHolder = this.adMediaSourceHolders[i][i2];
        if (adMediaSourceHolder == null) {
            adMediaSourceHolder = new com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder(mediaPeriodId);
            this.adMediaSourceHolders[i][i2] = adMediaSourceHolder;
            maybeUpdateAdMediaSources();
        }
        return adMediaSourceHolder.createMediaPeriod(mediaPeriodId, allocator, j);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.MediaItem getMediaItem() {
        return this.contentMediaSource.getMediaItem();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId2) {
        return mediaPeriodId.isAd() ? mediaPeriodId : mediaPeriodId2;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public void a(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.Timeline timeline) {
        if (mediaPeriodId.isAd()) {
            ((com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.adMediaSourceHolders[mediaPeriodId.adGroupIndex][mediaPeriodId.adIndexInAdGroup])).handleSourceInfoRefresh(timeline);
        } else {
            com.google.android.exoplayer2.util.Assertions.checkArgument(timeline.getPeriodCount() == 1);
            this.contentTimeline = timeline;
        }
        maybeUpdateSourceInfo();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        final com.google.android.exoplayer2.source.ads.AdsMediaSource.ComponentListener componentListener = new com.google.android.exoplayer2.source.ads.AdsMediaSource.ComponentListener();
        this.componentListener = componentListener;
        prepareChildSource(CHILD_SOURCE_MEDIA_PERIOD_ID, this.contentMediaSource);
        this.mainHandler.post(new java.lang.Runnable() { // from class: e.c.a.a.n2.d0.e
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b(componentListener);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        com.google.android.exoplayer2.source.MaskingMediaPeriod maskingMediaPeriod = (com.google.android.exoplayer2.source.MaskingMediaPeriod) mediaPeriod;
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = maskingMediaPeriod.id;
        if (!mediaPeriodId.isAd()) {
            maskingMediaPeriod.releasePeriod();
            return;
        }
        com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder adMediaSourceHolder = (com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.adMediaSourceHolders[mediaPeriodId.adGroupIndex][mediaPeriodId.adIndexInAdGroup]);
        adMediaSourceHolder.releaseMediaPeriod(maskingMediaPeriod);
        if (adMediaSourceHolder.isInactive()) {
            adMediaSourceHolder.release();
            this.adMediaSourceHolders[mediaPeriodId.adGroupIndex][mediaPeriodId.adIndexInAdGroup] = null;
        }
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        final com.google.android.exoplayer2.source.ads.AdsMediaSource.ComponentListener componentListener = (com.google.android.exoplayer2.source.ads.AdsMediaSource.ComponentListener) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.componentListener);
        this.componentListener = null;
        componentListener.stop();
        this.contentTimeline = null;
        this.adPlaybackState = null;
        this.adMediaSourceHolders = new com.google.android.exoplayer2.source.ads.AdsMediaSource.AdMediaSourceHolder[0][];
        this.mainHandler.post(new java.lang.Runnable() { // from class: e.c.a.a.n2.d0.a
            @Override // java.lang.Runnable
            public final void run() {
                this.a.c(componentListener);
            }
        });
    }
}
