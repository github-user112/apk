package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class MergingMediaSource extends com.google.android.exoplayer2.source.CompositeMediaSource<java.lang.Integer> {
    public static final com.google.android.exoplayer2.MediaItem EMPTY_MEDIA_ITEM = new com.google.android.exoplayer2.MediaItem.Builder().setMediaId("MergingMediaSource").build();
    public static final int PERIOD_COUNT_UNSET = -1;
    public final boolean adjustPeriodTimeOffsets;
    public final boolean clipDurations;
    public final java.util.Map<java.lang.Object, java.lang.Long> clippedDurationsUs;
    public final e.c.b.b.d0<java.lang.Object, com.google.android.exoplayer2.source.ClippingMediaPeriod> clippedMediaPeriods;
    public final com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    public final com.google.android.exoplayer2.source.MediaSource[] mediaSources;
    public com.google.android.exoplayer2.source.MergingMediaSource.IllegalMergeException mergeError;
    public final java.util.ArrayList<com.google.android.exoplayer2.source.MediaSource> pendingTimelineSources;
    public int periodCount;
    public long[][] periodTimeOffsetsUs;
    public final com.google.android.exoplayer2.Timeline[] timelines;

    public static final class ClippedTimeline extends com.google.android.exoplayer2.source.ForwardingTimeline {
        public final long[] periodDurationsUs;
        public final long[] windowDurationsUs;

        public ClippedTimeline(com.google.android.exoplayer2.Timeline timeline, java.util.Map<java.lang.Object, java.lang.Long> map) {
            super(timeline);
            int windowCount = timeline.getWindowCount();
            this.windowDurationsUs = new long[timeline.getWindowCount()];
            com.google.android.exoplayer2.Timeline.Window window = new com.google.android.exoplayer2.Timeline.Window();
            for (int i = 0; i < windowCount; i++) {
                this.windowDurationsUs[i] = timeline.getWindow(i, window).durationUs;
            }
            int periodCount = timeline.getPeriodCount();
            this.periodDurationsUs = new long[periodCount];
            com.google.android.exoplayer2.Timeline.Period period = new com.google.android.exoplayer2.Timeline.Period();
            for (int i2 = 0; i2 < periodCount; i2++) {
                timeline.getPeriod(i2, period, true);
                long jLongValue = ((java.lang.Long) com.google.android.exoplayer2.util.Assertions.checkNotNull(map.get(period.uid))).longValue();
                this.periodDurationsUs[i2] = jLongValue == Long.MIN_VALUE ? period.durationUs : jLongValue;
                long j = period.durationUs;
                if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
                    long[] jArr = this.windowDurationsUs;
                    int i3 = period.windowIndex;
                    jArr[i3] = jArr[i3] - (j - this.periodDurationsUs[i2]);
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public com.google.android.exoplayer2.Timeline.Period getPeriod(int i, com.google.android.exoplayer2.Timeline.Period period, boolean z) {
            super.getPeriod(i, period, z);
            period.durationUs = this.periodDurationsUs[i];
            return period;
        }

        /* JADX WARN: Removed duplicated region for block: B:8:0x001e  */
        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.android.exoplayer2.Timeline.Window getWindow(int r5, com.google.android.exoplayer2.Timeline.Window r6, long r7) {
            /*
                r4 = this;
                super.getWindow(r5, r6, r7)
                long[] r7 = r4.windowDurationsUs
                r0 = r7[r5]
                r6.durationUs = r0
                r7 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
                int r5 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
                if (r5 == 0) goto L1e
                long r2 = r6.defaultPositionUs
                int r5 = (r2 > r7 ? 1 : (r2 == r7 ? 0 : -1))
                if (r5 != 0) goto L19
                goto L1e
            L19:
                long r7 = java.lang.Math.min(r2, r0)
                goto L20
            L1e:
                long r7 = r6.defaultPositionUs
            L20:
                r6.defaultPositionUs = r7
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.MergingMediaSource.ClippedTimeline.getWindow(int, com.google.android.exoplayer2.Timeline$Window, long):com.google.android.exoplayer2.Timeline$Window");
        }
    }

    public static final class IllegalMergeException extends java.io.IOException {
        public static final int REASON_PERIOD_COUNT_MISMATCH = 0;
        public final int reason;

        @java.lang.annotation.Documented
        @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
        public @interface Reason {
        }

        public IllegalMergeException(int i) {
            this.reason = i;
        }
    }

    public MergingMediaSource(boolean z, boolean z2, com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, com.google.android.exoplayer2.source.MediaSource... mediaSourceArr) {
        this.adjustPeriodTimeOffsets = z;
        this.clipDurations = z2;
        this.mediaSources = mediaSourceArr;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.pendingTimelineSources = new java.util.ArrayList<>(java.util.Arrays.asList(mediaSourceArr));
        this.periodCount = -1;
        this.timelines = new com.google.android.exoplayer2.Timeline[mediaSourceArr.length];
        this.periodTimeOffsetsUs = new long[0][];
        this.clippedDurationsUs = new java.util.HashMap();
        d.s.y.l(8, "expectedKeys");
        d.s.y.l(2, "expectedValuesPerKey");
        this.clippedMediaPeriods = new e.c.b.b.f0(new e.c.b.b.n(8), new e.c.b.b.e0(2));
    }

    public MergingMediaSource(boolean z, boolean z2, com.google.android.exoplayer2.source.MediaSource... mediaSourceArr) {
        this(z, z2, new com.google.android.exoplayer2.source.DefaultCompositeSequenceableLoaderFactory(), mediaSourceArr);
    }

    public MergingMediaSource(boolean z, com.google.android.exoplayer2.source.MediaSource... mediaSourceArr) {
        this(z, false, mediaSourceArr);
    }

    public MergingMediaSource(com.google.android.exoplayer2.source.MediaSource... mediaSourceArr) {
        this(false, mediaSourceArr);
    }

    private void computePeriodTimeOffsets() {
        com.google.android.exoplayer2.Timeline.Period period = new com.google.android.exoplayer2.Timeline.Period();
        for (int i = 0; i < this.periodCount; i++) {
            long j = -this.timelines[0].getPeriod(i, period).getPositionInWindowUs();
            int i2 = 1;
            while (true) {
                com.google.android.exoplayer2.Timeline[] timelineArr = this.timelines;
                if (i2 < timelineArr.length) {
                    this.periodTimeOffsetsUs[i][i2] = j - (-timelineArr[i2].getPeriod(i, period).getPositionInWindowUs());
                    i2++;
                }
            }
        }
    }

    private void updateClippedDuration() {
        com.google.android.exoplayer2.Timeline[] timelineArr;
        com.google.android.exoplayer2.Timeline.Period period = new com.google.android.exoplayer2.Timeline.Period();
        for (int i = 0; i < this.periodCount; i++) {
            long j = Long.MIN_VALUE;
            int i2 = 0;
            while (true) {
                timelineArr = this.timelines;
                if (i2 >= timelineArr.length) {
                    break;
                }
                long durationUs = timelineArr[i2].getPeriod(i, period).getDurationUs();
                if (durationUs != com.google.android.exoplayer2.C.TIME_UNSET) {
                    long j2 = durationUs + this.periodTimeOffsetsUs[i][i2];
                    if (j == Long.MIN_VALUE || j2 < j) {
                        j = j2;
                    }
                }
                i2++;
            }
            java.lang.Object uidOfPeriod = timelineArr[0].getUidOfPeriod(i);
            this.clippedDurationsUs.put(uidOfPeriod, java.lang.Long.valueOf(j));
            java.util.Iterator<com.google.android.exoplayer2.source.ClippingMediaPeriod> it = this.clippedMediaPeriods.get(uidOfPeriod).iterator();
            while (it.hasNext()) {
                it.next().updateClipping(0L, j);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        int length = this.mediaSources.length;
        com.google.android.exoplayer2.source.MediaPeriod[] mediaPeriodArr = new com.google.android.exoplayer2.source.MediaPeriod[length];
        int indexOfPeriod = this.timelines[0].getIndexOfPeriod(mediaPeriodId.periodUid);
        for (int i = 0; i < length; i++) {
            mediaPeriodArr[i] = this.mediaSources[i].createPeriod(mediaPeriodId.copyWithPeriodUid(this.timelines[i].getUidOfPeriod(indexOfPeriod)), allocator, j - this.periodTimeOffsetsUs[indexOfPeriod][i]);
        }
        com.google.android.exoplayer2.source.MergingMediaPeriod mergingMediaPeriod = new com.google.android.exoplayer2.source.MergingMediaPeriod(this.compositeSequenceableLoaderFactory, this.periodTimeOffsetsUs[indexOfPeriod], mediaPeriodArr);
        if (!this.clipDurations) {
            return mergingMediaPeriod;
        }
        com.google.android.exoplayer2.source.ClippingMediaPeriod clippingMediaPeriod = new com.google.android.exoplayer2.source.ClippingMediaPeriod(mergingMediaPeriod, true, 0L, ((java.lang.Long) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.clippedDurationsUs.get(mediaPeriodId.periodUid))).longValue());
        this.clippedMediaPeriods.put(mediaPeriodId.periodUid, clippingMediaPeriod);
        return clippingMediaPeriod;
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.MediaItem getMediaItem() {
        com.google.android.exoplayer2.source.MediaSource[] mediaSourceArr = this.mediaSources;
        return mediaSourceArr.length > 0 ? mediaSourceArr[0].getMediaItem() : EMPTY_MEDIA_ITEM;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(java.lang.Integer num, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        if (num.intValue() == 0) {
            return mediaPeriodId;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.MediaSource
    public void maybeThrowSourceInfoRefreshError() throws com.google.android.exoplayer2.source.MergingMediaSource.IllegalMergeException {
        com.google.android.exoplayer2.source.MergingMediaSource.IllegalMergeException illegalMergeException = this.mergeError;
        if (illegalMergeException != null) {
            throw illegalMergeException;
        }
        super.maybeThrowSourceInfoRefreshError();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void a(java.lang.Integer num, com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.Timeline timeline) {
        if (this.mergeError != null) {
            return;
        }
        if (this.periodCount == -1) {
            this.periodCount = timeline.getPeriodCount();
        } else if (timeline.getPeriodCount() != this.periodCount) {
            this.mergeError = new com.google.android.exoplayer2.source.MergingMediaSource.IllegalMergeException(0);
            return;
        }
        if (this.periodTimeOffsetsUs.length == 0) {
            this.periodTimeOffsetsUs = (long[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) long.class, this.periodCount, this.timelines.length);
        }
        this.pendingTimelineSources.remove(mediaSource);
        this.timelines[num.intValue()] = timeline;
        if (this.pendingTimelineSources.isEmpty()) {
            if (this.adjustPeriodTimeOffsets) {
                computePeriodTimeOffsets();
            }
            com.google.android.exoplayer2.Timeline clippedTimeline = this.timelines[0];
            if (this.clipDurations) {
                updateClippedDuration();
                clippedTimeline = new com.google.android.exoplayer2.source.MergingMediaSource.ClippedTimeline(clippedTimeline, this.clippedDurationsUs);
            }
            refreshSourceInfo(clippedTimeline);
        }
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        for (int i = 0; i < this.mediaSources.length; i++) {
            prepareChildSource(java.lang.Integer.valueOf(i), this.mediaSources[i]);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        if (this.clipDurations) {
            com.google.android.exoplayer2.source.ClippingMediaPeriod clippingMediaPeriod = (com.google.android.exoplayer2.source.ClippingMediaPeriod) mediaPeriod;
            java.util.Iterator<java.util.Map.Entry<java.lang.Object, com.google.android.exoplayer2.source.ClippingMediaPeriod>> it = this.clippedMediaPeriods.a().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                java.util.Map.Entry<java.lang.Object, com.google.android.exoplayer2.source.ClippingMediaPeriod> next = it.next();
                if (next.getValue().equals(clippingMediaPeriod)) {
                    this.clippedMediaPeriods.remove(next.getKey(), next.getValue());
                    break;
                }
            }
            mediaPeriod = clippingMediaPeriod.mediaPeriod;
        }
        com.google.android.exoplayer2.source.MergingMediaPeriod mergingMediaPeriod = (com.google.android.exoplayer2.source.MergingMediaPeriod) mediaPeriod;
        int i = 0;
        while (true) {
            com.google.android.exoplayer2.source.MediaSource[] mediaSourceArr = this.mediaSources;
            if (i >= mediaSourceArr.length) {
                return;
            }
            mediaSourceArr[i].releasePeriod(mergingMediaPeriod.getChildPeriod(i));
            i++;
        }
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void releaseSourceInternal() {
        super.releaseSourceInternal();
        java.util.Arrays.fill(this.timelines, (java.lang.Object) null);
        this.periodCount = -1;
        this.mergeError = null;
        this.pendingTimelineSources.clear();
        java.util.Collections.addAll(this.pendingTimelineSources, this.mediaSources);
    }
}
