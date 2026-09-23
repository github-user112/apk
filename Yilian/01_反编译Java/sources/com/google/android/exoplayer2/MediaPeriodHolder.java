package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class MediaPeriodHolder {
    public static final java.lang.String TAG = "MediaPeriodHolder";
    public boolean allRenderersInCorrectState;
    public boolean hasEnabledTracks;
    public com.google.android.exoplayer2.MediaPeriodInfo info;
    public final boolean[] mayRetainStreamFlags;
    public final com.google.android.exoplayer2.source.MediaPeriod mediaPeriod;
    public final com.google.android.exoplayer2.MediaSourceList mediaSourceList;
    public com.google.android.exoplayer2.MediaPeriodHolder next;
    public boolean prepared;
    public final com.google.android.exoplayer2.RendererCapabilities[] rendererCapabilities;
    public long rendererPositionOffsetUs;
    public final com.google.android.exoplayer2.source.SampleStream[] sampleStreams;
    public com.google.android.exoplayer2.source.TrackGroupArray trackGroups;
    public final com.google.android.exoplayer2.trackselection.TrackSelector trackSelector;
    public com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult;
    public final java.lang.Object uid;

    public MediaPeriodHolder(com.google.android.exoplayer2.RendererCapabilities[] rendererCapabilitiesArr, long j, com.google.android.exoplayer2.trackselection.TrackSelector trackSelector, com.google.android.exoplayer2.upstream.Allocator allocator, com.google.android.exoplayer2.MediaSourceList mediaSourceList, com.google.android.exoplayer2.MediaPeriodInfo mediaPeriodInfo, com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult) {
        this.rendererCapabilities = rendererCapabilitiesArr;
        this.rendererPositionOffsetUs = j;
        this.trackSelector = trackSelector;
        this.mediaSourceList = mediaSourceList;
        com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId = mediaPeriodInfo.id;
        this.uid = mediaPeriodId.periodUid;
        this.info = mediaPeriodInfo;
        this.trackGroups = com.google.android.exoplayer2.source.TrackGroupArray.EMPTY;
        this.trackSelectorResult = trackSelectorResult;
        this.sampleStreams = new com.google.android.exoplayer2.source.SampleStream[rendererCapabilitiesArr.length];
        this.mayRetainStreamFlags = new boolean[rendererCapabilitiesArr.length];
        this.mediaPeriod = createMediaPeriod(mediaPeriodId, mediaSourceList, allocator, mediaPeriodInfo.startPositionUs, mediaPeriodInfo.endPositionUs);
    }

    private void associateNoSampleRenderersWithEmptySampleStream(com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr) {
        int i = 0;
        while (true) {
            com.google.android.exoplayer2.RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i >= rendererCapabilitiesArr.length) {
                return;
            }
            if (rendererCapabilitiesArr[i].getTrackType() == -2 && this.trackSelectorResult.isRendererEnabled(i)) {
                sampleStreamArr[i] = new com.google.android.exoplayer2.source.EmptySampleStream();
            }
            i++;
        }
    }

    public static com.google.android.exoplayer2.source.MediaPeriod createMediaPeriod(com.google.android.exoplayer2.source.MediaSource.MediaPeriodId mediaPeriodId, com.google.android.exoplayer2.MediaSourceList mediaSourceList, com.google.android.exoplayer2.upstream.Allocator allocator, long j, long j2) {
        com.google.android.exoplayer2.source.MediaPeriod mediaPeriodCreatePeriod = mediaSourceList.createPeriod(mediaPeriodId, allocator, j);
        return j2 != com.google.android.exoplayer2.C.TIME_UNSET ? new com.google.android.exoplayer2.source.ClippingMediaPeriod(mediaPeriodCreatePeriod, true, 0L, j2) : mediaPeriodCreatePeriod;
    }

    private void disableTrackSelectionsInResult() {
        if (!isLoadingMediaPeriod()) {
            return;
        }
        int i = 0;
        while (true) {
            com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult = this.trackSelectorResult;
            if (i >= trackSelectorResult.length) {
                return;
            }
            boolean zIsRendererEnabled = trackSelectorResult.isRendererEnabled(i);
            com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection = this.trackSelectorResult.selections[i];
            if (zIsRendererEnabled && exoTrackSelection != null) {
                exoTrackSelection.disable();
            }
            i++;
        }
    }

    private void disassociateNoSampleRenderersWithEmptySampleStream(com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr) {
        int i = 0;
        while (true) {
            com.google.android.exoplayer2.RendererCapabilities[] rendererCapabilitiesArr = this.rendererCapabilities;
            if (i >= rendererCapabilitiesArr.length) {
                return;
            }
            if (rendererCapabilitiesArr[i].getTrackType() == -2) {
                sampleStreamArr[i] = null;
            }
            i++;
        }
    }

    private void enableTrackSelectionsInResult() {
        if (!isLoadingMediaPeriod()) {
            return;
        }
        int i = 0;
        while (true) {
            com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult = this.trackSelectorResult;
            if (i >= trackSelectorResult.length) {
                return;
            }
            boolean zIsRendererEnabled = trackSelectorResult.isRendererEnabled(i);
            com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection = this.trackSelectorResult.selections[i];
            if (zIsRendererEnabled && exoTrackSelection != null) {
                exoTrackSelection.enable();
            }
            i++;
        }
    }

    private boolean isLoadingMediaPeriod() {
        return this.next == null;
    }

    public static void releaseMediaPeriod(com.google.android.exoplayer2.MediaSourceList mediaSourceList, com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        try {
            if (mediaPeriod instanceof com.google.android.exoplayer2.source.ClippingMediaPeriod) {
                mediaPeriod = ((com.google.android.exoplayer2.source.ClippingMediaPeriod) mediaPeriod).mediaPeriod;
            }
            mediaSourceList.releasePeriod(mediaPeriod);
        } catch (java.lang.RuntimeException e2) {
            com.google.android.exoplayer2.util.Log.e(TAG, "Period release failed.", e2);
        }
    }

    public long applyTrackSelection(com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult, long j, boolean z) {
        return applyTrackSelection(trackSelectorResult, j, z, new boolean[this.rendererCapabilities.length]);
    }

    public long applyTrackSelection(com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResult, long j, boolean z, boolean[] zArr) {
        int i = 0;
        while (true) {
            boolean z2 = true;
            if (i >= trackSelectorResult.length) {
                break;
            }
            boolean[] zArr2 = this.mayRetainStreamFlags;
            if (z || !trackSelectorResult.isEquivalent(this.trackSelectorResult, i)) {
                z2 = false;
            }
            zArr2[i] = z2;
            i++;
        }
        disassociateNoSampleRenderersWithEmptySampleStream(this.sampleStreams);
        disableTrackSelectionsInResult();
        this.trackSelectorResult = trackSelectorResult;
        enableTrackSelectionsInResult();
        long jSelectTracks = this.mediaPeriod.selectTracks(trackSelectorResult.selections, this.mayRetainStreamFlags, this.sampleStreams, zArr, j);
        associateNoSampleRenderersWithEmptySampleStream(this.sampleStreams);
        this.hasEnabledTracks = false;
        int i2 = 0;
        while (true) {
            com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr = this.sampleStreams;
            if (i2 >= sampleStreamArr.length) {
                return jSelectTracks;
            }
            if (sampleStreamArr[i2] != null) {
                com.google.android.exoplayer2.util.Assertions.checkState(trackSelectorResult.isRendererEnabled(i2));
                if (this.rendererCapabilities[i2].getTrackType() != -2) {
                    this.hasEnabledTracks = true;
                }
            } else {
                com.google.android.exoplayer2.util.Assertions.checkState(trackSelectorResult.selections[i2] == null);
            }
            i2++;
        }
    }

    public void continueLoading(long j) {
        com.google.android.exoplayer2.util.Assertions.checkState(isLoadingMediaPeriod());
        this.mediaPeriod.continueLoading(toPeriodTime(j));
    }

    public long getBufferedPositionUs() {
        if (!this.prepared) {
            return this.info.startPositionUs;
        }
        long bufferedPositionUs = this.hasEnabledTracks ? this.mediaPeriod.getBufferedPositionUs() : Long.MIN_VALUE;
        return bufferedPositionUs == Long.MIN_VALUE ? this.info.durationUs : bufferedPositionUs;
    }

    public com.google.android.exoplayer2.MediaPeriodHolder getNext() {
        return this.next;
    }

    public long getNextLoadPositionUs() {
        if (this.prepared) {
            return this.mediaPeriod.getNextLoadPositionUs();
        }
        return 0L;
    }

    public long getRendererOffset() {
        return this.rendererPositionOffsetUs;
    }

    public long getStartPositionRendererTime() {
        return this.info.startPositionUs + this.rendererPositionOffsetUs;
    }

    public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    public com.google.android.exoplayer2.trackselection.TrackSelectorResult getTrackSelectorResult() {
        return this.trackSelectorResult;
    }

    public void handlePrepared(float f2, com.google.android.exoplayer2.Timeline timeline) {
        this.prepared = true;
        this.trackGroups = this.mediaPeriod.getTrackGroups();
        com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResultSelectTracks = selectTracks(f2, timeline);
        com.google.android.exoplayer2.MediaPeriodInfo mediaPeriodInfo = this.info;
        long jMax = mediaPeriodInfo.startPositionUs;
        long j = mediaPeriodInfo.durationUs;
        if (j != com.google.android.exoplayer2.C.TIME_UNSET && jMax >= j) {
            jMax = java.lang.Math.max(0L, j - 1);
        }
        long jApplyTrackSelection = applyTrackSelection(trackSelectorResultSelectTracks, jMax, false);
        long j2 = this.rendererPositionOffsetUs;
        com.google.android.exoplayer2.MediaPeriodInfo mediaPeriodInfo2 = this.info;
        this.rendererPositionOffsetUs = (mediaPeriodInfo2.startPositionUs - jApplyTrackSelection) + j2;
        this.info = mediaPeriodInfo2.copyWithStartPositionUs(jApplyTrackSelection);
    }

    public boolean isFullyBuffered() {
        return this.prepared && (!this.hasEnabledTracks || this.mediaPeriod.getBufferedPositionUs() == Long.MIN_VALUE);
    }

    public void reevaluateBuffer(long j) {
        com.google.android.exoplayer2.util.Assertions.checkState(isLoadingMediaPeriod());
        if (this.prepared) {
            this.mediaPeriod.reevaluateBuffer(toPeriodTime(j));
        }
    }

    public void release() {
        disableTrackSelectionsInResult();
        releaseMediaPeriod(this.mediaSourceList, this.mediaPeriod);
    }

    public com.google.android.exoplayer2.trackselection.TrackSelectorResult selectTracks(float f2, com.google.android.exoplayer2.Timeline timeline) {
        com.google.android.exoplayer2.trackselection.TrackSelectorResult trackSelectorResultSelectTracks = this.trackSelector.selectTracks(this.rendererCapabilities, getTrackGroups(), this.info.id, timeline);
        for (com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection : trackSelectorResultSelectTracks.selections) {
            if (exoTrackSelection != null) {
                exoTrackSelection.onPlaybackSpeed(f2);
            }
        }
        return trackSelectorResultSelectTracks;
    }

    public void setNext(com.google.android.exoplayer2.MediaPeriodHolder mediaPeriodHolder) {
        if (mediaPeriodHolder == this.next) {
            return;
        }
        disableTrackSelectionsInResult();
        this.next = mediaPeriodHolder;
        enableTrackSelectionsInResult();
    }

    public void setRendererOffset(long j) {
        this.rendererPositionOffsetUs = j;
    }

    public long toPeriodTime(long j) {
        return j - getRendererOffset();
    }

    public long toRendererTime(long j) {
        return getRendererOffset() + j;
    }

    public void updateClipping() {
        if (this.mediaPeriod instanceof com.google.android.exoplayer2.source.ClippingMediaPeriod) {
            long j = this.info.endPositionUs;
            if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
                j = Long.MIN_VALUE;
            }
            ((com.google.android.exoplayer2.source.ClippingMediaPeriod) this.mediaPeriod).updateClipping(0L, j);
        }
    }
}
