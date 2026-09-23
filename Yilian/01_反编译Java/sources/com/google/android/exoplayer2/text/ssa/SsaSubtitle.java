package com.google.android.exoplayer2.text.ssa;

/* loaded from: classes.dex */
public final class SsaSubtitle implements com.google.android.exoplayer2.text.Subtitle {
    public final java.util.List<java.lang.Long> cueTimesUs;
    public final java.util.List<java.util.List<com.google.android.exoplayer2.text.Cue>> cues;

    public SsaSubtitle(java.util.List<java.util.List<com.google.android.exoplayer2.text.Cue>> list, java.util.List<java.lang.Long> list2) {
        this.cues = list;
        this.cueTimesUs = list2;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public java.util.List<com.google.android.exoplayer2.text.Cue> getCues(long j) {
        int iBinarySearchFloor = com.google.android.exoplayer2.util.Util.binarySearchFloor((java.util.List<? extends java.lang.Comparable<? super java.lang.Long>>) this.cueTimesUs, java.lang.Long.valueOf(j), true, false);
        return iBinarySearchFloor == -1 ? java.util.Collections.emptyList() : this.cues.get(iBinarySearchFloor);
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i >= 0);
        com.google.android.exoplayer2.util.Assertions.checkArgument(i < this.cueTimesUs.size());
        return this.cueTimesUs.get(i).longValue();
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.cueTimesUs.size();
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int iBinarySearchCeil = com.google.android.exoplayer2.util.Util.binarySearchCeil((java.util.List<? extends java.lang.Comparable<? super java.lang.Long>>) this.cueTimesUs, java.lang.Long.valueOf(j), false, false);
        if (iBinarySearchCeil < this.cueTimesUs.size()) {
            return iBinarySearchCeil;
        }
        return -1;
    }
}
