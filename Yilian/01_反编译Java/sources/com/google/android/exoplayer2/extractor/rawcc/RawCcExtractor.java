package com.google.android.exoplayer2.extractor.rawcc;

/* loaded from: classes.dex */
public final class RawCcExtractor implements com.google.android.exoplayer2.extractor.Extractor {
    public static final int HEADER_ID = 1380139777;
    public static final int HEADER_SIZE = 8;
    public static final int SCRATCH_SIZE = 9;
    public static final int STATE_READING_HEADER = 0;
    public static final int STATE_READING_SAMPLES = 2;
    public static final int STATE_READING_TIMESTAMP_AND_COUNT = 1;
    public static final int TIMESTAMP_SIZE_V0 = 4;
    public static final int TIMESTAMP_SIZE_V1 = 8;
    public final com.google.android.exoplayer2.Format format;
    public int remainingSampleCount;
    public int sampleBytesWritten;
    public long timestampUs;
    public com.google.android.exoplayer2.extractor.TrackOutput trackOutput;
    public int version;
    public final com.google.android.exoplayer2.util.ParsableByteArray dataScratch = new com.google.android.exoplayer2.util.ParsableByteArray(9);
    public int parserState = 0;

    public RawCcExtractor(com.google.android.exoplayer2.Format format) {
        this.format = format;
    }

    private boolean parseHeader(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws java.io.IOException {
        this.dataScratch.reset(8);
        if (!extractorInput.readFully(this.dataScratch.getData(), 0, 8, true)) {
            return false;
        }
        if (this.dataScratch.readInt() != 1380139777) {
            throw new java.io.IOException("Input not RawCC");
        }
        this.version = this.dataScratch.readUnsignedByte();
        return true;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"trackOutput"})
    private void parseSamples(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        while (this.remainingSampleCount > 0) {
            this.dataScratch.reset(3);
            extractorInput.readFully(this.dataScratch.getData(), 0, 3);
            this.trackOutput.sampleData(this.dataScratch, 3);
            this.sampleBytesWritten += 3;
            this.remainingSampleCount--;
        }
        int i = this.sampleBytesWritten;
        if (i > 0) {
            this.trackOutput.sampleMetadata(this.timestampUs, 1, i, 0, null);
        }
    }

    private boolean parseTimestampAndSampleCount(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        long unsignedInt;
        int i = this.version;
        if (i == 0) {
            this.dataScratch.reset(5);
            if (!extractorInput.readFully(this.dataScratch.getData(), 0, 5, true)) {
                return false;
            }
            unsignedInt = (this.dataScratch.readUnsignedInt() * 1000) / 45;
        } else {
            if (i != 1) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder(39);
                sb.append("Unsupported version number: ");
                sb.append(i);
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
            }
            this.dataScratch.reset(9);
            if (!extractorInput.readFully(this.dataScratch.getData(), 0, 9, true)) {
                return false;
            }
            unsignedInt = this.dataScratch.readLong();
        }
        this.timestampUs = unsignedInt;
        this.remainingSampleCount = this.dataScratch.readUnsignedByte();
        this.sampleBytesWritten = 0;
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        extractorOutput.seekMap(new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(com.google.android.exoplayer2.C.TIME_UNSET));
        com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = extractorOutput.track(0, 3);
        this.trackOutput = trackOutputTrack;
        trackOutputTrack.format(this.format);
        extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.trackOutput);
        while (true) {
            int i = this.parserState;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        throw new java.lang.IllegalStateException();
                    }
                    parseSamples(extractorInput);
                    this.parserState = 1;
                    return 0;
                }
                if (!parseTimestampAndSampleCount(extractorInput)) {
                    this.parserState = 0;
                    return -1;
                }
                this.parserState = 2;
            } else {
                if (!parseHeader(extractorInput)) {
                    return -1;
                }
                this.parserState = 1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.parserState = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        this.dataScratch.reset(8);
        extractorInput.peekFully(this.dataScratch.getData(), 0, 8);
        return this.dataScratch.readInt() == 1380139777;
    }
}
