package com.tencent.tinker.android.dex.io;

/* loaded from: classes.dex */
public class DexDataBuffer implements com.tencent.tinker.android.dex.util.ByteInput, com.tencent.tinker.android.dex.util.ByteOutput {
    public static final int DEFAULT_BUFFER_SIZE = 512;
    public java.nio.ByteBuffer data;
    public int dataBound;
    public boolean isResizeAllowed;
    public static final short[] EMPTY_SHORT_ARRAY = new short[0];
    public static final com.tencent.tinker.android.dex.Code.Try[] EMPTY_TRY_ARRAY = new com.tencent.tinker.android.dex.Code.Try[0];
    public static final com.tencent.tinker.android.dex.Code.CatchHandler[] EMPTY_CATCHHANDLER_ARRAY = new com.tencent.tinker.android.dex.Code.CatchHandler[0];

    public DexDataBuffer() {
        java.nio.ByteBuffer byteBufferAllocate = java.nio.ByteBuffer.allocate(512);
        this.data = byteBufferAllocate;
        byteBufferAllocate.order(java.nio.ByteOrder.LITTLE_ENDIAN);
        this.dataBound = this.data.position();
        java.nio.ByteBuffer byteBuffer = this.data;
        byteBuffer.limit(byteBuffer.capacity());
        this.isResizeAllowed = true;
    }

    public DexDataBuffer(java.nio.ByteBuffer byteBuffer) {
        this.data = byteBuffer;
        byteBuffer.order(java.nio.ByteOrder.LITTLE_ENDIAN);
        this.dataBound = byteBuffer.limit();
        this.isResizeAllowed = false;
    }

    public DexDataBuffer(java.nio.ByteBuffer byteBuffer, boolean z) {
        this.data = byteBuffer;
        byteBuffer.order(java.nio.ByteOrder.LITTLE_ENDIAN);
        this.dataBound = byteBuffer.limit();
        this.isResizeAllowed = z;
    }

    private void ensureBufferSize(int i) {
        if (this.data.position() + i <= this.data.limit() || !this.isResizeAllowed) {
            return;
        }
        byte[] bArrArray = this.data.array();
        byte[] bArr = new byte[bArrArray.length + i + (bArrArray.length >> 1)];
        java.lang.System.arraycopy(bArrArray, 0, bArr, 0, this.data.position());
        int iPosition = this.data.position();
        java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(bArr);
        this.data = byteBufferWrap;
        byteBufferWrap.order(java.nio.ByteOrder.LITTLE_ENDIAN);
        this.data.position(iPosition);
        java.nio.ByteBuffer byteBuffer = this.data;
        byteBuffer.limit(byteBuffer.capacity());
    }

    private int findCatchHandlerIndex(com.tencent.tinker.android.dex.Code.CatchHandler[] catchHandlerArr, int i) {
        for (int i2 = 0; i2 < catchHandlerArr.length; i2++) {
            if (catchHandlerArr[i2].offset == i) {
                return i2;
            }
        }
        throw new java.lang.IllegalArgumentException();
    }

    private byte[] getBytesFrom(int i) {
        byte[] bArr = new byte[this.data.position() - i];
        this.data.position(i);
        this.data.get(bArr);
        return bArr;
    }

    private com.tencent.tinker.android.dex.Code.CatchHandler readCatchHandler(int i) {
        int sleb128 = readSleb128();
        int iAbs = java.lang.Math.abs(sleb128);
        int[] iArr = new int[iAbs];
        int[] iArr2 = new int[iAbs];
        for (int i2 = 0; i2 < iAbs; i2++) {
            iArr[i2] = readUleb128();
            iArr2[i2] = readUleb128();
        }
        return new com.tencent.tinker.android.dex.Code.CatchHandler(iArr, iArr2, sleb128 <= 0 ? readUleb128() : -1, i);
    }

    private com.tencent.tinker.android.dex.Code.CatchHandler[] readCatchHandlers() {
        int iPosition = this.data.position();
        int uleb128 = readUleb128();
        com.tencent.tinker.android.dex.Code.CatchHandler[] catchHandlerArr = new com.tencent.tinker.android.dex.Code.CatchHandler[uleb128];
        for (int i = 0; i < uleb128; i++) {
            catchHandlerArr[i] = readCatchHandler(this.data.position() - iPosition);
        }
        return catchHandlerArr;
    }

    private com.tencent.tinker.android.dex.ClassData.Field[] readFields(int i) {
        com.tencent.tinker.android.dex.ClassData.Field[] fieldArr = new com.tencent.tinker.android.dex.ClassData.Field[i];
        int uleb128 = 0;
        for (int i2 = 0; i2 < i; i2++) {
            uleb128 += readUleb128();
            fieldArr[i2] = new com.tencent.tinker.android.dex.ClassData.Field(uleb128, readUleb128());
        }
        return fieldArr;
    }

    private com.tencent.tinker.android.dex.ClassData.Method[] readMethods(int i) {
        com.tencent.tinker.android.dex.ClassData.Method[] methodArr = new com.tencent.tinker.android.dex.ClassData.Method[i];
        int uleb128 = 0;
        for (int i2 = 0; i2 < i; i2++) {
            uleb128 += readUleb128();
            methodArr[i2] = new com.tencent.tinker.android.dex.ClassData.Method(uleb128, readUleb128(), readUleb128());
        }
        return methodArr;
    }

    private com.tencent.tinker.android.dex.Code.Try[] readTries(int i, com.tencent.tinker.android.dex.Code.CatchHandler[] catchHandlerArr) {
        com.tencent.tinker.android.dex.Code.Try[] tryArr = new com.tencent.tinker.android.dex.Code.Try[i];
        for (int i2 = 0; i2 < i; i2++) {
            tryArr[i2] = new com.tencent.tinker.android.dex.Code.Try(readInt(), readUnsignedShort(), findCatchHandlerIndex(catchHandlerArr, readUnsignedShort()));
        }
        return tryArr;
    }

    private void writeCatchHandler(com.tencent.tinker.android.dex.Code.CatchHandler catchHandler) {
        int i = catchHandler.catchAllAddress;
        int[] iArr = catchHandler.typeIndexes;
        int[] iArr2 = catchHandler.addresses;
        int length = iArr.length;
        if (i != -1) {
            length = -length;
        }
        writeSleb128(length);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            writeUleb128(iArr[i2]);
            writeUleb128(iArr2[i2]);
        }
        if (i != -1) {
            writeUleb128(i);
        }
    }

    private int[] writeCatchHandlers(com.tencent.tinker.android.dex.Code.CatchHandler[] catchHandlerArr) {
        int iPosition = this.data.position();
        writeUleb128(catchHandlerArr.length);
        int[] iArr = new int[catchHandlerArr.length];
        for (int i = 0; i < catchHandlerArr.length; i++) {
            iArr[i] = this.data.position() - iPosition;
            writeCatchHandler(catchHandlerArr[i]);
        }
        return iArr;
    }

    private void writeFields(com.tencent.tinker.android.dex.ClassData.Field[] fieldArr) {
        int i = 0;
        for (com.tencent.tinker.android.dex.ClassData.Field field : fieldArr) {
            writeUleb128(field.fieldIndex - i);
            i = field.fieldIndex;
            writeUleb128(field.accessFlags);
        }
    }

    private void writeMethods(com.tencent.tinker.android.dex.ClassData.Method[] methodArr) {
        int i = 0;
        for (com.tencent.tinker.android.dex.ClassData.Method method : methodArr) {
            writeUleb128(method.methodIndex - i);
            i = method.methodIndex;
            writeUleb128(method.accessFlags);
            writeUleb128(method.codeOffset);
        }
    }

    private void writeTries(com.tencent.tinker.android.dex.Code.Try[] tryArr, int[] iArr) {
        for (com.tencent.tinker.android.dex.Code.Try r2 : tryArr) {
            writeInt(r2.startAddress);
            writeUnsignedShort(r2.instructionCount);
            writeUnsignedShort(iArr[r2.catchHandlerIndex]);
        }
    }

    public void alignToFourBytes() {
        java.nio.ByteBuffer byteBuffer = this.data;
        byteBuffer.position((byteBuffer.position() + 3) & (-4));
    }

    public void alignToFourBytesWithZeroFill() {
        ensureBufferSize((com.tencent.tinker.android.dex.SizeOf.roundToTimesOfFour(this.data.position()) - this.data.position()) * 1);
        while ((this.data.position() & 3) != 0) {
            this.data.put((byte) 0);
        }
        if (this.data.position() > this.dataBound) {
            this.dataBound = this.data.position();
        }
    }

    public byte[] array() {
        byte[] bArr = new byte[this.dataBound];
        java.lang.System.arraycopy(this.data.array(), 0, bArr, 0, this.dataBound);
        return bArr;
    }

    public int available() {
        return this.dataBound - this.data.position();
    }

    public int position() {
        return this.data.position();
    }

    public void position(int i) {
        this.data.position(i);
    }

    public com.tencent.tinker.android.dex.Annotation readAnnotation() {
        int iPosition = this.data.position();
        byte b = readByte();
        int iPosition2 = this.data.position();
        new com.tencent.tinker.android.dex.EncodedValueReader(this, 29).skipValue();
        return new com.tencent.tinker.android.dex.Annotation(iPosition, b, new com.tencent.tinker.android.dex.EncodedValue(iPosition2, getBytesFrom(iPosition2)));
    }

    public com.tencent.tinker.android.dex.AnnotationSet readAnnotationSet() {
        int iPosition = this.data.position();
        int i = readInt();
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = readInt();
        }
        return new com.tencent.tinker.android.dex.AnnotationSet(iPosition, iArr);
    }

    public com.tencent.tinker.android.dex.AnnotationSetRefList readAnnotationSetRefList() {
        int iPosition = this.data.position();
        int i = readInt();
        int[] iArr = new int[i];
        for (int i2 = 0; i2 < i; i2++) {
            iArr[i2] = readInt();
        }
        return new com.tencent.tinker.android.dex.AnnotationSetRefList(iPosition, iArr);
    }

    public com.tencent.tinker.android.dex.AnnotationsDirectory readAnnotationsDirectory() {
        int iPosition = this.data.position();
        int i = readInt();
        int i2 = readInt();
        int i3 = readInt();
        int i4 = readInt();
        int[][] iArr = (int[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) int.class, i2, 2);
        for (int i5 = 0; i5 < i2; i5++) {
            iArr[i5][0] = readInt();
            iArr[i5][1] = readInt();
        }
        int[][] iArr2 = (int[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) int.class, i3, 2);
        for (int i6 = 0; i6 < i3; i6++) {
            iArr2[i6][0] = readInt();
            iArr2[i6][1] = readInt();
        }
        int[][] iArr3 = (int[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) int.class, i4, 2);
        for (int i7 = 0; i7 < i4; i7++) {
            iArr3[i7][0] = readInt();
            iArr3[i7][1] = readInt();
        }
        return new com.tencent.tinker.android.dex.AnnotationsDirectory(iPosition, i, iArr, iArr2, iArr3);
    }

    @Override // com.tencent.tinker.android.dex.util.ByteInput
    public byte readByte() {
        return this.data.get();
    }

    public byte[] readByteArray(int i) {
        byte[] bArr = new byte[i];
        this.data.get(bArr);
        return bArr;
    }

    public com.tencent.tinker.android.dex.ClassData readClassData() {
        return new com.tencent.tinker.android.dex.ClassData(this.data.position(), readFields(readUleb128()), readFields(readUleb128()), readMethods(readUleb128()), readMethods(readUleb128()));
    }

    public com.tencent.tinker.android.dex.ClassDef readClassDef() {
        return new com.tencent.tinker.android.dex.ClassDef(position(), readInt(), readInt(), readInt(), readInt(), readInt(), readInt(), readInt(), readInt());
    }

    public com.tencent.tinker.android.dex.Code readCode() {
        com.tencent.tinker.android.dex.Code.Try[] tryArr;
        com.tencent.tinker.android.dex.Code.CatchHandler[] catchHandlerArr;
        int iPosition = this.data.position();
        int unsignedShort = readUnsignedShort();
        int unsignedShort2 = readUnsignedShort();
        int unsignedShort3 = readUnsignedShort();
        int unsignedShort4 = readUnsignedShort();
        int i = readInt();
        short[] shortArray = readShortArray(readInt());
        if (unsignedShort4 > 0) {
            if ((shortArray.length & 1) == 1) {
                skip(2);
            }
            int iPosition2 = this.data.position();
            skip(unsignedShort4 * 8);
            com.tencent.tinker.android.dex.Code.CatchHandler[] catchHandlers = readCatchHandlers();
            int iPosition3 = this.data.position();
            this.data.position(iPosition2);
            com.tencent.tinker.android.dex.Code.Try[] tries = readTries(unsignedShort4, catchHandlers);
            this.data.position(iPosition3);
            catchHandlerArr = catchHandlers;
            tryArr = tries;
        } else {
            tryArr = EMPTY_TRY_ARRAY;
            catchHandlerArr = EMPTY_CATCHHANDLER_ARRAY;
        }
        return new com.tencent.tinker.android.dex.Code(iPosition, unsignedShort, unsignedShort2, unsignedShort3, i, shortArray, tryArr, catchHandlerArr);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:10:0x0034. Please report as an issue. */
    public com.tencent.tinker.android.dex.DebugInfoItem readDebugInfoItem() throws java.lang.Throwable {
        final java.io.ByteArrayOutputStream byteArrayOutputStream;
        int uleb128p1;
        int uleb128;
        int iPosition = this.data.position();
        int uleb1282 = readUleb128();
        int uleb1283 = readUleb128();
        int[] iArr = new int[uleb1283];
        for (int i = 0; i < uleb1283; i++) {
            iArr[i] = readUleb128p1();
        }
        java.io.ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new java.io.ByteArrayOutputStream(64);
        } catch (java.lang.Throwable th) {
            th = th;
        }
        try {
            com.tencent.tinker.android.dex.util.ByteOutput byteOutput = new com.tencent.tinker.android.dex.util.ByteOutput() { // from class: com.tencent.tinker.android.dex.io.DexDataBuffer.1
                @Override // com.tencent.tinker.android.dex.util.ByteOutput
                public void writeByte(int i2) {
                    byteArrayOutputStream.write(i2);
                }
            };
            while (true) {
                byte b = readByte();
                byteArrayOutputStream.write(b);
                if (b != 9) {
                    switch (b) {
                        case 1:
                            uleb128 = readUleb128();
                            com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128(byteOutput, uleb128);
                        case 2:
                            com.tencent.tinker.android.dex.Leb128.writeSignedLeb128(byteOutput, readSleb128());
                        case 3:
                        case 4:
                            com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128(byteOutput, readUleb128());
                            com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128p1(byteOutput, readUleb128p1());
                            com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128p1(byteOutput, readUleb128p1());
                            if (b == 4) {
                                uleb128p1 = readUleb128p1();
                                break;
                            }
                        case 5:
                        case 6:
                            uleb128 = readUleb128();
                            com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128(byteOutput, uleb128);
                    }
                    com.tencent.tinker.android.dex.DebugInfoItem debugInfoItem = new com.tencent.tinker.android.dex.DebugInfoItem(iPosition, uleb1282, iArr, byteArrayOutputStream.toByteArray());
                    try {
                        byteArrayOutputStream.close();
                    } catch (java.lang.Exception unused) {
                    }
                    return debugInfoItem;
                }
                uleb128p1 = readUleb128p1();
                com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128p1(byteOutput, uleb128p1);
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            byteArrayOutputStream2 = byteArrayOutputStream;
            if (byteArrayOutputStream2 != null) {
                try {
                    byteArrayOutputStream2.close();
                } catch (java.lang.Exception unused2) {
                }
            }
            throw th;
        }
    }

    public com.tencent.tinker.android.dex.EncodedValue readEncodedArray() {
        int iPosition = this.data.position();
        new com.tencent.tinker.android.dex.EncodedValueReader(this, 28).skipValue();
        return new com.tencent.tinker.android.dex.EncodedValue(iPosition, getBytesFrom(iPosition));
    }

    public com.tencent.tinker.android.dex.FieldId readFieldId() {
        return new com.tencent.tinker.android.dex.FieldId(this.data.position(), readUnsignedShort(), readUnsignedShort(), readInt());
    }

    public int readInt() {
        return this.data.getInt();
    }

    public com.tencent.tinker.android.dex.MethodId readMethodId() {
        return new com.tencent.tinker.android.dex.MethodId(this.data.position(), readUnsignedShort(), readUnsignedShort(), readInt());
    }

    public com.tencent.tinker.android.dex.ProtoId readProtoId() {
        return new com.tencent.tinker.android.dex.ProtoId(this.data.position(), readInt(), readInt(), readInt());
    }

    public short readShort() {
        return this.data.getShort();
    }

    public short[] readShortArray(int i) {
        if (i == 0) {
            return EMPTY_SHORT_ARRAY;
        }
        short[] sArr = new short[i];
        for (int i2 = 0; i2 < i; i2++) {
            sArr[i2] = readShort();
        }
        return sArr;
    }

    public int readSleb128() {
        return com.tencent.tinker.android.dex.Leb128.readSignedLeb128(this);
    }

    public com.tencent.tinker.android.dex.StringData readStringData() {
        int iPosition = this.data.position();
        try {
            int uleb128 = readUleb128();
            java.lang.String strDecode = com.tencent.tinker.android.dex.Mutf8.decode(this, new char[uleb128]);
            if (strDecode.length() == uleb128) {
                return new com.tencent.tinker.android.dex.StringData(iPosition, strDecode);
            }
            throw new com.tencent.tinker.android.dex.DexException("Declared length " + uleb128 + " doesn't match decoded length of " + strDecode.length());
        } catch (java.io.UTFDataFormatException e2) {
            throw new com.tencent.tinker.android.dex.DexException(e2);
        }
    }

    public com.tencent.tinker.android.dex.TypeList readTypeList() {
        return new com.tencent.tinker.android.dex.TypeList(this.data.position(), readShortArray(readInt()));
    }

    public int readUleb128() {
        return com.tencent.tinker.android.dex.Leb128.readUnsignedLeb128(this);
    }

    public int readUleb128p1() {
        return com.tencent.tinker.android.dex.Leb128.readUnsignedLeb128(this) - 1;
    }

    public int readUnsignedByte() {
        return readByte() & 255;
    }

    public int readUnsignedShort() {
        return readShort() & 65535;
    }

    public void skip(int i) {
        if (i < 0) {
            throw new java.lang.IllegalArgumentException();
        }
        java.nio.ByteBuffer byteBuffer = this.data;
        byteBuffer.position(byteBuffer.position() + i);
    }

    public void skipWithAutoExpand(int i) {
        ensureBufferSize(i * 1);
        skip(i);
    }

    public void write(byte[] bArr) {
        ensureBufferSize(bArr.length * 1);
        this.data.put(bArr);
        if (this.data.position() > this.dataBound) {
            this.dataBound = this.data.position();
        }
    }

    public void write(short[] sArr) {
        ensureBufferSize(sArr.length * 2);
        for (short s : sArr) {
            writeShort(s);
        }
        if (this.data.position() > this.dataBound) {
            this.dataBound = this.data.position();
        }
    }

    public int writeAnnotation(com.tencent.tinker.android.dex.Annotation annotation) {
        int iPosition = this.data.position();
        writeByte(annotation.visibility);
        writeEncodedArray(annotation.encodedAnnotation);
        return iPosition;
    }

    public int writeAnnotationSet(com.tencent.tinker.android.dex.AnnotationSet annotationSet) {
        int iPosition = this.data.position();
        writeInt(annotationSet.annotationOffsets.length);
        for (int i : annotationSet.annotationOffsets) {
            writeInt(i);
        }
        return iPosition;
    }

    public int writeAnnotationSetRefList(com.tencent.tinker.android.dex.AnnotationSetRefList annotationSetRefList) {
        int iPosition = this.data.position();
        writeInt(annotationSetRefList.annotationSetRefItems.length);
        for (int i : annotationSetRefList.annotationSetRefItems) {
            writeInt(i);
        }
        return iPosition;
    }

    public int writeAnnotationsDirectory(com.tencent.tinker.android.dex.AnnotationsDirectory annotationsDirectory) {
        int iPosition = this.data.position();
        writeInt(annotationsDirectory.classAnnotationsOffset);
        writeInt(annotationsDirectory.fieldAnnotations.length);
        writeInt(annotationsDirectory.methodAnnotations.length);
        writeInt(annotationsDirectory.parameterAnnotations.length);
        for (int[] iArr : annotationsDirectory.fieldAnnotations) {
            writeInt(iArr[0]);
            writeInt(iArr[1]);
        }
        for (int[] iArr2 : annotationsDirectory.methodAnnotations) {
            writeInt(iArr2[0]);
            writeInt(iArr2[1]);
        }
        for (int[] iArr3 : annotationsDirectory.parameterAnnotations) {
            writeInt(iArr3[0]);
            writeInt(iArr3[1]);
        }
        return iPosition;
    }

    @Override // com.tencent.tinker.android.dex.util.ByteOutput
    public void writeByte(int i) {
        ensureBufferSize(1);
        this.data.put((byte) i);
        if (this.data.position() > this.dataBound) {
            this.dataBound = this.data.position();
        }
    }

    public int writeClassData(com.tencent.tinker.android.dex.ClassData classData) {
        int iPosition = this.data.position();
        writeUleb128(classData.staticFields.length);
        writeUleb128(classData.instanceFields.length);
        writeUleb128(classData.directMethods.length);
        writeUleb128(classData.virtualMethods.length);
        writeFields(classData.staticFields);
        writeFields(classData.instanceFields);
        writeMethods(classData.directMethods);
        writeMethods(classData.virtualMethods);
        return iPosition;
    }

    public int writeClassDef(com.tencent.tinker.android.dex.ClassDef classDef) {
        int iPosition = this.data.position();
        writeInt(classDef.typeIndex);
        writeInt(classDef.accessFlags);
        writeInt(classDef.supertypeIndex);
        writeInt(classDef.interfacesOffset);
        writeInt(classDef.sourceFileIndex);
        writeInt(classDef.annotationsOffset);
        writeInt(classDef.classDataOffset);
        writeInt(classDef.staticValuesOffset);
        return iPosition;
    }

    public int writeCode(com.tencent.tinker.android.dex.Code code) {
        int iPosition = this.data.position();
        writeUnsignedShort(code.registersSize);
        writeUnsignedShort(code.insSize);
        writeUnsignedShort(code.outsSize);
        writeUnsignedShort(code.tries.length);
        writeInt(code.debugInfoOffset);
        writeInt(code.instructions.length);
        write(code.instructions);
        if (code.tries.length > 0) {
            if ((code.instructions.length & 1) == 1) {
                writeShort((short) 0);
            }
            int iPosition2 = this.data.position();
            skipWithAutoExpand(code.tries.length * 8);
            int[] iArrWriteCatchHandlers = writeCatchHandlers(code.catchHandlers);
            int iPosition3 = this.data.position();
            this.data.position(iPosition2);
            writeTries(code.tries, iArrWriteCatchHandlers);
            this.data.position(iPosition3);
        }
        return iPosition;
    }

    public int writeDebugInfoItem(com.tencent.tinker.android.dex.DebugInfoItem debugInfoItem) {
        int iPosition = this.data.position();
        writeUleb128(debugInfoItem.lineStart);
        int length = debugInfoItem.parameterNames.length;
        writeUleb128(length);
        for (int i = 0; i < length; i++) {
            writeUleb128p1(debugInfoItem.parameterNames[i]);
        }
        write(debugInfoItem.infoSTM);
        return iPosition;
    }

    public int writeEncodedArray(com.tencent.tinker.android.dex.EncodedValue encodedValue) {
        int iPosition = this.data.position();
        write(encodedValue.data);
        return iPosition;
    }

    public int writeFieldId(com.tencent.tinker.android.dex.FieldId fieldId) {
        int iPosition = this.data.position();
        writeUnsignedShort(fieldId.declaringClassIndex);
        writeUnsignedShort(fieldId.typeIndex);
        writeInt(fieldId.nameIndex);
        return iPosition;
    }

    public void writeInt(int i) {
        ensureBufferSize(4);
        this.data.putInt(i);
        if (this.data.position() > this.dataBound) {
            this.dataBound = this.data.position();
        }
    }

    public int writeMethodId(com.tencent.tinker.android.dex.MethodId methodId) {
        int iPosition = this.data.position();
        writeUnsignedShort(methodId.declaringClassIndex);
        writeUnsignedShort(methodId.protoIndex);
        writeInt(methodId.nameIndex);
        return iPosition;
    }

    public int writeProtoId(com.tencent.tinker.android.dex.ProtoId protoId) {
        int iPosition = this.data.position();
        writeInt(protoId.shortyIndex);
        writeInt(protoId.returnTypeIndex);
        writeInt(protoId.parametersOffset);
        return iPosition;
    }

    public void writeShort(short s) {
        ensureBufferSize(2);
        this.data.putShort(s);
        if (this.data.position() > this.dataBound) {
            this.dataBound = this.data.position();
        }
    }

    public void writeSleb128(int i) {
        com.tencent.tinker.android.dex.Leb128.writeSignedLeb128(this, i);
    }

    public int writeStringData(com.tencent.tinker.android.dex.StringData stringData) {
        int iPosition = this.data.position();
        try {
            writeUleb128(stringData.value.length());
            write(com.tencent.tinker.android.dex.Mutf8.encode(stringData.value));
            writeByte(0);
            return iPosition;
        } catch (java.io.UTFDataFormatException e2) {
            throw new java.lang.AssertionError(e2);
        }
    }

    public int writeTypeList(com.tencent.tinker.android.dex.TypeList typeList) {
        int iPosition = this.data.position();
        short[] sArr = typeList.types;
        writeInt(sArr.length);
        for (short s : sArr) {
            writeShort(s);
        }
        return iPosition;
    }

    public void writeUleb128(int i) {
        com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128(this, i);
    }

    public void writeUleb128p1(int i) {
        writeUleb128(i + 1);
    }

    public void writeUnsignedShort(int i) {
        short s = (short) i;
        if (i != (65535 & s)) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Expected an unsigned short: ", i));
        }
        writeShort(s);
    }
}
