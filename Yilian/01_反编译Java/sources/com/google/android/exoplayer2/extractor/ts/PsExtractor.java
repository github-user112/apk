package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class PsExtractor implements com.google.android.exoplayer2.extractor.Extractor {
    public static final int AUDIO_STREAM = 192;
    public static final int AUDIO_STREAM_MASK = 224;
    public static final com.google.android.exoplayer2.extractor.ExtractorsFactory FACTORY = new com.google.android.exoplayer2.extractor.ExtractorsFactory() { // from class: e.c.a.a.i2.l.d
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final com.google.android.exoplayer2.extractor.Extractor[] createExtractors() {
            return com.google.android.exoplayer2.extractor.ts.PsExtractor.a();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] createExtractors(android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map) {
            return createExtractors();
        }
    };
    public static final long MAX_SEARCH_LENGTH = 1048576;
    public static final long MAX_SEARCH_LENGTH_AFTER_AUDIO_AND_VIDEO_FOUND = 8192;
    public static final int MAX_STREAM_ID_PLUS_ONE = 256;
    public static final int MPEG_PROGRAM_END_CODE = 441;
    public static final int PACKET_START_CODE_PREFIX = 1;
    public static final int PACK_START_CODE = 442;
    public static final int PRIVATE_STREAM_1 = 189;
    public static final int SYSTEM_HEADER_START_CODE = 443;
    public static final int VIDEO_STREAM = 224;
    public static final int VIDEO_STREAM_MASK = 240;
    public final com.google.android.exoplayer2.extractor.ts.PsDurationReader durationReader;
    public boolean foundAllTracks;
    public boolean foundAudioTrack;
    public boolean foundVideoTrack;
    public boolean hasOutputSeekMap;
    public long lastTrackPosition;
    public com.google.android.exoplayer2.extractor.ExtractorOutput output;
    public com.google.android.exoplayer2.extractor.ts.PsBinarySearchSeeker psBinarySearchSeeker;
    public final com.google.android.exoplayer2.util.ParsableByteArray psPacketBuffer;
    public final android.util.SparseArray<com.google.android.exoplayer2.extractor.ts.PsExtractor.PesReader> psPayloadReaders;
    public final com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster;

    public static final class PesReader {
        public static final int PES_SCRATCH_SIZE = 64;
        public boolean dtsFlag;
        public int extendedHeaderLength;
        public final com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader pesPayloadReader;
        public final com.google.android.exoplayer2.util.ParsableBitArray pesScratch = new com.google.android.exoplayer2.util.ParsableBitArray(new byte[64]);
        public boolean ptsFlag;
        public boolean seenFirstDts;
        public long timeUs;
        public final com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster;

        public PesReader(com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader elementaryStreamReader, com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster) {
            this.pesPayloadReader = elementaryStreamReader;
            this.timestampAdjuster = timestampAdjuster;
        }

        private void parseHeader() {
            this.pesScratch.skipBits(8);
            this.ptsFlag = this.pesScratch.readBit();
            this.dtsFlag = this.pesScratch.readBit();
            this.pesScratch.skipBits(6);
            this.extendedHeaderLength = this.pesScratch.readBits(8);
        }

        private void parseHeaderExtension() {
            this.timeUs = 0L;
            if (this.ptsFlag) {
                this.pesScratch.skipBits(4);
                this.pesScratch.skipBits(1);
                this.pesScratch.skipBits(1);
                long bits = (this.pesScratch.readBits(3) << 30) | (this.pesScratch.readBits(15) << 15) | this.pesScratch.readBits(15);
                this.pesScratch.skipBits(1);
                if (!this.seenFirstDts && this.dtsFlag) {
                    this.pesScratch.skipBits(4);
                    this.pesScratch.skipBits(1);
                    this.pesScratch.skipBits(1);
                    this.pesScratch.skipBits(1);
                    this.timestampAdjuster.adjustTsTimestamp((this.pesScratch.readBits(3) << 30) | (this.pesScratch.readBits(15) << 15) | this.pesScratch.readBits(15));
                    this.seenFirstDts = true;
                }
                this.timeUs = this.timestampAdjuster.adjustTsTimestamp(bits);
            }
        }

        public void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
            parsableByteArray.readBytes(this.pesScratch.data, 0, 3);
            this.pesScratch.setPosition(0);
            parseHeader();
            parsableByteArray.readBytes(this.pesScratch.data, 0, this.extendedHeaderLength);
            this.pesScratch.setPosition(0);
            parseHeaderExtension();
            this.pesPayloadReader.packetStarted(this.timeUs, 4);
            this.pesPayloadReader.consume(parsableByteArray);
            this.pesPayloadReader.packetFinished();
        }

        public void seek() {
            this.seenFirstDts = false;
            this.pesPayloadReader.seek();
        }
    }

    public PsExtractor() {
        this(new com.google.android.exoplayer2.util.TimestampAdjuster(0L));
    }

    public PsExtractor(com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster) {
        this.timestampAdjuster = timestampAdjuster;
        this.psPacketBuffer = new com.google.android.exoplayer2.util.ParsableByteArray(4096);
        this.psPayloadReaders = new android.util.SparseArray<>();
        this.durationReader = new com.google.android.exoplayer2.extractor.ts.PsDurationReader();
    }

    public static /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] a() {
        return new com.google.android.exoplayer2.extractor.Extractor[]{new com.google.android.exoplayer2.extractor.ts.PsExtractor()};
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private void maybeOutputSeekMap(long j) {
        com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
        com.google.android.exoplayer2.extractor.SeekMap unseekable;
        if (this.hasOutputSeekMap) {
            return;
        }
        this.hasOutputSeekMap = true;
        if (this.durationReader.getDurationUs() != com.google.android.exoplayer2.C.TIME_UNSET) {
            com.google.android.exoplayer2.extractor.ts.PsBinarySearchSeeker psBinarySearchSeeker = new com.google.android.exoplayer2.extractor.ts.PsBinarySearchSeeker(this.durationReader.getScrTimestampAdjuster(), this.durationReader.getDurationUs(), j);
            this.psBinarySearchSeeker = psBinarySearchSeeker;
            extractorOutput = this.output;
            unseekable = psBinarySearchSeeker.getSeekMap();
        } else {
            extractorOutput = this.output;
            unseekable = new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(this.durationReader.getDurationUs());
        }
        extractorOutput.seekMap(unseekable);
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.output = extractorOutput;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00fa  */
    @Override // com.google.android.exoplayer2.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int read(com.google.android.exoplayer2.extractor.ExtractorInput r11, com.google.android.exoplayer2.extractor.PositionHolder r12) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.PsExtractor.read(com.google.android.exoplayer2.extractor.ExtractorInput, com.google.android.exoplayer2.extractor.PositionHolder):int");
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        boolean z = this.timestampAdjuster.getTimestampOffsetUs() == com.google.android.exoplayer2.C.TIME_UNSET;
        if (!z) {
            long firstSampleTimestampUs = this.timestampAdjuster.getFirstSampleTimestampUs();
            z = (firstSampleTimestampUs == com.google.android.exoplayer2.C.TIME_UNSET || firstSampleTimestampUs == 0 || firstSampleTimestampUs == j2) ? false : true;
        }
        if (z) {
            this.timestampAdjuster.reset(j2);
        }
        com.google.android.exoplayer2.extractor.ts.PsBinarySearchSeeker psBinarySearchSeeker = this.psBinarySearchSeeker;
        if (psBinarySearchSeeker != null) {
            psBinarySearchSeeker.setSeekTargetUs(j2);
        }
        for (int i = 0; i < this.psPayloadReaders.size(); i++) {
            this.psPayloadReaders.valueAt(i).seek();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        byte[] bArr = new byte[14];
        extractorInput.peekFully(bArr, 0, 14);
        if (442 != (((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        extractorInput.advancePeekPosition(bArr[13] & 7);
        extractorInput.peekFully(bArr, 0, 3);
        return 1 == ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255));
    }
}
