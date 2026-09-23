package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class MaskingMediaPeriod implements com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.MediaPeriod.Callback {
    public final com.google.android.exoplayer2.upstream.Allocator allocator;
    public com.google.android.exoplayer2.source.MediaPeriod.Callback callback;
    public final com.google.android.exoplayer2.source.MediaSource.MediaPeriodId id;
    public com.google.android.exoplayer2.source.MaskingMediaPeriod.PrepareListener listener;
    public com.google.android.exoplayer2.source.MediaPeriod mediaPeriod;
    public com.google.android.exoplayer2.source.MediaSource mediaSource;
    public boolean notifiedPrepareError;
    public long preparePositionOverrideUs = com.google.android.exoplayer2.C.TIME_UNSET;
    public final long preparePositionUs;

    public interface PrepareListener {
        void onPrepareComplete(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId);

        void onPrepareError(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, java.io.IOException iOException);
    }

    public MaskingMediaPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.upstream.Allocator allocator, long j) {
        this.id = mediaPeriodId;
        this.allocator = allocator;
        this.preparePositionUs = j;
    }

    private long getPreparePositionWithOverride(long j) {
        long j2 = this.preparePositionOverrideUs;
        return j2 != com.google.android.exoplayer2.C.TIME_UNSET ? j2 : j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        com.google.android.exoplayer2.source.MediaPeriod mediaPeriod = this.mediaPeriod;
        return mediaPeriod != null && mediaPeriod.continueLoading(j);
    }

    public void createPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId) {
        long preparePositionWithOverride = getPreparePositionWithOverride(this.preparePositionUs);
        com.google.android.exoplayer2.source.MediaPeriod mediaPeriodCreatePeriod = ((com.google.android.exoplayer2.source.MediaSource) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mediaSource)).createPeriod(mediaPeriodId, this.allocator, preparePositionWithOverride);
        this.mediaPeriod = mediaPeriodCreatePeriod;
        if (this.callback != null) {
            mediaPeriodCreatePeriod.prepare(this, preparePositionWithOverride);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        ((com.google.android.exoplayer2.source.MediaPeriod) com.google.android.exoplayer2.util.Util.castNonNull(this.mediaPeriod)).discardBuffer(j, z);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, com.google.android.exoplayer2.SeekParameters seekParameters) {
        return ((com.google.android.exoplayer2.source.MediaPeriod) com.google.android.exoplayer2.util.Util.castNonNull(this.mediaPeriod)).getAdjustedSeekPositionUs(j, seekParameters);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return ((com.google.android.exoplayer2.source.MediaPeriod) com.google.android.exoplayer2.util.Util.castNonNull(this.mediaPeriod)).getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return ((com.google.android.exoplayer2.source.MediaPeriod) com.google.android.exoplayer2.util.Util.castNonNull(this.mediaPeriod)).getNextLoadPositionUs();
    }

    public long getPreparePositionOverrideUs() {
        return this.preparePositionOverrideUs;
    }

    public long getPreparePositionUs() {
        return this.preparePositionUs;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public /* synthetic */ java.util.List<com.google.android.exoplayer2.offline.StreamKey> getStreamKeys(java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection> list) {
        return java.util.Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups() {
        return ((com.google.android.exoplayer2.source.MediaPeriod) com.google.android.exoplayer2.util.Util.castNonNull(this.mediaPeriod)).getTrackGroups();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        com.google.android.exoplayer2.source.MediaPeriod mediaPeriod = this.mediaPeriod;
        return mediaPeriod != null && mediaPeriod.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws java.io.IOException {
        try {
            if (this.mediaPeriod != null) {
                this.mediaPeriod.maybeThrowPrepareError();
            } else if (this.mediaSource != null) {
                this.mediaSource.maybeThrowSourceInfoRefreshError();
            }
        } catch (java.io.IOException e2) {
            com.google.android.exoplayer2.source.MaskingMediaPeriod.PrepareListener prepareListener = this.listener;
            if (prepareListener == null) {
                throw e2;
            }
            if (this.notifiedPrepareError) {
                return;
            }
            this.notifiedPrepareError = true;
            prepareListener.onPrepareError(this.id, e2);
        }
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        ((com.google.android.exoplayer2.source.MediaPeriod.Callback) com.google.android.exoplayer2.util.Util.castNonNull(this.callback)).onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
    public void onPrepared(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        ((com.google.android.exoplayer2.source.MediaPeriod.Callback) com.google.android.exoplayer2.util.Util.castNonNull(this.callback)).onPrepared(this);
        com.google.android.exoplayer2.source.MaskingMediaPeriod.PrepareListener prepareListener = this.listener;
        if (prepareListener != null) {
            prepareListener.onPrepareComplete(this.id);
        }
    }

    public void overridePreparePositionUs(long j) {
        this.preparePositionOverrideUs = j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(com.google.android.exoplayer2.source.MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        com.google.android.exoplayer2.source.MediaPeriod mediaPeriod = this.mediaPeriod;
        if (mediaPeriod != null) {
            mediaPeriod.prepare(this, getPreparePositionWithOverride(this.preparePositionUs));
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        return ((com.google.android.exoplayer2.source.MediaPeriod) com.google.android.exoplayer2.util.Util.castNonNull(this.mediaPeriod)).readDiscontinuity();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        ((com.google.android.exoplayer2.source.MediaPeriod) com.google.android.exoplayer2.util.Util.castNonNull(this.mediaPeriod)).reevaluateBuffer(j);
    }

    public void releasePeriod() {
        if (this.mediaPeriod != null) {
            ((com.google.android.exoplayer2.source.MediaSource) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.mediaSource)).releasePeriod(this.mediaPeriod);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        return ((com.google.android.exoplayer2.source.MediaPeriod) com.google.android.exoplayer2.util.Util.castNonNull(this.mediaPeriod)).seekToUs(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        long j2;
        long j3 = this.preparePositionOverrideUs;
        if (j3 == com.google.android.exoplayer2.C.TIME_UNSET || j != this.preparePositionUs) {
            j2 = j;
        } else {
            this.preparePositionOverrideUs = com.google.android.exoplayer2.C.TIME_UNSET;
            j2 = j3;
        }
        return ((com.google.android.exoplayer2.source.MediaPeriod) com.google.android.exoplayer2.util.Util.castNonNull(this.mediaPeriod)).selectTracks(exoTrackSelectionArr, zArr, sampleStreamArr, zArr2, j2);
    }

    public void setMediaSource(com.google.android.exoplayer2.source.MediaSource mediaSource) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.mediaSource == null);
        this.mediaSource = mediaSource;
    }

    public void setPrepareListener(com.google.android.exoplayer2.source.MaskingMediaPeriod.PrepareListener prepareListener) {
        this.listener = prepareListener;
    }
}
