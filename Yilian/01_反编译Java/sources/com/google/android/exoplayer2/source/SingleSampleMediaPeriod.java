package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class SingleSampleMediaPeriod implements com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.upstream.Loader.Callback<com.google.android.exoplayer2.source.SingleSampleMediaPeriod.SourceLoadable> {
    public static final int INITIAL_SAMPLE_SIZE = 1024;
    public static final java.lang.String TAG = "SingleSampleMediaPeriod";
    public final com.google.android.exoplayer2.upstream.DataSource.Factory dataSourceFactory;
    public final com.google.android.exoplayer2.upstream.DataSpec dataSpec;
    public final long durationUs;
    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher;
    public final com.google.android.exoplayer2.Format format;
    public final com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public boolean loadingFinished;
    public byte[] sampleData;
    public int sampleSize;
    public final com.google.android.exoplayer2.source.TrackGroupArray tracks;
    public final com.google.android.exoplayer2.upstream.TransferListener transferListener;
    public final boolean treatLoadErrorsAsEndOfStream;
    public final java.util.ArrayList<com.google.android.exoplayer2.source.SingleSampleMediaPeriod.SampleStreamImpl> sampleStreams = new java.util.ArrayList<>();
    public final com.google.android.exoplayer2.upstream.Loader loader = new com.google.android.exoplayer2.upstream.Loader(TAG);

    public final class SampleStreamImpl implements com.google.android.exoplayer2.source.SampleStream {
        public static final int STREAM_STATE_END_OF_STREAM = 2;
        public static final int STREAM_STATE_SEND_FORMAT = 0;
        public static final int STREAM_STATE_SEND_SAMPLE = 1;
        public boolean notifiedDownstreamFormat;
        public int streamState;

        public SampleStreamImpl() {
        }

        private void maybeNotifyDownstreamFormat() {
            if (this.notifiedDownstreamFormat) {
                return;
            }
            com.google.android.exoplayer2.source.SingleSampleMediaPeriod.this.eventDispatcher.downstreamFormatChanged(com.google.android.exoplayer2.util.MimeTypes.getTrackType(com.google.android.exoplayer2.source.SingleSampleMediaPeriod.this.format.sampleMimeType), com.google.android.exoplayer2.source.SingleSampleMediaPeriod.this.format, 0, null, 0L);
            this.notifiedDownstreamFormat = true;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public boolean isReady() {
            return com.google.android.exoplayer2.source.SingleSampleMediaPeriod.this.loadingFinished;
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public void maybeThrowError() throws java.io.IOException {
            com.google.android.exoplayer2.source.SingleSampleMediaPeriod singleSampleMediaPeriod = com.google.android.exoplayer2.source.SingleSampleMediaPeriod.this;
            if (singleSampleMediaPeriod.treatLoadErrorsAsEndOfStream) {
                return;
            }
            singleSampleMediaPeriod.loader.maybeThrowError();
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int readData(com.google.android.exoplayer2.FormatHolder formatHolder, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, int i) {
            maybeNotifyDownstreamFormat();
            com.google.android.exoplayer2.source.SingleSampleMediaPeriod singleSampleMediaPeriod = com.google.android.exoplayer2.source.SingleSampleMediaPeriod.this;
            if (singleSampleMediaPeriod.loadingFinished && singleSampleMediaPeriod.sampleData == null) {
                this.streamState = 2;
            }
            int i2 = this.streamState;
            if (i2 == 2) {
                decoderInputBuffer.addFlag(4);
                return -4;
            }
            if ((i & 2) != 0 || i2 == 0) {
                formatHolder.format = com.google.android.exoplayer2.source.SingleSampleMediaPeriod.this.format;
                this.streamState = 1;
                return -5;
            }
            com.google.android.exoplayer2.source.SingleSampleMediaPeriod singleSampleMediaPeriod2 = com.google.android.exoplayer2.source.SingleSampleMediaPeriod.this;
            if (!singleSampleMediaPeriod2.loadingFinished) {
                return -3;
            }
            com.google.android.exoplayer2.util.Assertions.checkNotNull(singleSampleMediaPeriod2.sampleData);
            decoderInputBuffer.addFlag(1);
            decoderInputBuffer.timeUs = 0L;
            if ((i & 4) == 0) {
                decoderInputBuffer.ensureSpaceForWrite(com.google.android.exoplayer2.source.SingleSampleMediaPeriod.this.sampleSize);
                java.nio.ByteBuffer byteBuffer = decoderInputBuffer.data;
                com.google.android.exoplayer2.source.SingleSampleMediaPeriod singleSampleMediaPeriod3 = com.google.android.exoplayer2.source.SingleSampleMediaPeriod.this;
                byteBuffer.put(singleSampleMediaPeriod3.sampleData, 0, singleSampleMediaPeriod3.sampleSize);
            }
            if ((i & 1) == 0) {
                this.streamState = 2;
            }
            return -4;
        }

        public void reset() {
            if (this.streamState == 2) {
                this.streamState = 1;
            }
        }

        @Override // com.google.android.exoplayer2.source.SampleStream
        public int skipData(long j) {
            maybeNotifyDownstreamFormat();
            if (j <= 0 || this.streamState == 2) {
                return 0;
            }
            this.streamState = 2;
            return 1;
        }
    }

    public static final class SourceLoadable implements com.google.android.exoplayer2.upstream.Loader.Loadable {
        public final com.google.android.exoplayer2.upstream.StatsDataSource dataSource;
        public final com.google.android.exoplayer2.upstream.DataSpec dataSpec;
        public final long loadTaskId = com.google.android.exoplayer2.source.LoadEventInfo.getNewId();
        public byte[] sampleData;

        public SourceLoadable(com.google.android.exoplayer2.upstream.DataSpec dataSpec, com.google.android.exoplayer2.upstream.DataSource dataSource) {
            this.dataSpec = dataSpec;
            this.dataSource = new com.google.android.exoplayer2.upstream.StatsDataSource(dataSource);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void cancelLoad() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
        public void load() {
            this.dataSource.resetBytesRead();
            try {
                this.dataSource.open(this.dataSpec);
                int i = 0;
                while (i != -1) {
                    int bytesRead = (int) this.dataSource.getBytesRead();
                    if (this.sampleData == null) {
                        this.sampleData = new byte[1024];
                    } else if (bytesRead == this.sampleData.length) {
                        this.sampleData = java.util.Arrays.copyOf(this.sampleData, this.sampleData.length * 2);
                    }
                    i = this.dataSource.read(this.sampleData, bytesRead, this.sampleData.length - bytesRead);
                }
            } finally {
                com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(this.dataSource);
            }
        }
    }

    public SingleSampleMediaPeriod(com.google.android.exoplayer2.upstream.DataSpec dataSpec, com.google.android.exoplayer2.upstream.DataSource.Factory factory, com.google.android.exoplayer2.upstream.TransferListener transferListener, com.google.android.exoplayer2.Format format, long j, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher, boolean z) {
        this.dataSpec = dataSpec;
        this.dataSourceFactory = factory;
        this.transferListener = transferListener;
        this.format = format;
        this.durationUs = j;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.eventDispatcher = eventDispatcher;
        this.treatLoadErrorsAsEndOfStream = z;
        this.tracks = new com.google.android.exoplayer2.source.TrackGroupArray(new com.google.android.exoplayer2.source.TrackGroup(format));
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        if (this.loadingFinished || this.loader.isLoading() || this.loader.hasFatalError()) {
            return false;
        }
        com.google.android.exoplayer2.upstream.DataSource dataSourceCreateDataSource = this.dataSourceFactory.createDataSource();
        com.google.android.exoplayer2.upstream.TransferListener transferListener = this.transferListener;
        if (transferListener != null) {
            dataSourceCreateDataSource.addTransferListener(transferListener);
        }
        com.google.android.exoplayer2.source.SingleSampleMediaPeriod.SourceLoadable sourceLoadable = new com.google.android.exoplayer2.source.SingleSampleMediaPeriod.SourceLoadable(this.dataSpec, dataSourceCreateDataSource);
        this.eventDispatcher.loadStarted(new com.google.android.exoplayer2.source.LoadEventInfo(sourceLoadable.loadTaskId, this.dataSpec, this.loader.startLoading(sourceLoadable, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(1))), 1, -1, this.format, 0, null, 0L, this.durationUs);
        return true;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void discardBuffer(long j, boolean z) {
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long getAdjustedSeekPositionUs(long j, com.google.android.exoplayer2.SeekParameters seekParameters) {
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        return this.loadingFinished ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        return (this.loadingFinished || this.loader.isLoading()) ? Long.MIN_VALUE : 0L;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public /* synthetic */ java.util.List<com.google.android.exoplayer2.offline.StreamKey> getStreamKeys(java.util.List<com.google.android.exoplayer2.trackselection.ExoTrackSelection> list) {
        return java.util.Collections.emptyList();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups() {
        return this.tracks;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.loader.isLoading();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void maybeThrowPrepareError() {
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCanceled(com.google.android.exoplayer2.source.SingleSampleMediaPeriod.SourceLoadable sourceLoadable, long j, long j2, boolean z) {
        com.google.android.exoplayer2.upstream.StatsDataSource statsDataSource = sourceLoadable.dataSource;
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(sourceLoadable.loadTaskId, sourceLoadable.dataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j, j2, statsDataSource.getBytesRead());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(sourceLoadable.loadTaskId);
        this.eventDispatcher.loadCanceled(loadEventInfo, 1, -1, null, 0, null, 0L, this.durationUs);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCompleted(com.google.android.exoplayer2.source.SingleSampleMediaPeriod.SourceLoadable sourceLoadable, long j, long j2) {
        this.sampleSize = (int) sourceLoadable.dataSource.getBytesRead();
        this.sampleData = (byte[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(sourceLoadable.sampleData);
        this.loadingFinished = true;
        com.google.android.exoplayer2.upstream.StatsDataSource statsDataSource = sourceLoadable.dataSource;
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(sourceLoadable.loadTaskId, sourceLoadable.dataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j, j2, this.sampleSize);
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(sourceLoadable.loadTaskId);
        this.eventDispatcher.loadCompleted(loadEventInfo, 1, -1, this.format, 0, null, 0L, this.durationUs);
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public com.google.android.exoplayer2.upstream.Loader.LoadErrorAction onLoadError(com.google.android.exoplayer2.source.SingleSampleMediaPeriod.SourceLoadable sourceLoadable, long j, long j2, java.io.IOException iOException, int i) {
        com.google.android.exoplayer2.upstream.Loader.LoadErrorAction loadErrorActionCreateRetryAction;
        com.google.android.exoplayer2.upstream.StatsDataSource statsDataSource = sourceLoadable.dataSource;
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(sourceLoadable.loadTaskId, sourceLoadable.dataSpec, statsDataSource.getLastOpenedUri(), statsDataSource.getLastResponseHeaders(), j, j2, statsDataSource.getBytesRead());
        long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(new com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new com.google.android.exoplayer2.source.MediaLoadData(1, -1, this.format, 0, null, 0L, com.google.android.exoplayer2.util.Util.usToMs(this.durationUs)), iOException, i));
        boolean z = retryDelayMsFor == com.google.android.exoplayer2.C.TIME_UNSET || i >= this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(1);
        if (this.treatLoadErrorsAsEndOfStream && z) {
            com.google.android.exoplayer2.util.Log.w(TAG, "Loading failed, treating as end-of-stream.", iOException);
            this.loadingFinished = true;
            loadErrorActionCreateRetryAction = com.google.android.exoplayer2.upstream.Loader.DONT_RETRY;
        } else {
            loadErrorActionCreateRetryAction = retryDelayMsFor != com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.upstream.Loader.createRetryAction(false, retryDelayMsFor) : com.google.android.exoplayer2.upstream.Loader.DONT_RETRY_FATAL;
        }
        com.google.android.exoplayer2.upstream.Loader.LoadErrorAction loadErrorAction = loadErrorActionCreateRetryAction;
        boolean z2 = !loadErrorAction.isRetry();
        this.eventDispatcher.loadError(loadEventInfo, 1, -1, this.format, 0, null, 0L, this.durationUs, iOException, z2);
        if (z2) {
            this.loadErrorHandlingPolicy.onLoadTaskConcluded(sourceLoadable.loadTaskId);
        }
        return loadErrorAction;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public void prepare(com.google.android.exoplayer2.source.MediaPeriod.Callback callback, long j) {
        callback.onPrepared(this);
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long readDiscontinuity() {
        return com.google.android.exoplayer2.C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod, com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
    }

    public void release() {
        this.loader.release();
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long seekToUs(long j) {
        for (int i = 0; i < this.sampleStreams.size(); i++) {
            this.sampleStreams.get(i).reset();
        }
        return j;
    }

    @Override // com.google.android.exoplayer2.source.MediaPeriod
    public long selectTracks(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] exoTrackSelectionArr, boolean[] zArr, com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr, boolean[] zArr2, long j) {
        for (int i = 0; i < exoTrackSelectionArr.length; i++) {
            if (sampleStreamArr[i] != null && (exoTrackSelectionArr[i] == null || !zArr[i])) {
                this.sampleStreams.remove(sampleStreamArr[i]);
                sampleStreamArr[i] = null;
            }
            if (sampleStreamArr[i] == null && exoTrackSelectionArr[i] != null) {
                com.google.android.exoplayer2.source.SingleSampleMediaPeriod.SampleStreamImpl sampleStreamImpl = new com.google.android.exoplayer2.source.SingleSampleMediaPeriod.SampleStreamImpl();
                this.sampleStreams.add(sampleStreamImpl);
                sampleStreamArr[i] = sampleStreamImpl;
                zArr2[i] = true;
            }
        }
        return j;
    }
}
