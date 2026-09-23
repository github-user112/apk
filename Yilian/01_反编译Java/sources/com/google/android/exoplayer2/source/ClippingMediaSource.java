package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class ClippingMediaSource extends com.google.android.exoplayer2.source.CompositeMediaSource<java.lang.Void> {
    public final boolean allowDynamicClippingUpdates;
    public com.google.android.exoplayer2.source.ClippingMediaSource.IllegalClippingException clippingError;
    public com.google.android.exoplayer2.source.ClippingMediaSource.ClippingTimeline clippingTimeline;
    public final boolean enableInitialDiscontinuity;
    public final long endUs;
    public final java.util.ArrayList<com.google.android.exoplayer2.source.ClippingMediaPeriod> mediaPeriods;
    public final com.google.android.exoplayer2.source.MediaSource mediaSource;
    public long periodEndUs;
    public long periodStartUs;
    public final boolean relativeToDefaultPosition;
    public final long startUs;
    public final com.google.android.exoplayer2.Timeline.Window window;

    public static final class ClippingTimeline extends com.google.android.exoplayer2.source.ForwardingTimeline {
        public final long durationUs;
        public final long endUs;
        public final boolean isDynamic;
        public final long startUs;

        /* JADX WARN: Removed duplicated region for block: B:39:0x0076  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public ClippingTimeline(com.google.android.exoplayer2.Timeline r8, long r9, long r11) throws com.google.android.exoplayer2.source.ClippingMediaSource.IllegalClippingException {
            /*
                r7 = this;
                r7.<init>(r8)
                int r0 = r8.getPeriodCount()
                r1 = 0
                r2 = 1
                if (r0 != r2) goto L7a
                com.google.android.exoplayer2.Timeline$Window r0 = new com.google.android.exoplayer2.Timeline$Window
                r0.<init>()
                com.google.android.exoplayer2.Timeline$Window r8 = r8.getWindow(r1, r0)
                r3 = 0
                long r9 = java.lang.Math.max(r3, r9)
                boolean r0 = r8.isPlaceholder
                if (r0 != 0) goto L2d
                int r0 = (r9 > r3 ? 1 : (r9 == r3 ? 0 : -1))
                if (r0 == 0) goto L2d
                boolean r0 = r8.isSeekable
                if (r0 == 0) goto L27
                goto L2d
            L27:
                com.google.android.exoplayer2.source.ClippingMediaSource$IllegalClippingException r8 = new com.google.android.exoplayer2.source.ClippingMediaSource$IllegalClippingException
                r8.<init>(r2)
                throw r8
            L2d:
                r5 = -9223372036854775808
                int r0 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1))
                if (r0 != 0) goto L36
                long r11 = r8.durationUs
                goto L3a
            L36:
                long r11 = java.lang.Math.max(r3, r11)
            L3a:
                long r3 = r8.durationUs
                r5 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
                if (r0 == 0) goto L56
                int r0 = (r11 > r3 ? 1 : (r11 == r3 ? 0 : -1))
                if (r0 <= 0) goto L4a
                r11 = r3
            L4a:
                int r0 = (r9 > r11 ? 1 : (r9 == r11 ? 0 : -1))
                if (r0 > 0) goto L4f
                goto L56
            L4f:
                com.google.android.exoplayer2.source.ClippingMediaSource$IllegalClippingException r8 = new com.google.android.exoplayer2.source.ClippingMediaSource$IllegalClippingException
                r9 = 2
                r8.<init>(r9)
                throw r8
            L56:
                r7.startUs = r9
                r7.endUs = r11
                int r0 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1))
                if (r0 != 0) goto L60
                r9 = r5
                goto L62
            L60:
                long r9 = r11 - r9
            L62:
                r7.durationUs = r9
                boolean r9 = r8.isDynamic
                if (r9 == 0) goto L77
                int r9 = (r11 > r5 ? 1 : (r11 == r5 ? 0 : -1))
                if (r9 == 0) goto L76
                long r8 = r8.durationUs
                int r10 = (r8 > r5 ? 1 : (r8 == r5 ? 0 : -1))
                if (r10 == 0) goto L77
                int r10 = (r11 > r8 ? 1 : (r11 == r8 ? 0 : -1))
                if (r10 != 0) goto L77
            L76:
                r1 = 1
            L77:
                r7.isDynamic = r1
                return
            L7a:
                com.google.android.exoplayer2.source.ClippingMediaSource$IllegalClippingException r8 = new com.google.android.exoplayer2.source.ClippingMediaSource$IllegalClippingException
                r8.<init>(r1)
                throw r8
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.ClippingMediaSource.ClippingTimeline.<init>(com.google.android.exoplayer2.Timeline, long, long):void");
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Period getPeriod(int i, com.google.android.exoplayer2.Timeline.Period period, boolean z) {
            this.timeline.getPeriod(0, period, z);
            long positionInWindowUs = period.getPositionInWindowUs() - this.startUs;
            long j = this.durationUs;
            return period.set(period.id, period.uid, 0, j == com.google.android.exoplayer2.C.TIME_UNSET ? -9223372036854775807L : j - positionInWindowUs, positionInWindowUs);
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Window getWindow(int i, com.google.android.exoplayer2.Timeline.Window window, long j) {
            this.timeline.getWindow(0, window, 0L);
            long j2 = window.positionInFirstPeriodUs;
            long j3 = this.startUs;
            window.positionInFirstPeriodUs = j2 + j3;
            window.durationUs = this.durationUs;
            window.isDynamic = this.isDynamic;
            long j4 = window.defaultPositionUs;
            if (j4 != com.google.android.exoplayer2.C.TIME_UNSET) {
                long jMax = java.lang.Math.max(j4, j3);
                window.defaultPositionUs = jMax;
                long j5 = this.endUs;
                if (j5 != com.google.android.exoplayer2.C.TIME_UNSET) {
                    jMax = java.lang.Math.min(jMax, j5);
                }
                window.defaultPositionUs = jMax;
                window.defaultPositionUs = jMax - this.startUs;
            }
            long jUsToMs = com.google.android.exoplayer2.util.Util.usToMs(this.startUs);
            long j6 = window.presentationStartTimeMs;
            if (j6 != com.google.android.exoplayer2.C.TIME_UNSET) {
                window.presentationStartTimeMs = j6 + jUsToMs;
            }
            long j7 = window.windowStartTimeMs;
            if (j7 != com.google.android.exoplayer2.C.TIME_UNSET) {
                window.windowStartTimeMs = j7 + jUsToMs;
            }
            return window;
        }
    }

    public static final class IllegalClippingException extends java.io.IOException {
        public static final int REASON_INVALID_PERIOD_COUNT = 0;
        public static final int REASON_NOT_SEEKABLE_TO_START = 1;
        public static final int REASON_START_EXCEEDS_END = 2;
        public final int reason;

        @java.lang.annotation.Documented
        @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
        public @interface Reason {
        }

        /* JADX WARN: Illegal instructions before constructor call */
        public IllegalClippingException(int i) {
            java.lang.String strValueOf = java.lang.String.valueOf(getReasonDescription(i));
            super(strValueOf.length() != 0 ? "Illegal clipping: ".concat(strValueOf) : new java.lang.String("Illegal clipping: "));
            this.reason = i;
        }

        public static java.lang.String getReasonDescription(int i) {
            return i != 0 ? i != 1 ? i != 2 ? "unknown" : "start exceeds end" : "not seekable to start" : "invalid period count";
        }
    }

    public ClippingMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, long j) {
        this(mediaSource, 0L, j, true, false, true);
    }

    public ClippingMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, long j, long j2) {
        this(mediaSource, j, j2, true, false, false);
    }

    public ClippingMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, long j, long j2, boolean z, boolean z2, boolean z3) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(j >= 0);
        this.mediaSource = (com.google.android.exoplayer2.source.MediaSource) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaSource);
        this.startUs = j;
        this.endUs = j2;
        this.enableInitialDiscontinuity = z;
        this.allowDynamicClippingUpdates = z2;
        this.relativeToDefaultPosition = z3;
        this.mediaPeriods = new java.util.ArrayList<>();
        this.window = new com.google.android.exoplayer2.Timeline.Window();
    }

    private void refreshClippedTimeline(com.google.android.exoplayer2.Timeline timeline) {
        long j;
        long j2;
        timeline.getWindow(0, this.window);
        long positionInFirstPeriodUs = this.window.getPositionInFirstPeriodUs();
        if (this.clippingTimeline == null || this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            long j3 = this.startUs;
            long j4 = this.endUs;
            if (this.relativeToDefaultPosition) {
                long defaultPositionUs = this.window.getDefaultPositionUs();
                j3 += defaultPositionUs;
                j4 += defaultPositionUs;
            }
            this.periodStartUs = positionInFirstPeriodUs + j3;
            this.periodEndUs = this.endUs != Long.MIN_VALUE ? positionInFirstPeriodUs + j4 : Long.MIN_VALUE;
            int size = this.mediaPeriods.size();
            for (int i = 0; i < size; i++) {
                this.mediaPeriods.get(i).updateClipping(this.periodStartUs, this.periodEndUs);
            }
            j = j3;
            j2 = j4;
        } else {
            long j5 = this.periodStartUs - positionInFirstPeriodUs;
            j2 = this.endUs != Long.MIN_VALUE ? this.periodEndUs - positionInFirstPeriodUs : Long.MIN_VALUE;
            j = j5;
        }
        try {
            com.google.android.exoplayer2.source.ClippingMediaSource.ClippingTimeline clippingTimeline = new com.google.android.exoplayer2.source.ClippingMediaSource.ClippingTimeline(timeline, j, j2);
            this.clippingTimeline = clippingTimeline;
            refreshSourceInfo(clippingTimeline);
        } catch (com.google.android.exoplayer2.source.ClippingMediaSource.IllegalClippingException e2) {
            this.clippingError = e2;
            for (int i2 = 0; i2 < this.mediaPeriods.size(); i2++) {
                this.mediaPeriods.get(i2).setClippingError(this.clippingError);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        com.google.android.exoplayer2.source.ClippingMediaPeriod clippingMediaPeriod = new com.google.android.exoplayer2.source.ClippingMediaPeriod(this.mediaSource.createPeriod(mediaPeriodId, allocator, j), this.enableInitialDiscontinuity, this.periodStartUs, this.periodEndUs);
        this.mediaPeriods.add(clippingMediaPeriod);
        return clippingMediaPeriod;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.MediaItem getMediaItem() {
        return this.mediaSource.getMediaItem();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws com.google.android.exoplayer2.source.ClippingMediaSource.IllegalClippingException {
        com.google.android.exoplayer2.source.ClippingMediaSource.IllegalClippingException illegalClippingException = this.clippingError;
        if (illegalClippingException != null) {
            throw illegalClippingException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void a(java.lang.Void r1, com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.Timeline timeline) {
        if (this.clippingError != null) {
            return;
        }
        refreshClippedTimeline(timeline);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        prepareChildSource(null, this.mediaSource);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.mediaPeriods.remove(mediaPeriod));
        this.mediaSource.releasePeriod(((com.google.android.exoplayer2.source.ClippingMediaPeriod) mediaPeriod).mediaPeriod);
        if (!this.mediaPeriods.isEmpty() || this.allowDynamicClippingUpdates) {
            return;
        }
        refreshClippedTimeline(((com.google.android.exoplayer2.source.ClippingMediaSource.ClippingTimeline) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.clippingTimeline)).timeline);
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        this.clippingError = null;
        this.clippingTimeline = null;
    }
}
