package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class AdtsReader implements com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader {
    public static final int CRC_SIZE = 2;
    public static final int HEADER_SIZE = 5;
    public static final int ID3_HEADER_SIZE = 10;
    public static final byte[] ID3_IDENTIFIER = {73, 68, 51};
    public static final int ID3_SIZE_OFFSET = 6;
    public static final int MATCH_STATE_FF = 512;
    public static final int MATCH_STATE_I = 768;
    public static final int MATCH_STATE_ID = 1024;
    public static final int MATCH_STATE_START = 256;
    public static final int MATCH_STATE_VALUE_SHIFT = 8;
    public static final int STATE_CHECKING_ADTS_HEADER = 1;
    public static final int STATE_FINDING_SAMPLE = 0;
    public static final int STATE_READING_ADTS_HEADER = 3;
    public static final int STATE_READING_ID3_HEADER = 2;
    public static final int STATE_READING_SAMPLE = 4;
    public static final java.lang.String TAG = "AdtsReader";
    public static final int VERSION_UNSET = -1;
    public final com.google.android.exoplayer2.util.ParsableBitArray adtsScratch;
    public int bytesRead;
    public int currentFrameVersion;
    public com.google.android.exoplayer2.extractor.TrackOutput currentOutput;
    public long currentSampleDuration;
    public final boolean exposeId3;
    public int firstFrameSampleRateIndex;
    public int firstFrameVersion;
    public java.lang.String formatId;
    public boolean foundFirstFrame;
    public boolean hasCrc;
    public boolean hasOutputFormat;
    public final com.google.android.exoplayer2.util.ParsableByteArray id3HeaderBuffer;
    public com.google.android.exoplayer2.extractor.TrackOutput id3Output;
    public final java.lang.String language;
    public int matchState;
    public com.google.android.exoplayer2.extractor.TrackOutput output;
    public long sampleDurationUs;
    public int sampleSize;
    public int state;
    public long timeUs;

    public AdtsReader(boolean z) {
        this(z, null);
    }

    public AdtsReader(boolean z, java.lang.String str) {
        this.adtsScratch = new com.google.android.exoplayer2.util.ParsableBitArray(new byte[7]);
        this.id3HeaderBuffer = new com.google.android.exoplayer2.util.ParsableByteArray(java.util.Arrays.copyOf(ID3_IDENTIFIER, 10));
        setFindingSampleState();
        this.firstFrameVersion = -1;
        this.firstFrameSampleRateIndex = -1;
        this.sampleDurationUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.timeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.exposeId3 = z;
        this.language = str;
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"output", "currentOutput", "id3Output"})
    private void assertTracksCreated() {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.output);
        com.google.android.exoplayer2.util.Util.castNonNull(this.currentOutput);
        com.google.android.exoplayer2.util.Util.castNonNull(this.id3Output);
    }

    private void checkAdtsHeader(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        if (parsableByteArray.bytesLeft() == 0) {
            return;
        }
        this.adtsScratch.data[0] = parsableByteArray.getData()[parsableByteArray.getPosition()];
        this.adtsScratch.setPosition(2);
        int bits = this.adtsScratch.readBits(4);
        int i = this.firstFrameSampleRateIndex;
        if (i != -1 && bits != i) {
            resetSync();
            return;
        }
        if (!this.foundFirstFrame) {
            this.foundFirstFrame = true;
            this.firstFrameVersion = this.currentFrameVersion;
            this.firstFrameSampleRateIndex = bits;
        }
        setReadingAdtsHeaderState();
    }

    private boolean checkSyncPositionValid(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) {
        parsableByteArray.setPosition(i + 1);
        if (!tryRead(parsableByteArray, this.adtsScratch.data, 1)) {
            return false;
        }
        this.adtsScratch.setPosition(4);
        int bits = this.adtsScratch.readBits(1);
        int i2 = this.firstFrameVersion;
        if (i2 != -1 && bits != i2) {
            return false;
        }
        if (this.firstFrameSampleRateIndex != -1) {
            if (!tryRead(parsableByteArray, this.adtsScratch.data, 1)) {
                return true;
            }
            this.adtsScratch.setPosition(2);
            if (this.adtsScratch.readBits(4) != this.firstFrameSampleRateIndex) {
                return false;
            }
            parsableByteArray.setPosition(i + 2);
        }
        if (!tryRead(parsableByteArray, this.adtsScratch.data, 4)) {
            return true;
        }
        this.adtsScratch.setPosition(14);
        int bits2 = this.adtsScratch.readBits(13);
        if (bits2 < 7) {
            return false;
        }
        byte[] data = parsableByteArray.getData();
        int iLimit = parsableByteArray.limit();
        int i3 = i + bits2;
        if (i3 >= iLimit) {
            return true;
        }
        if (data[i3] == -1) {
            int i4 = i3 + 1;
            if (i4 == iLimit) {
                return true;
            }
            return isAdtsSyncBytes((byte) -1, data[i4]) && ((data[i4] & 8) >> 3) == bits;
        }
        if (data[i3] != 73) {
            return false;
        }
        int i5 = i3 + 1;
        if (i5 == iLimit) {
            return true;
        }
        if (data[i5] != 68) {
            return false;
        }
        int i6 = i3 + 2;
        return i6 == iLimit || data[i6] == 51;
    }

    private boolean continueRead(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int iMin = java.lang.Math.min(parsableByteArray.bytesLeft(), i - this.bytesRead);
        parsableByteArray.readBytes(bArr, this.bytesRead, iMin);
        int i2 = this.bytesRead + iMin;
        this.bytesRead = i2;
        return i2 == i;
    }

    private void findNextSample(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int i;
        byte[] data = parsableByteArray.getData();
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        while (position < iLimit) {
            int i2 = position + 1;
            int i3 = data[position] & 255;
            if (this.matchState == 512 && isAdtsSyncBytes((byte) -1, (byte) i3) && (this.foundFirstFrame || checkSyncPositionValid(parsableByteArray, i2 - 2))) {
                this.currentFrameVersion = (i3 & 8) >> 3;
                this.hasCrc = (i3 & 1) == 0;
                if (this.foundFirstFrame) {
                    setReadingAdtsHeaderState();
                } else {
                    setCheckingAdtsHeaderState();
                }
                parsableByteArray.setPosition(i2);
                return;
            }
            int i4 = this.matchState;
            int i5 = i3 | i4;
            if (i5 != 329) {
                if (i5 == 511) {
                    this.matchState = 512;
                } else if (i5 == 836) {
                    i = 1024;
                } else if (i5 == 1075) {
                    setReadingId3HeaderState();
                    parsableByteArray.setPosition(i2);
                    return;
                } else if (i4 != 256) {
                    this.matchState = 256;
                    i2--;
                }
                position = i2;
            } else {
                i = 768;
            }
            this.matchState = i;
            position = i2;
        }
        parsableByteArray.setPosition(position);
    }

    private boolean isAdtsSyncBytes(byte b, byte b2) {
        return isAdtsSyncWord(((b & 255) << 8) | (b2 & 255));
    }

    public static boolean isAdtsSyncWord(int i) {
        return (i & 65526) == 65520;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output"})
    private void parseAdtsHeader() {
        this.adtsScratch.setPosition(0);
        if (this.hasOutputFormat) {
            this.adtsScratch.skipBits(10);
        } else {
            int bits = this.adtsScratch.readBits(2) + 1;
            if (bits != 2) {
                java.lang.StringBuilder sb = new java.lang.StringBuilder(61);
                sb.append("Detected audio object type: ");
                sb.append(bits);
                sb.append(", but assuming AAC LC.");
                com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
                bits = 2;
            }
            this.adtsScratch.skipBits(5);
            byte[] bArrBuildAudioSpecificConfig = com.google.android.exoplayer2.audio.AacUtil.buildAudioSpecificConfig(bits, this.firstFrameSampleRateIndex, this.adtsScratch.readBits(3));
            com.google.android.exoplayer2.audio.AacUtil.Config audioSpecificConfig = com.google.android.exoplayer2.audio.AacUtil.parseAudioSpecificConfig(bArrBuildAudioSpecificConfig);
            com.google.android.exoplayer2.Format formatBuild = new com.google.android.exoplayer2.Format.Builder().setId(this.formatId).setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.AUDIO_AAC).setCodecs(audioSpecificConfig.codecs).setChannelCount(audioSpecificConfig.channelCount).setSampleRate(audioSpecificConfig.sampleRateHz).setInitializationData(java.util.Collections.singletonList(bArrBuildAudioSpecificConfig)).setLanguage(this.language).build();
            this.sampleDurationUs = 1024000000 / formatBuild.sampleRate;
            this.output.format(formatBuild);
            this.hasOutputFormat = true;
        }
        this.adtsScratch.skipBits(4);
        int bits2 = (this.adtsScratch.readBits(13) - 2) - 5;
        if (this.hasCrc) {
            bits2 -= 2;
        }
        setReadingSampleState(this.output, this.sampleDurationUs, 0, bits2);
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"id3Output"})
    private void parseId3Header() {
        this.id3Output.sampleData(this.id3HeaderBuffer, 10);
        this.id3HeaderBuffer.setPosition(6);
        setReadingSampleState(this.id3Output, 0L, 10, this.id3HeaderBuffer.readSynchSafeInt() + 10);
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"currentOutput"})
    private void readSample(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int iMin = java.lang.Math.min(parsableByteArray.bytesLeft(), this.sampleSize - this.bytesRead);
        this.currentOutput.sampleData(parsableByteArray, iMin);
        int i = this.bytesRead + iMin;
        this.bytesRead = i;
        int i2 = this.sampleSize;
        if (i == i2) {
            long j = this.timeUs;
            if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
                this.currentOutput.sampleMetadata(j, 1, i2, 0, null);
                this.timeUs += this.currentSampleDuration;
            }
            setFindingSampleState();
        }
    }

    private void resetSync() {
        this.foundFirstFrame = false;
        setFindingSampleState();
    }

    private void setCheckingAdtsHeaderState() {
        this.state = 1;
        this.bytesRead = 0;
    }

    private void setFindingSampleState() {
        this.state = 0;
        this.bytesRead = 0;
        this.matchState = 256;
    }

    private void setReadingAdtsHeaderState() {
        this.state = 3;
        this.bytesRead = 0;
    }

    private void setReadingId3HeaderState() {
        this.state = 2;
        this.bytesRead = ID3_IDENTIFIER.length;
        this.sampleSize = 0;
        this.id3HeaderBuffer.setPosition(0);
    }

    private void setReadingSampleState(com.google.android.exoplayer2.extractor.TrackOutput trackOutput, long j, int i, int i2) {
        this.state = 4;
        this.bytesRead = i;
        this.currentOutput = trackOutput;
        this.currentSampleDuration = j;
        this.sampleSize = i2;
    }

    private boolean tryRead(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        if (parsableByteArray.bytesLeft() < i) {
            return false;
        }
        parsableByteArray.readBytes(bArr, 0, i);
        return true;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        assertTracksCreated();
        while (parsableByteArray.bytesLeft() > 0) {
            int i = this.state;
            if (i == 0) {
                findNextSample(parsableByteArray);
            } else if (i == 1) {
                checkAdtsHeader(parsableByteArray);
            } else if (i != 2) {
                if (i == 3) {
                    if (continueRead(parsableByteArray, this.adtsScratch.data, this.hasCrc ? 7 : 5)) {
                        parseAdtsHeader();
                    }
                } else {
                    if (i != 4) {
                        throw new java.lang.IllegalStateException();
                    }
                    readSample(parsableByteArray);
                }
            } else if (continueRead(parsableByteArray, this.id3HeaderBuffer.getData(), 10)) {
                parseId3Header();
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void createTracks(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.getTrackId(), 1);
        this.output = trackOutputTrack;
        this.currentOutput = trackOutputTrack;
        if (!this.exposeId3) {
            this.id3Output = new com.google.android.exoplayer2.extractor.DummyTrackOutput();
            return;
        }
        trackIdGenerator.generateNewId();
        com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack2 = extractorOutput.track(trackIdGenerator.getTrackId(), 5);
        this.id3Output = trackOutputTrack2;
        trackOutputTrack2.format(new com.google.android.exoplayer2.Format.Builder().setId(trackIdGenerator.getFormatId()).setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.APPLICATION_ID3).build());
    }

    public long getSampleDurationUs() {
        return this.sampleDurationUs;
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
        this.timeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        resetSync();
    }
}
