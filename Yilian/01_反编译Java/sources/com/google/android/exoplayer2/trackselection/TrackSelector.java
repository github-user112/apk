package com.google.android.exoplayer2.trackselection;

/* loaded from: classes.dex */
public abstract class TrackSelector {
    public com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter;
    public com.google.android.exoplayer2.trackselection.TrackSelector.InvalidationListener listener;

    public interface InvalidationListener {
        void onTrackSelectionsInvalidated();
    }

    public final com.google.android.exoplayer2.upstream.BandwidthMeter getBandwidthMeter() {
        return (com.google.android.exoplayer2.upstream.BandwidthMeter) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.bandwidthMeter);
    }

    public com.google.android.exoplayer2.trackselection.TrackSelectionParameters getParameters() {
        return com.google.android.exoplayer2.trackselection.TrackSelectionParameters.DEFAULT_WITHOUT_CONTEXT;
    }

    public final void init(com.google.android.exoplayer2.trackselection.TrackSelector.InvalidationListener invalidationListener, com.google.android.exoplayer2.upstream.BandwidthMeter bandwidthMeter) {
        this.listener = invalidationListener;
        this.bandwidthMeter = bandwidthMeter;
    }

    public final void invalidate() {
        com.google.android.exoplayer2.trackselection.TrackSelector.InvalidationListener invalidationListener = this.listener;
        if (invalidationListener != null) {
            invalidationListener.onTrackSelectionsInvalidated();
        }
    }

    public boolean isSetParametersSupported() {
        return false;
    }

    public abstract void onSelectionActivated(java.lang.Object obj);

    public abstract com.google.android.exoplayer2.trackselection.TrackSelectorResult selectTracks(com.google.android.exoplayer2.RendererCapabilities[] rendererCapabilitiesArr, com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.Timeline timeline);

    public void setParameters(com.google.android.exoplayer2.trackselection.TrackSelectionParameters trackSelectionParameters) {
    }
}
