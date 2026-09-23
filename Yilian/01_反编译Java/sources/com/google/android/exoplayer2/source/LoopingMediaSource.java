package com.google.android.exoplayer2.source;

@java.lang.Deprecated
/* loaded from: classes.dex */
public final class LoopingMediaSource extends com.google.android.exoplayer2.source.CompositeMediaSource<java.lang.Void> {
    public final java.util.Map<com.google.android.exoplayer2.source.MediaSource.MediaPeriodId, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId> childMediaPeriodIdToMediaPeriodId;
    public final int loopCount;
    public final com.google.android.exoplayer2.source.MaskingMediaSource maskingMediaSource;
    public final java.util.Map<com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId> mediaPeriodToChildMediaPeriodId;

    public static final class InfinitelyLoopingTimeline extends com.google.android.exoplayer2.source.ForwardingTimeline {
        public InfinitelyLoopingTimeline(com.google.android.exoplayer2.Timeline timeline) {
            super(timeline);
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public int getNextWindowIndex(int i, int i2, boolean z) {
            int nextWindowIndex = this.timeline.getNextWindowIndex(i, i2, z);
            return nextWindowIndex == -1 ? getFirstWindowIndex(z) : nextWindowIndex;
        }

        @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
        public int getPreviousWindowIndex(int i, int i2, boolean z) {
            int previousWindowIndex = this.timeline.getPreviousWindowIndex(i, i2, z);
            return previousWindowIndex == -1 ? getLastWindowIndex(z) : previousWindowIndex;
        }
    }

    public static final class LoopingTimeline extends com.google.android.exoplayer2.AbstractConcatenatedTimeline {
        public final int childPeriodCount;
        public final com.google.android.exoplayer2.Timeline childTimeline;
        public final int childWindowCount;
        public final int loopCount;

        public LoopingTimeline(com.google.android.exoplayer2.Timeline timeline, int i) {
            super(false, new com.google.android.exoplayer2.source.ShuffleOrder.UnshuffledShuffleOrder(i));
            this.childTimeline = timeline;
            this.childPeriodCount = timeline.getPeriodCount();
            this.childWindowCount = timeline.getWindowCount();
            this.loopCount = i;
            int i2 = this.childPeriodCount;
            if (i2 > 0) {
                com.google.android.exoplayer2.util.Assertions.checkState(i <= Integer.MAX_VALUE / i2, "LoopingMediaSource contains too many periods");
            }
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getChildIndexByChildUid(java.lang.Object obj) {
            if (obj instanceof java.lang.Integer) {
                return ((java.lang.Integer) obj).intValue();
            }
            return -1;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getChildIndexByPeriodIndex(int i) {
            return i / this.childPeriodCount;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getChildIndexByWindowIndex(int i) {
            return i / this.childWindowCount;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public java.lang.Object getChildUidByChildIndex(int i) {
            return java.lang.Integer.valueOf(i);
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getFirstPeriodIndexByChildIndex(int i) {
            return i * this.childPeriodCount;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public int getFirstWindowIndexByChildIndex(int i) {
            return i * this.childWindowCount;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getPeriodCount() {
            return this.childPeriodCount * this.loopCount;
        }

        @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
        public com.google.android.exoplayer2.Timeline getTimelineByChildIndex(int i) {
            return this.childTimeline;
        }

        @Override // com.google.android.exoplayer2.Timeline
        public int getWindowCount() {
            return this.childWindowCount * this.loopCount;
        }
    }

    public LoopingMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource) {
        this(mediaSource, Integer.MAX_VALUE);
    }

    public LoopingMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource, int i) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i > 0);
        this.maskingMediaSource = new com.google.android.exoplayer2.source.MaskingMediaSource(mediaSource, false);
        this.loopCount = i;
        this.childMediaPeriodIdToMediaPeriodId = new java.util.HashMap();
        this.mediaPeriodToChildMediaPeriodId = new java.util.HashMap();
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.source.MediaPeriod createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        if (this.loopCount == Integer.MAX_VALUE) {
            return this.maskingMediaSource.createPeriod(mediaPeriodId, allocator, j);
        }
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodIdCopyWithPeriodUid = mediaPeriodId.copyWithPeriodUid(com.google.android.exoplayer2.AbstractConcatenatedTimeline.getChildPeriodUidFromConcatenatedUid(mediaPeriodId.periodUid));
        this.childMediaPeriodIdToMediaPeriodId.put(mediaPeriodIdCopyWithPeriodUid, mediaPeriodId);
        com.google.android.exoplayer2.source.MaskingMediaPeriod maskingMediaPeriodCreatePeriod = this.maskingMediaSource.createPeriod(mediaPeriodIdCopyWithPeriodUid, allocator, j);
        this.mediaPeriodToChildMediaPeriodId.put(maskingMediaPeriodCreatePeriod, mediaPeriodIdCopyWithPeriodUid);
        return maskingMediaPeriodCreatePeriod;
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource, com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.Timeline getInitialTimeline() {
        return this.loopCount != Integer.MAX_VALUE ? new com.google.android.exoplayer2.source.LoopingMediaSource.LoopingTimeline(this.maskingMediaSource.getTimeline(), this.loopCount) : new com.google.android.exoplayer2.source.LoopingMediaSource.InfinitelyLoopingTimeline(this.maskingMediaSource.getTimeline());
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public com.google.android.exoplayer2.MediaItem getMediaItem() {
        return this.maskingMediaSource.getMediaItem();
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    public com.google.android.exoplayer2.source.MediaSource.MediaPeriodId getMediaPeriodIdForChildMediaPeriodId(java.lang.Void r2, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        return this.loopCount != Integer.MAX_VALUE ? this.childMediaPeriodIdToMediaPeriodId.get(mediaPeriodId) : mediaPeriodId;
    }

    @Override // com.google.android.exoplayer2.source.BaseMediaSource, com.google.android.exoplayer2.source.MediaSource
    public boolean isSingleWindow() {
        return false;
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource
    /* renamed from: onChildSourceInfoRefreshed, reason: avoid collision after fix types in other method and merged with bridge method [inline-methods] */
    public void a(java.lang.Void r1, com.google.android.exoplayer2.source.MediaSource mediaSource, com.google.android.exoplayer2.Timeline timeline) {
        refreshSourceInfo(this.loopCount != Integer.MAX_VALUE ? new com.google.android.exoplayer2.source.LoopingMediaSource.LoopingTimeline(timeline, this.loopCount) : new com.google.android.exoplayer2.source.LoopingMediaSource.InfinitelyLoopingTimeline(timeline));
    }

    @Override // com.google.android.exoplayer2.source.CompositeMediaSource, com.google.android.exoplayer2.source.BaseMediaSource
    public void prepareSourceInternal(com.google.android.exoplayer2.upstream.TransferListener transferListener) {
        super.prepareSourceInternal(transferListener);
        prepareChildSource(null, this.maskingMediaSource);
    }

    @Override // com.google.android.exoplayer2.source.MediaSource
    public void releasePeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        this.maskingMediaSource.releasePeriod(mediaPeriod);
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodIdRemove = this.mediaPeriodToChildMediaPeriodId.remove(mediaPeriod);
        if (mediaPeriodIdRemove != null) {
            this.childMediaPeriodIdToMediaPeriodId.remove(mediaPeriodIdRemove);
        }
    }
}
