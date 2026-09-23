package com.google.android.exoplayer2.source.dash;

/* loaded from: classes.dex */
public interface DashChunkSource extends com.google.android.exoplayer2.source.chunk.ChunkSource {

    public interface Factory {
        com.google.android.exoplayer2.source.dash.DashChunkSource createDashChunkSource(com.google.android.exoplayer2.upstream.LoaderErrorThrower loaderErrorThrower, com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest, com.google.android.exoplayer2.source.dash.BaseUrlExclusionList baseUrlExclusionList, int i, int[] iArr, com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection, int i2, long j, boolean z, java.util.List<com.google.android.exoplayer2.Format> list, com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler, com.google.android.exoplayer2.upstream.TransferListener transferListener);
    }

    void updateManifest(com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest, int i);

    void updateTrackSelection(com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection);
}
