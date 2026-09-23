package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class ExoPlayerImpl extends com.google.android.exoplayer2.BasePlayer {
    public static final java.lang.String TAG = "ExoPlayerImpl";
    public final com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector;
    public final android.os.Looper applicationLooper;
    public final java.util.concurrent.CopyOnWriteArraySet<com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener> audioOffloadListeners;
    public com.google.android.exoplayer2.Player.Commands availableCommands;
    public final com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter;
    public final com.google.android.exoplayer2.util.Clock clock;
    public final com.google.android.exoplayer2.trackselection.TrackSelectorResult emptyTrackSelectorResult;
    public boolean foregroundMode;
    public final com.google.android.exoplayer2.ExoPlayerImplInternal internalPlayer;
    public final com.google.android.exoplayer2.util.ListenerSet<com.google.android.exoplayer2.Player.EventListener> listeners;
    public int maskingPeriodIndex;
    public int maskingWindowIndex;
    public long maskingWindowPositionMs;
    public com.google.android.exoplayer2.MediaMetadata mediaMetadata;
    public final com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory;
    public final java.util.List<com.google.android.exoplayer2.ExoPlayerImpl.MediaSourceHolderSnapshot> mediaSourceHolderSnapshots;
    public boolean pauseAtEndOfMediaItems;
    public boolean pendingDiscontinuity;
    public int pendingDiscontinuityReason;
    public int pendingOperationAcks;
    public int pendingPlayWhenReadyChangeReason;
    public final com.google.android.exoplayer2.Timeline.Period period;
    public final com.google.android.exoplayer2.Player.Commands permanentAvailableCommands;
    public com.google.android.exoplayer2.PlaybackInfo playbackInfo;
    public final com.google.android.exoplayer2.util.HandlerWrapper playbackInfoUpdateHandler;
    public final com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdateListener playbackInfoUpdateListener;
    public com.google.android.exoplayer2.MediaMetadata playlistMetadata;
    public final com.google.android.exoplayer2.Renderer[] renderers;
    public int repeatMode;
    public final long seekBackIncrementMs;
    public final long seekForwardIncrementMs;
    public com.google.android.exoplayer2.SeekParameters seekParameters;
    public boolean shuffleModeEnabled;
    public com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder;
    public com.google.android.exoplayer2.MediaMetadata staticAndDynamicMediaMetadata;
    public final com.google.android.exoplayer2.trackselection.TrackSelector trackSelector;
    public final boolean useLazyPreparation;

    public static final class MediaSourceHolderSnapshot implements com.google.android.exoplayer2.MediaSourceInfoHolder {
        public com.google.android.exoplayer2.Timeline timeline;
        public final java.lang.Object uid;

        public MediaSourceHolderSnapshot(java.lang.Object obj, com.google.android.exoplayer2.Timeline timeline) {
            this.uid = obj;
            this.timeline = timeline;
        }

        @Override // com.google.android.exoplayer2.MediaSourceInfoHolder
        public com.google.android.exoplayer2.Timeline getTimeline() {
            return this.timeline;
        }

        @Override // com.google.android.exoplayer2.MediaSourceInfoHolder
        public java.lang.Object getUid() {
            return this.uid;
        }
    }

    static {
        com.google.android.exoplayer2.ExoPlayerLibraryInfo.registerModule("goog.exo.exoplayer");
    }

    @android.annotation.SuppressLint({"HandlerLeak"})
    public ExoPlayerImpl(com.google.android.exoplayer2.Renderer[] rendererArr, com.google.android.exoplayer2.trackselection.TrackSelector trackSelector, com.google.android.exoplayer2.source.MediaSourceFactory mediaSourceFactory, com.google.android.exoplayer2.LoadControl loadControl, com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter, com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector, boolean z, com.google.android.exoplayer2.SeekParameters seekParameters, long j, long j2, com.google.android.exoplayer2.LivePlaybackSpeedControl livePlaybackSpeedControl, long j3, boolean z2, com.google.android.exoplayer2.util.Clock clock, android.os.Looper looper, com.google.android.exoplayer2.Player player, com.google.android.exoplayer2.Player.Commands commands) {
        java.lang.String hexString = java.lang.Integer.toHexString(java.lang.System.identityHashCode(this));
        java.lang.String str = com.google.android.exoplayer2.util.Util.DEVICE_DEBUG_INFO;
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(str, e.a.c.a.a.m(hexString, 30)), "Init ", hexString, " [", com.google.android.exoplayer2.ExoPlayerLibraryInfo.VERSION_SLASHY);
        sbL.append("] [");
        sbL.append(str);
        sbL.append("]");
        com.google.android.exoplayer2.util.Log.i(TAG, sbL.toString());
        com.google.android.exoplayer2.util.Assertions.checkState(rendererArr.length > 0);
        this.renderers = (com.google.android.exoplayer2.Renderer[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(rendererArr);
        this.trackSelector = (com.google.android.exoplayer2.trackselection.TrackSelector) com.google.android.exoplayer2.util.Assertions.checkNotNull(trackSelector);
        this.mediaSourceFactory = mediaSourceFactory;
        this.bandwidthMeter = bandwidthMeter;
        this.analyticsCollector = analyticsCollector;
        this.useLazyPreparation = z;
        this.seekParameters = seekParameters;
        this.seekBackIncrementMs = j;
        this.seekForwardIncrementMs = j2;
        this.pauseAtEndOfMediaItems = z2;
        this.applicationLooper = looper;
        this.clock = clock;
        this.repeatMode = 0;
        final com.google.android.exoplayer2.Player player2 = player != null ? player : this;
        this.listeners = new com.google.android.exoplayer2.util.ListenerSet<>(looper, clock, new com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent() { // from class: e.c.a.a.n0
            @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
            public final void invoke(java.lang.Object obj, com.google.android.exoplayer2.util.FlagSet flagSet) {
                ((com.google.android.exoplayer2.Player.EventListener) obj).onEvents(player2, new com.google.android.exoplayer2.Player.Events(flagSet));
            }
        });
        this.audioOffloadListeners = new java.util.concurrent.CopyOnWriteArraySet<>();
        this.mediaSourceHolderSnapshots = new java.util.ArrayList();
        this.shuffleOrder = new com.google.android.exoplayer2.source.ShuffleOrder.DefaultShuffleOrder(0);
        this.emptyTrackSelectorResult = new com.google.android.exoplayer2.trackselection.TrackSelectorResult(new com.google.android.exoplayer2.RendererConfiguration[rendererArr.length], new com.google.android.exoplayer2.trackselection.ExoTrackSelection[rendererArr.length], com.google.android.exoplayer2.TracksInfo.EMPTY, null);
        this.period = new com.google.android.exoplayer2.Timeline.Period();
        this.permanentAvailableCommands = new com.google.android.exoplayer2.Player.Commands.Builder().addAll(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 20, 30).addIf(29, trackSelector.isSetParametersSupported()).addAll(commands).build();
        this.availableCommands = new com.google.android.exoplayer2.Player.Commands.Builder().addAll(this.permanentAvailableCommands).add(4).add(10).build();
        com.google.android.exoplayer2.MediaMetadata mediaMetadata = com.google.android.exoplayer2.MediaMetadata.EMPTY;
        this.mediaMetadata = mediaMetadata;
        this.playlistMetadata = mediaMetadata;
        this.staticAndDynamicMediaMetadata = mediaMetadata;
        this.maskingWindowIndex = -1;
        this.playbackInfoUpdateHandler = clock.createHandler(looper, null);
        this.playbackInfoUpdateListener = new com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdateListener() { // from class: e.c.a.a.i0
            @Override // com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdateListener
            public final void onPlaybackInfoUpdate(com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
                this.a.c(playbackInfoUpdate);
            }
        };
        this.playbackInfo = com.google.android.exoplayer2.PlaybackInfo.createDummy(this.emptyTrackSelectorResult);
        if (analyticsCollector != null) {
            analyticsCollector.setPlayer(player2, looper);
            addListener(analyticsCollector);
            bandwidthMeter.addEventListener(new android.os.Handler(looper), analyticsCollector);
        }
        this.internalPlayer = new com.google.android.exoplayer2.ExoPlayerImplInternal(rendererArr, trackSelector, this.emptyTrackSelectorResult, loadControl, bandwidthMeter, this.repeatMode, this.shuffleModeEnabled, analyticsCollector, seekParameters, livePlaybackSpeedControl, j3, z2, looper, clock, this.playbackInfoUpdateListener);
    }

    private java.util.List<com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> addMediaSourceHolders(int i, java.util.List<com.google.android.exoplayer2.source.MediaSource> list) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder mediaSourceHolder = new com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder(list.get(i2), this.useLazyPreparation);
            arrayList.add(mediaSourceHolder);
            this.mediaSourceHolderSnapshots.add(i2 + i, new com.google.android.exoplayer2.ExoPlayerImpl.MediaSourceHolderSnapshot(mediaSourceHolder.uid, mediaSourceHolder.mediaSource.getTimeline()));
        }
        this.shuffleOrder = this.shuffleOrder.cloneAndInsert(i, arrayList.size());
        return arrayList;
    }

    private com.google.android.exoplayer2.MediaMetadata buildUpdatedMediaMetadata() {
        com.google.android.exoplayer2.MediaItem currentMediaItem = getCurrentMediaItem();
        return currentMediaItem == null ? this.staticAndDynamicMediaMetadata : this.staticAndDynamicMediaMetadata.buildUpon().populate(currentMediaItem.mediaMetadata).build();
    }

    private com.google.android.exoplayer2.Timeline createMaskingTimeline() {
        return new com.google.android.exoplayer2.PlaylistTimeline(this.mediaSourceHolderSnapshots, this.shuffleOrder);
    }

    private java.util.List<com.google.android.exoplayer2.source.MediaSource> createMediaSources(java.util.List<com.google.android.exoplayer2.MediaItem> list) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i = 0; i < list.size(); i++) {
            arrayList.add(this.mediaSourceFactory.createMediaSource(list.get(i)));
        }
        return arrayList;
    }

    private android.util.Pair<java.lang.Boolean, java.lang.Integer> evaluateMediaItemTransitionReason(com.google.android.exoplayer2.PlaybackInfo playbackInfo, com.google.android.exoplayer2.PlaybackInfo playbackInfo2, boolean z, int i, boolean z2) {
        com.google.android.exoplayer2.Timeline timeline = playbackInfo2.timeline;
        com.google.android.exoplayer2.Timeline timeline2 = playbackInfo.timeline;
        if (timeline2.isEmpty() && timeline.isEmpty()) {
            return new android.util.Pair<>(java.lang.Boolean.FALSE, -1);
        }
        int i2 = 3;
        if (timeline2.isEmpty() != timeline.isEmpty()) {
            return new android.util.Pair<>(java.lang.Boolean.TRUE, 3);
        }
        if (timeline.getWindow(timeline.getPeriodByUid(playbackInfo2.periodId.periodUid, this.period).windowIndex, this.window).uid.equals(timeline2.getWindow(timeline2.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex, this.window).uid)) {
            return (z && i == 0 && playbackInfo2.periodId.windowSequenceNumber < playbackInfo.periodId.windowSequenceNumber) ? new android.util.Pair<>(java.lang.Boolean.TRUE, 0) : new android.util.Pair<>(java.lang.Boolean.FALSE, -1);
        }
        if (z && i == 0) {
            i2 = 1;
        } else if (z && i == 1) {
            i2 = 2;
        } else if (!z2) {
            throw new java.lang.IllegalStateException();
        }
        return new android.util.Pair<>(java.lang.Boolean.TRUE, java.lang.Integer.valueOf(i2));
    }

    private long getCurrentPositionUsInternal(com.google.android.exoplayer2.PlaybackInfo playbackInfo) {
        return playbackInfo.timeline.isEmpty() ? com.google.android.exoplayer2.util.Util.msToUs(this.maskingWindowPositionMs) : playbackInfo.periodId.isAd() ? playbackInfo.positionUs : periodPositionUsToWindowPositionUs(playbackInfo.timeline, playbackInfo.periodId, playbackInfo.positionUs);
    }

    private int getCurrentWindowIndexInternal() {
        if (this.playbackInfo.timeline.isEmpty()) {
            return this.maskingWindowIndex;
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex;
    }

    private android.util.Pair<java.lang.Object, java.lang.Long> getPeriodPositionAfterTimelineChanged(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.Timeline timeline2) {
        long contentPosition = getContentPosition();
        if (timeline.isEmpty() || timeline2.isEmpty()) {
            boolean z = !timeline.isEmpty() && timeline2.isEmpty();
            int currentWindowIndexInternal = z ? -1 : getCurrentWindowIndexInternal();
            if (z) {
                contentPosition = -9223372036854775807L;
            }
            return getPeriodPositionOrMaskWindowPosition(timeline2, currentWindowIndexInternal, contentPosition);
        }
        android.util.Pair<java.lang.Object, java.lang.Long> periodPosition = timeline.getPeriodPosition(this.window, this.period, getCurrentMediaItemIndex(), com.google.android.exoplayer2.util.Util.msToUs(contentPosition));
        java.lang.Object obj = ((android.util.Pair) com.google.android.exoplayer2.util.Util.castNonNull(periodPosition)).first;
        if (timeline2.getIndexOfPeriod(obj) != -1) {
            return periodPosition;
        }
        java.lang.Object objResolveSubsequentPeriod = com.google.android.exoplayer2.ExoPlayerImplInternal.resolveSubsequentPeriod(this.window, this.period, this.repeatMode, this.shuffleModeEnabled, obj, timeline, timeline2);
        if (objResolveSubsequentPeriod == null) {
            return getPeriodPositionOrMaskWindowPosition(timeline2, -1, com.google.android.exoplayer2.C.TIME_UNSET);
        }
        timeline2.getPeriodByUid(objResolveSubsequentPeriod, this.period);
        int i = this.period.windowIndex;
        return getPeriodPositionOrMaskWindowPosition(timeline2, i, timeline2.getWindow(i, this.window).getDefaultPositionMs());
    }

    private android.util.Pair<java.lang.Object, java.lang.Long> getPeriodPositionOrMaskWindowPosition(com.google.android.exoplayer2.Timeline timeline, int i, long j) {
        if (timeline.isEmpty()) {
            this.maskingWindowIndex = i;
            if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
                j = 0;
            }
            this.maskingWindowPositionMs = j;
            this.maskingPeriodIndex = 0;
            return null;
        }
        if (i == -1 || i >= timeline.getWindowCount()) {
            i = timeline.getFirstWindowIndex(this.shuffleModeEnabled);
            j = timeline.getWindow(i, this.window).getDefaultPositionMs();
        }
        return timeline.getPeriodPosition(this.window, this.period, i, com.google.android.exoplayer2.util.Util.msToUs(j));
    }

    private com.google.android.exoplayer2.Player.PositionInfo getPositionInfo(long j) {
        com.google.android.exoplayer2.MediaItem mediaItem;
        java.lang.Object obj;
        int indexOfPeriod;
        int currentMediaItemIndex = getCurrentMediaItemIndex();
        java.lang.Object obj2 = null;
        if (this.playbackInfo.timeline.isEmpty()) {
            mediaItem = null;
            obj = null;
            indexOfPeriod = -1;
        } else {
            com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
            java.lang.Object obj3 = playbackInfo.periodId.periodUid;
            playbackInfo.timeline.getPeriodByUid(obj3, this.period);
            indexOfPeriod = this.playbackInfo.timeline.getIndexOfPeriod(obj3);
            obj = obj3;
            obj2 = this.playbackInfo.timeline.getWindow(currentMediaItemIndex, this.window).uid;
            mediaItem = this.window.mediaItem;
        }
        long jUsToMs = com.google.android.exoplayer2.util.Util.usToMs(j);
        long jUsToMs2 = this.playbackInfo.periodId.isAd() ? com.google.android.exoplayer2.util.Util.usToMs(getRequestedContentPositionUs(this.playbackInfo)) : jUsToMs;
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = this.playbackInfo.periodId;
        return new com.google.android.exoplayer2.Player.PositionInfo(obj2, currentMediaItemIndex, mediaItem, obj, indexOfPeriod, jUsToMs, jUsToMs2, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
    }

    private com.google.android.exoplayer2.Player.PositionInfo getPreviousPositionInfo(int i, com.google.android.exoplayer2.PlaybackInfo playbackInfo, int i2) {
        int i3;
        java.lang.Object obj;
        com.google.android.exoplayer2.MediaItem mediaItem;
        java.lang.Object obj2;
        int indexOfPeriod;
        long requestedContentPositionUs;
        long requestedContentPositionUs2;
        com.google.android.exoplayer2.Timeline.Period period = new com.google.android.exoplayer2.Timeline.Period();
        if (playbackInfo.timeline.isEmpty()) {
            i3 = i2;
            obj = null;
            mediaItem = null;
            obj2 = null;
            indexOfPeriod = -1;
        } else {
            java.lang.Object obj3 = playbackInfo.periodId.periodUid;
            playbackInfo.timeline.getPeriodByUid(obj3, period);
            int i4 = period.windowIndex;
            i3 = i4;
            obj2 = obj3;
            indexOfPeriod = playbackInfo.timeline.getIndexOfPeriod(obj3);
            obj = playbackInfo.timeline.getWindow(i4, this.window).uid;
            mediaItem = this.window.mediaItem;
        }
        if (i == 0) {
            requestedContentPositionUs2 = period.positionInWindowUs + period.durationUs;
            if (playbackInfo.periodId.isAd()) {
                com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
                requestedContentPositionUs2 = period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
                requestedContentPositionUs = getRequestedContentPositionUs(playbackInfo);
            } else {
                if (playbackInfo.periodId.nextAdGroupIndex != -1 && this.playbackInfo.periodId.isAd()) {
                    requestedContentPositionUs2 = getRequestedContentPositionUs(this.playbackInfo);
                }
                requestedContentPositionUs = requestedContentPositionUs2;
            }
        } else if (playbackInfo.periodId.isAd()) {
            requestedContentPositionUs2 = playbackInfo.positionUs;
            requestedContentPositionUs = getRequestedContentPositionUs(playbackInfo);
        } else {
            requestedContentPositionUs = period.positionInWindowUs + playbackInfo.positionUs;
            requestedContentPositionUs2 = requestedContentPositionUs;
        }
        long jUsToMs = com.google.android.exoplayer2.util.Util.usToMs(requestedContentPositionUs2);
        long jUsToMs2 = com.google.android.exoplayer2.util.Util.usToMs(requestedContentPositionUs);
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo.periodId;
        return new com.google.android.exoplayer2.Player.PositionInfo(obj, i3, mediaItem, obj2, indexOfPeriod, jUsToMs, jUsToMs2, mediaPeriodId2.adGroupIndex, mediaPeriodId2.adIndexInAdGroup);
    }

    public static long getRequestedContentPositionUs(com.google.android.exoplayer2.PlaybackInfo playbackInfo) {
        com.google.android.exoplayer2.Timeline.Window window = new com.google.android.exoplayer2.Timeline.Window();
        com.google.android.exoplayer2.Timeline.Period period = new com.google.android.exoplayer2.Timeline.Period();
        playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, period);
        return playbackInfo.requestedContentPositionUs == com.google.android.exoplayer2.C.TIME_UNSET ? playbackInfo.timeline.getWindow(period.windowIndex, window).getDefaultPositionUs() : period.getPositionInWindowUs() + playbackInfo.requestedContentPositionUs;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: handlePlaybackInfo, reason: merged with bridge method [inline-methods] */
    public void b(com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        long j;
        boolean z;
        this.pendingOperationAcks -= playbackInfoUpdate.operationAcks;
        boolean z2 = true;
        if (playbackInfoUpdate.positionDiscontinuity) {
            this.pendingDiscontinuityReason = playbackInfoUpdate.discontinuityReason;
            this.pendingDiscontinuity = true;
        }
        if (playbackInfoUpdate.hasPlayWhenReadyChangeReason) {
            this.pendingPlayWhenReadyChangeReason = playbackInfoUpdate.playWhenReadyChangeReason;
        }
        if (this.pendingOperationAcks == 0) {
            com.google.android.exoplayer2.Timeline timeline = playbackInfoUpdate.playbackInfo.timeline;
            if (!this.playbackInfo.timeline.isEmpty() && timeline.isEmpty()) {
                this.maskingWindowIndex = -1;
                this.maskingWindowPositionMs = 0L;
                this.maskingPeriodIndex = 0;
            }
            if (!timeline.isEmpty()) {
                java.util.List<com.google.android.exoplayer2.Timeline> childTimelines = ((com.google.android.exoplayer2.PlaylistTimeline) timeline).getChildTimelines();
                com.google.android.exoplayer2.util.Assertions.checkState(childTimelines.size() == this.mediaSourceHolderSnapshots.size());
                for (int i = 0; i < childTimelines.size(); i++) {
                    this.mediaSourceHolderSnapshots.get(i).timeline = childTimelines.get(i);
                }
            }
            long jPeriodPositionUsToWindowPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;
            if (this.pendingDiscontinuity) {
                if (playbackInfoUpdate.playbackInfo.periodId.equals(this.playbackInfo.periodId) && playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs == this.playbackInfo.positionUs) {
                    z2 = false;
                }
                if (z2) {
                    if (timeline.isEmpty() || playbackInfoUpdate.playbackInfo.periodId.isAd()) {
                        jPeriodPositionUsToWindowPositionUs = playbackInfoUpdate.playbackInfo.discontinuityStartPositionUs;
                    } else {
                        com.google.android.exoplayer2.PlaybackInfo playbackInfo = playbackInfoUpdate.playbackInfo;
                        jPeriodPositionUsToWindowPositionUs = periodPositionUsToWindowPositionUs(timeline, playbackInfo.periodId, playbackInfo.discontinuityStartPositionUs);
                    }
                }
                j = jPeriodPositionUsToWindowPositionUs;
                z = z2;
            } else {
                j = -9223372036854775807L;
                z = false;
            }
            this.pendingDiscontinuity = false;
            updatePlaybackInfo(playbackInfoUpdate.playbackInfo, 1, this.pendingPlayWhenReadyChangeReason, false, z, this.pendingDiscontinuityReason, j, -1);
        }
    }

    public static boolean isPlaying(com.google.android.exoplayer2.PlaybackInfo playbackInfo) {
        return playbackInfo.playbackState == 3 && playbackInfo.playWhenReady && playbackInfo.playbackSuppressionReason == 0;
    }

    public static /* synthetic */ void k(int i, com.google.android.exoplayer2.Player.PositionInfo positionInfo, com.google.android.exoplayer2.Player.PositionInfo positionInfo2, com.google.android.exoplayer2.Player.EventListener eventListener) {
        eventListener.onPositionDiscontinuity(i);
        eventListener.onPositionDiscontinuity(positionInfo, positionInfo2, i);
    }

    private com.google.android.exoplayer2.PlaybackInfo maskTimelineAndPosition(com.google.android.exoplayer2.PlaybackInfo playbackInfo, com.google.android.exoplayer2.Timeline timeline, android.util.Pair<java.lang.Object, java.lang.Long> pair) {
        long adDurationUs;
        com.google.android.exoplayer2.util.Assertions.checkArgument(timeline.isEmpty() || pair != null);
        com.google.android.exoplayer2.Timeline timeline2 = playbackInfo.timeline;
        com.google.android.exoplayer2.PlaybackInfo playbackInfoCopyWithTimeline = playbackInfo.copyWithTimeline(timeline);
        if (timeline.isEmpty()) {
            com.google.android.exoplayer2.source.MediaSource.MediaPeriodId dummyPeriodForEmptyTimeline = com.google.android.exoplayer2.PlaybackInfo.getDummyPeriodForEmptyTimeline();
            long jMsToUs = com.google.android.exoplayer2.util.Util.msToUs(this.maskingWindowPositionMs);
            com.google.android.exoplayer2.PlaybackInfo playbackInfoCopyWithLoadingMediaPeriodId = playbackInfoCopyWithTimeline.copyWithNewPosition(dummyPeriodForEmptyTimeline, jMsToUs, jMsToUs, jMsToUs, 0L, com.google.android.exoplayer2.source.TrackGroupArray.EMPTY, this.emptyTrackSelectorResult, e.c.b.b.s.p()).copyWithLoadingMediaPeriodId(dummyPeriodForEmptyTimeline);
            playbackInfoCopyWithLoadingMediaPeriodId.bufferedPositionUs = playbackInfoCopyWithLoadingMediaPeriodId.positionUs;
            return playbackInfoCopyWithLoadingMediaPeriodId;
        }
        java.lang.Object obj = playbackInfoCopyWithTimeline.periodId.periodUid;
        boolean z = !obj.equals(((android.util.Pair) com.google.android.exoplayer2.util.Util.castNonNull(pair)).first);
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = z ? new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(pair.first) : playbackInfoCopyWithTimeline.periodId;
        long jLongValue = ((java.lang.Long) pair.second).longValue();
        long jMsToUs2 = com.google.android.exoplayer2.util.Util.msToUs(getContentPosition());
        if (!timeline2.isEmpty()) {
            jMsToUs2 -= timeline2.getPeriodByUid(obj, this.period).getPositionInWindowUs();
        }
        if (z || jLongValue < jMsToUs2) {
            com.google.android.exoplayer2.util.Assertions.checkState(!mediaPeriodId.isAd());
            com.google.android.exoplayer2.PlaybackInfo playbackInfoCopyWithLoadingMediaPeriodId2 = playbackInfoCopyWithTimeline.copyWithNewPosition(mediaPeriodId, jLongValue, jLongValue, jLongValue, 0L, z ? com.google.android.exoplayer2.source.TrackGroupArray.EMPTY : playbackInfoCopyWithTimeline.trackGroups, z ? this.emptyTrackSelectorResult : playbackInfoCopyWithTimeline.trackSelectorResult, z ? e.c.b.b.s.p() : playbackInfoCopyWithTimeline.staticMetadata).copyWithLoadingMediaPeriodId(mediaPeriodId);
            playbackInfoCopyWithLoadingMediaPeriodId2.bufferedPositionUs = jLongValue;
            return playbackInfoCopyWithLoadingMediaPeriodId2;
        }
        if (jLongValue == jMsToUs2) {
            int indexOfPeriod = timeline.getIndexOfPeriod(playbackInfoCopyWithTimeline.loadingMediaPeriodId.periodUid);
            if (indexOfPeriod == -1 || timeline.getPeriod(indexOfPeriod, this.period).windowIndex != timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex) {
                timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
                adDurationUs = mediaPeriodId.isAd() ? this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup) : this.period.durationUs;
                playbackInfoCopyWithTimeline = playbackInfoCopyWithTimeline.copyWithNewPosition(mediaPeriodId, playbackInfoCopyWithTimeline.positionUs, playbackInfoCopyWithTimeline.positionUs, playbackInfoCopyWithTimeline.discontinuityStartPositionUs, adDurationUs - playbackInfoCopyWithTimeline.positionUs, playbackInfoCopyWithTimeline.trackGroups, playbackInfoCopyWithTimeline.trackSelectorResult, playbackInfoCopyWithTimeline.staticMetadata).copyWithLoadingMediaPeriodId(mediaPeriodId);
            }
            return playbackInfoCopyWithTimeline;
        }
        com.google.android.exoplayer2.util.Assertions.checkState(!mediaPeriodId.isAd());
        long jMax = java.lang.Math.max(0L, playbackInfoCopyWithTimeline.totalBufferedDurationUs - (jLongValue - jMsToUs2));
        adDurationUs = playbackInfoCopyWithTimeline.bufferedPositionUs;
        if (playbackInfoCopyWithTimeline.loadingMediaPeriodId.equals(playbackInfoCopyWithTimeline.periodId)) {
            adDurationUs = jLongValue + jMax;
        }
        playbackInfoCopyWithTimeline = playbackInfoCopyWithTimeline.copyWithNewPosition(mediaPeriodId, jLongValue, jLongValue, jLongValue, jMax, playbackInfoCopyWithTimeline.trackGroups, playbackInfoCopyWithTimeline.trackSelectorResult, playbackInfoCopyWithTimeline.staticMetadata);
        playbackInfoCopyWithTimeline.bufferedPositionUs = adDurationUs;
        return playbackInfoCopyWithTimeline;
    }

    private long periodPositionUsToWindowPositionUs(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, long j) {
        timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        return this.period.getPositionInWindowUs() + j;
    }

    public static /* synthetic */ void r(com.google.android.exoplayer2.PlaybackInfo playbackInfo, com.google.android.exoplayer2.Player.EventListener eventListener) {
        eventListener.onLoadingChanged(playbackInfo.isLoading);
        eventListener.onIsLoadingChanged(playbackInfo.isLoading);
    }

    private com.google.android.exoplayer2.PlaybackInfo removeMediaItemsInternal(int i, int i2) {
        boolean z = false;
        com.google.android.exoplayer2.util.Assertions.checkArgument(i >= 0 && i2 >= i && i2 <= this.mediaSourceHolderSnapshots.size());
        int currentMediaItemIndex = getCurrentMediaItemIndex();
        com.google.android.exoplayer2.Timeline currentTimeline = getCurrentTimeline();
        int size = this.mediaSourceHolderSnapshots.size();
        this.pendingOperationAcks++;
        removeMediaSourceHolders(i, i2);
        com.google.android.exoplayer2.Timeline timelineCreateMaskingTimeline = createMaskingTimeline();
        com.google.android.exoplayer2.PlaybackInfo playbackInfoMaskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, timelineCreateMaskingTimeline, getPeriodPositionAfterTimelineChanged(currentTimeline, timelineCreateMaskingTimeline));
        int i3 = playbackInfoMaskTimelineAndPosition.playbackState;
        if (i3 != 1 && i3 != 4 && i < i2 && i2 == size && currentMediaItemIndex >= playbackInfoMaskTimelineAndPosition.timeline.getWindowCount()) {
            z = true;
        }
        if (z) {
            playbackInfoMaskTimelineAndPosition = playbackInfoMaskTimelineAndPosition.copyWithPlaybackState(4);
        }
        this.internalPlayer.removeMediaSources(i, i2, this.shuffleOrder);
        return playbackInfoMaskTimelineAndPosition;
    }

    private void removeMediaSourceHolders(int i, int i2) {
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            this.mediaSourceHolderSnapshots.remove(i3);
        }
        this.shuffleOrder = this.shuffleOrder.cloneAndRemove(i, i2);
    }

    private void setMediaSourcesInternal(java.util.List<com.google.android.exoplayer2.source.MediaSource> list, int i, long j, boolean z) {
        int i2;
        long j2;
        int currentWindowIndexInternal = getCurrentWindowIndexInternal();
        long currentPosition = getCurrentPosition();
        this.pendingOperationAcks++;
        if (!this.mediaSourceHolderSnapshots.isEmpty()) {
            removeMediaSourceHolders(0, this.mediaSourceHolderSnapshots.size());
        }
        java.util.List<com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> listAddMediaSourceHolders = addMediaSourceHolders(0, list);
        com.google.android.exoplayer2.Timeline timelineCreateMaskingTimeline = createMaskingTimeline();
        if (!timelineCreateMaskingTimeline.isEmpty() && i >= timelineCreateMaskingTimeline.getWindowCount()) {
            throw new com.google.android.exoplayer2.IllegalSeekPositionException(timelineCreateMaskingTimeline, i, j);
        }
        if (z) {
            int firstWindowIndex = timelineCreateMaskingTimeline.getFirstWindowIndex(this.shuffleModeEnabled);
            j2 = com.google.android.exoplayer2.C.TIME_UNSET;
            i2 = firstWindowIndex;
        } else if (i == -1) {
            i2 = currentWindowIndexInternal;
            j2 = currentPosition;
        } else {
            i2 = i;
            j2 = j;
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfoMaskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, timelineCreateMaskingTimeline, getPeriodPositionOrMaskWindowPosition(timelineCreateMaskingTimeline, i2, j2));
        int i3 = playbackInfoMaskTimelineAndPosition.playbackState;
        if (i2 != -1 && i3 != 1) {
            i3 = (timelineCreateMaskingTimeline.isEmpty() || i2 >= timelineCreateMaskingTimeline.getWindowCount()) ? 4 : 2;
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfoCopyWithPlaybackState = playbackInfoMaskTimelineAndPosition.copyWithPlaybackState(i3);
        this.internalPlayer.setMediaSources(listAddMediaSourceHolders, i2, com.google.android.exoplayer2.util.Util.msToUs(j2), this.shuffleOrder);
        updatePlaybackInfo(playbackInfoCopyWithPlaybackState, 0, 1, false, (this.playbackInfo.periodId.periodUid.equals(playbackInfoCopyWithPlaybackState.periodId.periodUid) || this.playbackInfo.timeline.isEmpty()) ? false : true, 4, getCurrentPositionUsInternal(playbackInfoCopyWithPlaybackState), -1);
    }

    private void updateAvailableCommands() {
        com.google.android.exoplayer2.Player.Commands commands = this.availableCommands;
        com.google.android.exoplayer2.Player.Commands availableCommands = getAvailableCommands(this.permanentAvailableCommands);
        this.availableCommands = availableCommands;
        if (availableCommands.equals(commands)) {
            return;
        }
        this.listeners.queueEvent(13, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.l0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                this.a.j((com.google.android.exoplayer2.Player.EventListener) obj);
            }
        });
    }

    private void updatePlaybackInfo(final com.google.android.exoplayer2.PlaybackInfo playbackInfo, final int i, final int i2, boolean z, boolean z2, final int i3, long j, int i4) {
        com.google.android.exoplayer2.PlaybackInfo playbackInfo2 = this.playbackInfo;
        this.playbackInfo = playbackInfo;
        android.util.Pair<java.lang.Boolean, java.lang.Integer> pairEvaluateMediaItemTransitionReason = evaluateMediaItemTransitionReason(playbackInfo, playbackInfo2, z2, i3, !playbackInfo2.timeline.equals(playbackInfo.timeline));
        boolean zBooleanValue = ((java.lang.Boolean) pairEvaluateMediaItemTransitionReason.first).booleanValue();
        final int iIntValue = ((java.lang.Integer) pairEvaluateMediaItemTransitionReason.second).intValue();
        com.google.android.exoplayer2.MediaMetadata mediaMetadataBuildUpdatedMediaMetadata = this.mediaMetadata;
        final com.google.android.exoplayer2.MediaItem mediaItem = null;
        if (zBooleanValue) {
            if (!playbackInfo.timeline.isEmpty()) {
                mediaItem = playbackInfo.timeline.getWindow(playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period).windowIndex, this.window).mediaItem;
            }
            this.staticAndDynamicMediaMetadata = com.google.android.exoplayer2.MediaMetadata.EMPTY;
        }
        if (zBooleanValue || !playbackInfo2.staticMetadata.equals(playbackInfo.staticMetadata)) {
            this.staticAndDynamicMediaMetadata = this.staticAndDynamicMediaMetadata.buildUpon().populateFromMetadata(playbackInfo.staticMetadata).build();
            mediaMetadataBuildUpdatedMediaMetadata = buildUpdatedMediaMetadata();
        }
        boolean z3 = !mediaMetadataBuildUpdatedMediaMetadata.equals(this.mediaMetadata);
        this.mediaMetadata = mediaMetadataBuildUpdatedMediaMetadata;
        if (!playbackInfo2.timeline.equals(playbackInfo.timeline)) {
            this.listeners.queueEvent(0, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.s0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    com.google.android.exoplayer2.Player.EventListener eventListener = (com.google.android.exoplayer2.Player.EventListener) obj;
                    eventListener.onTimelineChanged(playbackInfo.timeline, i);
                }
            });
        }
        if (z2) {
            final com.google.android.exoplayer2.Player.PositionInfo previousPositionInfo = getPreviousPositionInfo(i3, playbackInfo2, i4);
            final com.google.android.exoplayer2.Player.PositionInfo positionInfo = getPositionInfo(j);
            this.listeners.queueEvent(11, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.m0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    com.google.android.exoplayer2.ExoPlayerImpl.k(i3, previousPositionInfo, positionInfo, (com.google.android.exoplayer2.Player.EventListener) obj);
                }
            });
        }
        if (zBooleanValue) {
            this.listeners.queueEvent(1, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    ((com.google.android.exoplayer2.Player.EventListener) obj).onMediaItemTransition(mediaItem, iIntValue);
                }
            });
        }
        if (playbackInfo2.playbackError != playbackInfo.playbackError) {
            this.listeners.queueEvent(10, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.w0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    ((com.google.android.exoplayer2.Player.EventListener) obj).onPlayerErrorChanged(playbackInfo.playbackError);
                }
            });
            if (playbackInfo.playbackError != null) {
                this.listeners.queueEvent(10, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.g0
                    @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                    public final void invoke(java.lang.Object obj) {
                        ((com.google.android.exoplayer2.Player.EventListener) obj).onPlayerError(playbackInfo.playbackError);
                    }
                });
            }
        }
        com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult = playbackInfo2.trackSelectorResult;
        com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult2 = playbackInfo.trackSelectorResult;
        if (trackSelectorResult != trackSelectorResult2) {
            this.trackSelector.onSelectionActivated(trackSelectorResult2.info);
            final com.google.android.exoplayer2.trackselection.TrackSelectionArray trackSelectionArray = new com.google.android.exoplayer2.trackselection.TrackSelectionArray(playbackInfo.trackSelectorResult.selections);
            this.listeners.queueEvent(2, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.a1
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    com.google.android.exoplayer2.Player.EventListener eventListener = (com.google.android.exoplayer2.Player.EventListener) obj;
                    eventListener.onTracksChanged(playbackInfo.trackGroups, trackSelectionArray);
                }
            });
            this.listeners.queueEvent(2, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.y0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    ((com.google.android.exoplayer2.Player.EventListener) obj).onTracksInfoChanged(playbackInfo.trackSelectorResult.tracksInfo);
                }
            });
        }
        if (z3) {
            final com.google.android.exoplayer2.MediaMetadata mediaMetadata = this.mediaMetadata;
            this.listeners.queueEvent(14, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.r0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    ((com.google.android.exoplayer2.Player.EventListener) obj).onMediaMetadataChanged(mediaMetadata);
                }
            });
        }
        if (playbackInfo2.isLoading != playbackInfo.isLoading) {
            this.listeners.queueEvent(3, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.o0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    com.google.android.exoplayer2.ExoPlayerImpl.r(playbackInfo, (com.google.android.exoplayer2.Player.EventListener) obj);
                }
            });
        }
        if (playbackInfo2.playbackState != playbackInfo.playbackState || playbackInfo2.playWhenReady != playbackInfo.playWhenReady) {
            this.listeners.queueEvent(-1, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.e0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    com.google.android.exoplayer2.PlaybackInfo playbackInfo3 = playbackInfo;
                    ((com.google.android.exoplayer2.Player.EventListener) obj).onPlayerStateChanged(playbackInfo3.playWhenReady, playbackInfo3.playbackState);
                }
            });
        }
        if (playbackInfo2.playbackState != playbackInfo.playbackState) {
            this.listeners.queueEvent(4, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.v0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    ((com.google.android.exoplayer2.Player.EventListener) obj).onPlaybackStateChanged(playbackInfo.playbackState);
                }
            });
        }
        if (playbackInfo2.playWhenReady != playbackInfo.playWhenReady) {
            this.listeners.queueEvent(5, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.q0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    com.google.android.exoplayer2.Player.EventListener eventListener = (com.google.android.exoplayer2.Player.EventListener) obj;
                    eventListener.onPlayWhenReadyChanged(playbackInfo.playWhenReady, i2);
                }
            });
        }
        if (playbackInfo2.playbackSuppressionReason != playbackInfo.playbackSuppressionReason) {
            this.listeners.queueEvent(6, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.k0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    ((com.google.android.exoplayer2.Player.EventListener) obj).onPlaybackSuppressionReasonChanged(playbackInfo.playbackSuppressionReason);
                }
            });
        }
        if (isPlaying(playbackInfo2) != isPlaying(playbackInfo)) {
            this.listeners.queueEvent(7, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.b1
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    ((com.google.android.exoplayer2.Player.EventListener) obj).onIsPlayingChanged(com.google.android.exoplayer2.ExoPlayerImpl.isPlaying(playbackInfo));
                }
            });
        }
        if (!playbackInfo2.playbackParameters.equals(playbackInfo.playbackParameters)) {
            this.listeners.queueEvent(12, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.h0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    ((com.google.android.exoplayer2.Player.EventListener) obj).onPlaybackParametersChanged(playbackInfo.playbackParameters);
                }
            });
        }
        if (z) {
            this.listeners.queueEvent(-1, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f1
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    ((com.google.android.exoplayer2.Player.EventListener) obj).onSeekProcessed();
                }
            });
        }
        updateAvailableCommands();
        this.listeners.flushEvents();
        if (playbackInfo2.offloadSchedulingEnabled != playbackInfo.offloadSchedulingEnabled) {
            java.util.Iterator<com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener> it = this.audioOffloadListeners.iterator();
            while (it.hasNext()) {
                it.next().onExperimentalOffloadSchedulingEnabledChanged(playbackInfo.offloadSchedulingEnabled);
            }
        }
        if (playbackInfo2.sleepingForOffload != playbackInfo.sleepingForOffload) {
            java.util.Iterator<com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener> it2 = this.audioOffloadListeners.iterator();
            while (it2.hasNext()) {
                it2.next().onExperimentalSleepingForOffloadChanged(playbackInfo.sleepingForOffload);
            }
        }
    }

    public void addAudioOffloadListener(com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener audioOffloadListener) {
        this.audioOffloadListeners.add(audioOffloadListener);
    }

    public void addEventListener(com.google.android.exoplayer2.Player.EventListener eventListener) {
        this.listeners.add(eventListener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void addListener(com.google.android.exoplayer2.Player.Listener listener) {
        addEventListener(listener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void addMediaItems(int i, java.util.List<com.google.android.exoplayer2.MediaItem> list) {
        addMediaSources(java.lang.Math.min(i, this.mediaSourceHolderSnapshots.size()), createMediaSources(list));
    }

    public void addMediaSource(int i, com.google.android.exoplayer2.source.MediaSource mediaSource) {
        addMediaSources(i, java.util.Collections.singletonList(mediaSource));
    }

    public void addMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource) {
        addMediaSources(java.util.Collections.singletonList(mediaSource));
    }

    public void addMediaSources(int i, java.util.List<com.google.android.exoplayer2.source.MediaSource> list) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i >= 0);
        com.google.android.exoplayer2.Timeline currentTimeline = getCurrentTimeline();
        this.pendingOperationAcks++;
        java.util.List<com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> listAddMediaSourceHolders = addMediaSourceHolders(i, list);
        com.google.android.exoplayer2.Timeline timelineCreateMaskingTimeline = createMaskingTimeline();
        com.google.android.exoplayer2.PlaybackInfo playbackInfoMaskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, timelineCreateMaskingTimeline, getPeriodPositionAfterTimelineChanged(currentTimeline, timelineCreateMaskingTimeline));
        this.internalPlayer.addMediaSources(i, listAddMediaSourceHolders, this.shuffleOrder);
        updatePlaybackInfo(playbackInfoMaskTimelineAndPosition, 0, 1, false, false, 5, com.google.android.exoplayer2.C.TIME_UNSET, -1);
    }

    public void addMediaSources(java.util.List<com.google.android.exoplayer2.source.MediaSource> list) {
        addMediaSources(this.mediaSourceHolderSnapshots.size(), list);
    }

    public /* synthetic */ void c(final com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate) {
        this.playbackInfoUpdateHandler.post(new java.lang.Runnable() { // from class: e.c.a.a.z0
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b(playbackInfoUpdate);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurface() {
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurface(android.view.Surface surface) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurfaceHolder(android.view.SurfaceHolder surfaceHolder) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoSurfaceView(android.view.SurfaceView surfaceView) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void clearVideoTextureView(android.view.TextureView textureView) {
    }

    public com.google.android.exoplayer2.PlayerMessage createMessage(com.google.android.exoplayer2.PlayerMessage.Target target) {
        return new com.google.android.exoplayer2.PlayerMessage(this.internalPlayer, target, this.playbackInfo.timeline, getCurrentMediaItemIndex(), this.clock, this.internalPlayer.getPlaybackLooper());
    }

    public /* synthetic */ void d(com.google.android.exoplayer2.Player.EventListener eventListener) {
        eventListener.onMediaMetadataChanged(this.mediaMetadata);
    }

    @Override // com.google.android.exoplayer2.Player
    public void decreaseDeviceVolume() {
    }

    public boolean experimentalIsSleepingForOffload() {
        return this.playbackInfo.sleepingForOffload;
    }

    public void experimentalSetForegroundModeTimeoutMs(long j) {
        this.internalPlayer.experimentalSetForegroundModeTimeoutMs(j);
    }

    public void experimentalSetOffloadSchedulingEnabled(boolean z) {
        this.internalPlayer.experimentalSetOffloadSchedulingEnabled(z);
    }

    public /* synthetic */ void f(com.google.android.exoplayer2.Player.EventListener eventListener) {
        eventListener.onPlaylistMetadataChanged(this.playlistMetadata);
    }

    @Override // com.google.android.exoplayer2.Player
    public android.os.Looper getApplicationLooper() {
        return this.applicationLooper;
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.audio.AudioAttributes getAudioAttributes() {
        return com.google.android.exoplayer2.audio.AudioAttributes.DEFAULT;
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.Player.Commands getAvailableCommands() {
        return this.availableCommands;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getBufferedPosition() {
        if (!isPlayingAd()) {
            return getContentBufferedPosition();
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.loadingMediaPeriodId.equals(playbackInfo.periodId) ? com.google.android.exoplayer2.util.Util.usToMs(this.playbackInfo.bufferedPositionUs) : getDuration();
    }

    public com.google.android.exoplayer2.util.Clock getClock() {
        return this.clock;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getContentBufferedPosition() {
        if (this.playbackInfo.timeline.isEmpty()) {
            return this.maskingWindowPositionMs;
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.loadingMediaPeriodId.windowSequenceNumber != playbackInfo.periodId.windowSequenceNumber) {
            return playbackInfo.timeline.getWindow(getCurrentMediaItemIndex(), this.window).getDurationMs();
        }
        long j = playbackInfo.bufferedPositionUs;
        if (this.playbackInfo.loadingMediaPeriodId.isAd()) {
            com.google.android.exoplayer2.PlaybackInfo playbackInfo2 = this.playbackInfo;
            com.google.android.exoplayer2.Timeline.Period periodByUid = playbackInfo2.timeline.getPeriodByUid(playbackInfo2.loadingMediaPeriodId.periodUid, this.period);
            long adGroupTimeUs = periodByUid.getAdGroupTimeUs(this.playbackInfo.loadingMediaPeriodId.adGroupIndex);
            j = adGroupTimeUs == Long.MIN_VALUE ? periodByUid.durationUs : adGroupTimeUs;
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfo3 = this.playbackInfo;
        return com.google.android.exoplayer2.util.Util.usToMs(periodPositionUsToWindowPositionUs(playbackInfo3.timeline, playbackInfo3.loadingMediaPeriodId, j));
    }

    @Override // com.google.android.exoplayer2.Player
    public long getContentPosition() {
        if (!isPlayingAd()) {
            return getCurrentPosition();
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        playbackInfo.timeline.getPeriodByUid(playbackInfo.periodId.periodUid, this.period);
        com.google.android.exoplayer2.PlaybackInfo playbackInfo2 = this.playbackInfo;
        return playbackInfo2.requestedContentPositionUs == com.google.android.exoplayer2.C.TIME_UNSET ? playbackInfo2.timeline.getWindow(getCurrentMediaItemIndex(), this.window).getDefaultPositionMs() : this.period.getPositionInWindowMs() + com.google.android.exoplayer2.util.Util.usToMs(this.playbackInfo.requestedContentPositionUs);
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdGroupIndex() {
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adGroupIndex;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentAdIndexInAdGroup() {
        if (isPlayingAd()) {
            return this.playbackInfo.periodId.adIndexInAdGroup;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.Player
    public e.c.b.b.s<com.google.android.exoplayer2.text.Cue> getCurrentCues() {
        return e.c.b.b.s.p();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentMediaItemIndex() {
        int currentWindowIndexInternal = getCurrentWindowIndexInternal();
        if (currentWindowIndexInternal == -1) {
            return 0;
        }
        return currentWindowIndexInternal;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getCurrentPeriodIndex() {
        if (this.playbackInfo.timeline.isEmpty()) {
            return this.maskingPeriodIndex;
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.timeline.getIndexOfPeriod(playbackInfo.periodId.periodUid);
    }

    @Override // com.google.android.exoplayer2.Player
    public long getCurrentPosition() {
        return com.google.android.exoplayer2.util.Util.usToMs(getCurrentPositionUsInternal(this.playbackInfo));
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.Timeline getCurrentTimeline() {
        return this.playbackInfo.timeline;
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.source.TrackGroupArray getCurrentTrackGroups() {
        return this.playbackInfo.trackGroups;
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.trackselection.TrackSelectionArray getCurrentTrackSelections() {
        return new com.google.android.exoplayer2.trackselection.TrackSelectionArray(this.playbackInfo.trackSelectorResult.selections);
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.TracksInfo getCurrentTracksInfo() {
        return this.playbackInfo.trackSelectorResult.tracksInfo;
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.DeviceInfo getDeviceInfo() {
        return com.google.android.exoplayer2.DeviceInfo.UNKNOWN;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getDeviceVolume() {
        return 0;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getDuration() {
        if (!isPlayingAd()) {
            return getContentDuration();
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
        playbackInfo.timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        return com.google.android.exoplayer2.util.Util.usToMs(this.period.getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup));
    }

    @Override // com.google.android.exoplayer2.Player
    public long getMaxSeekToPreviousPosition() {
        return com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS;
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.MediaMetadata getMediaMetadata() {
        return this.mediaMetadata;
    }

    public boolean getPauseAtEndOfMediaItems() {
        return this.pauseAtEndOfMediaItems;
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean getPlayWhenReady() {
        return this.playbackInfo.playWhenReady;
    }

    public android.os.Looper getPlaybackLooper() {
        return this.internalPlayer.getPlaybackLooper();
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.PlaybackParameters getPlaybackParameters() {
        return this.playbackInfo.playbackParameters;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getPlaybackState() {
        return this.playbackInfo.playbackState;
    }

    @Override // com.google.android.exoplayer2.Player
    public int getPlaybackSuppressionReason() {
        return this.playbackInfo.playbackSuppressionReason;
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.ExoPlaybackException getPlayerError() {
        return this.playbackInfo.playbackError;
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.MediaMetadata getPlaylistMetadata() {
        return this.playlistMetadata;
    }

    public int getRendererCount() {
        return this.renderers.length;
    }

    public int getRendererType(int i) {
        return this.renderers[i].getTrackType();
    }

    @Override // com.google.android.exoplayer2.Player
    public int getRepeatMode() {
        return this.repeatMode;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getSeekBackIncrement() {
        return this.seekBackIncrementMs;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getSeekForwardIncrement() {
        return this.seekForwardIncrementMs;
    }

    public com.google.android.exoplayer2.SeekParameters getSeekParameters() {
        return this.seekParameters;
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean getShuffleModeEnabled() {
        return this.shuffleModeEnabled;
    }

    @Override // com.google.android.exoplayer2.Player
    public long getTotalBufferedDuration() {
        return com.google.android.exoplayer2.util.Util.usToMs(this.playbackInfo.totalBufferedDurationUs);
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.trackselection.TrackSelectionParameters getTrackSelectionParameters() {
        return this.trackSelector.getParameters();
    }

    public com.google.android.exoplayer2.trackselection.TrackSelector getTrackSelector() {
        return this.trackSelector;
    }

    @Override // com.google.android.exoplayer2.Player
    public com.google.android.exoplayer2.video.VideoSize getVideoSize() {
        return com.google.android.exoplayer2.video.VideoSize.UNKNOWN;
    }

    @Override // com.google.android.exoplayer2.Player
    public float getVolume() {
        return 1.0f;
    }

    @Override // com.google.android.exoplayer2.Player
    public void increaseDeviceVolume() {
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isDeviceMuted() {
        return false;
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isLoading() {
        return this.playbackInfo.isLoading;
    }

    @Override // com.google.android.exoplayer2.Player
    public boolean isPlayingAd() {
        return this.playbackInfo.periodId.isAd();
    }

    public /* synthetic */ void j(com.google.android.exoplayer2.Player.EventListener eventListener) {
        eventListener.onAvailableCommandsChanged(this.availableCommands);
    }

    @Override // com.google.android.exoplayer2.Player
    public void moveMediaItems(int i, int i2, int i3) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i >= 0 && i <= i2 && i2 <= this.mediaSourceHolderSnapshots.size() && i3 >= 0);
        com.google.android.exoplayer2.Timeline currentTimeline = getCurrentTimeline();
        this.pendingOperationAcks++;
        int iMin = java.lang.Math.min(i3, this.mediaSourceHolderSnapshots.size() - (i2 - i));
        com.google.android.exoplayer2.util.Util.moveItems(this.mediaSourceHolderSnapshots, i, i2, iMin);
        com.google.android.exoplayer2.Timeline timelineCreateMaskingTimeline = createMaskingTimeline();
        com.google.android.exoplayer2.PlaybackInfo playbackInfoMaskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, timelineCreateMaskingTimeline, getPeriodPositionAfterTimelineChanged(currentTimeline, timelineCreateMaskingTimeline));
        this.internalPlayer.moveMediaSources(i, i2, iMin, this.shuffleOrder);
        updatePlaybackInfo(playbackInfoMaskTimelineAndPosition, 0, 1, false, false, 5, com.google.android.exoplayer2.C.TIME_UNSET, -1);
    }

    public void onMetadata(com.google.android.exoplayer2.metadata.Metadata metadata) {
        this.staticAndDynamicMediaMetadata = this.staticAndDynamicMediaMetadata.buildUpon().populateFromMetadata(metadata).build();
        com.google.android.exoplayer2.MediaMetadata mediaMetadataBuildUpdatedMediaMetadata = buildUpdatedMediaMetadata();
        if (mediaMetadataBuildUpdatedMediaMetadata.equals(this.mediaMetadata)) {
            return;
        }
        this.mediaMetadata = mediaMetadataBuildUpdatedMediaMetadata;
        this.listeners.sendEvent(14, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.u0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                this.a.d((com.google.android.exoplayer2.Player.EventListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player
    public void prepare() {
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.playbackState != 1) {
            return;
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfoCopyWithPlaybackError = playbackInfo.copyWithPlaybackError(null);
        com.google.android.exoplayer2.PlaybackInfo playbackInfoCopyWithPlaybackState = playbackInfoCopyWithPlaybackError.copyWithPlaybackState(playbackInfoCopyWithPlaybackError.timeline.isEmpty() ? 4 : 2);
        this.pendingOperationAcks++;
        this.internalPlayer.prepare();
        updatePlaybackInfo(playbackInfoCopyWithPlaybackState, 1, 1, false, false, 5, com.google.android.exoplayer2.C.TIME_UNSET, -1);
    }

    @java.lang.Deprecated
    public void prepare(com.google.android.exoplayer2.source.MediaSource mediaSource) {
        setMediaSource(mediaSource);
        prepare();
    }

    @java.lang.Deprecated
    public void prepare(com.google.android.exoplayer2.source.MediaSource mediaSource, boolean z, boolean z2) {
        setMediaSource(mediaSource, z);
        prepare();
    }

    @Override // com.google.android.exoplayer2.Player
    public void release() {
        java.lang.String hexString = java.lang.Integer.toHexString(java.lang.System.identityHashCode(this));
        java.lang.String str = com.google.android.exoplayer2.util.Util.DEVICE_DEBUG_INFO;
        java.lang.String strRegisteredModules = com.google.android.exoplayer2.ExoPlayerLibraryInfo.registeredModules();
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(strRegisteredModules, e.a.c.a.a.m(str, e.a.c.a.a.m(hexString, 36))), "Release ", hexString, " [", com.google.android.exoplayer2.ExoPlayerLibraryInfo.VERSION_SLASHY);
        e.a.c.a.a.B(sbL, "] [", str, "] [", strRegisteredModules);
        sbL.append("]");
        com.google.android.exoplayer2.util.Log.i(TAG, sbL.toString());
        if (!this.internalPlayer.release()) {
            this.listeners.sendEvent(10, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.j0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    ((com.google.android.exoplayer2.Player.EventListener) obj).onPlayerError(com.google.android.exoplayer2.ExoPlaybackException.createForUnexpected(new com.google.android.exoplayer2.ExoTimeoutException(1), 1003));
                }
            });
        }
        this.listeners.release();
        this.playbackInfoUpdateHandler.removeCallbacksAndMessages(null);
        com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector = this.analyticsCollector;
        if (analyticsCollector != null) {
            this.bandwidthMeter.removeEventListener(analyticsCollector);
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfoCopyWithPlaybackState = this.playbackInfo.copyWithPlaybackState(1);
        this.playbackInfo = playbackInfoCopyWithPlaybackState;
        com.google.android.exoplayer2.PlaybackInfo playbackInfoCopyWithLoadingMediaPeriodId = playbackInfoCopyWithPlaybackState.copyWithLoadingMediaPeriodId(playbackInfoCopyWithPlaybackState.periodId);
        this.playbackInfo = playbackInfoCopyWithLoadingMediaPeriodId;
        playbackInfoCopyWithLoadingMediaPeriodId.bufferedPositionUs = playbackInfoCopyWithLoadingMediaPeriodId.positionUs;
        this.playbackInfo.totalBufferedDurationUs = 0L;
    }

    public void removeAudioOffloadListener(com.google.android.exoplayer2.ExoPlayer.AudioOffloadListener audioOffloadListener) {
        this.audioOffloadListeners.remove(audioOffloadListener);
    }

    public void removeEventListener(com.google.android.exoplayer2.Player.EventListener eventListener) {
        this.listeners.remove(eventListener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeListener(com.google.android.exoplayer2.Player.Listener listener) {
        removeEventListener(listener);
    }

    @Override // com.google.android.exoplayer2.Player
    public void removeMediaItems(int i, int i2) {
        com.google.android.exoplayer2.PlaybackInfo playbackInfoRemoveMediaItemsInternal = removeMediaItemsInternal(i, java.lang.Math.min(i2, this.mediaSourceHolderSnapshots.size()));
        updatePlaybackInfo(playbackInfoRemoveMediaItemsInternal, 0, 1, false, !playbackInfoRemoveMediaItemsInternal.periodId.periodUid.equals(this.playbackInfo.periodId.periodUid), 4, getCurrentPositionUsInternal(playbackInfoRemoveMediaItemsInternal), -1);
    }

    @java.lang.Deprecated
    public void retry() {
        prepare();
    }

    @Override // com.google.android.exoplayer2.Player
    public void seekTo(int i, long j) {
        com.google.android.exoplayer2.Timeline timeline = this.playbackInfo.timeline;
        if (i < 0 || (!timeline.isEmpty() && i >= timeline.getWindowCount())) {
            throw new com.google.android.exoplayer2.IllegalSeekPositionException(timeline, i, j);
        }
        this.pendingOperationAcks++;
        if (isPlayingAd()) {
            com.google.android.exoplayer2.util.Log.w(TAG, "seekTo ignored because an ad is playing");
            com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate = new com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdate(this.playbackInfo);
            playbackInfoUpdate.incrementPendingOperationAcks(1);
            this.playbackInfoUpdateListener.onPlaybackInfoUpdate(playbackInfoUpdate);
            return;
        }
        int i2 = getPlaybackState() != 1 ? 2 : 1;
        int currentMediaItemIndex = getCurrentMediaItemIndex();
        com.google.android.exoplayer2.PlaybackInfo playbackInfoMaskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo.copyWithPlaybackState(i2), timeline, getPeriodPositionOrMaskWindowPosition(timeline, i, j));
        this.internalPlayer.seekTo(timeline, i, com.google.android.exoplayer2.util.Util.msToUs(j));
        updatePlaybackInfo(playbackInfoMaskTimelineAndPosition, 0, 1, true, true, 1, getCurrentPositionUsInternal(playbackInfoMaskTimelineAndPosition), currentMediaItemIndex);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setDeviceMuted(boolean z) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void setDeviceVolume(int i) {
    }

    public void setForegroundMode(boolean z) {
        if (this.foregroundMode != z) {
            this.foregroundMode = z;
            if (this.internalPlayer.setForegroundMode(z)) {
                return;
            }
            stop(false, com.google.android.exoplayer2.ExoPlaybackException.createForUnexpected(new com.google.android.exoplayer2.ExoTimeoutException(2), 1003));
        }
    }

    @Override // com.google.android.exoplayer2.Player
    public void setMediaItems(java.util.List<com.google.android.exoplayer2.MediaItem> list, int i, long j) {
        setMediaSources(createMediaSources(list), i, j);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setMediaItems(java.util.List<com.google.android.exoplayer2.MediaItem> list, boolean z) {
        setMediaSources(createMediaSources(list), z);
    }

    public void setMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource) {
        setMediaSources(java.util.Collections.singletonList(mediaSource));
    }

    public void setMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, long j) {
        setMediaSources(java.util.Collections.singletonList(mediaSource), 0, j);
    }

    public void setMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, boolean z) {
        setMediaSources(java.util.Collections.singletonList(mediaSource), z);
    }

    public void setMediaSources(java.util.List<com.google.android.exoplayer2.source.MediaSource> list) {
        setMediaSources(list, true);
    }

    public void setMediaSources(java.util.List<com.google.android.exoplayer2.source.MediaSource> list, int i, long j) {
        setMediaSourcesInternal(list, i, j, false);
    }

    public void setMediaSources(java.util.List<com.google.android.exoplayer2.source.MediaSource> list, boolean z) {
        setMediaSourcesInternal(list, -1, com.google.android.exoplayer2.C.TIME_UNSET, z);
    }

    public void setPauseAtEndOfMediaItems(boolean z) {
        if (this.pauseAtEndOfMediaItems == z) {
            return;
        }
        this.pauseAtEndOfMediaItems = z;
        this.internalPlayer.setPauseAtEndOfWindow(z);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlayWhenReady(boolean z) {
        setPlayWhenReady(z, 0, 1);
    }

    public void setPlayWhenReady(boolean z, int i, int i2) {
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.playWhenReady == z && playbackInfo.playbackSuppressionReason == i) {
            return;
        }
        this.pendingOperationAcks++;
        com.google.android.exoplayer2.PlaybackInfo playbackInfoCopyWithPlayWhenReady = this.playbackInfo.copyWithPlayWhenReady(z, i);
        this.internalPlayer.setPlayWhenReady(z, i);
        updatePlaybackInfo(playbackInfoCopyWithPlayWhenReady, 0, i2, false, false, 5, com.google.android.exoplayer2.C.TIME_UNSET, -1);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlaybackParameters(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        if (playbackParameters == null) {
            playbackParameters = com.google.android.exoplayer2.PlaybackParameters.DEFAULT;
        }
        if (this.playbackInfo.playbackParameters.equals(playbackParameters)) {
            return;
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfoCopyWithPlaybackParameters = this.playbackInfo.copyWithPlaybackParameters(playbackParameters);
        this.pendingOperationAcks++;
        this.internalPlayer.setPlaybackParameters(playbackParameters);
        updatePlaybackInfo(playbackInfoCopyWithPlaybackParameters, 0, 1, false, false, 5, com.google.android.exoplayer2.C.TIME_UNSET, -1);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setPlaylistMetadata(com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaMetadata);
        if (mediaMetadata.equals(this.playlistMetadata)) {
            return;
        }
        this.playlistMetadata = mediaMetadata;
        this.listeners.sendEvent(15, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.d0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                this.a.f((com.google.android.exoplayer2.Player.EventListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player
    public void setRepeatMode(final int i) {
        if (this.repeatMode != i) {
            this.repeatMode = i;
            this.internalPlayer.setRepeatMode(i);
            this.listeners.queueEvent(8, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.p0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    ((com.google.android.exoplayer2.Player.EventListener) obj).onRepeatModeChanged(i);
                }
            });
            updateAvailableCommands();
            this.listeners.flushEvents();
        }
    }

    public void setSeekParameters(com.google.android.exoplayer2.SeekParameters seekParameters) {
        if (seekParameters == null) {
            seekParameters = com.google.android.exoplayer2.SeekParameters.DEFAULT;
        }
        if (this.seekParameters.equals(seekParameters)) {
            return;
        }
        this.seekParameters = seekParameters;
        this.internalPlayer.setSeekParameters(seekParameters);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setShuffleModeEnabled(final boolean z) {
        if (this.shuffleModeEnabled != z) {
            this.shuffleModeEnabled = z;
            this.internalPlayer.setShuffleModeEnabled(z);
            this.listeners.queueEvent(9, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.t0
                @Override // com.google.android.exoplayer2.util.ListenerSet.Event
                public final void invoke(java.lang.Object obj) {
                    ((com.google.android.exoplayer2.Player.EventListener) obj).onShuffleModeEnabledChanged(z);
                }
            });
            updateAvailableCommands();
            this.listeners.flushEvents();
        }
    }

    public void setShuffleOrder(com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        com.google.android.exoplayer2.Timeline timelineCreateMaskingTimeline = createMaskingTimeline();
        com.google.android.exoplayer2.PlaybackInfo playbackInfoMaskTimelineAndPosition = maskTimelineAndPosition(this.playbackInfo, timelineCreateMaskingTimeline, getPeriodPositionOrMaskWindowPosition(timelineCreateMaskingTimeline, getCurrentMediaItemIndex(), getCurrentPosition()));
        this.pendingOperationAcks++;
        this.shuffleOrder = shuffleOrder;
        this.internalPlayer.setShuffleOrder(shuffleOrder);
        updatePlaybackInfo(playbackInfoMaskTimelineAndPosition, 0, 1, false, false, 5, com.google.android.exoplayer2.C.TIME_UNSET, -1);
    }

    @Override // com.google.android.exoplayer2.Player
    public void setTrackSelectionParameters(final com.google.android.exoplayer2.trackselection.TrackSelectionParameters trackSelectionParameters) {
        if (!this.trackSelector.isSetParametersSupported() || trackSelectionParameters.equals(this.trackSelector.getParameters())) {
            return;
        }
        this.trackSelector.setParameters(trackSelectionParameters);
        this.listeners.queueEvent(19, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.x0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.Player.EventListener) obj).onTrackSelectionParametersChanged(trackSelectionParameters);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurface(android.view.Surface surface) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurfaceHolder(android.view.SurfaceHolder surfaceHolder) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoSurfaceView(android.view.SurfaceView surfaceView) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVideoTextureView(android.view.TextureView textureView) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void setVolume(float f2) {
    }

    @Override // com.google.android.exoplayer2.Player
    public void stop() {
        stop(false);
    }

    @Override // com.google.android.exoplayer2.Player
    @java.lang.Deprecated
    public void stop(boolean z) {
        stop(z, null);
    }

    public void stop(boolean z, com.google.android.exoplayer2.ExoPlaybackException exoPlaybackException) {
        com.google.android.exoplayer2.PlaybackInfo playbackInfoCopyWithLoadingMediaPeriodId;
        if (z) {
            playbackInfoCopyWithLoadingMediaPeriodId = removeMediaItemsInternal(0, this.mediaSourceHolderSnapshots.size()).copyWithPlaybackError(null);
        } else {
            com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
            playbackInfoCopyWithLoadingMediaPeriodId = playbackInfo.copyWithLoadingMediaPeriodId(playbackInfo.periodId);
            playbackInfoCopyWithLoadingMediaPeriodId.bufferedPositionUs = playbackInfoCopyWithLoadingMediaPeriodId.positionUs;
            playbackInfoCopyWithLoadingMediaPeriodId.totalBufferedDurationUs = 0L;
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfoCopyWithPlaybackState = playbackInfoCopyWithLoadingMediaPeriodId.copyWithPlaybackState(1);
        if (exoPlaybackException != null) {
            playbackInfoCopyWithPlaybackState = playbackInfoCopyWithPlaybackState.copyWithPlaybackError(exoPlaybackException);
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfo2 = playbackInfoCopyWithPlaybackState;
        this.pendingOperationAcks++;
        this.internalPlayer.stop();
        updatePlaybackInfo(playbackInfo2, 0, 1, false, playbackInfo2.timeline.isEmpty() && !this.playbackInfo.timeline.isEmpty(), 4, getCurrentPositionUsInternal(playbackInfo2), -1);
    }
}
