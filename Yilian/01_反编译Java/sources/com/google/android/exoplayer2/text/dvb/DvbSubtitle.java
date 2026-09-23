package com.google.android.exoplayer2.text.dvb;

/* loaded from: classes.dex */
public final class DvbSubtitle implements com.google.android.exoplayer2.text.Subtitle {
    public final java.util.List<com.google.android.exoplayer2.text.Cue> cues;

    public DvbSubtitle(java.util.List<com.google.android.exoplayer2.text.Cue> list) {
        this.cues = list;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public java.util.List<com.google.android.exoplayer2.text.Cue> getCues(long j) {
        return this.cues;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        return 0L;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return 1;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        return -1;
    }
}
