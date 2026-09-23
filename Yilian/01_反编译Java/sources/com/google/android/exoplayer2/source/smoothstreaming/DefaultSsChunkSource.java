package com.google.android.exoplayer2.source.smoothstreaming;

/* loaded from: classes.dex */
public class DefaultSsChunkSource implements com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource {
    public final com.google.android.exoplayer2.source.chunk.ChunkExtractor[] chunkExtractors;
    public int currentManifestChunkOffset;
    public final com.google.android.exoplayer2.upstream.DataSource dataSource;
    public java.io.IOException fatalError;
    public com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest manifest;
    public final com.google.android.exoplayer2.upstream.LoaderErrorThrower manifestLoaderErrorThrower;
    public final int streamElementIndex;
    public com.google.android.exoplayer2.trackselection.ExoTrackSelection trackSelection;

    public static final class Factory implements com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource.Factory {
        public final com.google.android.exoplayer2.upstream.DataSource.Factory dataSourceFactory;

        public Factory(com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
            this.dataSourceFactory = factory;
        }

        @Override // com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource.Factory
        public com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource createChunkSource(com.google.android.exoplayer2.upstream.LoaderErrorThrower loaderErrorThrower, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifest, int i, com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection, com.google.android.exoplayer2.upstream.TransferListener transferListener) {
            com.google.android.exoplayer2.upstream.DataSource dataSourceCreateDataSource = this.dataSourceFactory.createDataSource();
            if (transferListener != null) {
                dataSourceCreateDataSource.addTransferListener(transferListener);
            }
            return new com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource(loaderErrorThrower, ssManifest, i, exoTrackSelection, dataSourceCreateDataSource);
        }
    }

    public static final class StreamElementIterator extends com.google.android.exoplayer2.source.chunk.BaseMediaChunkIterator {
        public final com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement streamElement;
        public final int trackIndex;

        public StreamElementIterator(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement streamElement, int i, int i2) {
            super(i2, streamElement.chunkCount - 1);
            this.streamElement = streamElement;
            this.trackIndex = i;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            return this.streamElement.getChunkDurationUs((int) getCurrentIndex()) + getChunkStartTimeUs();
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.streamElement.getStartTimeUs((int) getCurrentIndex());
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public com.google.android.exoplayer2.upstream.DataSpec getDataSpec() {
            checkInBounds();
            return new com.google.android.exoplayer2.upstream.DataSpec(this.streamElement.buildRequestUri(this.trackIndex, (int) getCurrentIndex()));
        }
    }

    public DefaultSsChunkSource(com.google.android.exoplayer2.upstream.LoaderErrorThrower loaderErrorThrower, com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifest, int i, com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection, com.google.android.exoplayer2.upstream.DataSource dataSource) {
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.manifest = ssManifest;
        this.streamElementIndex = i;
        this.trackSelection = exoTrackSelection;
        this.dataSource = dataSource;
        com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement streamElement = ssManifest.streamElements[i];
        this.chunkExtractors = new com.google.android.exoplayer2.source.chunk.ChunkExtractor[exoTrackSelection.length()];
        int i2 = 0;
        while (i2 < this.chunkExtractors.length) {
            int indexInTrackGroup = exoTrackSelection.getIndexInTrackGroup(i2);
            com.google.android.exoplayer2.Format format = streamElement.formats[indexInTrackGroup];
            int i3 = i2;
            this.chunkExtractors[i3] = new com.google.android.exoplayer2.source.chunk.BundledChunkExtractor(new com.google.android.exoplayer2.extractor.mp4.FragmentedMp4Extractor(3, null, new com.google.android.exoplayer2.extractor.mp4.Track(indexInTrackGroup, streamElement.type, streamElement.timescale, com.google.android.exoplayer2.C.TIME_UNSET, ssManifest.durationUs, format, 0, format.drmInitData != null ? ((com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.ProtectionElement) com.google.android.exoplayer2.util.Assertions.checkNotNull(ssManifest.protectionElement)).trackEncryptionBoxes : null, streamElement.type == 2 ? 4 : 0, null, null)), streamElement.type, format);
            i2 = i3 + 1;
        }
    }

    public static com.google.android.exoplayer2.source.chunk.MediaChunk newMediaChunk(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.upstream.DataSource dataSource, android.net.Uri uri, int i, long j, long j2, long j3, int i2, java.lang.Object obj, com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor) {
        return new com.google.android.exoplayer2.source.chunk.ContainerMediaChunk(dataSource, new com.google.android.exoplayer2.upstream.DataSpec(uri), format, i2, obj, j, j2, j3, com.google.android.exoplayer2.C.TIME_UNSET, i, 1, j, chunkExtractor);
    }

    private long resolveTimeToLiveEdgeUs(long j) {
        com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest ssManifest = this.manifest;
        if (!ssManifest.isLive) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement streamElement = ssManifest.streamElements[this.streamElementIndex];
        int i = streamElement.chunkCount - 1;
        return (streamElement.getChunkDurationUs(i) + streamElement.getStartTimeUs(i)) - j;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public long getAdjustedSeekPositionUs(long j, com.google.android.exoplayer2.SeekParameters seekParameters) {
        com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement streamElement = this.manifest.streamElements[this.streamElementIndex];
        int chunkIndex = streamElement.getChunkIndex(j);
        long startTimeUs = streamElement.getStartTimeUs(chunkIndex);
        return seekParameters.resolveSeekPositionUs(j, startTimeUs, (startTimeUs >= j || chunkIndex >= streamElement.chunkCount + (-1)) ? startTimeUs : streamElement.getStartTimeUs(chunkIndex + 1));
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public final void getNextChunk(long j, long j2, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list, com.google.android.exoplayer2.source.chunk.ChunkHolder chunkHolder) {
        int nextChunkIndex;
        long j3 = j2;
        if (this.fatalError != null) {
            return;
        }
        com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest.StreamElement streamElement = this.manifest.streamElements[this.streamElementIndex];
        if (streamElement.chunkCount == 0) {
            chunkHolder.endOfStream = !r4.isLive;
            return;
        }
        if (list.isEmpty()) {
            nextChunkIndex = streamElement.getChunkIndex(j3);
        } else {
            nextChunkIndex = (int) (list.get(list.size() - 1).getNextChunkIndex() - this.currentManifestChunkOffset);
            if (nextChunkIndex < 0) {
                this.fatalError = new com.google.android.exoplayer2.source.BehindLiveWindowException();
                return;
            }
        }
        if (nextChunkIndex >= streamElement.chunkCount) {
            chunkHolder.endOfStream = !this.manifest.isLive;
            return;
        }
        long j4 = j3 - j;
        long jResolveTimeToLiveEdgeUs = resolveTimeToLiveEdgeUs(j);
        int length = this.trackSelection.length();
        com.google.android.exoplayer2.source.chunk.MediaChunkIterator[] mediaChunkIteratorArr = new com.google.android.exoplayer2.source.chunk.MediaChunkIterator[length];
        for (int i = 0; i < length; i++) {
            mediaChunkIteratorArr[i] = new com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource.StreamElementIterator(streamElement, this.trackSelection.getIndexInTrackGroup(i), nextChunkIndex);
        }
        this.trackSelection.updateSelectedTrack(j, j4, jResolveTimeToLiveEdgeUs, list, mediaChunkIteratorArr);
        long startTimeUs = streamElement.getStartTimeUs(nextChunkIndex);
        long chunkDurationUs = streamElement.getChunkDurationUs(nextChunkIndex) + startTimeUs;
        if (!list.isEmpty()) {
            j3 = com.google.android.exoplayer2.C.TIME_UNSET;
        }
        long j5 = j3;
        int i2 = nextChunkIndex + this.currentManifestChunkOffset;
        int selectedIndex = this.trackSelection.getSelectedIndex();
        chunkHolder.chunk = newMediaChunk(this.trackSelection.getSelectedFormat(), this.dataSource, streamElement.buildRequestUri(this.trackSelection.getIndexInTrackGroup(selectedIndex), nextChunkIndex), i2, startTimeUs, chunkDurationUs, j5, this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), this.chunkExtractors[selectedIndex]);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public int getPreferredQueueSize(long j, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list) {
        return (this.fatalError != null || this.trackSelection.length() < 2) ? list.size() : this.trackSelection.evaluateQueueSize(j, list);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void maybeThrowError() throws java.io.IOException {
        java.io.IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        this.manifestLoaderErrorThrower.maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void onChunkLoadCompleted(com.google.android.exoplayer2.source.chunk.Chunk chunk) {
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public boolean onChunkLoadError(com.google.android.exoplayer2.source.chunk.Chunk chunk, boolean z, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor = loadErrorHandlingPolicy.getFallbackSelectionFor(com.google.android.exoplayer2.trackselection.TrackSelectionUtil.createFallbackOptions(this.trackSelection), loadErrorInfo);
        if (z && fallbackSelectionFor != null && fallbackSelectionFor.type == 2) {
            com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection = this.trackSelection;
            if (exoTrackSelection.blacklist(exoTrackSelection.indexOf(chunk.trackFormat), fallbackSelectionFor.exclusionDurationMs)) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void release() {
        for (com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor : this.chunkExtractors) {
            chunkExtractor.release();
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public boolean shouldCancelLoad(long j, com.google.android.exoplayer2.source.chunk.Chunk chunk, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list) {
        if (this.fatalError != null) {
            return false;
        }
        return this.trackSelection.shouldCancelChunkLoad(j, chunk, list);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0032  */
    @Override // com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void updateManifest(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest r9) {
        /*
            r8 = this;
            com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest r0 = r8.manifest
            com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest$StreamElement[] r0 = r0.streamElements
            int r1 = r8.streamElementIndex
            r0 = r0[r1]
            int r2 = r0.chunkCount
            com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest$StreamElement[] r3 = r9.streamElements
            r1 = r3[r1]
            if (r2 == 0) goto L32
            int r3 = r1.chunkCount
            if (r3 != 0) goto L15
            goto L32
        L15:
            int r3 = r2 + (-1)
            long r4 = r0.getStartTimeUs(r3)
            long r6 = r0.getChunkDurationUs(r3)
            long r6 = r6 + r4
            r3 = 0
            long r3 = r1.getStartTimeUs(r3)
            int r1 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r1 > 0) goto L2a
            goto L32
        L2a:
            int r1 = r8.currentManifestChunkOffset
            int r0 = r0.getChunkIndex(r3)
            int r0 = r0 + r1
            goto L35
        L32:
            int r0 = r8.currentManifestChunkOffset
            int r0 = r0 + r2
        L35:
            r8.currentManifestChunkOffset = r0
            r8.manifest = r9
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.smoothstreaming.DefaultSsChunkSource.updateManifest(com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifest):void");
    }

    @Override // com.google.android.exoplayer2.source.smoothstreaming.SsChunkSource
    public void updateTrackSelection(com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection) {
        this.trackSelection = exoTrackSelection;
    }
}
