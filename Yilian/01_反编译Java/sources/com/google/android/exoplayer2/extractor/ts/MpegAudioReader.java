package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class MpegAudioReader implements com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader {
    public static final int HEADER_SIZE = 4;
    public static final int STATE_FINDING_HEADER = 0;
    public static final int STATE_READING_FRAME = 2;
    public static final int STATE_READING_HEADER = 1;
    public java.lang.String formatId;
    public int frameBytesRead;
    public long frameDurationUs;
    public int frameSize;
    public boolean hasOutputFormat;
    public final com.google.android.exoplayer2.audio.MpegAudioUtil.Header header;
    public final com.google.android.exoplayer2.util.ParsableByteArray headerScratch;
    public final java.lang.String language;
    public boolean lastByteWasFF;
    public com.google.android.exoplayer2.extractor.TrackOutput output;
    public int state;
    public long timeUs;

    public MpegAudioReader() {
        this(null);
    }

    public MpegAudioReader(java.lang.String str) {
        this.state = 0;
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(4);
        this.headerScratch = parsableByteArray;
        parsableByteArray.getData()[0] = -1;
        this.header = new com.google.android.exoplayer2.audio.MpegAudioUtil.Header();
        this.timeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.language = str;
    }

    private void findHeader(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        byte[] data = parsableByteArray.getData();
        int iLimit = parsableByteArray.limit();
        for (int position = parsableByteArray.getPosition(); position < iLimit; position++) {
            boolean z = (data[position] & 255) == 255;
            boolean z2 = this.lastByteWasFF && (data[position] & com.umeng.analytics.pro.bj.k) == 224;
            this.lastByteWasFF = z;
            if (z2) {
                parsableByteArray.setPosition(position + 1);
                this.lastByteWasFF = false;
                this.headerScratch.getData()[1] = data[position];
                this.frameBytesRead = 2;
                this.state = 1;
                return;
            }
        }
        parsableByteArray.setPosition(iLimit);
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private void readFrameRemainder(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int iMin = java.lang.Math.min(parsableByteArray.bytesLeft(), this.frameSize - this.frameBytesRead);
        this.output.sampleData(parsableByteArray, iMin);
        int i = this.frameBytesRead + iMin;
        this.frameBytesRead = i;
        int i2 = this.frameSize;
        if (i < i2) {
            return;
        }
        long j = this.timeUs;
        if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
            this.output.sampleMetadata(j, 1, i2, 0, null);
            this.timeUs += this.frameDurationUs;
        }
        this.frameBytesRead = 0;
        this.state = 0;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private void readHeaderRemainder(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int iMin = java.lang.Math.min(parsableByteArray.bytesLeft(), 4 - this.frameBytesRead);
        parsableByteArray.readBytes(this.headerScratch.getData(), this.frameBytesRead, iMin);
        int i = this.frameBytesRead + iMin;
        this.frameBytesRead = i;
        if (i < 4) {
            return;
        }
        this.headerScratch.setPosition(0);
        if (!this.header.setForHeaderData(this.headerScratch.readInt())) {
            this.frameBytesRead = 0;
            this.state = 1;
            return;
        }
        this.frameSize = this.header.frameSize;
        if (!this.hasOutputFormat) {
            this.frameDurationUs = (r8.samplesPerFrame * 1000000) / r8.sampleRate;
            this.output.format(new com.google.android.exoplayer2.Format.Builder().setId(this.formatId).setSampleMimeType(this.header.mimeType).setMaxInputSize(4096).setChannelCount(this.header.channels).setSampleRate(this.header.sampleRate).setLanguage(this.language).build());
            this.hasOutputFormat = true;
        }
        this.headerScratch.setPosition(0);
        this.output.sampleData(this.headerScratch, 4);
        this.state = 2;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.output);
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.state;
            if (i == 0) {
                findHeader(parsableByteArray);
            } else if (i == 1) {
                readHeaderRemainder(parsableByteArray);
            } else {
                if (i != 2) {
                    throw new java.lang.IllegalStateException();
                }
                readFrameRemainder(parsableByteArray);
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void createTracks(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
            this.timeUs = j;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.state = 0;
        this.frameBytesRead = 0;
        this.lastByteWasFF = false;
        this.timeUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }
}
