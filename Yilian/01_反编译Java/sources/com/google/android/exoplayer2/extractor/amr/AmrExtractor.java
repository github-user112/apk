package com.google.android.exoplayer2.extractor.amr;

/* loaded from: classes.dex */
public final class AmrExtractor implements com.google.android.exoplayer2.extractor.Extractor {
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS = 2;
    public static final int NUM_SAME_SIZE_CONSTANT_BIT_RATE_THRESHOLD = 20;
    public static final int SAMPLE_RATE_NB = 8000;
    public static final int SAMPLE_RATE_WB = 16000;
    public static final int SAMPLE_TIME_PER_FRAME_US = 20000;
    public int currentSampleBytesRemaining;
    public int currentSampleSize;
    public long currentSampleTimeUs;
    public com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
    public long firstSamplePosition;
    public int firstSampleSize;
    public final int flags;
    public boolean hasOutputFormat;
    public boolean hasOutputSeekMap;
    public boolean isWideBand;
    public int numSamplesWithSameSize;
    public final byte[] scratch;
    public com.google.android.exoplayer2.extractor.SeekMap seekMap;
    public long timeOffsetUs;
    public com.google.android.exoplayer2.extractor.TrackOutput trackOutput;
    public static final com.google.android.exoplayer2.extractor.ExtractorsFactory FACTORY = new com.google.android.exoplayer2.extractor.ExtractorsFactory() { // from class: e.c.a.a.i2.e.a
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final com.google.android.exoplayer2.extractor.Extractor[] createExtractors() {
            return com.google.android.exoplayer2.extractor.amr.AmrExtractor.a();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] createExtractors(android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map) {
            return createExtractors();
        }
    };
    public static final int[] frameSizeBytesByTypeNb = {13, 14, 16, 18, 20, 21, 27, 32, 6, 7, 6, 6, 1, 1, 1, 1};
    public static final int[] frameSizeBytesByTypeWb = {18, 24, 33, 37, 41, 47, 51, 59, 61, 6, 1, 1, 1, 1, 1, 1};
    public static final byte[] amrSignatureNb = com.google.android.exoplayer2.util.Util.getUtf8Bytes("#!AMR\n");
    public static final byte[] amrSignatureWb = com.google.android.exoplayer2.util.Util.getUtf8Bytes("#!AMR-WB\n");
    public static final int MAX_FRAME_SIZE_BYTES = frameSizeBytesByTypeWb[8];

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public AmrExtractor() {
        this(0);
    }

    public AmrExtractor(int i) {
        this.flags = (i & 2) != 0 ? i | 1 : i;
        this.scratch = new byte[1];
        this.firstSampleSize = -1;
    }

    public static /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] a() {
        return new com.google.android.exoplayer2.extractor.Extractor[]{new com.google.android.exoplayer2.extractor.amr.AmrExtractor()};
    }

    public static byte[] amrSignatureNb() {
        byte[] bArr = amrSignatureNb;
        return java.util.Arrays.copyOf(bArr, bArr.length);
    }

    public static byte[] amrSignatureWb() {
        byte[] bArr = amrSignatureWb;
        return java.util.Arrays.copyOf(bArr, bArr.length);
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"extractorOutput", "trackOutput"})
    private void assertInitialized() {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.trackOutput);
        com.google.android.exoplayer2.util.Util.castNonNull(this.extractorOutput);
    }

    public static int frameSizeBytesByTypeNb(int i) {
        return frameSizeBytesByTypeNb[i];
    }

    public static int frameSizeBytesByTypeWb(int i) {
        return frameSizeBytesByTypeWb[i];
    }

    public static int getBitrateFromFrameSize(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    private com.google.android.exoplayer2.extractor.SeekMap getConstantBitrateSeekMap(long j, boolean z) {
        return new com.google.android.exoplayer2.extractor.ConstantBitrateSeekMap(j, this.firstSamplePosition, getBitrateFromFrameSize(this.firstSampleSize, com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US), this.firstSampleSize, z);
    }

    private int getFrameSizeInBytes(int i) throws com.google.android.exoplayer2.ParserException {
        if (isValidFrameType(i)) {
            return this.isWideBand ? frameSizeBytesByTypeWb[i] : frameSizeBytesByTypeNb[i];
        }
        java.lang.String str = this.isWideBand ? "WB" : "NB";
        java.lang.StringBuilder sb = new java.lang.StringBuilder(str.length() + 35);
        sb.append("Illegal AMR ");
        sb.append(str);
        sb.append(" frame type ");
        sb.append(i);
        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
    }

    private boolean isNarrowBandValidFrameType(int i) {
        return !this.isWideBand && (i < 12 || i > 14);
    }

    private boolean isValidFrameType(int i) {
        return i >= 0 && i <= 15 && (isWideBandValidFrameType(i) || isNarrowBandValidFrameType(i));
    }

    private boolean isWideBandValidFrameType(int i) {
        return this.isWideBand && (i < 10 || i > 13);
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"trackOutput"})
    private void maybeOutputFormat() {
        if (this.hasOutputFormat) {
            return;
        }
        this.hasOutputFormat = true;
        this.trackOutput.format(new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(this.isWideBand ? com.google.android.exoplayer2.util.MimeTypes.AUDIO_AMR_WB : com.google.android.exoplayer2.util.MimeTypes.AUDIO_AMR_NB).setMaxInputSize(MAX_FRAME_SIZE_BYTES).setChannelCount(1).setSampleRate(this.isWideBand ? 16000 : 8000).build());
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput"})
    private void maybeOutputSeekMap(long j, int i) {
        com.google.android.exoplayer2.extractor.SeekMap unseekable;
        int i2;
        if (this.hasOutputSeekMap) {
            return;
        }
        if ((this.flags & 1) == 0 || j == -1 || !((i2 = this.firstSampleSize) == -1 || i2 == this.currentSampleSize)) {
            unseekable = new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(com.google.android.exoplayer2.C.TIME_UNSET);
        } else if (this.numSamplesWithSameSize < 20 && i != -1) {
            return;
        } else {
            unseekable = getConstantBitrateSeekMap(j, (this.flags & 2) != 0);
        }
        this.seekMap = unseekable;
        this.extractorOutput.seekMap(unseekable);
        this.hasOutputSeekMap = true;
    }

    public static boolean peekAmrSignature(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, byte[] bArr) {
        extractorInput.resetPeekPosition();
        byte[] bArr2 = new byte[bArr.length];
        extractorInput.peekFully(bArr2, 0, bArr.length);
        return java.util.Arrays.equals(bArr2, bArr);
    }

    private int peekNextSampleSize(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        extractorInput.resetPeekPosition();
        extractorInput.peekFully(this.scratch, 0, 1);
        byte b = this.scratch[0];
        if ((b & 131) <= 0) {
            return getFrameSizeInBytes((b >> 3) & 15);
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(42);
        sb.append("Invalid padding bits for frame header ");
        sb.append((int) b);
        throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
    }

    private boolean readAmrHeader(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        int length;
        if (peekAmrSignature(extractorInput, amrSignatureNb)) {
            this.isWideBand = false;
            length = amrSignatureNb.length;
        } else {
            if (!peekAmrSignature(extractorInput, amrSignatureWb)) {
                return false;
            }
            this.isWideBand = true;
            length = amrSignatureWb.length;
        }
        extractorInput.skipFully(length);
        return true;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"trackOutput"})
    private int readSample(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        if (this.currentSampleBytesRemaining == 0) {
            try {
                int iPeekNextSampleSize = peekNextSampleSize(extractorInput);
                this.currentSampleSize = iPeekNextSampleSize;
                this.currentSampleBytesRemaining = iPeekNextSampleSize;
                if (this.firstSampleSize == -1) {
                    this.firstSamplePosition = extractorInput.getPosition();
                    this.firstSampleSize = this.currentSampleSize;
                }
                if (this.firstSampleSize == this.currentSampleSize) {
                    this.numSamplesWithSameSize++;
                }
            } catch (java.io.EOFException unused) {
                return -1;
            }
        }
        int iSampleData = this.trackOutput.sampleData((com.google.android.exoplayer2.upstream.DataReader) extractorInput, this.currentSampleBytesRemaining, true);
        if (iSampleData == -1) {
            return -1;
        }
        int i = this.currentSampleBytesRemaining - iSampleData;
        this.currentSampleBytesRemaining = i;
        if (i > 0) {
            return 0;
        }
        this.trackOutput.sampleMetadata(this.timeOffsetUs + this.currentSampleTimeUs, 1, this.currentSampleSize, 0, null);
        this.currentSampleTimeUs += com.google.android.exoplayer2.audio.SilenceSkippingAudioProcessor.DEFAULT_PADDING_SILENCE_US;
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = extractorOutput.track(0, 1);
        extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) throws com.google.android.exoplayer2.ParserException {
        assertInitialized();
        if (extractorInput.getPosition() == 0 && !readAmrHeader(extractorInput)) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Could not find AMR header.", null);
        }
        maybeOutputFormat();
        int sample = readSample(extractorInput);
        maybeOutputSeekMap(extractorInput.getLength(), sample);
        return sample;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.currentSampleTimeUs = 0L;
        this.currentSampleSize = 0;
        this.currentSampleBytesRemaining = 0;
        if (j != 0) {
            com.google.android.exoplayer2.extractor.SeekMap seekMap = this.seekMap;
            if (seekMap instanceof com.google.android.exoplayer2.extractor.ConstantBitrateSeekMap) {
                this.timeOffsetUs = ((com.google.android.exoplayer2.extractor.ConstantBitrateSeekMap) seekMap).getTimeUsAtPosition(j);
                return;
            }
        }
        this.timeOffsetUs = 0L;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        return readAmrHeader(extractorInput);
    }
}
