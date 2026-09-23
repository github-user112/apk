package com.google.android.exoplayer2.source.smoothstreaming;

/* loaded from: classes.dex */
public final class SsMediaPeriod implements com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader.Callback<com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource>> {
    public final com.google.android.exoplayer2.upstream.Allocator allocator;
    public com.google.android.exoplayer2.source.MediaPeriod.Callback callback;
    public final com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource.Factory chunkSourceFactory;
    public com.google.android.exoplayer2.source.SequenceableLoader compositeSequenceableLoader;
    public final com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory;
    public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    public final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager;
    public final com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest manifest;
    public final com.google.android.exoplayer2.upstream.LoaderErrorThrower manifestLoaderErrorThrower;
    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    public com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource>[] sampleStreams;
    public final com.google.android.exoplayer2.source.TrackGroupArray trackGroups;
    public final com.google.android.exoplayer2.upstream.TransferListener transferListener;

    public SsMediaPeriod(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifest, com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource.Factory factory, com.google.android.exoplayer2.upstream.TransferListener transferListener, com.google.android.exoplayer2.source.CompositeSequenceableLoaderFactory compositeSequenceableLoaderFactory, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher2, com.google.android.exoplayer2.upstream.LoaderErrorThrower loaderErrorThrower, com.google.android.exoplayer2.upstream.Allocator allocator) {
        this.manifest = ssManifest;
        this.chunkSourceFactory = factory;
        this.transferListener = transferListener;
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.mediaSourceEventDispatcher = eventDispatcher2;
        this.allocator = allocator;
        this.compositeSequenceableLoaderFactory = compositeSequenceableLoaderFactory;
        this.trackGroups = buildTrackGroups(ssManifest, drmSessionManager);
        com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource>[] chunkSampleStreamArrNewSampleStreamArray = newSampleStreamArray(0);
        this.sampleStreams = chunkSampleStreamArrNewSampleStreamArray;
        this.compositeSequenceableLoader = compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(chunkSampleStreamArrNewSampleStreamArray);
    }

    private com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource> buildSampleStream(com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection, long j) {
        int iIndexOf = this.trackGroups.indexOf(exoTrackSelection.getTrackGroup());
        return new com.google.android.exoplayer2.source.chunk.ChunkSampleStream<>(this.manifest.streamElements[iIndexOf].type, null, null, this.chunkSourceFactory.createChunkSource(this.manifestLoaderErrorThrower, this.manifest, iIndexOf, exoTrackSelection, this.transferListener), this, this.allocator, j, this.drmSessionManager, this.drmEventDispatcher, this.loadErrorHandlingPolicy, this.mediaSourceEventDispatcher);
    }

    public static com.google.android.exoplayer2.source.TrackGroupArray buildTrackGroups(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifest, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager) {
        com.google.android.exoplayer2.source.TrackGroup[] trackGroupArr = new com.google.android.exoplayer2.source.TrackGroup[ssManifest.streamElements.length];
        int i = 0;
        while (true) {
            com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement[] streamElementArr = ssManifest.streamElements;
            if (i >= streamElementArr.length) {
                return new com.google.android.exoplayer2.source.TrackGroupArray(trackGroupArr);
            }
            com.google.android.exoplayer2.Format[] formatArr = streamElementArr[i].formats;
            com.google.android.exoplayer2.Format[] formatArr2 = new com.google.android.exoplayer2.Format[formatArr.length];
            for (int i2 = 0; i2 < formatArr.length; i2++) {
                com.google.android.exoplayer2.Format format = formatArr[i2];
                formatArr2[i2] = format.copyWithCryptoType(drmSessionManager.getCryptoType(format));
            }
            trackGroupArr[i] = new com.google.android.exoplayer2.source.TrackGroup(formatArr2);
            i++;
        }
    }

    public static com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource>[] newSampleStreamArray(int i) {
        return new com.google.android.exoplayer2.source.chunk.ChunkSampleStream[i];
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        return this.compositeSequenceableLoader.continueLoading(j);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        for (com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.discardBuffer(j, z);
        }
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, com.google.android.exoplayer2.SeekParameters seekParameters) {
        for (com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource> chunkSampleStream : this.sampleStreams) {
            if (chunkSampleStream.primaryTrackType == 2) {
                return chunkSampleStream.getAdjustedSeekPositionUs(j, seekParameters);
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.compositeSequenceableLoader.getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return this.compositeSequenceableLoader.getNextLoadPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public java.util.List<com.google.android.exoplayer2.offline.StreamKey> getStreamKeys(java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection> list) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i = 0; i < list.size(); i++) {
            com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection = list.get(i);
            int iIndexOf = this.trackGroups.indexOf(exoTrackSelection.getTrackGroup());
            for (int i2 = 0; i2 < exoTrackSelection.length(); i2++) {
                arrayList.add(new com.google.android.exoplayer2.offline.StreamKey(iIndexOf, exoTrackSelection.getIndexInTrackGroup(i2)));
            }
        }
        return arrayList;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups() {
        return this.trackGroups;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.compositeSequenceableLoader.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() {
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader.Callback
    public void onContinueLoadingRequested(com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource> chunkSampleStream) {
        this.callback.onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(com.google.android.exoplayer2.source.MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        callback.onPrepared(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        return com.google.android.exoplayer2.C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        this.compositeSequenceableLoader.reevaluateBuffer(j);
    }

    public void release() {
        for (com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.release();
        }
        this.callback = null;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        for (com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource> chunkSampleStream : this.sampleStreams) {
            chunkSampleStream.seekToUs(j);
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            if (sampleStreamArr[i] != null) {
                com.google.android.exoplayer2.source.chunk.ChunkSampleStream chunkSampleStream = (com.google.android.exoplayer2.source.chunk.ChunkSampleStream) sampleStreamArr[i];
                if (exoTrackSelectionArr[i] == null || !zArr[i]) {
                    chunkSampleStream.release();
                    sampleStreamArr[i] = null;
                } else {
                    ((com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource) chunkSampleStream.getChunkSource()).updateTrackSelection(exoTrackSelectionArr[i]);
                    arrayList.add(chunkSampleStream);
                }
            }
            if (sampleStreamArr[i] == null && exoTrackSelectionArr[i] != null) {
                com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource> chunkSampleStreamBuildSampleStream = buildSampleStream(exoTrackSelectionArr[i], j);
                arrayList.add(chunkSampleStreamBuildSampleStream);
                sampleStreamArr[i] = chunkSampleStreamBuildSampleStream;
                zArr2[i] = true;
            }
        }
        com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource>[] chunkSampleStreamArrNewSampleStreamArray = newSampleStreamArray(arrayList.size());
        this.sampleStreams = chunkSampleStreamArrNewSampleStreamArray;
        arrayList.toArray(chunkSampleStreamArrNewSampleStreamArray);
        this.compositeSequenceableLoader = this.compositeSequenceableLoaderFactory.createCompositeSequenceableLoader(this.sampleStreams);
        return j;
    }

    public void updateManifest(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifest) {
        this.manifest = ssManifest;
        for (com.google.android.exoplayer2.source.chunk.ChunkSampleStream<com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource> chunkSampleStream : this.sampleStreams) {
            ((com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource) chunkSampleStream.getChunkSource()).updateManifest(ssManifest);
        }
        this.callback.onContinueLoadingRequested(this);
    }
}
