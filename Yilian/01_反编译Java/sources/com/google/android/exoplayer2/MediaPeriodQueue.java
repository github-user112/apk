package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class MediaPeriodQueue {
    public static final long INITIAL_RENDERER_POSITION_OFFSET_US = 1000000000000L;
    public static final int MAXIMUM_BUFFER_AHEAD_PERIODS = 100;
    public final com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector;
    public final android.os.Handler analyticsCollectorHandler;
    public int length;
    public com.google.android.exoplayer2.MediaPeriodHolder loading;
    public long nextWindowSequenceNumber;
    public java.lang.Object oldFrontPeriodUid;
    public long oldFrontPeriodWindowSequenceNumber;
    public com.google.android.exoplayer2.MediaPeriodHolder playing;
    public com.google.android.exoplayer2.MediaPeriodHolder reading;
    public int repeatMode;
    public boolean shuffleModeEnabled;
    public final com.google.android.exoplayer2.Timeline.Period period = new com.google.android.exoplayer2.Timeline.Period();
    public final com.google.android.exoplayer2.Timeline.Window window = new com.google.android.exoplayer2.Timeline.Window();

    public MediaPeriodQueue(com.google.android.exoplayer2.analytics.AnalyticsCollector analyticsCollector, android.os.Handler handler) {
        this.analyticsCollector = analyticsCollector;
        this.analyticsCollectorHandler = handler;
    }

    private boolean areDurationsCompatible(long j, long j2) {
        return j == com.google.android.exoplayer2.C.TIME_UNSET || j == j2;
    }

    private boolean canKeepMediaPeriodHolder(com.google.android.exoplayer2.MediaPeriodInfo mediaPeriodInfo, com.google.android.exoplayer2.MediaPeriodInfo mediaPeriodInfo2) {
        return mediaPeriodInfo.startPositionUs == mediaPeriodInfo2.startPositionUs && mediaPeriodInfo.id.equals(mediaPeriodInfo2.id);
    }

    private com.google.android.exoplayer2.MediaPeriodInfo getFirstMediaPeriodInfo(com.google.android.exoplayer2.PlaybackInfo playbackInfo) {
        return getMediaPeriodInfo(playbackInfo.timeline, playbackInfo.periodId, playbackInfo.requestedContentPositionUs, playbackInfo.positionUs);
    }

    private com.google.android.exoplayer2.MediaPeriodInfo getFollowingMediaPeriodInfo(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder, long j) {
        long j2;
        com.google.android.exoplayer2.MediaPeriodInfo mediaPeriodInfo = mediaPeriodHolder.info;
        long rendererOffset = (mediaPeriodHolder.getRendererOffset() + mediaPeriodInfo.durationUs) - j;
        if (mediaPeriodInfo.isLastInTimelinePeriod) {
            long j3 = 0;
            int nextPeriodIndex = timeline.getNextPeriodIndex(timeline.getIndexOfPeriod(mediaPeriodInfo.id.periodUid), this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            if (nextPeriodIndex == -1) {
                return null;
            }
            int i = timeline.getPeriod(nextPeriodIndex, this.period, true).windowIndex;
            java.lang.Object obj = this.period.uid;
            long j4 = mediaPeriodInfo.id.windowSequenceNumber;
            if (timeline.getWindow(i, this.window).firstPeriodIndex == nextPeriodIndex) {
                android.util.Pair<java.lang.Object, java.lang.Long> periodPosition = timeline.getPeriodPosition(this.window, this.period, i, com.google.android.exoplayer2.C.TIME_UNSET, java.lang.Math.max(0L, rendererOffset));
                if (periodPosition == null) {
                    return null;
                }
                obj = periodPosition.first;
                long jLongValue = ((java.lang.Long) periodPosition.second).longValue();
                com.google.android.exoplayer2.MediaPeriodHolder next = mediaPeriodHolder.getNext();
                if (next == null || !next.uid.equals(obj)) {
                    j4 = this.nextWindowSequenceNumber;
                    this.nextWindowSequenceNumber = 1 + j4;
                } else {
                    j4 = next.info.id.windowSequenceNumber;
                }
                j2 = jLongValue;
                j3 = com.google.android.exoplayer2.C.TIME_UNSET;
            } else {
                j2 = 0;
            }
            return getMediaPeriodInfo(timeline, resolveMediaPeriodIdForAds(timeline, obj, j2, j4, this.period), j3, j2);
        }
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.id;
        timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        if (!mediaPeriodId.isAd()) {
            int firstAdIndexToPlay = this.period.getFirstAdIndexToPlay(mediaPeriodId.nextAdGroupIndex);
            if (firstAdIndexToPlay != this.period.getAdCountInAdGroup(mediaPeriodId.nextAdGroupIndex)) {
                return getMediaPeriodInfoForAd(timeline, mediaPeriodId.periodUid, mediaPeriodId.nextAdGroupIndex, firstAdIndexToPlay, mediaPeriodInfo.durationUs, mediaPeriodId.windowSequenceNumber);
            }
            return getMediaPeriodInfoForContent(timeline, mediaPeriodId.periodUid, getMinStartPositionAfterAdGroupUs(timeline, mediaPeriodId.periodUid, mediaPeriodId.nextAdGroupIndex), mediaPeriodInfo.durationUs, mediaPeriodId.windowSequenceNumber);
        }
        int i2 = mediaPeriodId.adGroupIndex;
        int adCountInAdGroup = this.period.getAdCountInAdGroup(i2);
        if (adCountInAdGroup == -1) {
            return null;
        }
        int nextAdIndexToPlay = this.period.getNextAdIndexToPlay(i2, mediaPeriodId.adIndexInAdGroup);
        if (nextAdIndexToPlay < adCountInAdGroup) {
            return getMediaPeriodInfoForAd(timeline, mediaPeriodId.periodUid, i2, nextAdIndexToPlay, mediaPeriodInfo.requestedContentPositionUs, mediaPeriodId.windowSequenceNumber);
        }
        long jLongValue2 = mediaPeriodInfo.requestedContentPositionUs;
        if (jLongValue2 == com.google.android.exoplayer2.C.TIME_UNSET) {
            com.google.android.exoplayer2.Timeline.Window window = this.window;
            com.google.android.exoplayer2.Timeline.Period period = this.period;
            android.util.Pair<java.lang.Object, java.lang.Long> periodPosition2 = timeline.getPeriodPosition(window, period, period.windowIndex, com.google.android.exoplayer2.C.TIME_UNSET, java.lang.Math.max(0L, rendererOffset));
            if (periodPosition2 == null) {
                return null;
            }
            jLongValue2 = ((java.lang.Long) periodPosition2.second).longValue();
        }
        return getMediaPeriodInfoForContent(timeline, mediaPeriodId.periodUid, java.lang.Math.max(getMinStartPositionAfterAdGroupUs(timeline, mediaPeriodId.periodUid, mediaPeriodId.adGroupIndex), jLongValue2), mediaPeriodInfo.requestedContentPositionUs, mediaPeriodId.windowSequenceNumber);
    }

    private com.google.android.exoplayer2.MediaPeriodInfo getMediaPeriodInfo(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, long j, long j2) {
        timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period);
        boolean zIsAd = mediaPeriodId.isAd();
        java.lang.Object obj = mediaPeriodId.periodUid;
        return zIsAd ? getMediaPeriodInfoForAd(timeline, obj, mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup, j, mediaPeriodId.windowSequenceNumber) : getMediaPeriodInfoForContent(timeline, obj, j2, j, mediaPeriodId.windowSequenceNumber);
    }

    private com.google.android.exoplayer2.MediaPeriodInfo getMediaPeriodInfoForAd(com.google.android.exoplayer2.Timeline timeline, java.lang.Object obj, int i, int i2, long j, long j2) {
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(obj, i, i2, j2);
        long adDurationUs = timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).getAdDurationUs(mediaPeriodId.adGroupIndex, mediaPeriodId.adIndexInAdGroup);
        long adResumePositionUs = i2 == this.period.getFirstAdIndexToPlay(i) ? this.period.getAdResumePositionUs() : 0L;
        return new com.google.android.exoplayer2.MediaPeriodInfo(mediaPeriodId, (adDurationUs == com.google.android.exoplayer2.C.TIME_UNSET || adResumePositionUs < adDurationUs) ? adResumePositionUs : java.lang.Math.max(0L, adDurationUs - 1), j, com.google.android.exoplayer2.C.TIME_UNSET, adDurationUs, this.period.isServerSideInsertedAdGroup(mediaPeriodId.adGroupIndex), false, false, false);
    }

    private com.google.android.exoplayer2.MediaPeriodInfo getMediaPeriodInfoForContent(com.google.android.exoplayer2.Timeline timeline, java.lang.Object obj, long j, long j2, long j3) {
        long jMax = j;
        timeline.getPeriodByUid(obj, this.period);
        int adGroupIndexAfterPositionUs = this.period.getAdGroupIndexAfterPositionUs(jMax);
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(obj, j3, adGroupIndexAfterPositionUs);
        boolean zIsLastInPeriod = isLastInPeriod(mediaPeriodId);
        boolean zIsLastInWindow = isLastInWindow(timeline, mediaPeriodId);
        boolean zIsLastInTimeline = isLastInTimeline(timeline, mediaPeriodId, zIsLastInPeriod);
        boolean z = adGroupIndexAfterPositionUs != -1 && this.period.isServerSideInsertedAdGroup(adGroupIndexAfterPositionUs);
        long adGroupTimeUs = adGroupIndexAfterPositionUs != -1 ? this.period.getAdGroupTimeUs(adGroupIndexAfterPositionUs) : -9223372036854775807L;
        long j4 = (adGroupTimeUs == com.google.android.exoplayer2.C.TIME_UNSET || adGroupTimeUs == Long.MIN_VALUE) ? this.period.durationUs : adGroupTimeUs;
        if (j4 != com.google.android.exoplayer2.C.TIME_UNSET && jMax >= j4) {
            jMax = java.lang.Math.max(0L, j4 - 1);
        }
        return new com.google.android.exoplayer2.MediaPeriodInfo(mediaPeriodId, jMax, j2, adGroupTimeUs, j4, z, zIsLastInPeriod, zIsLastInWindow, zIsLastInTimeline);
    }

    private long getMinStartPositionAfterAdGroupUs(com.google.android.exoplayer2.Timeline timeline, java.lang.Object obj, int i) {
        timeline.getPeriodByUid(obj, this.period);
        long adGroupTimeUs = this.period.getAdGroupTimeUs(i);
        return adGroupTimeUs == Long.MIN_VALUE ? this.period.durationUs : this.period.getContentResumeOffsetUs(i) + adGroupTimeUs;
    }

    private boolean isLastInPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        return !mediaPeriodId.isAd() && mediaPeriodId.nextAdGroupIndex == -1;
    }

    private boolean isLastInTimeline(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, boolean z) {
        int indexOfPeriod = timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
        return !timeline.getWindow(timeline.getPeriod(indexOfPeriod, this.period).windowIndex, this.window).isDynamic && timeline.isLastPeriod(indexOfPeriod, this.period, this.window, this.repeatMode, this.shuffleModeEnabled) && z;
    }

    private boolean isLastInWindow(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        if (isLastInPeriod(mediaPeriodId)) {
            return timeline.getWindow(timeline.getPeriodByUid(mediaPeriodId.periodUid, this.period).windowIndex, this.window).lastPeriodIndex == timeline.getIndexOfPeriod(mediaPeriodId.periodUid);
        }
        return false;
    }

    private void notifyQueueUpdate() {
        if (this.analyticsCollector != null) {
            final e.c.b.b.s.a aVarJ = e.c.b.b.s.j();
            for (com.google.android.exoplayer2.MediaPeriodHolder next = this.playing; next != null; next = next.getNext()) {
                aVarJ.b(next.info.id);
            }
            com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder = this.reading;
            final com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodHolder == null ? null : mediaPeriodHolder.info.id;
            this.analyticsCollectorHandler.post(new java.lang.Runnable() { // from class: e.c.a.a.j1
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(aVarJ, mediaPeriodId);
                }
            });
        }
    }

    public static com.google.android.exoplayer2.source.MediaSource.MediaPeriodId resolveMediaPeriodIdForAds(com.google.android.exoplayer2.Timeline timeline, java.lang.Object obj, long j, long j2, com.google.android.exoplayer2.Timeline.Period period) {
        timeline.getPeriodByUid(obj, period);
        int adGroupIndexForPositionUs = period.getAdGroupIndexForPositionUs(j);
        return adGroupIndexForPositionUs == -1 ? new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(obj, j2, period.getAdGroupIndexAfterPositionUs(j)) : new com.google.android.exoplayer2.source.MediaSource.MediaPeriodId(obj, adGroupIndexForPositionUs, period.getFirstAdIndexToPlay(adGroupIndexForPositionUs), j2);
    }

    private long resolvePeriodIndexToWindowSequenceNumber(com.google.android.exoplayer2.Timeline timeline, java.lang.Object obj) {
        int indexOfPeriod;
        int i = timeline.getPeriodByUid(obj, this.period).windowIndex;
        java.lang.Object obj2 = this.oldFrontPeriodUid;
        if (obj2 != null && (indexOfPeriod = timeline.getIndexOfPeriod(obj2)) != -1 && timeline.getPeriod(indexOfPeriod, this.period).windowIndex == i) {
            return this.oldFrontPeriodWindowSequenceNumber;
        }
        com.google.android.exoplayer2.MediaPeriodHolder next = this.playing;
        while (true) {
            if (next == null) {
                next = this.playing;
                while (next != null) {
                    int indexOfPeriod2 = timeline.getIndexOfPeriod(next.uid);
                    if (indexOfPeriod2 == -1 || timeline.getPeriod(indexOfPeriod2, this.period).windowIndex != i) {
                        next = next.getNext();
                    }
                }
                long j = this.nextWindowSequenceNumber;
                this.nextWindowSequenceNumber = 1 + j;
                if (this.playing == null) {
                    this.oldFrontPeriodUid = obj;
                    this.oldFrontPeriodWindowSequenceNumber = j;
                }
                return j;
            }
            if (next.uid.equals(obj)) {
                break;
            }
            next = next.getNext();
        }
        return next.info.id.windowSequenceNumber;
    }

    private boolean updateForPlaybackModeChange(com.google.android.exoplayer2.Timeline timeline) {
        com.google.android.exoplayer2.MediaPeriodHolder next = this.playing;
        if (next == null) {
            return true;
        }
        int indexOfPeriod = timeline.getIndexOfPeriod(next.uid);
        while (true) {
            indexOfPeriod = timeline.getNextPeriodIndex(indexOfPeriod, this.period, this.window, this.repeatMode, this.shuffleModeEnabled);
            while (next.getNext() != null && !next.info.isLastInTimelinePeriod) {
                next = next.getNext();
            }
            com.google.android.exoplayer2.MediaPeriodHolder next2 = next.getNext();
            if (indexOfPeriod == -1 || next2 == null || timeline.getIndexOfPeriod(next2.uid) != indexOfPeriod) {
                break;
            }
            next = next2;
        }
        boolean zRemoveAfter = removeAfter(next);
        next.info = getUpdatedMediaPeriodInfo(timeline, next.info);
        return !zRemoveAfter;
    }

    public /* synthetic */ void a(e.c.b.b.s.a aVar, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        this.analyticsCollector.updateMediaPeriodQueueInfo(aVar.c(), mediaPeriodId);
    }

    public com.google.android.exoplayer2.MediaPeriodHolder advancePlayingPeriod() {
        com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder = this.playing;
        if (mediaPeriodHolder == null) {
            return null;
        }
        if (mediaPeriodHolder == this.reading) {
            this.reading = mediaPeriodHolder.getNext();
        }
        this.playing.release();
        int i = this.length - 1;
        this.length = i;
        if (i == 0) {
            this.loading = null;
            com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder2 = this.playing;
            this.oldFrontPeriodUid = mediaPeriodHolder2.uid;
            this.oldFrontPeriodWindowSequenceNumber = mediaPeriodHolder2.info.id.windowSequenceNumber;
        }
        this.playing = this.playing.getNext();
        notifyQueueUpdate();
        return this.playing;
    }

    public com.google.android.exoplayer2.MediaPeriodHolder advanceReadingPeriod() {
        com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder = this.reading;
        com.google.android.exoplayer2.util.Assertions.checkState((mediaPeriodHolder == null || mediaPeriodHolder.getNext() == null) ? false : true);
        this.reading = this.reading.getNext();
        notifyQueueUpdate();
        return this.reading;
    }

    public void clear() {
        if (this.length == 0) {
            return;
        }
        com.google.android.exoplayer2.MediaPeriodHolder next = (com.google.android.exoplayer2.MediaPeriodHolder) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.playing);
        this.oldFrontPeriodUid = next.uid;
        this.oldFrontPeriodWindowSequenceNumber = next.info.id.windowSequenceNumber;
        while (next != null) {
            next.release();
            next = next.getNext();
        }
        this.playing = null;
        this.loading = null;
        this.reading = null;
        this.length = 0;
        notifyQueueUpdate();
    }

    public com.google.android.exoplayer2.MediaPeriodHolder enqueueNextMediaPeriodHolder(com.google.android.exoplayer2.RendererCapabilities[] rendererCapabilitiesArr, com.google.android.exoplayer2.trackselection.TrackSelector trackSelector, com.google.android.exoplayer2.upstream.Allocator allocator, com.google.android.exoplayer2.MediaSourceList mediaSourceList, com.google.android.exoplayer2.MediaPeriodInfo mediaPeriodInfo, com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult) {
        com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder = this.loading;
        com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder2 = new com.google.android.exoplayer2.MediaPeriodHolder(rendererCapabilitiesArr, mediaPeriodHolder == null ? INITIAL_RENDERER_POSITION_OFFSET_US : (mediaPeriodHolder.getRendererOffset() + this.loading.info.durationUs) - mediaPeriodInfo.startPositionUs, trackSelector, allocator, mediaSourceList, mediaPeriodInfo, trackSelectorResult);
        com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder3 = this.loading;
        if (mediaPeriodHolder3 != null) {
            mediaPeriodHolder3.setNext(mediaPeriodHolder2);
        } else {
            this.playing = mediaPeriodHolder2;
            this.reading = mediaPeriodHolder2;
        }
        this.oldFrontPeriodUid = null;
        this.loading = mediaPeriodHolder2;
        this.length++;
        notifyQueueUpdate();
        return mediaPeriodHolder2;
    }

    public com.google.android.exoplayer2.MediaPeriodHolder getLoadingPeriod() {
        return this.loading;
    }

    public com.google.android.exoplayer2.MediaPeriodInfo getNextMediaPeriodInfo(long j, com.google.android.exoplayer2.PlaybackInfo playbackInfo) {
        com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder == null ? getFirstMediaPeriodInfo(playbackInfo) : getFollowingMediaPeriodInfo(playbackInfo.timeline, mediaPeriodHolder, j);
    }

    public com.google.android.exoplayer2.MediaPeriodHolder getPlayingPeriod() {
        return this.playing;
    }

    public com.google.android.exoplayer2.MediaPeriodHolder getReadingPeriod() {
        return this.reading;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.MediaPeriodInfo getUpdatedMediaPeriodInfo(com.google.android.exoplayer2.Timeline r19, com.google.android.exoplayer2.MediaPeriodInfo r20) {
        /*
            r18 = this;
            r0 = r18
            r1 = r19
            r2 = r20
            com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r3 = r2.id
            boolean r12 = r0.isLastInPeriod(r3)
            boolean r13 = r0.isLastInWindow(r1, r3)
            boolean r14 = r0.isLastInTimeline(r1, r3, r12)
            com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r4 = r2.id
            java.lang.Object r4 = r4.periodUid
            com.google.android.exoplayer2.Timeline$Period r5 = r0.period
            r1.getPeriodByUid(r4, r5)
            boolean r1 = r3.isAd()
            r4 = -1
            r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            if (r1 != 0) goto L35
            int r1 = r3.nextAdGroupIndex
            if (r1 != r4) goto L2e
            goto L35
        L2e:
            com.google.android.exoplayer2.Timeline$Period r7 = r0.period
            long r7 = r7.getAdGroupTimeUs(r1)
            goto L36
        L35:
            r7 = r5
        L36:
            boolean r1 = r3.isAd()
            if (r1 == 0) goto L48
            com.google.android.exoplayer2.Timeline$Period r1 = r0.period
            int r5 = r3.adGroupIndex
            int r6 = r3.adIndexInAdGroup
            long r5 = r1.getAdDurationUs(r5, r6)
        L46:
            r9 = r5
            goto L5c
        L48:
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 == 0) goto L55
            r5 = -9223372036854775808
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 != 0) goto L53
            goto L55
        L53:
            r9 = r7
            goto L5c
        L55:
            com.google.android.exoplayer2.Timeline$Period r1 = r0.period
            long r5 = r1.getDurationUs()
            goto L46
        L5c:
            boolean r1 = r3.isAd()
            if (r1 == 0) goto L6c
            com.google.android.exoplayer2.Timeline$Period r1 = r0.period
            int r4 = r3.adGroupIndex
            boolean r1 = r1.isServerSideInsertedAdGroup(r4)
            r11 = r1
            goto L7d
        L6c:
            int r1 = r3.nextAdGroupIndex
            if (r1 == r4) goto L7b
            com.google.android.exoplayer2.Timeline$Period r4 = r0.period
            boolean r1 = r4.isServerSideInsertedAdGroup(r1)
            if (r1 == 0) goto L7b
            r1 = 1
            r11 = 1
            goto L7d
        L7b:
            r1 = 0
            r11 = 0
        L7d:
            com.google.android.exoplayer2.MediaPeriodInfo r15 = new com.google.android.exoplayer2.MediaPeriodInfo
            long r4 = r2.startPositionUs
            long r1 = r2.requestedContentPositionUs
            r16 = r1
            r1 = r15
            r2 = r3
            r3 = r4
            r5 = r16
            r1.<init>(r2, r3, r5, r7, r9, r11, r12, r13, r14)
            return r15
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.MediaPeriodQueue.getUpdatedMediaPeriodInfo(com.google.android.exoplayer2.Timeline, com.google.android.exoplayer2.MediaPeriodInfo):com.google.android.exoplayer2.MediaPeriodInfo");
    }

    public boolean isLoading(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder != null && mediaPeriodHolder.mediaPeriod == mediaPeriod;
    }

    public void reevaluateBuffer(long j) {
        com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder = this.loading;
        if (mediaPeriodHolder != null) {
            mediaPeriodHolder.reevaluateBuffer(j);
        }
    }

    public boolean removeAfter(com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder) {
        boolean z = false;
        com.google.android.exoplayer2.util.Assertions.checkState(mediaPeriodHolder != null);
        if (mediaPeriodHolder.equals(this.loading)) {
            return false;
        }
        this.loading = mediaPeriodHolder;
        while (mediaPeriodHolder.getNext() != null) {
            mediaPeriodHolder = mediaPeriodHolder.getNext();
            if (mediaPeriodHolder == this.reading) {
                this.reading = this.playing;
                z = true;
            }
            mediaPeriodHolder.release();
            this.length--;
        }
        this.loading.setNext(null);
        notifyQueueUpdate();
        return z;
    }

    public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId resolveMediaPeriodIdForAds(com.google.android.exoplayer2.Timeline timeline, java.lang.Object obj, long j) {
        return resolveMediaPeriodIdForAds(timeline, obj, j, resolvePeriodIndexToWindowSequenceNumber(timeline, obj), this.period);
    }

    public boolean shouldLoadNextMediaPeriod() {
        com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder = this.loading;
        return mediaPeriodHolder == null || (!mediaPeriodHolder.info.isFinal && mediaPeriodHolder.isFullyBuffered() && this.loading.info.durationUs != com.google.android.exoplayer2.C.TIME_UNSET && this.length < 100);
    }

    public boolean updateQueuedPeriods(com.google.android.exoplayer2.Timeline timeline, long j, long j2) {
        com.google.android.exoplayer2.MediaPeriodInfo updatedMediaPeriodInfo;
        com.google.android.exoplayer2.MediaPeriodHolder next = this.playing;
        com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder = null;
        while (next != null) {
            com.google.android.exoplayer2.MediaPeriodInfo mediaPeriodInfo = next.info;
            if (mediaPeriodHolder != null) {
                com.google.android.exoplayer2.MediaPeriodInfo followingMediaPeriodInfo = getFollowingMediaPeriodInfo(timeline, mediaPeriodHolder, j);
                if (followingMediaPeriodInfo != null && canKeepMediaPeriodHolder(mediaPeriodInfo, followingMediaPeriodInfo)) {
                    updatedMediaPeriodInfo = followingMediaPeriodInfo;
                }
                return !removeAfter(mediaPeriodHolder);
            }
            updatedMediaPeriodInfo = getUpdatedMediaPeriodInfo(timeline, mediaPeriodInfo);
            next.info = updatedMediaPeriodInfo.copyWithRequestedContentPositionUs(mediaPeriodInfo.requestedContentPositionUs);
            if (!areDurationsCompatible(mediaPeriodInfo.durationUs, updatedMediaPeriodInfo.durationUs)) {
                next.updateClipping();
                long j3 = updatedMediaPeriodInfo.durationUs;
                return (removeAfter(next) || (next == this.reading && !next.info.isFollowedByTransitionToSameStream && ((j2 > Long.MIN_VALUE ? 1 : (j2 == Long.MIN_VALUE ? 0 : -1)) == 0 || (j2 > ((j3 > com.google.android.exoplayer2.C.TIME_UNSET ? 1 : (j3 == com.google.android.exoplayer2.C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : next.toRendererTime(j3)) ? 1 : (j2 == ((j3 > com.google.android.exoplayer2.C.TIME_UNSET ? 1 : (j3 == com.google.android.exoplayer2.C.TIME_UNSET ? 0 : -1)) == 0 ? Long.MAX_VALUE : next.toRendererTime(j3)) ? 0 : -1)) >= 0))) ? false : true;
            }
            mediaPeriodHolder = next;
            next = next.getNext();
        }
        return true;
    }

    public boolean updateRepeatMode(com.google.android.exoplayer2.Timeline timeline, int i) {
        this.repeatMode = i;
        return updateForPlaybackModeChange(timeline);
    }

    public boolean updateShuffleModeEnabled(com.google.android.exoplayer2.Timeline timeline, boolean z) {
        this.shuffleModeEnabled = z;
        return updateForPlaybackModeChange(timeline);
    }
}
