package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class MaskingMediaSource extends com.google.android.exoplayer2.source.CompositeMediaSource<java.lang.Void> {
    public boolean hasRealTimeline;
    public boolean hasStartedPreparing;
    public boolean isPrepared;
    public final com.google.android.exoplayer2.source.MediaSource mediaSource;
    public final com.google.android.exoplayer2.Timeline.Period period;
    public com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline timeline;
    public com.google.android.exoplayer2.source.MaskingMediaPeriod unpreparedMaskingMediaPeriod;
    public final boolean useLazyPreparation;
    public final com.google.android.exoplayer2.Timeline.Window window;

    public static final class MaskingTimeline extends com.google.android.exoplayer2.source.ForwardingTimeline {
        public static final java.lang.Object MASKING_EXTERNAL_PERIOD_UID = new java.lang.Object();
        public final java.lang.Object replacedInternalPeriodUid;
        public final java.lang.Object replacedInternalWindowUid;

        public MaskingTimeline(com.google.android.exoplayer2.Timeline timeline, java.lang.Object obj, java.lang.Object obj2) {
            super(timeline);
            this.replacedInternalWindowUid = obj;
            this.replacedInternalPeriodUid = obj2;
        }

        public static com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline createWithPlaceholderTimeline(com.google.android.exoplayer2.MediaItem mediaItem) {
            return new com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline(new com.google.android.exoplayer2.source.MaskingMediaSource.PlaceholderTimeline(mediaItem), com.google.android.exoplayer2.Timeline.Window.SINGLE_WINDOW_UID, MASKING_EXTERNAL_PERIOD_UID);
        }

        public static com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline createWithRealTimeline(com.google.android.exoplayer2.Timeline timeline, java.lang.Object obj, java.lang.Object obj2) {
            return new com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline(timeline, obj, obj2);
        }

        public com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline cloneWithUpdatedTimeline(com.google.android.exoplayer2.Timeline timeline) {
            return new com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline(timeline, this.replacedInternalWindowUid, this.replacedInternalPeriodUid);
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(java.lang.Object obj) {
            java.lang.Object obj2;
            com.google.android.exoplayer2.Timeline timeline = this.timeline;
            if (MASKING_EXTERNAL_PERIOD_UID.equals(obj) && (obj2 = this.replacedInternalPeriodUid) != null) {
                obj = obj2;
            }
            return timeline.getIndexOfPeriod(obj);
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Period getPeriod(int i, com.google.android.exoplayer2.Timeline.Period period, boolean z) {
            this.timeline.getPeriod(i, period, z);
            if (com.google.android.exoplayer2.util.Util.areEqual(period.uid, this.replacedInternalPeriodUid) && z) {
                period.uid = MASKING_EXTERNAL_PERIOD_UID;
            }
            return period;
        }

        public com.google.android.exoplayer2.Timeline getTimeline() {
            return this.timeline;
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public java.lang.Object getUidOfPeriod(int i) {
            java.lang.Object uidOfPeriod = this.timeline.getUidOfPeriod(i);
            return com.google.android.exoplayer2.util.Util.areEqual(uidOfPeriod, this.replacedInternalPeriodUid) ? MASKING_EXTERNAL_PERIOD_UID : uidOfPeriod;
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Window getWindow(int i, com.google.android.exoplayer2.Timeline.Window window, long j) {
            this.timeline.getWindow(i, window, j);
            if (com.google.android.exoplayer2.util.Util.areEqual(window.uid, this.replacedInternalWindowUid)) {
                window.uid = com.google.android.exoplayer2.Timeline.Window.SINGLE_WINDOW_UID;
            }
            return window;
        }
    }

    public static final class PlaceholderTimeline extends com.google.android.exoplayer2.Timeline {
        public final com.google.android.exoplayer2.MediaItem mediaItem;

        public PlaceholderTimeline(com.google.android.exoplayer2.MediaItem mediaItem) {
            this.mediaItem = mediaItem;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getIndexOfPeriod(java.lang.Object obj) {
            return obj == com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline.MASKING_EXTERNAL_PERIOD_UID ? 0 : -1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Period getPeriod(int i, com.google.android.exoplayer2.Timeline.Period period, boolean z) {
            period.set(z ? 0 : null, z ? com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline.MASKING_EXTERNAL_PERIOD_UID : null, 0, com.google.android.exoplayer2.C.TIME_UNSET, 0L, com.google.android.exoplayer2.source.ads.AdPlaybackState.NONE, true);
            return period;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public java.lang.Object getUidOfPeriod(int i) {
            return com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline.MASKING_EXTERNAL_PERIOD_UID;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Window getWindow(int i, com.google.android.exoplayer2.Timeline.Window window, long j) {
            window.set(com.google.android.exoplayer2.Timeline.Window.SINGLE_WINDOW_UID, this.mediaItem, null, com.google.android.exoplayer2.C.TIME_UNSET, com.google.android.exoplayer2.C.TIME_UNSET, com.google.android.exoplayer2.C.TIME_UNSET, false, true, null, 0L, com.google.android.exoplayer2.C.TIME_UNSET, 0, 0, 0L);
            window.isPlaceholder = true;
            return window;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return 1;
        }
    }

    public MaskingMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, boolean z) {
        this.mediaSource = mediaSource;
        this.useLazyPreparation = z && mediaSource.isSingleWindow();
        this.window = new com.google.android.exoplayer2.Timeline.Window();
        this.period = new com.google.android.exoplayer2.Timeline.Period();
        com.google.android.exoplayer2.Timeline initialTimeline = mediaSource.getInitialTimeline();
        if (initialTimeline == null) {
            this.timeline = com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline.createWithPlaceholderTimeline(mediaSource.getMediaItem());
        } else {
            this.timeline = com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline.createWithRealTimeline(initialTimeline, null, null);
            this.hasRealTimeline = true;
        }
    }

    private java.lang.Object getExternalPeriodUid(java.lang.Object obj) {
        return (this.timeline.replacedInternalPeriodUid == null || !this.timeline.replacedInternalPeriodUid.equals(obj)) ? obj : com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline.MASKING_EXTERNAL_PERIOD_UID;
    }

    private java.lang.Object getInternalPeriodUid(java.lang.Object obj) {
        return (this.timeline.replacedInternalPeriodUid == null || !obj.equals(com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline.MASKING_EXTERNAL_PERIOD_UID)) ? obj : this.timeline.replacedInternalPeriodUid;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"unpreparedMaskingMediaPeriod"})
    private void setPreparePositionOverrideToUnpreparedMaskingPeriod(long j) {
        com.google.android.exoplayer2.source.MaskingMediaPeriod maskingMediaPeriod = this.unpreparedMaskingMediaPeriod;
        int indexOfPeriod = this.timeline.getIndexOfPeriod(maskingMediaPeriod.id.periodUid);
        if (indexOfPeriod == -1) {
            return;
        }
        long j2 = this.timeline.getPeriod(indexOfPeriod, this.period).durationUs;
        if (j2 != com.google.android.exoplayer2.C.TIME_UNSET && j >= j2) {
            j = java.lang.Math.max(0L, j2 - 1);
        }
        maskingMediaPeriod.overridePreparePositionUs(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.source.MaskingMediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        com.google.android.exoplayer2.source.MaskingMediaPeriod maskingMediaPeriod = new com.google.android.exoplayer2.source.MaskingMediaPeriod(mediaPeriodId, allocator, j);
        maskingMediaPeriod.setMediaSource(this.mediaSource);
        if (this.isPrepared) {
            maskingMediaPeriod.createPeriod(mediaPeriodId.copyWithPeriodUid(getInternalPeriodUid(mediaPeriodId.periodUid)));
        } else {
            this.unpreparedMaskingMediaPeriod = maskingMediaPeriod;
            if (!this.hasStartedPreparing) {
                this.hasStartedPreparing = true;
                prepareChildSource(null, this.mediaSource);
            }
        }
        return maskingMediaPeriod;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.MediaItem getMediaItem() {
        return this.mediaSource.getMediaItem();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(java.lang.Void r1, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        return mediaPeriodId.copyWithPeriodUid(getExternalPeriodUid(mediaPeriodId.periodUid));
    }

    public com.google.android.exoplayer2.Timeline getTimeline() {
        return this.timeline;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() {
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00bb  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.Void r13, com.google.android.exoplayer2.source.MediaSource r14, com.google.android.exoplayer2.Timeline r15) {
        /*
            r12 = this;
            boolean r13 = r12.isPrepared
            if (r13 == 0) goto L19
            com.google.android.exoplayer2.source.MaskingMediaSource$MaskingTimeline r13 = r12.timeline
            com.google.android.exoplayer2.source.MaskingMediaSource$MaskingTimeline r13 = r13.cloneWithUpdatedTimeline(r15)
            r12.timeline = r13
            com.google.android.exoplayer2.source.MaskingMediaPeriod r13 = r12.unpreparedMaskingMediaPeriod
            if (r13 == 0) goto Lae
            long r13 = r13.getPreparePositionOverrideUs()
            r12.setPreparePositionOverrideToUnpreparedMaskingPeriod(r13)
            goto Lae
        L19:
            boolean r13 = r15.isEmpty()
            if (r13 == 0) goto L36
            boolean r13 = r12.hasRealTimeline
            if (r13 == 0) goto L2a
            com.google.android.exoplayer2.source.MaskingMediaSource$MaskingTimeline r13 = r12.timeline
            com.google.android.exoplayer2.source.MaskingMediaSource$MaskingTimeline r13 = r13.cloneWithUpdatedTimeline(r15)
            goto L32
        L2a:
            java.lang.Object r13 = com.google.android.exoplayer2.Timeline.Window.SINGLE_WINDOW_UID
            java.lang.Object r14 = com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline.MASKING_EXTERNAL_PERIOD_UID
            com.google.android.exoplayer2.source.MaskingMediaSource$MaskingTimeline r13 = com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline.createWithRealTimeline(r15, r13, r14)
        L32:
            r12.timeline = r13
            goto Lae
        L36:
            com.google.android.exoplayer2.Timeline$Window r13 = r12.window
            r14 = 0
            r15.getWindow(r14, r13)
            com.google.android.exoplayer2.Timeline$Window r13 = r12.window
            long r0 = r13.getDefaultPositionUs()
            com.google.android.exoplayer2.Timeline$Window r13 = r12.window
            java.lang.Object r13 = r13.uid
            com.google.android.exoplayer2.source.MaskingMediaPeriod r2 = r12.unpreparedMaskingMediaPeriod
            if (r2 == 0) goto L74
            long r2 = r2.getPreparePositionUs()
            com.google.android.exoplayer2.source.MaskingMediaSource$MaskingTimeline r4 = r12.timeline
            com.google.android.exoplayer2.source.MaskingMediaPeriod r5 = r12.unpreparedMaskingMediaPeriod
            com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r5 = r5.id
            java.lang.Object r5 = r5.periodUid
            com.google.android.exoplayer2.Timeline$Period r6 = r12.period
            r4.getPeriodByUid(r5, r6)
            com.google.android.exoplayer2.Timeline$Period r4 = r12.period
            long r4 = r4.getPositionInWindowUs()
            long r4 = r4 + r2
            com.google.android.exoplayer2.source.MaskingMediaSource$MaskingTimeline r2 = r12.timeline
            com.google.android.exoplayer2.Timeline$Window r3 = r12.window
            com.google.android.exoplayer2.Timeline$Window r14 = r2.getWindow(r14, r3)
            long r2 = r14.getDefaultPositionUs()
            int r14 = (r4 > r2 ? 1 : (r4 == r2 ? 0 : -1))
            if (r14 == 0) goto L74
            r10 = r4
            goto L75
        L74:
            r10 = r0
        L75:
            com.google.android.exoplayer2.Timeline$Window r7 = r12.window
            com.google.android.exoplayer2.Timeline$Period r8 = r12.period
            r9 = 0
            r6 = r15
            android.util.Pair r14 = r6.getPeriodPosition(r7, r8, r9, r10)
            java.lang.Object r0 = r14.first
            java.lang.Object r14 = r14.second
            java.lang.Long r14 = (java.lang.Long) r14
            long r1 = r14.longValue()
            boolean r14 = r12.hasRealTimeline
            if (r14 == 0) goto L94
            com.google.android.exoplayer2.source.MaskingMediaSource$MaskingTimeline r13 = r12.timeline
            com.google.android.exoplayer2.source.MaskingMediaSource$MaskingTimeline r13 = r13.cloneWithUpdatedTimeline(r15)
            goto L98
        L94:
            com.google.android.exoplayer2.source.MaskingMediaSource$MaskingTimeline r13 = com.google.android.exoplayer2.source.MaskingMediaSource.MaskingTimeline.createWithRealTimeline(r15, r13, r0)
        L98:
            r12.timeline = r13
            com.google.android.exoplayer2.source.MaskingMediaPeriod r13 = r12.unpreparedMaskingMediaPeriod
            if (r13 == 0) goto Lae
            r12.setPreparePositionOverrideToUnpreparedMaskingPeriod(r1)
            com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r13 = r13.id
            java.lang.Object r14 = r13.periodUid
            java.lang.Object r14 = r12.getInternalPeriodUid(r14)
            com.google.android.exoplayer2.source.MediaSource$MediaPeriodId r13 = r13.copyWithPeriodUid(r14)
            goto Laf
        Lae:
            r13 = 0
        Laf:
            r14 = 1
            r12.hasRealTimeline = r14
            r12.isPrepared = r14
            com.google.android.exoplayer2.source.MaskingMediaSource$MaskingTimeline r14 = r12.timeline
            r12.refreshSourceInfo(r14)
            if (r13 == 0) goto Lc6
            com.google.android.exoplayer2.source.MaskingMediaPeriod r14 = r12.unpreparedMaskingMediaPeriod
            java.lang.Object r14 = com.google.android.exoplayer2.util.Assertions.checkNotNull(r14)
            com.google.android.exoplayer2.source.MaskingMediaPeriod r14 = (com.google.android.exoplayer2.source.MaskingMediaPeriod) r14
            r14.createPeriod(r13)
        Lc6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.MaskingMediaSource.a(java.lang.Void, com.google.android.exoplayer2.source.MediaSource, com.google.android.exoplayer2.Timeline):void");
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        if (this.useLazyPreparation) {
            return;
        }
        this.hasStartedPreparing = true;
        prepareChildSource(null, this.mediaSource);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        ((com.google.android.exoplayer2.source.MaskingMediaPeriod) mediaPeriod).releasePeriod();
        if (mediaPeriod == this.unpreparedMaskingMediaPeriod) {
            this.unpreparedMaskingMediaPeriod = null;
        }
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        this.isPrepared = false;
        this.hasStartedPreparing = false;
        super.releaseSourceInternal();
    }
}
