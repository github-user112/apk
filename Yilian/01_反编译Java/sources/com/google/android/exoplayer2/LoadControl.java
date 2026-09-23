package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public interface LoadControl {
    com.google.android.exoplayer2.upstream.Allocator getAllocator();

    long getBackBufferDurationUs();

    void onPrepared();

    void onReleased();

    void onStopped();

    void onTracksSelected(com.google.android.exoplayer2.Renderer[] rendererArr, com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr);

    boolean retainBackBufferFromKeyframe();

    boolean shouldContinueLoading(long j, long j2, float f2);

    boolean shouldStartPlayback(long j, float f2, boolean z, long j2);
}
