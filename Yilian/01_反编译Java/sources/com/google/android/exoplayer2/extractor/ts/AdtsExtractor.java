package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class AdtsExtractor implements com.google.android.exoplayer2.extractor.Extractor {
    public static final com.google.android.exoplayer2.extractor.ExtractorsFactory FACTORY = new com.google.android.exoplayer2.extractor.ExtractorsFactory() { // from class: e.c.a.a.i2.l.c
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final com.google.android.exoplayer2.extractor.Extractor[] createExtractors() {
            return com.google.android.exoplayer2.extractor.ts.AdtsExtractor.a();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] createExtractors(android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map) {
            return createExtractors();
        }
    };
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING = 1;
    public static final int FLAG_ENABLE_CONSTANT_BITRATE_SEEKING_ALWAYS = 2;
    public static final int MAX_PACKET_SIZE = 2048;
    public static final int MAX_SNIFF_BYTES = 8192;
    public static final int NUM_FRAMES_FOR_AVERAGE_FRAME_SIZE = 1000;
    public int averageFrameSize;
    public com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
    public long firstFramePosition;
    public long firstSampleTimestampUs;
    public final int flags;
    public boolean hasCalculatedAverageFrameSize;
    public boolean hasOutputSeekMap;
    public final com.google.android.exoplayer2.util.ParsableByteArray packetBuffer;
    public final com.google.android.exoplayer2.extractor.ts.AdtsReader reader;
    public final com.google.android.exoplayer2.util.ParsableByteArray scratch;
    public final com.google.android.exoplayer2.util.ParsableBitArray scratchBits;
    public boolean startedPacket;

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Flags {
    }

    public AdtsExtractor() {
        this(0);
    }

    public AdtsExtractor(int i) {
        this.flags = (i & 2) != 0 ? i | 1 : i;
        this.reader = new com.google.android.exoplayer2.extractor.ts.AdtsReader(true);
        this.packetBuffer = new com.google.android.exoplayer2.util.ParsableByteArray(2048);
        this.averageFrameSize = -1;
        this.firstFramePosition = -1L;
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(10);
        this.scratch = parsableByteArray;
        this.scratchBits = new com.google.android.exoplayer2.util.ParsableBitArray(parsableByteArray.getData());
    }

    public static /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] a() {
        return new com.google.android.exoplayer2.extractor.Extractor[]{new com.google.android.exoplayer2.extractor.ts.AdtsExtractor()};
    }

    private void calculateAverageFrameSize(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        int bits;
        if (this.hasCalculatedAverageFrameSize) {
            return;
        }
        this.averageFrameSize = -1;
        extractorInput.resetPeekPosition();
        long j = 0;
        if (extractorInput.getPosition() == 0) {
            peekId3Header(extractorInput);
        }
        int i = 0;
        int i2 = 0;
        do {
            try {
                if (!extractorInput.peekFully(this.scratch.getData(), 0, 2, true)) {
                    break;
                }
                this.scratch.setPosition(0);
                if (!com.google.android.exoplayer2.extractor.ts.AdtsReader.isAdtsSyncWord(this.scratch.readUnsignedShort())) {
                    break;
                }
                if (!extractorInput.peekFully(this.scratch.getData(), 0, 4, true)) {
                    break;
                }
                this.scratchBits.setPosition(14);
                bits = this.scratchBits.readBits(13);
                if (bits <= 6) {
                    this.hasCalculatedAverageFrameSize = true;
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Malformed ADTS stream", null);
                }
                j += bits;
                i2++;
                if (i2 == 1000) {
                    break;
                }
            } catch (java.io.EOFException unused) {
            }
        } while (extractorInput.advancePeekPosition(bits - 6, true));
        i = i2;
        extractorInput.resetPeekPosition();
        if (i > 0) {
            this.averageFrameSize = (int) (j / i);
        } else {
            this.averageFrameSize = -1;
        }
        this.hasCalculatedAverageFrameSize = true;
    }

    public static int getBitrateFromFrameSize(int i, long j) {
        return (int) (((i * 8) * 1000000) / j);
    }

    private com.google.android.exoplayer2.extractor.SeekMap getConstantBitrateSeekMap(long j, boolean z) {
        return new com.google.android.exoplayer2.extractor.ConstantBitrateSeekMap(j, this.firstFramePosition, getBitrateFromFrameSize(this.averageFrameSize, this.reader.getSampleDurationUs()), this.averageFrameSize, z);
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput"})
    private void maybeOutputSeekMap(long j, boolean z) {
        if (this.hasOutputSeekMap) {
            return;
        }
        boolean z2 = (this.flags & 1) != 0 && this.averageFrameSize > 0;
        if (z2 && this.reader.getSampleDurationUs() == com.google.android.exoplayer2.C.TIME_UNSET && !z) {
            return;
        }
        if (!z2 || this.reader.getSampleDurationUs() == com.google.android.exoplayer2.C.TIME_UNSET) {
            this.extractorOutput.seekMap(new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(com.google.android.exoplayer2.C.TIME_UNSET));
        } else {
            this.extractorOutput.seekMap(getConstantBitrateSeekMap(j, (this.flags & 2) != 0));
        }
        this.hasOutputSeekMap = true;
    }

    private int peekId3Header(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        int i = 0;
        while (true) {
            extractorInput.peekFully(this.scratch.getData(), 0, 10);
            this.scratch.setPosition(0);
            if (this.scratch.readUnsignedInt24() != 4801587) {
                break;
            }
            this.scratch.skipBytes(3);
            int synchSafeInt = this.scratch.readSynchSafeInt();
            i += synchSafeInt + 10;
            extractorInput.advancePeekPosition(synchSafeInt);
        }
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i);
        if (this.firstFramePosition == -1) {
            this.firstFramePosition = i;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
        this.reader.createTracks(extractorOutput, new com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator(0, 1));
        extractorOutput.endTracks();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) throws com.google.android.exoplayer2.ParserException {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.extractorOutput);
        long length = extractorInput.getLength();
        int i = this.flags;
        if (((i & 2) == 0 && ((i & 1) == 0 || length == -1)) ? false : true) {
            calculateAverageFrameSize(extractorInput);
        }
        int i2 = extractorInput.read(this.packetBuffer.getData(), 0, 2048);
        boolean z = i2 == -1;
        maybeOutputSeekMap(length, z);
        if (z) {
            return -1;
        }
        this.packetBuffer.setPosition(0);
        this.packetBuffer.setLimit(i2);
        if (!this.startedPacket) {
            this.reader.packetStarted(this.firstSampleTimestampUs, 4);
            this.startedPacket = true;
        }
        this.reader.consume(this.packetBuffer);
        return 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.startedPacket = false;
        this.reader.seek();
        this.firstSampleTimestampUs = j2;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0023  */
    @Override // com.google.android.exoplayer2.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput r9) {
        /*
            r8 = this;
            int r0 = r8.peekId3Header(r9)
            r1 = 0
            r3 = r0
            r2 = 0
            r4 = 0
        L8:
            com.google.android.exoplayer2.util.ParsableByteArray r5 = r8.scratch
            byte[] r5 = r5.getData()
            r6 = 2
            r9.peekFully(r5, r1, r6)
            com.google.android.exoplayer2.util.ParsableByteArray r5 = r8.scratch
            r5.setPosition(r1)
            com.google.android.exoplayer2.util.ParsableByteArray r5 = r8.scratch
            int r5 = r5.readUnsignedShort()
            boolean r5 = com.google.android.exoplayer2.extractor.ts.AdtsReader.isAdtsSyncWord(r5)
            if (r5 != 0) goto L2e
        L23:
            int r3 = r3 + 1
            r9.resetPeekPosition()
            r9.advancePeekPosition(r3)
            r2 = 0
            r4 = 0
            goto L5a
        L2e:
            r5 = 1
            int r2 = r2 + r5
            r6 = 4
            if (r2 < r6) goto L38
            r7 = 188(0xbc, float:2.63E-43)
            if (r4 <= r7) goto L38
            return r5
        L38:
            com.google.android.exoplayer2.util.ParsableByteArray r5 = r8.scratch
            byte[] r5 = r5.getData()
            r9.peekFully(r5, r1, r6)
            com.google.android.exoplayer2.util.ParsableBitArray r5 = r8.scratchBits
            r6 = 14
            r5.setPosition(r6)
            com.google.android.exoplayer2.util.ParsableBitArray r5 = r8.scratchBits
            r6 = 13
            int r5 = r5.readBits(r6)
            r6 = 6
            if (r5 > r6) goto L54
            goto L23
        L54:
            int r6 = r5 + (-6)
            r9.advancePeekPosition(r6)
            int r4 = r4 + r5
        L5a:
            int r5 = r3 - r0
            r6 = 8192(0x2000, float:1.14794E-41)
            if (r5 < r6) goto L8
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.AdtsExtractor.sniff(com.google.android.exoplayer2.extractor.ExtractorInput):boolean");
    }
}
