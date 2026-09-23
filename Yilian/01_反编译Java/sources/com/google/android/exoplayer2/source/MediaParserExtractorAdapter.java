package com.google.android.exoplayer2.source;

/* loaded from: classes.dex */
public final class MediaParserExtractorAdapter implements com.google.android.exoplayer2.source.ProgressiveMediaExtractor {
    public static final com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory FACTORY = new com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory() { // from class: e.c.a.a.n2.y
        @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor.Factory
        public final com.google.android.exoplayer2.source.ProgressiveMediaExtractor createProgressiveMediaExtractor() {
            return new com.google.android.exoplayer2.source.MediaParserExtractorAdapter();
        }
    };
    public final android.media.MediaParser mediaParser;
    public java.lang.String parserName;
    public final com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30 outputConsumerAdapter = new com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30();
    public final com.google.android.exoplayer2.source.mediaparser.InputReaderAdapterV30 inputReaderAdapter = new com.google.android.exoplayer2.source.mediaparser.InputReaderAdapterV30();

    @android.annotation.SuppressLint({"WrongConstant"})
    public MediaParserExtractorAdapter() {
        android.media.MediaParser mediaParserCreate = android.media.MediaParser.create(this.outputConsumerAdapter, new java.lang.String[0]);
        this.mediaParser = mediaParserCreate;
        mediaParserCreate.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_EAGERLY_EXPOSE_TRACK_TYPE, java.lang.Boolean.TRUE);
        this.mediaParser.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_IN_BAND_CRYPTO_INFO, java.lang.Boolean.TRUE);
        this.mediaParser.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_INCLUDE_SUPPLEMENTAL_DATA, java.lang.Boolean.TRUE);
        this.parserName = "android.media.mediaparser.UNKNOWN";
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void disableSeekingOnMp3Streams() {
        if ("android.media.mediaparser.Mp3Parser".equals(this.parserName)) {
            this.outputConsumerAdapter.disableSeeking();
        }
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public long getCurrentInputPosition() {
        return this.inputReaderAdapter.getPosition();
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void init(com.google.android.exoplayer2.upstream.DataReader dataReader, android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map, long j, long j2, com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) throws java.io.IOException {
        this.outputConsumerAdapter.setExtractorOutput(extractorOutput);
        this.inputReaderAdapter.setDataReader(dataReader, j2);
        this.inputReaderAdapter.setCurrentPosition(j);
        java.lang.String parserName = this.mediaParser.getParserName();
        if ("android.media.mediaparser.UNKNOWN".equals(parserName)) {
            this.mediaParser.advance(this.inputReaderAdapter);
        } else if (parserName.equals(this.parserName)) {
            return;
        }
        java.lang.String parserName2 = this.mediaParser.getParserName();
        this.parserName = parserName2;
        this.outputConsumerAdapter.setSelectedParserName(parserName2);
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public int read(com.google.android.exoplayer2.extractor.PositionHolder positionHolder) throws java.io.IOException {
        boolean zAdvance = this.mediaParser.advance(this.inputReaderAdapter);
        long andResetSeekPosition = this.inputReaderAdapter.getAndResetSeekPosition();
        positionHolder.position = andResetSeekPosition;
        if (zAdvance) {
            return andResetSeekPosition != -1 ? 1 : 0;
        }
        return -1;
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void release() {
        this.mediaParser.release();
    }

    @Override // com.google.android.exoplayer2.source.ProgressiveMediaExtractor
    public void seek(long j, long j2) {
        this.inputReaderAdapter.setCurrentPosition(j);
        android.util.Pair<android.media.MediaParser.SeekPoint, android.media.MediaParser.SeekPoint> seekPoints = this.outputConsumerAdapter.getSeekPoints(j2);
        this.mediaParser.seek((android.media.MediaParser.SeekPoint) (((android.media.MediaParser.SeekPoint) seekPoints.second).position == j ? seekPoints.second : seekPoints.first));
    }
}
