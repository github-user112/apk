package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class MergingMediaPeriod implements com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.MediaPeriod.Callback {
    public com.google.android.exoplayer2.source.MediaPeriod.Callback callback;
    public com.google.android.exoplayer2.source.SequenceableLoader compositeSequenceableLoader;
    public final com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    public final com.google.android.exoplayer2.source.MediaPeriod[] periods;
    public com.google.android.exoplayer2.source.TrackGroupArray trackGroups;
    public final java.util.ArrayList<com.google.android.exoplayer2.source.MediaPeriod> childrenPendingPreparation = new java.util.ArrayList<>();
    public final java.util.IdentityHashMap<com.google.android.exoplayer2.source.SampleStream, java.lang.Integer> streamPeriodIndices = new java.util.IdentityHashMap<>();
    public com.google.android.exoplayer2.source.MediaPeriod[] enabledPeriods = new com.google.android.exoplayer2.source.MediaPeriod[0];

    public static final class TimeOffsetMediaPeriod implements com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.MediaPeriod.Callback {
        public com.google.android.exoplayer2.source.MediaPeriod.Callback callback;
        public final com.google.android.exoplayer2.source.MediaPeriod mediaPeriod;
        public final long timeOffsetUs;

        public TimeOffsetMediaPeriod(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod, long j) {
            this.mediaPeriod = mediaPeriod;
            this.timeOffsetUs = j;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public boolean continueLoading(long j) {
            return this.mediaPeriod.continueLoading(j - this.timeOffsetUs);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void discardBuffer(long j, boolean z) {
            this.mediaPeriod.discardBuffer(j - this.timeOffsetUs, z);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long getAdjustedSeekPositionUs(long j, com.google.android.exoplayer2.SeekParameters seekParameters) {
            return this.mediaPeriod.getAdjustedSeekPositionUs(j - this.timeOffsetUs, seekParameters) + this.timeOffsetUs;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public long getBufferedPositionUs() {
            long bufferedPositionUs = this.mediaPeriod.getBufferedPositionUs();
            if (bufferedPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.timeOffsetUs + bufferedPositionUs;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public long getNextLoadPositionUs() {
            long nextLoadPositionUs = this.mediaPeriod.getNextLoadPositionUs();
            if (nextLoadPositionUs == Long.MIN_VALUE) {
                return Long.MIN_VALUE;
            }
            return this.timeOffsetUs + nextLoadPositionUs;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public java.util.List<com.google.android.exoplayer2.offline.StreamKey> getStreamKeys(java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection> list) {
            return this.mediaPeriod.getStreamKeys(list);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups() {
            return this.mediaPeriod.getTrackGroups();
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public boolean isLoading() {
            return this.mediaPeriod.isLoading();
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void maybeThrowPrepareError() {
            this.mediaPeriod.maybeThrowPrepareError();
        }

        @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
        public void onContinueLoadingRequested(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
            ((com.google.android.exoplayer2.source.MediaPeriod.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
        public void onPrepared(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
            ((com.google.android.exoplayer2.source.MediaPeriod.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callback)).onPrepared(this);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public void prepare(com.google.android.exoplayer2.source.MediaPeriod.Callback callback, long j) {
            this.callback = callback;
            this.mediaPeriod.prepare(this, j - this.timeOffsetUs);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long readDiscontinuity() {
            long discontinuity = this.mediaPeriod.readDiscontinuity();
            return discontinuity == com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.C.TIME_UNSET : this.timeOffsetUs + discontinuity;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
        public void reevaluateBuffer(long j) {
            this.mediaPeriod.reevaluateBuffer(j - this.timeOffsetUs);
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long seekToUs(long j) {
            return this.mediaPeriod.seekToUs(j - this.timeOffsetUs) + this.timeOffsetUs;
        }

        @Override // com.google.android.exoplayer2.source.MediaPeriod
        public long selectTracks(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
            com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr2 = new com.google.android.exoplayer2.source.SampleStream[sampleStreamArr.length];
            int i = 0;
            while (true) {
                com.google.android.exoplayer2.source.SampleStream childStream = null;
                if (i >= sampleStreamArr.length) {
                    break;
                }
                com.google.android.exoplayer2.source.MergingMediaPeriod.TimeOffsetSampleStream timeOffsetSampleStream = (com.google.android.exoplayer2.source.MergingMediaPeriod.TimeOffsetSampleStream) sampleStreamArr[i];
                if (timeOffsetSampleStream != null) {
                    childStream = timeOffsetSampleStream.getChildStream();
                }
                sampleStreamArr2[i] = childStream;
                i++;
            }
            long jSelectTracks = this.mediaPeriod.selectTracks(exoTrackSelectionArr, zArr, sampleStreamArr2, zArr2, j - this.timeOffsetUs);
            for (int i2 = 0; i2 < sampleStreamArr.length; i2++) {
                com.google.android.exoplayer2.source.SampleStream sampleStream = sampleStreamArr2[i2];
                if (sampleStream == null) {
                    sampleStreamArr[i2] = null;
                } else if (sampleStreamArr[i2] == null || ((com.google.android.exoplayer2.source.MergingMediaPeriod.TimeOffsetSampleStream) sampleStreamArr[i2]).getChildStream() != sampleStream) {
                    sampleStreamArr[i2] = new com.google.android.exoplayer2.source.MergingMediaPeriod.TimeOffsetSampleStream(sampleStream, this.timeOffsetUs);
                }
            }
            return jSelectTracks + this.timeOffsetUs;
        }
    }

    public static final class TimeOffsetSampleStream implements com.google.android.exoplayer2.source.SampleStream {
        public final com.google.android.exoplayer2.source.SampleStream sampleStream;
        public final long timeOffsetUs;

        public TimeOffsetSampleStream(com.google.android.exoplayer2.source.SampleStream sampleStream, long j) {
            this.sampleStream = sampleStream;
            this.timeOffsetUs = j;
        }

        public com.google.android.exoplayer2.source.SampleStream getChildStream() {
            return this.sampleStream;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return this.sampleStream.isReady();
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() {
            this.sampleStream.maybeThrowError();
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(com.google.android.exoplayer2.FormatHolder formatHolder, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, int i) {
            int data = this.sampleStream.readData(formatHolder, decoderInputBuffer, i);
            if (data == -4) {
                decoderInputBuffer.timeUs = java.lang.Math.max(0L, decoderInputBuffer.timeUs + this.timeOffsetUs);
            }
            return data;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j) {
            return this.sampleStream.skipData(j - this.timeOffsetUs);
        }
    }

    public MergingMediaPeriod(com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, long[] jArr, com.google.android.exoplayer2.source.MediaPeriod... mediaPeriodArr) {
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.periods = mediaPeriodArr;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(new com.google.android.exoplayer2.source.SequenceableLoader[0]);
        for (int i = 0; i < mediaPeriodArr.length; i++) {
            if (jArr[i] != 0) {
                this.periods[i] = new com.google.android.exoplayer2.source.MergingMediaPeriod.TimeOffsetMediaPeriod(mediaPeriodArr[i], jArr[i]);
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        if (this.childrenPendingPreparation.isEmpty()) {
            return this.compositeSequenceableLoader.continueLoading(j);
        }
        int size = this.childrenPendingPreparation.size();
        for (int i = 0; i < size; i++) {
            this.childrenPendingPreparation.get(i).continueLoading(j);
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        for (com.google.android.exoplayer2.source.MediaPeriod mediaPeriod : this.enabledPeriods) {
            mediaPeriod.discardBuffer(j, z);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, com.google.android.exoplayer2.SeekParameters seekParameters) {
        com.google.android.exoplayer2.source.MediaPeriod[] mediaPeriodArr = this.enabledPeriods;
        return (mediaPeriodArr.length > 0 ? mediaPeriodArr[0] : this.periods[0]).getAdjustedSeekPositionUs(j, seekParameters);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    public com.google.android.exoplayer2.source.MediaPeriod getChildPeriod(int i) {
        com.google.android.exoplayer2.source.MediaPeriod[] mediaPeriodArr = this.periods;
        return mediaPeriodArr[i] instanceof com.google.android.exoplayer2.source.MergingMediaPeriod.TimeOffsetMediaPeriod ? ((com.google.android.exoplayer2.source.MergingMediaPeriod.TimeOffsetMediaPeriod) mediaPeriodArr[i]).mediaPeriod : mediaPeriodArr[i];
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public /* synthetic */ java.util.List<com.google.android.exoplayer2.offline.StreamKey> getStreamKeys(java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection> list) {
        return java.util.Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups() {
        return (com.google.android.exoplayer2.source.TrackGroupArray) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.trackGroups);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() {
        for (com.google.android.exoplayer2.source.MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.maybeThrowPrepareError();
        }
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        ((com.google.android.exoplayer2.source.MediaPeriod.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod.Callback
    public void onPrepared(com.google.android.exoplayer2.source.MediaPeriod mediaPeriod) {
        this.childrenPendingPreparation.remove(mediaPeriod);
        if (this.childrenPendingPreparation.isEmpty()) {
            int i = 0;
            for (com.google.android.exoplayer2.source.MediaPeriod mediaPeriod2 : this.periods) {
                i += mediaPeriod2.getTrackGroups().length;
            }
            com.google.android.exoplayer2.source.TrackGroup[] trackGroupArr = new com.google.android.exoplayer2.source.TrackGroup[i];
            int i2 = 0;
            for (com.google.android.exoplayer2.source.MediaPeriod mediaPeriod3 : this.periods) {
                com.google.android.exoplayer2.source.TrackGroupArray trackGroups = mediaPeriod3.getTrackGroups();
                int i3 = trackGroups.length;
                int i4 = 0;
                while (i4 < i3) {
                    trackGroupArr[i2] = trackGroups.get(i4);
                    i4++;
                    i2++;
                }
            }
            this.trackGroups = new com.google.android.exoplayer2.source.TrackGroupArray(trackGroupArr);
            ((com.google.android.exoplayer2.source.MediaPeriod.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callback)).onPrepared(this);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(com.google.android.exoplayer2.source.MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        java.util.Collections.addAll(this.childrenPendingPreparation, this.periods);
        for (com.google.android.exoplayer2.source.MediaPeriod mediaPeriod : this.periods) {
            mediaPeriod.prepare(this, j);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        long j = -9223372036854775807L;
        for (com.google.android.exoplayer2.source.MediaPeriod mediaPeriod : this.enabledPeriods) {
            long discontinuity = mediaPeriod.readDiscontinuity();
            if (discontinuity == com.google.android.exoplayer2.C.TIME_UNSET) {
                if (j != com.google.android.exoplayer2.C.TIME_UNSET && mediaPeriod.seekToUs(j) != j) {
                    throw new java.lang.IllegalStateException("Unexpected child seekToUs result.");
                }
            } else if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
                for (com.google.android.exoplayer2.source.MediaPeriod mediaPeriod2 : this.enabledPeriods) {
                    if (mediaPeriod2 == mediaPeriod) {
                        break;
                    }
                    if (mediaPeriod2.seekToUs(discontinuity) != discontinuity) {
                        throw new java.lang.IllegalStateException("Unexpected child seekToUs result.");
                    }
                }
                j = discontinuity;
            } else if (discontinuity != j) {
                throw new java.lang.IllegalStateException("Conflicting discontinuities.");
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        this.compositeSequenceableLoader.reevaluateBuffer(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        long jSeekToUs = this.enabledPeriods[0].seekToUs(j);
        int i = 1;
        while (true) {
            com.google.android.exoplayer2.source.MediaPeriod[] mediaPeriodArr = this.enabledPeriods;
            if (i >= mediaPeriodArr.length) {
                return jSeekToUs;
            }
            if (mediaPeriodArr[i].seekToUs(jSeekToUs) != jSeekToUs) {
                throw new java.lang.IllegalStateException("Unexpected child seekToUs result.");
            }
            i++;
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        int[] iArr = new int[exoTrackSelectionArr.length];
        int[] iArr2 = new int[exoTrackSelectionArr.length];
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            java.lang.Integer num = sampleStreamArr[i] == null ? null : this.streamPeriodIndices.get(sampleStreamArr[i]);
            iArr[i] = num == null ? -1 : num.intValue();
            iArr2[i] = -1;
            if (exoTrackSelectionArr[i] != null) {
                com.google.android.exoplayer2.source.TrackGroup trackGroup = exoTrackSelectionArr[i].getTrackGroup();
                int i2 = 0;
                while (true) {
                    com.google.android.exoplayer2.source.MediaPeriod[] mediaPeriodArr = this.periods;
                    if (i2 >= mediaPeriodArr.length) {
                        break;
                    }
                    if (mediaPeriodArr[i2].getTrackGroups().indexOf(trackGroup) != -1) {
                        iArr2[i] = i2;
                        break;
                    }
                    i2++;
                }
            }
        }
        this.streamPeriodIndices.clear();
        int length = exoTrackSelectionArr.length;
        com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr2 = new com.google.android.exoplayer2.source.SampleStream[length];
        com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr3 = new com.google.android.exoplayer2.source.SampleStream[exoTrackSelectionArr.length];
        com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr2 = new com.google.android.exoplayer2.trackselection.ExoTrackSelection[exoTrackSelectionArr.length];
        java.util.ArrayList arrayList = new java.util.ArrayList(this.periods.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < this.periods.length) {
            for (int i4 = 0; i4 < exoTrackSelectionArr.length; i4++) {
                sampleStreamArr3[i4] = iArr[i4] == i3 ? sampleStreamArr[i4] : null;
                exoTrackSelectionArr2[i4] = iArr2[i4] == i3 ? exoTrackSelectionArr[i4] : null;
            }
            int i5 = i3;
            java.util.ArrayList arrayList2 = arrayList;
            com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr3 = exoTrackSelectionArr2;
            long jSelectTracks = this.periods[i3].selectTracks(exoTrackSelectionArr2, zArr, sampleStreamArr3, zArr2, j2);
            if (i5 == 0) {
                j2 = jSelectTracks;
            } else if (jSelectTracks != j2) {
                throw new java.lang.IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i6 = 0; i6 < exoTrackSelectionArr.length; i6++) {
                if (iArr2[i6] == i5) {
                    com.google.android.exoplayer2.source.SampleStream sampleStream = (com.google.android.exoplayer2.source.SampleStream) com.google.android.exoplayer2.util.Assertions.checkNotNull(sampleStreamArr3[i6]);
                    sampleStreamArr2[i6] = sampleStreamArr3[i6];
                    this.streamPeriodIndices.put(sampleStream, java.lang.Integer.valueOf(i5));
                    z = true;
                } else if (iArr[i6] == i5) {
                    com.google.android.exoplayer2.util.Assertions.checkState(sampleStreamArr3[i6] == null);
                }
            }
            if (z) {
                arrayList2.add(this.periods[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            exoTrackSelectionArr2 = exoTrackSelectionArr3;
        }
        java.lang.System.arraycopy(sampleStreamArr2, 0, sampleStreamArr, 0, length);
        com.google.android.exoplayer2.source.MediaPeriod[] mediaPeriodArr2 = (com.google.android.exoplayer2.source.MediaPeriod[]) arrayList.toArray(new com.google.android.exoplayer2.source.MediaPeriod[0]);
        this.enabledPeriods = mediaPeriodArr2;
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(mediaPeriodArr2);
        return j2;
    }
}
