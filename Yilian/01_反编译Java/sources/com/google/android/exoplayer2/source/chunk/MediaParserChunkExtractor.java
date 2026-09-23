package com.google.android.exoplayer2.source.chunk;

/* loaded from: classes.dex */
public final class MediaParserChunkExtractor implements com.google.android.exoplayer2.source.chunk.ChunkExtractor {
    public static final com.google.android.exoplayer2.source.chunk.ChunkExtractor.Factory FACTORY = new com.google.android.exoplayer2.source.chunk.ChunkExtractor.Factory() { // from class: e.c.a.a.n2.e0.b
        @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor.Factory
        public final com.google.android.exoplayer2.source.chunk.ChunkExtractor createProgressiveMediaExtractor(int i, com.google.android.exoplayer2.Format format, boolean z, java.util.List list, com.google.android.exoplayer2.extractor.TrackOutput trackOutput) {
            return com.google.android.exoplayer2.source.chunk.MediaParserChunkExtractor.a(i, format, z, list, trackOutput);
        }
    };
    public static final java.lang.String TAG = "MediaPrsrChunkExtractor";
    public final com.google.android.exoplayer2.extractor.DummyTrackOutput dummyTrackOutput;
    public final com.google.android.exoplayer2.source.mediaparser.InputReaderAdapterV30 inputReaderAdapter = new com.google.android.exoplayer2.source.mediaparser.InputReaderAdapterV30();
    public final android.media.MediaParser mediaParser;
    public final com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30 outputConsumerAdapter;
    public long pendingSeekUs;
    public com.google.android.exoplayer2.Format[] sampleFormats;
    public com.google.android.exoplayer2.source.chunk.ChunkExtractor.TrackOutputProvider trackOutputProvider;
    public final com.google.android.exoplayer2.source.chunk.MediaParserChunkExtractor.TrackOutputProviderAdapter trackOutputProviderAdapter;

    public class TrackOutputProviderAdapter implements com.google.android.exoplayer2.extractor.ExtractorOutput {
        public TrackOutputProviderAdapter() {
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public void endTracks() {
            com.google.android.exoplayer2.source.chunk.MediaParserChunkExtractor mediaParserChunkExtractor = com.google.android.exoplayer2.source.chunk.MediaParserChunkExtractor.this;
            mediaParserChunkExtractor.sampleFormats = mediaParserChunkExtractor.outputConsumerAdapter.getSampleFormats();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public void seekMap(com.google.android.exoplayer2.extractor.SeekMap seekMap) {
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorOutput
        public com.google.android.exoplayer2.extractor.TrackOutput track(int i, int i2) {
            return com.google.android.exoplayer2.source.chunk.MediaParserChunkExtractor.this.trackOutputProvider != null ? com.google.android.exoplayer2.source.chunk.MediaParserChunkExtractor.this.trackOutputProvider.track(i, i2) : com.google.android.exoplayer2.source.chunk.MediaParserChunkExtractor.this.dummyTrackOutput;
        }
    }

    @android.annotation.SuppressLint({"WrongConstant"})
    public MediaParserChunkExtractor(int i, com.google.android.exoplayer2.Format format, java.util.List<com.google.android.exoplayer2.Format> list) {
        this.outputConsumerAdapter = new com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30(format, i, true);
        java.lang.String str = com.google.android.exoplayer2.util.MimeTypes.isMatroska((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(format.containerMimeType)) ? "android.media.mediaparser.MatroskaParser" : "android.media.mediaparser.FragmentedMp4Parser";
        this.outputConsumerAdapter.setSelectedParserName(str);
        android.media.MediaParser mediaParserCreateByName = android.media.MediaParser.createByName(str, this.outputConsumerAdapter);
        this.mediaParser = mediaParserCreateByName;
        mediaParserCreateByName.setParameter("android.media.mediaparser.matroska.disableCuesSeeking", java.lang.Boolean.TRUE);
        this.mediaParser.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_IN_BAND_CRYPTO_INFO, java.lang.Boolean.TRUE);
        this.mediaParser.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_INCLUDE_SUPPLEMENTAL_DATA, java.lang.Boolean.TRUE);
        this.mediaParser.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_EAGERLY_EXPOSE_TRACK_TYPE, java.lang.Boolean.TRUE);
        this.mediaParser.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_EXPOSE_DUMMY_SEEK_MAP, java.lang.Boolean.TRUE);
        this.mediaParser.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_EXPOSE_CHUNK_INDEX_AS_MEDIA_FORMAT, java.lang.Boolean.TRUE);
        this.mediaParser.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_OVERRIDE_IN_BAND_CAPTION_DECLARATIONS, java.lang.Boolean.TRUE);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        for (int i2 = 0; i2 < list.size(); i2++) {
            arrayList.add(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.toCaptionsMediaFormat(list.get(i2)));
        }
        this.mediaParser.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_EXPOSE_CAPTION_FORMATS, arrayList);
        this.outputConsumerAdapter.setMuxedCaptionFormats(list);
        this.trackOutputProviderAdapter = new com.google.android.exoplayer2.source.chunk.MediaParserChunkExtractor.TrackOutputProviderAdapter();
        this.dummyTrackOutput = new com.google.android.exoplayer2.extractor.DummyTrackOutput();
        this.pendingSeekUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }

    public static /* synthetic */ com.google.android.exoplayer2.source.chunk.ChunkExtractor a(int i, com.google.android.exoplayer2.Format format, boolean z, java.util.List list, com.google.android.exoplayer2.extractor.TrackOutput trackOutput) {
        if (!com.google.android.exoplayer2.util.MimeTypes.isText(format.containerMimeType)) {
            return new com.google.android.exoplayer2.source.chunk.MediaParserChunkExtractor(i, format, list);
        }
        com.google.android.exoplayer2.util.Log.w(TAG, "Ignoring an unsupported text track.");
        return null;
    }

    private void maybeExecutePendingSeek() {
        android.media.MediaParser.SeekMap dummySeekMap = this.outputConsumerAdapter.getDummySeekMap();
        long j = this.pendingSeekUs;
        if (j == com.google.android.exoplayer2.C.TIME_UNSET || dummySeekMap == null) {
            return;
        }
        this.mediaParser.seek((android.media.MediaParser.SeekPoint) dummySeekMap.getSeekPoints(j).first);
        this.pendingSeekUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public com.google.android.exoplayer2.extractor.ChunkIndex getChunkIndex() {
        return this.outputConsumerAdapter.getChunkIndex();
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public com.google.android.exoplayer2.Format[] getSampleFormats() {
        return this.sampleFormats;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public void init(com.google.android.exoplayer2.source.chunk.ChunkExtractor.TrackOutputProvider trackOutputProvider, long j, long j2) {
        this.trackOutputProvider = trackOutputProvider;
        this.outputConsumerAdapter.setSampleTimestampUpperLimitFilterUs(j2);
        this.outputConsumerAdapter.setExtractorOutput(this.trackOutputProviderAdapter);
        this.pendingSeekUs = j;
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public boolean read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        maybeExecutePendingSeek();
        this.inputReaderAdapter.setDataReader(extractorInput, extractorInput.getLength());
        return this.mediaParser.advance(this.inputReaderAdapter);
    }

    @Override // com.google.android.exoplayer2.source.chunk.ChunkExtractor
    public void release() {
        this.mediaParser.release();
    }
}
