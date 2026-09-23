package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class H263Reader implements com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader {
    public static final float[] PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO = {1.0f, 1.0f, 1.0909091f, 0.90909094f, 1.4545455f, 1.2121212f, 1.0f};
    public static final int START_CODE_VALUE_GROUP_OF_VOP = 179;
    public static final int START_CODE_VALUE_MAX_VIDEO_OBJECT = 31;
    public static final int START_CODE_VALUE_UNSET = -1;
    public static final int START_CODE_VALUE_USER_DATA = 178;
    public static final int START_CODE_VALUE_VISUAL_OBJECT = 181;
    public static final int START_CODE_VALUE_VISUAL_OBJECT_SEQUENCE = 176;
    public static final int START_CODE_VALUE_VOP = 182;
    public static final java.lang.String TAG = "H263Reader";
    public static final int VIDEO_OBJECT_LAYER_SHAPE_RECTANGULAR = 0;
    public final com.google.android.exoplayer2.extractor.ts.H263Reader.CsdBuffer csdBuffer;
    public java.lang.String formatId;
    public boolean hasOutputFormat;
    public com.google.android.exoplayer2.extractor.TrackOutput output;
    public long pesTimeUs;
    public final boolean[] prefixFlags;
    public com.google.android.exoplayer2.extractor.ts.H263Reader.SampleReader sampleReader;
    public long totalBytesWritten;
    public final com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer userData;
    public final com.google.android.exoplayer2.util.ParsableByteArray userDataParsable;
    public final com.google.android.exoplayer2.extractor.ts.UserDataReader userDataReader;

    public static final class CsdBuffer {
        public static final byte[] START_CODE = {0, 0, 1};
        public static final int STATE_EXPECT_VIDEO_OBJECT_LAYER_START = 3;
        public static final int STATE_EXPECT_VIDEO_OBJECT_START = 2;
        public static final int STATE_EXPECT_VISUAL_OBJECT_START = 1;
        public static final int STATE_SKIP_TO_VISUAL_OBJECT_SEQUENCE_START = 0;
        public static final int STATE_WAIT_FOR_VOP_START = 4;
        public byte[] data;
        public boolean isFilling;
        public int length;
        public int state;
        public int volStartPosition;

        public CsdBuffer(int i) {
            this.data = new byte[i];
        }

        public void onData(byte[] bArr, int i, int i2) {
            if (this.isFilling) {
                int i3 = i2 - i;
                byte[] bArr2 = this.data;
                int length = bArr2.length;
                int i4 = this.length;
                if (length < i4 + i3) {
                    this.data = java.util.Arrays.copyOf(bArr2, (i4 + i3) * 2);
                }
                java.lang.System.arraycopy(bArr, i, this.data, this.length, i3);
                this.length += i3;
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0041  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onStartCode(int r9, int r10) {
            /*
                r8 = this;
                int r0 = r8.state
                r1 = 0
                r2 = 1
                if (r0 == 0) goto L4b
                r3 = 181(0xb5, float:2.54E-43)
                r4 = 2
                java.lang.String r5 = "Unexpected start code value"
                java.lang.String r6 = "H263Reader"
                if (r0 == r2) goto L3f
                r7 = 3
                if (r0 == r4) goto L37
                r4 = 4
                if (r0 == r7) goto L2b
                if (r0 != r4) goto L25
                r0 = 179(0xb3, float:2.51E-43)
                if (r9 == r0) goto L1d
                if (r9 != r3) goto L53
            L1d:
                int r9 = r8.length
                int r9 = r9 - r10
                r8.length = r9
                r8.isFilling = r1
                return r2
            L25:
                java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
                r9.<init>()
                throw r9
            L2b:
                r9 = r9 & 240(0xf0, float:3.36E-43)
                r10 = 32
                if (r9 == r10) goto L32
                goto L41
            L32:
                int r9 = r8.length
                r8.volStartPosition = r9
                goto L48
            L37:
                r10 = 31
                if (r9 <= r10) goto L3c
                goto L41
            L3c:
                r8.state = r7
                goto L53
            L3f:
                if (r9 == r3) goto L48
            L41:
                com.google.android.exoplayer2.util.Log.w(r6, r5)
                r8.reset()
                goto L53
            L48:
                r8.state = r4
                goto L53
            L4b:
                r10 = 176(0xb0, float:2.47E-43)
                if (r9 != r10) goto L53
                r8.state = r2
                r8.isFilling = r2
            L53:
                byte[] r9 = com.google.android.exoplayer2.extractor.ts.H263Reader.CsdBuffer.START_CODE
                int r10 = r9.length
                r8.onData(r9, r1, r10)
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.H263Reader.CsdBuffer.onStartCode(int, int):boolean");
        }

        public void reset() {
            this.isFilling = false;
            this.length = 0;
            this.state = 0;
        }
    }

    public static final class SampleReader {
        public static final int OFFSET_VOP_CODING_TYPE = 1;
        public static final int VOP_CODING_TYPE_INTRA = 0;
        public boolean lookingForVopCodingType;
        public final com.google.android.exoplayer2.extractor.TrackOutput output;
        public boolean readingSample;
        public boolean sampleIsKeyframe;
        public long samplePosition;
        public long sampleTimeUs;
        public int startCodeValue;
        public int vopBytesRead;

        public SampleReader(com.google.android.exoplayer2.extractor.TrackOutput trackOutput) {
            this.output = trackOutput;
        }

        public void onData(byte[] bArr, int i, int i2) {
            if (this.lookingForVopCodingType) {
                int i3 = this.vopBytesRead;
                int i4 = (i + 1) - i3;
                if (i4 >= i2) {
                    this.vopBytesRead = (i2 - i) + i3;
                } else {
                    this.sampleIsKeyframe = ((bArr[i4] & 192) >> 6) == 0;
                    this.lookingForVopCodingType = false;
                }
            }
        }

        public void onDataEnd(long j, int i, boolean z) {
            if (this.startCodeValue == 182 && z && this.readingSample) {
                long j2 = this.sampleTimeUs;
                if (j2 != com.google.android.exoplayer2.C.TIME_UNSET) {
                    this.output.sampleMetadata(j2, this.sampleIsKeyframe ? 1 : 0, (int) (j - this.samplePosition), i, null);
                }
            }
            if (this.startCodeValue != 179) {
                this.samplePosition = j;
            }
        }

        public void onStartCode(int i, long j) {
            this.startCodeValue = i;
            this.sampleIsKeyframe = false;
            this.readingSample = i == 182 || i == 179;
            this.lookingForVopCodingType = i == 182;
            this.vopBytesRead = 0;
            this.sampleTimeUs = j;
        }

        public void reset() {
            this.readingSample = false;
            this.lookingForVopCodingType = false;
            this.sampleIsKeyframe = false;
            this.startCodeValue = -1;
        }
    }

    public H263Reader() {
        this(null);
    }

    public H263Reader(com.google.android.exoplayer2.extractor.ts.UserDataReader userDataReader) {
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray;
        this.userDataReader = userDataReader;
        this.prefixFlags = new boolean[4];
        this.csdBuffer = new com.google.android.exoplayer2.extractor.ts.H263Reader.CsdBuffer(128);
        this.pesTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        if (userDataReader != null) {
            this.userData = new com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer(178, 128);
            parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray();
        } else {
            parsableByteArray = null;
            this.userData = null;
        }
        this.userDataParsable = parsableByteArray;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.exoplayer2.Format parseCsdBuffer(com.google.android.exoplayer2.extractor.ts.H263Reader.CsdBuffer r8, int r9, java.lang.String r10) {
        /*
            byte[] r0 = r8.data
            int r8 = r8.length
            byte[] r8 = java.util.Arrays.copyOf(r0, r8)
            com.google.android.exoplayer2.util.ParsableBitArray r0 = new com.google.android.exoplayer2.util.ParsableBitArray
            r0.<init>(r8)
            r0.skipBytes(r9)
            r9 = 4
            r0.skipBytes(r9)
            r0.skipBit()
            r1 = 8
            r0.skipBits(r1)
            boolean r2 = r0.readBit()
            r3 = 3
            if (r2 == 0) goto L29
            r0.skipBits(r9)
            r0.skipBits(r3)
        L29:
            int r9 = r0.readBits(r9)
            r2 = 1065353216(0x3f800000, float:1.0)
            java.lang.String r4 = "Invalid aspect ratio"
            java.lang.String r5 = "H263Reader"
            r6 = 15
            if (r9 != r6) goto L47
            int r9 = r0.readBits(r1)
            int r1 = r0.readBits(r1)
            if (r1 != 0) goto L42
            goto L4f
        L42:
            float r9 = (float) r9
            float r1 = (float) r1
            float r9 = r9 / r1
            r2 = r9
            goto L52
        L47:
            float[] r1 = com.google.android.exoplayer2.extractor.ts.H263Reader.PIXEL_WIDTH_HEIGHT_RATIO_BY_ASPECT_RATIO_INFO
            int r7 = r1.length
            if (r9 >= r7) goto L4f
            r2 = r1[r9]
            goto L52
        L4f:
            com.google.android.exoplayer2.util.Log.w(r5, r4)
        L52:
            boolean r9 = r0.readBit()
            r1 = 2
            if (r9 == 0) goto L89
            r0.skipBits(r1)
            r9 = 1
            r0.skipBits(r9)
            boolean r9 = r0.readBit()
            if (r9 == 0) goto L89
            r0.skipBits(r6)
            r0.skipBit()
            r0.skipBits(r6)
            r0.skipBit()
            r0.skipBits(r6)
            r0.skipBit()
            r0.skipBits(r3)
            r9 = 11
            r0.skipBits(r9)
            r0.skipBit()
            r0.skipBits(r6)
            r0.skipBit()
        L89:
            int r9 = r0.readBits(r1)
            if (r9 == 0) goto L94
            java.lang.String r9 = "Unhandled video object layer shape"
            com.google.android.exoplayer2.util.Log.w(r5, r9)
        L94:
            r0.skipBit()
            r9 = 16
            int r9 = r0.readBits(r9)
            r0.skipBit()
            boolean r1 = r0.readBit()
            if (r1 == 0) goto Lbb
            if (r9 != 0) goto Lae
            java.lang.String r9 = "Invalid vop_increment_time_resolution"
            com.google.android.exoplayer2.util.Log.w(r5, r9)
            goto Lbb
        Lae:
            int r9 = r9 + (-1)
            r1 = 0
        Lb1:
            if (r9 <= 0) goto Lb8
            int r1 = r1 + 1
            int r9 = r9 >> 1
            goto Lb1
        Lb8:
            r0.skipBits(r1)
        Lbb:
            r0.skipBit()
            r9 = 13
            int r1 = r0.readBits(r9)
            r0.skipBit()
            int r9 = r0.readBits(r9)
            r0.skipBit()
            r0.skipBit()
            com.google.android.exoplayer2.Format$Builder r0 = new com.google.android.exoplayer2.Format$Builder
            r0.<init>()
            com.google.android.exoplayer2.Format$Builder r10 = r0.setId(r10)
            java.lang.String r0 = "video/mp4v-es"
            com.google.android.exoplayer2.Format$Builder r10 = r10.setSampleMimeType(r0)
            com.google.android.exoplayer2.Format$Builder r10 = r10.setWidth(r1)
            com.google.android.exoplayer2.Format$Builder r9 = r10.setHeight(r9)
            com.google.android.exoplayer2.Format$Builder r9 = r9.setPixelWidthHeightRatio(r2)
            java.util.List r8 = java.util.Collections.singletonList(r8)
            com.google.android.exoplayer2.Format$Builder r8 = r9.setInitializationData(r8)
            com.google.android.exoplayer2.Format r8 = r8.build()
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.H263Reader.parseCsdBuffer(com.google.android.exoplayer2.extractor.ts.H263Reader$CsdBuffer, int, java.lang.String):com.google.android.exoplayer2.Format");
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void consume(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.sampleReader);
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.output);
        int position = parsableByteArray.getPosition();
        int iLimit = parsableByteArray.limit();
        byte[] data = parsableByteArray.getData();
        this.totalBytesWritten += parsableByteArray.bytesLeft();
        this.output.sampleData(parsableByteArray, parsableByteArray.bytesLeft());
        while (true) {
            int iFindNalUnit = com.google.android.exoplayer2.util.NalUnitUtil.findNalUnit(data, position, iLimit, this.prefixFlags);
            if (iFindNalUnit == iLimit) {
                break;
            }
            int i = iFindNalUnit + 3;
            int i2 = parsableByteArray.getData()[i] & 255;
            int i3 = iFindNalUnit - position;
            int i4 = 0;
            if (!this.hasOutputFormat) {
                if (i3 > 0) {
                    this.csdBuffer.onData(data, position, iFindNalUnit);
                }
                if (this.csdBuffer.onStartCode(i2, i3 < 0 ? -i3 : 0)) {
                    com.google.android.exoplayer2.extractor.TrackOutput trackOutput = this.output;
                    com.google.android.exoplayer2.extractor.ts.H263Reader.CsdBuffer csdBuffer = this.csdBuffer;
                    trackOutput.format(parseCsdBuffer(csdBuffer, csdBuffer.volStartPosition, (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.formatId)));
                    this.hasOutputFormat = true;
                }
            }
            this.sampleReader.onData(data, position, iFindNalUnit);
            com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer = this.userData;
            if (nalUnitTargetBuffer != null) {
                if (i3 > 0) {
                    nalUnitTargetBuffer.appendToNalUnit(data, position, iFindNalUnit);
                } else {
                    i4 = -i3;
                }
                if (this.userData.endNalUnit(i4)) {
                    com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer2 = this.userData;
                    ((com.google.android.exoplayer2.util.ParsableByteArray) com.google.android.exoplayer2.util.Util.castNonNull(this.userDataParsable)).reset(this.userData.nalData, com.google.android.exoplayer2.util.NalUnitUtil.unescapeStream(nalUnitTargetBuffer2.nalData, nalUnitTargetBuffer2.nalLength));
                    ((com.google.android.exoplayer2.extractor.ts.UserDataReader) com.google.android.exoplayer2.util.Util.castNonNull(this.userDataReader)).consume(this.pesTimeUs, this.userDataParsable);
                }
                if (i2 == 178 && parsableByteArray.getData()[iFindNalUnit + 2] == 1) {
                    this.userData.startNalUnit(i2);
                }
            }
            int i5 = iLimit - iFindNalUnit;
            this.sampleReader.onDataEnd(this.totalBytesWritten - i5, i5, this.hasOutputFormat);
            this.sampleReader.onStartCode(i2, this.pesTimeUs);
            position = i;
        }
        if (!this.hasOutputFormat) {
            this.csdBuffer.onData(data, position, iLimit);
        }
        this.sampleReader.onData(data, position, iLimit);
        com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer3 = this.userData;
        if (nalUnitTargetBuffer3 != null) {
            nalUnitTargetBuffer3.appendToNalUnit(data, position, iLimit);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader
    public void createTracks(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        trackIdGenerator.generateNewId();
        this.formatId = trackIdGenerator.getFormatId();
        com.google.android.exoplayer2.extractor.TrackOutput trackOutputTrack = extractorOutput.track(trackIdGenerator.getTrackId(), 2);
        this.output = trackOutputTrack;
        this.sampleReader = new com.google.android.exoplayer2.extractor.ts.H263Reader.SampleReader(trackOutputTrack);
        com.google.android.exoplayer2.extractor.ts.UserDataReader userDataReader = this.userDataReader;
        if (userDataReader != null) {
            userDataReader.createTracks(extractorOutput, trackIdGenerator);
        }
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
        com.google.android.exoplayer2.util.NalUnitUtil.clearPrefixFlags(this.prefixFlags);
        this.csdBuffer.reset();
        com.google.android.exoplayer2.extractor.ts.H263Reader.SampleReader sampleReader = this.sampleReader;
        if (sampleReader != null) {
            sampleReader.reset();
        }
        com.google.android.exoplayer2.extractor.ts.NalUnitTargetBuffer nalUnitTargetBuffer = this.userData;
        if (nalUnitTargetBuffer != null) {
            nalUnitTargetBuffer.reset();
        }
        this.totalBytesWritten = 0L;
        this.pesTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }
}
