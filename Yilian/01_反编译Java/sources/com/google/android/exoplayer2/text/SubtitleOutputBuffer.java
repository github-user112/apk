package com.google.android.exoplayer2.text;

/* loaded from: classes.dex */
public abstract class SubtitleOutputBuffer extends com.google.android.exoplayer2.decoder.DecoderOutputBuffer implements com.google.android.exoplayer2.text.Subtitle {
    public long subsampleOffsetUs;
    public com.google.android.exoplayer2.text.Subtitle subtitle;

    @Override // com.google.android.exoplayer2.decoder.Buffer
    public void clear() {
        super.clear();
        this.subtitle = null;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public java.util.List<com.google.android.exoplayer2.text.Cue> getCues(long j) {
        return ((com.google.android.exoplayer2.text.Subtitle) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.subtitle)).getCues(j - this.subsampleOffsetUs);
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        return ((com.google.android.exoplayer2.text.Subtitle) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.subtitle)).getEventTime(i) + this.subsampleOffsetUs;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return ((com.google.android.exoplayer2.text.Subtitle) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.subtitle)).getEventTimeCount();
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        return ((com.google.android.exoplayer2.text.Subtitle) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.subtitle)).getNextEventTimeIndex(j - this.subsampleOffsetUs);
    }

    public void setContent(long j, com.google.android.exoplayer2.text.Subtitle subtitle, long j2) {
        this.timeUs = j;
        this.subtitle = subtitle;
        if (j2 != Long.MAX_VALUE) {
            j = j2;
        }
        this.subsampleOffsetUs = j;
    }
}
