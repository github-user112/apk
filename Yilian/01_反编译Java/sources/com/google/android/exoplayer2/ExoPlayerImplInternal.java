package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class ExoPlayerImplInternal implements android.os.Handler.Callback, com.google.android.exoplayer2.source.MediaPeriod.Callback, com.google.android.exoplayer2.trackselection.TrackSelector.InvalidationListener, com.google.android.exoplayer2.MediaSourceList.MediaSourceListInfoRefreshListener, com.google.android.exoplayer2.DefaultMediaClock.PlaybackParametersListener, com.google.android.exoplayer2.PlayerMessage.Sender {
    public static final int ACTIVE_INTERVAL_MS = 10;
    public static final int IDLE_INTERVAL_MS = 1000;
    public static final long MIN_RENDERER_SLEEP_DURATION_MS = 2000;
    public static final int MSG_ADD_MEDIA_SOURCES = 18;
    public static final int MSG_ATTEMPT_RENDERER_ERROR_RECOVERY = 25;
    public static final int MSG_DO_SOME_WORK = 2;
    public static final int MSG_MOVE_MEDIA_SOURCES = 19;
    public static final int MSG_PERIOD_PREPARED = 8;
    public static final int MSG_PLAYBACK_PARAMETERS_CHANGED_INTERNAL = 16;
    public static final int MSG_PLAYLIST_UPDATE_REQUESTED = 22;
    public static final int MSG_PREPARE = 0;
    public static final int MSG_RELEASE = 7;
    public static final int MSG_REMOVE_MEDIA_SOURCES = 20;
    public static final int MSG_SEEK_TO = 3;
    public static final int MSG_SEND_MESSAGE = 14;
    public static final int MSG_SEND_MESSAGE_TO_TARGET_THREAD = 15;
    public static final int MSG_SET_FOREGROUND_MODE = 13;
    public static final int MSG_SET_MEDIA_SOURCES = 17;
    public static final int MSG_SET_OFFLOAD_SCHEDULING_ENABLED = 24;
    public static final int MSG_SET_PAUSE_AT_END_OF_WINDOW = 23;
    public static final int MSG_SET_PLAYBACK_PARAMETERS = 4;
    public static final int MSG_SET_PLAY_WHEN_READY = 1;
    public static final int MSG_SET_REPEAT_MODE = 11;
    public static final int MSG_SET_SEEK_PARAMETERS = 5;
    public static final int MSG_SET_SHUFFLE_ENABLED = 12;
    public static final int MSG_SET_SHUFFLE_ORDER = 21;
    public static final int MSG_SOURCE_CONTINUE_LOADING_REQUESTED = 9;
    public static final int MSG_STOP = 6;
    public static final int MSG_TRACK_SELECTION_INVALIDATED = 10;
    public static final java.lang.String TAG = "ExoPlayerImplInternal";
    public final long backBufferDurationUs;
    public final com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter;
    public final com.google.android.exoplayer2.util.Clock clock;
    public boolean deliverPendingMessageAtStartPositionRequired;
    public final com.google.android.exoplayer2.trackselection.TrackSelectorResult emptyTrackSelectorResult;
    public int enabledRendererCount;
    public boolean foregroundMode;
    public final com.google.android.exoplayer2.util.HandlerWrapper handler;
    public final android.os.HandlerThread internalPlaybackThread;
    public boolean isRebuffering;
    public final com.google.android.exoplayer2.LivePlaybackSpeedControl livePlaybackSpeedControl;
    public final com.google.android.exoplayer2.LoadControl loadControl;
    public final com.google.android.exoplayer2.DefaultMediaClock mediaClock;
    public final com.google.android.exoplayer2.MediaSourceList mediaSourceList;
    public int nextPendingMessageIndexHint;
    public boolean offloadSchedulingEnabled;
    public boolean pauseAtEndOfWindow;
    public com.google.android.exoplayer2.ExoPlayerImplInternal.SeekPosition pendingInitialSeekPosition;
    public final java.util.ArrayList<com.google.android.exoplayer2.ExoPlayerImplInternal.PendingMessageInfo> pendingMessages;
    public boolean pendingPauseAtEndOfPeriod;
    public com.google.android.exoplayer2.ExoPlaybackException pendingRecoverableRendererError;
    public final com.google.android.exoplayer2.Timeline.Period period;
    public com.google.android.exoplayer2.PlaybackInfo playbackInfo;
    public com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate;
    public final com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdateListener playbackInfoUpdateListener;
    public final android.os.Looper playbackLooper;
    public final com.google.android.exoplayer2.MediaPeriodQueue queue;
    public final long releaseTimeoutMs;
    public boolean released;
    public final com.google.android.exoplayer2.RendererCapabilities[] rendererCapabilities;
    public long rendererPositionUs;
    public final com.google.android.exoplayer2.Renderer[] renderers;
    public final java.util.Set<com.google.android.exoplayer2.Renderer> renderersToReset;
    public int repeatMode;
    public boolean requestForRendererSleep;
    public final boolean retainBackBufferFromKeyframe;
    public com.google.android.exoplayer2.SeekParameters seekParameters;
    public long setForegroundModeTimeoutMs;
    public boolean shouldContinueLoading;
    public boolean shuffleModeEnabled;
    public final com.google.android.exoplayer2.trackselection.TrackSelector trackSelector;
    public final com.google.android.exoplayer2.Timeline.Window window;

    public static final class MediaSourceListUpdateMessage {
        public final java.util.List<com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> mediaSourceHolders;
        public final long positionUs;
        public final com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder;
        public final int windowIndex;

        public MediaSourceListUpdateMessage(java.util.List<com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> list, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder, int i, long j) {
            this.mediaSourceHolders = list;
            this.shuffleOrder = shuffleOrder;
            this.windowIndex = i;
            this.positionUs = j;
        }
    }

    public static class MoveMediaItemsMessage {
        public final int fromIndex;
        public final int newFromIndex;
        public final com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder;
        public final int toIndex;

        public MoveMediaItemsMessage(int i, int i2, int i3, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
            this.fromIndex = i;
            this.toIndex = i2;
            this.newFromIndex = i3;
            this.shuffleOrder = shuffleOrder;
        }
    }

    public static final class PendingMessageInfo implements java.lang.Comparable<com.google.android.exoplayer2.ExoPlayerImplInternal.PendingMessageInfo> {
        public final com.google.android.exoplayer2.PlayerMessage message;
        public int resolvedPeriodIndex;
        public long resolvedPeriodTimeUs;
        public java.lang.Object resolvedPeriodUid;

        public PendingMessageInfo(com.google.android.exoplayer2.PlayerMessage playerMessage) {
            this.message = playerMessage;
        }

        @Override // java.lang.Comparable
        public int compareTo(com.google.android.exoplayer2.ExoPlayerImplInternal.PendingMessageInfo pendingMessageInfo) {
            if ((this.resolvedPeriodUid == null) != (pendingMessageInfo.resolvedPeriodUid == null)) {
                return this.resolvedPeriodUid != null ? -1 : 1;
            }
            if (this.resolvedPeriodUid == null) {
                return 0;
            }
            int i = this.resolvedPeriodIndex - pendingMessageInfo.resolvedPeriodIndex;
            return i != 0 ? i : com.google.android.exoplayer2.util.Util.compareLong(this.resolvedPeriodTimeUs, pendingMessageInfo.resolvedPeriodTimeUs);
        }

        public void setResolvedPosition(int i, long j, java.lang.Object obj) {
            this.resolvedPeriodIndex = i;
            this.resolvedPeriodTimeUs = j;
            this.resolvedPeriodUid = obj;
        }
    }

    public static final class PlaybackInfoUpdate {
        public int discontinuityReason;
        public boolean hasPendingChange;
        public boolean hasPlayWhenReadyChangeReason;
        public int operationAcks;
        public int playWhenReadyChangeReason;
        public com.google.android.exoplayer2.PlaybackInfo playbackInfo;
        public boolean positionDiscontinuity;

        public PlaybackInfoUpdate(com.google.android.exoplayer2.PlaybackInfo playbackInfo) {
            this.playbackInfo = playbackInfo;
        }

        public void incrementPendingOperationAcks(int i) {
            this.hasPendingChange |= i > 0;
            this.operationAcks += i;
        }

        public void setPlayWhenReadyChangeReason(int i) {
            this.hasPendingChange = true;
            this.hasPlayWhenReadyChangeReason = true;
            this.playWhenReadyChangeReason = i;
        }

        public void setPlaybackInfo(com.google.android.exoplayer2.PlaybackInfo playbackInfo) {
            this.hasPendingChange |= this.playbackInfo != playbackInfo;
            this.playbackInfo = playbackInfo;
        }

        public void setPositionDiscontinuity(int i) {
            if (this.positionDiscontinuity && this.discontinuityReason != 5) {
                com.google.android.exoplayer2.util.Assertions.checkArgument(i == 5);
                return;
            }
            this.hasPendingChange = true;
            this.positionDiscontinuity = true;
            this.discontinuityReason = i;
        }
    }

    public interface PlaybackInfoUpdateListener {
        void onPlaybackInfoUpdate(com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdate playbackInfoUpdate);
    }

    public static final class PositionUpdateForPlaylistChange {
        public final boolean endPlayback;
        public final boolean forceBufferingState;
        public final com.google.android.exoplayer2.source.MediaSource.MediaPeriodId periodId;
        public final long periodPositionUs;
        public final long requestedContentPositionUs;
        public final boolean setTargetLiveOffset;

        public PositionUpdateForPlaylistChange(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, boolean z, boolean z2, boolean z3) {
            this.periodId = mediaPeriodId;
            this.periodPositionUs = j;
            this.requestedContentPositionUs = j2;
            this.forceBufferingState = z;
            this.endPlayback = z2;
            this.setTargetLiveOffset = z3;
        }
    }

    public static final class SeekPosition {
        public final com.google.android.exoplayer2.Timeline timeline;
        public final int windowIndex;
        public final long windowPositionUs;

        public SeekPosition(com.google.android.exoplayer2.Timeline timeline, int i, long j) {
            this.timeline = timeline;
            this.windowIndex = i;
            this.windowPositionUs = j;
        }
    }

    public ExoPlayerImplInternal(com.google.android.exoplayer2.Renderer[] rendererArr, com.google.android.exoplayer2.trackselection.TrackSelector trackSelector, com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult, com.google.android.exoplayer2.LoadControl loadControl, com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter, int i, boolean z, com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector, com.google.android.exoplayer2.SeekParameters seekParameters, com.google.android.exoplayer2.LivePlaybackSpeedControl livePlaybackSpeedControl, long j, boolean z2, android.os.Looper looper, com.google.android.exoplayer2.util.Clock clock, com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdateListener playbackInfoUpdateListener) {
        this.playbackInfoUpdateListener = playbackInfoUpdateListener;
        this.renderers = rendererArr;
        this.trackSelector = trackSelector;
        this.emptyTrackSelectorResult = trackSelectorResult;
        this.loadControl = loadControl;
        this.bandwidthMeter = bandwidthMeter;
        this.repeatMode = i;
        this.shuffleModeEnabled = z;
        this.seekParameters = seekParameters;
        this.livePlaybackSpeedControl = livePlaybackSpeedControl;
        this.releaseTimeoutMs = j;
        this.setForegroundModeTimeoutMs = j;
        this.pauseAtEndOfWindow = z2;
        this.clock = clock;
        this.backBufferDurationUs = loadControl.getBackBufferDurationUs();
        this.retainBackBufferFromKeyframe = loadControl.retainBackBufferFromKeyframe();
        com.google.android.exoplayer2.PlaybackInfo playbackInfoCreateDummy = com.google.android.exoplayer2.PlaybackInfo.createDummy(trackSelectorResult);
        this.playbackInfo = playbackInfoCreateDummy;
        this.playbackInfoUpdate = new com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdate(playbackInfoCreateDummy);
        this.rendererCapabilities = new com.google.android.exoplayer2.RendererCapabilities[rendererArr.length];
        for (int i2 = 0; i2 < rendererArr.length; i2++) {
            rendererArr[i2].setIndex(i2);
            this.rendererCapabilities[i2] = rendererArr[i2].getCapabilities();
        }
        this.mediaClock = new com.google.android.exoplayer2.DefaultMediaClock(this, clock);
        this.pendingMessages = new java.util.ArrayList<>();
        this.renderersToReset = e.c.b.b.j.e();
        this.window = new com.google.android.exoplayer2.Timeline.Window();
        this.period = new com.google.android.exoplayer2.Timeline.Period();
        trackSelector.init(this, bandwidthMeter);
        this.deliverPendingMessageAtStartPositionRequired = true;
        android.os.Handler handler = new android.os.Handler(looper);
        this.queue = new com.google.android.exoplayer2.MediaPeriodQueue(analyticsCollector, handler);
        this.mediaSourceList = new com.google.android.exoplayer2.MediaSourceList(this, analyticsCollector, handler);
        android.os.HandlerThread handlerThread = new android.os.HandlerThread("ExoPlayer:Playback", -16);
        this.internalPlaybackThread = handlerThread;
        handlerThread.start();
        android.os.Looper looper2 = this.internalPlaybackThread.getLooper();
        this.playbackLooper = looper2;
        this.handler = clock.createHandler(looper2, this);
    }

    private void addMediaItemsInternal(com.google.android.exoplayer2.ExoPlayerImplInternal.MediaSourceListUpdateMessage mediaSourceListUpdateMessage, int i) throws java.lang.Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        com.google.android.exoplayer2.MediaSourceList mediaSourceList = this.mediaSourceList;
        if (i == -1) {
            i = mediaSourceList.getSize();
        }
        handleMediaSourceListInfoRefreshed(mediaSourceList.addMediaSources(i, mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder), false);
    }

    private void attemptRendererErrorRecovery() throws com.google.android.exoplayer2.ExoPlaybackException {
        seekToCurrentPosition(true);
    }

    private void deliverMessage(com.google.android.exoplayer2.PlayerMessage playerMessage) {
        if (playerMessage.isCanceled()) {
            return;
        }
        try {
            playerMessage.getTarget().handleMessage(playerMessage.getType(), playerMessage.getPayload());
        } finally {
            playerMessage.markAsProcessed(true);
        }
    }

    private void disableRenderer(com.google.android.exoplayer2.Renderer renderer) {
        if (isRendererEnabled(renderer)) {
            this.mediaClock.onRendererDisabled(renderer);
            ensureStopped(renderer);
            renderer.disable();
            this.enabledRendererCount--;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:111:0x0184  */
    /* JADX WARN: Removed duplicated region for block: B:121:0x01aa A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0138  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void doSomeWork() throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 466
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ExoPlayerImplInternal.doSomeWork():void");
    }

    private void enableRenderer(int i, boolean z) throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.Renderer renderer = this.renderers[i];
        if (isRendererEnabled(renderer)) {
            return;
        }
        com.google.android.exoplayer2.MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        boolean z2 = readingPeriod == this.queue.getPlayingPeriod();
        com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult = readingPeriod.getTrackSelectorResult();
        com.google.android.exoplayer2.RendererConfiguration rendererConfiguration = trackSelectorResult.rendererConfigurations[i];
        com.google.android.exoplayer2.Format[] formats = getFormats(trackSelectorResult.selections[i]);
        boolean z3 = shouldPlayWhenReady() && this.playbackInfo.playbackState == 3;
        boolean z4 = !z && z3;
        this.enabledRendererCount++;
        this.renderersToReset.add(renderer);
        renderer.enable(rendererConfiguration, formats, readingPeriod.sampleStreams[i], this.rendererPositionUs, z4, z2, readingPeriod.getStartPositionRendererTime(), readingPeriod.getRendererOffset());
        renderer.handleMessage(11, new com.google.android.exoplayer2.Renderer.WakeupListener() { // from class: com.google.android.exoplayer2.ExoPlayerImplInternal.1
            @Override // com.google.android.exoplayer2.Renderer.WakeupListener
            public void onSleep(long j) {
                if (j >= 2000) {
                    com.google.android.exoplayer2.ExoPlayerImplInternal.this.requestForRendererSleep = true;
                }
            }

            @Override // com.google.android.exoplayer2.Renderer.WakeupListener
            public void onWakeup() {
                com.google.android.exoplayer2.ExoPlayerImplInternal.this.handler.sendEmptyMessage(2);
            }
        });
        this.mediaClock.onRendererEnabled(renderer);
        if (z3) {
            renderer.start();
        }
    }

    private void enableRenderers() throws com.google.android.exoplayer2.ExoPlaybackException {
        enableRenderers(new boolean[this.renderers.length]);
    }

    private void enableRenderers(boolean[] zArr) throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult = readingPeriod.getTrackSelectorResult();
        for (int i = 0; i < this.renderers.length; i++) {
            if (!trackSelectorResult.isRendererEnabled(i) && this.renderersToReset.remove(this.renderers[i])) {
                this.renderers[i].reset();
            }
        }
        for (int i2 = 0; i2 < this.renderers.length; i2++) {
            if (trackSelectorResult.isRendererEnabled(i2)) {
                enableRenderer(i2, zArr[i2]);
            }
        }
        readingPeriod.allRenderersInCorrectState = true;
    }

    private void ensureStopped(com.google.android.exoplayer2.Renderer renderer) {
        if (renderer.getState() == 2) {
            renderer.stop();
        }
    }

    private e.c.b.b.s<com.google.android.exoplayer2.metadata.Metadata> extractMetadataFromTrackSelectionArray(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr) {
        d.s.y.l(4, "initialCapacity");
        java.lang.Object[] objArrCopyOf = new java.lang.Object[4];
        boolean z = false;
        int i = 0;
        boolean z2 = false;
        for (com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection : exoTrackSelectionArr) {
            if (exoTrackSelection != null) {
                com.google.android.exoplayer2.metadata.Metadata metadata = exoTrackSelection.getFormat(0).metadata;
                if (metadata == null) {
                    com.google.android.exoplayer2.metadata.Metadata metadata2 = new com.google.android.exoplayer2.metadata.Metadata(new com.google.android.exoplayer2.metadata.Metadata.Entry[0]);
                    int i2 = i + 1;
                    if (objArrCopyOf.length < i2) {
                        objArrCopyOf = java.util.Arrays.copyOf(objArrCopyOf, e.c.b.b.q.b.a(objArrCopyOf.length, i2));
                    } else {
                        if (z2) {
                            objArrCopyOf = (java.lang.Object[]) objArrCopyOf.clone();
                        }
                        objArrCopyOf[i] = metadata2;
                        i++;
                    }
                    z2 = false;
                    objArrCopyOf[i] = metadata2;
                    i++;
                } else {
                    if (metadata == null) {
                        throw null;
                    }
                    int i3 = i + 1;
                    if (objArrCopyOf.length < i3) {
                        objArrCopyOf = java.util.Arrays.copyOf(objArrCopyOf, e.c.b.b.q.b.a(objArrCopyOf.length, i3));
                    } else {
                        if (z2) {
                            objArrCopyOf = (java.lang.Object[]) objArrCopyOf.clone();
                        }
                        objArrCopyOf[i] = metadata;
                        i++;
                        z = true;
                    }
                    z2 = false;
                    objArrCopyOf[i] = metadata;
                    i++;
                    z = true;
                }
            }
        }
        return z ? e.c.b.b.s.i(objArrCopyOf, i) : e.c.b.b.s.p();
    }

    private long getCurrentLiveOffsetUs() {
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        return getLiveOffsetUs(playbackInfo.timeline, playbackInfo.periodId.periodUid, playbackInfo.positionUs);
    }

    public static com.google.android.exoplayer2.Format[] getFormats(com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection) {
        int length = exoTrackSelection != null ? exoTrackSelection.length() : 0;
        com.google.android.exoplayer2.Format[] formatArr = new com.google.android.exoplayer2.Format[length];
        for (int i = 0; i < length; i++) {
            formatArr[i] = exoTrackSelection.getFormat(i);
        }
        return formatArr;
    }

    private long getLiveOffsetUs(com.google.android.exoplayer2.Timeline timeline, java.lang.Object obj, long j) {
        timeline.getWindow(timeline.getPeriodByUid(obj, this.period).windowIndex, this.window);
        com.google.android.exoplayer2.Timeline.Window window = this.window;
        if (window.windowStartTimeMs != com.google.android.exoplayer2.C.TIME_UNSET && window.isLive()) {
            com.google.android.exoplayer2.Timeline.Window window2 = this.window;
            if (window2.isDynamic) {
                return com.google.android.exoplayer2.util.Util.msToUs(window2.getCurrentUnixTimeMs() - this.window.windowStartTimeMs) - (this.period.getPositionInWindowUs() + j);
            }
        }
        return com.google.android.exoplayer2.C.TIME_UNSET;
    }

    private long getMaxRendererReadPositionUs() {
        com.google.android.exoplayer2.MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        if (readingPeriod == null) {
            return 0L;
        }
        long rendererOffset = readingPeriod.getRendererOffset();
        if (!readingPeriod.prepared) {
            return rendererOffset;
        }
        int i = 0;
        while (true) {
            com.google.android.exoplayer2.Renderer[] rendererArr = this.renderers;
            if (i >= rendererArr.length) {
                return rendererOffset;
            }
            if (isRendererEnabled(rendererArr[i]) && this.renderers[i].getStream() == readingPeriod.sampleStreams[i]) {
                long readingPositionUs = this.renderers[i].getReadingPositionUs();
                if (readingPositionUs == Long.MIN_VALUE) {
                    return Long.MIN_VALUE;
                }
                rendererOffset = java.lang.Math.max(readingPositionUs, rendererOffset);
            }
            i++;
        }
    }

    private android.util.Pair<com.google.android.exoplayer2.source.MediaSource.MediaPeriodId, java.lang.Long> getPlaceholderFirstMediaPeriodPosition(com.google.android.exoplayer2.Timeline timeline) {
        if (timeline.isEmpty()) {
            return android.util.Pair.create(com.google.android.exoplayer2.PlaybackInfo.getDummyPeriodForEmptyTimeline(), 0L);
        }
        android.util.Pair<java.lang.Object, java.lang.Long> periodPosition = timeline.getPeriodPosition(this.window, this.period, timeline.getFirstWindowIndex(this.shuffleModeEnabled), com.google.android.exoplayer2.C.TIME_UNSET);
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAds = this.queue.resolveMediaPeriodIdForAds(timeline, periodPosition.first, 0L);
        long jLongValue = ((java.lang.Long) periodPosition.second).longValue();
        if (mediaPeriodIdResolveMediaPeriodIdForAds.isAd()) {
            timeline.getPeriodByUid(mediaPeriodIdResolveMediaPeriodIdForAds.periodUid, this.period);
            jLongValue = mediaPeriodIdResolveMediaPeriodIdForAds.adIndexInAdGroup == this.period.getFirstAdIndexToPlay(mediaPeriodIdResolveMediaPeriodIdForAds.adGroupIndex) ? this.period.getAdResumePositionUs() : 0L;
        }
        return android.util.Pair.create(mediaPeriodIdResolveMediaPeriodIdForAds, java.lang.Long.valueOf(jLongValue));
    }

    private long getTotalBufferedDurationUs() {
        return getTotalBufferedDurationUs(this.playbackInfo.bufferedPositionUs);
    }

    private long getTotalBufferedDurationUs(long j) {
        com.google.android.exoplayer2.MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        if (loadingPeriod == null) {
            return 0L;
        }
        return java.lang.Math.max(0L, j - loadingPeriod.toPeriodTime(this.rendererPositionUs));
    }

    private void handleContinueLoadingRequested(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        if (this.queue.isLoading(mediaPeriod)) {
            this.queue.reevaluateBuffer(this.rendererPositionUs);
            maybeContinueLoading();
        }
    }

    private void handleIoException(java.io.IOException iOException, int i) {
        com.google.android.exoplayer2.ExoPlaybackException exoPlaybackExceptionCreateForSource = com.google.android.exoplayer2.ExoPlaybackException.createForSource(iOException, i);
        com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (playingPeriod != null) {
            exoPlaybackExceptionCreateForSource = exoPlaybackExceptionCreateForSource.copyWithMediaPeriodId(playingPeriod.info.id);
        }
        com.google.android.exoplayer2.util.Log.e(TAG, "Playback error", exoPlaybackExceptionCreateForSource);
        stopInternal(false, false);
        this.playbackInfo = this.playbackInfo.copyWithPlaybackError(exoPlaybackExceptionCreateForSource);
    }

    private void handleLoadingMediaPeriodChanged(boolean z) {
        com.google.android.exoplayer2.MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = loadingPeriod == null ? this.playbackInfo.periodId : loadingPeriod.info.id;
        boolean z2 = !this.playbackInfo.loadingMediaPeriodId.equals(mediaPeriodId);
        if (z2) {
            this.playbackInfo = this.playbackInfo.copyWithLoadingMediaPeriodId(mediaPeriodId);
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        playbackInfo.bufferedPositionUs = loadingPeriod == null ? playbackInfo.positionUs : loadingPeriod.getBufferedPositionUs();
        this.playbackInfo.totalBufferedDurationUs = getTotalBufferedDurationUs();
        if ((z2 || z) && loadingPeriod != null && loadingPeriod.prepared) {
            updateLoadControlTrackSelection(loadingPeriod.getTrackGroups(), loadingPeriod.getTrackSelectorResult());
        }
    }

    private void handleMediaSourceListInfoRefreshed(com.google.android.exoplayer2.Timeline timeline, boolean z) throws java.lang.Throwable {
        boolean z2;
        com.google.android.exoplayer2.ExoPlayerImplInternal.PositionUpdateForPlaylistChange positionUpdateForPlaylistChangeResolvePositionForPlaylistChange = resolvePositionForPlaylistChange(timeline, this.playbackInfo, this.pendingInitialSeekPosition, this.queue, this.repeatMode, this.shuffleModeEnabled, this.window, this.period);
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.periodId;
        long j = positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.requestedContentPositionUs;
        boolean z3 = positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.forceBufferingState;
        long jSeekToPeriodPosition = positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.periodPositionUs;
        boolean z4 = (this.playbackInfo.periodId.equals(mediaPeriodId) && jSeekToPeriodPosition == this.playbackInfo.positionUs) ? false : true;
        com.google.android.exoplayer2.ExoPlayerImplInternal.SeekPosition seekPosition = null;
        long j2 = com.google.android.exoplayer2.C.TIME_UNSET;
        try {
            if (positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.endPlayback) {
                if (this.playbackInfo.playbackState != 1) {
                    setState(4);
                }
                resetInternal(false, false, false, true);
            }
        } catch (java.lang.Throwable th) {
            th = th;
        }
        try {
            if (z4) {
                z2 = false;
                if (!timeline.isEmpty()) {
                    for (com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
                        if (playingPeriod.info.id.equals(mediaPeriodId)) {
                            playingPeriod.info = this.queue.getUpdatedMediaPeriodInfo(timeline, playingPeriod.info);
                            playingPeriod.updateClipping();
                        }
                    }
                    jSeekToPeriodPosition = seekToPeriodPosition(mediaPeriodId, jSeekToPeriodPosition, z3);
                }
            } else {
                z2 = false;
                if (!this.queue.updateQueuedPeriods(timeline, this.rendererPositionUs, getMaxRendererReadPositionUs())) {
                    seekToCurrentPosition(false);
                }
            }
            com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
            updateLivePlaybackSpeedControl(timeline, mediaPeriodId, playbackInfo.timeline, playbackInfo.periodId, positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.setTargetLiveOffset ? jSeekToPeriodPosition : -9223372036854775807L);
            if (z4 || j != this.playbackInfo.requestedContentPositionUs) {
                com.google.android.exoplayer2.PlaybackInfo playbackInfo2 = this.playbackInfo;
                java.lang.Object obj = playbackInfo2.periodId.periodUid;
                com.google.android.exoplayer2.Timeline timeline2 = playbackInfo2.timeline;
                this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, jSeekToPeriodPosition, j, this.playbackInfo.discontinuityStartPositionUs, z4 && z && !timeline2.isEmpty() && !timeline2.getPeriodByUid(obj, this.period).isPlaceholder, timeline.getIndexOfPeriod(obj) == -1 ? 4 : 3);
            }
            resetPendingPauseAtEndOfPeriod();
            resolvePendingMessagePositions(timeline, this.playbackInfo.timeline);
            this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline);
            if (!timeline.isEmpty()) {
                this.pendingInitialSeekPosition = null;
            }
            handleLoadingMediaPeriodChanged(z2);
        } catch (java.lang.Throwable th2) {
            th = th2;
            seekPosition = null;
            com.google.android.exoplayer2.PlaybackInfo playbackInfo3 = this.playbackInfo;
            com.google.android.exoplayer2.Timeline timeline3 = playbackInfo3.timeline;
            com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo3.periodId;
            if (positionUpdateForPlaylistChangeResolvePositionForPlaylistChange.setTargetLiveOffset) {
                j2 = jSeekToPeriodPosition;
            }
            com.google.android.exoplayer2.ExoPlayerImplInternal.SeekPosition seekPosition2 = seekPosition;
            updateLivePlaybackSpeedControl(timeline, mediaPeriodId, timeline3, mediaPeriodId2, j2);
            if (z4 || j != this.playbackInfo.requestedContentPositionUs) {
                com.google.android.exoplayer2.PlaybackInfo playbackInfo4 = this.playbackInfo;
                java.lang.Object obj2 = playbackInfo4.periodId.periodUid;
                com.google.android.exoplayer2.Timeline timeline4 = playbackInfo4.timeline;
                this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, jSeekToPeriodPosition, j, this.playbackInfo.discontinuityStartPositionUs, z4 && z && !timeline4.isEmpty() && !timeline4.getPeriodByUid(obj2, this.period).isPlaceholder, timeline.getIndexOfPeriod(obj2) == -1 ? 4 : 3);
            }
            resetPendingPauseAtEndOfPeriod();
            resolvePendingMessagePositions(timeline, this.playbackInfo.timeline);
            this.playbackInfo = this.playbackInfo.copyWithTimeline(timeline);
            if (!timeline.isEmpty()) {
                this.pendingInitialSeekPosition = seekPosition2;
            }
            handleLoadingMediaPeriodChanged(false);
            throw th;
        }
    }

    private void handlePeriodPrepared(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) throws com.google.android.exoplayer2.ExoPlaybackException {
        if (this.queue.isLoading(mediaPeriod)) {
            com.google.android.exoplayer2.MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
            loadingPeriod.handlePrepared(this.mediaClock.getPlaybackParameters().speed, this.playbackInfo.timeline);
            updateLoadControlTrackSelection(loadingPeriod.getTrackGroups(), loadingPeriod.getTrackSelectorResult());
            if (loadingPeriod == this.queue.getPlayingPeriod()) {
                resetRendererPosition(loadingPeriod.info.startPositionUs);
                enableRenderers();
                com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
                com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
                long j = loadingPeriod.info.startPositionUs;
                this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, j, playbackInfo.requestedContentPositionUs, j, false, 5);
            }
            maybeContinueLoading();
        }
    }

    private void handlePlaybackParameters(com.google.android.exoplayer2.PlaybackParameters playbackParameters, float f2, boolean z, boolean z2) {
        if (z) {
            if (z2) {
                this.playbackInfoUpdate.incrementPendingOperationAcks(1);
            }
            this.playbackInfo = this.playbackInfo.copyWithPlaybackParameters(playbackParameters);
        }
        updateTrackSelectionPlaybackSpeed(playbackParameters.speed);
        for (com.google.android.exoplayer2.Renderer renderer : this.renderers) {
            if (renderer != null) {
                renderer.setPlaybackSpeed(f2, playbackParameters.speed);
            }
        }
    }

    private void handlePlaybackParameters(com.google.android.exoplayer2.PlaybackParameters playbackParameters, boolean z) {
        handlePlaybackParameters(playbackParameters, playbackParameters.speed, true, z);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private com.google.android.exoplayer2.PlaybackInfo handlePositionDiscontinuity(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, long j, long j2, long j3, boolean z, int i) {
        java.util.List listP;
        com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray;
        com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult;
        this.deliverPendingMessageAtStartPositionRequired = (!this.deliverPendingMessageAtStartPositionRequired && j == this.playbackInfo.positionUs && mediaPeriodId.equals(this.playbackInfo.periodId)) ? false : true;
        resetPendingPauseAtEndOfPeriod();
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray2 = playbackInfo.trackGroups;
        com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult2 = playbackInfo.trackSelectorResult;
        java.util.List list = playbackInfo.staticMetadata;
        if (this.mediaSourceList.isPrepared()) {
            com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
            com.google.android.exoplayer2.source.TrackGroupArray trackGroups = playingPeriod == null ? com.google.android.exoplayer2.source.TrackGroupArray.EMPTY : playingPeriod.getTrackGroups();
            com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult3 = playingPeriod == null ? this.emptyTrackSelectorResult : playingPeriod.getTrackSelectorResult();
            java.util.List listExtractMetadataFromTrackSelectionArray = extractMetadataFromTrackSelectionArray(trackSelectorResult3.selections);
            if (playingPeriod != null) {
                com.google.android.exoplayer2.MediaPeriodInfo mediaPeriodInfo = playingPeriod.info;
                if (mediaPeriodInfo.requestedContentPositionUs != j2) {
                    playingPeriod.info = mediaPeriodInfo.copyWithRequestedContentPositionUs(j2);
                }
            }
            trackGroupArray = trackGroups;
            trackSelectorResult = trackSelectorResult3;
            listP = listExtractMetadataFromTrackSelectionArray;
        } else if (mediaPeriodId.equals(this.playbackInfo.periodId)) {
            listP = list;
            trackGroupArray = trackGroupArray2;
            trackSelectorResult = trackSelectorResult2;
        } else {
            trackGroupArray = com.google.android.exoplayer2.source.TrackGroupArray.EMPTY;
            trackSelectorResult = this.emptyTrackSelectorResult;
            listP = e.c.b.b.s.p();
        }
        if (z) {
            this.playbackInfoUpdate.setPositionDiscontinuity(i);
        }
        return this.playbackInfo.copyWithNewPosition(mediaPeriodId, j, j2, j3, getTotalBufferedDurationUs(), trackGroupArray, trackSelectorResult, listP);
    }

    private boolean hasReachedServerSideInsertedAdsTransition(com.google.android.exoplayer2.Renderer renderer, com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder) {
        com.google.android.exoplayer2.MediaPeriodHolder next = mediaPeriodHolder.getNext();
        return mediaPeriodHolder.info.isFollowedByTransitionToSameStream && next.prepared && ((renderer instanceof com.google.android.exoplayer2.text.TextRenderer) || renderer.getReadingPositionUs() >= next.getStartPositionRendererTime());
    }

    private boolean hasReadingPeriodFinishedReading() {
        com.google.android.exoplayer2.MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        if (!readingPeriod.prepared) {
            return false;
        }
        int i = 0;
        while (true) {
            com.google.android.exoplayer2.Renderer[] rendererArr = this.renderers;
            if (i >= rendererArr.length) {
                return true;
            }
            com.google.android.exoplayer2.Renderer renderer = rendererArr[i];
            com.google.android.exoplayer2.source.SampleStream sampleStream = readingPeriod.sampleStreams[i];
            if (renderer.getStream() != sampleStream || (sampleStream != null && !renderer.hasReadStreamToEnd() && !hasReachedServerSideInsertedAdsTransition(renderer, readingPeriod))) {
                break;
            }
            i++;
        }
        return false;
    }

    private boolean isLoadingPossible() {
        com.google.android.exoplayer2.MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        return (loadingPeriod == null || loadingPeriod.getNextLoadPositionUs() == Long.MIN_VALUE) ? false : true;
    }

    public static boolean isRendererEnabled(com.google.android.exoplayer2.Renderer renderer) {
        return renderer.getState() != 0;
    }

    private boolean isTimelineReady() {
        com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        long j = playingPeriod.info.durationUs;
        return playingPeriod.prepared && (j == com.google.android.exoplayer2.C.TIME_UNSET || this.playbackInfo.positionUs < j || !shouldPlayWhenReady());
    }

    public static boolean isUsingPlaceholderPeriod(com.google.android.exoplayer2.PlaybackInfo playbackInfo, com.google.android.exoplayer2.Timeline.Period period) {
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = playbackInfo.periodId;
        com.google.android.exoplayer2.Timeline timeline = playbackInfo.timeline;
        return timeline.isEmpty() || timeline.getPeriodByUid(mediaPeriodId.periodUid, period).isPlaceholder;
    }

    private void maybeContinueLoading() {
        boolean zShouldContinueLoading = shouldContinueLoading();
        this.shouldContinueLoading = zShouldContinueLoading;
        if (zShouldContinueLoading) {
            this.queue.getLoadingPeriod().continueLoading(this.rendererPositionUs);
        }
        updateIsLoading();
    }

    private void maybeNotifyPlaybackInfoChanged() {
        this.playbackInfoUpdate.setPlaybackInfo(this.playbackInfo);
        if (this.playbackInfoUpdate.hasPendingChange) {
            this.playbackInfoUpdateListener.onPlaybackInfoUpdate(this.playbackInfoUpdate);
            this.playbackInfoUpdate = new com.google.android.exoplayer2.ExoPlayerImplInternal.PlaybackInfoUpdate(this.playbackInfo);
        }
    }

    private boolean maybeScheduleWakeup(long j, long j2) {
        if (this.offloadSchedulingEnabled && this.requestForRendererSleep) {
            return false;
        }
        scheduleNextWork(j, j2);
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0037, code lost:
    
        if (r1 > 0) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0039, code lost:
    
        r3 = r7.pendingMessages.get(r1 - 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0045, code lost:
    
        if (r3 == null) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0047, code lost:
    
        r4 = r3.resolvedPeriodIndex;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0049, code lost:
    
        if (r4 > r0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x004b, code lost:
    
        if (r4 != r0) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0051, code lost:
    
        if (r3.resolvedPeriodTimeUs <= r8) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0053, code lost:
    
        r1 = r1 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0055, code lost:
    
        if (r1 <= 0) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x005e, code lost:
    
        if (r1 >= r7.pendingMessages.size()) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0060, code lost:
    
        r3 = r7.pendingMessages.get(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0069, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x006a, code lost:
    
        if (r3 == null) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x006e, code lost:
    
        if (r3.resolvedPeriodUid == null) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0070, code lost:
    
        r4 = r3.resolvedPeriodIndex;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0072, code lost:
    
        if (r4 < r0) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0074, code lost:
    
        if (r4 != r0) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007a, code lost:
    
        if (r3.resolvedPeriodTimeUs > r8) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007c, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0084, code lost:
    
        if (r1 >= r7.pendingMessages.size()) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0087, code lost:
    
        if (r3 == null) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008b, code lost:
    
        if (r3.resolvedPeriodUid == null) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x008f, code lost:
    
        if (r3.resolvedPeriodIndex != r0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0091, code lost:
    
        r4 = r3.resolvedPeriodTimeUs;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0095, code lost:
    
        if (r4 <= r8) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0099, code lost:
    
        if (r4 > r10) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x009b, code lost:
    
        sendMessageToTarget(r3.message);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a6, code lost:
    
        if (r3.message.getDeleteAfterDelivery() != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00ae, code lost:
    
        if (r3.message.isCanceled() == false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b1, code lost:
    
        r1 = r1 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b4, code lost:
    
        r7.pendingMessages.remove(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00bf, code lost:
    
        if (r1 >= r7.pendingMessages.size()) goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00c1, code lost:
    
        r3 = r7.pendingMessages.get(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ca, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00cc, code lost:
    
        r8 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00d3, code lost:
    
        if (r3.message.getDeleteAfterDelivery() != false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00dd, code lost:
    
        r7.pendingMessages.remove(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00e2, code lost:
    
        throw r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00e3, code lost:
    
        r7.nextPendingMessageIndexHint = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00e5, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0045, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x006a, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0055 -> B:12:0x0039). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x0084 -> B:25:0x0060). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void maybeTriggerPendingMessages(long r8, long r10) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ExoPlayerImplInternal.maybeTriggerPendingMessages(long, long):void");
    }

    private void maybeUpdateLoadingPeriod() {
        com.google.android.exoplayer2.MediaPeriodInfo nextMediaPeriodInfo;
        this.queue.reevaluateBuffer(this.rendererPositionUs);
        if (this.queue.shouldLoadNextMediaPeriod() && (nextMediaPeriodInfo = this.queue.getNextMediaPeriodInfo(this.rendererPositionUs, this.playbackInfo)) != null) {
            com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolderEnqueueNextMediaPeriodHolder = this.queue.enqueueNextMediaPeriodHolder(this.rendererCapabilities, this.trackSelector, this.loadControl.getAllocator(), this.mediaSourceList, nextMediaPeriodInfo, this.emptyTrackSelectorResult);
            mediaPeriodHolderEnqueueNextMediaPeriodHolder.mediaPeriod.prepare(this, nextMediaPeriodInfo.startPositionUs);
            if (this.queue.getPlayingPeriod() == mediaPeriodHolderEnqueueNextMediaPeriodHolder) {
                resetRendererPosition(nextMediaPeriodInfo.startPositionUs);
            }
            handleLoadingMediaPeriodChanged(false);
        }
        if (!this.shouldContinueLoading) {
            maybeContinueLoading();
        } else {
            this.shouldContinueLoading = isLoadingPossible();
            updateIsLoading();
        }
    }

    private void maybeUpdatePlayingPeriod() {
        boolean z = false;
        while (shouldAdvancePlayingPeriod()) {
            if (z) {
                maybeNotifyPlaybackInfoChanged();
            }
            com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
            com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolderAdvancePlayingPeriod = this.queue.advancePlayingPeriod();
            com.google.android.exoplayer2.MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolderAdvancePlayingPeriod.info;
            com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.id;
            long j = mediaPeriodInfo.startPositionUs;
            com.google.android.exoplayer2.PlaybackInfo playbackInfoHandlePositionDiscontinuity = handlePositionDiscontinuity(mediaPeriodId, j, mediaPeriodInfo.requestedContentPositionUs, j, true, 0);
            this.playbackInfo = playbackInfoHandlePositionDiscontinuity;
            com.google.android.exoplayer2.Timeline timeline = playbackInfoHandlePositionDiscontinuity.timeline;
            updateLivePlaybackSpeedControl(timeline, mediaPeriodHolderAdvancePlayingPeriod.info.id, timeline, playingPeriod.info.id, com.google.android.exoplayer2.C.TIME_UNSET);
            resetPendingPauseAtEndOfPeriod();
            updatePlaybackPositions();
            z = true;
        }
    }

    private void maybeUpdateReadingPeriod() {
        com.google.android.exoplayer2.MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        if (readingPeriod == null) {
            return;
        }
        int i = 0;
        if (readingPeriod.getNext() != null && !this.pendingPauseAtEndOfPeriod) {
            if (hasReadingPeriodFinishedReading()) {
                if (readingPeriod.getNext().prepared || this.rendererPositionUs >= readingPeriod.getNext().getStartPositionRendererTime()) {
                    com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult = readingPeriod.getTrackSelectorResult();
                    com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolderAdvanceReadingPeriod = this.queue.advanceReadingPeriod();
                    com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult2 = mediaPeriodHolderAdvanceReadingPeriod.getTrackSelectorResult();
                    if (mediaPeriodHolderAdvanceReadingPeriod.prepared && mediaPeriodHolderAdvanceReadingPeriod.mediaPeriod.readDiscontinuity() != com.google.android.exoplayer2.C.TIME_UNSET) {
                        setAllRendererStreamsFinal(mediaPeriodHolderAdvanceReadingPeriod.getStartPositionRendererTime());
                        return;
                    }
                    for (int i2 = 0; i2 < this.renderers.length; i2++) {
                        boolean zIsRendererEnabled = trackSelectorResult.isRendererEnabled(i2);
                        boolean zIsRendererEnabled2 = trackSelectorResult2.isRendererEnabled(i2);
                        if (zIsRendererEnabled && !this.renderers[i2].isCurrentStreamFinal()) {
                            boolean z = this.rendererCapabilities[i2].getTrackType() == -2;
                            com.google.android.exoplayer2.RendererConfiguration rendererConfiguration = trackSelectorResult.rendererConfigurations[i2];
                            com.google.android.exoplayer2.RendererConfiguration rendererConfiguration2 = trackSelectorResult2.rendererConfigurations[i2];
                            if (!zIsRendererEnabled2 || !rendererConfiguration2.equals(rendererConfiguration) || z) {
                                setCurrentStreamFinal(this.renderers[i2], mediaPeriodHolderAdvanceReadingPeriod.getStartPositionRendererTime());
                            }
                        }
                    }
                    return;
                }
                return;
            }
            return;
        }
        if (!readingPeriod.info.isFinal && !this.pendingPauseAtEndOfPeriod) {
            return;
        }
        while (true) {
            com.google.android.exoplayer2.Renderer[] rendererArr = this.renderers;
            if (i >= rendererArr.length) {
                return;
            }
            com.google.android.exoplayer2.Renderer renderer = rendererArr[i];
            com.google.android.exoplayer2.source.SampleStream sampleStream = readingPeriod.sampleStreams[i];
            if (sampleStream != null && renderer.getStream() == sampleStream && renderer.hasReadStreamToEnd()) {
                long j = readingPeriod.info.durationUs;
                setCurrentStreamFinal(renderer, (j == com.google.android.exoplayer2.C.TIME_UNSET || j == Long.MIN_VALUE) ? -9223372036854775807L : readingPeriod.getRendererOffset() + readingPeriod.info.durationUs);
            }
            i++;
        }
    }

    private void maybeUpdateReadingRenderers() throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        if (readingPeriod == null || this.queue.getPlayingPeriod() == readingPeriod || readingPeriod.allRenderersInCorrectState || !replaceStreamsOrDisableRendererForTransition()) {
            return;
        }
        enableRenderers();
    }

    private void mediaSourceListUpdateRequestedInternal() throws java.lang.Throwable {
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.createTimeline(), true);
    }

    private void moveMediaItemsInternal(com.google.android.exoplayer2.ExoPlayerImplInternal.MoveMediaItemsMessage moveMediaItemsMessage) throws java.lang.Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.moveMediaSourceRange(moveMediaItemsMessage.fromIndex, moveMediaItemsMessage.toIndex, moveMediaItemsMessage.newFromIndex, moveMediaItemsMessage.shuffleOrder), false);
    }

    private void notifyTrackSelectionDiscontinuity() {
        for (com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
            for (com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection : playingPeriod.getTrackSelectorResult().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onDiscontinuity();
                }
            }
        }
    }

    private void notifyTrackSelectionPlayWhenReadyChanged(boolean z) {
        for (com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
            for (com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection : playingPeriod.getTrackSelectorResult().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onPlayWhenReadyChanged(z);
                }
            }
        }
    }

    private void notifyTrackSelectionRebuffer() {
        for (com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
            for (com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection : playingPeriod.getTrackSelectorResult().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onRebuffer();
                }
            }
        }
    }

    private void prepareInternal() {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        resetInternal(false, false, false, true);
        this.loadControl.onPrepared();
        setState(this.playbackInfo.timeline.isEmpty() ? 4 : 2);
        this.mediaSourceList.prepare(this.bandwidthMeter.getTransferListener());
        this.handler.sendEmptyMessage(2);
    }

    private void releaseInternal() {
        resetInternal(true, false, true, false);
        this.loadControl.onReleased();
        setState(1);
        this.internalPlaybackThread.quit();
        synchronized (this) {
            this.released = true;
            notifyAll();
        }
    }

    private void removeMediaItemsInternal(int i, int i2, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) throws java.lang.Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.removeMediaSourceRange(i, i2, shuffleOrder), false);
    }

    private boolean replaceStreamsOrDisableRendererForTransition() {
        com.google.android.exoplayer2.MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult = readingPeriod.getTrackSelectorResult();
        int i = 0;
        boolean z = false;
        while (true) {
            com.google.android.exoplayer2.Renderer[] rendererArr = this.renderers;
            if (i >= rendererArr.length) {
                return !z;
            }
            com.google.android.exoplayer2.Renderer renderer = rendererArr[i];
            if (isRendererEnabled(renderer)) {
                boolean z2 = renderer.getStream() != readingPeriod.sampleStreams[i];
                if (!trackSelectorResult.isRendererEnabled(i) || z2) {
                    if (!renderer.isCurrentStreamFinal()) {
                        renderer.replaceStream(getFormats(trackSelectorResult.selections[i]), readingPeriod.sampleStreams[i], readingPeriod.getStartPositionRendererTime(), readingPeriod.getRendererOffset());
                    } else if (renderer.isEnded()) {
                        disableRenderer(renderer);
                    } else {
                        z = true;
                    }
                }
            }
            i++;
        }
    }

    private void reselectTracksInternal() throws com.google.android.exoplayer2.ExoPlaybackException {
        float f2 = this.mediaClock.getPlaybackParameters().speed;
        com.google.android.exoplayer2.MediaPeriodHolder readingPeriod = this.queue.getReadingPeriod();
        boolean z = true;
        for (com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null && playingPeriod.prepared; playingPeriod = playingPeriod.getNext()) {
            com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResultSelectTracks = playingPeriod.selectTracks(f2, this.playbackInfo.timeline);
            if (!trackSelectorResultSelectTracks.isEquivalent(playingPeriod.getTrackSelectorResult())) {
                com.google.android.exoplayer2.MediaPeriodQueue mediaPeriodQueue = this.queue;
                if (z) {
                    com.google.android.exoplayer2.MediaPeriodHolder playingPeriod2 = mediaPeriodQueue.getPlayingPeriod();
                    boolean zRemoveAfter = this.queue.removeAfter(playingPeriod2);
                    boolean[] zArr = new boolean[this.renderers.length];
                    long jApplyTrackSelection = playingPeriod2.applyTrackSelection(trackSelectorResultSelectTracks, this.playbackInfo.positionUs, zRemoveAfter, zArr);
                    com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
                    boolean z2 = (playbackInfo.playbackState == 4 || jApplyTrackSelection == playbackInfo.positionUs) ? false : true;
                    com.google.android.exoplayer2.PlaybackInfo playbackInfo2 = this.playbackInfo;
                    this.playbackInfo = handlePositionDiscontinuity(playbackInfo2.periodId, jApplyTrackSelection, playbackInfo2.requestedContentPositionUs, playbackInfo2.discontinuityStartPositionUs, z2, 5);
                    if (z2) {
                        resetRendererPosition(jApplyTrackSelection);
                    }
                    boolean[] zArr2 = new boolean[this.renderers.length];
                    int i = 0;
                    while (true) {
                        com.google.android.exoplayer2.Renderer[] rendererArr = this.renderers;
                        if (i >= rendererArr.length) {
                            break;
                        }
                        com.google.android.exoplayer2.Renderer renderer = rendererArr[i];
                        zArr2[i] = isRendererEnabled(renderer);
                        com.google.android.exoplayer2.source.SampleStream sampleStream = playingPeriod2.sampleStreams[i];
                        if (zArr2[i]) {
                            if (sampleStream != renderer.getStream()) {
                                disableRenderer(renderer);
                            } else if (zArr[i]) {
                                renderer.resetPosition(this.rendererPositionUs);
                            }
                        }
                        i++;
                    }
                    enableRenderers(zArr2);
                } else {
                    mediaPeriodQueue.removeAfter(playingPeriod);
                    if (playingPeriod.prepared) {
                        playingPeriod.applyTrackSelection(trackSelectorResultSelectTracks, java.lang.Math.max(playingPeriod.info.startPositionUs, playingPeriod.toPeriodTime(this.rendererPositionUs)), false);
                    }
                }
                handleLoadingMediaPeriodChanged(true);
                if (this.playbackInfo.playbackState != 4) {
                    maybeContinueLoading();
                    updatePlaybackPositions();
                    this.handler.sendEmptyMessage(2);
                    return;
                }
                return;
            }
            if (playingPeriod == readingPeriod) {
                z = false;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00a6 A[PHI: r4 r5 r7
  0x00a6: PHI (r4v3 com.google.android.exoplayer2.source.MediaSource$MediaPeriodId) = 
  (r4v2 com.google.android.exoplayer2.source.MediaSource$MediaPeriodId)
  (r4v8 com.google.android.exoplayer2.source.MediaSource$MediaPeriodId)
 binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]
  0x00a6: PHI (r5v2 long) = (r5v1 long), (r5v4 long) binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]
  0x00a6: PHI (r7v3 long) = (r7v2 long), (r7v5 long) binds: [B:30:0x0079, B:32:0x009e] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void resetInternal(boolean r30, boolean r31, boolean r32, boolean r33) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ExoPlayerImplInternal.resetInternal(boolean, boolean, boolean, boolean):void");
    }

    private void resetPendingPauseAtEndOfPeriod() {
        com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        this.pendingPauseAtEndOfPeriod = playingPeriod != null && playingPeriod.info.isLastInTimelineWindow && this.pauseAtEndOfWindow;
    }

    private void resetRendererPosition(long j) {
        com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        long rendererTime = playingPeriod == null ? j + com.google.android.exoplayer2.MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US : playingPeriod.toRendererTime(j);
        this.rendererPositionUs = rendererTime;
        this.mediaClock.resetPosition(rendererTime);
        for (com.google.android.exoplayer2.Renderer renderer : this.renderers) {
            if (isRendererEnabled(renderer)) {
                renderer.resetPosition(this.rendererPositionUs);
            }
        }
        notifyTrackSelectionDiscontinuity();
    }

    public static void resolvePendingMessageEndOfStreamPosition(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.ExoPlayerImplInternal.PendingMessageInfo pendingMessageInfo, com.google.android.exoplayer2.Timeline.Window window, com.google.android.exoplayer2.Timeline.Period period) {
        int i = timeline.getWindow(timeline.getPeriodByUid(pendingMessageInfo.resolvedPeriodUid, period).windowIndex, window).lastPeriodIndex;
        java.lang.Object obj = timeline.getPeriod(i, period, true).uid;
        long j = period.durationUs;
        pendingMessageInfo.setResolvedPosition(i, j != com.google.android.exoplayer2.C.TIME_UNSET ? j - 1 : Long.MAX_VALUE, obj);
    }

    public static boolean resolvePendingMessagePosition(com.google.android.exoplayer2.ExoPlayerImplInternal.PendingMessageInfo pendingMessageInfo, com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.Timeline timeline2, int i, boolean z, com.google.android.exoplayer2.Timeline.Window window, com.google.android.exoplayer2.Timeline.Period period) {
        java.lang.Object obj = pendingMessageInfo.resolvedPeriodUid;
        if (obj == null) {
            android.util.Pair<java.lang.Object, java.lang.Long> pairResolveSeekPosition = resolveSeekPosition(timeline, new com.google.android.exoplayer2.ExoPlayerImplInternal.SeekPosition(pendingMessageInfo.message.getTimeline(), pendingMessageInfo.message.getMediaItemIndex(), pendingMessageInfo.message.getPositionMs() == Long.MIN_VALUE ? com.google.android.exoplayer2.C.TIME_UNSET : com.google.android.exoplayer2.util.Util.msToUs(pendingMessageInfo.message.getPositionMs())), false, i, z, window, period);
            if (pairResolveSeekPosition == null) {
                return false;
            }
            pendingMessageInfo.setResolvedPosition(timeline.getIndexOfPeriod(pairResolveSeekPosition.first), ((java.lang.Long) pairResolveSeekPosition.second).longValue(), pairResolveSeekPosition.first);
            if (pendingMessageInfo.message.getPositionMs() == Long.MIN_VALUE) {
                resolvePendingMessageEndOfStreamPosition(timeline, pendingMessageInfo, window, period);
            }
            return true;
        }
        int indexOfPeriod = timeline.getIndexOfPeriod(obj);
        if (indexOfPeriod == -1) {
            return false;
        }
        if (pendingMessageInfo.message.getPositionMs() == Long.MIN_VALUE) {
            resolvePendingMessageEndOfStreamPosition(timeline, pendingMessageInfo, window, period);
            return true;
        }
        pendingMessageInfo.resolvedPeriodIndex = indexOfPeriod;
        timeline2.getPeriodByUid(pendingMessageInfo.resolvedPeriodUid, period);
        if (period.isPlaceholder && timeline2.getWindow(period.windowIndex, window).firstPeriodIndex == timeline2.getIndexOfPeriod(pendingMessageInfo.resolvedPeriodUid)) {
            android.util.Pair<java.lang.Object, java.lang.Long> periodPosition = timeline.getPeriodPosition(window, period, timeline.getPeriodByUid(pendingMessageInfo.resolvedPeriodUid, period).windowIndex, period.getPositionInWindowUs() + pendingMessageInfo.resolvedPeriodTimeUs);
            pendingMessageInfo.setResolvedPosition(timeline.getIndexOfPeriod(periodPosition.first), ((java.lang.Long) periodPosition.second).longValue(), periodPosition.first);
        }
        return true;
    }

    private void resolvePendingMessagePositions(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.Timeline timeline2) {
        if (timeline.isEmpty() && timeline2.isEmpty()) {
            return;
        }
        for (int size = this.pendingMessages.size() - 1; size >= 0; size--) {
            if (!resolvePendingMessagePosition(this.pendingMessages.get(size), timeline, timeline2, this.repeatMode, this.shuffleModeEnabled, this.window, this.period)) {
                this.pendingMessages.get(size).message.markAsProcessed(false);
                this.pendingMessages.remove(size);
            }
        }
        java.util.Collections.sort(this.pendingMessages);
    }

    public static com.google.android.exoplayer2.ExoPlayerImplInternal.PositionUpdateForPlaylistChange resolvePositionForPlaylistChange(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.PlaybackInfo playbackInfo, com.google.android.exoplayer2.ExoPlayerImplInternal.SeekPosition seekPosition, com.google.android.exoplayer2.MediaPeriodQueue mediaPeriodQueue, int i, boolean z, com.google.android.exoplayer2.Timeline.Window window, com.google.android.exoplayer2.Timeline.Period period) {
        int i2;
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId;
        long jLongValue;
        int i3;
        boolean z2;
        boolean z3;
        boolean z4;
        int firstWindowIndex;
        int firstWindowIndex2;
        boolean z5;
        com.google.android.exoplayer2.MediaPeriodQueue mediaPeriodQueue2;
        long j;
        int i4;
        boolean z6;
        int firstWindowIndex3;
        boolean z7;
        boolean z8;
        if (timeline.isEmpty()) {
            return new com.google.android.exoplayer2.ExoPlayerImplInternal.PositionUpdateForPlaylistChange(com.google.android.exoplayer2.PlaybackInfo.getDummyPeriodForEmptyTimeline(), 0L, com.google.android.exoplayer2.C.TIME_UNSET, false, true, false);
        }
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId2 = playbackInfo.periodId;
        java.lang.Object obj = mediaPeriodId2.periodUid;
        boolean zIsUsingPlaceholderPeriod = isUsingPlaceholderPeriod(playbackInfo, period);
        long j2 = (playbackInfo.periodId.isAd() || zIsUsingPlaceholderPeriod) ? playbackInfo.requestedContentPositionUs : playbackInfo.positionUs;
        boolean z9 = false;
        if (seekPosition != null) {
            i2 = -1;
            android.util.Pair<java.lang.Object, java.lang.Long> pairResolveSeekPosition = resolveSeekPosition(timeline, seekPosition, true, i, z, window, period);
            if (pairResolveSeekPosition == null) {
                firstWindowIndex3 = timeline.getFirstWindowIndex(z);
                jLongValue = j2;
                z6 = false;
                z7 = false;
                z8 = true;
            } else {
                if (seekPosition.windowPositionUs == com.google.android.exoplayer2.C.TIME_UNSET) {
                    firstWindowIndex3 = timeline.getPeriodByUid(pairResolveSeekPosition.first, period).windowIndex;
                    jLongValue = j2;
                    z6 = false;
                } else {
                    obj = pairResolveSeekPosition.first;
                    jLongValue = ((java.lang.Long) pairResolveSeekPosition.second).longValue();
                    z6 = true;
                    firstWindowIndex3 = -1;
                }
                z7 = playbackInfo.playbackState == 4;
                z8 = false;
            }
            z4 = z6;
            z2 = z7;
            z3 = z8;
            i3 = firstWindowIndex3;
            mediaPeriodId = mediaPeriodId2;
        } else {
            i2 = -1;
            if (playbackInfo.timeline.isEmpty()) {
                firstWindowIndex = timeline.getFirstWindowIndex(z);
            } else if (timeline.getIndexOfPeriod(obj) == -1) {
                java.lang.Object objResolveSubsequentPeriod = resolveSubsequentPeriod(window, period, i, z, obj, playbackInfo.timeline, timeline);
                if (objResolveSubsequentPeriod == null) {
                    firstWindowIndex2 = timeline.getFirstWindowIndex(z);
                    z5 = true;
                } else {
                    firstWindowIndex2 = timeline.getPeriodByUid(objResolveSubsequentPeriod, period).windowIndex;
                    z5 = false;
                }
                i3 = firstWindowIndex2;
                z3 = z5;
                jLongValue = j2;
                mediaPeriodId = mediaPeriodId2;
                z2 = false;
                z4 = false;
            } else if (j2 == com.google.android.exoplayer2.C.TIME_UNSET) {
                firstWindowIndex = timeline.getPeriodByUid(obj, period).windowIndex;
            } else if (zIsUsingPlaceholderPeriod) {
                mediaPeriodId = mediaPeriodId2;
                playbackInfo.timeline.getPeriodByUid(mediaPeriodId.periodUid, period);
                if (playbackInfo.timeline.getWindow(period.windowIndex, window).firstPeriodIndex == playbackInfo.timeline.getIndexOfPeriod(mediaPeriodId.periodUid)) {
                    android.util.Pair<java.lang.Object, java.lang.Long> periodPosition = timeline.getPeriodPosition(window, period, timeline.getPeriodByUid(obj, period).windowIndex, period.getPositionInWindowUs() + j2);
                    obj = periodPosition.first;
                    jLongValue = ((java.lang.Long) periodPosition.second).longValue();
                } else {
                    jLongValue = j2;
                }
                i3 = -1;
                z2 = false;
                z3 = false;
                z4 = true;
            } else {
                mediaPeriodId = mediaPeriodId2;
                jLongValue = j2;
                i3 = -1;
                z2 = false;
                z3 = false;
                z4 = false;
            }
            i3 = firstWindowIndex;
            jLongValue = j2;
            mediaPeriodId = mediaPeriodId2;
            z2 = false;
            z3 = false;
            z4 = false;
        }
        if (i3 != i2) {
            android.util.Pair<java.lang.Object, java.lang.Long> periodPosition2 = timeline.getPeriodPosition(window, period, i3, com.google.android.exoplayer2.C.TIME_UNSET);
            obj = periodPosition2.first;
            jLongValue = ((java.lang.Long) periodPosition2.second).longValue();
            mediaPeriodQueue2 = mediaPeriodQueue;
            j = -9223372036854775807L;
        } else {
            mediaPeriodQueue2 = mediaPeriodQueue;
            j = jLongValue;
        }
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodIdResolveMediaPeriodIdForAds = mediaPeriodQueue2.resolveMediaPeriodIdForAds(timeline, obj, jLongValue);
        boolean z10 = mediaPeriodIdResolveMediaPeriodIdForAds.nextAdGroupIndex == i2 || ((i4 = mediaPeriodId.nextAdGroupIndex) != i2 && mediaPeriodIdResolveMediaPeriodIdForAds.adGroupIndex >= i4);
        boolean zEquals = mediaPeriodId.periodUid.equals(obj);
        boolean z11 = zEquals && !mediaPeriodId.isAd() && !mediaPeriodIdResolveMediaPeriodIdForAds.isAd() && z10;
        timeline.getPeriodByUid(obj, period);
        if (zEquals && !zIsUsingPlaceholderPeriod && j2 == j && ((mediaPeriodIdResolveMediaPeriodIdForAds.isAd() && period.isServerSideInsertedAdGroup(mediaPeriodIdResolveMediaPeriodIdForAds.adGroupIndex)) || (mediaPeriodId.isAd() && period.isServerSideInsertedAdGroup(mediaPeriodId.adGroupIndex)))) {
            z9 = true;
        }
        if (z11 || z9) {
            mediaPeriodIdResolveMediaPeriodIdForAds = mediaPeriodId;
        }
        if (mediaPeriodIdResolveMediaPeriodIdForAds.isAd()) {
            if (mediaPeriodIdResolveMediaPeriodIdForAds.equals(mediaPeriodId)) {
                jLongValue = playbackInfo.positionUs;
            } else {
                timeline.getPeriodByUid(mediaPeriodIdResolveMediaPeriodIdForAds.periodUid, period);
                jLongValue = mediaPeriodIdResolveMediaPeriodIdForAds.adIndexInAdGroup == period.getFirstAdIndexToPlay(mediaPeriodIdResolveMediaPeriodIdForAds.adGroupIndex) ? period.getAdResumePositionUs() : 0L;
            }
        }
        return new com.google.android.exoplayer2.ExoPlayerImplInternal.PositionUpdateForPlaylistChange(mediaPeriodIdResolveMediaPeriodIdForAds, jLongValue, j, z2, z3, z4);
    }

    public static android.util.Pair<java.lang.Object, java.lang.Long> resolveSeekPosition(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.ExoPlayerImplInternal.SeekPosition seekPosition, boolean z, int i, boolean z2, com.google.android.exoplayer2.Timeline.Window window, com.google.android.exoplayer2.Timeline.Period period) {
        android.util.Pair<java.lang.Object, java.lang.Long> periodPosition;
        java.lang.Object objResolveSubsequentPeriod;
        com.google.android.exoplayer2.Timeline timeline2 = seekPosition.timeline;
        if (timeline.isEmpty()) {
            return null;
        }
        com.google.android.exoplayer2.Timeline timeline3 = timeline2.isEmpty() ? timeline : timeline2;
        try {
            periodPosition = timeline3.getPeriodPosition(window, period, seekPosition.windowIndex, seekPosition.windowPositionUs);
        } catch (java.lang.IndexOutOfBoundsException unused) {
        }
        if (timeline.equals(timeline3)) {
            return periodPosition;
        }
        if (timeline.getIndexOfPeriod(periodPosition.first) != -1) {
            return (timeline3.getPeriodByUid(periodPosition.first, period).isPlaceholder && timeline3.getWindow(period.windowIndex, window).firstPeriodIndex == timeline3.getIndexOfPeriod(periodPosition.first)) ? timeline.getPeriodPosition(window, period, timeline.getPeriodByUid(periodPosition.first, period).windowIndex, seekPosition.windowPositionUs) : periodPosition;
        }
        if (z && (objResolveSubsequentPeriod = resolveSubsequentPeriod(window, period, i, z2, periodPosition.first, timeline3, timeline)) != null) {
            return timeline.getPeriodPosition(window, period, timeline.getPeriodByUid(objResolveSubsequentPeriod, period).windowIndex, com.google.android.exoplayer2.C.TIME_UNSET);
        }
        return null;
    }

    public static java.lang.Object resolveSubsequentPeriod(com.google.android.exoplayer2.Timeline.Window window, com.google.android.exoplayer2.Timeline.Period period, int i, boolean z, java.lang.Object obj, com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.Timeline timeline2) {
        int indexOfPeriod = timeline.getIndexOfPeriod(obj);
        int periodCount = timeline.getPeriodCount();
        int nextPeriodIndex = indexOfPeriod;
        int indexOfPeriod2 = -1;
        for (int i2 = 0; i2 < periodCount && indexOfPeriod2 == -1; i2++) {
            nextPeriodIndex = timeline.getNextPeriodIndex(nextPeriodIndex, period, window, i, z);
            if (nextPeriodIndex == -1) {
                break;
            }
            indexOfPeriod2 = timeline2.getIndexOfPeriod(timeline.getUidOfPeriod(nextPeriodIndex));
        }
        if (indexOfPeriod2 == -1) {
            return null;
        }
        return timeline2.getUidOfPeriod(indexOfPeriod2);
    }

    private void scheduleNextWork(long j, long j2) {
        this.handler.removeMessages(2);
        this.handler.sendEmptyMessageAtTime(2, j + j2);
    }

    private void seekToCurrentPosition(boolean z) throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = this.queue.getPlayingPeriod().info.id;
        long jSeekToPeriodPosition = seekToPeriodPosition(mediaPeriodId, this.playbackInfo.positionUs, true, false);
        if (jSeekToPeriodPosition != this.playbackInfo.positionUs) {
            com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
            this.playbackInfo = handlePositionDiscontinuity(mediaPeriodId, jSeekToPeriodPosition, playbackInfo.requestedContentPositionUs, playbackInfo.discontinuityStartPositionUs, z, 5);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00ab A[Catch: all -> 0x0152, TryCatch #0 {all -> 0x0152, blocks: (B:22:0x00a1, B:24:0x00ab, B:27:0x00b1, B:29:0x00b7, B:30:0x00ba, B:32:0x00c0, B:34:0x00ca, B:36:0x00d2, B:40:0x00da, B:42:0x00e4, B:44:0x00f4, B:46:0x00fb, B:48:0x0102, B:52:0x0116, B:56:0x011f), top: B:73:0x00a1 }] */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00ae  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void seekToInternal(com.google.android.exoplayer2.ExoPlayerImplInternal.SeekPosition r20) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 357
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.ExoPlayerImplInternal.seekToInternal(com.google.android.exoplayer2.ExoPlayerImplInternal$SeekPosition):void");
    }

    private long seekToPeriodPosition(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, long j, boolean z) {
        return seekToPeriodPosition(mediaPeriodId, j, this.queue.getPlayingPeriod() != this.queue.getReadingPeriod(), z);
    }

    private long seekToPeriodPosition(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, long j, boolean z, boolean z2) throws com.google.android.exoplayer2.ExoPlaybackException {
        stopRenderers();
        this.isRebuffering = false;
        if (z2 || this.playbackInfo.playbackState == 3) {
            setState(2);
        }
        com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        com.google.android.exoplayer2.MediaPeriodHolder next = playingPeriod;
        while (next != null && !mediaPeriodId.equals(next.info.id)) {
            next = next.getNext();
        }
        if (z || playingPeriod != next || (next != null && next.toRendererTime(j) < 0)) {
            for (com.google.android.exoplayer2.Renderer renderer : this.renderers) {
                disableRenderer(renderer);
            }
            if (next != null) {
                while (this.queue.getPlayingPeriod() != next) {
                    this.queue.advancePlayingPeriod();
                }
                this.queue.removeAfter(next);
                next.setRendererOffset(com.google.android.exoplayer2.MediaPeriodQueue.INITIAL_RENDERER_POSITION_OFFSET_US);
                enableRenderers();
            }
        }
        com.google.android.exoplayer2.MediaPeriodQueue mediaPeriodQueue = this.queue;
        if (next != null) {
            mediaPeriodQueue.removeAfter(next);
            if (!next.prepared) {
                next.info = next.info.copyWithStartPositionUs(j);
            } else if (next.hasEnabledTracks) {
                long jSeekToUs = next.mediaPeriod.seekToUs(j);
                next.mediaPeriod.discardBuffer(jSeekToUs - this.backBufferDurationUs, this.retainBackBufferFromKeyframe);
                j = jSeekToUs;
            }
            resetRendererPosition(j);
            maybeContinueLoading();
        } else {
            mediaPeriodQueue.clear();
            resetRendererPosition(j);
        }
        handleLoadingMediaPeriodChanged(false);
        this.handler.sendEmptyMessage(2);
        return j;
    }

    private void sendMessageInternal(com.google.android.exoplayer2.PlayerMessage playerMessage) {
        if (playerMessage.getPositionMs() == com.google.android.exoplayer2.C.TIME_UNSET) {
            sendMessageToTarget(playerMessage);
            return;
        }
        if (this.playbackInfo.timeline.isEmpty()) {
            this.pendingMessages.add(new com.google.android.exoplayer2.ExoPlayerImplInternal.PendingMessageInfo(playerMessage));
            return;
        }
        com.google.android.exoplayer2.ExoPlayerImplInternal.PendingMessageInfo pendingMessageInfo = new com.google.android.exoplayer2.ExoPlayerImplInternal.PendingMessageInfo(playerMessage);
        com.google.android.exoplayer2.Timeline timeline = this.playbackInfo.timeline;
        if (!resolvePendingMessagePosition(pendingMessageInfo, timeline, timeline, this.repeatMode, this.shuffleModeEnabled, this.window, this.period)) {
            playerMessage.markAsProcessed(false);
        } else {
            this.pendingMessages.add(pendingMessageInfo);
            java.util.Collections.sort(this.pendingMessages);
        }
    }

    private void sendMessageToTarget(com.google.android.exoplayer2.PlayerMessage playerMessage) {
        if (playerMessage.getLooper() != this.playbackLooper) {
            this.handler.obtainMessage(15, playerMessage).sendToTarget();
            return;
        }
        deliverMessage(playerMessage);
        int i = this.playbackInfo.playbackState;
        if (i == 3 || i == 2) {
            this.handler.sendEmptyMessage(2);
        }
    }

    private void sendMessageToTargetThread(final com.google.android.exoplayer2.PlayerMessage playerMessage) {
        android.os.Looper looper = playerMessage.getLooper();
        if (looper.getThread().isAlive()) {
            this.clock.createHandler(looper, null).post(new java.lang.Runnable() { // from class: e.c.a.a.d1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.b(playerMessage);
                }
            });
        } else {
            com.google.android.exoplayer2.util.Log.w("TAG", "Trying to send message on a dead thread.");
            playerMessage.markAsProcessed(false);
        }
    }

    private void setAllRendererStreamsFinal(long j) {
        for (com.google.android.exoplayer2.Renderer renderer : this.renderers) {
            if (renderer.getStream() != null) {
                setCurrentStreamFinal(renderer, j);
            }
        }
    }

    private void setCurrentStreamFinal(com.google.android.exoplayer2.Renderer renderer, long j) {
        renderer.setCurrentStreamFinal();
        if (renderer instanceof com.google.android.exoplayer2.text.TextRenderer) {
            ((com.google.android.exoplayer2.text.TextRenderer) renderer).setFinalStreamEndPositionUs(j);
        }
    }

    private void setForegroundModeInternal(boolean z, java.util.concurrent.atomic.AtomicBoolean atomicBoolean) {
        if (this.foregroundMode != z) {
            this.foregroundMode = z;
            if (!z) {
                for (com.google.android.exoplayer2.Renderer renderer : this.renderers) {
                    if (!isRendererEnabled(renderer) && this.renderersToReset.remove(renderer)) {
                        renderer.reset();
                    }
                }
            }
        }
        if (atomicBoolean != null) {
            synchronized (this) {
                atomicBoolean.set(true);
                notifyAll();
            }
        }
    }

    private void setMediaItemsInternal(com.google.android.exoplayer2.ExoPlayerImplInternal.MediaSourceListUpdateMessage mediaSourceListUpdateMessage) throws java.lang.Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        if (mediaSourceListUpdateMessage.windowIndex != -1) {
            this.pendingInitialSeekPosition = new com.google.android.exoplayer2.ExoPlayerImplInternal.SeekPosition(new com.google.android.exoplayer2.PlaylistTimeline(mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder), mediaSourceListUpdateMessage.windowIndex, mediaSourceListUpdateMessage.positionUs);
        }
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.setMediaSources(mediaSourceListUpdateMessage.mediaSourceHolders, mediaSourceListUpdateMessage.shuffleOrder), false);
    }

    private void setOffloadSchedulingEnabledInternal(boolean z) {
        if (z == this.offloadSchedulingEnabled) {
            return;
        }
        this.offloadSchedulingEnabled = z;
        int i = this.playbackInfo.playbackState;
        if (z || i == 4 || i == 1) {
            this.playbackInfo = this.playbackInfo.copyWithOffloadSchedulingEnabled(z);
        } else {
            this.handler.sendEmptyMessage(2);
        }
    }

    private void setPauseAtEndOfWindowInternal(boolean z) throws com.google.android.exoplayer2.ExoPlaybackException {
        this.pauseAtEndOfWindow = z;
        resetPendingPauseAtEndOfPeriod();
        if (!this.pendingPauseAtEndOfPeriod || this.queue.getReadingPeriod() == this.queue.getPlayingPeriod()) {
            return;
        }
        seekToCurrentPosition(true);
        handleLoadingMediaPeriodChanged(false);
    }

    private void setPlayWhenReadyInternal(boolean z, int i, boolean z2, int i2) {
        this.playbackInfoUpdate.incrementPendingOperationAcks(z2 ? 1 : 0);
        this.playbackInfoUpdate.setPlayWhenReadyChangeReason(i2);
        this.playbackInfo = this.playbackInfo.copyWithPlayWhenReady(z, i);
        this.isRebuffering = false;
        notifyTrackSelectionPlayWhenReadyChanged(z);
        if (!shouldPlayWhenReady()) {
            stopRenderers();
            updatePlaybackPositions();
            return;
        }
        int i3 = this.playbackInfo.playbackState;
        if (i3 == 3) {
            startRenderers();
        } else if (i3 != 2) {
            return;
        }
        this.handler.sendEmptyMessage(2);
    }

    private void setPlaybackParametersInternal(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        this.mediaClock.setPlaybackParameters(playbackParameters);
        handlePlaybackParameters(this.mediaClock.getPlaybackParameters(), true);
    }

    private void setRepeatModeInternal(int i) throws com.google.android.exoplayer2.ExoPlaybackException {
        this.repeatMode = i;
        if (!this.queue.updateRepeatMode(this.playbackInfo.timeline, i)) {
            seekToCurrentPosition(true);
        }
        handleLoadingMediaPeriodChanged(false);
    }

    private void setSeekParametersInternal(com.google.android.exoplayer2.SeekParameters seekParameters) {
        this.seekParameters = seekParameters;
    }

    private void setShuffleModeEnabledInternal(boolean z) throws com.google.android.exoplayer2.ExoPlaybackException {
        this.shuffleModeEnabled = z;
        if (!this.queue.updateShuffleModeEnabled(this.playbackInfo.timeline, z)) {
            seekToCurrentPosition(true);
        }
        handleLoadingMediaPeriodChanged(false);
    }

    private void setShuffleOrderInternal(com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) throws java.lang.Throwable {
        this.playbackInfoUpdate.incrementPendingOperationAcks(1);
        handleMediaSourceListInfoRefreshed(this.mediaSourceList.setShuffleOrder(shuffleOrder), false);
    }

    private void setState(int i) {
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        if (playbackInfo.playbackState != i) {
            this.playbackInfo = playbackInfo.copyWithPlaybackState(i);
        }
    }

    private boolean shouldAdvancePlayingPeriod() {
        com.google.android.exoplayer2.MediaPeriodHolder playingPeriod;
        com.google.android.exoplayer2.MediaPeriodHolder next;
        return shouldPlayWhenReady() && !this.pendingPauseAtEndOfPeriod && (playingPeriod = this.queue.getPlayingPeriod()) != null && (next = playingPeriod.getNext()) != null && this.rendererPositionUs >= next.getStartPositionRendererTime() && next.allRenderersInCorrectState;
    }

    private boolean shouldContinueLoading() {
        if (!isLoadingPossible()) {
            return false;
        }
        com.google.android.exoplayer2.MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        return this.loadControl.shouldContinueLoading(loadingPeriod == this.queue.getPlayingPeriod() ? loadingPeriod.toPeriodTime(this.rendererPositionUs) : loadingPeriod.toPeriodTime(this.rendererPositionUs) - loadingPeriod.info.startPositionUs, getTotalBufferedDurationUs(loadingPeriod.getNextLoadPositionUs()), this.mediaClock.getPlaybackParameters().speed);
    }

    private boolean shouldPlayWhenReady() {
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        return playbackInfo.playWhenReady && playbackInfo.playbackSuppressionReason == 0;
    }

    private boolean shouldTransitionToReadyState(boolean z) {
        if (this.enabledRendererCount == 0) {
            return isTimelineReady();
        }
        if (!z) {
            return false;
        }
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        if (!playbackInfo.isLoading) {
            return true;
        }
        long targetLiveOffsetUs = shouldUseLivePlaybackSpeedControl(playbackInfo.timeline, this.queue.getPlayingPeriod().info.id) ? this.livePlaybackSpeedControl.getTargetLiveOffsetUs() : com.google.android.exoplayer2.C.TIME_UNSET;
        com.google.android.exoplayer2.MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        return (loadingPeriod.isFullyBuffered() && loadingPeriod.info.isFinal) || (loadingPeriod.info.id.isAd() && !loadingPeriod.prepared) || this.loadControl.shouldStartPlayback(getTotalBufferedDurationUs(), this.mediaClock.getPlaybackParameters().speed, this.isRebuffering, targetLiveOffsetUs);
    }

    private boolean shouldUseLivePlaybackSpeedControl(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        if (mediaPeriodId.isAd() || timeline.isEmpty()) {
            return false;
        }
        timeline.getWindow(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, this.window);
        if (!this.window.isLive()) {
            return false;
        }
        com.google.android.exoplayer2.Timeline.Window window = this.window;
        return window.isDynamic && window.windowStartTimeMs != com.google.android.exoplayer2.C.TIME_UNSET;
    }

    private void startRenderers() {
        this.isRebuffering = false;
        this.mediaClock.start();
        for (com.google.android.exoplayer2.Renderer renderer : this.renderers) {
            if (isRendererEnabled(renderer)) {
                renderer.start();
            }
        }
    }

    private void stopInternal(boolean z, boolean z2) {
        resetInternal(z || !this.foregroundMode, false, true, false);
        this.playbackInfoUpdate.incrementPendingOperationAcks(z2 ? 1 : 0);
        this.loadControl.onStopped();
        setState(1);
    }

    private void stopRenderers() {
        this.mediaClock.stop();
        for (com.google.android.exoplayer2.Renderer renderer : this.renderers) {
            if (isRendererEnabled(renderer)) {
                ensureStopped(renderer);
            }
        }
    }

    private void updateIsLoading() {
        com.google.android.exoplayer2.MediaPeriodHolder loadingPeriod = this.queue.getLoadingPeriod();
        boolean z = this.shouldContinueLoading || (loadingPeriod != null && loadingPeriod.mediaPeriod.isLoading());
        com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
        if (z != playbackInfo.isLoading) {
            this.playbackInfo = playbackInfo.copyWithIsLoading(z);
        }
    }

    private void updateLivePlaybackSpeedControl(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.Timeline timeline2, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId2, long j) {
        if (timeline.isEmpty() || !shouldUseLivePlaybackSpeedControl(timeline, mediaPeriodId)) {
            float f2 = this.mediaClock.getPlaybackParameters().speed;
            com.google.android.exoplayer2.PlaybackParameters playbackParameters = this.playbackInfo.playbackParameters;
            if (f2 != playbackParameters.speed) {
                this.mediaClock.setPlaybackParameters(playbackParameters);
                return;
            }
            return;
        }
        timeline.getWindow(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, this.window);
        this.livePlaybackSpeedControl.setLiveConfiguration((com.google.android.exoplayer2.MediaItem.LiveConfiguration) com.google.android.exoplayer2.util.Util.castNonNull(this.window.liveConfiguration));
        if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
            this.livePlaybackSpeedControl.setTargetLiveOffsetOverrideUs(getLiveOffsetUs(timeline, mediaPeriodId.periodUid, j));
            return;
        }
        if (com.google.android.exoplayer2.util.Util.areEqual(timeline2.isEmpty() ? null : timeline2.getWindow(timeline2.getPeriodByUid(mediaPeriodId2.periodUid, this.period).windowIndex, this.window).uid, this.window.uid)) {
            return;
        }
        this.livePlaybackSpeedControl.setTargetLiveOffsetOverrideUs(com.google.android.exoplayer2.C.TIME_UNSET);
    }

    private void updateLoadControlTrackSelection(com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult) {
        this.loadControl.onTracksSelected(this.renderers, trackGroupArray, trackSelectorResult.selections);
    }

    private void updatePeriods() throws com.google.android.exoplayer2.ExoPlaybackException {
        if (this.playbackInfo.timeline.isEmpty() || !this.mediaSourceList.isPrepared()) {
            return;
        }
        maybeUpdateLoadingPeriod();
        maybeUpdateReadingPeriod();
        maybeUpdateReadingRenderers();
        maybeUpdatePlayingPeriod();
    }

    private void updatePlaybackPositions() {
        com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod();
        if (playingPeriod == null) {
            return;
        }
        long discontinuity = playingPeriod.prepared ? playingPeriod.mediaPeriod.readDiscontinuity() : -9223372036854775807L;
        if (discontinuity != com.google.android.exoplayer2.C.TIME_UNSET) {
            resetRendererPosition(discontinuity);
            if (discontinuity != this.playbackInfo.positionUs) {
                com.google.android.exoplayer2.PlaybackInfo playbackInfo = this.playbackInfo;
                this.playbackInfo = handlePositionDiscontinuity(playbackInfo.periodId, discontinuity, playbackInfo.requestedContentPositionUs, discontinuity, true, 5);
            }
        } else {
            long jSyncAndGetPositionUs = this.mediaClock.syncAndGetPositionUs(playingPeriod != this.queue.getReadingPeriod());
            this.rendererPositionUs = jSyncAndGetPositionUs;
            long periodTime = playingPeriod.toPeriodTime(jSyncAndGetPositionUs);
            maybeTriggerPendingMessages(this.playbackInfo.positionUs, periodTime);
            this.playbackInfo.positionUs = periodTime;
        }
        this.playbackInfo.bufferedPositionUs = this.queue.getLoadingPeriod().getBufferedPositionUs();
        this.playbackInfo.totalBufferedDurationUs = getTotalBufferedDurationUs();
        com.google.android.exoplayer2.PlaybackInfo playbackInfo2 = this.playbackInfo;
        if (playbackInfo2.playWhenReady && playbackInfo2.playbackState == 3 && shouldUseLivePlaybackSpeedControl(playbackInfo2.timeline, playbackInfo2.periodId) && this.playbackInfo.playbackParameters.speed == 1.0f) {
            float adjustedPlaybackSpeed = this.livePlaybackSpeedControl.getAdjustedPlaybackSpeed(getCurrentLiveOffsetUs(), getTotalBufferedDurationUs());
            if (this.mediaClock.getPlaybackParameters().speed != adjustedPlaybackSpeed) {
                this.mediaClock.setPlaybackParameters(this.playbackInfo.playbackParameters.withSpeed(adjustedPlaybackSpeed));
                handlePlaybackParameters(this.playbackInfo.playbackParameters, this.mediaClock.getPlaybackParameters().speed, false, false);
            }
        }
    }

    private void updateTrackSelectionPlaybackSpeed(float f2) {
        for (com.google.android.exoplayer2.MediaPeriodHolder playingPeriod = this.queue.getPlayingPeriod(); playingPeriod != null; playingPeriod = playingPeriod.getNext()) {
            for (com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection : playingPeriod.getTrackSelectorResult().selections) {
                if (exoTrackSelection != null) {
                    exoTrackSelection.onPlaybackSpeed(f2);
                }
            }
        }
    }

    private synchronized void waitUninterruptibly(e.c.b.a.k<java.lang.Boolean> kVar, long j) {
        long jElapsedRealtime = this.clock.elapsedRealtime() + j;
        boolean z = false;
        while (!kVar.get().booleanValue() && j > 0) {
            try {
                this.clock.onThreadBlocked();
                wait(j);
            } catch (java.lang.InterruptedException unused) {
                z = true;
            }
            j = jElapsedRealtime - this.clock.elapsedRealtime();
        }
        if (z) {
            java.lang.Thread.currentThread().interrupt();
        }
    }

    public /* synthetic */ java.lang.Boolean a() {
        return java.lang.Boolean.valueOf(this.released);
    }

    public void addMediaSources(int i, java.util.List<com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> list, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(18, i, 0, new com.google.android.exoplayer2.ExoPlayerImplInternal.MediaSourceListUpdateMessage(list, shuffleOrder, -1, com.google.android.exoplayer2.C.TIME_UNSET)).sendToTarget();
    }

    public /* synthetic */ void b(com.google.android.exoplayer2.PlayerMessage playerMessage) {
        try {
            deliverMessage(playerMessage);
        } catch (com.google.android.exoplayer2.ExoPlaybackException e2) {
            com.google.android.exoplayer2.util.Log.e(TAG, "Unexpected error delivering message on external thread.", e2);
            throw new java.lang.RuntimeException(e2);
        }
    }

    public void experimentalSetForegroundModeTimeoutMs(long j) {
        this.setForegroundModeTimeoutMs = j;
    }

    public void experimentalSetOffloadSchedulingEnabled(boolean z) {
        this.handler.obtainMessage(24, z ? 1 : 0, 0).sendToTarget();
    }

    public android.os.Looper getPlaybackLooper() {
        return this.playbackLooper;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(android.os.Message message) throws java.lang.Throwable {
        com.google.android.exoplayer2.ExoPlaybackException e2;
        int i;
        java.io.IOException iOException;
        com.google.android.exoplayer2.MediaPeriodHolder readingPeriod;
        try {
            switch (message.what) {
                case 0:
                    prepareInternal();
                    break;
                case 1:
                    setPlayWhenReadyInternal(message.arg1 != 0, message.arg2, true, 1);
                    break;
                case 2:
                    doSomeWork();
                    break;
                case 3:
                    seekToInternal((com.google.android.exoplayer2.ExoPlayerImplInternal.SeekPosition) message.obj);
                    break;
                case 4:
                    setPlaybackParametersInternal((com.google.android.exoplayer2.PlaybackParameters) message.obj);
                    break;
                case 5:
                    setSeekParametersInternal((com.google.android.exoplayer2.SeekParameters) message.obj);
                    break;
                case 6:
                    stopInternal(false, true);
                    break;
                case 7:
                    releaseInternal();
                    return true;
                case 8:
                    handlePeriodPrepared((com.google.android.exoplayer2.source.MediaPeriod) message.obj);
                    break;
                case 9:
                    handleContinueLoadingRequested((com.google.android.exoplayer2.source.MediaPeriod) message.obj);
                    break;
                case 10:
                    reselectTracksInternal();
                    break;
                case 11:
                    setRepeatModeInternal(message.arg1);
                    break;
                case 12:
                    setShuffleModeEnabledInternal(message.arg1 != 0);
                    break;
                case 13:
                    setForegroundModeInternal(message.arg1 != 0, (java.util.concurrent.atomic.AtomicBoolean) message.obj);
                    break;
                case 14:
                    sendMessageInternal((com.google.android.exoplayer2.PlayerMessage) message.obj);
                    break;
                case 15:
                    sendMessageToTargetThread((com.google.android.exoplayer2.PlayerMessage) message.obj);
                    break;
                case 16:
                    handlePlaybackParameters((com.google.android.exoplayer2.PlaybackParameters) message.obj, false);
                    break;
                case 17:
                    setMediaItemsInternal((com.google.android.exoplayer2.ExoPlayerImplInternal.MediaSourceListUpdateMessage) message.obj);
                    break;
                case 18:
                    addMediaItemsInternal((com.google.android.exoplayer2.ExoPlayerImplInternal.MediaSourceListUpdateMessage) message.obj, message.arg1);
                    break;
                case 19:
                    moveMediaItemsInternal((com.google.android.exoplayer2.ExoPlayerImplInternal.MoveMediaItemsMessage) message.obj);
                    break;
                case 20:
                    removeMediaItemsInternal(message.arg1, message.arg2, (com.google.android.exoplayer2.source.ShuffleOrder) message.obj);
                    break;
                case 21:
                    setShuffleOrderInternal((com.google.android.exoplayer2.source.ShuffleOrder) message.obj);
                    break;
                case 22:
                    mediaSourceListUpdateRequestedInternal();
                    break;
                case 23:
                    setPauseAtEndOfWindowInternal(message.arg1 != 0);
                    break;
                case 24:
                    setOffloadSchedulingEnabledInternal(message.arg1 == 1);
                    break;
                case 25:
                    attemptRendererErrorRecovery();
                    break;
                default:
                    return false;
            }
        } catch (com.google.android.exoplayer2.ExoPlaybackException e3) {
            e2 = e3;
            if (e2.type == 1 && (readingPeriod = this.queue.getReadingPeriod()) != null) {
                e2 = e2.copyWithMediaPeriodId(readingPeriod.info.id);
            }
            if (e2.isRecoverable && this.pendingRecoverableRendererError == null) {
                com.google.android.exoplayer2.util.Log.w(TAG, "Recoverable renderer error", e2);
                this.pendingRecoverableRendererError = e2;
                com.google.android.exoplayer2.util.HandlerWrapper handlerWrapper = this.handler;
                handlerWrapper.sendMessageAtFrontOfQueue(handlerWrapper.obtainMessage(25, e2));
            } else {
                if (this.pendingRecoverableRendererError != null) {
                    e2 = this.pendingRecoverableRendererError;
                }
                com.google.android.exoplayer2.util.Log.e(TAG, "Playback error", e2);
                stopInternal(true, false);
                this.playbackInfo = this.playbackInfo.copyWithPlaybackError(e2);
            }
        } catch (com.google.android.exoplayer2.ParserException e4) {
            int i2 = e4.dataType;
            if (i2 == 1) {
                i = e4.contentIsMalformed ? com.google.android.exoplayer2.PlaybackException.ERROR_CODE_PARSING_CONTAINER_MALFORMED : com.google.android.exoplayer2.PlaybackException.ERROR_CODE_PARSING_CONTAINER_UNSUPPORTED;
            } else if (i2 == 4) {
                i = e4.contentIsMalformed ? com.google.android.exoplayer2.PlaybackException.ERROR_CODE_PARSING_MANIFEST_MALFORMED : com.google.android.exoplayer2.PlaybackException.ERROR_CODE_PARSING_MANIFEST_UNSUPPORTED;
            }
            handleIoException(e4, i);
        } catch (com.google.android.exoplayer2.drm.DrmSession.DrmSessionException e5) {
            i = e5.errorCode;
            iOException = e5;
            handleIoException(iOException, i);
        } catch (com.google.android.exoplayer2.source.BehindLiveWindowException e6) {
            i = 1002;
            iOException = e6;
            handleIoException(iOException, i);
        } catch (com.google.android.exoplayer2.upstream.DataSourceException e7) {
            i = e7.reason;
            iOException = e7;
            handleIoException(iOException, i);
        } catch (java.io.IOException e8) {
            i = 2000;
            iOException = e8;
            handleIoException(iOException, i);
        } catch (java.lang.RuntimeException e9) {
            e2 = com.google.android.exoplayer2.ExoPlaybackException.createForUnexpected(e9, ((e9 instanceof java.lang.IllegalStateException) || (e9 instanceof java.lang.IllegalArgumentException)) ? 1004 : 1000);
            com.google.android.exoplayer2.util.Log.e(TAG, "Playback error", e2);
            stopInternal(true, false);
            this.playbackInfo = this.playbackInfo.copyWithPlaybackError(e2);
        }
        maybeNotifyPlaybackInfoChanged();
        return true;
    }

    public void moveMediaSources(int i, int i2, int i3, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(19, new com.google.android.exoplayer2.ExoPlayerImplInternal.MoveMediaItemsMessage(i, i2, i3, shuffleOrder)).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        this.handler.obtainMessage(9, mediaPeriod).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.DefaultMediaClock.PlaybackParametersListener
    public void onPlaybackParametersChanged(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        this.handler.obtainMessage(16, playbackParameters).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.MediaSourceList.MediaSourceListInfoRefreshListener
    public void onPlaylistUpdateRequested() {
        this.handler.sendEmptyMessage(22);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
    public void onPrepared(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        this.handler.obtainMessage(8, mediaPeriod).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.trackselection.TrackSelector.InvalidationListener
    public void onTrackSelectionsInvalidated() {
        this.handler.sendEmptyMessage(10);
    }

    public void prepare() {
        this.handler.obtainMessage(0).sendToTarget();
    }

    public synchronized boolean release() {
        if (!this.released && this.internalPlaybackThread.isAlive()) {
            this.handler.sendEmptyMessage(7);
            waitUninterruptibly(new e.c.b.a.k() { // from class: e.c.a.a.c1
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return this.a.a();
                }
            }, this.releaseTimeoutMs);
            return this.released;
        }
        return true;
    }

    public void removeMediaSources(int i, int i2, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(20, i, i2, shuffleOrder).sendToTarget();
    }

    public void seekTo(com.google.android.exoplayer2.Timeline timeline, int i, long j) {
        this.handler.obtainMessage(3, new com.google.android.exoplayer2.ExoPlayerImplInternal.SeekPosition(timeline, i, j)).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.PlayerMessage.Sender
    public synchronized void sendMessage(com.google.android.exoplayer2.PlayerMessage playerMessage) {
        if (!this.released && this.internalPlaybackThread.isAlive()) {
            this.handler.obtainMessage(14, playerMessage).sendToTarget();
            return;
        }
        com.google.android.exoplayer2.util.Log.w(TAG, "Ignoring messages sent after release.");
        playerMessage.markAsProcessed(false);
    }

    public synchronized boolean setForegroundMode(boolean z) {
        if (!this.released && this.internalPlaybackThread.isAlive()) {
            if (z) {
                this.handler.obtainMessage(13, 1, 0).sendToTarget();
                return true;
            }
            final java.util.concurrent.atomic.AtomicBoolean atomicBoolean = new java.util.concurrent.atomic.AtomicBoolean();
            this.handler.obtainMessage(13, 0, 0, atomicBoolean).sendToTarget();
            waitUninterruptibly(new e.c.b.a.k() { // from class: e.c.a.a.s1
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return java.lang.Boolean.valueOf(atomicBoolean.get());
                }
            }, this.setForegroundModeTimeoutMs);
            return atomicBoolean.get();
        }
        return true;
    }

    public void setMediaSources(java.util.List<com.google.android.exoplayer2.MediaSourceList.MediaSourceHolder> list, int i, long j, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(17, new com.google.android.exoplayer2.ExoPlayerImplInternal.MediaSourceListUpdateMessage(list, shuffleOrder, i, j)).sendToTarget();
    }

    public void setPauseAtEndOfWindow(boolean z) {
        this.handler.obtainMessage(23, z ? 1 : 0, 0).sendToTarget();
    }

    public void setPlayWhenReady(boolean z, int i) {
        this.handler.obtainMessage(1, z ? 1 : 0, i).sendToTarget();
    }

    public void setPlaybackParameters(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        this.handler.obtainMessage(4, playbackParameters).sendToTarget();
    }

    public void setRepeatMode(int i) {
        this.handler.obtainMessage(11, i, 0).sendToTarget();
    }

    public void setSeekParameters(com.google.android.exoplayer2.SeekParameters seekParameters) {
        this.handler.obtainMessage(5, seekParameters).sendToTarget();
    }

    public void setShuffleModeEnabled(boolean z) {
        this.handler.obtainMessage(12, z ? 1 : 0, 0).sendToTarget();
    }

    public void setShuffleOrder(com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        this.handler.obtainMessage(21, shuffleOrder).sendToTarget();
    }

    public void stop() {
        this.handler.obtainMessage(6).sendToTarget();
    }
}
