package com.google.android.exoplayer2.source.hls;

/* loaded from: classes.dex */
public final class WebvttExtractor implements com.google.android.exoplayer2.extractor.Extractor {
    public static final int HEADER_MAX_LENGTH = 9;
    public static final int HEADER_MIN_LENGTH = 6;
    public static final java.util.regex.Pattern LOCAL_TIMESTAMP = java.util.regex.Pattern.compile("LOCAL:([^,]+)");
    public static final java.util.regex.Pattern MEDIA_TIMESTAMP = java.util.regex.Pattern.compile("MPEGTS:(-?\\d+)");
    public final java.lang.String language;
    public com.google.android.exoplayer2.extractor.ExtractorOutput output;
    public int sampleSize;
    public final com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster;
    public final com.google.android.exoplayer2.util.ParsableByteArray sampleDataWrapper = new com.google.android.exoplayer2.util.ParsableByteArray();
    public byte[] sampleData = new byte[1024];

    public WebvttExtractor(java.lang.String str, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster) {
        this.language = str;
        this.timestampAdjuster = timestampAdjuster;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private com.google.android.exoplayer2.extractor.TrackOutput buildTrackOutput(long j) {
        com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = this.output.track(0, 3);
        trackOutputTrack.format(new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.TEXT_VTT).setLanguage(this.language).setSubsampleOffsetUs(j).build());
        this.output.endTracks();
        return trackOutputTrack;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private void processSample() throws com.google.android.exoplayer2.ParserException {
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(this.sampleData);
        com.google.android.exoplayer2.text.webvtt.WebvttParserUtil.validateWebvttHeaderLine(parsableByteArray);
        long jPtsToUs = 0;
        long timestampUs = 0;
        for (java.lang.String line = parsableByteArray.readLine(); !android.text.TextUtils.isEmpty(line); line = parsableByteArray.readLine()) {
            if (line.startsWith("X-TIMESTAMP-MAP")) {
                java.util.regex.Matcher matcher = LOCAL_TIMESTAMP.matcher(line);
                if (!matcher.find()) {
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(line.length() != 0 ? "X-TIMESTAMP-MAP doesn't contain local timestamp: ".concat(line) : new java.lang.String("X-TIMESTAMP-MAP doesn't contain local timestamp: "), null);
                }
                java.util.regex.Matcher matcher2 = MEDIA_TIMESTAMP.matcher(line);
                if (!matcher2.find()) {
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(line.length() != 0 ? "X-TIMESTAMP-MAP doesn't contain media timestamp: ".concat(line) : new java.lang.String("X-TIMESTAMP-MAP doesn't contain media timestamp: "), null);
                }
                timestampUs = com.google.android.exoplayer2.text.webvtt.WebvttParserUtil.parseTimestampUs((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher.group(1)));
                jPtsToUs = com.google.android.exoplayer2.util.TimestampAdjuster.ptsToUs(java.lang.Long.parseLong((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcher2.group(1))));
            }
        }
        java.util.regex.Matcher matcherFindNextCueHeader = com.google.android.exoplayer2.text.webvtt.WebvttParserUtil.findNextCueHeader(parsableByteArray);
        if (matcherFindNextCueHeader == null) {
            buildTrackOutput(0L);
            return;
        }
        long timestampUs2 = com.google.android.exoplayer2.text.webvtt.WebvttParserUtil.parseTimestampUs((java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(matcherFindNextCueHeader.group(1)));
        long jAdjustTsTimestamp = this.timestampAdjuster.adjustTsTimestamp(com.google.android.exoplayer2.util.TimestampAdjuster.usToWrappedPts((jPtsToUs + timestampUs2) - timestampUs));
        com.google.android.exoplayer2.extractor.TrackOutput trackOutputBuildTrackOutput = buildTrackOutput(jAdjustTsTimestamp - timestampUs2);
        this.sampleDataWrapper.reset(this.sampleData, this.sampleSize);
        trackOutputBuildTrackOutput.sampleData(this.sampleDataWrapper, this.sampleSize);
        trackOutputBuildTrackOutput.sampleMetadata(jAdjustTsTimestamp, 1, this.sampleSize, 0, null);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
        extractorOutput.seekMap(new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(com.google.android.exoplayer2.C.TIME_UNSET));
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) throws com.google.android.exoplayer2.ParserException {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.output);
        int length = (int) extractorInput.getLength();
        int i = this.sampleSize;
        byte[] bArr = this.sampleData;
        if (i == bArr.length) {
            this.sampleData = java.util.Arrays.copyOf(bArr, ((length != -1 ? length : bArr.length) * 3) / 2);
        }
        byte[] bArr2 = this.sampleData;
        int i2 = this.sampleSize;
        int i3 = extractorInput.read(bArr2, i2, bArr2.length - i2);
        if (i3 != -1) {
            int i4 = this.sampleSize + i3;
            this.sampleSize = i4;
            if (length == -1 || i4 != length) {
                return 0;
            }
        }
        processSample();
        return -1;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        throw new java.lang.IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        extractorInput.peekFully(this.sampleData, 0, 6, false);
        this.sampleDataWrapper.reset(this.sampleData, 6);
        if (com.google.android.exoplayer2.text.webvtt.WebvttParserUtil.isWebvttHeaderLine(this.sampleDataWrapper)) {
            return true;
        }
        extractorInput.peekFully(this.sampleData, 6, 3, false);
        this.sampleDataWrapper.reset(this.sampleData, 9);
        return com.google.android.exoplayer2.text.webvtt.WebvttParserUtil.isWebvttHeaderLine(this.sampleDataWrapper);
    }
}
