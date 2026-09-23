package com.google.android.exoplayer2.source.ads;

/* loaded from: classes.dex */
public final class SinglePeriodAdTimeline extends com.google.android.exoplayer2.source.ForwardingTimeline {
    public final com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState;

    public SinglePeriodAdTimeline(com.google.android.exoplayer2.Timeline timeline, com.google.android.exoplayer2.source.ads.AdPlaybackState adPlaybackState) {
        super(timeline);
        com.google.android.exoplayer2.util.Assertions.checkState(timeline.getPeriodCount() == 1);
        com.google.android.exoplayer2.util.Assertions.checkState(timeline.getWindowCount() == 1);
        this.adPlaybackState = adPlaybackState;
    }

    @Override // com.google.android.exoplayer2.source.ForwardingTimeline, com.google.android.exoplayer2.Timeline
    public com.google.android.exoplayer2.Timeline.Period getPeriod(int i, com.google.android.exoplayer2.Timeline.Period period, boolean z) {
        this.timeline.getPeriod(i, period, z);
        long j = period.durationUs;
        if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
            j = this.adPlaybackState.contentDurationUs;
        }
        period.set(period.id, period.uid, period.windowIndex, j, period.getPositionInWindowUs(), this.adPlaybackState, period.isPlaceholder);
        return period;
    }
}
