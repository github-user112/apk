package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class H264Reader implements com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader {
    public static final int NAL_UNIT_TYPE_PPS = 8;
    public static final int NAL_UNIT_TYPE_SEI = 6;
    public static final int NAL_UNIT_TYPE_SPS = 7;
    public final boolean allowNonIdrKeyframes;
    public final boolean detectAccessUnits;
    public java.lang.String formatId;
    public boolean hasOutputFormat;
    public com.google.android.exoplayer2.extractor.TrackOutput output;
    public boolean randomAccessIndicator;
    public com.google.android.exoplayer2.extractor.ts.H264Reader.SampleReader sampleReader;
    public final com.google.android.exoplayer2.extractor.ts.SeiReader seiReader;
    public long totalBytesWritten;
    public final boolean[] prefixFlags = new boolean[3];
    public final com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer sps = new com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer(7, 128);
    public final com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer pps = new com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer(8, 128);
    public final com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer sei = new com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer(6, 128);
    public long pesTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
    public final com.google.android.exoplayer2.util.ParsableByteArray seiWrapper = new com.google.android.exoplayer2.util.ParsableByteArray();

    public static final class SampleReader {
        public static final int DEFAULT_BUFFER_SIZE = 128;
        public static final int NAL_UNIT_TYPE_AUD = 9;
        public static final int NAL_UNIT_TYPE_IDR = 5;
        public static final int NAL_UNIT_TYPE_NON_IDR = 1;
        public static final int NAL_UNIT_TYPE_PARTITION_A = 2;
        public final boolean allowNonIdrKeyframes;
        public final com.google.android.exoplayer2.util.ParsableNalUnitBitArray bitArray;
        public byte[] buffer;
        public int bufferLength;
        public final boolean detectAccessUnits;
        public boolean isFilling;
        public long nalUnitStartPosition;
        public long nalUnitTimeUs;
        public int nalUnitType;
        public final com.google.android.exoplayer2.extractor.TrackOutput output;
        public com.google.android.exoplayer2.extractor.ts.H264Reader.SampleReader.SliceHeaderData previousSliceHeader;
        public boolean readingSample;
        public boolean sampleIsKeyframe;
        public long samplePosition;
        public long sampleTimeUs;
        public com.google.android.exoplayer2.extractor.ts.H264Reader.SampleReader.SliceHeaderData sliceHeader;
        public final android.util.SparseArray<com.google.android.exoplayer2.util.NalUnitUtil.SpsData> sps = new android.util.SparseArray<>();
        public final android.util.SparseArray<com.google.android.exoplayer2.util.NalUnitUtil.PpsData> pps = new android.util.SparseArray<>();

        public static final class SliceHeaderData {
            public static final int SLICE_TYPE_ALL_I = 7;
            public static final int SLICE_TYPE_I = 2;
            public boolean bottomFieldFlag;
            public boolean bottomFieldFlagPresent;
            public int deltaPicOrderCnt0;
            public int deltaPicOrderCnt1;
            public int deltaPicOrderCntBottom;
            public boolean fieldPicFlag;
            public int frameNum;
            public boolean hasSliceType;
            public boolean idrPicFlag;
            public int idrPicId;
            public boolean isComplete;
            public int nalRefIdc;
            public int picOrderCntLsb;
            public int picParameterSetId;
            public int sliceType;
            public com.google.android.exoplayer2.util.NalUnitUtil.SpsData spsData;

            public SliceHeaderData() {
            }

            /* JADX INFO: Access modifiers changed from: private */
            public boolean isFirstVclNalUnitOfPicture(com.google.android.exoplayer2.extractor.ts.H264Reader.SampleReader.SliceHeaderData sliceHeaderData) {
                int i;
                int i2;
                boolean z;
                if (!this.isComplete) {
                    return false;
                }
                if (!sliceHeaderData.isComplete) {
                    return true;
                }
                com.google.android.exoplayer2.util.NalUnitUtil.SpsData spsData = (com.google.android.exoplayer2.util.NalUnitUtil.SpsData) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.spsData);
                com.google.android.exoplayer2.util.NalUnitUtil.SpsData spsData2 = (com.google.android.exoplayer2.util.NalUnitUtil.SpsData) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(sliceHeaderData.spsData);
                return (this.frameNum == sliceHeaderData.frameNum && this.picParameterSetId == sliceHeaderData.picParameterSetId && this.fieldPicFlag == sliceHeaderData.fieldPicFlag && (!this.bottomFieldFlagPresent || !sliceHeaderData.bottomFieldFlagPresent || this.bottomFieldFlag == sliceHeaderData.bottomFieldFlag) && (((i = this.nalRefIdc) == (i2 = sliceHeaderData.nalRefIdc) || (i != 0 && i2 != 0)) && ((spsData.picOrderCountType != 0 || spsData2.picOrderCountType != 0 || (this.picOrderCntLsb == sliceHeaderData.picOrderCntLsb && this.deltaPicOrderCntBottom == sliceHeaderData.deltaPicOrderCntBottom)) && ((spsData.picOrderCountType != 1 || spsData2.picOrderCountType != 1 || (this.deltaPicOrderCnt0 == sliceHeaderData.deltaPicOrderCnt0 && this.deltaPicOrderCnt1 == sliceHeaderData.deltaPicOrderCnt1)) && (z = this.idrPicFlag) == sliceHeaderData.idrPicFlag && (!z || this.idrPicId == sliceHeaderData.idrPicId))))) ? false : true;
            }

            public void clear() {
                this.hasSliceType = false;
                this.isComplete = false;
            }

            public boolean isISlice() {
                int i;
                return this.hasSliceType && ((i = this.sliceType) == 7 || i == 2);
            }

            public void setAll(com.google.android.exoplayer2.util.NalUnitUtil.SpsData spsData, int i, int i2, int i3, int i4, boolean z, boolean z2, boolean z3, boolean z4, int i5, int i6, int i7, int i8, int i9) {
                this.spsData = spsData;
                this.nalRefIdc = i;
                this.sliceType = i2;
                this.frameNum = i3;
                this.picParameterSetId = i4;
                this.fieldPicFlag = z;
                this.bottomFieldFlagPresent = z2;
                this.bottomFieldFlag = z3;
                this.idrPicFlag = z4;
                this.idrPicId = i5;
                this.picOrderCntLsb = i6;
                this.deltaPicOrderCntBottom = i7;
                this.deltaPicOrderCnt0 = i8;
                this.deltaPicOrderCnt1 = i9;
                this.isComplete = true;
                this.hasSliceType = true;
            }

            public void setSliceType(int i) {
                this.sliceType = i;
                this.hasSliceType = true;
            }
        }

        public SampleReader(com.google.android.exoplayer2.extractor.TrackOutput trackOutput, boolean z, boolean z2) {
            this.output = trackOutput;
            this.allowNonIdrKeyframes = z;
            this.detectAccessUnits = z2;
            this.previousSliceHeader = new com.google.android.exoplayer2.extractor.ts.H264Reader.SampleReader.SliceHeaderData();
            this.sliceHeader = new com.google.android.exoplayer2.extractor.ts.H264Reader.SampleReader.SliceHeaderData();
            byte[] bArr = new byte[128];
            this.buffer = bArr;
            this.bitArray = new com.google.android.exoplayer2.util.ParsableNalUnitBitArray(bArr, 0, 0);
            reset();
        }

        private void outputSample(int i) {
            long j = this.sampleTimeUs;
            if (j == com.google.android.exoplayer2.C.TIME_UNSET) {
                return;
            }
            boolean z = this.sampleIsKeyframe;
            this.output.sampleMetadata(j, z ? 1 : 0, (int) (this.nalUnitStartPosition - this.samplePosition), i, null);
        }

        /* JADX WARN: Removed duplicated region for block: B:53:0x00ff  */
        /* JADX WARN: Removed duplicated region for block: B:54:0x0102  */
        /* JADX WARN: Removed duplicated region for block: B:56:0x0106  */
        /* JADX WARN: Removed duplicated region for block: B:60:0x0118  */
        /* JADX WARN: Removed duplicated region for block: B:63:0x011e  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x014e  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void appendToNalUnit(byte[] r24, int r25, int r26) {
            /*
                Method dump skipped, instructions count: 408
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.H264Reader.SampleReader.appendToNalUnit(byte[], int, int):void");
        }

        public boolean endNalUnit(long j, int i, boolean z, boolean z2) {
            boolean z3 = false;
            if (this.nalUnitType == 9 || (this.detectAccessUnits && this.sliceHeader.isFirstVclNalUnitOfPicture(this.previousSliceHeader))) {
                if (z && this.readingSample) {
                    outputSample(i + ((int) (j - this.nalUnitStartPosition)));
                }
                this.samplePosition = this.nalUnitStartPosition;
                this.sampleTimeUs = this.nalUnitTimeUs;
                this.sampleIsKeyframe = false;
                this.readingSample = true;
            }
            if (this.allowNonIdrKeyframes) {
                z2 = this.sliceHeader.isISlice();
            }
            boolean z4 = this.sampleIsKeyframe;
            int i2 = this.nalUnitType;
            if (i2 == 5 || (z2 && i2 == 1)) {
                z3 = true;
            }
            boolean z5 = z4 | z3;
            this.sampleIsKeyframe = z5;
            return z5;
        }

        public boolean needsSpsPps() {
            return this.detectAccessUnits;
        }

        public void putPps(com.google.android.exoplayer2.util.NalUnitUtil.PpsData ppsData) {
            this.pps.append(ppsData.picParameterSetId, ppsData);
        }

        public void putSps(com.google.android.exoplayer2.util.NalUnitUtil.SpsData spsData) {
            this.sps.append(spsData.seqParameterSetId, spsData);
        }

        public void reset() {
            this.isFilling = false;
            this.readingSample = false;
            this.sliceHeader.clear();
        }

        public void startNalUnit(long j, int i, long j2) {
            this.nalUnitType = i;
            this.nalUnitTimeUs = j2;
            this.nalUnitStartPosition = j;
            if (!this.allowNonIdrKeyframes || i != 1) {
                if (!this.detectAccessUnits) {
                    return;
                }
                int i2 = this.nalUnitType;
                if (i2 != 5 && i2 != 1 && i2 != 2) {
                    return;
                }
            }
            com.google.android.exoplayer2.extractor.ts.H264Reader.SampleReader.SliceHeaderData sliceHeaderData = this.previousSliceHeader;
            this.previousSliceHeader = this.sliceHeader;
            this.sliceHeader = sliceHeaderData;
            sliceHeaderData.clear();
            this.bufferLength = 0;
            this.isFilling = true;
        }
    }

    public H264Reader(com.google.android.exoplayer2.extractor.ts.SeiReader seiReader, boolean z, boolean z2) {
        this.seiReader = seiReader;
        this.allowNonIdrKeyframes = z;
        this.detectAccessUnits = z2;
    }

    @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"output", "sampleReader"})
    private void assertTracksCreated() {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.output);
        com.google.android.exoplayer2.util.Util.castNonNull(this.sampleReader);
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"output", "sampleReader"})
    private void endNalUnit(long j, int i, int i2, long j2) {
        com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer;
        if (!this.hasOutputFormat || this.sampleReader.needsSpsPps()) {
            this.sps.endNalUnit(i2);
            this.pps.endNalUnit(i2);
            if (this.hasOutputFormat) {
                if (this.sps.isCompleted()) {
                    com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer2 = this.sps;
                    this.sampleReader.putSps(com.google.android.exoplayer2.util.NalUnitUtil.parseSpsNalUnit(nalUnitTargetBuffer2.nalData, 3, nalUnitTargetBuffer2.nalLength));
                    nalUnitTargetBuffer = this.sps;
                } else if (this.pps.isCompleted()) {
                    com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer3 = this.pps;
                    this.sampleReader.putPps(com.google.android.exoplayer2.util.NalUnitUtil.parsePpsNalUnit(nalUnitTargetBuffer3.nalData, 3, nalUnitTargetBuffer3.nalLength));
                    nalUnitTargetBuffer = this.pps;
                }
            } else if (this.sps.isCompleted() && this.pps.isCompleted()) {
                java.util.ArrayList arrayList = new java.util.ArrayList();
                com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer4 = this.sps;
                arrayList.add(java.util.Arrays.copyOf(nalUnitTargetBuffer4.nalData, nalUnitTargetBuffer4.nalLength));
                com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer5 = this.pps;
                arrayList.add(java.util.Arrays.copyOf(nalUnitTargetBuffer5.nalData, nalUnitTargetBuffer5.nalLength));
                com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer6 = this.sps;
                com.google.android.exoplayer2.util.NalUnitUtil.SpsData spsNalUnit = com.google.android.exoplayer2.util.NalUnitUtil.parseSpsNalUnit(nalUnitTargetBuffer6.nalData, 3, nalUnitTargetBuffer6.nalLength);
                com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer7 = this.pps;
                com.google.android.exoplayer2.util.NalUnitUtil.PpsData ppsNalUnit = com.google.android.exoplayer2.util.NalUnitUtil.parsePpsNalUnit(nalUnitTargetBuffer7.nalData, 3, nalUnitTargetBuffer7.nalLength);
                this.output.format(new com.google.android.exoplayer2.Format.Builder().setId(this.formatId).setSampleMimeType(com.google.android.exoplayer2.util.MimeTypes.VIDEO_H264).setCodecs(com.google.android.exoplayer2.util.CodecSpecificDataUtil.buildAvcCodecString(spsNalUnit.profileIdc, spsNalUnit.constraintsFlagsAndReservedZero2Bits, spsNalUnit.levelIdc)).setWidth(spsNalUnit.width).setHeight(spsNalUnit.height).setPixelWidthHeightRatio(spsNalUnit.pixelWidthHeightRatio).setInitializationData(arrayList).build());
                this.hasOutputFormat = true;
                this.sampleReader.putSps(spsNalUnit);
                this.sampleReader.putPps(ppsNalUnit);
                this.sps.reset();
                nalUnitTargetBuffer = this.pps;
            }
            nalUnitTargetBuffer.reset();
        }
        if (this.sei.endNalUnit(i2)) {
            com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer8 = this.sei;
            this.seiWrapper.reset(this.sei.nalData, com.google.android.exoplayer2.util.NalUnitUtil.unescapeStream(nalUnitTargetBuffer8.nalData, nalUnitTargetBuffer8.nalLength));
            this.seiWrapper.setPosition(4);
            this.seiReader.consume(j2, this.seiWrapper);
        }
        if (this.sampleReader.endNalUnit(j, i, this.hasOutputFormat, this.randomAccessIndicator)) {
            this.randomAccessIndicator = false;
        }
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"sampleReader"})
    private void nalUnitData(byte[] bArr, int i, int i2) {
        if (!this.hasOutputFormat || this.sampleReader.needsSpsPps()) {
            this.sps.appendToNalUnit(bArr, i, i2);
            this.pps.appendToNalUnit(bArr, i, i2);
        }
        this.sei.appendToNalUnit(bArr, i, i2);
        this.sampleReader.appendToNalUnit(bArr, i, i2);
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"sampleReader"})
    private void startNalUnit(long j, int i, long j2) {
        if (!this.hasOutputFormat || this.sampleReader.needsSpsPps()) {
            this.sps.startNalUnit(i);
            this.pps.startNalUnit(i);
        }
        this.sei.startNalUnit(i);
        this.sampleReader.startNalUnit(j, i, j2);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        assertTracksCreated();
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        byte[] data = parsableByteArray.getData();
        this.totalBytesWritten += parsableByteArray.bytesLeft();
        this.output.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
        while (true) {
            int iFindNalUnit = com.google.android.exoplayer2.util.NalUnitUtil.findNalUnit(data, position, iLimit, this.prefixFlags);
            if (iFindNalUnit == iLimit) {
                nalUnitData(data, position, iLimit);
                return;
            }
            int nalUnitType = com.google.android.exoplayer2.util.NalUnitUtil.getNalUnitType(data, iFindNalUnit);
            int i = iFindNalUnit - position;
            if (i > 0) {
                nalUnitData(data, position, iFindNalUnit);
            }
            int i2 = iLimit - iFindNalUnit;
            long j = this.totalBytesWritten - i2;
            endNalUnit(j, i2, i < 0 ? -i : 0, this.pesTimeUs);
            startNalUnit(j, nalUnitType, this.pesTimeUs);
            position = iFindNalUnit + 3;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void createTracks(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
        this.output = trackOutputTrack;
        this.sampleReader = new com.google.android.exoplayer2.extractor.ts.H264Reader.SampleReader(trackOutputTrack, this.allowNonIdrKeyframes, this.detectAccessUnits);
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
        this.randomAccessIndicator |= (i & 2) != 0;
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void seek() {
        this.totalBytesWritten = 0L;
        this.randomAccessIndicator = false;
        this.pesTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        com.google.android.exoplayer2.util.NalUnitUtil.clearPrefixFlags(this.prefixFlags);
        this.sps.reset();
        this.pps.reset();
        this.sei.reset();
        com.google.android.exoplayer2.extractor.ts.H264Reader.SampleReader sampleReader = this.sampleReader;
        if (sampleReader != null) {
            sampleReader.reset();
        }
    }
}
