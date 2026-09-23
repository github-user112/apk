package com.google.android.exoplayer2.extractor.ogg;

/* loaded from: classes.dex */
public abstract class StreamReader {
    public static final int STATE_END_OF_INPUT = 3;
    public static final int STATE_READ_HEADERS = 0;
    public static final int STATE_READ_PAYLOAD = 2;
    public static final int STATE_SKIP_HEADERS = 1;
    public long currentGranule;
    public com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
    public boolean formatSet;
    public long lengthOfReadPacket;
    public com.google.android.exoplayer2.extractor.ogg.OggSeeker oggSeeker;
    public long payloadStartPosition;
    public int sampleRate;
    public boolean seekMapSet;
    public int state;
    public long targetGranule;
    public com.google.android.exoplayer2.extractor.TrackOutput trackOutput;
    public final com.google.android.exoplayer2.extractor.ogg.OggPacket oggPacket = new com.google.android.exoplayer2.extractor.ogg.OggPacket();
    public com.google.android.exoplayer2.extractor.ogg.StreamReader.SetupData setupData = new com.google.android.exoplayer2.extractor.ogg.StreamReader.SetupData();

    public static class SetupData {
        public com.google.android.exoplayer2.Format format;
        public com.google.android.exoplayer2.extractor.ogg.OggSeeker oggSeeker;
    }

    public static final class UnseekableOggSeeker implements com.google.android.exoplayer2.extractor.ogg.OggSeeker {
        public UnseekableOggSeeker() {
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.OggSeeker
        public com.google.android.exoplayer2.extractor.SeekMap createSeekMap() {
            return new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(com.google.android.exoplayer2.C.TIME_UNSET);
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.OggSeeker
        public long read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
            return -1L;
        }

        @Override // com.google.android.exoplayer2.extractor.ogg.OggSeeker
        public void startSeek(long j) {
        }
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"trackOutput", "extractorOutput"})
    private void assertInitialized() {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.trackOutput);
        com.google.android.exoplayer2.util.Util.castNonNull(this.extractorOutput);
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNullIf(expression = {"setupData.format"}, result = true)
    private boolean readHeaders(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        while (this.oggPacket.populate(extractorInput)) {
            this.lengthOfReadPacket = extractorInput.getPosition() - this.payloadStartPosition;
            if (!readHeaders(this.oggPacket.getPayload(), this.payloadStartPosition, this.setupData)) {
                return true;
            }
            this.payloadStartPosition = extractorInput.getPosition();
        }
        this.state = 3;
        return false;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"trackOutput"})
    private int readHeadersAndUpdateState(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        if (!readHeaders(extractorInput)) {
            return -1;
        }
        com.google.android.exoplayer2.Format format = this.setupData.format;
        this.sampleRate = format.sampleRate;
        if (!this.formatSet) {
            this.trackOutput.format(format);
            this.formatSet = true;
        }
        com.google.android.exoplayer2.extractor.ogg.OggSeeker unseekableOggSeeker = this.setupData.oggSeeker;
        if (unseekableOggSeeker != null) {
            this.oggSeeker = unseekableOggSeeker;
        } else if (extractorInput.getLength() == -1) {
            unseekableOggSeeker = new com.google.android.exoplayer2.extractor.ogg.StreamReader.UnseekableOggSeeker();
            this.oggSeeker = unseekableOggSeeker;
        } else {
            com.google.android.exoplayer2.extractor.ogg.OggPageHeader pageHeader = this.oggPacket.getPageHeader();
            this.oggSeeker = new com.google.android.exoplayer2.extractor.ogg.DefaultOggSeeker(this, this.payloadStartPosition, extractorInput.getLength(), pageHeader.headerSize + pageHeader.bodySize, pageHeader.granulePosition, (pageHeader.type & 4) != 0);
        }
        this.state = 2;
        this.oggPacket.trimPayload();
        return 0;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"trackOutput", "oggSeeker", "extractorOutput"})
    private int readPayload(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        long j = this.oggSeeker.read(extractorInput);
        if (j >= 0) {
            positionHolder.position = j;
            return 1;
        }
        if (j < -1) {
            onSeekEnd(-(j + 2));
        }
        if (!this.seekMapSet) {
            this.extractorOutput.seekMap((com.google.android.exoplayer2.extractor.SeekMap) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.oggSeeker.createSeekMap()));
            this.seekMapSet = true;
        }
        if (this.lengthOfReadPacket <= 0 && !this.oggPacket.populate(extractorInput)) {
            this.state = 3;
            return -1;
        }
        this.lengthOfReadPacket = 0L;
        com.google.android.exoplayer2.util.ParsableByteArray payload = this.oggPacket.getPayload();
        long jPreparePayload = preparePayload(payload);
        if (jPreparePayload >= 0) {
            long j2 = this.currentGranule;
            if (j2 + jPreparePayload >= this.targetGranule) {
                long jConvertGranuleToTime = convertGranuleToTime(j2);
                this.trackOutput.sampleData(payload, payload.limit());
                this.trackOutput.sampleMetadata(jConvertGranuleToTime, 1, payload.limit(), 0, null);
                this.targetGranule = -1L;
            }
        }
        this.currentGranule += jPreparePayload;
        return 0;
    }

    public long convertGranuleToTime(long j) {
        return (j * 1000000) / this.sampleRate;
    }

    public long convertTimeToGranule(long j) {
        return (this.sampleRate * j) / 1000000;
    }

    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.TrackOutput trackOutput) {
        this.extractorOutput = extractorOutput;
        this.trackOutput = trackOutput;
        reset(true);
    }

    public void onSeekEnd(long j) {
        this.currentGranule = j;
    }

    public abstract long preparePayload(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray);

    public final int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        assertInitialized();
        int i = this.state;
        if (i == 0) {
            return readHeadersAndUpdateState(extractorInput);
        }
        if (i == 1) {
            extractorInput.skipFully((int) this.payloadStartPosition);
            this.state = 2;
            return 0;
        }
        if (i == 2) {
            com.google.android.exoplayer2.util.Util.castNonNull(this.oggSeeker);
            return readPayload(extractorInput, positionHolder);
        }
        if (i == 3) {
            return -1;
        }
        throw new java.lang.IllegalStateException();
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNullIf(expression = {"#3.format"}, result = false)
    public abstract boolean readHeaders(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, long j, com.google.android.exoplayer2.extractor.ogg.StreamReader.SetupData setupData);

    public void reset(boolean z) {
        int i;
        if (z) {
            this.setupData = new com.google.android.exoplayer2.extractor.ogg.StreamReader.SetupData();
            this.payloadStartPosition = 0L;
            i = 0;
        } else {
            i = 1;
        }
        this.state = i;
        this.targetGranule = -1L;
        this.currentGranule = 0L;
    }

    public final void seek(long j, long j2) {
        this.oggPacket.reset();
        if (j == 0) {
            reset(!this.seekMapSet);
        } else if (this.state != 0) {
            this.targetGranule = convertTimeToGranule(j2);
            ((com.google.android.exoplayer2.extractor.ogg.OggSeeker) com.google.android.exoplayer2.util.Util.castNonNull(this.oggSeeker)).startSeek(this.targetGranule);
            this.state = 2;
        }
    }
}
