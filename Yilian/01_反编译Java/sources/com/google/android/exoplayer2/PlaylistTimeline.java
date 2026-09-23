package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class PlaylistTimeline extends com.google.android.exoplayer2.AbstractConcatenatedTimeline {
    public final java.util.HashMap<java.lang.Object, java.lang.Integer> childIndexByUid;
    public final int[] firstPeriodInChildIndices;
    public final int[] firstWindowInChildIndices;
    public final int periodCount;
    public final com.google.android.exoplayer2.Timeline[] timelines;
    public final java.lang.Object[] uids;
    public final int windowCount;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PlaylistTimeline(java.util.Collection<? extends com.google.android.exoplayer2.MediaSourceInfoHolder> collection, com.google.android.exoplayer2.source.ShuffleOrder shuffleOrder) {
        super(false, shuffleOrder);
        int windowCount = 0;
        int size = collection.size();
        this.firstPeriodInChildIndices = new int[size];
        this.firstWindowInChildIndices = new int[size];
        this.timelines = new com.google.android.exoplayer2.Timeline[size];
        this.uids = new java.lang.Object[size];
        this.childIndexByUid = new java.util.HashMap<>();
        int periodCount = 0;
        int i = 0;
        for (com.google.android.exoplayer2.MediaSourceInfoHolder mediaSourceInfoHolder : collection) {
            this.timelines[i] = mediaSourceInfoHolder.getTimeline();
            this.firstWindowInChildIndices[i] = windowCount;
            this.firstPeriodInChildIndices[i] = periodCount;
            windowCount += this.timelines[i].getWindowCount();
            periodCount += this.timelines[i].getPeriodCount();
            this.uids[i] = mediaSourceInfoHolder.getUid();
            this.childIndexByUid.put(this.uids[i], java.lang.Integer.valueOf(i));
            i++;
        }
        this.windowCount = windowCount;
        this.periodCount = periodCount;
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public int getChildIndexByChildUid(java.lang.Object obj) {
        java.lang.Integer num = this.childIndexByUid.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public int getChildIndexByPeriodIndex(int i) {
        return com.google.android.exoplayer2.util.Util.binarySearchFloor(this.firstPeriodInChildIndices, i + 1, false, false);
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public int getChildIndexByWindowIndex(int i) {
        return com.google.android.exoplayer2.util.Util.binarySearchFloor(this.firstWindowInChildIndices, i + 1, false, false);
    }

    public java.util.List<com.google.android.exoplayer2.Timeline> getChildTimelines() {
        return java.util.Arrays.asList(this.timelines);
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public java.lang.Object getChildUidByChildIndex(int i) {
        return this.uids[i];
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public int getFirstPeriodIndexByChildIndex(int i) {
        return this.firstPeriodInChildIndices[i];
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public int getFirstWindowIndexByChildIndex(int i) {
        return this.firstWindowInChildIndices[i];
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getPeriodCount() {
        return this.periodCount;
    }

    @Override // com.google.android.exoplayer2.AbstractConcatenatedTimeline
    public com.google.android.exoplayer2.Timeline getTimelineByChildIndex(int i) {
        return this.timelines[i];
    }

    @Override // com.google.android.exoplayer2.Timeline
    public int getWindowCount() {
        return this.windowCount;
    }
}
