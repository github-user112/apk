package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public final class MediaParserHlsMediaChunkExtractor implements com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor {
    public static final com.google.android.exoplayer2.source.hls.HlsExtractorFactory FACTORY = new com.google.android.exoplayer2.source.hls.HlsExtractorFactory() { // from class: e.c.a.a.n2.g0.e
        @Override // com.google.android.exoplayer2.source.hls.HlsExtractorFactory
        public final com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor createExtractor(android.net.Uri uri, com.google.android.exoplayer2.Format format, java.util.List list, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, java.util.Map map, com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
            return com.google.android.exoplayer2.source.hls.MediaParserHlsMediaChunkExtractor.a(uri, format, list, timestampAdjuster, map, extractorInput);
        }
    };
    public final com.google.android.exoplayer2.Format format;
    public final com.google.android.exoplayer2.source.mediaparser.InputReaderAdapterV30 inputReaderAdapter = new com.google.android.exoplayer2.source.mediaparser.InputReaderAdapterV30();
    public final android.media.MediaParser mediaParser;
    public final e.c.b.b.s<android.media.MediaFormat> muxedCaptionMediaFormats;
    public final com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30 outputConsumerAdapter;
    public final boolean overrideInBandCaptionDeclarations;
    public int pendingSkipBytes;

    public static final class PeekingInputReader implements android.media.MediaParser.SeekableInputReader {
        public final com.google.android.exoplayer2.extractor.ExtractorInput extractorInput;
        public int totalPeekedBytes;

        public PeekingInputReader(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
            this.extractorInput = extractorInput;
        }

        @Override // android.media.MediaParser.InputReader
        public long getLength() {
            return this.extractorInput.getLength();
        }

        @Override // android.media.MediaParser.InputReader
        public long getPosition() {
            return this.extractorInput.getPeekPosition();
        }

        @Override // android.media.MediaParser.InputReader
        public int read(byte[] bArr, int i, int i2) {
            int iPeek = this.extractorInput.peek(bArr, i, i2);
            this.totalPeekedBytes += iPeek;
            return iPeek;
        }

        @Override // android.media.MediaParser.SeekableInputReader
        public void seekToPosition(long j) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public MediaParserHlsMediaChunkExtractor(android.media.MediaParser mediaParser, com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30 outputConsumerAdapterV30, com.google.android.exoplayer2.Format format, boolean z, e.c.b.b.s<android.media.MediaFormat> sVar, int i) {
        this.mediaParser = mediaParser;
        this.outputConsumerAdapter = outputConsumerAdapterV30;
        this.overrideInBandCaptionDeclarations = z;
        this.muxedCaptionMediaFormats = sVar;
        this.format = format;
        this.pendingSkipBytes = i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor a(android.net.Uri uri, com.google.android.exoplayer2.Format format, java.util.List list, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, java.util.Map map, com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws java.io.IOException {
        if (com.google.android.exoplayer2.util.FileTypes.inferFileTypeFromMimeType(format.sampleMimeType) == 13) {
            return new com.google.android.exoplayer2.source.hls.BundledHlsMediaChunkExtractor(new com.google.android.exoplayer2.source.hls.WebvttExtractor(format.language, timestampAdjuster), format, timestampAdjuster);
        }
        boolean z = list != null;
        e.c.b.b.s.a aVarJ = e.c.b.b.s.j();
        if (list != null) {
            for (int i = 0; i < list.size(); i++) {
                aVarJ.b(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.toCaptionsMediaFormat((com.google.android.exoplayer2.Format) list.get(i)));
            }
        } else {
            aVarJ.b(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.toCaptionsMediaFormat(new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CEA608).build()));
        }
        e.c.b.b.s sVarC = aVarJ.c();
        com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30 outputConsumerAdapterV30 = new com.google.android.exoplayer2.source.mediaparser.OutputConsumerAdapterV30();
        if (list == null) {
            list = e.c.b.b.k0.f2705e;
        }
        outputConsumerAdapterV30.setMuxedCaptionFormats(list);
        outputConsumerAdapterV30.setTimestampAdjuster(timestampAdjuster);
        android.media.MediaParser mediaParserCreateMediaParserInstance = createMediaParserInstance(outputConsumerAdapterV30, format, z, sVarC, "android.media.mediaparser.FragmentedMp4Parser", "android.media.mediaparser.Ac3Parser", "android.media.mediaparser.Ac4Parser", "android.media.mediaparser.AdtsParser", "android.media.mediaparser.Mp3Parser", "android.media.mediaparser.TsParser");
        com.google.android.exoplayer2.source.hls.MediaParserHlsMediaChunkExtractor.PeekingInputReader peekingInputReader = new com.google.android.exoplayer2.source.hls.MediaParserHlsMediaChunkExtractor.PeekingInputReader(extractorInput);
        mediaParserCreateMediaParserInstance.advance(peekingInputReader);
        outputConsumerAdapterV30.setSelectedParserName(mediaParserCreateMediaParserInstance.getParserName());
        return new com.google.android.exoplayer2.source.hls.MediaParserHlsMediaChunkExtractor(mediaParserCreateMediaParserInstance, outputConsumerAdapterV30, format, z, sVarC, peekingInputReader.totalPeekedBytes);
    }

    @android.annotation.SuppressLint({"WrongConstant"})
    public static android.media.MediaParser createMediaParserInstance(android.media.MediaParser.OutputConsumer outputConsumer, com.google.android.exoplayer2.Format format, boolean z, e.c.b.b.s<android.media.MediaFormat> sVar, java.lang.String... strArr) {
        android.media.MediaParser mediaParserCreateByName = strArr.length == 1 ? android.media.MediaParser.createByName(strArr[0], outputConsumer) : android.media.MediaParser.create(outputConsumer, strArr);
        mediaParserCreateByName.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_EXPOSE_CAPTION_FORMATS, sVar);
        mediaParserCreateByName.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_OVERRIDE_IN_BAND_CAPTION_DECLARATIONS, java.lang.Boolean.valueOf(z));
        mediaParserCreateByName.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_IN_BAND_CRYPTO_INFO, java.lang.Boolean.TRUE);
        mediaParserCreateByName.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_EAGERLY_EXPOSE_TRACK_TYPE, java.lang.Boolean.TRUE);
        mediaParserCreateByName.setParameter(com.google.android.exoplayer2.source.mediaparser.MediaParserUtil.PARAMETER_IGNORE_TIMESTAMP_OFFSET, java.lang.Boolean.TRUE);
        mediaParserCreateByName.setParameter("android.media.mediaparser.ts.ignoreSpliceInfoStream", java.lang.Boolean.TRUE);
        mediaParserCreateByName.setParameter("android.media.mediaparser.ts.mode", com.google.android.exoplayer2.offline.ActionFile.DOWNLOAD_TYPE_HLS);
        java.lang.String str = format.codecs;
        if (!android.text.TextUtils.isEmpty(str)) {
            if (!com.google.android.exoplayer2.util.MimeTypes.AUDIO_AAC.equals(com.google.android.exoplayer2.util.MimeTypes.getAudioMediaMimeType(str))) {
                mediaParserCreateByName.setParameter("android.media.mediaparser.ts.ignoreAacStream", java.lang.Boolean.TRUE);
            }
            if (!com.google.android.exoplayer2.util.MimeTypes.VIDEO_H264.equals(com.google.android.exoplayer2.util.MimeTypes.getVideoMediaMimeType(str))) {
                mediaParserCreateByName.setParameter("android.media.mediaparser.ts.ignoreAvcStream", java.lang.Boolean.TRUE);
            }
        }
        return mediaParserCreateByName;
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.outputConsumerAdapter.setExtractorOutput(extractorOutput);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public boolean isPackedAudioExtractor() {
        java.lang.String parserName = this.mediaParser.getParserName();
        return "android.media.mediaparser.Ac3Parser".equals(parserName) || "android.media.mediaparser.Ac4Parser".equals(parserName) || "android.media.mediaparser.AdtsParser".equals(parserName) || "android.media.mediaparser.Mp3Parser".equals(parserName);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public boolean isReusable() {
        java.lang.String parserName = this.mediaParser.getParserName();
        return "android.media.mediaparser.FragmentedMp4Parser".equals(parserName) || "android.media.mediaparser.TsParser".equals(parserName);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public void onTruncatedSegmentParsed() {
        this.mediaParser.seek(android.media.MediaParser.SeekPoint.START);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public boolean read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        extractorInput.skipFully(this.pendingSkipBytes);
        this.pendingSkipBytes = 0;
        this.inputReaderAdapter.setDataReader(extractorInput, extractorInput.getLength());
        return this.mediaParser.advance(this.inputReaderAdapter);
    }

    @Override // com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor
    public com.google.android.exoplayer2.source.hls.HlsMediaChunkExtractor recreate() {
        com.google.android.exoplayer2.util.Assertions.checkState(!isReusable());
        return new com.google.android.exoplayer2.source.hls.MediaParserHlsMediaChunkExtractor(createMediaParserInstance(this.outputConsumerAdapter, this.format, this.overrideInBandCaptionDeclarations, this.muxedCaptionMediaFormats, this.mediaParser.getParserName()), this.outputConsumerAdapter, this.format, this.overrideInBandCaptionDeclarations, this.muxedCaptionMediaFormats, 0);
    }
}
