package com.google.android.exoplayer2.text.ttml;

/* loaded from: classes.dex */
public final class TtmlSubtitle implements com.google.android.exoplayer2.text.Subtitle {
    public final long[] eventTimesUs;
    public final java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlStyle> globalStyles;
    public final java.util.Map<java.lang.String, java.lang.String> imageMap;
    public final java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlRegion> regionMap;
    public final com.google.android.exoplayer2.text.ttml.TtmlNode root;

    public TtmlSubtitle(com.google.android.exoplayer2.text.ttml.TtmlNode ttmlNode, java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlStyle> map, java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlRegion> map2, java.util.Map<java.lang.String, java.lang.String> map3) {
        this.root = ttmlNode;
        this.regionMap = map2;
        this.imageMap = map3;
        this.globalStyles = map != null ? java.util.Collections.unmodifiableMap(map) : java.util.Collections.emptyMap();
        this.eventTimesUs = ttmlNode.getEventTimesUs();
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public java.util.List<com.google.android.exoplayer2.text.Cue> getCues(long j) {
        return this.root.getCues(j, this.globalStyles, this.regionMap, this.imageMap);
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public long getEventTime(int i) {
        return this.eventTimesUs[i];
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getEventTimeCount() {
        return this.eventTimesUs.length;
    }

    public java.util.Map<java.lang.String, com.google.android.exoplayer2.text.ttml.TtmlStyle> getGlobalStyles() {
        return this.globalStyles;
    }

    @Override // com.google.android.exoplayer2.text.Subtitle
    public int getNextEventTimeIndex(long j) {
        int iBinarySearchCeil = com.google.android.exoplayer2.util.Util.binarySearchCeil(this.eventTimesUs, j, false, false);
        if (iBinarySearchCeil < this.eventTimesUs.length) {
            return iBinarySearchCeil;
        }
        return -1;
    }

    public com.google.android.exoplayer2.text.ttml.TtmlNode getRoot() {
        return this.root;
    }
}
