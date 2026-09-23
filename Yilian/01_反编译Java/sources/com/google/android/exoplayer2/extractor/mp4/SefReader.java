package com.google.android.exoplayer2.extractor.mp4;

/* loaded from: classes.dex */
public final class SefReader {
    public static final int LENGTH_OF_ONE_SDR = 12;
    public static final int SAMSUNG_TAIL_SIGNATURE = 1397048916;
    public static final int STATE_CHECKING_FOR_SEF = 1;
    public static final int STATE_READING_SDRS = 2;
    public static final int STATE_READING_SEF_DATA = 3;
    public static final int STATE_SHOULD_CHECK_FOR_SEF = 0;
    public static final java.lang.String TAG = "SefReader";
    public static final int TAIL_FOOTER_LENGTH = 8;
    public static final int TAIL_HEADER_LENGTH = 12;
    public static final int TYPE_SLOW_MOTION_DATA = 2192;
    public static final int TYPE_SUPER_SLOW_DEFLICKERING_ON = 2820;
    public static final int TYPE_SUPER_SLOW_MOTION_BGM = 2817;
    public static final int TYPE_SUPER_SLOW_MOTION_DATA = 2816;
    public static final int TYPE_SUPER_SLOW_MOTION_EDIT_DATA = 2819;
    public final java.util.List<com.google.android.exoplayer2.extractor.mp4.SefReader.DataReference> dataReferences = new java.util.ArrayList();
    public int readerState = 0;
    public int tailLength;
    public static final e.c.b.a.j COLON_SPLITTER = new e.c.b.a.j(new e.c.b.a.i(new e.c.b.a.b.C0069b(':')));
    public static final e.c.b.a.j ASTERISK_SPLITTER = new e.c.b.a.j(new e.c.b.a.i(new e.c.b.a.b.C0069b(com.huawei.hms.ml.common.utils.SmartLog.STAR)));

    public static final class DataReference {
        public final int dataType;
        public final int size;
        public final long startOffset;

        public DataReference(int i, long j, int i2) {
            this.dataType = i;
            this.startOffset = j;
            this.size = i2;
        }
    }

    private void checkForSefData(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(8);
        extractorInput.readFully(parsableByteArray.getData(), 0, 8);
        this.tailLength = parsableByteArray.readLittleEndianInt() + 8;
        if (parsableByteArray.readInt() != 1397048916) {
            positionHolder.position = 0L;
        } else {
            positionHolder.position = extractorInput.getPosition() - (this.tailLength - 12);
            this.readerState = 2;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:20:0x003e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int nameToDataType(java.lang.String r5) throws com.google.android.exoplayer2.ParserException {
        /*
            int r0 = r5.hashCode()
            r1 = 4
            r2 = 3
            r3 = 2
            r4 = 1
            switch(r0) {
                case -1711564334: goto L34;
                case -1332107749: goto L2a;
                case -1251387154: goto L20;
                case -830665521: goto L16;
                case 1760745220: goto Lc;
                default: goto Lb;
            }
        Lb:
            goto L3e
        Lc:
            java.lang.String r0 = "Super_SlowMotion_BGM"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L3e
            r5 = 2
            goto L3f
        L16:
            java.lang.String r0 = "Super_SlowMotion_Deflickering_On"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L3e
            r5 = 4
            goto L3f
        L20:
            java.lang.String r0 = "Super_SlowMotion_Data"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L3e
            r5 = 1
            goto L3f
        L2a:
            java.lang.String r0 = "Super_SlowMotion_Edit_Data"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L3e
            r5 = 3
            goto L3f
        L34:
            java.lang.String r0 = "SlowMotion_Data"
            boolean r5 = r5.equals(r0)
            if (r5 == 0) goto L3e
            r5 = 0
            goto L3f
        L3e:
            r5 = -1
        L3f:
            if (r5 == 0) goto L5d
            if (r5 == r4) goto L5a
            if (r5 == r3) goto L57
            if (r5 == r2) goto L54
            if (r5 != r1) goto L4c
            r5 = 2820(0xb04, float:3.952E-42)
            return r5
        L4c:
            r5 = 0
            java.lang.String r0 = "Invalid SEF name"
            com.google.android.exoplayer2.ParserException r5 = com.google.android.exoplayer2.ParserException.createForMalformedContainer(r0, r5)
            throw r5
        L54:
            r5 = 2819(0xb03, float:3.95E-42)
            return r5
        L57:
            r5 = 2817(0xb01, float:3.947E-42)
            return r5
        L5a:
            r5 = 2816(0xb00, float:3.946E-42)
            return r5
        L5d:
            r5 = 2192(0x890, float:3.072E-42)
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.extractor.mp4.SefReader.nameToDataType(java.lang.String):int");
    }

    private void readSdrs(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder) {
        long j;
        long length = extractorInput.getLength();
        int i = (this.tailLength - 12) - 8;
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(i);
        extractorInput.readFully(parsableByteArray.getData(), 0, i);
        for (int i2 = 0; i2 < i / 12; i2++) {
            parsableByteArray.skipBytes(2);
            short littleEndianShort = parsableByteArray.readLittleEndianShort();
            if (littleEndianShort == 2192 || littleEndianShort == 2816 || littleEndianShort == 2817 || littleEndianShort == 2819 || littleEndianShort == 2820) {
                this.dataReferences.add(new com.google.android.exoplayer2.extractor.mp4.SefReader.DataReference(littleEndianShort, (length - this.tailLength) - parsableByteArray.readLittleEndianInt(), parsableByteArray.readLittleEndianInt()));
            } else {
                parsableByteArray.skipBytes(8);
            }
        }
        if (this.dataReferences.isEmpty()) {
            j = 0;
        } else {
            this.readerState = 3;
            j = this.dataReferences.get(0).startOffset;
        }
        positionHolder.position = j;
    }

    private void readSefData(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, java.util.List<com.google.android.exoplayer2.metadata.Metadata.Entry> list) throws com.google.android.exoplayer2.ParserException {
        long position = extractorInput.getPosition();
        int length = (int) ((extractorInput.getLength() - extractorInput.getPosition()) - this.tailLength);
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(length);
        extractorInput.readFully(parsableByteArray.getData(), 0, length);
        for (int i = 0; i < this.dataReferences.size(); i++) {
            com.google.android.exoplayer2.extractor.mp4.SefReader.DataReference dataReference = this.dataReferences.get(i);
            parsableByteArray.setPosition((int) (dataReference.startOffset - position));
            parsableByteArray.skipBytes(4);
            int littleEndianInt = parsableByteArray.readLittleEndianInt();
            int iNameToDataType = nameToDataType(parsableByteArray.readString(littleEndianInt));
            int i2 = dataReference.size - (littleEndianInt + 8);
            if (iNameToDataType == 2192) {
                list.add(readSlowMotionData(parsableByteArray, i2));
            } else if (iNameToDataType != 2816 && iNameToDataType != 2817 && iNameToDataType != 2819 && iNameToDataType != 2820) {
                throw new java.lang.IllegalStateException();
            }
        }
    }

    public static com.google.android.exoplayer2.metadata.mp4.SlowMotionData readSlowMotionData(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray, int i) throws com.google.android.exoplayer2.ParserException {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        java.util.List<java.lang.String> listA = ASTERISK_SPLITTER.a(parsableByteArray.readString(i));
        for (int i2 = 0; i2 < listA.size(); i2++) {
            java.util.List<java.lang.String> listA2 = COLON_SPLITTER.a(listA.get(i2));
            if (listA2.size() != 3) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(null, null);
            }
            try {
                arrayList.add(new com.google.android.exoplayer2.metadata.mp4.SlowMotionData.Segment(java.lang.Long.parseLong(listA2.get(0)), java.lang.Long.parseLong(listA2.get(1)), 1 << (java.lang.Integer.parseInt(listA2.get(2)) - 1)));
            } catch (java.lang.NumberFormatException e2) {
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(null, e2);
            }
        }
        return new com.google.android.exoplayer2.metadata.mp4.SlowMotionData(arrayList);
    }

    public int read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, com.google.android.exoplayer2.extractor.PositionHolder positionHolder, java.util.List<com.google.android.exoplayer2.metadata.Metadata.Entry> list) throws com.google.android.exoplayer2.ParserException {
        int i = this.readerState;
        long j = 0;
        if (i == 0) {
            long length = extractorInput.getLength();
            if (length != -1 && length >= 8) {
                j = length - 8;
            }
            positionHolder.position = j;
            this.readerState = 1;
        } else if (i == 1) {
            checkForSefData(extractorInput, positionHolder);
        } else if (i == 2) {
            readSdrs(extractorInput, positionHolder);
        } else {
            if (i != 3) {
                throw new java.lang.IllegalStateException();
            }
            readSefData(extractorInput, list);
            positionHolder.position = 0L;
        }
        return 1;
    }

    public void reset() {
        this.dataReferences.clear();
        this.readerState = 0;
    }
}
