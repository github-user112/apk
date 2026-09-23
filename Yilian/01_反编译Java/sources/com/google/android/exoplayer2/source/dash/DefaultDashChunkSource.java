package com.google.android.exoplayer2.source.dash;

/* loaded from: classes.dex */
public class DefaultDashChunkSource implements com.google.android.exoplayer2.source.dash.DashChunkSource {
    public final int[] adaptationSetIndices;
    public final com.google.android.exoplayer2.source.dash.BaseUrlExclusionList baseUrlExclusionList;
    public final com.google.android.exoplayer2.upstream.DataSource dataSource;
    public final long elapsedRealtimeOffsetMs;
    public java.io.IOException fatalError;
    public com.google.android.exoplayer2.source.dash.manifest.DashManifest manifest;
    public final com.google.android.exoplayer2.upstream.LoaderErrorThrower manifestLoaderErrorThrower;
    public final int maxSegmentsPerLoad;
    public boolean missingLastSegment;
    public int periodIndex;
    public final com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler;
    public final com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder[] representationHolders;
    public com.google.android.exoplayer2.trackselection.ExoTrackSelection trackSelection;
    public final int trackType;

    public static final class Factory implements com.google.android.exoplayer2.source.dash.DashChunkSource.Factory {
        public final com.google.android.exoplayer2.source.chunk.ChunkExtractor.Factory chunkExtractorFactory;
        public final com.google.android.exoplayer2.upstream.DataSource.Factory dataSourceFactory;
        public final int maxSegmentsPerLoad;

        public Factory(com.google.android.exoplayer2.source.chunk.ChunkExtractor.Factory factory, com.google.android.exoplayer2.upstream.DataSource.Factory factory2, int i) {
            this.chunkExtractorFactory = factory;
            this.dataSourceFactory = factory2;
            this.maxSegmentsPerLoad = i;
        }

        public Factory(com.google.android.exoplayer2.upstream.DataSource.Factory factory) {
            this(factory, 1);
        }

        public Factory(com.google.android.exoplayer2.upstream.DataSource.Factory factory, int i) {
            this(com.google.android.exoplayer2.source.chunk.BundledChunkExtractor.FACTORY, factory, i);
        }

        @Override // com.google.android.exoplayer2.source.dash.DashChunkSource.Factory
        public com.google.android.exoplayer2.source.dash.DashChunkSource createDashChunkSource(com.google.android.exoplayer2.upstream.LoaderErrorThrower loaderErrorThrower, com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest, com.google.android.exoplayer2.source.dash.BaseUrlExclusionList baseUrlExclusionList, int i, int[] iArr, com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection, int i2, long j, boolean z, java.util.List<com.google.android.exoplayer2.Format> list, com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler, com.google.android.exoplayer2.upstream.TransferListener transferListener) {
            com.google.android.exoplayer2.upstream.DataSource dataSourceCreateDataSource = this.dataSourceFactory.createDataSource();
            if (transferListener != null) {
                dataSourceCreateDataSource.addTransferListener(transferListener);
            }
            return new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource(this.chunkExtractorFactory, loaderErrorThrower, dashManifest, baseUrlExclusionList, i, iArr, exoTrackSelection, i2, dataSourceCreateDataSource, j, this.maxSegmentsPerLoad, z, list, playerTrackEmsgHandler);
        }
    }

    public static final class RepresentationHolder {
        public final com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor;
        public final long periodDurationUs;
        public final com.google.android.exoplayer2.source.dash.manifest.Representation representation;
        public final com.google.android.exoplayer2.source.dash.DashSegmentIndex segmentIndex;
        public final long segmentNumShift;
        public final com.google.android.exoplayer2.source.dash.manifest.BaseUrl selectedBaseUrl;

        public RepresentationHolder(long j, com.google.android.exoplayer2.source.dash.manifest.Representation representation, com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrl, com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor, long j2, com.google.android.exoplayer2.source.dash.DashSegmentIndex dashSegmentIndex) {
            this.periodDurationUs = j;
            this.representation = representation;
            this.selectedBaseUrl = baseUrl;
            this.segmentNumShift = j2;
            this.chunkExtractor = chunkExtractor;
            this.segmentIndex = dashSegmentIndex;
        }

        public com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder copyWithNewRepresentation(long j, com.google.android.exoplayer2.source.dash.manifest.Representation representation) throws com.google.android.exoplayer2.source.BehindLiveWindowException {
            long segmentNum;
            long segmentNum2;
            com.google.android.exoplayer2.source.dash.DashSegmentIndex index = this.representation.getIndex();
            com.google.android.exoplayer2.source.dash.DashSegmentIndex index2 = representation.getIndex();
            if (index == null) {
                return new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder(j, representation, this.selectedBaseUrl, this.chunkExtractor, this.segmentNumShift, index);
            }
            if (!index.isExplicit()) {
                return new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder(j, representation, this.selectedBaseUrl, this.chunkExtractor, this.segmentNumShift, index2);
            }
            long segmentCount = index.getSegmentCount(j);
            if (segmentCount == 0) {
                return new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder(j, representation, this.selectedBaseUrl, this.chunkExtractor, this.segmentNumShift, index2);
            }
            long firstSegmentNum = index.getFirstSegmentNum();
            long timeUs = index.getTimeUs(firstSegmentNum);
            long j2 = (segmentCount + firstSegmentNum) - 1;
            long durationUs = index.getDurationUs(j2, j) + index.getTimeUs(j2);
            long firstSegmentNum2 = index2.getFirstSegmentNum();
            long timeUs2 = index2.getTimeUs(firstSegmentNum2);
            long j3 = this.segmentNumShift;
            if (durationUs == timeUs2) {
                segmentNum = j2 + 1;
            } else {
                if (durationUs < timeUs2) {
                    throw new com.google.android.exoplayer2.source.BehindLiveWindowException();
                }
                if (timeUs2 < timeUs) {
                    segmentNum2 = j3 - (index2.getSegmentNum(timeUs, j) - firstSegmentNum);
                    return new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder(j, representation, this.selectedBaseUrl, this.chunkExtractor, segmentNum2, index2);
                }
                segmentNum = index.getSegmentNum(timeUs2, j);
            }
            segmentNum2 = (segmentNum - firstSegmentNum2) + j3;
            return new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder(j, representation, this.selectedBaseUrl, this.chunkExtractor, segmentNum2, index2);
        }

        public com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder copyWithNewSegmentIndex(com.google.android.exoplayer2.source.dash.DashSegmentIndex dashSegmentIndex) {
            return new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder(this.periodDurationUs, this.representation, this.selectedBaseUrl, this.chunkExtractor, this.segmentNumShift, dashSegmentIndex);
        }

        public com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder copyWithNewSelectedBaseUrl(com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrl) {
            return new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder(this.periodDurationUs, this.representation, baseUrl, this.chunkExtractor, this.segmentNumShift, this.segmentIndex);
        }

        public long getFirstAvailableSegmentNum(long j) {
            return this.segmentIndex.getFirstAvailableSegmentNum(this.periodDurationUs, j) + this.segmentNumShift;
        }

        public long getFirstSegmentNum() {
            return this.segmentIndex.getFirstSegmentNum() + this.segmentNumShift;
        }

        public long getLastAvailableSegmentNum(long j) {
            return (this.segmentIndex.getAvailableSegmentCount(this.periodDurationUs, j) + getFirstAvailableSegmentNum(j)) - 1;
        }

        public long getSegmentCount() {
            return this.segmentIndex.getSegmentCount(this.periodDurationUs);
        }

        public long getSegmentEndTimeUs(long j) {
            return this.segmentIndex.getDurationUs(j - this.segmentNumShift, this.periodDurationUs) + getSegmentStartTimeUs(j);
        }

        public long getSegmentNum(long j) {
            return this.segmentIndex.getSegmentNum(j, this.periodDurationUs) + this.segmentNumShift;
        }

        public long getSegmentStartTimeUs(long j) {
            return this.segmentIndex.getTimeUs(j - this.segmentNumShift);
        }

        public com.google.android.exoplayer2.source.dash.manifest.RangedUri getSegmentUrl(long j) {
            return this.segmentIndex.getSegmentUrl(j - this.segmentNumShift);
        }

        public boolean isSegmentAvailableAtFullNetworkSpeed(long j, long j2) {
            return this.segmentIndex.isExplicit() || j2 == com.google.android.exoplayer2.C.TIME_UNSET || getSegmentEndTimeUs(j) <= j2;
        }
    }

    public static final class RepresentationSegmentIterator extends com.google.android.exoplayer2.source.chunk.BaseMediaChunkIterator {
        public final long nowPeriodTimeUs;
        public final com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolder;

        public RepresentationSegmentIterator(com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolder, long j, long j2, long j3) {
            super(j, j2);
            this.representationHolder = representationHolder;
            this.nowPeriodTimeUs = j3;
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkEndTimeUs() {
            checkInBounds();
            return this.representationHolder.getSegmentEndTimeUs(getCurrentIndex());
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public long getChunkStartTimeUs() {
            checkInBounds();
            return this.representationHolder.getSegmentStartTimeUs(getCurrentIndex());
        }

        @Override // com.google.android.exoplayer2.source.chunk.MediaChunkIterator
        public com.google.android.exoplayer2.upstream.DataSpec getDataSpec() {
            checkInBounds();
            long currentIndex = getCurrentIndex();
            com.google.android.exoplayer2.source.dash.manifest.RangedUri segmentUrl = this.representationHolder.getSegmentUrl(currentIndex);
            int i = this.representationHolder.isSegmentAvailableAtFullNetworkSpeed(currentIndex, this.nowPeriodTimeUs) ? 0 : 8;
            com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolder = this.representationHolder;
            return com.google.android.exoplayer2.source.dash.DashUtil.buildDataSpec(representationHolder.representation, representationHolder.selectedBaseUrl.url, segmentUrl, i);
        }
    }

    public DefaultDashChunkSource(com.google.android.exoplayer2.source.chunk.ChunkExtractor.Factory factory, com.google.android.exoplayer2.upstream.LoaderErrorThrower loaderErrorThrower, com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest, com.google.android.exoplayer2.source.dash.BaseUrlExclusionList baseUrlExclusionList, int i, int[] iArr, com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection, int i2, com.google.android.exoplayer2.upstream.DataSource dataSource, long j, int i3, boolean z, java.util.List<com.google.android.exoplayer2.Format> list, com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler) {
        this.manifestLoaderErrorThrower = loaderErrorThrower;
        this.manifest = dashManifest;
        this.baseUrlExclusionList = baseUrlExclusionList;
        this.adaptationSetIndices = iArr;
        this.trackSelection = exoTrackSelection;
        this.trackType = i2;
        this.dataSource = dataSource;
        this.periodIndex = i;
        this.elapsedRealtimeOffsetMs = j;
        this.maxSegmentsPerLoad = i3;
        this.playerTrackEmsgHandler = playerTrackEmsgHandler;
        long periodDurationUs = dashManifest.getPeriodDurationUs(i);
        java.util.ArrayList<com.google.android.exoplayer2.source.dash.manifest.Representation> representations = getRepresentations();
        this.representationHolders = new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder[exoTrackSelection.length()];
        int i4 = 0;
        while (i4 < this.representationHolders.length) {
            com.google.android.exoplayer2.source.dash.manifest.Representation representation = representations.get(exoTrackSelection.getIndexInTrackGroup(i4));
            com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrlSelectBaseUrl = baseUrlExclusionList.selectBaseUrl(representation.baseUrls);
            com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder[] representationHolderArr = this.representationHolders;
            if (baseUrlSelectBaseUrl == null) {
                baseUrlSelectBaseUrl = representation.baseUrls.get(0);
            }
            int i5 = i4;
            representationHolderArr[i5] = new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder(periodDurationUs, representation, baseUrlSelectBaseUrl, com.google.android.exoplayer2.source.chunk.BundledChunkExtractor.FACTORY.createProgressiveMediaExtractor(i2, representation.format, z, list, playerTrackEmsgHandler), 0L, representation.getIndex());
            i4 = i5 + 1;
        }
    }

    private com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.FallbackOptions createFallbackOptions(com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection, java.util.List<com.google.android.exoplayer2.source.dash.manifest.BaseUrl> list) {
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        int length = exoTrackSelection.length();
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            if (exoTrackSelection.isBlacklisted(i2, jElapsedRealtime)) {
                i++;
            }
        }
        int priorityCount = com.google.android.exoplayer2.source.dash.BaseUrlExclusionList.getPriorityCount(list);
        return new com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.FallbackOptions(priorityCount, priorityCount - this.baseUrlExclusionList.getPriorityCountAfterExclusion(list), length, i);
    }

    private long getAvailableLiveDurationUs(long j, long j2) {
        if (!this.manifest.dynamic) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        return java.lang.Math.max(0L, java.lang.Math.min(getNowPeriodTimeUs(j), this.representationHolders[0].getSegmentEndTimeUs(this.representationHolders[0].getLastAvailableSegmentNum(j))) - j2);
    }

    private long getNowPeriodTimeUs(long j) {
        com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest = this.manifest;
        long j2 = dashManifest.availabilityStartTimeMs;
        return j2 == com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.C.TIME_UNSET : j - com.google.android.exoplayer2.util.Util.msToUs(j2 + dashManifest.getPeriod(this.periodIndex).startMs);
    }

    private java.util.ArrayList<com.google.android.exoplayer2.source.dash.manifest.Representation> getRepresentations() {
        java.util.List<com.google.android.exoplayer2.source.dash.manifest.AdaptationSet> list = this.manifest.getPeriod(this.periodIndex).adaptationSets;
        java.util.ArrayList<com.google.android.exoplayer2.source.dash.manifest.Representation> arrayList = new java.util.ArrayList<>();
        for (int i : this.adaptationSetIndices) {
            arrayList.addAll(list.get(i).representations);
        }
        return arrayList;
    }

    private long getSegmentNum(com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolder, com.google.android.exoplayer2.source.chunk.MediaChunk mediaChunk, long j, long j2, long j3) {
        return mediaChunk != null ? mediaChunk.getNextChunkIndex() : com.google.android.exoplayer2.util.Util.constrainValue(representationHolder.getSegmentNum(j), j2, j3);
    }

    private com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder updateSelectedBaseUrl(int i) {
        com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolder = this.representationHolders[i];
        com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrlSelectBaseUrl = this.baseUrlExclusionList.selectBaseUrl(representationHolder.representation.baseUrls);
        if (baseUrlSelectBaseUrl == null || baseUrlSelectBaseUrl.equals(representationHolder.selectedBaseUrl)) {
            return representationHolder;
        }
        com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolderCopyWithNewSelectedBaseUrl = representationHolder.copyWithNewSelectedBaseUrl(baseUrlSelectBaseUrl);
        this.representationHolders[i] = representationHolderCopyWithNewSelectedBaseUrl;
        return representationHolderCopyWithNewSelectedBaseUrl;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public long getAdjustedSeekPositionUs(long j, com.google.android.exoplayer2.SeekParameters seekParameters) {
        for (com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolder : this.representationHolders) {
            if (representationHolder.segmentIndex != null) {
                long segmentNum = representationHolder.getSegmentNum(j);
                long segmentStartTimeUs = representationHolder.getSegmentStartTimeUs(segmentNum);
                long segmentCount = representationHolder.getSegmentCount();
                return seekParameters.resolveSeekPositionUs(j, segmentStartTimeUs, (segmentStartTimeUs >= j || (segmentCount != -1 && segmentNum >= (representationHolder.getFirstSegmentNum() + segmentCount) - 1)) ? segmentStartTimeUs : representationHolder.getSegmentStartTimeUs(segmentNum + 1));
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void getNextChunk(long j, long j2, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list, com.google.android.exoplayer2.source.chunk.ChunkHolder chunkHolder) {
        int i;
        int i2;
        com.google.android.exoplayer2.source.chunk.MediaChunkIterator[] mediaChunkIteratorArr;
        long j3;
        long j4;
        if (this.fatalError != null) {
            return;
        }
        long j5 = j2 - j;
        long jMsToUs = com.google.android.exoplayer2.util.Util.msToUs(this.manifest.getPeriod(this.periodIndex).startMs) + com.google.android.exoplayer2.util.Util.msToUs(this.manifest.availabilityStartTimeMs) + j2;
        com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = this.playerTrackEmsgHandler;
        if (playerTrackEmsgHandler == null || !playerTrackEmsgHandler.maybeRefreshManifestBeforeLoadingNextChunk(jMsToUs)) {
            long jMsToUs2 = com.google.android.exoplayer2.util.Util.msToUs(com.google.android.exoplayer2.util.Util.getNowUnixTimeMs(this.elapsedRealtimeOffsetMs));
            long nowPeriodTimeUs = getNowPeriodTimeUs(jMsToUs2);
            com.google.android.exoplayer2.source.chunk.MediaChunk mediaChunk = list.isEmpty() ? null : list.get(list.size() - 1);
            int length = this.trackSelection.length();
            com.google.android.exoplayer2.source.chunk.MediaChunkIterator[] mediaChunkIteratorArr2 = new com.google.android.exoplayer2.source.chunk.MediaChunkIterator[length];
            int i3 = 0;
            while (i3 < length) {
                com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolder = this.representationHolders[i3];
                if (representationHolder.segmentIndex == null) {
                    mediaChunkIteratorArr2[i3] = com.google.android.exoplayer2.source.chunk.MediaChunkIterator.EMPTY;
                    i = i3;
                    i2 = length;
                    mediaChunkIteratorArr = mediaChunkIteratorArr2;
                    j3 = j5;
                    j4 = jMsToUs2;
                } else {
                    long firstAvailableSegmentNum = representationHolder.getFirstAvailableSegmentNum(jMsToUs2);
                    long lastAvailableSegmentNum = representationHolder.getLastAvailableSegmentNum(jMsToUs2);
                    i = i3;
                    i2 = length;
                    mediaChunkIteratorArr = mediaChunkIteratorArr2;
                    j3 = j5;
                    j4 = jMsToUs2;
                    long segmentNum = getSegmentNum(representationHolder, mediaChunk, j2, firstAvailableSegmentNum, lastAvailableSegmentNum);
                    if (segmentNum < firstAvailableSegmentNum) {
                        mediaChunkIteratorArr[i] = com.google.android.exoplayer2.source.chunk.MediaChunkIterator.EMPTY;
                    } else {
                        mediaChunkIteratorArr[i] = new com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationSegmentIterator(updateSelectedBaseUrl(i), segmentNum, lastAvailableSegmentNum, nowPeriodTimeUs);
                    }
                }
                i3 = i + 1;
                jMsToUs2 = j4;
                mediaChunkIteratorArr2 = mediaChunkIteratorArr;
                length = i2;
                j5 = j3;
            }
            long j6 = j5;
            long j7 = jMsToUs2;
            this.trackSelection.updateSelectedTrack(j, j6, getAvailableLiveDurationUs(j7, j), list, mediaChunkIteratorArr2);
            com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolderUpdateSelectedBaseUrl = updateSelectedBaseUrl(this.trackSelection.getSelectedIndex());
            com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor = representationHolderUpdateSelectedBaseUrl.chunkExtractor;
            if (chunkExtractor != null) {
                com.google.android.exoplayer2.source.dash.manifest.Representation representation = representationHolderUpdateSelectedBaseUrl.representation;
                com.google.android.exoplayer2.source.dash.manifest.RangedUri initializationUri = chunkExtractor.getSampleFormats() == null ? representation.getInitializationUri() : null;
                com.google.android.exoplayer2.source.dash.manifest.RangedUri indexUri = representationHolderUpdateSelectedBaseUrl.segmentIndex == null ? representation.getIndexUri() : null;
                if (initializationUri != null || indexUri != null) {
                    chunkHolder.chunk = newInitializationChunk(representationHolderUpdateSelectedBaseUrl, this.dataSource, this.trackSelection.getSelectedFormat(), this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), initializationUri, indexUri);
                    return;
                }
            }
            long j8 = representationHolderUpdateSelectedBaseUrl.periodDurationUs;
            long j9 = com.google.android.exoplayer2.C.TIME_UNSET;
            boolean z = j8 != com.google.android.exoplayer2.C.TIME_UNSET;
            if (representationHolderUpdateSelectedBaseUrl.getSegmentCount() == 0) {
                chunkHolder.endOfStream = z;
                return;
            }
            long firstAvailableSegmentNum2 = representationHolderUpdateSelectedBaseUrl.getFirstAvailableSegmentNum(j7);
            long lastAvailableSegmentNum2 = representationHolderUpdateSelectedBaseUrl.getLastAvailableSegmentNum(j7);
            long segmentNum2 = getSegmentNum(representationHolderUpdateSelectedBaseUrl, mediaChunk, j2, firstAvailableSegmentNum2, lastAvailableSegmentNum2);
            if (segmentNum2 < firstAvailableSegmentNum2) {
                this.fatalError = new com.google.android.exoplayer2.source.BehindLiveWindowException();
                return;
            }
            if (segmentNum2 > lastAvailableSegmentNum2 || (this.missingLastSegment && segmentNum2 >= lastAvailableSegmentNum2)) {
                chunkHolder.endOfStream = z;
                return;
            }
            if (z && representationHolderUpdateSelectedBaseUrl.getSegmentStartTimeUs(segmentNum2) >= j8) {
                chunkHolder.endOfStream = true;
                return;
            }
            int iMin = (int) java.lang.Math.min(this.maxSegmentsPerLoad, (lastAvailableSegmentNum2 - segmentNum2) + 1);
            if (j8 != com.google.android.exoplayer2.C.TIME_UNSET) {
                while (iMin > 1 && representationHolderUpdateSelectedBaseUrl.getSegmentStartTimeUs((iMin + segmentNum2) - 1) >= j8) {
                    iMin--;
                }
            }
            int i4 = iMin;
            if (list.isEmpty()) {
                j9 = j2;
            }
            chunkHolder.chunk = newMediaChunk(representationHolderUpdateSelectedBaseUrl, this.dataSource, this.trackType, this.trackSelection.getSelectedFormat(), this.trackSelection.getSelectionReason(), this.trackSelection.getSelectionData(), segmentNum2, i4, j9, nowPeriodTimeUs);
        }
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

    public com.google.android.exoplayer2.source.chunk.Chunk newInitializationChunk(com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolder, com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.Format format, int i, java.lang.Object obj, com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri, com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri2) {
        com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUri3 = rangedUri;
        com.google.android.exoplayer2.source.dash.manifest.Representation representation = representationHolder.representation;
        if (rangedUri3 != null) {
            com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUriAttemptMerge = rangedUri3.attemptMerge(rangedUri2, representationHolder.selectedBaseUrl.url);
            if (rangedUriAttemptMerge != null) {
                rangedUri3 = rangedUriAttemptMerge;
            }
        } else {
            rangedUri3 = rangedUri2;
        }
        return new com.google.android.exoplayer2.source.chunk.InitializationChunk(dataSource, com.google.android.exoplayer2.source.dash.DashUtil.buildDataSpec(representation, representationHolder.selectedBaseUrl.url, rangedUri3, 0), format, i, obj, representationHolder.chunkExtractor);
    }

    public com.google.android.exoplayer2.source.chunk.Chunk newMediaChunk(com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolder, com.google.android.exoplayer2.upstream.DataSource dataSource, int i, com.google.android.exoplayer2.Format format, int i2, java.lang.Object obj, long j, int i3, long j2, long j3) {
        com.google.android.exoplayer2.source.dash.manifest.Representation representation = representationHolder.representation;
        long segmentStartTimeUs = representationHolder.getSegmentStartTimeUs(j);
        com.google.android.exoplayer2.source.dash.manifest.RangedUri segmentUrl = representationHolder.getSegmentUrl(j);
        if (representationHolder.chunkExtractor == null) {
            return new com.google.android.exoplayer2.source.chunk.SingleSampleMediaChunk(dataSource, com.google.android.exoplayer2.source.dash.DashUtil.buildDataSpec(representation, representationHolder.selectedBaseUrl.url, segmentUrl, representationHolder.isSegmentAvailableAtFullNetworkSpeed(j, j3) ? 0 : 8), format, i2, obj, segmentStartTimeUs, representationHolder.getSegmentEndTimeUs(j), j, i, format);
        }
        int i4 = 1;
        int i5 = 1;
        while (i4 < i3) {
            com.google.android.exoplayer2.source.dash.manifest.RangedUri rangedUriAttemptMerge = segmentUrl.attemptMerge(representationHolder.getSegmentUrl(i4 + j), representationHolder.selectedBaseUrl.url);
            if (rangedUriAttemptMerge == null) {
                break;
            }
            i5++;
            i4++;
            segmentUrl = rangedUriAttemptMerge;
        }
        long j4 = (i5 + j) - 1;
        long segmentEndTimeUs = representationHolder.getSegmentEndTimeUs(j4);
        long j5 = representationHolder.periodDurationUs;
        return new com.google.android.exoplayer2.source.chunk.ContainerMediaChunk(dataSource, com.google.android.exoplayer2.source.dash.DashUtil.buildDataSpec(representation, representationHolder.selectedBaseUrl.url, segmentUrl, representationHolder.isSegmentAvailableAtFullNetworkSpeed(j4, j3) ? 0 : 8), format, i2, obj, segmentStartTimeUs, segmentEndTimeUs, j2, (j5 == com.google.android.exoplayer2.C.TIME_UNSET || j5 > segmentEndTimeUs) ? -9223372036854775807L : j5, j, i5, -representation.presentationTimeOffsetUs, representationHolder.chunkExtractor);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void onChunkLoadCompleted(com.google.android.exoplayer2.source.chunk.Chunk chunk) {
        com.google.android.exoplayer2.extractor.ChunkIndex chunkIndex;
        if (chunk instanceof com.google.android.exoplayer2.source.chunk.InitializationChunk) {
            int iIndexOf = this.trackSelection.indexOf(((com.google.android.exoplayer2.source.chunk.InitializationChunk) chunk).trackFormat);
            com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolder = this.representationHolders[iIndexOf];
            if (representationHolder.segmentIndex == null && (chunkIndex = representationHolder.chunkExtractor.getChunkIndex()) != null) {
                this.representationHolders[iIndexOf] = representationHolder.copyWithNewSegmentIndex(new com.google.android.exoplayer2.source.dash.DashWrappingSegmentIndex(chunkIndex, representationHolder.representation.presentationTimeOffsetUs));
            }
        }
        com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = this.playerTrackEmsgHandler;
        if (playerTrackEmsgHandler != null) {
            playerTrackEmsgHandler.onChunkLoadCompleted(chunk);
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public boolean onChunkLoadError(com.google.android.exoplayer2.source.chunk.Chunk chunk, boolean z, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy) {
        com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor;
        if (!z) {
            return false;
        }
        com.google.android.exoplayer2.source.dash.PlayerEmsgHandler.PlayerTrackEmsgHandler playerTrackEmsgHandler = this.playerTrackEmsgHandler;
        if (playerTrackEmsgHandler != null && playerTrackEmsgHandler.onChunkLoadError(chunk)) {
            return true;
        }
        if (!this.manifest.dynamic && (chunk instanceof com.google.android.exoplayer2.source.chunk.MediaChunk)) {
            java.io.IOException iOException = loadErrorInfo.exception;
            if ((iOException instanceof com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException) && ((com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException) iOException).responseCode == 404) {
                com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolder = this.representationHolders[this.trackSelection.indexOf(chunk.trackFormat)];
                long segmentCount = representationHolder.getSegmentCount();
                if (segmentCount != -1 && segmentCount != 0) {
                    if (((com.google.android.exoplayer2.source.chunk.MediaChunk) chunk).getNextChunkIndex() > (representationHolder.getFirstSegmentNum() + segmentCount) - 1) {
                        this.missingLastSegment = true;
                        return true;
                    }
                }
            }
        }
        com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolder2 = this.representationHolders[this.trackSelection.indexOf(chunk.trackFormat)];
        com.google.android.exoplayer2.source.dash.manifest.BaseUrl baseUrlSelectBaseUrl = this.baseUrlExclusionList.selectBaseUrl(representationHolder2.representation.baseUrls);
        if (baseUrlSelectBaseUrl != null && !representationHolder2.selectedBaseUrl.equals(baseUrlSelectBaseUrl)) {
            return true;
        }
        com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.FallbackOptions fallbackOptionsCreateFallbackOptions = createFallbackOptions(this.trackSelection, representationHolder2.representation.baseUrls);
        if ((!fallbackOptionsCreateFallbackOptions.isFallbackAvailable(2) && !fallbackOptionsCreateFallbackOptions.isFallbackAvailable(1)) || (fallbackSelectionFor = loadErrorHandlingPolicy.getFallbackSelectionFor(fallbackOptionsCreateFallbackOptions, loadErrorInfo)) == null || !fallbackOptionsCreateFallbackOptions.isFallbackAvailable(fallbackSelectionFor.type)) {
            return false;
        }
        int i = fallbackSelectionFor.type;
        if (i == 2) {
            com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection = this.trackSelection;
            return exoTrackSelection.blacklist(exoTrackSelection.indexOf(chunk.trackFormat), fallbackSelectionFor.exclusionDurationMs);
        }
        if (i != 1) {
            return false;
        }
        this.baseUrlExclusionList.exclude(representationHolder2.selectedBaseUrl, fallbackSelectionFor.exclusionDurationMs);
        return true;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public void release() {
        for (com.google.android.exoplayer2.source.dash.DefaultDashChunkSource.RepresentationHolder representationHolder : this.representationHolders) {
            com.google.android.exoplayer2.source.chunk.ChunkExtractor chunkExtractor = representationHolder.chunkExtractor;
            if (chunkExtractor != null) {
                chunkExtractor.release();
            }
        }
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkSource
    public boolean shouldCancelLoad(long j, com.google.android.exoplayer2.source.chunk.Chunk chunk, java.util.List<? extends com.google.android.exoplayer2.source.chunk.MediaChunk> list) {
        if (this.fatalError != null) {
            return false;
        }
        return this.trackSelection.shouldCancelChunkLoad(j, chunk, list);
    }

    @Override // com.google.android.exoplayer2.source.dash.DashChunkSource
    public void updateManifest(com.google.android.exoplayer2.source.dash.manifest.DashManifest dashManifest, int i) {
        try {
            this.manifest = dashManifest;
            this.periodIndex = i;
            long periodDurationUs = dashManifest.getPeriodDurationUs(i);
            java.util.ArrayList<com.google.android.exoplayer2.source.dash.manifest.Representation> representations = getRepresentations();
            for (int i2 = 0; i2 < this.representationHolders.length; i2++) {
                this.representationHolders[i2] = this.representationHolders[i2].copyWithNewRepresentation(periodDurationUs, representations.get(this.trackSelection.getIndexInTrackGroup(i2)));
            }
        } catch (com.google.android.exoplayer2.source.BehindLiveWindowException e2) {
            this.fatalError = e2;
        }
    }

    @Override // com.google.android.exoplayer2.source.dash.DashChunkSource
    public void updateTrackSelection(com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection) {
        this.trackSelection = exoTrackSelection;
    }
}
