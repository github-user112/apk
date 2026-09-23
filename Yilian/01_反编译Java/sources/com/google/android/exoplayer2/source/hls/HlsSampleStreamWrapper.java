package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public final class HlsSampleStreamWrapper implements com.google.android.exoplayer2.upstream.Loader.Callback<com.google.android.exoplayer2.source.chunk.Chunk>, com.google.android.exoplayer2.upstream.Loader.ReleaseCallback, com.google.android.exoplayer2.source.SequenceableLoader, com.google.android.exoplayer2.extractor.ExtractorOutput, com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener {
    public static final java.util.Set<java.lang.Integer> MAPPABLE_TYPES = java.util.Collections.unmodifiableSet(new java.util.HashSet(java.util.Arrays.asList(1, 2, 5)));
    public static final int SAMPLE_QUEUE_INDEX_NO_MAPPING_FATAL = -2;
    public static final int SAMPLE_QUEUE_INDEX_NO_MAPPING_NON_FATAL = -3;
    public static final int SAMPLE_QUEUE_INDEX_PENDING = -1;
    public static final java.lang.String TAG = "HlsSampleStreamWrapper";
    public final com.google.android.exoplayer2.upstream.Allocator allocator;
    public final com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.Callback callback;
    public final com.google.android.exoplayer2.source.hls.HlsChunkSource chunkSource;
    public com.google.android.exoplayer2.Format downstreamTrackFormat;
    public final com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher drmEventDispatcher;
    public com.google.android.exoplayer2.drm.DrmInitData drmInitData;
    public final com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager;
    public com.google.android.exoplayer2.extractor.TrackOutput emsgUnwrappingTrackOutput;
    public int enabledTrackGroupCount;
    public final android.os.Handler handler;
    public boolean haveAudioVideoSampleQueues;
    public final java.util.ArrayList<com.google.android.exoplayer2.source.hls.HlsSampleStream> hlsSampleStreams;
    public long lastSeekPositionUs;
    public final com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy;
    public com.google.android.exoplayer2.source.chunk.Chunk loadingChunk;
    public boolean loadingFinished;
    public final java.lang.Runnable maybeFinishPrepareRunnable;
    public final java.util.ArrayList<com.google.android.exoplayer2.source.hls.HlsMediaChunk> mediaChunks;
    public final com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher mediaSourceEventDispatcher;
    public final int metadataType;
    public final com.google.android.exoplayer2.Format muxedAudioFormat;
    public final java.lang.Runnable onTracksEndedRunnable;
    public java.util.Set<com.google.android.exoplayer2.source.TrackGroup> optionalTrackGroups;
    public final java.util.Map<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData> overridingDrmInitData;
    public long pendingResetPositionUs;
    public boolean pendingResetUpstreamFormats;
    public boolean prepared;
    public int primarySampleQueueIndex;
    public int primarySampleQueueType;
    public int primaryTrackGroupIndex;
    public final java.util.List<com.google.android.exoplayer2.source.hls.HlsMediaChunk> readOnlyMediaChunks;
    public boolean released;
    public long sampleOffsetUs;
    public boolean sampleQueuesBuilt;
    public boolean seenFirstTrackSelection;
    public com.google.android.exoplayer2.source.hls.HlsMediaChunk sourceChunk;
    public int[] trackGroupToSampleQueueIndex;
    public com.google.android.exoplayer2.source.TrackGroupArray trackGroups;
    public final int trackType;
    public boolean tracksEnded;
    public com.google.android.exoplayer2.Format upstreamTrackFormat;
    public final com.google.android.exoplayer2.upstream.Loader loader = new com.google.android.exoplayer2.upstream.Loader("Loader:HlsSampleStreamWrapper");
    public final com.google.android.exoplayer2.source.hls.HlsChunkSource.HlsChunkHolder nextChunkHolder = new com.google.android.exoplayer2.source.hls.HlsChunkSource.HlsChunkHolder();
    public int[] sampleQueueTrackIds = new int[0];
    public java.util.Set<java.lang.Integer> sampleQueueMappingDoneByType = new java.util.HashSet(MAPPABLE_TYPES.size());
    public android.util.SparseIntArray sampleQueueIndicesByType = new android.util.SparseIntArray(MAPPABLE_TYPES.size());
    public com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue[] sampleQueues = new com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue[0];
    public boolean[] sampleQueueIsAudioVideoFlags = new boolean[0];
    public boolean[] sampleQueuesEnabledStates = new boolean[0];

    public interface Callback extends com.google.android.exoplayer2.source.SequenceableLoader.Callback<com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper> {
        void onPlaylistRefreshRequired(android.net.Uri uri);

        void onPrepared();
    }

    public static class EmsgUnwrappingTrackOutput implements com.google.android.exoplayer2.extractor.TrackOutput {
        public static final java.lang.String TAG = "EmsgUnwrappingTrackOutput";
        public byte[] buffer;
        public int bufferPosition;
        public final com.google.android.exoplayer2.extractor.TrackOutput delegate;
        public final com.google.android.exoplayer2.Format delegateFormat;
        public final com.google.android.exoplayer2.metadata.emsg.EventMessageDecoder emsgDecoder = new com.google.android.exoplayer2.metadata.emsg.EventMessageDecoder();
        public com.google.android.exoplayer2.Format format;
        public static final com.google.android.exoplayer2.Format ID3_FORMAT = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_ID3).build();
        public static final com.google.android.exoplayer2.Format EMSG_FORMAT = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_EMSG).build();

        public EmsgUnwrappingTrackOutput(com.google.android.exoplayer2.extractor.TrackOutput trackOutput, int i) {
            com.google.android.exoplayer2.Format format;
            this.delegate = trackOutput;
            if (i == 1) {
                format = ID3_FORMAT;
            } else {
                if (i != 3) {
                    throw new java.lang.IllegalArgumentException(e.a.c.a.a.F(33, "Unknown metadataType: ", i));
                }
                format = EMSG_FORMAT;
            }
            this.delegateFormat = format;
            this.buffer = new byte[0];
            this.bufferPosition = 0;
        }

        private boolean emsgContainsExpectedWrappedFormat(com.google.android.exoplayer2.metadata.emsg.EventMessage eventMessage) {
            com.google.android.exoplayer2.Format wrappedMetadataFormat = eventMessage.getWrappedMetadataFormat();
            return wrappedMetadataFormat != null && com.google.android.exoplayer2.util.Util.areEqual(this.delegateFormat.sampleMimeType, wrappedMetadataFormat.sampleMimeType);
        }

        private void ensureBufferCapacity(int i) {
            byte[] bArr = this.buffer;
            if (bArr.length < i) {
                this.buffer = java.util.Arrays.copyOf(bArr, (i / 2) + i);
            }
        }

        private com.google.android.exoplayer2.util.ParsableByteArray getSampleAndTrimBuffer(int i, int i2) {
            int i3 = this.bufferPosition - i2;
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(java.util.Arrays.copyOfRange(this.buffer, i3 - i, i3));
            byte[] bArr = this.buffer;
            java.lang.System.arraycopy(bArr, i3, bArr, 0, i2);
            this.bufferPosition = i2;
            return parsableByteArray;
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void format(com.google.android.exoplayer2.Format format) {
            this.format = format;
            this.delegate.format(this.delegateFormat);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public /* synthetic */ int sampleData(com.google.android.exoplayer2.upstream.DataReader dataReader, int i, boolean z) {
            return sampleData(dataReader, i, z, 0);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public int sampleData(com.google.android.exoplayer2.upstream.DataReader dataReader, int i, boolean z, int i2) throws java.io.EOFException {
            ensureBufferCapacity(this.bufferPosition + i);
            int i3 = dataReader.read(this.buffer, this.bufferPosition, i);
            if (i3 != -1) {
                this.bufferPosition += i3;
                return i3;
            }
            if (z) {
                return -1;
            }
            throw new java.io.EOFException();
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public /* synthetic */ void sampleData(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
            sampleData(parsableByteArray, i, 0);
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleData(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i, int i2) {
            ensureBufferCapacity(this.bufferPosition + i);
            parsableByteArray.readBytes(this.buffer, this.bufferPosition, i);
            this.bufferPosition += i;
        }

        @Override // com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleMetadata(long j, int i, int i2, int i3, com.google.android.exoplayer2.extractor.TrackOutput.CryptoData cryptoData) {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(this.format);
            com.google.android.exoplayer2.util.ParsableByteArray sampleAndTrimBuffer = getSampleAndTrimBuffer(i2, i3);
            if (!com.google.android.exoplayer2.util.Util.areEqual(this.format.sampleMimeType, this.delegateFormat.sampleMimeType)) {
                if (!com.google.android.exoplayer2.util.MimeTypes.APPLICATION_EMSG.equals(this.format.sampleMimeType)) {
                    java.lang.String strValueOf = java.lang.String.valueOf(this.format.sampleMimeType);
                    com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Ignoring sample for unsupported format: ".concat(strValueOf) : new java.lang.String("Ignoring sample for unsupported format: "));
                    return;
                } else {
                    com.google.android.exoplayer2.metadata.emsg.EventMessage eventMessageDecode = this.emsgDecoder.decode(sampleAndTrimBuffer);
                    if (!emsgContainsExpectedWrappedFormat(eventMessageDecode)) {
                        com.google.android.exoplayer2.util.Log.w(TAG, java.lang.String.format("Ignoring EMSG. Expected it to contain wrapped %s but actual wrapped format: %s", this.delegateFormat.sampleMimeType, eventMessageDecode.getWrappedMetadataFormat()));
                        return;
                    }
                    sampleAndTrimBuffer = new com.google.android.exoplayer2.util.ParsableByteArray((byte[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(eventMessageDecode.getWrappedMetadataBytes()));
                }
            }
            int iBytesLeft = sampleAndTrimBuffer.bytesLeft();
            this.delegate.sampleData(sampleAndTrimBuffer, iBytesLeft);
            this.delegate.sampleMetadata(j, i, iBytesLeft, i3, cryptoData);
        }
    }

    public static final class HlsSampleQueue extends com.google.android.exoplayer2.source.SampleQueue {
        public com.google.android.exoplayer2.drm.DrmInitData drmInitData;
        public final java.util.Map<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData> overridingDrmInitData;

        public HlsSampleQueue(com.google.android.exoplayer2.upstream.Allocator allocator, android.os.Looper looper, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, java.util.Map<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData> map) {
            super(allocator, looper, drmSessionManager, eventDispatcher);
            this.overridingDrmInitData = map;
        }

        private com.google.android.exoplayer2.metadata.Metadata getAdjustedMetadata(com.google.android.exoplayer2.metadata.Metadata metadata) {
            if (metadata == null) {
                return null;
            }
            int length = metadata.length();
            int i = 0;
            int i2 = 0;
            while (true) {
                if (i2 >= length) {
                    i2 = -1;
                    break;
                }
                com.google.android.exoplayer2.metadata.Metadata.Entry entry = metadata.get(i2);
                if ((entry instanceof com.google.android.exoplayer2.metadata.id3.PrivFrame) && com.google.android.exoplayer2.source.hls.HlsMediaChunk.PRIV_TIMESTAMP_FRAME_OWNER.equals(((com.google.android.exoplayer2.metadata.id3.PrivFrame) entry).owner)) {
                    break;
                }
                i2++;
            }
            if (i2 == -1) {
                return metadata;
            }
            if (length == 1) {
                return null;
            }
            com.google.android.exoplayer2.metadata.Metadata.Entry[] entryArr = new com.google.android.exoplayer2.metadata.Metadata.Entry[length - 1];
            while (i < length) {
                if (i != i2) {
                    entryArr[i < i2 ? i : i - 1] = metadata.get(i);
                }
                i++;
            }
            return new com.google.android.exoplayer2.metadata.Metadata(entryArr);
        }

        @Override // com.google.android.exoplayer2.source.SampleQueue
        public com.google.android.exoplayer2.Format getAdjustedUpstreamFormat(com.google.android.exoplayer2.Format format) {
            com.google.android.exoplayer2.drm.DrmInitData drmInitData;
            com.google.android.exoplayer2.drm.DrmInitData drmInitData2 = this.drmInitData;
            if (drmInitData2 == null) {
                drmInitData2 = format.drmInitData;
            }
            if (drmInitData2 != null && (drmInitData = this.overridingDrmInitData.get(drmInitData2.schemeType)) != null) {
                drmInitData2 = drmInitData;
            }
            com.google.android.exoplayer2.metadata.Metadata adjustedMetadata = getAdjustedMetadata(format.metadata);
            if (drmInitData2 != format.drmInitData || adjustedMetadata != format.metadata) {
                format = format.buildUpon().setDrmInitData(drmInitData2).setMetadata(adjustedMetadata).build();
            }
            return super.getAdjustedUpstreamFormat(format);
        }

        @Override // com.google.android.exoplayer2.source.SampleQueue, com.google.android.exoplayer2.extractor.TrackOutput
        public void sampleMetadata(long j, int i, int i2, int i3, com.google.android.exoplayer2.extractor.TrackOutput.CryptoData cryptoData) {
            super.sampleMetadata(j, i, i2, i3, cryptoData);
        }

        public void setDrmInitData(com.google.android.exoplayer2.drm.DrmInitData drmInitData) {
            this.drmInitData = drmInitData;
            invalidateUpstreamFormatAdjustment();
        }

        public void setSourceChunk(com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk) {
            sourceId(hlsMediaChunk.uid);
        }
    }

    public HlsSampleStreamWrapper(int i, com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.Callback callback, com.google.android.exoplayer2.source.hls.HlsChunkSource hlsChunkSource, java.util.Map<java.lang.String, com.google.android.exoplayer2.drm.DrmInitData> map, com.google.android.exoplayer2.upstream.Allocator allocator, long j, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.drm.DrmSessionManager drmSessionManager, com.google.android.exoplayer2.drm.DrmSessionEventListener.EventDispatcher eventDispatcher, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy loadErrorHandlingPolicy, com.google.android.exoplayer2.source.MediaSourceEventListener.EventDispatcher eventDispatcher2, int i2) {
        this.trackType = i;
        this.callback = callback;
        this.chunkSource = hlsChunkSource;
        this.overridingDrmInitData = map;
        this.allocator = allocator;
        this.muxedAudioFormat = format;
        this.drmSessionManager = drmSessionManager;
        this.drmEventDispatcher = eventDispatcher;
        this.loadErrorHandlingPolicy = loadErrorHandlingPolicy;
        this.mediaSourceEventDispatcher = eventDispatcher2;
        this.metadataType = i2;
        java.util.ArrayList<com.google.android.exoplayer2.source.hls.HlsMediaChunk> arrayList = new java.util.ArrayList<>();
        this.mediaChunks = arrayList;
        this.readOnlyMediaChunks = java.util.Collections.unmodifiableList(arrayList);
        this.hlsSampleStreams = new java.util.ArrayList<>();
        this.maybeFinishPrepareRunnable = new java.lang.Runnable() { // from class: e.c.a.a.n2.g0.c
            @Override // java.lang.Runnable
            public final void run() {
                this.a.maybeFinishPrepare();
            }
        };
        this.onTracksEndedRunnable = new java.lang.Runnable() { // from class: e.c.a.a.n2.g0.d
            @Override // java.lang.Runnable
            public final void run() {
                this.a.onTracksEnded();
            }
        };
        this.handler = com.google.android.exoplayer2.util.Util.createHandlerForCurrentLooper();
        this.lastSeekPositionUs = j;
        this.pendingResetPositionUs = j;
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"trackGroups", "optionalTrackGroups"})
    private void assertIsPrepared() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.prepared);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.trackGroups);
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.optionalTrackGroups);
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"trackGroups", "optionalTrackGroups", "trackGroupToSampleQueueIndex"})
    private void buildTracksFromSampleStreams() {
        int length = this.sampleQueues.length;
        int i = 0;
        int i2 = -2;
        int i3 = -1;
        while (true) {
            if (i >= length) {
                break;
            }
            java.lang.String str = ((com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.sampleQueues[i].getUpstreamFormat())).sampleMimeType;
            int i4 = com.google.android.exoplayer2.util.MimeTypes.isVideo(str) ? 2 : com.google.android.exoplayer2.util.MimeTypes.isAudio(str) ? 1 : com.google.android.exoplayer2.util.MimeTypes.isText(str) ? 3 : -2;
            if (getTrackTypeScore(i4) > getTrackTypeScore(i2)) {
                i3 = i;
                i2 = i4;
            } else if (i4 == i2 && i3 != -1) {
                i3 = -1;
            }
            i++;
        }
        com.google.android.exoplayer2.source.TrackGroup trackGroup = this.chunkSource.getTrackGroup();
        int i5 = trackGroup.length;
        this.primaryTrackGroupIndex = -1;
        this.trackGroupToSampleQueueIndex = new int[length];
        for (int i6 = 0; i6 < length; i6++) {
            this.trackGroupToSampleQueueIndex[i6] = i6;
        }
        com.google.android.exoplayer2.source.TrackGroup[] trackGroupArr = new com.google.android.exoplayer2.source.TrackGroup[length];
        for (int i7 = 0; i7 < length; i7++) {
            com.google.android.exoplayer2.Format format = (com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.sampleQueues[i7].getUpstreamFormat());
            if (i7 == i3) {
                com.google.android.exoplayer2.Format[] formatArr = new com.google.android.exoplayer2.Format[i5];
                if (i5 == 1) {
                    formatArr[0] = format.withManifestFormatInfo(trackGroup.getFormat(0));
                } else {
                    for (int i8 = 0; i8 < i5; i8++) {
                        formatArr[i8] = deriveFormat(trackGroup.getFormat(i8), format, true);
                    }
                }
                trackGroupArr[i7] = new com.google.android.exoplayer2.source.TrackGroup(formatArr);
                this.primaryTrackGroupIndex = i7;
            } else {
                trackGroupArr[i7] = new com.google.android.exoplayer2.source.TrackGroup(deriveFormat((i2 == 2 && com.google.android.exoplayer2.util.MimeTypes.isAudio(format.sampleMimeType)) ? this.muxedAudioFormat : null, format, false));
            }
        }
        this.trackGroups = createTrackGroupArrayWithDrmInfo(trackGroupArr);
        com.google.android.exoplayer2.util.Assertions.checkState(this.optionalTrackGroups == null);
        this.optionalTrackGroups = java.util.Collections.emptySet();
    }

    private boolean canDiscardUpstreamMediaChunksFromIndex(int i) {
        for (int i2 = i; i2 < this.mediaChunks.size(); i2++) {
            if (this.mediaChunks.get(i2).shouldSpliceIn) {
                return false;
            }
        }
        com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk = this.mediaChunks.get(i);
        for (int i3 = 0; i3 < this.sampleQueues.length; i3++) {
            if (this.sampleQueues[i3].getReadIndex() > hlsMediaChunk.getFirstSampleIndex(i3)) {
                return false;
            }
        }
        return true;
    }

    public static com.google.android.exoplayer2.extractor.DummyTrackOutput createFakeTrackOutput(int i, int i2) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(54);
        sb.append("Unmapped track with id ");
        sb.append(i);
        sb.append(" of type ");
        sb.append(i2);
        com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
        return new com.google.android.exoplayer2.extractor.DummyTrackOutput();
    }

    private com.google.android.exoplayer2.source.SampleQueue createSampleQueue(int i, int i2) {
        int length = this.sampleQueues.length;
        boolean z = true;
        if (i2 != 1 && i2 != 2) {
            z = false;
        }
        com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue = new com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue(this.allocator, this.handler.getLooper(), this.drmSessionManager, this.drmEventDispatcher, this.overridingDrmInitData);
        hlsSampleQueue.setStartTimeUs(this.lastSeekPositionUs);
        if (z) {
            hlsSampleQueue.setDrmInitData(this.drmInitData);
        }
        hlsSampleQueue.setSampleOffsetUs(this.sampleOffsetUs);
        com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk = this.sourceChunk;
        if (hlsMediaChunk != null) {
            hlsSampleQueue.setSourceChunk(hlsMediaChunk);
        }
        hlsSampleQueue.setUpstreamFormatChangeListener(this);
        int i3 = length + 1;
        int[] iArrCopyOf = java.util.Arrays.copyOf(this.sampleQueueTrackIds, i3);
        this.sampleQueueTrackIds = iArrCopyOf;
        iArrCopyOf[length] = i;
        this.sampleQueues = (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue[]) com.google.android.exoplayer2.util.Util.nullSafeArrayAppend(this.sampleQueues, hlsSampleQueue);
        boolean[] zArrCopyOf = java.util.Arrays.copyOf(this.sampleQueueIsAudioVideoFlags, i3);
        this.sampleQueueIsAudioVideoFlags = zArrCopyOf;
        zArrCopyOf[length] = z;
        this.haveAudioVideoSampleQueues = zArrCopyOf[length] | this.haveAudioVideoSampleQueues;
        this.sampleQueueMappingDoneByType.add(java.lang.Integer.valueOf(i2));
        this.sampleQueueIndicesByType.append(i2, length);
        if (getTrackTypeScore(i2) > getTrackTypeScore(this.primarySampleQueueType)) {
            this.primarySampleQueueIndex = length;
            this.primarySampleQueueType = i2;
        }
        this.sampleQueuesEnabledStates = java.util.Arrays.copyOf(this.sampleQueuesEnabledStates, i3);
        return hlsSampleQueue;
    }

    private com.google.android.exoplayer2.source.TrackGroupArray createTrackGroupArrayWithDrmInfo(com.google.android.exoplayer2.source.TrackGroup[] trackGroupArr) {
        for (int i = 0; i < trackGroupArr.length; i++) {
            com.google.android.exoplayer2.source.TrackGroup trackGroup = trackGroupArr[i];
            com.google.android.exoplayer2.Format[] formatArr = new com.google.android.exoplayer2.Format[trackGroup.length];
            for (int i2 = 0; i2 < trackGroup.length; i2++) {
                com.google.android.exoplayer2.Format format = trackGroup.getFormat(i2);
                formatArr[i2] = format.copyWithCryptoType(this.drmSessionManager.getCryptoType(format));
            }
            trackGroupArr[i] = new com.google.android.exoplayer2.source.TrackGroup(formatArr);
        }
        return new com.google.android.exoplayer2.source.TrackGroupArray(trackGroupArr);
    }

    public static com.google.android.exoplayer2.Format deriveFormat(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format format2, boolean z) {
        java.lang.String codecsCorrespondingToMimeType;
        java.lang.String mediaMimeType;
        if (format == null) {
            return format2;
        }
        int trackType = com.google.android.exoplayer2.util.MimeTypes.getTrackType(format2.sampleMimeType);
        if (com.google.android.exoplayer2.util.Util.getCodecCountOfType(format.codecs, trackType) == 1) {
            codecsCorrespondingToMimeType = com.google.android.exoplayer2.util.Util.getCodecsOfType(format.codecs, trackType);
            mediaMimeType = com.google.android.exoplayer2.util.MimeTypes.getMediaMimeType(codecsCorrespondingToMimeType);
        } else {
            codecsCorrespondingToMimeType = com.google.android.exoplayer2.util.MimeTypes.getCodecsCorrespondingToMimeType(format.codecs, format2.sampleMimeType);
            mediaMimeType = format2.sampleMimeType;
        }
        com.google.android.exoplayer2.Format.Builder codecs = format2.buildUpon().setId(format.id).setLabel(format.label).setLanguage(format.language).setSelectionFlags(format.selectionFlags).setRoleFlags(format.roleFlags).setAverageBitrate(z ? format.averageBitrate : -1).setPeakBitrate(z ? format.peakBitrate : -1).setCodecs(codecsCorrespondingToMimeType);
        if (trackType == 2) {
            codecs.setWidth(format.width).setHeight(format.height).setFrameRate(format.frameRate);
        }
        if (mediaMimeType != null) {
            codecs.setSampleMimeType(mediaMimeType);
        }
        int i = format.channelCount;
        if (i != -1 && trackType == 1) {
            codecs.setChannelCount(i);
        }
        com.google.android.exoplayer2.metadata.Metadata metadataCopyWithAppendedEntriesFrom = format.metadata;
        if (metadataCopyWithAppendedEntriesFrom != null) {
            com.google.android.exoplayer2.metadata.Metadata metadata = format2.metadata;
            if (metadata != null) {
                metadataCopyWithAppendedEntriesFrom = metadata.copyWithAppendedEntriesFrom(metadataCopyWithAppendedEntriesFrom);
            }
            codecs.setMetadata(metadataCopyWithAppendedEntriesFrom);
        }
        return codecs.build();
    }

    private void discardUpstream(int i) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.loader.isLoading());
        while (true) {
            if (i >= this.mediaChunks.size()) {
                i = -1;
                break;
            } else if (canDiscardUpstreamMediaChunksFromIndex(i)) {
                break;
            } else {
                i++;
            }
        }
        if (i == -1) {
            return;
        }
        long j = getLastMediaChunk().endTimeUs;
        com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunkDiscardUpstreamMediaChunksFromIndex = discardUpstreamMediaChunksFromIndex(i);
        if (this.mediaChunks.isEmpty()) {
            this.pendingResetPositionUs = this.lastSeekPositionUs;
        } else {
            ((com.google.android.exoplayer2.source.hls.HlsMediaChunk) e.c.b.a.f.l(this.mediaChunks)).invalidateExtractor();
        }
        this.loadingFinished = false;
        this.mediaSourceEventDispatcher.upstreamDiscarded(this.primarySampleQueueType, hlsMediaChunkDiscardUpstreamMediaChunksFromIndex.startTimeUs, j);
    }

    private com.google.android.exoplayer2.source.hls.HlsMediaChunk discardUpstreamMediaChunksFromIndex(int i) {
        com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk = this.mediaChunks.get(i);
        java.util.ArrayList<com.google.android.exoplayer2.source.hls.HlsMediaChunk> arrayList = this.mediaChunks;
        com.google.android.exoplayer2.util.Util.removeRange(arrayList, i, arrayList.size());
        for (int i2 = 0; i2 < this.sampleQueues.length; i2++) {
            this.sampleQueues[i2].discardUpstreamSamples(hlsMediaChunk.getFirstSampleIndex(i2));
        }
        return hlsMediaChunk;
    }

    private boolean finishedReadingChunk(com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk) {
        int i = hlsMediaChunk.uid;
        int length = this.sampleQueues.length;
        for (int i2 = 0; i2 < length; i2++) {
            if (this.sampleQueuesEnabledStates[i2] && this.sampleQueues[i2].peekSourceId() == i) {
                return false;
            }
        }
        return true;
    }

    public static boolean formatsMatch(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format format2) {
        java.lang.String str = format.sampleMimeType;
        java.lang.String str2 = format2.sampleMimeType;
        int trackType = com.google.android.exoplayer2.util.MimeTypes.getTrackType(str);
        if (trackType != 3) {
            return trackType == com.google.android.exoplayer2.util.MimeTypes.getTrackType(str2);
        }
        if (com.google.android.exoplayer2.util.Util.areEqual(str, str2)) {
            return !(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CEA608.equals(str) || com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CEA708.equals(str)) || format.accessibilityChannel == format2.accessibilityChannel;
        }
        return false;
    }

    private com.google.android.exoplayer2.source.hls.HlsMediaChunk getLastMediaChunk() {
        return this.mediaChunks.get(r0.size() - 1);
    }

    private com.google.android.exoplayer2.extractor.TrackOutput getMappedTrackOutput(int i, int i2) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(MAPPABLE_TYPES.contains(java.lang.Integer.valueOf(i2)));
        int i3 = this.sampleQueueIndicesByType.get(i2, -1);
        if (i3 == -1) {
            return null;
        }
        if (this.sampleQueueMappingDoneByType.add(java.lang.Integer.valueOf(i2))) {
            this.sampleQueueTrackIds[i3] = i;
        }
        return this.sampleQueueTrackIds[i3] == i ? this.sampleQueues[i3] : createFakeTrackOutput(i, i2);
    }

    public static int getTrackTypeScore(int i) {
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? 0 : 1;
        }
        return 3;
    }

    private void initMediaChunkLoad(com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk) {
        this.sourceChunk = hlsMediaChunk;
        this.upstreamTrackFormat = hlsMediaChunk.trackFormat;
        this.pendingResetPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.mediaChunks.add(hlsMediaChunk);
        e.c.b.b.s.a aVarJ = e.c.b.b.s.j();
        for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
            aVarJ.b(java.lang.Integer.valueOf(hlsSampleQueue.getWriteIndex()));
        }
        hlsMediaChunk.init(this, aVarJ.c());
        for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue2 : this.sampleQueues) {
            hlsSampleQueue2.setSourceChunk(hlsMediaChunk);
            if (hlsMediaChunk.shouldSpliceIn) {
                hlsSampleQueue2.splice();
            }
        }
    }

    public static boolean isMediaChunk(com.google.android.exoplayer2.source.chunk.Chunk chunk) {
        return chunk instanceof com.google.android.exoplayer2.source.hls.HlsMediaChunk;
    }

    private boolean isPendingReset() {
        return this.pendingResetPositionUs != com.google.android.exoplayer2.C.TIME_UNSET;
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"trackGroupToSampleQueueIndex"})
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"trackGroups"})
    private void mapSampleQueuesToMatchTrackGroups() {
        int i = this.trackGroups.length;
        int[] iArr = new int[i];
        this.trackGroupToSampleQueueIndex = iArr;
        java.util.Arrays.fill(iArr, -1);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = 0;
            while (true) {
                com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue[] hlsSampleQueueArr = this.sampleQueues;
                if (i3 >= hlsSampleQueueArr.length) {
                    break;
                }
                if (formatsMatch((com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(hlsSampleQueueArr[i3].getUpstreamFormat()), this.trackGroups.get(i2).getFormat(0))) {
                    this.trackGroupToSampleQueueIndex[i2] = i3;
                    break;
                }
                i3++;
            }
        }
        java.util.Iterator<com.google.android.exoplayer2.source.hls.HlsSampleStream> it = this.hlsSampleStreams.iterator();
        while (it.hasNext()) {
            it.next().bindSampleQueue();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void maybeFinishPrepare() {
        if (!this.released && this.trackGroupToSampleQueueIndex == null && this.sampleQueuesBuilt) {
            for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                if (hlsSampleQueue.getUpstreamFormat() == null) {
                    return;
                }
            }
            if (this.trackGroups != null) {
                mapSampleQueuesToMatchTrackGroups();
                return;
            }
            buildTracksFromSampleStreams();
            setIsPrepared();
            this.callback.onPrepared();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onTracksEnded() {
        this.sampleQueuesBuilt = true;
        maybeFinishPrepare();
    }

    private void resetSampleQueues() {
        for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
            hlsSampleQueue.reset(this.pendingResetUpstreamFormats);
        }
        this.pendingResetUpstreamFormats = false;
    }

    private boolean seekInsideBufferUs(long j) {
        int length = this.sampleQueues.length;
        for (int i = 0; i < length; i++) {
            if (!this.sampleQueues[i].seekTo(j, false) && (this.sampleQueueIsAudioVideoFlags[i] || !this.haveAudioVideoSampleQueues)) {
                return false;
            }
        }
        return true;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"trackGroups", "optionalTrackGroups"})
    private void setIsPrepared() {
        this.prepared = true;
    }

    private void updateSampleStreams(com.google.android.exoplayer2.source.SampleStream[] sampleStreamArr) {
        this.hlsSampleStreams.clear();
        for (com.google.android.exoplayer2.source.SampleStream sampleStream : sampleStreamArr) {
            if (sampleStream != null) {
                this.hlsSampleStreams.add((com.google.android.exoplayer2.source.hls.HlsSampleStream) sampleStream);
            }
        }
    }

    public int bindSampleQueueToSampleStream(int i) {
        assertIsPrepared();
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.trackGroupToSampleQueueIndex);
        int i2 = this.trackGroupToSampleQueueIndex[i];
        if (i2 == -1) {
            return this.optionalTrackGroups.contains(this.trackGroups.get(i)) ? -3 : -2;
        }
        boolean[] zArr = this.sampleQueuesEnabledStates;
        if (zArr[i2]) {
            return -2;
        }
        zArr[i2] = true;
        return i2;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public boolean continueLoading(long j) {
        java.util.List<com.google.android.exoplayer2.source.hls.HlsMediaChunk> listEmptyList;
        long jMax;
        if (this.loadingFinished || this.loader.isLoading() || this.loader.hasFatalError()) {
            return false;
        }
        if (isPendingReset()) {
            listEmptyList = java.util.Collections.emptyList();
            jMax = this.pendingResetPositionUs;
            for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                hlsSampleQueue.setStartTimeUs(this.pendingResetPositionUs);
            }
        } else {
            listEmptyList = this.readOnlyMediaChunks;
            com.google.android.exoplayer2.source.hls.HlsMediaChunk lastMediaChunk = getLastMediaChunk();
            jMax = lastMediaChunk.isLoadCompleted() ? lastMediaChunk.endTimeUs : java.lang.Math.max(this.lastSeekPositionUs, lastMediaChunk.startTimeUs);
        }
        java.util.List<com.google.android.exoplayer2.source.hls.HlsMediaChunk> list = listEmptyList;
        long j2 = jMax;
        this.nextChunkHolder.clear();
        this.chunkSource.getNextChunk(j, j2, list, this.prepared || !list.isEmpty(), this.nextChunkHolder);
        com.google.android.exoplayer2.source.hls.HlsChunkSource.HlsChunkHolder hlsChunkHolder = this.nextChunkHolder;
        boolean z = hlsChunkHolder.endOfStream;
        com.google.android.exoplayer2.source.chunk.Chunk chunk = hlsChunkHolder.chunk;
        android.net.Uri uri = hlsChunkHolder.playlistUrl;
        if (z) {
            this.pendingResetPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;
            this.loadingFinished = true;
            return true;
        }
        if (chunk == null) {
            if (uri != null) {
                this.callback.onPlaylistRefreshRequired(uri);
            }
            return false;
        }
        if (isMediaChunk(chunk)) {
            initMediaChunkLoad((com.google.android.exoplayer2.source.hls.HlsMediaChunk) chunk);
        }
        this.loadingChunk = chunk;
        this.mediaSourceEventDispatcher.loadStarted(new com.google.android.exoplayer2.source.LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, this.loader.startLoading(chunk, this, this.loadErrorHandlingPolicy.getMinimumLoadableRetryCount(chunk.type))), chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        return true;
    }

    public void continuePreparing() {
        if (this.prepared) {
            return;
        }
        continueLoading(this.lastSeekPositionUs);
    }

    public void discardBuffer(long j, boolean z) {
        if (!this.sampleQueuesBuilt || isPendingReset()) {
            return;
        }
        int length = this.sampleQueues.length;
        for (int i = 0; i < length; i++) {
            this.sampleQueues[i].discardTo(j, z, this.sampleQueuesEnabledStates[i]);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void endTracks() {
        this.tracksEnded = true;
        this.handler.post(this.onTracksEndedRunnable);
    }

    /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
        java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:493)
        	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:496)
        */
    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public long getBufferedPositionUs() {
        /*
            r7 = this;
            boolean r0 = r7.loadingFinished
            if (r0 == 0) goto L7
            r0 = -9223372036854775808
            return r0
        L7:
            boolean r0 = r7.isPendingReset()
            if (r0 == 0) goto L10
            long r0 = r7.pendingResetPositionUs
            return r0
        L10:
            long r0 = r7.lastSeekPositionUs
            com.google.android.exoplayer2.source.hls.HlsMediaChunk r2 = r7.getLastMediaChunk()
            boolean r3 = r2.isLoadCompleted()
            if (r3 == 0) goto L1d
            goto L36
        L1d:
            java.util.ArrayList<com.google.android.exoplayer2.source.hls.HlsMediaChunk> r2 = r7.mediaChunks
            int r2 = r2.size()
            r3 = 1
            if (r2 <= r3) goto L35
            java.util.ArrayList<com.google.android.exoplayer2.source.hls.HlsMediaChunk> r2 = r7.mediaChunks
            int r3 = r2.size()
            int r3 = r3 + (-2)
            java.lang.Object r2 = r2.get(r3)
            com.google.android.exoplayer2.source.hls.HlsMediaChunk r2 = (com.google.android.exoplayer2.source.hls.HlsMediaChunk) r2
            goto L36
        L35:
            r2 = 0
        L36:
            if (r2 == 0) goto L3e
            long r2 = r2.endTimeUs
            long r0 = java.lang.Math.max(r0, r2)
        L3e:
            boolean r2 = r7.sampleQueuesBuilt
            if (r2 == 0) goto L55
            com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper$HlsSampleQueue[] r2 = r7.sampleQueues
            int r3 = r2.length
            r4 = 0
        L46:
            if (r4 >= r3) goto L55
            r5 = r2[r4]
            long r5 = r5.getLargestQueuedTimestampUs()
            long r0 = java.lang.Math.max(r0, r5)
            int r4 = r4 + 1
            goto L46
        L55:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.getBufferedPositionUs():long");
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public long getNextLoadPositionUs() {
        if (isPendingReset()) {
            return this.pendingResetPositionUs;
        }
        if (this.loadingFinished) {
            return Long.MIN_VALUE;
        }
        return getLastMediaChunk().endTimeUs;
    }

    public int getPrimaryTrackGroupIndex() {
        return this.primaryTrackGroupIndex;
    }

    public com.google.android.exoplayer2.source.TrackGroupArray getTrackGroups() {
        assertIsPrepared();
        return this.trackGroups;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public boolean isLoading() {
        return this.loader.isLoading();
    }

    public boolean isReady(int i) {
        return !isPendingReset() && this.sampleQueues[i].isReady(this.loadingFinished);
    }

    public void maybeThrowError() {
        this.loader.maybeThrowError();
        this.chunkSource.maybeThrowError();
    }

    public void maybeThrowError(int i) {
        maybeThrowError();
        this.sampleQueues[i].maybeThrowError();
    }

    public void maybeThrowPrepareError() throws com.google.android.exoplayer2.ParserException {
        maybeThrowError();
        if (this.loadingFinished && !this.prepared) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Loading finished before preparation is complete.", null);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCanceled(com.google.android.exoplayer2.source.chunk.Chunk chunk, long j, long j2, boolean z) {
        this.loadingChunk = null;
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), j, j2, chunk.bytesLoaded());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(chunk.loadTaskId);
        this.mediaSourceEventDispatcher.loadCanceled(loadEventInfo, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        if (z) {
            return;
        }
        if (isPendingReset() || this.enabledTrackGroupCount == 0) {
            resetSampleQueues();
        }
        if (this.enabledTrackGroupCount > 0) {
            this.callback.onContinueLoadingRequested(this);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public void onLoadCompleted(com.google.android.exoplayer2.source.chunk.Chunk chunk, long j, long j2) {
        this.loadingChunk = null;
        this.chunkSource.onChunkLoadCompleted(chunk);
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), j, j2, chunk.bytesLoaded());
        this.loadErrorHandlingPolicy.onLoadTaskConcluded(chunk.loadTaskId);
        this.mediaSourceEventDispatcher.loadCompleted(loadEventInfo, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs);
        if (this.prepared) {
            this.callback.onContinueLoadingRequested(this);
        } else {
            continueLoading(this.lastSeekPositionUs);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Callback
    public com.google.android.exoplayer2.upstream.Loader.LoadErrorAction onLoadError(com.google.android.exoplayer2.source.chunk.Chunk chunk, long j, long j2, java.io.IOException iOException, int i) {
        com.google.android.exoplayer2.upstream.Loader.LoadErrorAction loadErrorActionCreateRetryAction;
        int i2;
        boolean zIsMediaChunk = isMediaChunk(chunk);
        if (zIsMediaChunk && !((com.google.android.exoplayer2.source.hls.HlsMediaChunk) chunk).isPublished() && (iOException instanceof com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException) && ((i2 = ((com.google.android.exoplayer2.upstream.HttpDataSource.InvalidResponseCodeException) iOException).responseCode) == 410 || i2 == 404)) {
            return com.google.android.exoplayer2.upstream.Loader.RETRY;
        }
        long jBytesLoaded = chunk.bytesLoaded();
        com.google.android.exoplayer2.source.LoadEventInfo loadEventInfo = new com.google.android.exoplayer2.source.LoadEventInfo(chunk.loadTaskId, chunk.dataSpec, chunk.getUri(), chunk.getResponseHeaders(), j, j2, jBytesLoaded);
        com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo = new com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo(loadEventInfo, new com.google.android.exoplayer2.source.MediaLoadData(chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, com.google.android.exoplayer2.util.Util.usToMs(chunk.startTimeUs), com.google.android.exoplayer2.util.Util.usToMs(chunk.endTimeUs)), iOException, i);
        com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor = this.loadErrorHandlingPolicy.getFallbackSelectionFor(com.google.android.exoplayer2.trackselection.TrackSelectionUtil.createFallbackOptions(this.chunkSource.getTrackSelection()), loadErrorInfo);
        boolean zMaybeExcludeTrack = (fallbackSelectionFor == null || fallbackSelectionFor.type != 2) ? false : this.chunkSource.maybeExcludeTrack(chunk, fallbackSelectionFor.exclusionDurationMs);
        if (zMaybeExcludeTrack) {
            if (zIsMediaChunk && jBytesLoaded == 0) {
                java.util.ArrayList<com.google.android.exoplayer2.source.hls.HlsMediaChunk> arrayList = this.mediaChunks;
                com.google.android.exoplayer2.util.Assertions.checkState(arrayList.remove(arrayList.size() - 1) == chunk);
                if (this.mediaChunks.isEmpty()) {
                    this.pendingResetPositionUs = this.lastSeekPositionUs;
                } else {
                    ((com.google.android.exoplayer2.source.hls.HlsMediaChunk) e.c.b.a.f.l(this.mediaChunks)).invalidateExtractor();
                }
            }
            loadErrorActionCreateRetryAction = com.google.android.exoplayer2.upstream.Loader.DONT_RETRY;
        } else {
            long retryDelayMsFor = this.loadErrorHandlingPolicy.getRetryDelayMsFor(loadErrorInfo);
            loadErrorActionCreateRetryAction = retryDelayMsFor != com.google.android.exoplayer2.C.TIME_UNSET ? com.google.android.exoplayer2.upstream.Loader.createRetryAction(false, retryDelayMsFor) : com.google.android.exoplayer2.upstream.Loader.DONT_RETRY_FATAL;
        }
        com.google.android.exoplayer2.upstream.Loader.LoadErrorAction loadErrorAction = loadErrorActionCreateRetryAction;
        boolean z = !loadErrorAction.isRetry();
        this.mediaSourceEventDispatcher.loadError(loadEventInfo, chunk.type, this.trackType, chunk.trackFormat, chunk.trackSelectionReason, chunk.trackSelectionData, chunk.startTimeUs, chunk.endTimeUs, iOException, z);
        if (z) {
            this.loadingChunk = null;
            this.loadErrorHandlingPolicy.onLoadTaskConcluded(chunk.loadTaskId);
        }
        if (zMaybeExcludeTrack) {
            if (this.prepared) {
                this.callback.onContinueLoadingRequested(this);
            } else {
                continueLoading(this.lastSeekPositionUs);
            }
        }
        return loadErrorAction;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.ReleaseCallback
    public void onLoaderReleased() {
        for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
            hlsSampleQueue.release();
        }
    }

    public void onNewExtractor() {
        this.sampleQueueMappingDoneByType.clear();
    }

    public boolean onPlaylistError(android.net.Uri uri, com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.LoadErrorInfo loadErrorInfo, boolean z) {
        com.google.android.exoplayer2.upstream.LoadErrorHandlingPolicy.FallbackSelection fallbackSelectionFor;
        if (!this.chunkSource.obtainsChunksForPlaylist(uri)) {
            return true;
        }
        long j = (z || (fallbackSelectionFor = this.loadErrorHandlingPolicy.getFallbackSelectionFor(com.google.android.exoplayer2.trackselection.TrackSelectionUtil.createFallbackOptions(this.chunkSource.getTrackSelection()), loadErrorInfo)) == null || fallbackSelectionFor.type != 2) ? -9223372036854775807L : fallbackSelectionFor.exclusionDurationMs;
        return this.chunkSource.onPlaylistError(uri, j) && j != com.google.android.exoplayer2.C.TIME_UNSET;
    }

    public void onPlaylistUpdated() {
        if (this.mediaChunks.isEmpty()) {
            return;
        }
        com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk = (com.google.android.exoplayer2.source.hls.HlsMediaChunk) e.c.b.a.f.l(this.mediaChunks);
        int chunkPublicationState = this.chunkSource.getChunkPublicationState(hlsMediaChunk);
        if (chunkPublicationState == 1) {
            hlsMediaChunk.publish();
        } else if (chunkPublicationState == 2 && !this.loadingFinished && this.loader.isLoading()) {
            this.loader.cancelLoading();
        }
    }

    @Override // com.google.android.exoplayer2.source.SampleQueue.UpstreamFormatChangedListener
    public void onUpstreamFormatChanged(com.google.android.exoplayer2.Format format) {
        this.handler.post(this.maybeFinishPrepareRunnable);
    }

    public void prepareWithMasterPlaylistInfo(com.google.android.exoplayer2.source.TrackGroup[] trackGroupArr, int i, int... iArr) {
        this.trackGroups = createTrackGroupArrayWithDrmInfo(trackGroupArr);
        this.optionalTrackGroups = new java.util.HashSet();
        for (int i2 : iArr) {
            this.optionalTrackGroups.add(this.trackGroups.get(i2));
        }
        this.primaryTrackGroupIndex = i;
        android.os.Handler handler = this.handler;
        final com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.Callback callback = this.callback;
        callback.getClass();
        handler.post(new java.lang.Runnable() { // from class: e.c.a.a.n2.g0.a
            @Override // java.lang.Runnable
            public final void run() {
                callback.onPrepared();
            }
        });
        setIsPrepared();
    }

    public int readData(int i, com.google.android.exoplayer2.FormatHolder formatHolder, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, int i2) {
        if (isPendingReset()) {
            return -3;
        }
        int i3 = 0;
        if (!this.mediaChunks.isEmpty()) {
            int i4 = 0;
            while (i4 < this.mediaChunks.size() - 1 && finishedReadingChunk(this.mediaChunks.get(i4))) {
                i4++;
            }
            com.google.android.exoplayer2.util.Util.removeRange(this.mediaChunks, 0, i4);
            com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk = this.mediaChunks.get(0);
            com.google.android.exoplayer2.Format format = hlsMediaChunk.trackFormat;
            if (!format.equals(this.downstreamTrackFormat)) {
                this.mediaSourceEventDispatcher.downstreamFormatChanged(this.trackType, format, hlsMediaChunk.trackSelectionReason, hlsMediaChunk.trackSelectionData, hlsMediaChunk.startTimeUs);
            }
            this.downstreamTrackFormat = format;
        }
        if (!this.mediaChunks.isEmpty() && !this.mediaChunks.get(0).isPublished()) {
            return -3;
        }
        int i5 = this.sampleQueues[i].read(formatHolder, decoderInputBuffer, i2, this.loadingFinished);
        if (i5 == -5) {
            com.google.android.exoplayer2.Format formatWithManifestFormatInfo = (com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkNotNull(formatHolder.format);
            if (i == this.primarySampleQueueIndex) {
                int iPeekSourceId = this.sampleQueues[i].peekSourceId();
                while (i3 < this.mediaChunks.size() && this.mediaChunks.get(i3).uid != iPeekSourceId) {
                    i3++;
                }
                formatWithManifestFormatInfo = formatWithManifestFormatInfo.withManifestFormatInfo(i3 < this.mediaChunks.size() ? this.mediaChunks.get(i3).trackFormat : (com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.upstreamTrackFormat));
            }
            formatHolder.format = formatWithManifestFormatInfo;
        }
        return i5;
    }

    @Override // com.google.android.exoplayer2.source.SequenceableLoader
    public void reevaluateBuffer(long j) {
        if (this.loader.hasFatalError() || isPendingReset()) {
            return;
        }
        if (this.loader.isLoading()) {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(this.loadingChunk);
            if (this.chunkSource.shouldCancelLoad(j, this.loadingChunk, this.readOnlyMediaChunks)) {
                this.loader.cancelLoading();
                return;
            }
            return;
        }
        int size = this.readOnlyMediaChunks.size();
        while (size > 0 && this.chunkSource.getChunkPublicationState(this.readOnlyMediaChunks.get(size - 1)) == 2) {
            size--;
        }
        if (size < this.readOnlyMediaChunks.size()) {
            discardUpstream(size);
        }
        int preferredQueueSize = this.chunkSource.getPreferredQueueSize(j, this.readOnlyMediaChunks);
        if (preferredQueueSize < this.mediaChunks.size()) {
            discardUpstream(preferredQueueSize);
        }
    }

    public void release() {
        if (this.prepared) {
            for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                hlsSampleQueue.preRelease();
            }
        }
        this.loader.release(this);
        this.handler.removeCallbacksAndMessages(null);
        this.released = true;
        this.hlsSampleStreams.clear();
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public void seekMap(com.google.android.exoplayer2.extractor.SeekMap seekMap) {
    }

    public boolean seekToUs(long j, boolean z) {
        this.lastSeekPositionUs = j;
        if (isPendingReset()) {
            this.pendingResetPositionUs = j;
            return true;
        }
        if (this.sampleQueuesBuilt && !z && seekInsideBufferUs(j)) {
            return false;
        }
        this.pendingResetPositionUs = j;
        this.loadingFinished = false;
        this.mediaChunks.clear();
        if (this.loader.isLoading()) {
            if (this.sampleQueuesBuilt) {
                for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                    hlsSampleQueue.discardToEnd();
                }
            }
            this.loader.cancelLoading();
        } else {
            this.loader.clearFatalError();
            resetSampleQueues();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x012d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0131  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean selectTracks(com.google.android.exoplayer2.trackselection.ExoTrackSelection[] r20, boolean[] r21, com.google.android.exoplayer2.source.SampleStream[] r22, boolean[] r23, long r24, boolean r26) {
        /*
            Method dump skipped, instructions count: 326
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.selectTracks(com.google.android.exoplayer2.trackselection.ExoTrackSelection[], boolean[], com.google.android.exoplayer2.source.SampleStream[], boolean[], long, boolean):boolean");
    }

    public void setDrmInitData(com.google.android.exoplayer2.drm.DrmInitData drmInitData) {
        if (com.google.android.exoplayer2.util.Util.areEqual(this.drmInitData, drmInitData)) {
            return;
        }
        this.drmInitData = drmInitData;
        int i = 0;
        while (true) {
            com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue[] hlsSampleQueueArr = this.sampleQueues;
            if (i >= hlsSampleQueueArr.length) {
                return;
            }
            if (this.sampleQueueIsAudioVideoFlags[i]) {
                hlsSampleQueueArr[i].setDrmInitData(drmInitData);
            }
            i++;
        }
    }

    public void setIsTimestampMaster(boolean z) {
        this.chunkSource.setIsTimestampMaster(z);
    }

    public void setSampleOffsetUs(long j) {
        if (this.sampleOffsetUs != j) {
            this.sampleOffsetUs = j;
            for (com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue : this.sampleQueues) {
                hlsSampleQueue.setSampleOffsetUs(j);
            }
        }
    }

    public int skipData(int i, long j) {
        if (isPendingReset()) {
            return 0;
        }
        com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.HlsSampleQueue hlsSampleQueue = this.sampleQueues[i];
        int skipCount = hlsSampleQueue.getSkipCount(j, this.loadingFinished);
        com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk = (com.google.android.exoplayer2.source.hls.HlsMediaChunk) e.c.b.a.f.m(this.mediaChunks, null);
        if (hlsMediaChunk != null && !hlsMediaChunk.isPublished()) {
            skipCount = java.lang.Math.min(skipCount, hlsMediaChunk.getFirstSampleIndex(i) - hlsSampleQueue.getReadIndex());
        }
        hlsSampleQueue.skip(skipCount);
        return skipCount;
    }

    @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
    public com.google.android.exoplayer2.extractor.TrackOutput track(int i, int i2) {
        com.google.android.exoplayer2.extractor.TrackOutput trackOutputCreateSampleQueue;
        if (!MAPPABLE_TYPES.contains(java.lang.Integer.valueOf(i2))) {
            int i3 = 0;
            while (true) {
                com.google.android.exoplayer2.extractor.TrackOutput[] trackOutputArr = this.sampleQueues;
                if (i3 >= trackOutputArr.length) {
                    trackOutputCreateSampleQueue = null;
                    break;
                }
                if (this.sampleQueueTrackIds[i3] == i) {
                    trackOutputCreateSampleQueue = trackOutputArr[i3];
                    break;
                }
                i3++;
            }
        } else {
            trackOutputCreateSampleQueue = getMappedTrackOutput(i, i2);
        }
        if (trackOutputCreateSampleQueue == null) {
            if (this.tracksEnded) {
                return createFakeTrackOutput(i, i2);
            }
            trackOutputCreateSampleQueue = createSampleQueue(i, i2);
        }
        if (i2 != 5) {
            return trackOutputCreateSampleQueue;
        }
        if (this.emsgUnwrappingTrackOutput == null) {
            this.emsgUnwrappingTrackOutput = new com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper.EmsgUnwrappingTrackOutput(trackOutputCreateSampleQueue, this.metadataType);
        }
        return this.emsgUnwrappingTrackOutput;
    }

    public void unbindSampleQueue(int i) {
        assertIsPrepared();
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.trackGroupToSampleQueueIndex);
        int i2 = this.trackGroupToSampleQueueIndex[i];
        com.google.android.exoplayer2.util.Assertions.checkState(this.sampleQueuesEnabledStates[i2]);
        this.sampleQueuesEnabledStates[i2] = false;
    }
}
