package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class Ac3Reader implements com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader {
    public static final int HEADER_SIZE = 128;
    public static final int STATE_FINDING_SYNC = 0;
    public static final int STATE_READING_HEADER = 1;
    public static final int STATE_READING_SAMPLE = 2;
    public int bytesRead;
    public com.google.android.exoplayer2.Format format;
    public java.lang.String formatId;
    public final com.google.android.exoplayer2.util.ParsableBitArray headerScratchBits;
    public final com.google.android.exoplayer2.util.ParsableByteArray headerScratchBytes;
    public final java.lang.String language;
    public boolean lastByteWas0B;
    public com.google.android.exoplayer2.extractor.TrackOutput output;
    public long sampleDurationUs;
    public int sampleSize;
    public int state;
    public long timeUs;

    public Ac3Reader() {
        this(null);
    }

    public Ac3Reader(java.lang.String str) {
        com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray = new com.google.android.exoplayer2.util.ParsableBitArray(new byte[128]);
        this.headerScratchBits = parsableBitArray;
        this.headerScratchBytes = new com.google.android.exoplayer2.util.ParsableByteArray(parsableBitArray.data);
        this.state = 0;
        this.timeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.language = str;
    }

    private boolean continueRead(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int iMin = java.lang.Math.min(parsableByteArray.bytesLeft(), i - this.bytesRead);
        parsableByteArray.readBytes(bArr, this.bytesRead, iMin);
        int i2 = this.bytesRead + iMin;
        this.bytesRead = i2;
        return i2 == i;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private void parseHeader() {
        this.headerScratchBits.setPosition(0);
        com.google.android.exoplayer2.audio.Ac3Util.SyncFrameInfo ac3SyncframeInfo = com.google.android.exoplayer2.audio.Ac3Util.parseAc3SyncframeInfo(this.headerScratchBits);
        com.google.android.exoplayer2.Format format = this.format;
        if (format == null || ac3SyncframeInfo.channelCount != format.channelCount || ac3SyncframeInfo.sampleRate != format.sampleRate || !com.google.android.exoplayer2.util.Util.areEqual(ac3SyncframeInfo.mimeType, format.sampleMimeType)) {
            com.google.android.exoplayer2.Format formatBuild = new com.google.android.exoplayer2.Format.Builder().setId(this.formatId).setSampleMimeType(ac3SyncframeInfo.mimeType).setChannelCount(ac3SyncframeInfo.channelCount).setSampleRate(ac3SyncframeInfo.sampleRate).setLanguage(this.language).build();
            this.format = formatBuild;
            this.output.format(formatBuild);
        }
        this.sampleSize = ac3SyncframeInfo.frameSize;
        this.sampleDurationUs = (ac3SyncframeInfo.sampleCount * 1000000) / this.format.sampleRate;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0014  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean skipToNextSync(com.google.android.exoplayer2.util.ParsableByteArray r6) {
        /*
            r5 = this;
        L0:
            int r0 = r6.bytesLeft()
            r1 = 0
            if (r0 <= 0) goto L26
            boolean r0 = r5.lastByteWas0B
            r2 = 11
            r3 = 1
            if (r0 != 0) goto L18
            int r0 = r6.readUnsignedByte()
            if (r0 != r2) goto L15
        L14:
            r1 = 1
        L15:
            r5.lastByteWas0B = r1
            goto L0
        L18:
            int r0 = r6.readUnsignedByte()
            r4 = 119(0x77, float:1.67E-43)
            if (r0 != r4) goto L23
            r5.lastByteWas0B = r1
            return r3
        L23:
            if (r0 != r2) goto L15
            goto L14
        L26:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.Ac3Reader.skipToNextSync(com.google.android.exoplayer2.util.ParsableByteArray):boolean");
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.output);
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.state;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        int iMin = java.lang.Math.min(parsableByteArray.bytesLeft(), this.sampleSize - this.bytesRead);
                        this.output.sampleData(parsableByteArray, iMin);
                        int i2 = this.bytesRead + iMin;
                        this.bytesRead = i2;
                        int i3 = this.sampleSize;
                        if (i2 == i3) {
                            long j = this.timeUs;
                            if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
                                this.output.sampleMetadata(j, 1, i3, 0, null);
                                this.timeUs += this.sampleDurationUs;
                            }
                            this.state = 0;
                        }
                    }
                } else if (continueRead(parsableByteArray, this.headerScratchBytes.getData(), 128)) {
                    parseHeader();
                    this.headerScratchBytes.setPosition(0);
                    this.output.sampleData(this.headerScratchBytes, 128);
                    this.state = 2;
                }
            } else if (skipToNextSync(parsableByteArray)) {
                this.state = 1;
                this.headerScratchBytes.getData()[0] = 11;
                this.headerScratchBytes.getData()[1] = 119;
                this.bytesRead = 2;
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
        this.bytesRead = 0;
        this.lastByteWas0B = false;
        this.timeUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }
}
