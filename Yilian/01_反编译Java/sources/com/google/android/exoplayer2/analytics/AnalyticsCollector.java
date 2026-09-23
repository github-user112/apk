package com.google.android.exoplayer2.analytics;

/* loaded from: classes.dex */
public class AnalyticsCollector implements com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.audio.AudioRendererEventListener, com.google.android.exoplayer2.video.VideoRendererEventListener, com.google.android.exoplayer2.source.MediaSourceEventListener, com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener, com.google.android.exoplayer2.drm.DrmSessionEventListener {
    public final com.google.android.exoplayer2.util.Clock clock;
    public com.google.android.exoplayer2.util.HandlerWrapper handler;
    public boolean isSeeking;
    public com.google.android.exoplayer2.util.ListenerSet<com.google.android.exoplayer2.analytics.AnalyticsListener> listeners;
    public com.google.android.exoplayer2.Player player;
    public final com.google.android.exoplayer2.Timeline.Period period = new com.google.android.exoplayer2.Timeline.Period();
    public final com.google.android.exoplayer2.Timeline.Window window = new com.google.android.exoplayer2.Timeline.Window();
    public final com.google.android.exoplayer2.analytics.AnalyticsCollector.MediaPeriodQueueTracker mediaPeriodQueueTracker = new com.google.android.exoplayer2.analytics.AnalyticsCollector.MediaPeriodQueueTracker(this.period);
    public final android.util.SparseArray<com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime> eventTimes = new android.util.SparseArray<>();

    public static final class MediaPeriodQueueTracker {
        public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId currentPlayerMediaPeriod;
        public e.c.b.b.s<com.google.android.exoplayer2.source.MediaSource.MediaPeriodId> mediaPeriodQueue = e.c.b.b.s.p();
        public e.c.b.b.t<com.google.android.exoplayer2.source.MediaSource.MediaPeriodId, com.google.android.exoplayer2.Timeline> mediaPeriodTimelines = e.c.b.b.l0.f2709g;
        public final com.google.android.exoplayer2.Timeline.Period period;
        public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId playingMediaPeriod;
        public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId readingMediaPeriod;

        public MediaPeriodQueueTracker(com.google.android.exoplayer2.Timeline.Period period) {
            this.period = period;
        }

        private void addTimelineForMediaPeriodId(e.c.b.b.t.a<com.google.android.exoplayer2.source.MediaSource.MediaPeriodId, com.google.android.exoplayer2.Timeline> aVar, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.Timeline timeline) {
            if (mediaPeriodId == null) {
                return;
            }
            if (timeline.getIndexOfPeriod(mediaPeriodId.periodUid) == -1 && (timeline = this.mediaPeriodTimelines.get(mediaPeriodId)) == null) {
                return;
            }
            aVar.c(mediaPeriodId, timeline);
        }

        public static com.google.android.exoplayer2.source.MediaSource.MediaPeriodId findCurrentPlayerMediaPeriodInQueue(com.google.android.exoplayer2.Player player, e.c.b.b.s<com.google.android.exoplayer2.source.MediaSource.MediaPeriodId> sVar, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.Timeline.Period period) {
            com.google.android.exoplayer2.Timeline currentTimeline = player.getCurrentTimeline();
            int currentPeriodIndex = player.getCurrentPeriodIndex();
            java.lang.Object uidOfPeriod = currentTimeline.isEmpty() ? null : currentTimeline.getUidOfPeriod(currentPeriodIndex);
            int adGroupIndexAfterPositionUs = (player.isPlayingAd() || currentTimeline.isEmpty()) ? -1 : currentTimeline.getPeriod(currentPeriodIndex, period).getAdGroupIndexAfterPositionUs(com.google.android.exoplayer2.util.Util.msToUs(player.getCurrentPosition()) - period.getPositionInWindowUs());
            for (int i = 0; i < sVar.size(); i++) {
                com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId2 = sVar.get(i);
                if (isMatchingMediaPeriod(mediaPeriodId2, uidOfPeriod, player.isPlayingAd(), player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup(), adGroupIndexAfterPositionUs)) {
                    return mediaPeriodId2;
                }
            }
            if (sVar.isEmpty() && mediaPeriodId != null) {
                if (isMatchingMediaPeriod(mediaPeriodId, uidOfPeriod, player.isPlayingAd(), player.getCurrentAdGroupIndex(), player.getCurrentAdIndexInAdGroup(), adGroupIndexAfterPositionUs)) {
                    return mediaPeriodId;
                }
            }
            return null;
        }

        public static boolean isMatchingMediaPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, java.lang.Object obj, boolean z, int i, int i2, int i3) {
            if (mediaPeriodId.periodUid.equals(obj)) {
                return (z && mediaPeriodId.adGroupIndex == i && mediaPeriodId.adIndexInAdGroup == i2) || (!z && mediaPeriodId.adGroupIndex == -1 && mediaPeriodId.nextAdGroupIndex == i3);
            }
            return false;
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0057  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void updateMediaPeriodTimelines(com.google.android.exoplayer2.Timeline r4) {
            /*
                r3 = this;
                e.c.b.b.t$a r0 = new e.c.b.b.t$a
                r0.<init>()
                e.c.b.b.s<com.google.android.exoplayer2.source.MediaSource$MediaPeriodId> r1 = r3.mediaPeriodQueue
                boolean r1 = r1.isEmpty()
                if (r1 == 0) goto L36
                com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r1 = r3.playingMediaPeriod
                r3.addTimelineForMediaPeriodId(r0, r1, r4)
                com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r1 = r3.readingMediaPeriod
                com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r2 = r3.playingMediaPeriod
                boolean r1 = e.c.b.a.f.h(r1, r2)
                if (r1 != 0) goto L21
                com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r1 = r3.readingMediaPeriod
                r3.addTimelineForMediaPeriodId(r0, r1, r4)
            L21:
                com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r1 = r3.currentPlayerMediaPeriod
                com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r2 = r3.playingMediaPeriod
                boolean r1 = e.c.b.a.f.h(r1, r2)
                if (r1 != 0) goto L5c
                com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r1 = r3.currentPlayerMediaPeriod
                com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r2 = r3.readingMediaPeriod
                boolean r1 = e.c.b.a.f.h(r1, r2)
                if (r1 != 0) goto L5c
                goto L57
            L36:
                r1 = 0
            L37:
                e.c.b.b.s<com.google.android.exoplayer2.source.MediaSource$MediaPeriodId> r2 = r3.mediaPeriodQueue
                int r2 = r2.size()
                if (r1 >= r2) goto L4d
                e.c.b.b.s<com.google.android.exoplayer2.source.MediaSource$MediaPeriodId> r2 = r3.mediaPeriodQueue
                java.lang.Object r2 = r2.get(r1)
                com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r2 = (com.google.android.exoplayer2.source.MediaSource.MediaPeriodId) r2
                r3.addTimelineForMediaPeriodId(r0, r2, r4)
                int r1 = r1 + 1
                goto L37
            L4d:
                e.c.b.b.s<com.google.android.exoplayer2.source.MediaSource$MediaPeriodId> r1 = r3.mediaPeriodQueue
                com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r2 = r3.currentPlayerMediaPeriod
                boolean r1 = r1.contains(r2)
                if (r1 != 0) goto L5c
            L57:
                com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r1 = r3.currentPlayerMediaPeriod
                r3.addTimelineForMediaPeriodId(r0, r1, r4)
            L5c:
                e.c.b.b.t r4 = r0.a()
                r3.mediaPeriodTimelines = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.analytics.AnalyticsCollector.MediaPeriodQueueTracker.updateMediaPeriodTimelines(com.google.android.exoplayer2.Timeline):void");
        }

        public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId getCurrentPlayerMediaPeriod() {
            return this.currentPlayerMediaPeriod;
        }

        public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId getLoadingMediaPeriod() {
            if (this.mediaPeriodQueue.isEmpty()) {
                return null;
            }
            return (com.google.android.exoplayer2.source.MediaSource.MediaPeriodId) e.c.b.a.f.l(this.mediaPeriodQueue);
        }

        public com.google.android.exoplayer2.Timeline getMediaPeriodIdTimeline(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
            return this.mediaPeriodTimelines.get(mediaPeriodId);
        }

        public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId getPlayingMediaPeriod() {
            return this.playingMediaPeriod;
        }

        public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId getReadingMediaPeriod() {
            return this.readingMediaPeriod;
        }

        public void onPositionDiscontinuity(com.google.android.exoplayer2.Player player) {
            this.currentPlayerMediaPeriod = findCurrentPlayerMediaPeriodInQueue(player, this.mediaPeriodQueue, this.playingMediaPeriod, this.period);
        }

        public void onQueueUpdated(java.util.List<com.google.android.exoplayer2.source.MediaSource.MediaPeriodId> list, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.Player player) {
            this.mediaPeriodQueue = e.c.b.b.s.l(list);
            if (!list.isEmpty()) {
                this.playingMediaPeriod = list.get(0);
                this.readingMediaPeriod = (com.google.android.exoplayer2.source.MediaSource.MediaPeriodId) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaPeriodId);
            }
            if (this.currentPlayerMediaPeriod == null) {
                this.currentPlayerMediaPeriod = findCurrentPlayerMediaPeriodInQueue(player, this.mediaPeriodQueue, this.playingMediaPeriod, this.period);
            }
            updateMediaPeriodTimelines(player.getCurrentTimeline());
        }

        public void onTimelineChanged(com.google.android.exoplayer2.Player player) {
            this.currentPlayerMediaPeriod = findCurrentPlayerMediaPeriodInQueue(player, this.mediaPeriodQueue, this.playingMediaPeriod, this.period);
            updateMediaPeriodTimelines(player.getCurrentTimeline());
        }
    }

    public AnalyticsCollector(com.google.android.exoplayer2.util.Clock clock) {
        this.clock = (com.google.android.exoplayer2.util.Clock) com.google.android.exoplayer2.util.Assertions.checkNotNull(clock);
        this.listeners = new com.google.android.exoplayer2.util.ListenerSet<>(com.google.android.exoplayer2.util.Util.getCurrentOrMainLooper(), clock, new com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent() { // from class: e.c.a.a.f2.f0
            @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
            public final void invoke(java.lang.Object obj, com.google.android.exoplayer2.util.FlagSet flagSet) {
            }
        });
    }

    public static /* synthetic */ void N(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i, com.google.android.exoplayer2.Player.PositionInfo positionInfo, com.google.android.exoplayer2.Player.PositionInfo positionInfo2, com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        analyticsListener.onPositionDiscontinuity(eventTime, i);
        analyticsListener.onPositionDiscontinuity(eventTime, positionInfo, positionInfo2, i);
    }

    public static /* synthetic */ void b0(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str, long j, long j2, com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        analyticsListener.onVideoDecoderInitialized(eventTime, str, j);
        analyticsListener.onVideoDecoderInitialized(eventTime, str, j2, j);
        analyticsListener.onDecoderInitialized(eventTime, 2, str, j);
    }

    public static /* synthetic */ void d(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, java.lang.String str, long j, long j2, com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        analyticsListener.onAudioDecoderInitialized(eventTime, str, j);
        analyticsListener.onAudioDecoderInitialized(eventTime, str, j2, j);
        analyticsListener.onDecoderInitialized(eventTime, 1, str, j);
    }

    public static /* synthetic */ void d0(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters, com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        analyticsListener.onVideoDisabled(eventTime, decoderCounters);
        analyticsListener.onDecoderDisabled(eventTime, 2, decoderCounters);
    }

    public static /* synthetic */ void e0(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters, com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        analyticsListener.onVideoEnabled(eventTime, decoderCounters);
        analyticsListener.onDecoderEnabled(eventTime, 2, decoderCounters);
    }

    public static /* synthetic */ void f(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters, com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        analyticsListener.onAudioDisabled(eventTime, decoderCounters);
        analyticsListener.onDecoderDisabled(eventTime, 1, decoderCounters);
    }

    public static /* synthetic */ void g(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters, com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        analyticsListener.onAudioEnabled(eventTime, decoderCounters);
        analyticsListener.onDecoderEnabled(eventTime, 1, decoderCounters);
    }

    public static /* synthetic */ void g0(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation, com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        analyticsListener.onVideoInputFormatChanged(eventTime, format);
        analyticsListener.onVideoInputFormatChanged(eventTime, format, decoderReuseEvaluation);
        analyticsListener.onDecoderInputFormatChanged(eventTime, 2, format);
    }

    private com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime generateEventTime(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.player);
        com.google.android.exoplayer2.Timeline mediaPeriodIdTimeline = mediaPeriodId == null ? null : this.mediaPeriodQueueTracker.getMediaPeriodIdTimeline(mediaPeriodId);
        if (mediaPeriodId != null && mediaPeriodIdTimeline != null) {
            return generateEventTime(mediaPeriodIdTimeline, mediaPeriodIdTimeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, mediaPeriodId);
        }
        int currentMediaItemIndex = this.player.getCurrentMediaItemIndex();
        com.google.android.exoplayer2.Timeline currentTimeline = this.player.getCurrentTimeline();
        if (!(currentMediaItemIndex < currentTimeline.getWindowCount())) {
            currentTimeline = com.google.android.exoplayer2.Timeline.EMPTY;
        }
        return generateEventTime(currentTimeline, currentMediaItemIndex, null);
    }

    private com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime generateLoadingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getLoadingMediaPeriod());
    }

    private com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime generateMediaPeriodEventTime(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.player);
        if (mediaPeriodId != null) {
            return this.mediaPeriodQueueTracker.getMediaPeriodIdTimeline(mediaPeriodId) != null ? generateEventTime(mediaPeriodId) : generateEventTime(com.google.android.exoplayer2.Timeline.EMPTY, i, mediaPeriodId);
        }
        com.google.android.exoplayer2.Timeline currentTimeline = this.player.getCurrentTimeline();
        if (!(i < currentTimeline.getWindowCount())) {
            currentTimeline = com.google.android.exoplayer2.Timeline.EMPTY;
        }
        return generateEventTime(currentTimeline, i, null);
    }

    private com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime generatePlayingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getPlayingMediaPeriod());
    }

    private com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime generateReadingMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getReadingMediaPeriod());
    }

    public static /* synthetic */ void h(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation, com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        analyticsListener.onAudioInputFormatChanged(eventTime, format);
        analyticsListener.onAudioInputFormatChanged(eventTime, format, decoderReuseEvaluation);
        analyticsListener.onDecoderInputFormatChanged(eventTime, 1, format);
    }

    public static /* synthetic */ void h0(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, com.google.android.exoplayer2.video.VideoSize videoSize, com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        analyticsListener.onVideoSizeChanged(eventTime, videoSize);
        analyticsListener.onVideoSizeChanged(eventTime, videoSize.width, videoSize.height, videoSize.unappliedRotationDegrees, videoSize.pixelWidthHeightRatio);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseInternal() {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_PLAYER_RELEASED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.y0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onPlayerReleased(eventTimeGenerateCurrentPlayerMediaPeriodEventTime);
            }
        });
        this.listeners.release();
    }

    public static /* synthetic */ void s(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i, com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        analyticsListener.onDrmSessionAcquired(eventTime);
        analyticsListener.onDrmSessionAcquired(eventTime, i);
    }

    public static /* synthetic */ void w(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, boolean z, com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        analyticsListener.onLoadingChanged(eventTime, z);
        analyticsListener.onIsLoadingChanged(eventTime, z);
    }

    public void addListener(com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(analyticsListener);
        this.listeners.add(analyticsListener);
    }

    public final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime generateCurrentPlayerMediaPeriodEventTime() {
        return generateEventTime(this.mediaPeriodQueueTracker.getCurrentPlayerMediaPeriod());
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"player"})
    public final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime generateEventTime(com.google.android.exoplayer2.Timeline timeline, int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        long contentPosition;
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId2 = timeline.isEmpty() ? null : mediaPeriodId;
        long jElapsedRealtime = this.clock.elapsedRealtime();
        boolean z = timeline.equals(this.player.getCurrentTimeline()) && i == this.player.getCurrentMediaItemIndex();
        long defaultPositionMs = 0;
        if (mediaPeriodId2 != null && mediaPeriodId2.isAd()) {
            if (z && this.player.getCurrentAdGroupIndex() == mediaPeriodId2.adGroupIndex && this.player.getCurrentAdIndexInAdGroup() == mediaPeriodId2.adIndexInAdGroup) {
                defaultPositionMs = this.player.getCurrentPosition();
            }
        } else {
            if (z) {
                contentPosition = this.player.getContentPosition();
                return new com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime(jElapsedRealtime, timeline, i, mediaPeriodId2, contentPosition, this.player.getCurrentTimeline(), this.player.getCurrentMediaItemIndex(), this.mediaPeriodQueueTracker.getCurrentPlayerMediaPeriod(), this.player.getCurrentPosition(), this.player.getTotalBufferedDuration());
            }
            if (!timeline.isEmpty()) {
                defaultPositionMs = timeline.getWindow(i, this.window).getDefaultPositionMs();
            }
        }
        contentPosition = defaultPositionMs;
        return new com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime(jElapsedRealtime, timeline, i, mediaPeriodId2, contentPosition, this.player.getCurrentTimeline(), this.player.getCurrentMediaItemIndex(), this.mediaPeriodQueueTracker.getCurrentPlayerMediaPeriod(), this.player.getCurrentPosition(), this.player.getTotalBufferedDuration());
    }

    public /* synthetic */ void l0(com.google.android.exoplayer2.Player player, com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener, com.google.android.exoplayer2.util.FlagSet flagSet) {
        analyticsListener.onEvents(player, new com.google.android.exoplayer2.analytics.AnalyticsListener.Events(flagSet, this.eventTimes));
    }

    public final void notifySeekStarted() {
        if (this.isSeeking) {
            return;
        }
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        this.isSeeking = true;
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, -1, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.u
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onSeekStarted(eventTimeGenerateCurrentPlayerMediaPeriodEventTime);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onAudioAttributesChanged(final com.google.android.exoplayer2.audio.AudioAttributes audioAttributes) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_AUDIO_ATTRIBUTES_CHANGED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.u0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onAudioAttributesChanged(eventTimeGenerateReadingMediaPeriodEventTime, audioAttributes);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioCodecError(final java.lang.Exception exc) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_AUDIO_CODEC_ERROR, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.f
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onAudioCodecError(eventTimeGenerateReadingMediaPeriodEventTime, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioDecoderInitialized(final java.lang.String str, final long j, final long j2) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1009, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.k
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                com.google.android.exoplayer2.analytics.AnalyticsCollector.d(eventTimeGenerateReadingMediaPeriodEventTime, str, j2, j, (com.google.android.exoplayer2.analytics.AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioDecoderReleased(final java.lang.String str) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1013, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.c
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onAudioDecoderReleased(eventTimeGenerateReadingMediaPeriodEventTime, str);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioDisabled(final com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        sendEvent(eventTimeGeneratePlayingMediaPeriodEventTime, 1014, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.g0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                com.google.android.exoplayer2.analytics.AnalyticsCollector.f(eventTimeGeneratePlayingMediaPeriodEventTime, decoderCounters, (com.google.android.exoplayer2.analytics.AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioEnabled(final com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1008, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.g
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                com.google.android.exoplayer2.analytics.AnalyticsCollector.g(eventTimeGenerateReadingMediaPeriodEventTime, decoderCounters, (com.google.android.exoplayer2.analytics.AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    @java.lang.Deprecated
    public /* synthetic */ void onAudioInputFormatChanged(com.google.android.exoplayer2.Format format) {
        e.c.a.a.g2.m.$default$onAudioInputFormatChanged(this, format);
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioInputFormatChanged(final com.google.android.exoplayer2.Format format, final com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1010, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.o0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                com.google.android.exoplayer2.analytics.AnalyticsCollector.h(eventTimeGenerateReadingMediaPeriodEventTime, format, decoderReuseEvaluation, (com.google.android.exoplayer2.analytics.AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioPositionAdvancing(final long j) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1011, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.r
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onAudioPositionAdvancing(eventTimeGenerateReadingMediaPeriodEventTime, j);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onAudioSessionIdChanged(final int i) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_AUDIO_SESSION_ID, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.h1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onAudioSessionIdChanged(eventTimeGenerateReadingMediaPeriodEventTime, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioSinkError(final java.lang.Exception exc) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_AUDIO_SINK_ERROR, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.l1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onAudioSinkError(eventTimeGenerateReadingMediaPeriodEventTime, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.audio.AudioRendererEventListener
    public final void onAudioUnderrun(final int i, final long j, final long j2) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1012, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.o
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onAudioUnderrun(eventTimeGenerateReadingMediaPeriodEventTime, i, j, j2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public void onAvailableCommandsChanged(final com.google.android.exoplayer2.Player.Commands commands) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 13, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.a0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onAvailableCommandsChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, commands);
            }
        });
    }

    @Override // com.google.android.exoplayer2.upstream.BandwidthMeter.EventListener
    public final void onBandwidthSample(final int i, final long j, final long j2) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateLoadingMediaPeriodEventTime = generateLoadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateLoadingMediaPeriodEventTime, 1006, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.k1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onBandwidthEstimate(eventTimeGenerateLoadingMediaPeriodEventTime, i, j, j2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onCues(java.util.List<com.google.android.exoplayer2.text.Cue> list) {
        e.c.a.a.d2.$default$onCues(this, list);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onDeviceInfoChanged(com.google.android.exoplayer2.DeviceInfo deviceInfo) {
        e.c.a.a.d2.$default$onDeviceInfoChanged(this, deviceInfo);
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onDeviceVolumeChanged(int i, boolean z) {
        e.c.a.a.d2.$default$onDeviceVolumeChanged(this, i, z);
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public final void onDownstreamFormatChanged(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, final com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1004, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.j
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onDownstreamFormatChanged(eventTimeGenerateMediaPeriodEventTime, mediaLoadData);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public final void onDrmKeysLoaded(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_DRM_KEYS_LOADED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.k0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onDrmKeysLoaded(eventTimeGenerateMediaPeriodEventTime);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public final void onDrmKeysRemoved(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_DRM_KEYS_REMOVED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.h
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onDrmKeysRemoved(eventTimeGenerateMediaPeriodEventTime);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public final void onDrmKeysRestored(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_DRM_KEYS_RESTORED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.l0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onDrmKeysRestored(eventTimeGenerateMediaPeriodEventTime);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    @java.lang.Deprecated
    public /* synthetic */ void onDrmSessionAcquired(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        e.c.a.a.h2.u.$default$onDrmSessionAcquired(this, i, mediaPeriodId);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public final void onDrmSessionAcquired(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, final int i2) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_DRM_SESSION_ACQUIRED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.e
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                com.google.android.exoplayer2.analytics.AnalyticsCollector.s(eventTimeGenerateMediaPeriodEventTime, i2, (com.google.android.exoplayer2.analytics.AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public final void onDrmSessionManagerError(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, final java.lang.Exception exc) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_DRM_SESSION_MANAGER_ERROR, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.v0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onDrmSessionManagerError(eventTimeGenerateMediaPeriodEventTime, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public final void onDrmSessionReleased(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_DRM_SESSION_RELEASED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.e0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onDrmSessionReleased(eventTimeGenerateMediaPeriodEventTime);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onDroppedFrames(final int i, final long j) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        sendEvent(eventTimeGeneratePlayingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_DROPPED_VIDEO_FRAMES, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.z
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onDroppedVideoFrames(eventTimeGeneratePlayingMediaPeriodEventTime, i, j);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onEvents(com.google.android.exoplayer2.Player player, com.google.android.exoplayer2.Player.Events events) {
        e.c.a.a.d2.$default$onEvents(this, player, events);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onIsLoadingChanged(final boolean z) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 3, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.p0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                com.google.android.exoplayer2.analytics.AnalyticsCollector.w(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, z, (com.google.android.exoplayer2.analytics.AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public void onIsPlayingChanged(final boolean z) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 7, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.m
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onIsPlayingChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, z);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public final void onLoadCanceled(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, final com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, final com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1002, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.t0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onLoadCanceled(eventTimeGenerateMediaPeriodEventTime, loadEventInfo, mediaLoadData);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public final void onLoadCompleted(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, final com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, final com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1001, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.l
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onLoadCompleted(eventTimeGenerateMediaPeriodEventTime, loadEventInfo, mediaLoadData);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public final void onLoadError(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, final com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, final com.google.android.exoplayer2.source.MediaLoadData mediaLoadData, final java.io.IOException iOException, final boolean z) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1003, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.m0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onLoadError(eventTimeGenerateMediaPeriodEventTime, loadEventInfo, mediaLoadData, iOException, z);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public final void onLoadStarted(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, final com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, final com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1000, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.s0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onLoadStarted(eventTimeGenerateMediaPeriodEventTime, loadEventInfo, mediaLoadData);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    @java.lang.Deprecated
    public /* synthetic */ void onLoadingChanged(boolean z) {
        e.c.a.a.c2.$default$onLoadingChanged(this, z);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public void onMaxSeekToPreviousPositionChanged(final long j) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 18, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.p
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onMaxSeekToPreviousPositionChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, j);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onMediaItemTransition(final com.google.android.exoplayer2.MediaItem mediaItem, final int i) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 1, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.b1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onMediaItemTransition(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, mediaItem, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public void onMediaMetadataChanged(final com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 14, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.i0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onMediaMetadataChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, mediaMetadata);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onMetadata(final com.google.android.exoplayer2.metadata.Metadata metadata) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 1007, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.s
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onMetadata(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, metadata);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onPlayWhenReadyChanged(final boolean z, final int i) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 5, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.t
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onPlayWhenReadyChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, z, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onPlaybackParametersChanged(final com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 12, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.e1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onPlaybackParametersChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, playbackParameters);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onPlaybackStateChanged(final int i) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 4, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.b0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onPlaybackStateChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onPlaybackSuppressionReasonChanged(final int i) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 6, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.c0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onPlaybackSuppressionReasonChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onPlayerError(final com.google.android.exoplayer2.PlaybackException playbackException) {
        com.google.android.exoplayer2.source.MediaPeriodId mediaPeriodId;
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateEventTime = (!(playbackException instanceof com.google.android.exoplayer2.ExoPlaybackException) || (mediaPeriodId = ((com.google.android.exoplayer2.ExoPlaybackException) playbackException).mediaPeriodId) == null) ? null : generateEventTime(new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(mediaPeriodId));
        if (eventTimeGenerateEventTime == null) {
            eventTimeGenerateEventTime = generateCurrentPlayerMediaPeriodEventTime();
        }
        sendEvent(eventTimeGenerateEventTime, 10, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.j1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onPlayerError(eventTimeGenerateEventTime, playbackException);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onPlayerErrorChanged(com.google.android.exoplayer2.PlaybackException playbackException) {
        e.c.a.a.d2.$default$onPlayerErrorChanged(this, playbackException);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onPlayerStateChanged(final boolean z, final int i) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, -1, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.q
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onPlayerStateChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, z, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public void onPlaylistMetadataChanged(final com.google.android.exoplayer2.MediaMetadata mediaMetadata) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 15, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.x
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onPlaylistMetadataChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, mediaMetadata);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    @java.lang.Deprecated
    public /* synthetic */ void onPositionDiscontinuity(int i) {
        e.c.a.a.c2.$default$onPositionDiscontinuity(this, i);
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onPositionDiscontinuity(final com.google.android.exoplayer2.Player.PositionInfo positionInfo, final com.google.android.exoplayer2.Player.PositionInfo positionInfo2, final int i) {
        if (i == 1) {
            this.isSeeking = false;
        }
        this.mediaPeriodQueueTracker.onPositionDiscontinuity((com.google.android.exoplayer2.Player) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.player));
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 11, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.q0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                com.google.android.exoplayer2.analytics.AnalyticsCollector.N(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, i, positionInfo, positionInfo2, (com.google.android.exoplayer2.analytics.AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public /* synthetic */ void onRenderedFirstFrame() {
        e.c.a.a.d2.$default$onRenderedFirstFrame(this);
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onRenderedFirstFrame(final java.lang.Object obj, final long j) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_RENDERED_FIRST_FRAME, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.x0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj2) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj2).onRenderedFirstFrame(eventTimeGenerateReadingMediaPeriodEventTime, obj, j);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onRepeatModeChanged(final int i) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 8, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.v
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onRepeatModeChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public void onSeekBackIncrementChanged(final long j) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 16, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.n
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onSeekBackIncrementChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, j);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public void onSeekForwardIncrementChanged(final long j) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 17, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.h0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onSeekForwardIncrementChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, j);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onSeekProcessed() {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, -1, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.f1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onSeekProcessed(eventTimeGenerateCurrentPlayerMediaPeriodEventTime);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onShuffleModeEnabledChanged(final boolean z) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 9, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.d
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onShuffleModeChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, z);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onSkipSilenceEnabledChanged(final boolean z) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_SKIP_SILENCE_ENABLED_CHANGED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.w0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onSkipSilenceEnabledChanged(eventTimeGenerateReadingMediaPeriodEventTime, z);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public void onSurfaceSizeChanged(final int i, final int i2) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_SURFACE_SIZE_CHANGED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.b
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onSurfaceSizeChanged(eventTimeGenerateReadingMediaPeriodEventTime, i, i2);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public final void onTimelineChanged(com.google.android.exoplayer2.Timeline timeline, final int i) {
        this.mediaPeriodQueueTracker.onTimelineChanged((com.google.android.exoplayer2.Player) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.player));
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 0, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.a
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onTimelineChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public /* synthetic */ void onTrackSelectionParametersChanged(com.google.android.exoplayer2.trackselection.TrackSelectionParameters trackSelectionParameters) {
        e.c.a.a.c2.$default$onTrackSelectionParametersChanged(this, trackSelectionParameters);
    }

    @Override // com.google.android.exoplayer2.Player.EventListener
    public final void onTracksChanged(final com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, final com.google.android.exoplayer2.trackselection.TrackSelectionArray trackSelectionArray) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 2, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.i
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onTracksChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, trackGroupArray, trackSelectionArray);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener, com.google.android.exoplayer2.Player.EventListener
    public void onTracksInfoChanged(final com.google.android.exoplayer2.TracksInfo tracksInfo) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateCurrentPlayerMediaPeriodEventTime = generateCurrentPlayerMediaPeriodEventTime();
        sendEvent(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, 2, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.z0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onTracksInfoChanged(eventTimeGenerateCurrentPlayerMediaPeriodEventTime, tracksInfo);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public final void onUpstreamDiscarded(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, final com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateMediaPeriodEventTime = generateMediaPeriodEventTime(i, mediaPeriodId);
        sendEvent(eventTimeGenerateMediaPeriodEventTime, 1005, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.m1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onUpstreamDiscarded(eventTimeGenerateMediaPeriodEventTime, mediaLoadData);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoCodecError(final java.lang.Exception exc) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_VIDEO_CODEC_ERROR, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.n0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onVideoCodecError(eventTimeGenerateReadingMediaPeriodEventTime, exc);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoDecoderInitialized(final java.lang.String str, final long j, final long j2) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_VIDEO_DECODER_INITIALIZED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.w
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                com.google.android.exoplayer2.analytics.AnalyticsCollector.b0(eventTimeGenerateReadingMediaPeriodEventTime, str, j2, j, (com.google.android.exoplayer2.analytics.AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoDecoderReleased(final java.lang.String str) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, 1024, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.y
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onVideoDecoderReleased(eventTimeGenerateReadingMediaPeriodEventTime, str);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoDisabled(final com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        sendEvent(eventTimeGeneratePlayingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_VIDEO_DISABLED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.c1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                com.google.android.exoplayer2.analytics.AnalyticsCollector.d0(eventTimeGeneratePlayingMediaPeriodEventTime, decoderCounters, (com.google.android.exoplayer2.analytics.AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoEnabled(final com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_VIDEO_ENABLED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.d0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                com.google.android.exoplayer2.analytics.AnalyticsCollector.e0(eventTimeGenerateReadingMediaPeriodEventTime, decoderCounters, (com.google.android.exoplayer2.analytics.AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoFrameProcessingOffset(final long j, final int i) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGeneratePlayingMediaPeriodEventTime = generatePlayingMediaPeriodEventTime();
        sendEvent(eventTimeGeneratePlayingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_VIDEO_FRAME_PROCESSING_OFFSET, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.i1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onVideoFrameProcessingOffset(eventTimeGeneratePlayingMediaPeriodEventTime, j, i);
            }
        });
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    @java.lang.Deprecated
    public /* synthetic */ void onVideoInputFormatChanged(com.google.android.exoplayer2.Format format) {
        e.c.a.a.t2.n.$default$onVideoInputFormatChanged(this, format);
    }

    @Override // com.google.android.exoplayer2.video.VideoRendererEventListener
    public final void onVideoInputFormatChanged(final com.google.android.exoplayer2.Format format, final com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_VIDEO_INPUT_FORMAT_CHANGED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.j0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                com.google.android.exoplayer2.analytics.AnalyticsCollector.g0(eventTimeGenerateReadingMediaPeriodEventTime, format, decoderReuseEvaluation, (com.google.android.exoplayer2.analytics.AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onVideoSizeChanged(final com.google.android.exoplayer2.video.VideoSize videoSize) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_VIDEO_SIZE_CHANGED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.r0
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                com.google.android.exoplayer2.analytics.AnalyticsCollector.h0(eventTimeGenerateReadingMediaPeriodEventTime, videoSize, (com.google.android.exoplayer2.analytics.AnalyticsListener) obj);
            }
        });
    }

    @Override // com.google.android.exoplayer2.Player.Listener
    public final void onVolumeChanged(final float f2) {
        final com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTimeGenerateReadingMediaPeriodEventTime = generateReadingMediaPeriodEventTime();
        sendEvent(eventTimeGenerateReadingMediaPeriodEventTime, com.google.android.exoplayer2.analytics.AnalyticsListener.EVENT_VOLUME_CHANGED, new com.google.android.exoplayer2.util.ListenerSet.Event() { // from class: e.c.a.a.f2.d1
            @Override // com.google.android.exoplayer2.util.ListenerSet.Event
            public final void invoke(java.lang.Object obj) {
                ((com.google.android.exoplayer2.analytics.AnalyticsListener) obj).onVolumeChanged(eventTimeGenerateReadingMediaPeriodEventTime, f2);
            }
        });
    }

    public void release() {
        ((com.google.android.exoplayer2.util.HandlerWrapper) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.handler)).post(new java.lang.Runnable() { // from class: e.c.a.a.f2.a1
            @Override // java.lang.Runnable
            public final void run() {
                this.a.releaseInternal();
            }
        });
    }

    public void removeListener(com.google.android.exoplayer2.analytics.AnalyticsListener analyticsListener) {
        this.listeners.remove(analyticsListener);
    }

    public final void sendEvent(com.google.android.exoplayer2.analytics.AnalyticsListener.EventTime eventTime, int i, com.google.android.exoplayer2.util.ListenerSet.Event<com.google.android.exoplayer2.analytics.AnalyticsListener> event) {
        this.eventTimes.put(i, eventTime);
        this.listeners.sendEvent(i, event);
    }

    public void setPlayer(final com.google.android.exoplayer2.Player player, android.os.Looper looper) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.player == null || this.mediaPeriodQueueTracker.mediaPeriodQueue.isEmpty());
        this.player = (com.google.android.exoplayer2.Player) com.google.android.exoplayer2.util.Assertions.checkNotNull(player);
        this.handler = this.clock.createHandler(looper, null);
        this.listeners = this.listeners.copy(looper, new com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent() { // from class: e.c.a.a.f2.g1
            @Override // com.google.android.exoplayer2.util.ListenerSet.IterationFinishedEvent
            public final void invoke(java.lang.Object obj, com.google.android.exoplayer2.util.FlagSet flagSet) {
                this.a.l0(player, (com.google.android.exoplayer2.analytics.AnalyticsListener) obj, flagSet);
            }
        });
    }

    public final void updateMediaPeriodQueueInfo(java.util.List<com.google.android.exoplayer2.source.MediaSource.MediaPeriodId> list, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        this.mediaPeriodQueueTracker.onQueueUpdated(list, mediaPeriodId, (com.google.android.exoplayer2.Player) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.player));
    }
}
