package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class ProgressiveMediaPeriod implements com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.extractor.ExtractorOutput, com.google.android.exoplayer2.upstream.Loader.Callback<com.google.android.exoplayer2.source.ProgressiveMediaPeriod.ExtractingLoadable>, com.google.android.exoplayer2.upstream.Loader.ReleaseCallback, com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener {
    public static final long DEFAULT_LAST_SAMPLE_DURATION_US = 10000;
    public final com.google.android.exoplayer2.upstream.Allocator allocator;
    public com.google.android.exoplayer2.source.MediaPeriod.Callback callback;
    public final long continueLoadingCheckIntervalBytes;
    public final java.lang.String customCacheKey;
    public final com.google.android.exoplayer2.upstream.DataSource dataSource;
    public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    public final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager;
    public int enabledTrackCount;
    public int extractedSamplesCountAtStartOfLoad;
    public boolean haveAudioVideoTracks;
    public com.google.android.exoplayer2.metadata.icy.IcyHeaders icyHeaders;
    public boolean isLive;
    public long lastSeekPositionUs;
    public final com.google.android.exoplayer2.source.ProgressiveMediaPeriod.Listener listener;
    public final com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public boolean loadingFinished;
    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    public boolean notifyDiscontinuity;
    public boolean pendingDeferredRetry;
    public boolean prepared;
    public final com.google.android.exoplayer2.source.ProgressiveMediaExtractor progressiveMediaExtractor;
    public boolean released;
    public boolean sampleQueuesBuilt;
    public com.google.android.exoplayer2.extractor.SeekMap seekMap;
    public boolean seenFirstTrackSelection;
    public com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackState trackState;
    public final android.net.Uri uri;
    public static final java.util.Map<java.lang.String, java.lang.String> ICY_METADATA_HEADERS = createIcyMetadataHeaders();
    public static final com.google.android.exoplayer2.Format ICY_FORMAT = new com.google.android.exoplayer2.Format.Builder().setId("icy").setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_ICY).build();
    public final com.google.android.exoplayer2.upstream.Loader loader = new com.google.android.exoplayer2.upstream.Loader("ProgressiveMediaPeriod");
    public final com.google.android.exoplayer2.util.ConditionVariable loadCondition = new com.google.android.exoplayer2.util.ConditionVariable();
    public final java.lang.Runnable maybeFinishPrepareRunnable = new java.lang.Runnable() { // from class: e.c.a.a.n2.p
        @Override // java.lang.Runnable
        public final void run() {
            this.a.maybeFinishPrepare();
        }
    };
    public final java.lang.Runnable onContinueLoadingRequestedRunnable = new java.lang.Runnable() { // from class: e.c.a.a.n2.o
        @Override // java.lang.Runnable
        public final void run() {
            this.a.b();
        }
    };
    public final android.os.Handler handler = com.google.android.exoplayer2.util.Util.createHandlerForCurrentLooper();
    public com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackId[] sampleQueueTrackIds = new com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackId[0];
    public com.google.android.exoplayer2.source.SampleQueue[] sampleQueues = new com.google.android.exoplayer2.source.SampleQueue[0];
    public long pendingResetPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;
    public long length = -1;
    public long durationUs = com.google.android.exoplayer2.C.TIME_UNSET;
    public int dataType = 1;

    public final class ExtractingLoadable implements com.google.android.exoplayer2.upstream.Loader.Loadable, com.google.android.exoplayer2.source.IcyDataSource.Listener {
        public final com.google.android.exoplayer2.upstream.StatsDataSource dataSource;
        public final com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
        public com.google.android.exoplayer2.extractor.TrackOutput icyTrackOutput;
        public volatile boolean loadCanceled;
        public final com.google.android.exoplayer2.util.ConditionVariable loadCondition;
        public final com.google.android.exoplayer2.source.ProgressiveMediaExtractor progressiveMediaExtractor;
        public long seekTimeUs;
        public boolean seenIcyMetadata;
        public final android.net.Uri uri;
        public final com.google.android.exoplayer2.extractor.PositionHolder positionHolder = new com.google.android.exoplayer2.extractor.PositionHolder();
        public boolean pendingExtractorSeek = true;
        public long length = -1;
        public final long loadTaskId = com.google.android.exoplayer2.source.LoadEventInfo.getNewId();
        public com.google.android.exoplayer2.upstream.DataSpec dataSpec = buildDataSpec(0);

        public ExtractingLoadable(android.net.Uri uri, com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.source.ProgressiveMediaExtractor progressiveMediaExtractor, com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.util.ConditionVariable conditionVariable) {
            this.uri = uri;
            this.dataSource = new com.google.android.exoplayer2.upstream.StatsDataSource(dataSource);
            this.progressiveMediaExtractor = progressiveMediaExtractor;
            this.extractorOutput = extractorOutput;
            this.loadCondition = conditionVariable;
        }

        private com.google.android.exoplayer2.upstream.DataSpec buildDataSpec(long j) {
            return new com.google.android.exoplayer2.upstream.DataSpec.Builder().setUri(this.uri).setPosition(j).setKey(com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.customCacheKey).setFlags(6).setHttpRequestHeaders(com.google.android.exoplayer2.source.ProgressiveMediaPeriod.ICY_METADATA_HEADERS).build();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setLoadPosition(long j, long j2) {
            this.positionHolder.position = j;
            this.seekTimeUs = j2;
            this.pendingExtractorSeek = true;
            this.seenIcyMetadata = false;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void cancelLoad() {
            this.loadCanceled = true;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void load() {
            int i = 0;
            while (i == 0 && !this.loadCanceled) {
                try {
                    long j = this.positionHolder.position;
                    com.google.android.exoplayer2.upstream.DataSpec dataSpecBuildDataSpec = buildDataSpec(j);
                    this.dataSpec = dataSpecBuildDataSpec;
                    long jOpen = this.dataSource.open(dataSpecBuildDataSpec);
                    this.length = jOpen;
                    if (jOpen != -1) {
                        this.length = jOpen + j;
                    }
                    com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.icyHeaders = com.google.android.exoplayer2.metadata.icy.IcyHeaders.parse(this.dataSource.getResponseHeaders());
                    com.google.android.exoplayer2.upstream.DataReader icyDataSource = this.dataSource;
                    if (com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.icyHeaders != null && com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.icyHeaders.metadataInterval != -1) {
                        icyDataSource = new com.google.android.exoplayer2.source.IcyDataSource(this.dataSource, com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.icyHeaders.metadataInterval, this);
                        com.google.android.exoplayer2.extractor.TrackOutput trackOutputIcyTrack = com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.icyTrack();
                        this.icyTrackOutput = trackOutputIcyTrack;
                        trackOutputIcyTrack.format(com.google.android.exoplayer2.source.ProgressiveMediaPeriod.ICY_FORMAT);
                    }
                    long currentInputPosition = j;
                    this.progressiveMediaExtractor.init(icyDataSource, this.uri, this.dataSource.getResponseHeaders(), j, this.length, this.extractorOutput);
                    if (com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.icyHeaders != null) {
                        this.progressiveMediaExtractor.disableSeekingOnMp3Streams();
                    }
                    if (this.pendingExtractorSeek) {
                        this.progressiveMediaExtractor.seek(currentInputPosition, this.seekTimeUs);
                        this.pendingExtractorSeek = false;
                    }
                    while (true) {
                        long j2 = currentInputPosition;
                        while (i == 0 && !this.loadCanceled) {
                            try {
                                this.loadCondition.block();
                                i = this.progressiveMediaExtractor.read(this.positionHolder);
                                currentInputPosition = this.progressiveMediaExtractor.getCurrentInputPosition();
                                if (currentInputPosition > com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.continueLoadingCheckIntervalBytes + j2) {
                                    break;
                                }
                            } catch (java.lang.InterruptedException unused) {
                                throw new java.io.InterruptedIOException();
                            }
                        }
                        this.loadCondition.close();
                        com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.handler.post(com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.onContinueLoadingRequestedRunnable);
                    }
                    if (i == 1) {
                        i = 0;
                    } else if (this.progressiveMediaExtractor.getCurrentInputPosition() != -1) {
                        this.positionHolder.position = this.progressiveMediaExtractor.getCurrentInputPosition();
                    }
                    com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(this.dataSource);
                } catch (java.lang.Throwable th) {
                    if (i != 1 && this.progressiveMediaExtractor.getCurrentInputPosition() != -1) {
                        this.positionHolder.position = this.progressiveMediaExtractor.getCurrentInputPosition();
                    }
                    com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(this.dataSource);
                    throw th;
                }
            }
        }

        @Override // com.google.android.exoplayer2.source.IcyDataSource.Listener
        public void onIcyMetadata(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
            long jMax = !this.seenIcyMetadata ? this.seekTimeUs : java.lang.Math.max(com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.getLargestQueuedTimestampUs(), this.seekTimeUs);
            int iBytesLeft = parsableByteArray.bytesLeft();
            com.google.android.exoplayer2.extractor.TrackOutput trackOutput = (com.google.android.exoplayer2.extractor.TrackOutput) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.icyTrackOutput);
            trackOutput.sampleData(parsableByteArray, iBytesLeft);
            trackOutput.sampleMetadata(jMax, 1, iBytesLeft, 0, null);
            this.seenIcyMetadata = true;
        }
    }

    public interface Listener {
        void onSourceInfoRefreshed(long j, boolean z, boolean z2);
    }

    public final class SampleStreamImpl implements com.google.android.exoplayer2.source.SampleStream {
        public final int track;

        public SampleStreamImpl(int i) {
            this.track = i;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.isReady(this.track);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() throws java.io.IOException {
            com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.maybeThrowError(this.track);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(com.google.android.exoplayer2.FormatHolder formatHolder, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, int i) {
            return com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.readData(this.track, formatHolder, decoderInputBuffer, i);
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j) {
            return com.google.android.exoplayer2.source.ProgressiveMediaPeriod.this.skipData(this.track, j);
        }
    }

    public static final class TrackId {
        public final int id;
        public final boolean isIcyTrack;

        public TrackId(int i, boolean z) {
            this.id = i;
            this.isIcyTrack = z;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackId.class != obj.getClass()) {
                return false;
            }
            com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackId trackId = (com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackId) obj;
            return this.id == trackId.id && this.isIcyTrack == trackId.isIcyTrack;
        }

        public int hashCode() {
            return (this.id * 31) + (this.isIcyTrack ? 1 : 0);
        }
    }

    public static final class TrackState {
        public final boolean[] trackEnabledStates;
        public final boolean[] trackIsAudioVideoFlags;
        public final boolean[] trackNotifiedDownstreamFormats;
        public final com.google.android.exoplayer2.source.TrackGroupArray tracks;

        public TrackState(com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray, boolean[] zArr) {
            this.tracks = trackGroupArray;
            this.trackIsAudioVideoFlags = zArr;
            int i = trackGroupArray.length;
            this.trackEnabledStates = new boolean[i];
            this.trackNotifiedDownstreamFormats = new boolean[i];
        }
    }

    public ProgressiveMediaPeriod(android.net.Uri uri, com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.source.ProgressiveMediaExtractor progressiveMediaExtractor, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher2, com.google.android.exoplayer2.source.ProgressiveMediaPeriod.Listener listener, com.google.android.exoplayer2.upstream.Allocator allocator, java.lang.String str, int i) {
        this.uri = uri;
        this.dataSource = dataSource;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.mediaSourceEventDispatcher = eventDispatcher2;
        this.listener = listener;
        this.allocator = allocator;
        this.customCacheKey = str;
        this.continueLoadingCheckIntervalBytes = i;
        this.progressiveMediaExtractor = progressiveMediaExtractor;
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"trackState", "seekMap"})
    private void assertPrepared() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.prepared);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.trackState);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.seekMap);
    }

    private boolean configureRetry(com.google.android.exoplayer2.source.ProgressiveMediaPeriod.ExtractingLoadable extractingLoadable, int i) {
        com.google.android.exoplayer2.extractor.SeekMap seekMap;
        if (this.length != -1 || ((seekMap = this.seekMap) != null && seekMap.getDurationUs() != com.google.android.exoplayer2.C.TIME_UNSET)) {
            this.extractedSamplesCountAtStartOfLoad = i;
            return true;
        }
        if (this.prepared && !suppressRead()) {
            this.pendingDeferredRetry = true;
            return false;
        }
        this.notifyDiscontinuity = this.prepared;
        this.lastSeekPositionUs = 0L;
        this.extractedSamplesCountAtStartOfLoad = 0;
        for (com.google.android.exoplayer2.source.SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.reset();
        }
        extractingLoadable.setLoadPosition(0L, 0L);
        return true;
    }

    private void copyLengthFromLoader(com.google.android.exoplayer2.source.ProgressiveMediaPeriod.ExtractingLoadable extractingLoadable) {
        if (this.length == -1) {
            this.length = extractingLoadable.length;
        }
    }

    public static java.util.Map<java.lang.String, java.lang.String> createIcyMetadataHeaders() {
        java.util.HashMap map = new java.util.HashMap();
        map.put(com.google.android.exoplayer2.metadata.icy.IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_NAME, "1");
        return java.util.Collections.unmodifiableMap(map);
    }

    private int getExtractedSamplesCount() {
        int writeIndex = 0;
        for (com.google.android.exoplayer2.source.SampleQueue sampleQueue : this.sampleQueues) {
            writeIndex += sampleQueue.getWriteIndex();
        }
        return writeIndex;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long getLargestQueuedTimestampUs() {
        long jMax = Long.MIN_VALUE;
        for (com.google.android.exoplayer2.source.SampleQueue sampleQueue : this.sampleQueues) {
            jMax = java.lang.Math.max(jMax, sampleQueue.getLargestQueuedTimestampUs());
        }
        return jMax;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != com.google.android.exoplayer2.C.TIME_UNSET;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeFinishPrepare() {
        if (this.released || this.prepared || !this.sampleQueuesBuilt || this.seekMap == null) {
            return;
        }
        for (com.google.android.exoplayer2.source.SampleQueue sampleQueue : this.sampleQueues) {
            if (sampleQueue.getUpstreamFormat() == null) {
                return;
            }
        }
        this.loadCondition.close();
        int length = this.sampleQueues.length;
        com.google.android.exoplayer2.source.TrackGroup[] trackGroupArr = new com.google.android.exoplayer2.source.TrackGroup[length];
        boolean[] zArr = new boolean[length];
        for (int i = 0; i < length; i++) {
            com.google.android.exoplayer2.Format formatBuild = (com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.sampleQueues[i].getUpstreamFormat());
            java.lang.String str = formatBuild.sampleMimeType;
            boolean zIsAudio = com.google.android.exoplayer2.util.MimeTypes.isAudio(str);
            boolean z = zIsAudio || com.google.android.exoplayer2.util.MimeTypes.isVideo(str);
            zArr[i] = z;
            this.haveAudioVideoTracks = z | this.haveAudioVideoTracks;
            com.google.android.exoplayer2.metadata.icy.IcyHeaders icyHeaders = this.icyHeaders;
            if (icyHeaders != null) {
                if (zIsAudio || this.sampleQueueTrackIds[i].isIcyTrack) {
                    com.google.android.exoplayer2.metadata.Metadata metadata = formatBuild.metadata;
                    formatBuild = formatBuild.buildUpon().setMetadata(metadata == null ? new com.google.android.exoplayer2.metadata.Metadata(icyHeaders) : metadata.copyWithAppendedEntries(icyHeaders)).build();
                }
                if (zIsAudio && formatBuild.averageBitrate == -1 && formatBuild.peakBitrate == -1 && icyHeaders.bitrate != -1) {
                    formatBuild = formatBuild.buildUpon().setAverageBitrate(icyHeaders.bitrate).build();
                }
            }
            trackGroupArr[i] = new com.google.android.exoplayer2.source.TrackGroup(formatBuild.copyWithCryptoType(this.drmSessionManager.getCryptoType(formatBuild)));
        }
        this.trackState = new com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackState(new com.google.android.exoplayer2.source.TrackGroupArray(trackGroupArr), zArr);
        this.prepared = true;
        ((com.google.android.exoplayer2.source.MediaPeriod.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callback)).onPrepared(this);
    }

    private void maybeNotifyDownstreamFormat(int i) {
        assertPrepared();
        com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackState trackState = this.trackState;
        boolean[] zArr = trackState.trackNotifiedDownstreamFormats;
        if (zArr[i]) {
            return;
        }
        com.google.android.exoplayer2.Format format = trackState.tracks.get(i).getFormat(0);
        this.mediaSourceEventDispatcher.downstreamFormatChanged(com.google.android.exoplayer2.util.MimeTypes.getTrackType(format.sampleMimeType), format, 0, null, this.lastSeekPositionUs);
        zArr[i] = true;
    }

    private void maybeStartDeferredRetry(int i) {
        assertPrepared();
        boolean[] zArr = this.trackState.trackIsAudioVideoFlags;
        if (this.pendingDeferredRetry && zArr[i]) {
            if (this.sampleQueues[i].isReady(false)) {
                return;
            }
            this.pendingResetPositionUs = 0L;
            this.pendingDeferredRetry = false;
            this.notifyDiscontinuity = true;
            this.lastSeekPositionUs = 0L;
            this.extractedSamplesCountAtStartOfLoad = 0;
            for (com.google.android.exoplayer2.source.SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.reset();
            }
            ((com.google.android.exoplayer2.source.MediaPeriod.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
        }
    }

    private com.google.android.exoplayer2.extractor.TrackOutput prepareTrackOutput(com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackId trackId) {
        int length = this.sampleQueues.length;
        for (int i = 0; i < length; i++) {
            if (trackId.equals(this.sampleQueueTrackIds[i])) {
                return this.sampleQueues[i];
            }
        }
        com.google.android.exoplayer2.source.SampleQueue sampleQueueCreateWithDrm = com.google.android.exoplayer2.source.SampleQueue.createWithDrm(this.allocator, this.handler.getLooper(), this.drmSessionManager, this.drmEventDispatcher);
        sampleQueueCreateWithDrm.setUpstreamFormatChangeListener(this);
        int i2 = length + 1;
        com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackId[] trackIdArr = (com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackId[]) java.util.Arrays.copyOf(this.sampleQueueTrackIds, i2);
        trackIdArr[length] = trackId;
        this.sampleQueueTrackIds = (com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackId[]) com.google.android.exoplayer2.util.Util.castNonNullTypeArray(trackIdArr);
        com.google.android.exoplayer2.source.SampleQueue[] sampleQueueArr = (com.google.android.exoplayer2.source.SampleQueue[]) java.util.Arrays.copyOf(this.sampleQueues, i2);
        sampleQueueArr[length] = sampleQueueCreateWithDrm;
        this.sampleQueues = (com.google.android.exoplayer2.source.SampleQueue[]) com.google.android.exoplayer2.util.Util.castNonNullTypeArray(sampleQueueArr);
        return sampleQueueCreateWithDrm;
    }

    private boolean seekInsideBufferUs(boolean[] zArr, long j) {
        int length = this.sampleQueues.length;
        for (int i = 0; i < length; i++) {
            if (!this.sampleQueues[i].seekTo(j, false) && (zArr[i] || !this.haveAudioVideoTracks)) {
                return false;
            }
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: setSeekMap, reason: merged with bridge method [inline-methods] */
    public void c(com.google.android.exoplayer2.extractor.SeekMap seekMap) {
        this.seekMap = this.icyHeaders == null ? seekMap : new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(com.google.android.exoplayer2.C.TIME_UNSET);
        this.durationUs = seekMap.getDurationUs();
        boolean z = this.length == -1 && seekMap.getDurationUs() == com.google.android.exoplayer2.C.TIME_UNSET;
        this.isLive = z;
        this.dataType = z ? 7 : 1;
        this.listener.onSourceInfoRefreshed(this.durationUs, seekMap.isSeekable(), this.isLive);
        if (this.prepared) {
            return;
        }
        maybeFinishPrepare();
    }

    private void startLoading() {
        com.google.android.exoplayer2.source.ProgressiveMediaPeriod.ExtractingLoadable extractingLoadable = new com.google.android.exoplayer2.source.ProgressiveMediaPeriod.ExtractingLoadable(this.uri, this.dataSource, this.progressiveMediaExtractor, this, this.loadCondition);
        if (this.prepared) {
            com.google.android.exoplayer2.util.Assertions.checkState(isPendingReset());
            long j = this.durationUs;
            if (j != com.google.android.exoplayer2.C.TIME_UNSET && this.pendingResetPositionUs > j) {
                this.loadingFinished = true;
                this.pendingResetPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;
                return;
            }
            extractingLoadable.setLoadPosition(((com.google.android.exoplayer2.extractor.SeekMap) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.seekMap)).getSeekPoints(this.pendingResetPositionUs).first.position, this.pendingResetPositionUs);
            for (com.google.android.exoplayer2.source.SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.setStartTimeUs(this.pendingResetPositionUs);
            }
            this.pendingResetPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;
        }
        this.extractedSamplesCountAtStartOfLoad = getExtractedSamplesCount();
        this.mediaSourceEventDispatcher.loadStarted(new com.google.android.exoplayer2.source.LoadEventInfo(extractingLoadable.loadTaskId, extractingLoadable.dataSpec, this.loader.startLoading(extractingLoadable, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(this.dataType))), 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs);
    }

    private boolean suppressRead() {
        return this.notifyDiscontinuity || isPendingReset();
    }

    public /* synthetic */ void b() {
        if (this.released) {
            return;
        }
        ((com.google.android.exoplayer2.source.MediaPeriod.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        if (this.loadingFinished || this.loader.hasFatalError() || this.pendingDeferredRetry) {
            return false;
        }
        if (this.prepared && this.enabledTrackCount == 0) {
            return false;
        }
        boolean zOpen = this.loadCondition.open();
        if (this.loader.isLoading()) {
            return zOpen;
        }
        startLoading();
        return true;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
        assertPrepared();
        if (isPendingReset()) {
            return;
        }
        boolean[] zArr = this.trackState.trackEnabledStates;
        int length = this.sampleQueues.length;
        for (int i = 0; i < length; i++) {
            this.sampleQueues[i].discardTo(j, z, zArr[i]);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        this.sampleQueuesBuilt = true;
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, com.google.android.exoplayer2.SeekParameters seekParameters) {
        assertPrepared();
        if (!this.seekMap.isSeekable()) {
            return 0L;
        }
        com.google.android.exoplayer2.extractor.SeekMap.SeekPoints seekPoints = this.seekMap.getSeekPoints(j);
        return seekParameters.resolveSeekPositionUs(j, seekPoints.first.timeUs, seekPoints.second.timeUs);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        long largestQueuedTimestampUs;
        assertPrepared();
        boolean[] zArr = this.trackState.trackIsAudioVideoFlags;
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.haveAudioVideoTracks) {
            int length = this.sampleQueues.length;
            largestQueuedTimestampUs = Long.MAX_VALUE;
            for (int i = 0; i < length; i++) {
                if (zArr[i] && !this.sampleQueues[i].isLastSampleQueued()) {
                    largestQueuedTimestampUs = java.lang.Math.min(largestQueuedTimestampUs, this.sampleQueues[i].getLargestQueuedTimestampUs());
                }
            }
        } else {
            largestQueuedTimestampUs = Long.MAX_VALUE;
        }
        if (largestQueuedTimestampUs == Long.MAX_VALUE) {
            largestQueuedTimestampUs = getLargestQueuedTimestampUs();
        }
        return largestQueuedTimestampUs == Long.MIN_VALUE ? this.lastSeekPositionUs : largestQueuedTimestampUs;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (this.enabledTrackCount == 0) {
            return Long.MIN_VALUE;
        }
        return getBufferedPositionUs();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public /* synthetic */ java.util.List<com.google.android.exoplayer2.offline.StreamKey> getStreamKeys(java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection> list) {
        return java.util.Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups() {
        assertPrepared();
        return this.trackState.tracks;
    }

    public com.google.android.exoplayer2.extractor.TrackOutput icyTrack() {
        return prepareTrackOutput(new com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackId(0, true));
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.loader.isLoading() && this.loadCondition.isOpen();
    }

    public boolean isReady(int i) {
        return !suppressRead() && this.sampleQueues[i].isReady(this.loadingFinished);
    }

    public void maybeThrowError() throws java.io.IOException {
        this.loader.maybeThrowError(this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(this.dataType));
    }

    public void maybeThrowError(int i) throws java.io.IOException {
        this.sampleQueues[i].maybeThrowError();
        maybeThrowError();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() throws java.io.IOException {
        maybeThrowError();
        if (this.loadingFinished && !this.prepared) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCanceled(com.google.android.exoplayer2.source.ProgressiveMediaPeriod.ExtractingLoadable extractingLoadable, long j, long j2, boolean z) {
        com.google.android.exoplayer2.upstream.StatsDataSource statsDataSource = extractingLoadable.dataSource;
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(extractingLoadable.loadTaskId, extractingLoadable.dataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j, j2, statsDataSource.getBytesRead());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(extractingLoadable.loadTaskId);
        this.mediaSourceEventDispatcher.loadCanceled(loadEventInfo, 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs);
        if (z) {
            return;
        }
        copyLengthFromLoader(extractingLoadable);
        for (com.google.android.exoplayer2.source.SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.reset();
        }
        if (this.enabledTrackCount > 0) {
            ((com.google.android.exoplayer2.source.MediaPeriod.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCompleted(com.google.android.exoplayer2.source.ProgressiveMediaPeriod.ExtractingLoadable extractingLoadable, long j, long j2) {
        com.google.android.exoplayer2.extractor.SeekMap seekMap;
        if (this.durationUs == com.google.android.exoplayer2.C.TIME_UNSET && (seekMap = this.seekMap) != null) {
            boolean zIsSeekable = seekMap.isSeekable();
            long largestQueuedTimestampUs = getLargestQueuedTimestampUs();
            long j3 = largestQueuedTimestampUs == Long.MIN_VALUE ? 0L : largestQueuedTimestampUs + 10000;
            this.durationUs = j3;
            this.listener.onSourceInfoRefreshed(j3, zIsSeekable, this.isLive);
        }
        com.google.android.exoplayer2.upstream.StatsDataSource statsDataSource = extractingLoadable.dataSource;
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(extractingLoadable.loadTaskId, extractingLoadable.dataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j, j2, statsDataSource.getBytesRead());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(extractingLoadable.loadTaskId);
        this.mediaSourceEventDispatcher.loadCompleted(loadEventInfo, 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs);
        copyLengthFromLoader(extractingLoadable);
        this.loadingFinished = true;
        ((com.google.android.exoplayer2.source.MediaPeriod.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callback)).onContinueLoadingRequested(this);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public com.google.android.exoplayer2.upstream.Loader.LoadErrorAction onLoadError(com.google.android.exoplayer2.source.ProgressiveMediaPeriod.ExtractingLoadable extractingLoadable, long j, long j2, java.io.IOException iOException, int i) {
        boolean z;
        com.google.android.exoplayer2.source.ProgressiveMediaPeriod.ExtractingLoadable extractingLoadable2;
        com.google.android.exoplayer2.upstream.Loader.LoadErrorAction loadErrorActionCreateRetryAction;
        copyLengthFromLoader(extractingLoadable);
        com.google.android.exoplayer2.upstream.StatsDataSource statsDataSource = extractingLoadable.dataSource;
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(extractingLoadable.loadTaskId, extractingLoadable.dataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j, j2, statsDataSource.getBytesRead());
        long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(new com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new com.google.android.exoplayer2.source.MediaLoadData(1, -1, null, 0, null, com.google.android.exoplayer2.util.Util.usToMs(extractingLoadable.seekTimeUs), com.google.android.exoplayer2.util.Util.usToMs(this.durationUs)), iOException, i));
        if (retryDelayMsFor == com.google.android.exoplayer2.C.TIME_UNSET) {
            loadErrorActionCreateRetryAction = com.google.android.exoplayer2.upstream.Loader.DONT_RETRY_FATAL;
        } else {
            int extractedSamplesCount = getExtractedSamplesCount();
            if (extractedSamplesCount > this.extractedSamplesCountAtStartOfLoad) {
                extractingLoadable2 = extractingLoadable;
                z = true;
            } else {
                z = false;
                extractingLoadable2 = extractingLoadable;
            }
            loadErrorActionCreateRetryAction = configureRetry(extractingLoadable2, extractedSamplesCount) ? com.google.android.exoplayer2.upstream.Loader.createRetryAction(z, retryDelayMsFor) : com.google.android.exoplayer2.upstream.Loader.DONT_RETRY;
        }
        boolean z2 = !loadErrorActionCreateRetryAction.isRetry();
        this.mediaSourceEventDispatcher.loadError(loadEventInfo, 1, -1, null, 0, null, extractingLoadable.seekTimeUs, this.durationUs, iOException, z2);
        if (z2) {
            this.loadErrorHandlingPolicy.onLoadTaskConcluded(extractingLoadable.loadTaskId);
        }
        return loadErrorActionCreateRetryAction;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        for (com.google.android.exoplayer2.source.SampleQueue sampleQueue : this.sampleQueues) {
            sampleQueue.release();
        }
        this.progressiveMediaExtractor.release();
    }

    @Override // com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener
    public void onUpstreamFormatChanged(com.google.android.exoplayer2.Format format) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(com.google.android.exoplayer2.source.MediaPeriod.Callback callback, long j) {
        this.callback = callback;
        this.loadCondition.open();
        startLoading();
    }

    public int readData(int i, com.google.android.exoplayer2.FormatHolder formatHolder, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, int i2) {
        if (suppressRead()) {
            return -3;
        }
        maybeNotifyDownstreamFormat(i);
        int i3 = this.sampleQueues[i].read(formatHolder, decoderInputBuffer, i2, this.loadingFinished);
        if (i3 == -3) {
            maybeStartDeferredRetry(i);
        }
        return i3;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        if (!this.notifyDiscontinuity) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        if (!this.loadingFinished && getExtractedSamplesCount() <= this.extractedSamplesCountAtStartOfLoad) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        this.notifyDiscontinuity = false;
        return this.lastSeekPositionUs;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
    }

    public void release() {
        if (this.prepared) {
            for (com.google.android.exoplayer2.source.SampleQueue sampleQueue : this.sampleQueues) {
                sampleQueue.preRelease();
            }
        }
        this.loader.release(this);
        this.handler.removeCallbacksAndMessages(null);
        this.callback = null;
        this.released = true;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(final com.google.android.exoplayer2.extractor.SeekMap seekMap) {
        this.handler.post(new java.lang.Runnable() { // from class: e.c.a.a.n2.q
            @Override // java.lang.Runnable
            public final void run() {
                this.a.c(seekMap);
            }
        });
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        assertPrepared();
        boolean[] zArr = this.trackState.trackIsAudioVideoFlags;
        if (!this.seekMap.isSeekable()) {
            j = 0;
        }
        int i = 0;
        this.notifyDiscontinuity = false;
        this.lastSeekPositionUs = j;
        if (isPendingReset()) {
            this.pendingResetPositionUs = j;
            return j;
        }
        if (this.dataType != 7 && seekInsideBufferUs(zArr, j)) {
            return j;
        }
        this.pendingDeferredRetry = false;
        this.pendingResetPositionUs = j;
        this.loadingFinished = false;
        if (this.loader.isLoading()) {
            com.google.android.exoplayer2.source.SampleQueue[] sampleQueueArr = this.sampleQueues;
            int length = sampleQueueArr.length;
            while (i < length) {
                sampleQueueArr[i].discardToEnd();
                i++;
            }
            this.loader.cancelLoading();
        } else {
            this.loader.clearFatalError();
            com.google.android.exoplayer2.source.SampleQueue[] sampleQueueArr2 = this.sampleQueues;
            int length2 = sampleQueueArr2.length;
            while (i < length2) {
                sampleQueueArr2[i].reset();
                i++;
            }
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        assertPrepared();
        com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackState trackState = this.trackState;
        com.google.android.exoplayer2.source.TrackGroupArray trackGroupArray = trackState.tracks;
        boolean[] zArr3 = trackState.trackEnabledStates;
        int i = this.enabledTrackCount;
        int i2 = 0;
        for (int i3 = 0; i3 < exoTrackSelectionArr.length; i3++) {
            if (sampleStreamArr[i3] != null && (exoTrackSelectionArr[i3] == null || !zArr[i3])) {
                int i4 = ((com.google.android.exoplayer2.source.ProgressiveMediaPeriod.SampleStreamImpl) sampleStreamArr[i3]).track;
                com.google.android.exoplayer2.util.Assertions.checkState(zArr3[i4]);
                this.enabledTrackCount--;
                zArr3[i4] = false;
                sampleStreamArr[i3] = null;
            }
        }
        boolean z = !this.seenFirstTrackSelection ? j == 0 : i != 0;
        for (int i5 = 0; i5 < exoTrackSelectionArr.length; i5++) {
            if (sampleStreamArr[i5] == null && exoTrackSelectionArr[i5] != null) {
                com.google.android.exoplayer2.trackselection.ExoTrackSelection exoTrackSelection = exoTrackSelectionArr[i5];
                com.google.android.exoplayer2.util.Assertions.checkState(exoTrackSelection.length() == 1);
                com.google.android.exoplayer2.util.Assertions.checkState(exoTrackSelection.getIndexInTrackGroup(0) == 0);
                int iIndexOf = trackGroupArray.indexOf(exoTrackSelection.getTrackGroup());
                com.google.android.exoplayer2.util.Assertions.checkState(!zArr3[iIndexOf]);
                this.enabledTrackCount++;
                zArr3[iIndexOf] = true;
                sampleStreamArr[i5] = new com.google.android.exoplayer2.source.ProgressiveMediaPeriod.SampleStreamImpl(iIndexOf);
                zArr2[i5] = true;
                if (!z) {
                    com.google.android.exoplayer2.source.SampleQueue sampleQueue = this.sampleQueues[iIndexOf];
                    z = (sampleQueue.seekTo(j, true) || sampleQueue.getReadIndex() == 0) ? false : true;
                }
            }
        }
        if (this.enabledTrackCount == 0) {
            this.pendingDeferredRetry = false;
            this.notifyDiscontinuity = false;
            if (this.loader.isLoading()) {
                com.google.android.exoplayer2.source.SampleQueue[] sampleQueueArr = this.sampleQueues;
                int length = sampleQueueArr.length;
                while (i2 < length) {
                    sampleQueueArr[i2].discardToEnd();
                    i2++;
                }
                this.loader.cancelLoading();
            } else {
                com.google.android.exoplayer2.source.SampleQueue[] sampleQueueArr2 = this.sampleQueues;
                int length2 = sampleQueueArr2.length;
                while (i2 < length2) {
                    sampleQueueArr2[i2].reset();
                    i2++;
                }
            }
        } else if (z) {
            j = seekToUs(j);
            while (i2 < sampleStreamArr.length) {
                if (sampleStreamArr[i2] != null) {
                    zArr2[i2] = true;
                }
                i2++;
            }
        }
        this.seenFirstTrackSelection = true;
        return j;
    }

    public int skipData(int i, long j) {
        if (suppressRead()) {
            return 0;
        }
        maybeNotifyDownstreamFormat(i);
        com.google.android.exoplayer2.source.SampleQueue sampleQueue = this.sampleQueues[i];
        int skipCount = sampleQueue.getSkipCount(j, this.loadingFinished);
        sampleQueue.skip(skipCount);
        if (skipCount == 0) {
            maybeStartDeferredRetry(i);
        }
        return skipCount;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public com.google.android.exoplayer2.extractor.TrackOutput track(int i, int i2) {
        return prepareTrackOutput(new com.google.android.exoplayer2.source.ProgressiveMediaPeriod.TrackId(i, false));
    }
}
