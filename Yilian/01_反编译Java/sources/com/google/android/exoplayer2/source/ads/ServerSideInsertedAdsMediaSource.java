package com.google.android.exoplayer2.source.ads;

/* loaded from: classes.dex */
public final class ServerSideInsertedAdsMediaSource extends com.google.android.exoplayer2.source.BaseMediaSource implements com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller, com.google.android.exoplayer2.source.MediaSourceEventListener, com.google.android.exoplayer2.drm.DrmSessionEventListener {
    public com.google.android.exoplayer2.Timeline contentTimeline;
    public com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod lastUsedMediaPeriod;
    public final com.google.android.exoplayer2.source.MediaSource mediaSource;
    public android.os.Handler playbackHandler;
    public final e.c.b.b.x<java.lang.Long, com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod> mediaPeriods = new e.c.b.b.i();
    public com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState = com.google.android.exoplayer2.source.ads.AdPlaybackState.NONE;
    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcherWithoutId = createEventDispatcher(null);
    public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher drmEventDispatcherWithoutId = createDrmEventDispatcher(null);

    public static final class MediaPeriodImpl implements com.google.android.exoplayer2.source.MediaPeriod {
        public com.google.android.exoplayer2.source.MediaPeriod.Callback callback;
        public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher drmEventDispatcher;
        public boolean[] hasNotifiedDownstreamFormatChange = new boolean[0];
        public long lastStartPositionUs;
        public final com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId;
        public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
        public final com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod sharedPeriod;

        public MediaPeriodImpl(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod sharedMediaPeriod, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher2) {
            this.sharedPeriod = sharedMediaPeriod;
            this.mediaPeriodId = mediaPeriodId;
            this.mediaSourceEventDispatcher = eventDispatcher;
            this.drmEventDispatcher = eventDispatcher2;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public boolean continueLoading(long j) {
            return this.sharedPeriod.continueLoading(this, j);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void discardBuffer(long j, boolean z) {
            this.sharedPeriod.discardBuffer(this, j, z);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long getAdjustedSeekPositionUs(long j, com.google.android.exoplayer2.SeekParameters seekParameters) {
            return this.sharedPeriod.getAdjustedSeekPositionUs(this, j, seekParameters);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public long getBufferedPositionUs() {
            return this.sharedPeriod.getBufferedPositionUs(this);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            return this.sharedPeriod.getNextLoadPositionUs(this);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public java.util.List<com.google.android.exoplayer2.offline.StreamKey> getStreamKeys(java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection> list) {
            return this.sharedPeriod.getStreamKeys(list);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups() {
            return this.sharedPeriod.getTrackGroups();
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public boolean isLoading() {
            return this.sharedPeriod.isLoading(this);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void maybeThrowPrepareError() {
            this.sharedPeriod.maybeThrowPrepareError();
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void prepare(com.google.android.exoplayer2.source.MediaPeriod.Callback callback, long j) {
            this.callback = callback;
            this.sharedPeriod.prepare(this, j);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long readDiscontinuity() {
            return this.sharedPeriod.readDiscontinuity(this);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public void reevaluateBuffer(long j) {
            this.sharedPeriod.reevaluateBuffer(this, j);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long seekToUs(long j) {
            return this.sharedPeriod.seekToUs(this, j);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long selectTracks(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            if (this.hasNotifiedDownstreamFormatChange.length == 0) {
                this.hasNotifiedDownstreamFormatChange = new boolean[sampleStreamArr.length];
            }
            return this.sharedPeriod.selectTracks(this, exoTrackSelectionArr, zArr, sampleStreamArr, zArr2, j);
        }
    }

    public static final class SampleStreamImpl implements com.google.android.exoplayer2.source.SampleStream {
        public final com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriod;
        public final int streamIndex;

        public SampleStreamImpl(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, int i) {
            this.mediaPeriod = mediaPeriodImpl;
            this.streamIndex = i;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return this.mediaPeriod.sharedPeriod.isReady(this.streamIndex);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() {
            this.mediaPeriod.sharedPeriod.maybeThrowError(this.streamIndex);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(com.google.android.exoplayer2.FormatHolder formatHolder, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, int i) {
            com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl = this.mediaPeriod;
            return mediaPeriodImpl.sharedPeriod.readData(mediaPeriodImpl, this.streamIndex, formatHolder, decoderInputBuffer, i);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j) {
            com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl = this.mediaPeriod;
            return mediaPeriodImpl.sharedPeriod.skipData(mediaPeriodImpl, this.streamIndex, j);
        }
    }

    public static final class ServerSideInsertedAdsTimeline extends com.google.android.exoplayer2.source.ForwardingTimeline {
        public final com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState;

        public ServerSideInsertedAdsTimeline(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
            super(timeline);
            com.google.android.exoplayer2.util.Assertions.checkState(timeline.getPeriodCount() == 1);
            com.google.android.exoplayer2.util.Assertions.checkState(timeline.getWindowCount() == 1);
            this.adPlaybackState = adPlaybackState;
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Period getPeriod(int i, com.google.android.exoplayer2.Timeline.Period period, boolean z) {
            super.getPeriod(i, period, z);
            long j = period.durationUs;
            period.set(period.id, period.uid, period.windowIndex, j == com.google.android.exoplayer2.C.TIME_UNSET ? this.adPlaybackState.contentDurationUs : com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getMediaPeriodPositionUsForContent(j, -1, this.adPlaybackState), -com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getMediaPeriodPositionUsForContent(-period.getPositionInWindowUs(), -1, this.adPlaybackState), this.adPlaybackState, period.isPlaceholder);
            return period;
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Window getWindow(int i, com.google.android.exoplayer2.Timeline.Window window, long j) {
            long mediaPeriodPositionUsForContent;
            super.getWindow(i, window, j);
            long mediaPeriodPositionUsForContent2 = com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getMediaPeriodPositionUsForContent(window.positionInFirstPeriodUs, -1, this.adPlaybackState);
            long j2 = window.durationUs;
            if (j2 == com.google.android.exoplayer2.C.TIME_UNSET) {
                mediaPeriodPositionUsForContent = this.adPlaybackState.contentDurationUs;
                if (mediaPeriodPositionUsForContent != com.google.android.exoplayer2.C.TIME_UNSET) {
                }
                window.positionInFirstPeriodUs = mediaPeriodPositionUsForContent2;
                return window;
            }
            mediaPeriodPositionUsForContent = com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getMediaPeriodPositionUsForContent(window.positionInFirstPeriodUs + j2, -1, this.adPlaybackState);
            window.durationUs = mediaPeriodPositionUsForContent - mediaPeriodPositionUsForContent2;
            window.positionInFirstPeriodUs = mediaPeriodPositionUsForContent2;
            return window;
        }
    }

    public static final class SharedMediaPeriod implements com.google.android.exoplayer2.source.MediaPeriod.Callback {
        public final com.google.android.exoplayer2.source.MediaPeriod actualMediaPeriod;
        public com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState;
        public boolean hasStartedPreparing;
        public boolean isPrepared;
        public com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl loadingPeriod;
        public final java.util.List<com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl> mediaPeriods = new java.util.ArrayList();
        public final java.util.Map<java.lang.Long, android.util.Pair<com.google.android.exoplayer2.source.LoadEventInfo, com.google.android.exoplayer2.source.MediaLoadData>> activeLoads = new java.util.HashMap();
        public com.google.android.exoplayer2.trackselection.ExoTrackSelection[] trackSelections = new com.google.android.exoplayer2.trackselection.ExoTrackSelection[0];
        public com.google.android.exoplayer2.source.SampleStream[] sampleStreams = new com.google.android.exoplayer2.source.SampleStream[0];
        public com.google.android.exoplayer2.source.MediaLoadData[] lastDownstreamFormatChangeData = new com.google.android.exoplayer2.source.MediaLoadData[0];

        public SharedMediaPeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
            this.actualMediaPeriod = mediaPeriod;
            this.adPlaybackState = adPlaybackState;
        }

        private int findMatchingStreamIndex(com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            java.lang.String str;
            if (mediaLoadData.trackFormat == null) {
                return -1;
            }
            int i = 0;
            loop0: while (true) {
                com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr = this.trackSelections;
                if (i >= exoTrackSelectionArr.length) {
                    return -1;
                }
                if (exoTrackSelectionArr[i] != null) {
                    com.google.android.exoplayer2.source.TrackGroup trackGroup = exoTrackSelectionArr[i].getTrackGroup();
                    boolean z = mediaLoadData.trackType == 0 && trackGroup.equals(getTrackGroups().get(0));
                    for (int i2 = 0; i2 < trackGroup.length; i2++) {
                        com.google.android.exoplayer2.Format format = trackGroup.getFormat(i2);
                        if (format.equals(mediaLoadData.trackFormat) || (z && (str = format.id) != null && str.equals(mediaLoadData.trackFormat.id))) {
                            break loop0;
                        }
                    }
                }
                i++;
            }
            return i;
        }

        private long getMediaPeriodPositionUsWithEndOfSourceHandling(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, long j) {
            if (j == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            long mediaPeriodPositionUs = com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getMediaPeriodPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
            if (mediaPeriodPositionUs >= com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.getMediaPeriodEndPositionUs(mediaPeriodImpl, this.adPlaybackState)) {
                return Long.MIN_VALUE;
            }
            return mediaPeriodPositionUs;
        }

        private long getStreamPositionUsWithNotYetStartedHandling(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, long j) {
            long j2 = mediaPeriodImpl.lastStartPositionUs;
            return j < j2 ? com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getStreamPositionUs(j2, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState) - (mediaPeriodImpl.lastStartPositionUs - j) : com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        private void maybeNotifyDownstreamFormatChanged(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, int i) {
            boolean[] zArr = mediaPeriodImpl.hasNotifiedDownstreamFormatChange;
            if (zArr[i]) {
                return;
            }
            com.google.android.exoplayer2.source.MediaLoadData[] mediaLoadDataArr = this.lastDownstreamFormatChangeData;
            if (mediaLoadDataArr[i] != null) {
                zArr[i] = true;
                mediaPeriodImpl.mediaSourceEventDispatcher.downstreamFormatChanged(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.correctMediaLoadData(mediaPeriodImpl, mediaLoadDataArr[i], this.adPlaybackState));
            }
        }

        public void add(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl) {
            this.mediaPeriods.add(mediaPeriodImpl);
        }

        public boolean canReuseMediaPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, long j) {
            com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl = (com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl) e.c.b.a.f.l(this.mediaPeriods);
            return com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getStreamPositionUs(j, mediaPeriodId, this.adPlaybackState) == com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getStreamPositionUs(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.getMediaPeriodEndPositionUs(mediaPeriodImpl, this.adPlaybackState), mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        public boolean continueLoading(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, long j) {
            com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl2 = this.loadingPeriod;
            if (mediaPeriodImpl2 != null && !mediaPeriodImpl.equals(mediaPeriodImpl2)) {
                for (android.util.Pair<com.google.android.exoplayer2.source.LoadEventInfo, com.google.android.exoplayer2.source.MediaLoadData> pair : this.activeLoads.values()) {
                    mediaPeriodImpl2.mediaSourceEventDispatcher.loadCompleted((com.google.android.exoplayer2.source.LoadEventInfo) pair.first, com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.correctMediaLoadData(mediaPeriodImpl2, (com.google.android.exoplayer2.source.MediaLoadData) pair.second, this.adPlaybackState));
                    mediaPeriodImpl.mediaSourceEventDispatcher.loadStarted((com.google.android.exoplayer2.source.LoadEventInfo) pair.first, com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.correctMediaLoadData(mediaPeriodImpl, (com.google.android.exoplayer2.source.MediaLoadData) pair.second, this.adPlaybackState));
                }
            }
            this.loadingPeriod = mediaPeriodImpl;
            return this.actualMediaPeriod.continueLoading(getStreamPositionUsWithNotYetStartedHandling(mediaPeriodImpl, j));
        }

        public void discardBuffer(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, long j, boolean z) {
            this.actualMediaPeriod.discardBuffer(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState), z);
        }

        public long getAdjustedSeekPositionUs(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, long j, com.google.android.exoplayer2.SeekParameters seekParameters) {
            return com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getMediaPeriodPositionUs(this.actualMediaPeriod.getAdjustedSeekPositionUs(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState), seekParameters), mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        public long getBufferedPositionUs(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl) {
            return getMediaPeriodPositionUsWithEndOfSourceHandling(mediaPeriodImpl, this.actualMediaPeriod.getBufferedPositionUs());
        }

        public com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl getMediaPeriodForEvent(com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            if (mediaLoadData == null || mediaLoadData.mediaStartTimeMs == com.google.android.exoplayer2.C.TIME_UNSET) {
                return null;
            }
            for (int i = 0; i < this.mediaPeriods.size(); i++) {
                com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl = this.mediaPeriods.get(i);
                long mediaPeriodPositionUs = com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getMediaPeriodPositionUs(com.google.android.exoplayer2.util.Util.msToUs(mediaLoadData.mediaStartTimeMs), mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
                long mediaPeriodEndPositionUs = com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.getMediaPeriodEndPositionUs(mediaPeriodImpl, this.adPlaybackState);
                if (mediaPeriodPositionUs >= 0 && mediaPeriodPositionUs < mediaPeriodEndPositionUs) {
                    return mediaPeriodImpl;
                }
            }
            return null;
        }

        public long getNextLoadPositionUs(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl) {
            return getMediaPeriodPositionUsWithEndOfSourceHandling(mediaPeriodImpl, this.actualMediaPeriod.getNextLoadPositionUs());
        }

        public java.util.List<com.google.android.exoplayer2.offline.StreamKey> getStreamKeys(java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection> list) {
            return this.actualMediaPeriod.getStreamKeys(list);
        }

        public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups() {
            return this.actualMediaPeriod.getTrackGroups();
        }

        public boolean isLoading(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl) {
            return mediaPeriodImpl.equals(this.loadingPeriod) && this.actualMediaPeriod.isLoading();
        }

        public boolean isReady(int i) {
            return ((com.google.android.exoplayer2.source.SampleStream) com.google.android.exoplayer2.util.Util.castNonNull(this.sampleStreams[i])).isReady();
        }

        public boolean isUnused() {
            return this.mediaPeriods.isEmpty();
        }

        public void maybeThrowError(int i) {
            ((com.google.android.exoplayer2.source.SampleStream) com.google.android.exoplayer2.util.Util.castNonNull(this.sampleStreams[i])).maybeThrowError();
        }

        public void maybeThrowPrepareError() {
            this.actualMediaPeriod.maybeThrowPrepareError();
        }

        @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
        public void onContinueLoadingRequested(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
            com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl = this.loadingPeriod;
            if (mediaPeriodImpl == null) {
                return;
            }
            ((com.google.android.exoplayer2.source.MediaPeriod.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaPeriodImpl.callback)).onContinueLoadingRequested(this.loadingPeriod);
        }

        public void onDownstreamFormatChanged(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            int iFindMatchingStreamIndex = findMatchingStreamIndex(mediaLoadData);
            if (iFindMatchingStreamIndex != -1) {
                this.lastDownstreamFormatChangeData[iFindMatchingStreamIndex] = mediaLoadData;
                mediaPeriodImpl.hasNotifiedDownstreamFormatChange[iFindMatchingStreamIndex] = true;
            }
        }

        public void onLoadFinished(com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo) {
            this.activeLoads.remove(java.lang.Long.valueOf(loadEventInfo.loadTaskId));
        }

        public void onLoadStarted(com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
            this.activeLoads.put(java.lang.Long.valueOf(loadEventInfo.loadTaskId), android.util.Pair.create(loadEventInfo, mediaLoadData));
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
        public void onPrepared(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
            this.isPrepared = true;
            for (int i = 0; i < this.mediaPeriods.size(); i++) {
                com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl = this.mediaPeriods.get(i);
                com.google.android.exoplayer2.source.MediaPeriod.Callback callback = mediaPeriodImpl.callback;
                if (callback != null) {
                    callback.onPrepared(mediaPeriodImpl);
                }
            }
        }

        public void prepare(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, long j) {
            mediaPeriodImpl.lastStartPositionUs = j;
            if (this.hasStartedPreparing) {
                if (this.isPrepared) {
                    ((com.google.android.exoplayer2.source.MediaPeriod.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaPeriodImpl.callback)).onPrepared(mediaPeriodImpl);
                }
            } else {
                this.hasStartedPreparing = true;
                this.actualMediaPeriod.prepare(this, com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState));
            }
        }

        public int readData(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, int i, com.google.android.exoplayer2.FormatHolder formatHolder, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, int i2) {
            int data = ((com.google.android.exoplayer2.source.SampleStream) com.google.android.exoplayer2.util.Util.castNonNull(this.sampleStreams[i])).readData(formatHolder, decoderInputBuffer, i2 | 1 | 4);
            long mediaPeriodPositionUsWithEndOfSourceHandling = getMediaPeriodPositionUsWithEndOfSourceHandling(mediaPeriodImpl, decoderInputBuffer.timeUs);
            if ((data == -4 && mediaPeriodPositionUsWithEndOfSourceHandling == Long.MIN_VALUE) || (data == -3 && getBufferedPositionUs(mediaPeriodImpl) == Long.MIN_VALUE && !decoderInputBuffer.waitingForKeys)) {
                maybeNotifyDownstreamFormatChanged(mediaPeriodImpl, i);
                decoderInputBuffer.clear();
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            if (data == -4) {
                maybeNotifyDownstreamFormatChanged(mediaPeriodImpl, i);
                ((com.google.android.exoplayer2.source.SampleStream) com.google.android.exoplayer2.util.Util.castNonNull(this.sampleStreams[i])).readData(formatHolder, decoderInputBuffer, i2);
                decoderInputBuffer.timeUs = mediaPeriodPositionUsWithEndOfSourceHandling;
            }
            return data;
        }

        public long readDiscontinuity(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl) {
            if (!mediaPeriodImpl.equals(this.mediaPeriods.get(0))) {
                return com.google.android.exoplayer2.C.TIME_UNSET;
            }
            long discontinuity = this.actualMediaPeriod.readDiscontinuity();
            return discontinuity == com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.C.TIME_UNSET : com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getMediaPeriodPositionUs(discontinuity, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        public void reevaluateBuffer(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, long j) {
            this.actualMediaPeriod.reevaluateBuffer(getStreamPositionUsWithNotYetStartedHandling(mediaPeriodImpl, j));
        }

        public void release(com.google.android.exoplayer2.source.MediaSource mediaSource) {
            mediaSource.releasePeriod(this.actualMediaPeriod);
        }

        public void remove(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl) {
            if (mediaPeriodImpl.equals(this.loadingPeriod)) {
                this.loadingPeriod = null;
                this.activeLoads.clear();
            }
            this.mediaPeriods.remove(mediaPeriodImpl);
        }

        public long seekToUs(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, long j) {
            return com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getMediaPeriodPositionUs(this.actualMediaPeriod.seekToUs(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState)), mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        public long selectTracks(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            mediaPeriodImpl.lastStartPositionUs = j;
            if (!mediaPeriodImpl.equals(this.mediaPeriods.get(0))) {
                for (int i = 0; i < exoTrackSelectionArr.length; i++) {
                    boolean z = true;
                    if (exoTrackSelectionArr[i] != null) {
                        if (zArr[i] && sampleStreamArr[i] != null) {
                            z = false;
                        }
                        zArr2[i] = z;
                        if (zArr2[i]) {
                            sampleStreamArr[i] = com.google.android.exoplayer2.util.Util.areEqual(this.trackSelections[i], exoTrackSelectionArr[i]) ? new com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SampleStreamImpl(mediaPeriodImpl, i) : new com.google.android.exoplayer2.source.EmptySampleStream();
                        }
                    } else {
                        sampleStreamArr[i] = null;
                        zArr2[i] = true;
                    }
                }
                return j;
            }
            this.trackSelections = (com.google.android.exoplayer2.trackselection.ExoTrackSelection[]) java.util.Arrays.copyOf(exoTrackSelectionArr, exoTrackSelectionArr.length);
            long streamPositionUs = com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
            com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr2 = this.sampleStreams;
            com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr3 = sampleStreamArr2.length == 0 ? new com.google.android.exoplayer2.source.SampleStream[exoTrackSelectionArr.length] : (com.google.android.exoplayer2.source.SampleStream[]) java.util.Arrays.copyOf(sampleStreamArr2, sampleStreamArr2.length);
            long jSelectTracks = this.actualMediaPeriod.selectTracks(exoTrackSelectionArr, zArr, sampleStreamArr3, zArr2, streamPositionUs);
            this.sampleStreams = (com.google.android.exoplayer2.source.SampleStream[]) java.util.Arrays.copyOf(sampleStreamArr3, sampleStreamArr3.length);
            this.lastDownstreamFormatChangeData = (com.google.android.exoplayer2.source.MediaLoadData[]) java.util.Arrays.copyOf(this.lastDownstreamFormatChangeData, sampleStreamArr3.length);
            for (int i2 = 0; i2 < sampleStreamArr3.length; i2++) {
                if (sampleStreamArr3[i2] == null) {
                    sampleStreamArr[i2] = null;
                    this.lastDownstreamFormatChangeData[i2] = null;
                } else if (sampleStreamArr[i2] == null || zArr2[i2]) {
                    sampleStreamArr[i2] = new com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SampleStreamImpl(mediaPeriodImpl, i2);
                    this.lastDownstreamFormatChangeData[i2] = null;
                }
            }
            return com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getMediaPeriodPositionUs(jSelectTracks, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState);
        }

        public int skipData(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, int i, long j) {
            return ((com.google.android.exoplayer2.source.SampleStream) com.google.android.exoplayer2.util.Util.castNonNull(this.sampleStreams[i])).skipData(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getStreamPositionUs(j, mediaPeriodImpl.mediaPeriodId, this.adPlaybackState));
        }

        public void updateAdPlaybackState(com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
            this.adPlaybackState = adPlaybackState;
        }
    }

    public ServerSideInsertedAdsMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource) {
        this.mediaSource = mediaSource;
    }

    public static com.google.android.exoplayer2.source.MediaLoadData correctMediaLoadData(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        return new com.google.android.exoplayer2.source.MediaLoadData(mediaLoadData.dataType, mediaLoadData.trackType, mediaLoadData.trackFormat, mediaLoadData.trackSelectionReason, mediaLoadData.trackSelectionData, correctMediaLoadDataPositionMs(mediaLoadData.mediaStartTimeMs, mediaPeriodImpl, adPlaybackState), correctMediaLoadDataPositionMs(mediaLoadData.mediaEndTimeMs, mediaPeriodImpl, adPlaybackState));
    }

    public static long correctMediaLoadDataPositionMs(long j, com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        long jMsToUs = com.google.android.exoplayer2.util.Util.msToUs(j);
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodImpl.mediaPeriodId;
        return com.google.android.exoplayer2.util.Util.usToMs(mediaPeriodId.isAd() ? com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getMediaPeriodPositionUsForAd(jMsToUs, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, adPlaybackState) : com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getMediaPeriodPositionUsForContent(jMsToUs, -1, adPlaybackState));
    }

    public static long getMediaPeriodEndPositionUs(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodImpl.mediaPeriodId;
        if (mediaPeriodId.isAd()) {
            com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(mediaPeriodId.adGroupIndex);
            if (adGroup.count == -1) {
                return 0L;
            }
            return adGroup.durationsUs[mediaPeriodId.adIndexInAdGroup];
        }
        int i = mediaPeriodId.nextAdGroupIndex;
        if (i == -1) {
            return Long.MAX_VALUE;
        }
        long j = adPlaybackState.getAdGroup(i).timeUs;
        if (j == Long.MIN_VALUE) {
            return Long.MAX_VALUE;
        }
        return j;
    }

    private com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl getMediaPeriodForEvent(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData, boolean z) {
        if (mediaPeriodId == null) {
            return null;
        }
        java.util.List listJ = ((e.c.b.b.c) this.mediaPeriods).j(java.lang.Long.valueOf(mediaPeriodId.windowSequenceNumber));
        if (listJ.isEmpty()) {
            return null;
        }
        if (z) {
            com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod sharedMediaPeriod = (com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod) e.c.b.a.f.l(listJ);
            return sharedMediaPeriod.loadingPeriod != null ? sharedMediaPeriod.loadingPeriod : (com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl) e.c.b.a.f.l(sharedMediaPeriod.mediaPeriods);
        }
        for (int i = 0; i < listJ.size(); i++) {
            com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodForEvent = ((com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod) listJ.get(i)).getMediaPeriodForEvent(mediaLoadData);
            if (mediaPeriodForEvent != null) {
                return mediaPeriodForEvent;
            }
        }
        return (com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl) ((com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod) listJ.get(0)).mediaPeriods.get(0);
    }

    private void releaseLastUsedMediaPeriod() {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod sharedMediaPeriod = this.lastUsedMediaPeriod;
        if (sharedMediaPeriod != null) {
            sharedMediaPeriod.release(this.mediaSource);
            this.lastUsedMediaPeriod = null;
        }
    }

    public /* synthetic */ void a(com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        java.util.Iterator<com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod> it = this.mediaPeriods.values().iterator();
        while (it.hasNext()) {
            it.next().updateAdPlaybackState(adPlaybackState);
        }
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod sharedMediaPeriod = this.lastUsedMediaPeriod;
        if (sharedMediaPeriod != null) {
            sharedMediaPeriod.updateAdPlaybackState(adPlaybackState);
        }
        this.adPlaybackState = adPlaybackState;
        if (this.contentTimeline != null) {
            refreshSourceInfo(new com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.ServerSideInsertedAdsTimeline(this.contentTimeline, adPlaybackState));
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod sharedMediaPeriod = this.lastUsedMediaPeriod;
        if (sharedMediaPeriod == null) {
            sharedMediaPeriod = (com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod) e.c.b.a.f.m(((e.c.b.b.c) this.mediaPeriods).j(java.lang.Long.valueOf(mediaPeriodId.windowSequenceNumber)), null);
            if (sharedMediaPeriod == null || !sharedMediaPeriod.canReuseMediaPeriod(mediaPeriodId, j)) {
                sharedMediaPeriod = new com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod(this.mediaSource.createPeriod(new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(mediaPeriodId.periodUid, mediaPeriodId.windowSequenceNumber), allocator, com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getStreamPositionUs(j, mediaPeriodId, this.adPlaybackState)), this.adPlaybackState);
            }
            com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl = new com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl(sharedMediaPeriod, mediaPeriodId, createEventDispatcher(mediaPeriodId), createDrmEventDispatcher(mediaPeriodId));
            sharedMediaPeriod.add(mediaPeriodImpl);
            return mediaPeriodImpl;
        }
        this.lastUsedMediaPeriod = null;
        this.mediaPeriods.put(java.lang.Long.valueOf(mediaPeriodId.windowSequenceNumber), sharedMediaPeriod);
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl2 = new com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl(sharedMediaPeriod, mediaPeriodId, createEventDispatcher(mediaPeriodId), createDrmEventDispatcher(mediaPeriodId));
        sharedMediaPeriod.add(mediaPeriodImpl2);
        return mediaPeriodImpl2;
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void disableInternal() {
        releaseLastUsedMediaPeriod();
        this.mediaSource.disable(this);
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void enableInternal() {
        this.mediaSource.enable(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.MediaItem getMediaItem() {
        return this.mediaSource.getMediaItem();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
        this.mediaSource.maybeThrowSourceInfoRefreshError();
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public void onDownstreamFormatChanged(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, mediaLoadData, false);
        if (mediaPeriodForEvent == null) {
            this.mediaSourceEventDispatcherWithoutId.downstreamFormatChanged(mediaLoadData);
        } else {
            mediaPeriodForEvent.sharedPeriod.onDownstreamFormatChanged(mediaPeriodForEvent, mediaLoadData);
            mediaPeriodForEvent.mediaSourceEventDispatcher.downstreamFormatChanged(correctMediaLoadData(mediaPeriodForEvent, mediaLoadData, this.adPlaybackState));
        }
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public void onDrmKeysLoaded(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, null, false);
        (mediaPeriodForEvent == null ? this.drmEventDispatcherWithoutId : mediaPeriodForEvent.drmEventDispatcher).drmKeysLoaded();
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public void onDrmKeysRemoved(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, null, false);
        (mediaPeriodForEvent == null ? this.drmEventDispatcherWithoutId : mediaPeriodForEvent.drmEventDispatcher).drmKeysRemoved();
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public void onDrmKeysRestored(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, null, false);
        (mediaPeriodForEvent == null ? this.drmEventDispatcherWithoutId : mediaPeriodForEvent.drmEventDispatcher).drmKeysRestored();
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    @java.lang.Deprecated
    public /* synthetic */ void onDrmSessionAcquired(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        e.c.a.a.h2.u.$default$onDrmSessionAcquired(this, i, mediaPeriodId);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public void onDrmSessionAcquired(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, int i2) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, null, true);
        (mediaPeriodForEvent == null ? this.drmEventDispatcherWithoutId : mediaPeriodForEvent.drmEventDispatcher).drmSessionAcquired(i2);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public void onDrmSessionManagerError(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, java.lang.Exception exc) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, null, false);
        (mediaPeriodForEvent == null ? this.drmEventDispatcherWithoutId : mediaPeriodForEvent.drmEventDispatcher).drmSessionManagerError(exc);
    }

    @Override // com.google.android.exoplayer2.drm.DrmSessionEventListener
    public void onDrmSessionReleased(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, null, false);
        (mediaPeriodForEvent == null ? this.drmEventDispatcherWithoutId : mediaPeriodForEvent.drmEventDispatcher).drmSessionReleased();
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public void onLoadCanceled(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, mediaLoadData, true);
        if (mediaPeriodForEvent == null) {
            this.mediaSourceEventDispatcherWithoutId.loadCanceled(loadEventInfo, mediaLoadData);
        } else {
            mediaPeriodForEvent.sharedPeriod.onLoadFinished(loadEventInfo);
            mediaPeriodForEvent.mediaSourceEventDispatcher.loadCanceled(loadEventInfo, correctMediaLoadData(mediaPeriodForEvent, mediaLoadData, this.adPlaybackState));
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public void onLoadCompleted(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, mediaLoadData, true);
        if (mediaPeriodForEvent == null) {
            this.mediaSourceEventDispatcherWithoutId.loadCompleted(loadEventInfo, mediaLoadData);
        } else {
            mediaPeriodForEvent.sharedPeriod.onLoadFinished(loadEventInfo);
            mediaPeriodForEvent.mediaSourceEventDispatcher.loadCompleted(loadEventInfo, correctMediaLoadData(mediaPeriodForEvent, mediaLoadData, this.adPlaybackState));
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public void onLoadError(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData, java.io.IOException iOException, boolean z) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, mediaLoadData, true);
        if (mediaPeriodForEvent == null) {
            this.mediaSourceEventDispatcherWithoutId.loadError(loadEventInfo, mediaLoadData, iOException, z);
            return;
        }
        if (z) {
            mediaPeriodForEvent.sharedPeriod.onLoadFinished(loadEventInfo);
        }
        mediaPeriodForEvent.mediaSourceEventDispatcher.loadError(loadEventInfo, correctMediaLoadData(mediaPeriodForEvent, mediaLoadData, this.adPlaybackState), iOException, z);
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public void onLoadStarted(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, mediaLoadData, true);
        if (mediaPeriodForEvent == null) {
            this.mediaSourceEventDispatcherWithoutId.loadStarted(loadEventInfo, mediaLoadData);
        } else {
            mediaPeriodForEvent.sharedPeriod.onLoadStarted(loadEventInfo, mediaLoadData);
            mediaPeriodForEvent.mediaSourceEventDispatcher.loadStarted(loadEventInfo, correctMediaLoadData(mediaPeriodForEvent, mediaLoadData, this.adPlaybackState));
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource.MediaSourceCaller
    public void onSourceInfoRefreshed(com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.Timeline timeline) {
        this.contentTimeline = timeline;
        if (com.google.android.exoplayer2.source.ads.AdPlaybackState.NONE.equals(this.adPlaybackState)) {
            return;
        }
        refreshSourceInfo(new com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.ServerSideInsertedAdsTimeline(timeline, this.adPlaybackState));
    }

    @Override // com.google.android.exoplayer2.source.MediaSourceEventListener
    public void onUpstreamDiscarded(int i, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.source.MediaLoadData mediaLoadData) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodForEvent = getMediaPeriodForEvent(mediaPeriodId, mediaLoadData, false);
        if (mediaPeriodForEvent == null) {
            this.mediaSourceEventDispatcherWithoutId.upstreamDiscarded(mediaLoadData);
        } else {
            mediaPeriodForEvent.mediaSourceEventDispatcher.upstreamDiscarded(correctMediaLoadData(mediaPeriodForEvent, mediaLoadData, this.adPlaybackState));
        }
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        android.os.Handler handlerCreateHandlerForCurrentLooper = com.google.android.exoplayer2.util.Util.createHandlerForCurrentLooper();
        synchronized (this) {
            this.playbackHandler = handlerCreateHandlerForCurrentLooper;
        }
        this.mediaSource.addEventListener(handlerCreateHandlerForCurrentLooper, this);
        this.mediaSource.addDrmEventListener(handlerCreateHandlerForCurrentLooper, this);
        this.mediaSource.prepareSource(this, transferListener);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl mediaPeriodImpl = (com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.MediaPeriodImpl) mediaPeriod;
        mediaPeriodImpl.sharedPeriod.remove(mediaPeriodImpl);
        if (mediaPeriodImpl.sharedPeriod.isUnused()) {
            this.mediaPeriods.remove(java.lang.Long.valueOf(mediaPeriodImpl.mediaPeriodId.windowSequenceNumber), mediaPeriodImpl.sharedPeriod);
            boolean zIsEmpty = this.mediaPeriods.isEmpty();
            com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsMediaSource.SharedMediaPeriod sharedMediaPeriod = mediaPeriodImpl.sharedPeriod;
            if (zIsEmpty) {
                this.lastUsedMediaPeriod = sharedMediaPeriod;
            } else {
                sharedMediaPeriod.release(this.mediaSource);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        releaseLastUsedMediaPeriod();
        this.contentTimeline = null;
        synchronized (this) {
            this.playbackHandler = null;
        }
        this.mediaSource.releaseSource(this);
        this.mediaSource.removeEventListener(this);
        this.mediaSource.removeDrmEventListener(this);
    }

    public void setAdPlaybackState(final com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(adPlaybackState.adGroupCount >= this.adPlaybackState.adGroupCount);
        for (int i = adPlaybackState.removedAdGroupCount; i < adPlaybackState.adGroupCount; i++) {
            com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup adGroup = adPlaybackState.getAdGroup(i);
            com.google.android.exoplayer2.util.Assertions.checkArgument(adGroup.isServerSideInserted);
            if (i < this.adPlaybackState.adGroupCount) {
                com.google.android.exoplayer2.util.Assertions.checkArgument(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getAdCountInGroup(adPlaybackState, i) >= com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getAdCountInGroup(this.adPlaybackState, i));
            }
            if (adGroup.timeUs == Long.MIN_VALUE) {
                com.google.android.exoplayer2.util.Assertions.checkArgument(com.google.android.exoplayer2.source.ads.ServerSideInsertedAdsUtil.getAdCountInGroup(adPlaybackState, i) == 0);
            }
        }
        synchronized (this) {
            if (this.playbackHandler == null) {
                this.adPlaybackState = adPlaybackState;
            } else {
                this.playbackHandler.post(new java.lang.Runnable() { // from class: e.c.a.a.n2.d0.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.a.a(adPlaybackState);
                    }
                });
            }
        }
    }
}
