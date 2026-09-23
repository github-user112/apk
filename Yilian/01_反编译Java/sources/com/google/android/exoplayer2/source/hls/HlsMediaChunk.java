package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public final class HlsMediaChunk extends com.google.android.exoplayer2.source.chunk.MediaChunk {
    public static final java.lang.String PRIV_TIMESTAMP_FRAME_OWNER = "com.apple.streaming.transportStreamTimestamp";
    public static final java.util.concurrent.atomic.AtomicInteger uidSource = new java.util.concurrent.atomic.AtomicInteger();
    public final int discontinuitySequenceNumber;
    public final com.google.android.exoplayer2.drm.DrmInitData drmInitData;
    public com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor extractor;
    public final com.google.android.exoplayer2.source.hls.HlsExtractorFactory extractorFactory;
    public boolean extractorInvalidated;
    public final boolean hasGapTag;
    public final com.google.android.exoplayer2.metadata.id3.Id3Decoder id3Decoder;
    public boolean initDataLoadRequired;
    public final com.google.android.exoplayer2.upstream.DataSource initDataSource;
    public final com.google.android.exoplayer2.upstream.DataSpec initDataSpec;
    public final boolean initSegmentEncrypted;
    public final boolean isMasterTimestampSource;
    public boolean isPublished;
    public volatile boolean loadCanceled;
    public boolean loadCompleted;
    public final boolean mediaSegmentEncrypted;
    public final java.util.List<com.google.android.exoplayer2.Format> muxedCaptionFormats;
    public int nextLoadPosition;
    public com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper output;
    public final int partIndex;
    public final android.net.Uri playlistUrl;
    public final com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor previousExtractor;
    public e.c.b.b.s<java.lang.Integer> sampleQueueFirstSampleIndices;
    public final com.google.android.exoplayer2.util.ParsableByteArray scratchId3Data;
    public final boolean shouldSpliceIn;
    public final com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster;
    public final int uid;

    public HlsMediaChunk(com.google.android.exoplayer2.source.hls.HlsExtractorFactory hlsExtractorFactory, com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, com.google.android.exoplayer2.Format format, boolean z, com.google.android.exoplayer2.upstream.DataSource dataSource2, com.google.android.exoplayer2.upstream.DataSpec dataSpec2, boolean z2, android.net.Uri uri, java.util.List<com.google.android.exoplayer2.Format> list, int i, java.lang.Object obj, long j, long j2, long j3, int i2, boolean z3, int i3, boolean z4, boolean z5, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, com.google.android.exoplayer2.drm.DrmInitData drmInitData, com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor hlsMediaChunkExtractor, com.google.android.exoplayer2.metadata.id3.Id3Decoder id3Decoder, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, boolean z6) {
        super(dataSource, dataSpec, format, i, obj, j, j2, j3);
        this.mediaSegmentEncrypted = z;
        this.partIndex = i2;
        this.isPublished = z3;
        this.discontinuitySequenceNumber = i3;
        this.initDataSpec = dataSpec2;
        this.initDataSource = dataSource2;
        this.initDataLoadRequired = dataSpec2 != null;
        this.initSegmentEncrypted = z2;
        this.playlistUrl = uri;
        this.isMasterTimestampSource = z5;
        this.timestampAdjuster = timestampAdjuster;
        this.hasGapTag = z4;
        this.extractorFactory = hlsExtractorFactory;
        this.muxedCaptionFormats = list;
        this.drmInitData = drmInitData;
        this.previousExtractor = hlsMediaChunkExtractor;
        this.id3Decoder = id3Decoder;
        this.scratchId3Data = parsableByteArray;
        this.shouldSpliceIn = z6;
        this.sampleQueueFirstSampleIndices = e.c.b.b.s.p();
        this.uid = uidSource.getAndIncrement();
    }

    public static com.google.android.exoplayer2.upstream.DataSource buildDataSource(com.google.android.exoplayer2.upstream.DataSource dataSource, byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return dataSource;
        }
        com.google.android.exoplayer2.util.Assertions.checkNotNull(bArr2);
        return new com.google.android.exoplayer2.source.hls.Aes128DataSource(dataSource, bArr, bArr2);
    }

    public static com.google.android.exoplayer2.source.hls.HlsMediaChunk createInstance(com.google.android.exoplayer2.source.hls.HlsExtractorFactory hlsExtractorFactory, com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.Format format, long j, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, com.google.android.exoplayer2.source.hls.HlsChunkSource.SegmentBaseHolder segmentBaseHolder, android.net.Uri uri, java.util.List<com.google.android.exoplayer2.Format> list, int i, java.lang.Object obj, boolean z, com.google.android.exoplayer2.source.hls.TimestampAdjusterProvider timestampAdjusterProvider, com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk, byte[] bArr, byte[] bArr2, boolean z2) {
        boolean z3;
        com.google.android.exoplayer2.upstream.DataSource dataSourceBuildDataSource;
        com.google.android.exoplayer2.upstream.DataSpec dataSpec;
        boolean z4;
        com.google.android.exoplayer2.metadata.id3.Id3Decoder id3Decoder;
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray;
        com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor hlsMediaChunkExtractor;
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.SegmentBase segmentBase = segmentBaseHolder.segmentBase;
        com.google.android.exoplayer2.upstream.DataSpec dataSpecBuild = new com.google.android.exoplayer2.upstream.DataSpec.Builder().setUri(com.google.android.exoplayer2.util.UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segmentBase.url)).setPosition(segmentBase.byteRangeOffset).setLength(segmentBase.byteRangeLength).setFlags(segmentBaseHolder.isPreload ? 8 : 0).build();
        boolean z5 = bArr != null;
        com.google.android.exoplayer2.upstream.DataSource dataSourceBuildDataSource2 = buildDataSource(dataSource, bArr, z5 ? getEncryptionIvArray((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(segmentBase.encryptionIV)) : null);
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Segment segment = segmentBase.initializationSegment;
        if (segment != null) {
            boolean z6 = bArr2 != null;
            byte[] encryptionIvArray = z6 ? getEncryptionIvArray((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(segment.encryptionIV)) : null;
            z3 = z5;
            dataSpec = new com.google.android.exoplayer2.upstream.DataSpec(com.google.android.exoplayer2.util.UriUtil.resolveToUri(hlsMediaPlaylist.baseUri, segment.url), segment.byteRangeOffset, segment.byteRangeLength);
            dataSourceBuildDataSource = buildDataSource(dataSource, bArr2, encryptionIvArray);
            z4 = z6;
        } else {
            z3 = z5;
            dataSourceBuildDataSource = null;
            dataSpec = null;
            z4 = false;
        }
        long j2 = j + segmentBase.relativeStartTimeUs;
        long j3 = j2 + segmentBase.durationUs;
        int i2 = hlsMediaPlaylist.discontinuitySequence + segmentBase.relativeDiscontinuitySequence;
        if (hlsMediaChunk != null) {
            com.google.android.exoplayer2.upstream.DataSpec dataSpec2 = hlsMediaChunk.initDataSpec;
            boolean z7 = dataSpec == dataSpec2 || (dataSpec != null && dataSpec2 != null && dataSpec.uri.equals(dataSpec2.uri) && dataSpec.position == hlsMediaChunk.initDataSpec.position);
            boolean z8 = uri.equals(hlsMediaChunk.playlistUrl) && hlsMediaChunk.loadCompleted;
            id3Decoder = hlsMediaChunk.id3Decoder;
            parsableByteArray = hlsMediaChunk.scratchId3Data;
            hlsMediaChunkExtractor = (z7 && z8 && !hlsMediaChunk.extractorInvalidated && hlsMediaChunk.discontinuitySequenceNumber == i2) ? hlsMediaChunk.extractor : null;
        } else {
            id3Decoder = new com.google.android.exoplayer2.metadata.id3.Id3Decoder();
            parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(10);
            hlsMediaChunkExtractor = null;
        }
        return new com.google.android.exoplayer2.source.hls.HlsMediaChunk(hlsExtractorFactory, dataSourceBuildDataSource2, dataSpecBuild, format, z3, dataSourceBuildDataSource, dataSpec, z4, uri, list, i, obj, j2, j3, segmentBaseHolder.mediaSequence, segmentBaseHolder.partIndex, !segmentBaseHolder.isPreload, i2, segmentBase.hasGapTag, z, timestampAdjusterProvider.getAdjuster(i2), segmentBase.drmInitData, hlsMediaChunkExtractor, id3Decoder, parsableByteArray, z2);
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private void feedDataToExtractor(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec, boolean z) {
        com.google.android.exoplayer2.upstream.DataSpec dataSpecSubrange;
        long position;
        long j;
        if (z) {
            z = this.nextLoadPosition != 0;
            dataSpecSubrange = dataSpec;
        } else {
            dataSpecSubrange = dataSpec.subrange(this.nextLoadPosition);
        }
        try {
            com.google.android.exoplayer2.extractor.DefaultExtractorInput defaultExtractorInputPrepareExtraction = prepareExtraction(dataSource, dataSpecSubrange);
            if (z) {
                defaultExtractorInputPrepareExtraction.skipFully(this.nextLoadPosition);
            }
            while (!this.loadCanceled && this.extractor.read(defaultExtractorInputPrepareExtraction)) {
                try {
                    try {
                    } catch (java.io.EOFException e2) {
                        if ((this.trackFormat.roleFlags & 16384) == 0) {
                            throw e2;
                        }
                        this.extractor.onTruncatedSegmentParsed();
                        position = defaultExtractorInputPrepareExtraction.getPosition();
                        j = dataSpec.position;
                    }
                } catch (java.lang.Throwable th) {
                    this.nextLoadPosition = (int) (defaultExtractorInputPrepareExtraction.getPosition() - dataSpec.position);
                    throw th;
                }
            }
            position = defaultExtractorInputPrepareExtraction.getPosition();
            j = dataSpec.position;
            this.nextLoadPosition = (int) (position - j);
        } finally {
            com.google.android.exoplayer2.upstream.DataSourceUtil.closeQuietly(dataSource);
        }
    }

    public static byte[] getEncryptionIvArray(java.lang.String str) {
        if (d.s.y.b0(str).startsWith("0x")) {
            str = str.substring(2);
        }
        byte[] byteArray = new java.math.BigInteger(str, 16).toByteArray();
        byte[] bArr = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        java.lang.System.arraycopy(byteArray, length, bArr, (16 - byteArray.length) + length, byteArray.length - length);
        return bArr;
    }

    public static boolean isIndependent(com.google.android.exoplayer2.source.hls.HlsChunkSource.SegmentBaseHolder segmentBaseHolder, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist) {
        com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.SegmentBase segmentBase = segmentBaseHolder.segmentBase;
        return segmentBase instanceof com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part ? ((com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist.Part) segmentBase).isIndependent || (segmentBaseHolder.partIndex == 0 && hlsMediaPlaylist.hasIndependentSegments) : hlsMediaPlaylist.hasIndependentSegments;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private void loadMedia() throws java.io.InterruptedIOException {
        try {
            this.timestampAdjuster.sharedInitializeOrWait(this.isMasterTimestampSource, this.startTimeUs);
            feedDataToExtractor(this.dataSource, this.dataSpec, this.mediaSegmentEncrypted);
        } catch (java.lang.InterruptedException unused) {
            throw new java.io.InterruptedIOException();
        }
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private void maybeLoadInitData() {
        if (this.initDataLoadRequired) {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(this.initDataSource);
            com.google.android.exoplayer2.util.Assertions.checkNotNull(this.initDataSpec);
            feedDataToExtractor(this.initDataSource, this.initDataSpec, this.initSegmentEncrypted);
            this.nextLoadPosition = 0;
            this.initDataLoadRequired = false;
        }
    }

    private long peekId3PrivTimestamp(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        extractorInput.resetPeekPosition();
        try {
            this.scratchId3Data.reset(10);
            extractorInput.peekFully(this.scratchId3Data.getData(), 0, 10);
        } catch (java.io.EOFException unused) {
        }
        if (this.scratchId3Data.readUnsignedInt24() != 4801587) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        this.scratchId3Data.skipBytes(3);
        int synchSafeInt = this.scratchId3Data.readSynchSafeInt();
        int i = synchSafeInt + 10;
        if (i > this.scratchId3Data.capacity()) {
            byte[] data = this.scratchId3Data.getData();
            this.scratchId3Data.reset(i);
            java.lang.System.arraycopy(data, 0, this.scratchId3Data.getData(), 0, 10);
        }
        extractorInput.peekFully(this.scratchId3Data.getData(), 10, synchSafeInt);
        com.google.android.exoplayer2.metadata.Metadata metadataDecode = this.id3Decoder.decode(this.scratchId3Data.getData(), synchSafeInt);
        if (metadataDecode == null) {
            return com.google.android.exoplayer2.C.TIME_UNSET;
        }
        int length = metadataDecode.length();
        for (int i2 = 0; i2 < length; i2++) {
            com.google.android.exoplayer2.metadata.Metadata.Entry entry = metadataDecode.get(i2);
            if (entry instanceof com.google.android.exoplayer2.metadata.id3.PrivFrame) {
                com.google.android.exoplayer2.metadata.id3.PrivFrame privFrame = (com.google.android.exoplayer2.metadata.id3.PrivFrame) entry;
                if (PRIV_TIMESTAMP_FRAME_OWNER.equals(privFrame.owner)) {
                    java.lang.System.arraycopy(privFrame.privateData, 0, this.scratchId3Data.getData(), 0, 8);
                    this.scratchId3Data.setPosition(0);
                    this.scratchId3Data.setLimit(8);
                    return this.scratchId3Data.readLong() & 8589934591L;
                }
            }
        }
        return com.google.android.exoplayer2.C.TIME_UNSET;
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"extractor"})
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private com.google.android.exoplayer2.extractor.DefaultExtractorInput prepareExtraction(com.google.android.exoplayer2.upstream.DataSource dataSource, com.google.android.exoplayer2.upstream.DataSpec dataSpec) {
        com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapper;
        long jAdjustTsTimestamp;
        com.google.android.exoplayer2.extractor.DefaultExtractorInput defaultExtractorInput = new com.google.android.exoplayer2.extractor.DefaultExtractorInput(dataSource, dataSpec.position, dataSource.open(dataSpec));
        if (this.extractor == null) {
            long jPeekId3PrivTimestamp = peekId3PrivTimestamp(defaultExtractorInput);
            defaultExtractorInput.resetPeekPosition();
            com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor hlsMediaChunkExtractor = this.previousExtractor;
            com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor hlsMediaChunkExtractorRecreate = hlsMediaChunkExtractor != null ? hlsMediaChunkExtractor.recreate() : this.extractorFactory.createExtractor(dataSpec.uri, this.trackFormat, this.muxedCaptionFormats, this.timestampAdjuster, dataSource.getResponseHeaders(), defaultExtractorInput);
            this.extractor = hlsMediaChunkExtractorRecreate;
            if (hlsMediaChunkExtractorRecreate.isPackedAudioExtractor()) {
                hlsSampleStreamWrapper = this.output;
                jAdjustTsTimestamp = jPeekId3PrivTimestamp != com.google.android.exoplayer2.C.TIME_UNSET ? this.timestampAdjuster.adjustTsTimestamp(jPeekId3PrivTimestamp) : this.startTimeUs;
            } else {
                hlsSampleStreamWrapper = this.output;
                jAdjustTsTimestamp = 0;
            }
            hlsSampleStreamWrapper.setSampleOffsetUs(jAdjustTsTimestamp);
            this.output.onNewExtractor();
            this.extractor.init(this.output);
        }
        this.output.setDrmInitData(this.drmInitData);
        return defaultExtractorInput;
    }

    public static boolean shouldSpliceIn(com.google.android.exoplayer2.source.hls.HlsMediaChunk hlsMediaChunk, android.net.Uri uri, com.google.android.exoplayer2.source.hls.playlist.HlsMediaPlaylist hlsMediaPlaylist, com.google.android.exoplayer2.source.hls.HlsChunkSource.SegmentBaseHolder segmentBaseHolder, long j) {
        if (hlsMediaChunk == null) {
            return false;
        }
        if (uri.equals(hlsMediaChunk.playlistUrl) && hlsMediaChunk.loadCompleted) {
            return false;
        }
        return !isIndependent(segmentBaseHolder, hlsMediaPlaylist) || j + segmentBaseHolder.segmentBase.relativeStartTimeUs < hlsMediaChunk.endTimeUs;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void cancelLoad() {
        this.loadCanceled = true;
    }

    public int getFirstSampleIndex(int i) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.shouldSpliceIn);
        if (i >= this.sampleQueueFirstSampleIndices.size()) {
            return 0;
        }
        return this.sampleQueueFirstSampleIndices.get(i).intValue();
    }

    public void init(com.google.android.exoplayer2.source.hls.HlsSampleStreamWrapper hlsSampleStreamWrapper, e.c.b.b.s<java.lang.Integer> sVar) {
        this.output = hlsSampleStreamWrapper;
        this.sampleQueueFirstSampleIndices = sVar;
    }

    public void invalidateExtractor() {
        this.extractorInvalidated = true;
    }

    @Override // com.google.android.exoplayer2.source.chunk.MediaChunk
    public boolean isLoadCompleted() {
        return this.loadCompleted;
    }

    public boolean isPublished() {
        return this.isPublished;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.Loadable
    public void load() throws java.io.InterruptedIOException {
        com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor hlsMediaChunkExtractor;
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.output);
        if (this.extractor == null && (hlsMediaChunkExtractor = this.previousExtractor) != null && hlsMediaChunkExtractor.isReusable()) {
            this.extractor = this.previousExtractor;
            this.initDataLoadRequired = false;
        }
        maybeLoadInitData();
        if (this.loadCanceled) {
            return;
        }
        if (!this.hasGapTag) {
            loadMedia();
        }
        this.loadCompleted = !this.loadCanceled;
    }

    public void publish() {
        this.isPublished = true;
    }
}
