package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class H265Reader implements com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader {
    public static final int AUD_NUT = 35;
    public static final int BLA_W_LP = 16;
    public static final int CRA_NUT = 21;
    public static final int PPS_NUT = 34;
    public static final int PREFIX_SEI_NUT = 39;
    public static final int RASL_R = 9;
    public static final int SPS_NUT = 33;
    public static final int SUFFIX_SEI_NUT = 40;
    public static final java.lang.String TAG = "H265Reader";
    public static final int VPS_NUT = 32;
    public java.lang.String formatId;
    public boolean hasOutputFormat;
    public com.google.android.exoplayer2.extractor.TrackOutput output;
    public com.google.android.exoplayer2.extractor.ts.H265Reader.SampleReader sampleReader;
    public final com.google.android.exoplayer2.extractor.ts.SeiReader seiReader;
    public long totalBytesWritten;
    public final boolean[] prefixFlags = new boolean[3];
    public final com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer vps = new com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer(32, 128);
    public final com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer sps = new com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer(33, 128);
    public final com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer pps = new com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer(34, 128);
    public final com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer prefixSei = new com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer(39, 128);
    public final com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer suffixSei = new com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer(40, 128);
    public long pesTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
    public final com.google.android.exoplayer2.util.ParsableByteArray seiWrapper = new com.google.android.exoplayer2.util.ParsableByteArray();

    public static final class SampleReader {
        public static final int FIRST_SLICE_FLAG_OFFSET = 2;
        public boolean isFirstPrefixNalUnit;
        public boolean isFirstSlice;
        public boolean lookingForFirstSliceFlag;
        public int nalUnitBytesRead;
        public boolean nalUnitHasKeyframeData;
        public long nalUnitPosition;
        public long nalUnitTimeUs;
        public final com.google.android.exoplayer2.extractor.TrackOutput output;
        public boolean readingPrefix;
        public boolean readingSample;
        public boolean sampleIsKeyframe;
        public long samplePosition;
        public long sampleTimeUs;

        public SampleReader(com.google.android.exoplayer2.extractor.TrackOutput trackOutput) {
            this.output = trackOutput;
        }

        public static boolean isPrefixNalUnit(int i) {
            return (32 <= i && i <= 35) || i == 39;
        }

        public static boolean isVclBodyNalUnit(int i) {
            return i < 32 || i == 40;
        }

        private void outputSample(int i) {
            long j = this.sampleTimeUs;
            if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
                return;
            }
            boolean z = this.sampleIsKeyframe;
            this.output.sampleMetadata(j, z ? 1 : 0, (int) (this.nalUnitPosition - this.samplePosition), i, null);
        }

        public void endNalUnit(long j, int i, boolean z) {
            if (this.readingPrefix && this.isFirstSlice) {
                this.sampleIsKeyframe = this.nalUnitHasKeyframeData;
                this.readingPrefix = false;
            } else if (this.isFirstPrefixNalUnit || this.isFirstSlice) {
                if (z && this.readingSample) {
                    outputSample(i + ((int) (j - this.nalUnitPosition)));
                }
                this.samplePosition = this.nalUnitPosition;
                this.sampleTimeUs = this.nalUnitTimeUs;
                this.sampleIsKeyframe = this.nalUnitHasKeyframeData;
                this.readingSample = true;
            }
        }

        public void readNalUnitData(byte[] bArr, int i, int i2) {
            if (this.lookingForFirstSliceFlag) {
                int i3 = this.nalUnitBytesRead;
                int i4 = (i + 2) - i3;
                if (i4 >= i2) {
                    this.nalUnitBytesRead = (i2 - i) + i3;
                } else {
                    this.isFirstSlice = (bArr[i4] & 128) != 0;
                    this.lookingForFirstSliceFlag = false;
                }
            }
        }

        public void reset() {
            this.lookingForFirstSliceFlag = false;
            this.isFirstSlice = false;
            this.isFirstPrefixNalUnit = false;
            this.readingSample = false;
            this.readingPrefix = false;
        }

        public void startNalUnit(long j, int i, int i2, long j2, boolean z) {
            this.isFirstSlice = false;
            this.isFirstPrefixNalUnit = false;
            this.nalUnitTimeUs = j2;
            this.nalUnitBytesRead = 0;
            this.nalUnitPosition = j;
            if (!isVclBodyNalUnit(i2)) {
                if (this.readingSample && !this.readingPrefix) {
                    if (z) {
                        outputSample(i);
                    }
                    this.readingSample = false;
                }
                if (isPrefixNalUnit(i2)) {
                    this.isFirstPrefixNalUnit = !this.readingPrefix;
                    this.readingPrefix = true;
                }
            }
            boolean z2 = i2 >= 16 && i2 <= 21;
            this.nalUnitHasKeyframeData = z2;
            this.lookingForFirstSliceFlag = z2 || i2 <= 9;
        }
    }

    public H265Reader(com.google.android.exoplayer2.extractor.ts.SeiReader seiReader) {
        this.seiReader = seiReader;
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"output", "sampleReader"})
    private void assertTracksCreated() {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.output);
        com.google.android.exoplayer2.util.Util.castNonNull(this.sampleReader);
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output", "sampleReader"})
    private void endNalUnit(long j, int i, int i2, long j2) {
        this.sampleReader.endNalUnit(j, i, this.hasOutputFormat);
        if (!this.hasOutputFormat) {
            this.vps.endNalUnit(i2);
            this.sps.endNalUnit(i2);
            this.pps.endNalUnit(i2);
            if (this.vps.isCompleted() && this.sps.isCompleted() && this.pps.isCompleted()) {
                this.output.format(parseMediaFormat(this.formatId, this.vps, this.sps, this.pps));
                this.hasOutputFormat = true;
            }
        }
        if (this.prefixSei.endNalUnit(i2)) {
            com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer = this.prefixSei;
            this.seiWrapper.reset(this.prefixSei.nalData, com.google.android.exoplayer2.util.NalUnitUtil.unescapeStream(nalUnitTargetBuffer.nalData, nalUnitTargetBuffer.nalLength));
            this.seiWrapper.skipBytes(5);
            this.seiReader.consume(j2, this.seiWrapper);
        }
        if (this.suffixSei.endNalUnit(i2)) {
            com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer2 = this.suffixSei;
            this.seiWrapper.reset(this.suffixSei.nalData, com.google.android.exoplayer2.util.NalUnitUtil.unescapeStream(nalUnitTargetBuffer2.nalData, nalUnitTargetBuffer2.nalLength));
            this.seiWrapper.skipBytes(5);
            this.seiReader.consume(j2, this.seiWrapper);
        }
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"sampleReader"})
    private void nalUnitData(byte[] bArr, int i, int i2) {
        this.sampleReader.readNalUnitData(bArr, i, i2);
        if (!this.hasOutputFormat) {
            this.vps.appendToNalUnit(bArr, i, i2);
            this.sps.appendToNalUnit(bArr, i, i2);
            this.pps.appendToNalUnit(bArr, i, i2);
        }
        this.prefixSei.appendToNalUnit(bArr, i, i2);
        this.suffixSei.appendToNalUnit(bArr, i, i2);
    }

    public static com.google.android.exoplayer2.Format parseMediaFormat(java.lang.String str, com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer, com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer2, com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer3) {
        int i = nalUnitTargetBuffer.nalLength;
        byte[] bArr = new byte[nalUnitTargetBuffer2.nalLength + i + nalUnitTargetBuffer3.nalLength];
        java.lang.System.arraycopy(nalUnitTargetBuffer.nalData, 0, bArr, 0, i);
        java.lang.System.arraycopy(nalUnitTargetBuffer2.nalData, 0, bArr, nalUnitTargetBuffer.nalLength, nalUnitTargetBuffer2.nalLength);
        java.lang.System.arraycopy(nalUnitTargetBuffer3.nalData, 0, bArr, nalUnitTargetBuffer.nalLength + nalUnitTargetBuffer2.nalLength, nalUnitTargetBuffer3.nalLength);
        com.google.android.exoplayer2.util.ParsableNalUnitBitArray parsableNalUnitBitArray = new com.google.android.exoplayer2.util.ParsableNalUnitBitArray(nalUnitTargetBuffer2.nalData, 0, nalUnitTargetBuffer2.nalLength);
        parsableNalUnitBitArray.skipBits(44);
        int bits = parsableNalUnitBitArray.readBits(3);
        parsableNalUnitBitArray.skipBit();
        int bits2 = parsableNalUnitBitArray.readBits(2);
        boolean bit = parsableNalUnitBitArray.readBit();
        int bits3 = parsableNalUnitBitArray.readBits(5);
        int i2 = 0;
        for (int i3 = 0; i3 < 32; i3++) {
            if (parsableNalUnitBitArray.readBit()) {
                i2 |= 1 << i3;
            }
        }
        int[] iArr = new int[6];
        for (int i4 = 0; i4 < 6; i4++) {
            iArr[i4] = parsableNalUnitBitArray.readBits(8);
        }
        int bits4 = parsableNalUnitBitArray.readBits(8);
        int i5 = 0;
        for (int i6 = 0; i6 < bits; i6++) {
            if (parsableNalUnitBitArray.readBit()) {
                i5 += 89;
            }
            if (parsableNalUnitBitArray.readBit()) {
                i5 += 8;
            }
        }
        parsableNalUnitBitArray.skipBits(i5);
        if (bits > 0) {
            parsableNalUnitBitArray.skipBits((8 - bits) * 2);
        }
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        if (unsignedExpGolombCodedInt == 3) {
            parsableNalUnitBitArray.skipBit();
        }
        int unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int unsignedExpGolombCodedInt3 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        if (parsableNalUnitBitArray.readBit()) {
            int unsignedExpGolombCodedInt4 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt5 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt6 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            int unsignedExpGolombCodedInt7 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            unsignedExpGolombCodedInt2 -= (unsignedExpGolombCodedInt4 + unsignedExpGolombCodedInt5) * ((unsignedExpGolombCodedInt == 1 || unsignedExpGolombCodedInt == 2) ? 2 : 1);
            unsignedExpGolombCodedInt3 -= (unsignedExpGolombCodedInt6 + unsignedExpGolombCodedInt7) * (unsignedExpGolombCodedInt == 1 ? 2 : 1);
        }
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int unsignedExpGolombCodedInt8 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        int i7 = parsableNalUnitBitArray.readBit() ? 0 : bits;
        while (true) {
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            if (i7 > bits) {
                break;
            }
            i7++;
        }
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        if (parsableNalUnitBitArray.readBit() && parsableNalUnitBitArray.readBit()) {
            skipScalingList(parsableNalUnitBitArray);
        }
        parsableNalUnitBitArray.skipBits(2);
        if (parsableNalUnitBitArray.readBit()) {
            parsableNalUnitBitArray.skipBits(8);
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            parsableNalUnitBitArray.skipBit();
        }
        skipShortTermRefPicSets(parsableNalUnitBitArray);
        if (parsableNalUnitBitArray.readBit()) {
            for (int i8 = 0; i8 < parsableNalUnitBitArray.readUnsignedExpGolombCodedInt(); i8++) {
                parsableNalUnitBitArray.skipBits(unsignedExpGolombCodedInt8 + 4 + 1);
            }
        }
        parsableNalUnitBitArray.skipBits(2);
        float f2 = 1.0f;
        if (parsableNalUnitBitArray.readBit()) {
            if (parsableNalUnitBitArray.readBit()) {
                int bits5 = parsableNalUnitBitArray.readBits(8);
                if (bits5 == 255) {
                    int bits6 = parsableNalUnitBitArray.readBits(16);
                    int bits7 = parsableNalUnitBitArray.readBits(16);
                    if (bits6 != 0 && bits7 != 0) {
                        f2 = bits6 / bits7;
                    }
                } else {
                    float[] fArr = com.google.android.exoplayer2.util.NalUnitUtil.ASPECT_RATIO_IDC_VALUES;
                    if (bits5 < fArr.length) {
                        f2 = fArr[bits5];
                    } else {
                        e.a.c.a.a.t(46, "Unexpected aspect_ratio_idc value: ", bits5, TAG);
                    }
                }
            }
            if (parsableNalUnitBitArray.readBit()) {
                parsableNalUnitBitArray.skipBit();
            }
            if (parsableNalUnitBitArray.readBit()) {
                parsableNalUnitBitArray.skipBits(4);
                if (parsableNalUnitBitArray.readBit()) {
                    parsableNalUnitBitArray.skipBits(24);
                }
            }
            if (parsableNalUnitBitArray.readBit()) {
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
            }
            parsableNalUnitBitArray.skipBit();
            if (parsableNalUnitBitArray.readBit()) {
                unsignedExpGolombCodedInt3 *= 2;
            }
        }
        return new com.google.android.exoplayer2.Format.Builder().setId(str).setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.VIDEO_H265).setCodecs(com.google.android.exoplayer2.util.CodecSpecificDataUtil.buildHevcCodecString(bits2, bit, bits3, i2, iArr, bits4)).setWidth(unsignedExpGolombCodedInt2).setHeight(unsignedExpGolombCodedInt3).setPixelWidthHeightRatio(f2).setInitializationData(java.util.Collections.singletonList(bArr)).build();
    }

    public static void skipScalingList(com.google.android.exoplayer2.util.ParsableNalUnitBitArray parsableNalUnitBitArray) {
        for (int i = 0; i < 4; i++) {
            int i2 = 0;
            while (i2 < 6) {
                int i3 = 1;
                if (parsableNalUnitBitArray.readBit()) {
                    int iMin = java.lang.Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        parsableNalUnitBitArray.readSignedExpGolombCodedInt();
                    }
                    for (int i4 = 0; i4 < iMin; i4++) {
                        parsableNalUnitBitArray.readSignedExpGolombCodedInt();
                    }
                } else {
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                }
                if (i == 3) {
                    i3 = 3;
                }
                i2 += i3;
            }
        }
    }

    public static void skipShortTermRefPicSets(com.google.android.exoplayer2.util.ParsableNalUnitBitArray parsableNalUnitBitArray) {
        int unsignedExpGolombCodedInt = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
        boolean bit = false;
        int i = 0;
        for (int i2 = 0; i2 < unsignedExpGolombCodedInt; i2++) {
            if (i2 != 0) {
                bit = parsableNalUnitBitArray.readBit();
            }
            if (bit) {
                parsableNalUnitBitArray.skipBit();
                parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                for (int i3 = 0; i3 <= i; i3++) {
                    if (parsableNalUnitBitArray.readBit()) {
                        parsableNalUnitBitArray.skipBit();
                    }
                }
            } else {
                int unsignedExpGolombCodedInt2 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int unsignedExpGolombCodedInt3 = parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                int i4 = unsignedExpGolombCodedInt2 + unsignedExpGolombCodedInt3;
                for (int i5 = 0; i5 < unsignedExpGolombCodedInt2; i5++) {
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                    parsableNalUnitBitArray.skipBit();
                }
                for (int i6 = 0; i6 < unsignedExpGolombCodedInt3; i6++) {
                    parsableNalUnitBitArray.readUnsignedExpGolombCodedInt();
                    parsableNalUnitBitArray.skipBit();
                }
                i = i4;
            }
        }
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"sampleReader"})
    private void startNalUnit(long j, int i, int i2, long j2) {
        this.sampleReader.startNalUnit(j, i, i2, j2, this.hasOutputFormat);
        if (!this.hasOutputFormat) {
            this.vps.startNalUnit(i2);
            this.sps.startNalUnit(i2);
            this.pps.startNalUnit(i2);
        }
        this.prefixSei.startNalUnit(i2);
        this.suffixSei.startNalUnit(i2);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        assertTracksCreated();
        while (parsableByteArray.bytesLeft() > 0) {
            int position = parsableByteArray.getPosition();
            int iLimit = parsableByteArray.limit();
            byte[] data = parsableByteArray.getData();
            this.totalBytesWritten += parsableByteArray.bytesLeft();
            this.output.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
            while (position < iLimit) {
                int iFindNalUnit = com.google.android.exoplayer2.util.NalUnitUtil.findNalUnit(data, position, iLimit, this.prefixFlags);
                if (iFindNalUnit == iLimit) {
                    nalUnitData(data, position, iLimit);
                    return;
                }
                int h265NalUnitType = com.google.android.exoplayer2.util.NalUnitUtil.getH265NalUnitType(data, iFindNalUnit);
                int i = iFindNalUnit - position;
                if (i > 0) {
                    nalUnitData(data, position, iFindNalUnit);
                }
                int i2 = iLimit - iFindNalUnit;
                long j = this.totalBytesWritten - i2;
                endNalUnit(j, i2, i < 0 ? -i : 0, this.pesTimeUs);
                startNalUnit(j, i2, h265NalUnitType, this.pesTimeUs);
                position = iFindNalUnit + 3;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void createTracks(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
        this.output = trackOutputTrack;
        this.sampleReader = new com.google.android.exoplayer2.extractor.ts.H265Reader.SampleReader(trackOutputTrack);
        this.seiReader.createTracks(extractorOutput, trackIdGenerator);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetFinished() {
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void packetStarted(long j, int i) {
        if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
            this.pesTimeUs = j;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.totalBytesWritten = 0L;
        this.pesTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        com.google.android.exoplayer2.util.NalUnitUtil.clearPrefixFlags(this.prefixFlags);
        this.vps.reset();
        this.sps.reset();
        this.pps.reset();
        this.prefixSei.reset();
        this.suffixSei.reset();
        com.google.android.exoplayer2.extractor.ts.H265Reader.SampleReader sampleReader = this.sampleReader;
        if (sampleReader != null) {
            sampleReader.reset();
        }
    }
}
