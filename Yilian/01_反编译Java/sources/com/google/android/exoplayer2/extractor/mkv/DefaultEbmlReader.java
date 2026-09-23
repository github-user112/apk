package com.google.android.exoplayer2.extractor.mkv;

/* loaded from: classes.dex */
public final class DefaultEbmlReader implements com.google.android.exoplayer2.extractor.mkv.EbmlReader {
    public static final int ELEMENT_STATE_READ_CONTENT = 2;
    public static final int ELEMENT_STATE_READ_CONTENT_SIZE = 1;
    public static final int ELEMENT_STATE_READ_ID = 0;
    public static final int MAX_ID_BYTES = 4;
    public static final int MAX_INTEGER_ELEMENT_SIZE_BYTES = 8;
    public static final int MAX_LENGTH_BYTES = 8;
    public static final int VALID_FLOAT32_ELEMENT_SIZE_BYTES = 4;
    public static final int VALID_FLOAT64_ELEMENT_SIZE_BYTES = 8;
    public long elementContentSize;
    public int elementId;
    public int elementState;
    public com.google.android.exoplayer2.extractor.mkv.EbmlProcessor processor;
    public final byte[] scratch = new byte[8];
    public final java.util.ArrayDeque<com.google.android.exoplayer2.extractor.mkv.DefaultEbmlReader.MasterElement> masterElementsStack = new java.util.ArrayDeque<>();
    public final com.google.android.exoplayer2.extractor.mkv.VarintReader varintReader = new com.google.android.exoplayer2.extractor.mkv.VarintReader();

    public static final class MasterElement {
        public final long elementEndPosition;
        public final int elementId;

        public MasterElement(int i, long j) {
            this.elementId = i;
            this.elementEndPosition = j;
        }
    }

    @org.checkerframework.checker.nullness.qual.RequiresNonNull({"processor"})
    private long maybeResyncToNextLevel1Element(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        extractorInput.resetPeekPosition();
        while (true) {
            extractorInput.peekFully(this.scratch, 0, 4);
            int unsignedVarintLength = com.google.android.exoplayer2.extractor.mkv.VarintReader.parseUnsignedVarintLength(this.scratch[0]);
            if (unsignedVarintLength != -1 && unsignedVarintLength <= 4) {
                int iAssembleVarint = (int) com.google.android.exoplayer2.extractor.mkv.VarintReader.assembleVarint(this.scratch, unsignedVarintLength, false);
                if (this.processor.isLevel1Element(iAssembleVarint)) {
                    extractorInput.skipFully(unsignedVarintLength);
                    return iAssembleVarint;
                }
            }
            extractorInput.skipFully(1);
        }
    }

    private double readFloat(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, int i) {
        return i == 4 ? java.lang.Float.intBitsToFloat((int) r0) : java.lang.Double.longBitsToDouble(readInteger(extractorInput, i));
    }

    private long readInteger(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, int i) {
        extractorInput.readFully(this.scratch, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (this.scratch[i2] & 255);
        }
        return j;
    }

    public static java.lang.String readString(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput, int i) {
        if (i == 0) {
            return "";
        }
        byte[] bArr = new byte[i];
        extractorInput.readFully(bArr, 0, i);
        while (i > 0 && bArr[i - 1] == 0) {
            i--;
        }
        return new java.lang.String(bArr, 0, i);
    }

    @Override // com.google.android.exoplayer2.extractor.mkv.EbmlReader
    public void init(com.google.android.exoplayer2.extractor.mkv.EbmlProcessor ebmlProcessor) {
        this.processor = ebmlProcessor;
    }

    @Override // com.google.android.exoplayer2.extractor.mkv.EbmlReader
    public boolean read(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) throws com.google.android.exoplayer2.ParserException {
        com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.processor);
        while (true) {
            com.google.android.exoplayer2.extractor.mkv.DefaultEbmlReader.MasterElement masterElementPeek = this.masterElementsStack.peek();
            if (masterElementPeek != null && extractorInput.getPosition() >= masterElementPeek.elementEndPosition) {
                this.processor.endMasterElement(this.masterElementsStack.pop().elementId);
                return true;
            }
            if (this.elementState == 0) {
                long unsignedVarint = this.varintReader.readUnsignedVarint(extractorInput, true, false, 4);
                if (unsignedVarint == -2) {
                    unsignedVarint = maybeResyncToNextLevel1Element(extractorInput);
                }
                if (unsignedVarint == -1) {
                    return false;
                }
                this.elementId = (int) unsignedVarint;
                this.elementState = 1;
            }
            if (this.elementState == 1) {
                this.elementContentSize = this.varintReader.readUnsignedVarint(extractorInput, false, true, 8);
                this.elementState = 2;
            }
            int elementType = this.processor.getElementType(this.elementId);
            if (elementType != 0) {
                if (elementType == 1) {
                    long position = extractorInput.getPosition();
                    this.masterElementsStack.push(new com.google.android.exoplayer2.extractor.mkv.DefaultEbmlReader.MasterElement(this.elementId, this.elementContentSize + position));
                    this.processor.startMasterElement(this.elementId, position, this.elementContentSize);
                    this.elementState = 0;
                    return true;
                }
                if (elementType == 2) {
                    long j = this.elementContentSize;
                    if (j <= 8) {
                        this.processor.integerElement(this.elementId, readInteger(extractorInput, (int) j));
                        this.elementState = 0;
                        return true;
                    }
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(42);
                    sb.append("Invalid integer size: ");
                    sb.append(j);
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb.toString(), null);
                }
                if (elementType == 3) {
                    long j2 = this.elementContentSize;
                    if (j2 <= 2147483647L) {
                        this.processor.stringElement(this.elementId, readString(extractorInput, (int) j2));
                        this.elementState = 0;
                        return true;
                    }
                    java.lang.StringBuilder sb2 = new java.lang.StringBuilder(41);
                    sb2.append("String element size: ");
                    sb2.append(j2);
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb2.toString(), null);
                }
                if (elementType == 4) {
                    this.processor.binaryElement(this.elementId, (int) this.elementContentSize, extractorInput);
                    this.elementState = 0;
                    return true;
                }
                if (elementType != 5) {
                    java.lang.StringBuilder sb3 = new java.lang.StringBuilder(32);
                    sb3.append("Invalid element type ");
                    sb3.append(elementType);
                    throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb3.toString(), null);
                }
                long j3 = this.elementContentSize;
                if (j3 == 4 || j3 == 8) {
                    this.processor.floatElement(this.elementId, readFloat(extractorInput, (int) this.elementContentSize));
                    this.elementState = 0;
                    return true;
                }
                java.lang.StringBuilder sb4 = new java.lang.StringBuilder(40);
                sb4.append("Invalid float size: ");
                sb4.append(j3);
                throw com.google.android.exoplayer2.ParserException.createForMalformedContainer(sb4.toString(), null);
            }
            extractorInput.skipFully((int) this.elementContentSize);
            this.elementState = 0;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.mkv.EbmlReader
    public void reset() {
        this.elementState = 0;
        this.masterElementsStack.clear();
        this.varintReader.reset();
    }
}
