package com.google.android.exoplayer2.text.subrip;

/* loaded from: classes.dex */
public final class SubripSubtitle implements com.google.android.exoplayer2.text.Subtitle {
    public final long[] cueTimesUs;
    public final com.google.android.exoplayer2.text.Cue[] cues;

    public SubripSubtitle(com.google.android.exoplayer2.text.Cue[] cueArr, long[] jArr) {
        this.cues = cueArr;
        this.cueTimesUs = jArr;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public java.util.List<com.google.android.exoplayer2.text.Cue> getCues(long j) {
        int iBinarySearchFloor = com.google.android.exoplayer2.util.Util.binarySearchFloor(this.cueTimesUs, j, true, false);
        if (iBinarySearchFloor != -1) {
            com.google.android.exoplayer2.text.Cue[] cueArr = this.cues;
            if (cueArr[iBinarySearchFloor] != com.google.android.exoplayer2.text.Cue.EMPTY) {
                return java.util.Collections.singletonList(cueArr[iBinarySearchFloor]);
            }
        }
        return java.util.Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i >= 0);
        com.google.android.exoplayer2.util.Assertions.checkArgument(i < this.cueTimesUs.length);
        return this.cueTimesUs[i];
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.cueTimesUs.length;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int iBinarySearchCeil = com.google.android.exoplayer2.util.Util.binarySearchCeil(this.cueTimesUs, j, false, false);
        if (iBinarySearchCeil < this.cueTimesUs.length) {
            return iBinarySearchCeil;
        }
        return -1;
    }
}
