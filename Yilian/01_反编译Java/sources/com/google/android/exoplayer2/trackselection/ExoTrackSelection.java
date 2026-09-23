package com.google.android.exoplayer2.trackselection;

/* loaded from: classes.dex */
public interface ExoTrackSelection extends com.google.android.exoplayer2.trackselection.TrackSelection {

    public static final class Definition {
        public final com.google.android.exoplayer2.source.TrackGroup group;
        public final int[] tracks;
        public final int type;

        public Definition(com.google.android.exoplayer2.source.TrackGroup trackGroup, int... iArr) {
            this(trackGroup, iArr, 0);
        }

        public Definition(com.google.android.exoplayer2.source.TrackGroup trackGroup, int[] iArr, int i) {
            this.group = trackGroup;
            this.tracks = iArr;
            this.type = i;
        }
    }

    public interface Factory {
        com.google.android.exoplayer2.trackselection.ExoTrackSelection[] createTrackSelections(com.google.android.exoplayer2.trackselection.ExoTrackSelection.Definition[] definitionArr, com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.Timeline timeline);
    }

    boolean blacklist(int i, long j);

    void disable();

    void enable();

    int evaluateQueueSize(long j, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list);

    com.google.android.exoplayer2.Format getSelectedFormat();

    int getSelectedIndex();

    int getSelectedIndexInTrackGroup();

    java.lang.Object getSelectionData();

    int getSelectionReason();

    boolean isBlacklisted(int i, long j);

    void onDiscontinuity();

    void onPlayWhenReadyChanged(boolean z);

    void onPlaybackSpeed(float f2);

    void onRebuffer();

    boolean shouldCancelChunkLoad(long j, com.google.android.exoplayer2.source.chunk.Chunk chunk, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list);

    void updateSelectedTrack(long j, long j2, long j3, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list, com.google.android.exoplayer2.source.chunk.MediaChunkIterator[] mediaChunkIteratorArr);
}
