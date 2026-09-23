package com.google.android.exoplayer2.extractor.flv;

/* loaded from: classes.dex */
public final class FlvExtractor implements com.google.android.exoplayer2.extractor.Extractor {
    public static final com.google.android.exoplayer2.extractor.ExtractorsFactory FACTORY = new com.google.android.exoplayer2.extractor.ExtractorsFactory() { // from class: e.c.a.a.i2.g.a
        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public final com.google.android.exoplayer2.extractor.Extractor[] createExtractors() {
            return com.google.android.exoplayer2.extractor.flv.FlvExtractor.a();
        }

        @Override // com.google.android.exoplayer2.extractor.ExtractorsFactory
        public /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] createExtractors(android.net.Uri uri, java.util.Map<java.lang.String, java.util.List<java.lang.String>> map) {
            return createExtractors();
        }
    };
    public static final int FLV_HEADER_SIZE = 9;
    public static final int FLV_TAG = 4607062;
    public static final int FLV_TAG_HEADER_SIZE = 11;
    public static final int STATE_READING_FLV_HEADER = 1;
    public static final int STATE_READING_TAG_DATA = 4;
    public static final int STATE_READING_TAG_HEADER = 3;
    public static final int STATE_SKIPPING_TO_TAG_HEADER = 2;
    public static final int TAG_TYPE_AUDIO = 8;
    public static final int TAG_TYPE_SCRIPT_DATA = 18;
    public static final int TAG_TYPE_VIDEO = 9;
    public com.google.android.exoplayer2.extractor.flv.AudioTagPayloadReader audioReader;
    public int bytesToNextTagHeader;
    public com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput;
    public long mediaTagTimestampOffsetUs;
    public boolean outputFirstSample;
    public boolean outputSeekMap;
    public int tagDataSize;
    public long tagTimestampUs;
    public int tagType;
    public com.google.android.exoplayer2.extractor.flv.VideoTagPayloadReader videoReader;
    public final com.google.android.exoplayer2.util.ParsableByteArray scratch = new com.google.android.exoplayer2.util.ParsableByteArray(4);
    public final com.google.android.exoplayer2.util.ParsableByteArray headerBuffer = new com.google.android.exoplayer2.util.ParsableByteArray(9);
    public final com.google.android.exoplayer2.util.ParsableByteArray tagHeaderBuffer = new com.google.android.exoplayer2.util.ParsableByteArray(11);
    public final com.google.android.exoplayer2.util.ParsableByteArray tagData = new com.google.android.exoplayer2.util.ParsableByteArray();
    public final com.google.android.exoplayer2.extractor.flv.ScriptTagPayloadReader metadataReader = new com.google.android.exoplayer2.extractor.flv.ScriptTagPayloadReader();
    public int state = 1;

    public static /* synthetic */ com.google.android.exoplayer2.extractor.Extractor[] a() {
        return new com.google.android.exoplayer2.extractor.Extractor[]{new com.google.android.exoplayer2.extractor.flv.FlvExtractor()};
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput"})
    private void ensureReadyForMediaOutput() {
        if (this.outputSeekMap) {
            return;
        }
        this.extractorOutput.seekMap(new com.google.android.exoplayer2.extractor.SeekMap.Unseekable(com.google.android.exoplayer2.C.TIME_UNSET));
        this.outputSeekMap = true;
    }

    private long getCurrentTimestampUs() {
        if (this.outputFirstSample) {
            return this.mediaTagTimestampOffsetUs + this.tagTimestampUs;
        }
        if (this.metadataReader.getDurationUs() == com.google.android.exoplayer2.C.TIME_UNSET) {
            return 0L;
        }
        return this.tagTimestampUs;
    }

    private com.google.android.exoplayer2.util.ParsableByteArray prepareTagData(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        if (this.tagDataSize > this.tagData.capacity()) {
            com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = this.tagData;
            parsableByteArray.reset(new byte[java.lang.Math.max(parsableByteArray.capacity() * 2, this.tagDataSize)], 0);
        } else {
            this.tagData.setPosition(0);
        }
        this.tagData.setLimit(this.tagDataSize);
        extractorInput.readFully(this.tagData.getData(), 0, this.tagDataSize);
        return this.tagData;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput"})
    private boolean readFlvHeader(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        if (!extractorInput.readFully(this.headerBuffer.getData(), 0, 9, true)) {
            return false;
        }
        this.headerBuffer.setPosition(0);
        this.headerBuffer.skipBytes(4);
        int unsignedByte = this.headerBuffer.readUnsignedByte();
        boolean z = (unsignedByte & 4) != 0;
        boolean z2 = (unsignedByte & 1) != 0;
        if (z && this.audioReader == null) {
            this.audioReader = new com.google.android.exoplayer2.extractor.flv.AudioTagPayloadReader(this.extractorOutput.track(8, 1));
        }
        if (z2 && this.videoReader == null) {
            this.videoReader = new com.google.android.exoplayer2.extractor.flv.VideoTagPayloadReader(this.extractorOutput.track(9, 2));
        }
        this.extractorOutput.endTracks();
        this.bytesToNextTagHeader = (this.headerBuffer.readInt() - 9) + 4;
        this.state = 2;
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0075 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0087  */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"extractorOutput"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean readTagData(com.google.android.exoplayer2.extractor.ExtractorInput r10) {
        /*
            r9 = this;
            long r0 = r9.getCurrentTimestampUs()
            int r2 = r9.tagType
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r5 = 0
            r6 = 1
            r7 = 8
            if (r2 != r7) goto L24
            com.google.android.exoplayer2.extractor.flv.AudioTagPayloadReader r2 = r9.audioReader
            if (r2 == 0) goto L24
            r9.ensureReadyForMediaOutput()
            com.google.android.exoplayer2.extractor.flv.AudioTagPayloadReader r2 = r9.audioReader
        L1a:
            com.google.android.exoplayer2.util.ParsableByteArray r10 = r9.prepareTagData(r10)
            boolean r5 = r2.consume(r10, r0)
        L22:
            r10 = 1
            goto L71
        L24:
            int r2 = r9.tagType
            r7 = 9
            if (r2 != r7) goto L34
            com.google.android.exoplayer2.extractor.flv.VideoTagPayloadReader r2 = r9.videoReader
            if (r2 == 0) goto L34
            r9.ensureReadyForMediaOutput()
            com.google.android.exoplayer2.extractor.flv.VideoTagPayloadReader r2 = r9.videoReader
            goto L1a
        L34:
            int r2 = r9.tagType
            r7 = 18
            if (r2 != r7) goto L6b
            boolean r2 = r9.outputSeekMap
            if (r2 != 0) goto L6b
            com.google.android.exoplayer2.extractor.flv.ScriptTagPayloadReader r2 = r9.metadataReader
            com.google.android.exoplayer2.util.ParsableByteArray r10 = r9.prepareTagData(r10)
            boolean r5 = r2.consume(r10, r0)
            com.google.android.exoplayer2.extractor.flv.ScriptTagPayloadReader r10 = r9.metadataReader
            long r0 = r10.getDurationUs()
            int r10 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r10 == 0) goto L22
            com.google.android.exoplayer2.extractor.ExtractorOutput r10 = r9.extractorOutput
            com.google.android.exoplayer2.extractor.IndexSeekMap r2 = new com.google.android.exoplayer2.extractor.IndexSeekMap
            com.google.android.exoplayer2.extractor.flv.ScriptTagPayloadReader r7 = r9.metadataReader
            long[] r7 = r7.getKeyFrameTagPositions()
            com.google.android.exoplayer2.extractor.flv.ScriptTagPayloadReader r8 = r9.metadataReader
            long[] r8 = r8.getKeyFrameTimesUs()
            r2.<init>(r7, r8, r0)
            r10.seekMap(r2)
            r9.outputSeekMap = r6
            goto L22
        L6b:
            int r0 = r9.tagDataSize
            r10.skipFully(r0)
            r10 = 0
        L71:
            boolean r0 = r9.outputFirstSample
            if (r0 != 0) goto L8b
            if (r5 == 0) goto L8b
            r9.outputFirstSample = r6
            com.google.android.exoplayer2.extractor.flv.ScriptTagPayloadReader r0 = r9.metadataReader
            long r0 = r0.getDurationUs()
            int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r2 != 0) goto L87
            long r0 = r9.tagTimestampUs
            long r0 = -r0
            goto L89
        L87:
            r0 = 0
        L89:
            r9.mediaTagTimestampOffsetUs = r0
        L8b:
            r0 = 4
            r9.bytesToNextTagHeader = r0
            r0 = 2
            r9.state = r0
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.flv.FlvExtractor.readTagData(com.google.android.exoplayer2.extractor.ExtractorInput):boolean");
    }

    private boolean readTagHeader(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        if (!extractorInput.readFully(this.tagHeaderBuffer.getData(), 0, 11, true)) {
            return false;
        }
        this.tagHeaderBuffer.setPosition(0);
        this.tagType = this.tagHeaderBuffer.readUnsignedByte();
        this.tagDataSize = this.tagHeaderBuffer.readUnsignedInt24();
        this.tagTimestampUs = this.tagHeaderBuffer.readUnsignedInt24();
        this.tagTimestampUs = ((this.tagHeaderBuffer.readUnsignedByte() << 24) | this.tagTimestampUs) * 1000;
        this.tagHeaderBuffer.skipBytes(3);
        this.state = 4;
        return true;
    }

    private void skipToTagHeader(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        extractorInput.skipFully(this.bytesToNextTagHeader);
        this.bytesToNextTagHeader = 0;
        this.state = 3;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void init(com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput) {
        this.extractorOutput = extractorOutput;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.extractorOutput);
        while (true) {
            int i = this.state;
            if (i != 1) {
                if (i == 2) {
                    skipToTagHeader(extractorInput);
                } else if (i != 3) {
                    if (i != 4) {
                        throw new java.lang.IllegalStateException();
                    }
                    if (readTagData(extractorInput)) {
                        return 0;
                    }
                } else if (!readTagHeader(extractorInput)) {
                    return -1;
                }
            } else if (!readFlvHeader(extractorInput)) {
                return -1;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void release() {
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public void seek(long j, long j2) {
        if (j == 0) {
            this.state = 1;
            this.outputFirstSample = false;
        } else {
            this.state = 3;
        }
        this.bytesToNextTagHeader = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.Extractor
    public boolean sniff(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        extractorInput.peekFully(this.scratch.getData(), 0, 3);
        this.scratch.setPosition(0);
        if (this.scratch.readUnsignedInt24() != 4607062) {
            return false;
        }
        extractorInput.peekFully(this.scratch.getData(), 0, 2);
        this.scratch.setPosition(0);
        if ((this.scratch.readUnsignedShort() & 250) != 0) {
            return false;
        }
        extractorInput.peekFully(this.scratch.getData(), 0, 4);
        this.scratch.setPosition(0);
        int i = this.scratch.readInt();
        extractorInput.resetPeekPosition();
        extractorInput.advancePeekPosition(i);
        extractorInput.peekFully(this.scratch.getData(), 0, 4);
        this.scratch.setPosition(0);
        return this.scratch.readInt() == 0;
    }
}
