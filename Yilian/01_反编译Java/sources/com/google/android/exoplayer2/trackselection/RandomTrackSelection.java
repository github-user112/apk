package com.google.android.exoplayer2.trackselection;

/* loaded from: classes.dex */
public final class RandomTrackSelection extends com.google.android.exoplayer2.trackselection.BaseTrackSelection {
    public final java.util.Random random;
    public int selectedIndex;

    public static final class Factory implements com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory {
        public final java.util.Random random;

        public Factory() {
            this.random = new java.util.Random();
        }

        public Factory(int i) {
            this.random = new java.util.Random(i);
        }

        public /* synthetic */ com.google.android.exoplayer2.trackselection.ExoTrackSelection a(com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition definition) {
            return new com.google.android.exoplayer2.trackselection.RandomTrackSelection(definition.group, definition.tracks, definition.type, this.random);
        }

        @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection.Factory
        public com.google.android.exoplayer2.trackselection.ExoTrackSelection[] createTrackSelections(com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition[] definitionArr, com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.Timeline timeline) {
            return com.google.android.exoplayer2.trackselection.TrackSelectionUtil.createTrackSelectionsForDefinitions(definitionArr, new com.google.android.exoplayer2.trackselection.TrackSelectionUtil.AdaptiveTrackSelectionFactory() { // from class: e.c.a.a.p2.f
                @Override // com.google.android.exoplayer2.trackselection.TrackSelectionUtil.AdaptiveTrackSelectionFactory
                public final com.google.android.exoplayer2.trackselection.ExoTrackSelection createAdaptiveTrackSelection(com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition definition) {
                    return this.a.a(definition);
                }
            });
        }
    }

    public RandomTrackSelection(com.google.android.exoplayer2.source.TrackGroup trackGroup, int[] iArr, int i, java.util.Random random) {
        super(trackGroup, iArr, i);
        this.random = random;
        this.selectedIndex = random.nextInt(this.length);
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public int getSelectedIndex() {
        return this.selectedIndex;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public java.lang.Object getSelectionData() {
        return null;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public int getSelectionReason() {
        return 3;
    }

    @Override // com.google.android.exoplayer2.trackselection.ExoTrackSelection
    public void updateSelectedTrack(long j, long j2, long j3, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list, com.google.android.exoplayer2.source.chunk.MediaChunkIterator[] mediaChunkIteratorArr) {
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        int i = 0;
        for (int i2 = 0; i2 < this.length; i2++) {
            if (!isBlacklisted(i2, jElapsedRealtime)) {
                i++;
            }
        }
        this.selectedIndex = this.random.nextInt(i);
        if (i != this.length) {
            int i3 = 0;
            for (int i4 = 0; i4 < this.length; i4++) {
                if (!isBlacklisted(i4, jElapsedRealtime)) {
                    int i5 = i3 + 1;
                    if (this.selectedIndex == i3) {
                        this.selectedIndex = i4;
                        return;
                    }
                    i3 = i5;
                }
            }
        }
    }
}
