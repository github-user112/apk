package com.google.android.exoplayer2.extractor.ts;

/* loaded from: classes.dex */
public final class PesReader implements com.google.android.exoplayer2.extractor.ts.TsPayloadReader {
    public static final int HEADER_SIZE = 9;
    public static final int MAX_HEADER_EXTENSION_SIZE = 10;
    public static final int PES_SCRATCH_SIZE = 10;
    public static final int STATE_FINDING_HEADER = 0;
    public static final int STATE_READING_BODY = 3;
    public static final int STATE_READING_HEADER = 1;
    public static final int STATE_READING_HEADER_EXTENSION = 2;
    public static final java.lang.String TAG = "PesReader";
    public int bytesRead;
    public boolean dataAlignmentIndicator;
    public boolean dtsFlag;
    public int extendedHeaderLength;
    public int payloadSize;
    public boolean ptsFlag;
    public final com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader reader;
    public boolean seenFirstDts;
    public long timeUs;
    public com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster;
    public final com.google.android.exoplayer2.util.ParsableBitArray pesScratch = new com.google.android.exoplayer2.util.ParsableBitArray(new byte[10]);
    public int state = 0;

    public PesReader(com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader elementaryStreamReader) {
        this.reader = elementaryStreamReader;
    }

    private boolean continueRead(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, byte[] bArr, int i) {
        int iMin = java.lang.Math.min(parsableByteArray.bytesLeft(), i - this.bytesRead);
        if (iMin <= 0) {
            return true;
        }
        if (bArr == null) {
            parsableByteArray.skipBytes(iMin);
        } else {
            parsableByteArray.readBytes(bArr, this.bytesRead, iMin);
        }
        int i2 = this.bytesRead + iMin;
        this.bytesRead = i2;
        return i2 == i;
    }

    private boolean parseHeader() {
        this.pesScratch.setPosition(0);
        int bits = this.pesScratch.readBits(24);
        if (bits != 1) {
            e.a.c.a.a.t(41, "Unexpected start code prefix: ", bits, TAG);
            this.payloadSize = -1;
            return false;
        }
        this.pesScratch.skipBits(8);
        int bits2 = this.pesScratch.readBits(16);
        this.pesScratch.skipBits(5);
        this.dataAlignmentIndicator = this.pesScratch.readBit();
        this.pesScratch.skipBits(2);
        this.ptsFlag = this.pesScratch.readBit();
        this.dtsFlag = this.pesScratch.readBit();
        this.pesScratch.skipBits(6);
        int bits3 = this.pesScratch.readBits(8);
        this.extendedHeaderLength = bits3;
        if (bits2 == 0) {
            this.payloadSize = -1;
        } else {
            int i = ((bits2 + 6) - 9) - bits3;
            this.payloadSize = i;
            if (i < 0) {
                e.a.c.a.a.t(47, "Found negative packet payload size: ", i, TAG);
                this.payloadSize = -1;
            }
        }
        return true;
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"timestampAdjuster"})
    private void parseHeaderExtension() {
        this.pesScratch.setPosition(0);
        this.timeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        if (this.ptsFlag) {
            this.pesScratch.skipBits(4);
            this.pesScratch.skipBits(1);
            this.pesScratch.skipBits(1);
            long bits = (this.pesScratch.readBits(3) << 30) | (this.pesScratch.readBits(15) << 15) | this.pesScratch.readBits(15);
            this.pesScratch.skipBits(1);
            if (!this.seenFirstDts && this.dtsFlag) {
                this.pesScratch.skipBits(4);
                this.pesScratch.skipBits(1);
                this.pesScratch.skipBits(1);
                this.pesScratch.skipBits(1);
                this.timestampAdjuster.adjustTsTimestamp((this.pesScratch.readBits(3) << 30) | (this.pesScratch.readBits(15) << 15) | this.pesScratch.readBits(15));
                this.seenFirstDts = true;
            }
            this.timeUs = this.timestampAdjuster.adjustTsTimestamp(bits);
        }
    }

    private void setState(int i) {
        this.state = i;
        this.bytesRead = 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x004d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x007a -> B:35:0x007c). Please report as a decompilation issue!!! */
    @Override // com.google.android.exoplayer2.extractor.ts.TsPayloadReader
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void consume(com.google.android.exoplayer2.util.ParsableByteArray r9, int r10) {
        /*
            r8 = this;
            com.google.android.exoplayer2.util.TimestampAdjuster r0 = r8.timestampAdjuster
            com.google.android.exoplayer2.util.Assertions.checkStateNotNull(r0)
            r0 = r10 & 1
            r1 = -1
            r2 = 3
            r3 = 2
            r4 = 1
            if (r0 == 0) goto L47
            int r0 = r8.state
            if (r0 == 0) goto L44
            if (r0 == r4) goto L44
            java.lang.String r5 = "PesReader"
            if (r0 == r3) goto L3f
            if (r0 != r2) goto L39
            int r0 = r8.payloadSize
            if (r0 == r1) goto L7c
            r6 = 59
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>(r6)
            java.lang.String r6 = "Unexpected start indicator: expected "
            r7.append(r6)
            r7.append(r0)
            java.lang.String r0 = " more bytes"
            r7.append(r0)
            java.lang.String r0 = r7.toString()
            com.google.android.exoplayer2.util.Log.w(r5, r0)
            goto L7c
        L39:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            r9.<init>()
            throw r9
        L3f:
            java.lang.String r0 = "Unexpected start indicator reading extended header"
            com.google.android.exoplayer2.util.Log.w(r5, r0)
        L44:
            r8.setState(r4)
        L47:
            int r0 = r9.bytesLeft()
            if (r0 <= 0) goto Ld8
            int r0 = r8.state
            if (r0 == 0) goto Lcf
            r5 = 0
            if (r0 == r4) goto Lb7
            if (r0 == r3) goto L88
            if (r0 != r2) goto L82
            int r0 = r9.bytesLeft()
            int r6 = r8.payloadSize
            if (r6 != r1) goto L61
            goto L63
        L61:
            int r5 = r0 - r6
        L63:
            if (r5 <= 0) goto L6e
            int r0 = r0 - r5
            int r5 = r9.getPosition()
            int r5 = r5 + r0
            r9.setLimit(r5)
        L6e:
            com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader r5 = r8.reader
            r5.consume(r9)
            int r5 = r8.payloadSize
            if (r5 == r1) goto L47
            int r5 = r5 - r0
            r8.payloadSize = r5
            if (r5 != 0) goto L47
        L7c:
            com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader r0 = r8.reader
            r0.packetFinished()
            goto L44
        L82:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            r9.<init>()
            throw r9
        L88:
            r0 = 10
            int r6 = r8.extendedHeaderLength
            int r0 = java.lang.Math.min(r0, r6)
            com.google.android.exoplayer2.util.ParsableBitArray r6 = r8.pesScratch
            byte[] r6 = r6.data
            boolean r0 = r8.continueRead(r9, r6, r0)
            if (r0 == 0) goto L47
            r0 = 0
            int r6 = r8.extendedHeaderLength
            boolean r0 = r8.continueRead(r9, r0, r6)
            if (r0 == 0) goto L47
            r8.parseHeaderExtension()
            boolean r0 = r8.dataAlignmentIndicator
            if (r0 == 0) goto Lab
            r5 = 4
        Lab:
            r10 = r10 | r5
            com.google.android.exoplayer2.extractor.ts.ElementaryStreamReader r0 = r8.reader
            long r5 = r8.timeUs
            r0.packetStarted(r5, r10)
            r8.setState(r2)
            goto L47
        Lb7:
            com.google.android.exoplayer2.util.ParsableBitArray r0 = r8.pesScratch
            byte[] r0 = r0.data
            r6 = 9
            boolean r0 = r8.continueRead(r9, r0, r6)
            if (r0 == 0) goto L47
            boolean r0 = r8.parseHeader()
            if (r0 == 0) goto Lca
            r5 = 2
        Lca:
            r8.setState(r5)
            goto L47
        Lcf:
            int r0 = r9.bytesLeft()
            r9.skipBytes(r0)
            goto L47
        Ld8:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.ts.PesReader.consume(com.google.android.exoplayer2.util.ParsableByteArray, int):void");
    }

    @Override // com.google.android.exoplayer2.extractor.ts.TsPayloadReader
    public void init(com.google.android.exoplayer2.util.TimestampAdjuster timestampAdjuster, com.google.android.exoplayer2.extractor.ExtractorOutput extractorOutput, com.google.android.exoplayer2.extractor.ts.TsPayloadReader.TrackIdGenerator trackIdGenerator) {
        this.timestampAdjuster = timestampAdjuster;
        this.reader.createTracks(extractorOutput, trackIdGenerator);
    }

    @Override // com.google.android.exoplayer2.extractor.ts.TsPayloadReader
    public final void seek() {
        this.state = 0;
        this.bytesRead = 0;
        this.seenFirstDts = false;
        this.reader.seek();
    }
}
