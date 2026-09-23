package com.google.android.exoplayer2.extractor.wav;

/* loaded from: classes.dex */
public final class WavExtractor implements com.google.android.exoplayer2.extractor.Extractor {
    public static final com.google.android.exoplayer2.extractor.ExtractorsFactory FACTORY = new com.google.android.exoplayer2.extractor.ExtractorsFactory() { // from class: e.c.a.a.i2.m.a
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final com.google.android.exoplayer2.extractor.Extractor[] createExtractors() {
            return com.google.android.exoplayer2.extractor.wav.WavExtractor.a();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] createExtractors(android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map) {
            return createExtractors();
        }
    };
    public static final int STATE_READING_FILE_TYPE = 0;
    public static final int STATE_READING_FORMAT = 1;
    public static final int STATE_READING_SAMPLE_DATA = 3;
    public static final int STATE_SKIPPING_TO_SAMPLE_DATA = 2;
    public static final int TARGET_SAMPLES_PER_SECOND = 10;
    public com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
    public com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter outputWriter;
    public com.google.android.exoplayer2.extractor.TrackOutput trackOutput;
    public int state = 0;
    public int dataStartPosition = -1;
    public long dataEndPosition = -1;

    public static final class ImaAdPcmOutputWriter implements com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter {
        public static final int[] INDEX_TABLE = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        public static final int[] STEP_TABLE = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, com.tencent.tinker.android.dx.instruction.Opcodes.MUL_DOUBLE, com.tencent.tinker.android.dx.instruction.Opcodes.DIV_LONG_2ADDR, 209, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, javax.jmdns.impl.constants.DNSRecordClass.CLASS_MASK};
        public final com.google.android.exoplayer2.util.ParsableByteArray decodedData;
        public final com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
        public final com.google.android.exoplayer2.Format format;
        public final int framesPerBlock;
        public final byte[] inputData;
        public long outputFrameCount;
        public int pendingInputBytes;
        public int pendingOutputBytes;
        public long startTimeUs;
        public final int targetSampleSizeFrames;
        public final com.google.android.exoplayer2.extractor.TrackOutput trackOutput;
        public final com.google.android.exoplayer2.extractor.wav.WavFormat wavFormat;

        public ImaAdPcmOutputWriter(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.TrackOutput trackOutput, com.google.android.exoplayer2.extractor.wav.WavFormat wavFormat) throws com.google.android.exoplayer2.ParserException {
            this.extractorOutput = extractorOutput;
            this.trackOutput = trackOutput;
            this.wavFormat = wavFormat;
            this.targetSampleSizeFrames = java.lang.Math.max(1, wavFormat.frameRateHz / 10);
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(wavFormat.extraData);
            parsableByteArray.readLittleEndianUnsignedShort();
            int littleEndianUnsignedShort = parsableByteArray.readLittleEndianUnsignedShort();
            this.framesPerBlock = littleEndianUnsignedShort;
            int i = wavFormat.numChannels;
            int i2 = (((wavFormat.blockSize - (i * 4)) * 8) / (wavFormat.bitsPerSample * i)) + 1;
            if (littleEndianUnsignedShort == i2) {
                int iCeilDivide = com.google.android.exoplayer2.util.Util.ceilDivide(this.targetSampleSizeFrames, littleEndianUnsignedShort);
                this.inputData = new byte[wavFormat.blockSize * iCeilDivide];
                this.decodedData = new com.google.android.exoplayer2.util.ParsableByteArray(numOutputFramesToBytes(this.framesPerBlock, i) * iCeilDivide);
                int i3 = ((wavFormat.frameRateHz * wavFormat.blockSize) * 8) / this.framesPerBlock;
                this.format = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW).setAverageBitrate(i3).setPeakBitrate(i3).setMaxInputSize(numOutputFramesToBytes(this.targetSampleSizeFrames, i)).setChannelCount(wavFormat.numChannels).setSampleRate(wavFormat.frameRateHz).setPcmEncoding(2).build();
                return;
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder(56);
            sb.append("Expected frames per block: ");
            sb.append(i2);
            sb.append("; got: ");
            sb.append(littleEndianUnsignedShort);
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
        }

        private void decode(byte[] bArr, int i, com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
            for (int i2 = 0; i2 < i; i2++) {
                for (int i3 = 0; i3 < this.wavFormat.numChannels; i3++) {
                    decodeBlockForChannel(bArr, i2, i3, parsableByteArray.getData());
                }
            }
            int iNumOutputFramesToBytes = numOutputFramesToBytes(this.framesPerBlock * i);
            parsableByteArray.setPosition(0);
            parsableByteArray.setLimit(iNumOutputFramesToBytes);
        }

        private void decodeBlockForChannel(byte[] bArr, int i, int i2, byte[] bArr2) {
            com.google.android.exoplayer2.extractor.wav.WavFormat wavFormat = this.wavFormat;
            int i3 = wavFormat.blockSize;
            int i4 = wavFormat.numChannels;
            int i5 = (i2 * 4) + (i * i3);
            int i6 = (i4 * 4) + i5;
            int i7 = (i3 / i4) - 4;
            int iConstrainValue = (short) (((bArr[i5 + 1] & 255) << 8) | (bArr[i5] & 255));
            int iMin = java.lang.Math.min(bArr[i5 + 2] & 255, 88);
            int i8 = STEP_TABLE[iMin];
            int i9 = ((i * this.framesPerBlock * i4) + i2) * 2;
            bArr2[i9] = (byte) (iConstrainValue & 255);
            bArr2[i9 + 1] = (byte) (iConstrainValue >> 8);
            for (int i10 = 0; i10 < i7 * 2; i10++) {
                int i11 = bArr[((i10 / 8) * i4 * 4) + i6 + ((i10 / 2) % 4)] & 255;
                int i12 = i10 % 2 == 0 ? i11 & 15 : i11 >> 4;
                int i13 = ((((i12 & 7) * 2) + 1) * i8) >> 3;
                if ((i12 & 8) != 0) {
                    i13 = -i13;
                }
                iConstrainValue = com.google.android.exoplayer2.util.Util.constrainValue(iConstrainValue + i13, -32768, javax.jmdns.impl.constants.DNSRecordClass.CLASS_MASK);
                i9 += i4 * 2;
                bArr2[i9] = (byte) (iConstrainValue & 255);
                bArr2[i9 + 1] = (byte) (iConstrainValue >> 8);
                iMin = com.google.android.exoplayer2.util.Util.constrainValue(iMin + INDEX_TABLE[i12], 0, STEP_TABLE.length - 1);
                i8 = STEP_TABLE[iMin];
            }
        }

        private int numOutputBytesToFrames(int i) {
            return i / (this.wavFormat.numChannels * 2);
        }

        private int numOutputFramesToBytes(int i) {
            return numOutputFramesToBytes(i, this.wavFormat.numChannels);
        }

        public static int numOutputFramesToBytes(int i, int i2) {
            return i * 2 * i2;
        }

        private void writeSampleMetadata(int i) {
            long jScaleLargeTimestamp = this.startTimeUs + com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(this.outputFrameCount, 1000000L, this.wavFormat.frameRateHz);
            int iNumOutputFramesToBytes = numOutputFramesToBytes(i);
            this.trackOutput.sampleMetadata(jScaleLargeTimestamp, 1, iNumOutputFramesToBytes, this.pendingOutputBytes - iNumOutputFramesToBytes, null);
            this.outputFrameCount += i;
            this.pendingOutputBytes -= iNumOutputFramesToBytes;
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public void init(int i, long j) {
            this.extractorOutput.seekMap(new com.google.android.exoplayer2.extractor.wav.WavSeekMap(this.wavFormat, this.framesPerBlock, i, j));
            this.trackOutput.format(this.format);
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public void reset(long j) {
            this.pendingInputBytes = 0;
            this.startTimeUs = j;
            this.pendingOutputBytes = 0;
            this.outputFrameCount = 0L;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0021  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x0036 -> B:4:0x001c). Please report as a decompilation issue!!! */
        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean sampleData(com.google.android.exoplayer2.extractor.ExtractorInput r7, long r8) {
            /*
                r6 = this;
                int r0 = r6.targetSampleSizeFrames
                int r1 = r6.pendingOutputBytes
                int r1 = r6.numOutputBytesToFrames(r1)
                int r0 = r0 - r1
                int r1 = r6.framesPerBlock
                int r0 = com.google.android.exoplayer2.util.Util.ceilDivide(r0, r1)
                com.google.android.exoplayer2.extractor.wav.WavFormat r1 = r6.wavFormat
                int r1 = r1.blockSize
                int r0 = r0 * r1
                r1 = 1
                r2 = 0
                int r4 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
                if (r4 != 0) goto L1e
            L1c:
                r2 = 1
                goto L1f
            L1e:
                r2 = 0
            L1f:
                if (r2 != 0) goto L3f
                int r3 = r6.pendingInputBytes
                if (r3 >= r0) goto L3f
                int r3 = r0 - r3
                long r3 = (long) r3
                long r3 = java.lang.Math.min(r3, r8)
                int r4 = (int) r3
                byte[] r3 = r6.inputData
                int r5 = r6.pendingInputBytes
                int r3 = r7.read(r3, r5, r4)
                r4 = -1
                if (r3 != r4) goto L39
                goto L1c
            L39:
                int r4 = r6.pendingInputBytes
                int r4 = r4 + r3
                r6.pendingInputBytes = r4
                goto L1f
            L3f:
                int r7 = r6.pendingInputBytes
                com.google.android.exoplayer2.extractor.wav.WavFormat r8 = r6.wavFormat
                int r8 = r8.blockSize
                int r7 = r7 / r8
                if (r7 <= 0) goto L77
                byte[] r8 = r6.inputData
                com.google.android.exoplayer2.util.ParsableByteArray r9 = r6.decodedData
                r6.decode(r8, r7, r9)
                int r8 = r6.pendingInputBytes
                com.google.android.exoplayer2.extractor.wav.WavFormat r9 = r6.wavFormat
                int r9 = r9.blockSize
                int r7 = r7 * r9
                int r8 = r8 - r7
                r6.pendingInputBytes = r8
                com.google.android.exoplayer2.util.ParsableByteArray r7 = r6.decodedData
                int r7 = r7.limit()
                com.google.android.exoplayer2.extractor.TrackOutput r8 = r6.trackOutput
                com.google.android.exoplayer2.util.ParsableByteArray r9 = r6.decodedData
                r8.sampleData(r9, r7)
                int r8 = r6.pendingOutputBytes
                int r8 = r8 + r7
                r6.pendingOutputBytes = r8
                int r7 = r6.numOutputBytesToFrames(r8)
                int r8 = r6.targetSampleSizeFrames
                if (r7 < r8) goto L77
                r6.writeSampleMetadata(r8)
            L77:
                if (r2 == 0) goto L84
                int r7 = r6.pendingOutputBytes
                int r7 = r6.numOutputBytesToFrames(r7)
                if (r7 <= 0) goto L84
                r6.writeSampleMetadata(r7)
            L84:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.wav.WavExtractor.ImaAdPcmOutputWriter.sampleData(com.google.android.exoplayer2.extractor.ExtractorInput, long):boolean");
        }
    }

    public interface OutputWriter {
        void init(int i, long j);

        void reset(long j);

        boolean sampleData(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, long j);
    }

    public static final class PassthroughOutputWriter implements com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter {
        public final com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
        public final com.google.android.exoplayer2.Format format;
        public long outputFrameCount;
        public int pendingOutputBytes;
        public long startTimeUs;
        public final int targetSampleSizeBytes;
        public final com.google.android.exoplayer2.extractor.TrackOutput trackOutput;
        public final com.google.android.exoplayer2.extractor.wav.WavFormat wavFormat;

        public PassthroughOutputWriter(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.TrackOutput trackOutput, com.google.android.exoplayer2.extractor.wav.WavFormat wavFormat, java.lang.String str, int i) throws com.google.android.exoplayer2.ParserException {
            this.extractorOutput = extractorOutput;
            this.trackOutput = trackOutput;
            this.wavFormat = wavFormat;
            int i2 = (wavFormat.numChannels * wavFormat.bitsPerSample) / 8;
            int i3 = wavFormat.blockSize;
            if (i3 == i2) {
                int i4 = wavFormat.frameRateHz;
                int i5 = i4 * i2 * 8;
                this.targetSampleSizeBytes = java.lang.Math.max(i2, (i4 * i2) / 10);
                this.format = new com.google.android.exoplayer2.Format.Builder().setSampleMimeType(str).setAverageBitrate(i5).setPeakBitrate(i5).setMaxInputSize(this.targetSampleSizeBytes).setChannelCount(wavFormat.numChannels).setSampleRate(wavFormat.frameRateHz).setPcmEncoding(i).build();
                return;
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder(50);
            sb.append("Expected block size: ");
            sb.append(i2);
            sb.append("; got: ");
            sb.append(i3);
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public void init(int i, long j) {
            this.extractorOutput.seekMap(new com.google.android.exoplayer2.extractor.wav.WavSeekMap(this.wavFormat, 1, i, j));
            this.trackOutput.format(this.format);
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public void reset(long j) {
            this.startTimeUs = j;
            this.pendingOutputBytes = 0;
            this.outputFrameCount = 0L;
        }

        @Override // com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter
        public boolean sampleData(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, long j) {
            long j2;
            int i;
            int i2;
            long j3 = j;
            while (j3 > 0 && (i = this.pendingOutputBytes) < (i2 = this.targetSampleSizeBytes)) {
                int iSampleData = this.trackOutput.sampleData((com.google.android.exoplayer2.upstream.DataReader) extractorInput, (int) java.lang.Math.min(i2 - i, j3), true);
                if (iSampleData == -1) {
                    j3 = 0;
                } else {
                    this.pendingOutputBytes += iSampleData;
                    j3 -= iSampleData;
                }
            }
            int i3 = this.wavFormat.blockSize;
            int i4 = this.pendingOutputBytes / i3;
            if (i4 > 0) {
                long jScaleLargeTimestamp = this.startTimeUs + com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(this.outputFrameCount, 1000000L, r6.frameRateHz);
                int i5 = i4 * i3;
                int i6 = this.pendingOutputBytes - i5;
                this.trackOutput.sampleMetadata(jScaleLargeTimestamp, 1, i5, i6, null);
                this.outputFrameCount += i4;
                this.pendingOutputBytes = i6;
                j2 = 0;
            } else {
                j2 = 0;
            }
            return j3 <= j2;
        }
    }

    public static /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] a() {
        return new com.google.android.exoplayer2.extractor.Extractor[]{new com.google.android.exoplayer2.extractor.wav.WavExtractor()};
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"extractorOutput", "trackOutput"})
    private void assertInitialized() {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.trackOutput);
        com.google.android.exoplayer2.util.Util.castNonNull(this.extractorOutput);
    }

    private void readFileType(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        com.google.android.exoplayer2.util.Assertions.checkState(extractorInput.getPosition() == 0);
        int i = this.dataStartPosition;
        if (i != -1) {
            extractorInput.skipFully(i);
            this.state = 3;
        } else {
            if (!com.google.android.exoplayer2.extractor.wav.WavHeaderReader.checkFileType(extractorInput)) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Unsupported or unrecognized wav file type.", null);
            }
            extractorInput.skipFully((int) (extractorInput.getPeekPosition() - extractorInput.getPosition()));
            this.state = 1;
        }
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput", "trackOutput"})
    private void readFormat(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter passthroughOutputWriter;
        com.google.android.exoplayer2.extractor.wav.WavFormat format = com.google.android.exoplayer2.extractor.wav.WavHeaderReader.readFormat(extractorInput);
        int i = format.formatType;
        if (i == 17) {
            passthroughOutputWriter = new com.google.android.exoplayer2.extractor.wav.WavExtractor.ImaAdPcmOutputWriter(this.extractorOutput, this.trackOutput, format);
        } else if (i == 6) {
            passthroughOutputWriter = new com.google.android.exoplayer2.extractor.wav.WavExtractor.PassthroughOutputWriter(this.extractorOutput, this.trackOutput, format, com.google.android.exoplayer2.util.MimeTypes.AUDIO_ALAW, -1);
        } else if (i == 7) {
            passthroughOutputWriter = new com.google.android.exoplayer2.extractor.wav.WavExtractor.PassthroughOutputWriter(this.extractorOutput, this.trackOutput, format, com.google.android.exoplayer2.util.MimeTypes.AUDIO_MLAW, -1);
        } else {
            int pcmEncodingForType = com.google.android.exoplayer2.audio.WavUtil.getPcmEncodingForType(i, format.bitsPerSample);
            if (pcmEncodingForType == 0) {
                int i2 = format.formatType;
                java.lang.StringBuilder sb = new java.lang.StringBuilder(40);
                sb.append("Unsupported WAV format type: ");
                sb.append(i2);
                throw com.google.android.exoplayer2.ParserException.createForUnsupportedContainerFeature(sb.toString());
            }
            passthroughOutputWriter = new com.google.android.exoplayer2.extractor.wav.WavExtractor.PassthroughOutputWriter(this.extractorOutput, this.trackOutput, format, com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW, pcmEncodingForType);
        }
        this.outputWriter = passthroughOutputWriter;
        this.state = 2;
    }

    private int readSampleData(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.dataEndPosition != -1);
        return ((com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.outputWriter)).sampleData(extractorInput, this.dataEndPosition - extractorInput.getPosition()) ? -1 : 0;
    }

    private void skipToSampleData(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        android.util.Pair<java.lang.Long, java.lang.Long> pairSkipToSampleData = com.google.android.exoplayer2.extractor.wav.WavHeaderReader.skipToSampleData(extractorInput);
        this.dataStartPosition = ((java.lang.Long) pairSkipToSampleData.first).intValue();
        this.dataEndPosition = ((java.lang.Long) pairSkipToSampleData.second).longValue();
        ((com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.outputWriter)).init(this.dataStartPosition, this.dataEndPosition);
        this.state = 3;
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
        int i = this.state;
        if (i == 0) {
            readFileType(extractorInput);
            return 0;
        }
        if (i == 1) {
            readFormat(extractorInput);
            return 0;
        }
        if (i == 2) {
            skipToSampleData(extractorInput);
            return 0;
        }
        if (i == 3) {
            return readSampleData(extractorInput);
        }
        throw new java.lang.IllegalStateException();
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        this.state = j == 0 ? 0 : 3;
        com.google.android.exoplayer2.extractor.wav.WavExtractor.OutputWriter outputWriter = this.outputWriter;
        if (outputWriter != null) {
            outputWriter.reset(j2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        return com.google.android.exoplayer2.extractor.wav.WavHeaderReader.checkFileType(extractorInput);
    }
}
