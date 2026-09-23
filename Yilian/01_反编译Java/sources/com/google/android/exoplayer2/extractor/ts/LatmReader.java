package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class LatmReader implements com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader {
    public static final int INITIAL_BUFFER_SIZE = 1024;
    public static final int STATE_FINDING_SYNC_1 = 0;
    public static final int STATE_FINDING_SYNC_2 = 1;
    public static final int STATE_READING_HEADER = 2;
    public static final int STATE_READING_SAMPLE = 3;
    public static final int SYNC_BYTE_FIRST = 86;
    public static final int SYNC_BYTE_SECOND = 224;
    public int audioMuxVersionA;
    public int bytesRead;
    public int channelCount;
    public java.lang.String codecs;
    public com.google.android.exoplayer2.Format format;
    public java.lang.String formatId;
    public int frameLengthType;
    public final java.lang.String language;
    public int numSubframes;
    public long otherDataLenBits;
    public boolean otherDataPresent;
    public com.google.android.exoplayer2.extractor.TrackOutput output;
    public final com.google.android.exoplayer2.util.ParsableBitArray sampleBitArray;
    public final com.google.android.exoplayer2.util.ParsableByteArray sampleDataBuffer;
    public long sampleDurationUs;
    public int sampleRateHz;
    public int sampleSize;
    public int secondHeaderByte;
    public int state;
    public boolean streamMuxRead;
    public long timeUs;

    public LatmReader(java.lang.String str) {
        this.language = str;
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(1024);
        this.sampleDataBuffer = parsableByteArray;
        this.sampleBitArray = new com.google.android.exoplayer2.util.ParsableBitArray(parsableByteArray.getData());
        this.timeUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }

    public static long latmGetValue(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray) {
        return parsableBitArray.readBits((parsableBitArray.readBits(2) + 1) * 8);
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private void parseAudioMuxElement(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray) throws com.google.android.exoplayer2.ParserException {
        if (!parsableBitArray.readBit()) {
            this.streamMuxRead = true;
            parseStreamMuxConfig(parsableBitArray);
        } else if (!this.streamMuxRead) {
            return;
        }
        if (this.audioMuxVersionA != 0) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(null, null);
        }
        if (this.numSubframes != 0) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(null, null);
        }
        parsePayloadMux(parsableBitArray, parsePayloadLengthInfo(parsableBitArray));
        if (this.otherDataPresent) {
            parsableBitArray.skipBits((int) this.otherDataLenBits);
        }
    }

    private int parseAudioSpecificConfig(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray) throws com.google.android.exoplayer2.ParserException {
        int iBitsLeft = parsableBitArray.bitsLeft();
        com.google.android.exoplayer2.audio.AacUtil.Config audioSpecificConfig = com.google.android.exoplayer2.audio.AacUtil.parseAudioSpecificConfig(parsableBitArray, true);
        this.codecs = audioSpecificConfig.codecs;
        this.sampleRateHz = audioSpecificConfig.sampleRateHz;
        this.channelCount = audioSpecificConfig.channelCount;
        return iBitsLeft - parsableBitArray.bitsLeft();
    }

    private void parseFrameLength(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray) {
        int i;
        int bits = parsableBitArray.readBits(3);
        this.frameLengthType = bits;
        if (bits == 0) {
            i = 8;
        } else {
            if (bits != 1) {
                if (bits == 3 || bits == 4 || bits == 5) {
                    parsableBitArray.skipBits(6);
                    return;
                } else {
                    if (bits != 6 && bits != 7) {
                        throw new java.lang.IllegalStateException();
                    }
                    parsableBitArray.skipBits(1);
                    return;
                }
            }
            i = 9;
        }
        parsableBitArray.skipBits(i);
    }

    private int parsePayloadLengthInfo(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray) throws com.google.android.exoplayer2.ParserException {
        int bits;
        if (this.frameLengthType != 0) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(null, null);
        }
        int i = 0;
        do {
            bits = parsableBitArray.readBits(8);
            i += bits;
        } while (bits == 255);
        return i;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private void parsePayloadMux(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray, int i) {
        int position = parsableBitArray.getPosition();
        if ((position & 7) == 0) {
            this.sampleDataBuffer.setPosition(position >> 3);
        } else {
            parsableBitArray.readBits(this.sampleDataBuffer.getData(), 0, i * 8);
            this.sampleDataBuffer.setPosition(0);
        }
        this.output.sampleData(this.sampleDataBuffer, i);
        long j = this.timeUs;
        if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
            this.output.sampleMetadata(j, 1, i, 0, null);
            this.timeUs += this.sampleDurationUs;
        }
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private void parseStreamMuxConfig(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray) throws com.google.android.exoplayer2.ParserException {
        boolean bit;
        int bits = parsableBitArray.readBits(1);
        int bits2 = bits == 1 ? parsableBitArray.readBits(1) : 0;
        this.audioMuxVersionA = bits2;
        if (bits2 != 0) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(null, null);
        }
        if (bits == 1) {
            latmGetValue(parsableBitArray);
        }
        if (!parsableBitArray.readBit()) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(null, null);
        }
        this.numSubframes = parsableBitArray.readBits(6);
        int bits3 = parsableBitArray.readBits(4);
        int bits4 = parsableBitArray.readBits(3);
        if (bits3 != 0 || bits4 != 0) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(null, null);
        }
        if (bits == 0) {
            int position = parsableBitArray.getPosition();
            int audioSpecificConfig = parseAudioSpecificConfig(parsableBitArray);
            parsableBitArray.setPosition(position);
            byte[] bArr = new byte[(audioSpecificConfig + 7) / 8];
            parsableBitArray.readBits(bArr, 0, audioSpecificConfig);
            com.google.android.exoplayer2.Format formatBuild = new com.google.android.exoplayer2.Format.Builder().setId(this.formatId).setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.AUDIO_AAC).setCodecs(this.codecs).setChannelCount(this.channelCount).setSampleRate(this.sampleRateHz).setInitializationData(java.util.Collections.singletonList(bArr)).setLanguage(this.language).build();
            if (!formatBuild.equals(this.format)) {
                this.format = formatBuild;
                this.sampleDurationUs = 1024000000 / formatBuild.sampleRate;
                this.output.format(formatBuild);
            }
        } else {
            parsableBitArray.skipBits(((int) latmGetValue(parsableBitArray)) - parseAudioSpecificConfig(parsableBitArray));
        }
        parseFrameLength(parsableBitArray);
        boolean bit2 = parsableBitArray.readBit();
        this.otherDataPresent = bit2;
        this.otherDataLenBits = 0L;
        if (bit2) {
            if (bits == 1) {
                this.otherDataLenBits = latmGetValue(parsableBitArray);
            } else {
                do {
                    bit = parsableBitArray.readBit();
                    this.otherDataLenBits = (this.otherDataLenBits << 8) + parsableBitArray.readBits(8);
                } while (bit);
            }
        }
        if (parsableBitArray.readBit()) {
            parsableBitArray.skipBits(8);
        }
    }

    private void resetBufferForSize(int i) {
        this.sampleDataBuffer.reset(i);
        this.sampleBitArray.reset(this.sampleDataBuffer.getData());
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) throws com.google.android.exoplayer2.ParserException {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.output);
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.state;
            if (i != 0) {
                if (i == 1) {
                    int unsignedByte = parsableByteArray.readUnsignedByte();
                    if ((unsignedByte & 224) == 224) {
                        this.secondHeaderByte = unsignedByte;
                        this.state = 2;
                    } else if (unsignedByte != 86) {
                        this.state = 0;
                    }
                } else if (i == 2) {
                    int unsignedByte2 = ((this.secondHeaderByte & (-225)) << 8) | parsableByteArray.readUnsignedByte();
                    this.sampleSize = unsignedByte2;
                    if (unsignedByte2 > this.sampleDataBuffer.getData().length) {
                        resetBufferForSize(this.sampleSize);
                    }
                    this.bytesRead = 0;
                    this.state = 3;
                } else {
                    if (i != 3) {
                        throw new java.lang.IllegalStateException();
                    }
                    int iMin = java.lang.Math.min(parsableByteArray.bytesLeft(), this.sampleSize - this.bytesRead);
                    parsableByteArray.readBytes(this.sampleBitArray.data, this.bytesRead, iMin);
                    int i2 = this.bytesRead + iMin;
                    this.bytesRead = i2;
                    if (i2 == this.sampleSize) {
                        this.sampleBitArray.setPosition(0);
                        parseAudioMuxElement(this.sampleBitArray);
                        this.state = 0;
                    }
                }
            } else if (parsableByteArray.readUnsignedByte() == 86) {
                this.state = 1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void createTracks(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.output = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
        this.formatId = trackIdGenerator.getFormatId();
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
        this.timeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.streamMuxRead = false;
    }
}
