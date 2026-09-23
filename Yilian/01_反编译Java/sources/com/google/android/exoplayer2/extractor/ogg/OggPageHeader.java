package com.google.android.exoplayer2.extractor.ogg;

/* loaded from: classes.dex */
public final class OggPageHeader {
    public static final int CAPTURE_PATTERN = 1332176723;
    public static final int CAPTURE_PATTERN_SIZE = 4;
    public static final int EMPTY_PAGE_HEADER_SIZE = 27;
    public static final int MAX_PAGE_PAYLOAD = 65025;
    public static final int MAX_PAGE_SIZE = 65307;
    public static final int MAX_SEGMENT_COUNT = 255;
    public int bodySize;
    public long granulePosition;
    public int headerSize;
    public long pageChecksum;
    public int pageSegmentCount;
    public long pageSequenceNumber;
    public int revision;
    public long streamSerialNumber;
    public int type;
    public final int[] laces = new int[255];
    public final com.google.android.exoplayer2.util.ParsableByteArray scratch = new com.google.android.exoplayer2.util.ParsableByteArray(255);

    public boolean populate(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, boolean z) throws com.google.android.exoplayer2.ParserException {
        reset();
        this.scratch.reset(27);
        if (!com.google.android.exoplayer2.extractor.ExtractorUtil.peekFullyQuietly(extractorInput, this.scratch.getData(), 0, 27, z) || this.scratch.readUnsignedInt() != 1332176723) {
            return false;
        }
        int unsignedByte = this.scratch.readUnsignedByte();
        this.revision = unsignedByte;
        if (unsignedByte != 0) {
            if (z) {
                return false;
            }
            throw com.google.android.exoplayer2.ParserException.createForUnsupportedContainerFeature("unsupported bit stream revision");
        }
        this.type = this.scratch.readUnsignedByte();
        this.granulePosition = this.scratch.readLittleEndianLong();
        this.streamSerialNumber = this.scratch.readLittleEndianUnsignedInt();
        this.pageSequenceNumber = this.scratch.readLittleEndianUnsignedInt();
        this.pageChecksum = this.scratch.readLittleEndianUnsignedInt();
        int unsignedByte2 = this.scratch.readUnsignedByte();
        this.pageSegmentCount = unsignedByte2;
        this.headerSize = unsignedByte2 + 27;
        this.scratch.reset(unsignedByte2);
        if (!com.google.android.exoplayer2.extractor.ExtractorUtil.peekFullyQuietly(extractorInput, this.scratch.getData(), 0, this.pageSegmentCount, z)) {
            return false;
        }
        for (int i = 0; i < this.pageSegmentCount; i++) {
            this.laces[i] = this.scratch.readUnsignedByte();
            this.bodySize += this.laces[i];
        }
        return true;
    }

    public void reset() {
        this.revision = 0;
        this.type = 0;
        this.granulePosition = 0L;
        this.streamSerialNumber = 0L;
        this.pageSequenceNumber = 0L;
        this.pageChecksum = 0L;
        this.pageSegmentCount = 0;
        this.headerSize = 0;
        this.bodySize = 0;
    }

    public boolean skipToNextPage(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        return skipToNextPage(extractorInput, -1L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0053, code lost:
    
        if (r12 == (-1)) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
    
        if (r11.getPosition() >= r12) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0062, code lost:
    
        if (r11.skip(1) == (-1)) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0065, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean skipToNextPage(com.google.android.exoplayer2.extractor.ExtractorInput r11, long r12) {
        /*
            r10 = this;
            long r0 = r11.getPosition()
            long r2 = r11.getPeekPosition()
            r4 = 0
            r5 = 1
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 != 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            com.google.android.exoplayer2.util.Assertions.checkArgument(r0)
            com.google.android.exoplayer2.util.ParsableByteArray r0 = r10.scratch
            r1 = 4
            r0.reset(r1)
        L1a:
            r2 = -1
            int r0 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r0 == 0) goto L2b
            long r6 = r11.getPosition()
            r8 = 4
            long r6 = r6 + r8
            int r0 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1))
            if (r0 >= 0) goto L51
        L2b:
            com.google.android.exoplayer2.util.ParsableByteArray r0 = r10.scratch
            byte[] r0 = r0.getData()
            boolean r0 = com.google.android.exoplayer2.extractor.ExtractorUtil.peekFullyQuietly(r11, r0, r4, r1, r5)
            if (r0 == 0) goto L51
            com.google.android.exoplayer2.util.ParsableByteArray r0 = r10.scratch
            r0.setPosition(r4)
            com.google.android.exoplayer2.util.ParsableByteArray r0 = r10.scratch
            long r2 = r0.readUnsignedInt()
            r6 = 1332176723(0x4f676753, double:6.58182753E-315)
            int r0 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r0 != 0) goto L4d
            r11.resetPeekPosition()
            return r5
        L4d:
            r11.skipFully(r5)
            goto L1a
        L51:
            int r0 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r0 == 0) goto L5d
            long r0 = r11.getPosition()
            int r6 = (r0 > r12 ? 1 : (r0 == r12 ? 0 : -1))
            if (r6 >= 0) goto L65
        L5d:
            int r0 = r11.skip(r5)
            r1 = -1
            if (r0 == r1) goto L65
            goto L51
        L65:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ogg.OggPageHeader.skipToNextPage(com.google.android.exoplayer2.extractor.ExtractorInput, long):boolean");
    }
}
