package com.tencent.tinker.commons.dexpatcher.util;

/* loaded from: classes.dex */
public abstract class AbstractIndexMap {

    public final class EncodedValueTransformer {
        public final com.tencent.tinker.android.dex.util.ByteOutput out;

        public EncodedValueTransformer(com.tencent.tinker.android.dex.util.ByteOutput byteOutput) {
            this.out = byteOutput;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void transformAnnotation(com.tencent.tinker.android.dex.EncodedValueReader encodedValueReader) {
            int annotation = encodedValueReader.readAnnotation();
            com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128(this.out, com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap.this.adjustTypeIdIndex(encodedValueReader.getAnnotationType()));
            com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128(this.out, annotation);
            for (int i = 0; i < annotation; i++) {
                com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128(this.out, com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap.this.adjustStringIndex(encodedValueReader.readAnnotationName()));
                transform(encodedValueReader);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void transformArray(com.tencent.tinker.android.dex.EncodedValueReader encodedValueReader) {
            int array = encodedValueReader.readArray();
            com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128(this.out, array);
            for (int i = 0; i < array; i++) {
                transform(encodedValueReader);
            }
        }

        private void writeTypeAndArg(int i, int i2) {
            this.out.writeByte(i | (i2 << 5));
        }

        public void transform(com.tencent.tinker.android.dex.EncodedValueReader encodedValueReader) {
            com.tencent.tinker.android.dex.util.ByteOutput byteOutput;
            long j;
            int i;
            com.tencent.tinker.android.dex.util.ByteOutput byteOutput2;
            int i2;
            int iAdjustStringIndex;
            com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap abstractIndexMap;
            int field;
            int iPeek = encodedValueReader.peek();
            if (iPeek == 0) {
                com.tencent.tinker.android.dex.EncodedValueCodec.writeSignedIntegralValue(this.out, 0, encodedValueReader.readByte());
                return;
            }
            int i3 = 6;
            if (iPeek != 6) {
                i3 = 2;
                if (iPeek == 2) {
                    byteOutput = this.out;
                    i = encodedValueReader.readShort();
                } else {
                    if (iPeek == 3) {
                        com.tencent.tinker.android.dex.EncodedValueCodec.writeUnsignedIntegralValue(this.out, 3, encodedValueReader.readChar());
                        return;
                    }
                    i3 = 4;
                    if (iPeek != 4) {
                        if (iPeek == 16) {
                            com.tencent.tinker.android.dex.EncodedValueCodec.writeRightZeroExtendedValue(this.out, 16, java.lang.Float.floatToIntBits(encodedValueReader.readFloat()) << 32);
                            return;
                        }
                        if (iPeek == 17) {
                            com.tencent.tinker.android.dex.EncodedValueCodec.writeRightZeroExtendedValue(this.out, 17, java.lang.Double.doubleToLongBits(encodedValueReader.readDouble()));
                            return;
                        }
                        switch (iPeek) {
                            case 23:
                                byteOutput2 = this.out;
                                i2 = 23;
                                iAdjustStringIndex = com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap.this.adjustStringIndex(encodedValueReader.readString());
                                com.tencent.tinker.android.dex.EncodedValueCodec.writeUnsignedIntegralValue(byteOutput2, i2, iAdjustStringIndex);
                                return;
                            case 24:
                                byteOutput2 = this.out;
                                i2 = 24;
                                iAdjustStringIndex = com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap.this.adjustTypeIdIndex(encodedValueReader.readType());
                                com.tencent.tinker.android.dex.EncodedValueCodec.writeUnsignedIntegralValue(byteOutput2, i2, iAdjustStringIndex);
                                return;
                            case 25:
                                byteOutput2 = this.out;
                                i2 = 25;
                                abstractIndexMap = com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap.this;
                                field = encodedValueReader.readField();
                                iAdjustStringIndex = abstractIndexMap.adjustFieldIdIndex(field);
                                com.tencent.tinker.android.dex.EncodedValueCodec.writeUnsignedIntegralValue(byteOutput2, i2, iAdjustStringIndex);
                                return;
                            case 26:
                                byteOutput2 = this.out;
                                i2 = 26;
                                iAdjustStringIndex = com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap.this.adjustMethodIdIndex(encodedValueReader.readMethod());
                                com.tencent.tinker.android.dex.EncodedValueCodec.writeUnsignedIntegralValue(byteOutput2, i2, iAdjustStringIndex);
                                return;
                            case 27:
                                byteOutput2 = this.out;
                                i2 = 27;
                                abstractIndexMap = com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap.this;
                                field = encodedValueReader.readEnum();
                                iAdjustStringIndex = abstractIndexMap.adjustFieldIdIndex(field);
                                com.tencent.tinker.android.dex.EncodedValueCodec.writeUnsignedIntegralValue(byteOutput2, i2, iAdjustStringIndex);
                                return;
                            case 28:
                                writeTypeAndArg(28, 0);
                                transformArray(encodedValueReader);
                                return;
                            case 29:
                                writeTypeAndArg(29, 0);
                                transformAnnotation(encodedValueReader);
                                return;
                            case 30:
                                encodedValueReader.readNull();
                                writeTypeAndArg(30, 0);
                                return;
                            case 31:
                                writeTypeAndArg(31, encodedValueReader.readBoolean() ? 1 : 0);
                                return;
                            default:
                                java.lang.StringBuilder sbO = e.a.c.a.a.o("Unexpected type: ");
                                sbO.append(java.lang.Integer.toHexString(encodedValueReader.peek()));
                                throw new com.tencent.tinker.android.dex.DexException(sbO.toString());
                        }
                    }
                    byteOutput = this.out;
                    i = encodedValueReader.readInt();
                }
                j = i;
            } else {
                byteOutput = this.out;
                j = encodedValueReader.readLong();
            }
            com.tencent.tinker.android.dex.EncodedValueCodec.writeSignedIntegralValue(byteOutput, i3, j);
        }
    }

    private com.tencent.tinker.android.dex.Code.CatchHandler[] adjustCatchHandlers(com.tencent.tinker.android.dex.Code.CatchHandler[] catchHandlerArr) {
        if (catchHandlerArr == null || catchHandlerArr.length == 0) {
            return catchHandlerArr;
        }
        com.tencent.tinker.android.dex.Code.CatchHandler[] catchHandlerArr2 = new com.tencent.tinker.android.dex.Code.CatchHandler[catchHandlerArr.length];
        for (int i = 0; i < catchHandlerArr.length; i++) {
            com.tencent.tinker.android.dex.Code.CatchHandler catchHandler = catchHandlerArr[i];
            int length = catchHandler.typeIndexes.length;
            int[] iArr = new int[length];
            for (int i2 = 0; i2 < length; i2++) {
                iArr[i2] = adjustTypeIdIndex(catchHandler.typeIndexes[i2]);
            }
            catchHandlerArr2[i] = new com.tencent.tinker.android.dex.Code.CatchHandler(iArr, catchHandler.addresses, catchHandler.catchAllAddress, catchHandler.offset);
        }
        return catchHandlerArr2;
    }

    private byte[] adjustDebugInfoItemSTM(byte[] bArr) {
        final java.io.ByteArrayInputStream byteArrayInputStream = new java.io.ByteArrayInputStream(bArr);
        com.tencent.tinker.android.dex.util.ByteInput byteInput = new com.tencent.tinker.android.dex.util.ByteInput() { // from class: com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap.1
            @Override // com.tencent.tinker.android.dex.util.ByteInput
            public byte readByte() {
                return (byte) (byteArrayInputStream.read() & 255);
            }
        };
        final java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream(bArr.length + 512);
        com.tencent.tinker.android.dex.util.ByteOutput byteOutput = new com.tencent.tinker.android.dex.util.ByteOutput() { // from class: com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap.2
            @Override // com.tencent.tinker.android.dex.util.ByteOutput
            public void writeByte(int i) {
                byteArrayOutputStream.write(i);
            }
        };
        while (true) {
            int i = byteArrayInputStream.read() & 255;
            byteArrayOutputStream.write(i);
            if (i != 9) {
                switch (i) {
                    case 0:
                        return byteArrayOutputStream.toByteArray();
                    case 1:
                    case 5:
                    case 6:
                        com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128(byteOutput, com.tencent.tinker.android.dex.Leb128.readUnsignedLeb128(byteInput));
                        continue;
                    case 2:
                        com.tencent.tinker.android.dex.Leb128.writeSignedLeb128(byteOutput, com.tencent.tinker.android.dex.Leb128.readSignedLeb128(byteInput));
                        continue;
                    case 3:
                    case 4:
                        com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128(byteOutput, com.tencent.tinker.android.dex.Leb128.readUnsignedLeb128(byteInput));
                        com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128p1(byteOutput, adjustStringIndex(com.tencent.tinker.android.dex.Leb128.readUnsignedLeb128p1(byteInput)));
                        com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128p1(byteOutput, adjustTypeIdIndex(com.tencent.tinker.android.dex.Leb128.readUnsignedLeb128p1(byteInput)));
                        if (i == 4) {
                            break;
                        }
                }
            }
            com.tencent.tinker.android.dex.Leb128.writeUnsignedLeb128p1(byteOutput, adjustStringIndex(com.tencent.tinker.android.dex.Leb128.readUnsignedLeb128p1(byteInput)));
        }
    }

    private com.tencent.tinker.android.dex.ClassData.Field[] adjustFields(com.tencent.tinker.android.dex.ClassData.Field[] fieldArr) {
        com.tencent.tinker.android.dex.ClassData.Field[] fieldArr2 = new com.tencent.tinker.android.dex.ClassData.Field[fieldArr.length];
        for (int i = 0; i < fieldArr.length; i++) {
            com.tencent.tinker.android.dex.ClassData.Field field = fieldArr[i];
            fieldArr2[i] = new com.tencent.tinker.android.dex.ClassData.Field(adjustFieldIdIndex(field.fieldIndex), field.accessFlags);
        }
        return fieldArr2;
    }

    private short[] adjustInstructions(short[] sArr) {
        return (sArr == null || sArr.length == 0) ? sArr : new com.tencent.tinker.commons.dexpatcher.util.InstructionTransformer(this).transform(sArr);
    }

    private com.tencent.tinker.android.dex.ClassData.Method[] adjustMethods(com.tencent.tinker.android.dex.ClassData.Method[] methodArr) {
        com.tencent.tinker.android.dex.ClassData.Method[] methodArr2 = new com.tencent.tinker.android.dex.ClassData.Method[methodArr.length];
        for (int i = 0; i < methodArr.length; i++) {
            com.tencent.tinker.android.dex.ClassData.Method method = methodArr[i];
            methodArr2[i] = new com.tencent.tinker.android.dex.ClassData.Method(adjustMethodIdIndex(method.methodIndex), method.accessFlags, adjustCodeOffset(method.codeOffset));
        }
        return methodArr2;
    }

    private int[] adjustParameterNames(int[] iArr) {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        for (int i = 0; i < length; i++) {
            iArr2[i] = adjustStringIndex(iArr[i]);
        }
        return iArr2;
    }

    public com.tencent.tinker.android.dex.Annotation adjust(com.tencent.tinker.android.dex.Annotation annotation) {
        final java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream(annotation.encodedAnnotation.data.length);
        new com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap.EncodedValueTransformer(new com.tencent.tinker.android.dex.util.ByteOutput() { // from class: com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap.4
            @Override // com.tencent.tinker.android.dex.util.ByteOutput
            public void writeByte(int i) {
                byteArrayOutputStream.write(i);
            }
        }).transformAnnotation(annotation.getReader());
        return new com.tencent.tinker.android.dex.Annotation(annotation.off, annotation.visibility, new com.tencent.tinker.android.dex.EncodedValue(annotation.encodedAnnotation.off, byteArrayOutputStream.toByteArray()));
    }

    public com.tencent.tinker.android.dex.AnnotationSet adjust(com.tencent.tinker.android.dex.AnnotationSet annotationSet) {
        int length = annotationSet.annotationOffsets.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = adjustAnnotationOffset(annotationSet.annotationOffsets[i]);
        }
        return new com.tencent.tinker.android.dex.AnnotationSet(annotationSet.off, iArr);
    }

    public com.tencent.tinker.android.dex.AnnotationSetRefList adjust(com.tencent.tinker.android.dex.AnnotationSetRefList annotationSetRefList) {
        int length = annotationSetRefList.annotationSetRefItems.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = adjustAnnotationSetOffset(annotationSetRefList.annotationSetRefItems[i]);
        }
        return new com.tencent.tinker.android.dex.AnnotationSetRefList(annotationSetRefList.off, iArr);
    }

    public com.tencent.tinker.android.dex.AnnotationsDirectory adjust(com.tencent.tinker.android.dex.AnnotationsDirectory annotationsDirectory) {
        int iAdjustAnnotationSetOffset = adjustAnnotationSetOffset(annotationsDirectory.classAnnotationsOffset);
        int[][] iArr = (int[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) int.class, annotationsDirectory.fieldAnnotations.length, 2);
        for (int i = 0; i < iArr.length; i++) {
            iArr[i][0] = adjustFieldIdIndex(annotationsDirectory.fieldAnnotations[i][0]);
            iArr[i][1] = adjustAnnotationSetOffset(annotationsDirectory.fieldAnnotations[i][1]);
        }
        int[][] iArr2 = (int[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) int.class, annotationsDirectory.methodAnnotations.length, 2);
        for (int i2 = 0; i2 < iArr2.length; i2++) {
            iArr2[i2][0] = adjustMethodIdIndex(annotationsDirectory.methodAnnotations[i2][0]);
            iArr2[i2][1] = adjustAnnotationSetOffset(annotationsDirectory.methodAnnotations[i2][1]);
        }
        int[][] iArr3 = (int[][]) java.lang.reflect.Array.newInstance((java.lang.Class<?>) int.class, annotationsDirectory.parameterAnnotations.length, 2);
        for (int i3 = 0; i3 < iArr3.length; i3++) {
            iArr3[i3][0] = adjustMethodIdIndex(annotationsDirectory.parameterAnnotations[i3][0]);
            iArr3[i3][1] = adjustAnnotationSetRefListOffset(annotationsDirectory.parameterAnnotations[i3][1]);
        }
        return new com.tencent.tinker.android.dex.AnnotationsDirectory(annotationsDirectory.off, iAdjustAnnotationSetOffset, iArr, iArr2, iArr3);
    }

    public com.tencent.tinker.android.dex.ClassData adjust(com.tencent.tinker.android.dex.ClassData classData) {
        return new com.tencent.tinker.android.dex.ClassData(classData.off, adjustFields(classData.staticFields), adjustFields(classData.instanceFields), adjustMethods(classData.directMethods), adjustMethods(classData.virtualMethods));
    }

    public com.tencent.tinker.android.dex.ClassDef adjust(com.tencent.tinker.android.dex.ClassDef classDef) {
        return new com.tencent.tinker.android.dex.ClassDef(classDef.off, adjustTypeIdIndex(classDef.typeIndex), classDef.accessFlags, adjustTypeIdIndex(classDef.supertypeIndex), adjustTypeListOffset(classDef.interfacesOffset), adjustStringIndex(classDef.sourceFileIndex), adjustAnnotationsDirectoryOffset(classDef.annotationsOffset), adjustClassDataOffset(classDef.classDataOffset), adjustStaticValuesOffset(classDef.staticValuesOffset));
    }

    public com.tencent.tinker.android.dex.Code adjust(com.tencent.tinker.android.dex.Code code) {
        return new com.tencent.tinker.android.dex.Code(code.off, code.registersSize, code.insSize, code.outsSize, adjustDebugInfoItemOffset(code.debugInfoOffset), adjustInstructions(code.instructions), code.tries, adjustCatchHandlers(code.catchHandlers));
    }

    public com.tencent.tinker.android.dex.DebugInfoItem adjust(com.tencent.tinker.android.dex.DebugInfoItem debugInfoItem) {
        return new com.tencent.tinker.android.dex.DebugInfoItem(debugInfoItem.off, debugInfoItem.lineStart, adjustParameterNames(debugInfoItem.parameterNames), adjustDebugInfoItemSTM(debugInfoItem.infoSTM));
    }

    public com.tencent.tinker.android.dex.EncodedValue adjust(com.tencent.tinker.android.dex.EncodedValue encodedValue) {
        final java.io.ByteArrayOutputStream byteArrayOutputStream = new java.io.ByteArrayOutputStream(encodedValue.data.length);
        new com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap.EncodedValueTransformer(new com.tencent.tinker.android.dex.util.ByteOutput() { // from class: com.tencent.tinker.commons.dexpatcher.util.AbstractIndexMap.3
            @Override // com.tencent.tinker.android.dex.util.ByteOutput
            public void writeByte(int i) {
                byteArrayOutputStream.write(i);
            }
        }).transformArray(new com.tencent.tinker.android.dex.EncodedValueReader(encodedValue, 28));
        return new com.tencent.tinker.android.dex.EncodedValue(encodedValue.off, byteArrayOutputStream.toByteArray());
    }

    public com.tencent.tinker.android.dex.FieldId adjust(com.tencent.tinker.android.dex.FieldId fieldId) {
        return new com.tencent.tinker.android.dex.FieldId(fieldId.off, adjustTypeIdIndex(fieldId.declaringClassIndex), adjustTypeIdIndex(fieldId.typeIndex), adjustStringIndex(fieldId.nameIndex));
    }

    public com.tencent.tinker.android.dex.MethodId adjust(com.tencent.tinker.android.dex.MethodId methodId) {
        return new com.tencent.tinker.android.dex.MethodId(methodId.off, adjustTypeIdIndex(methodId.declaringClassIndex), adjustProtoIdIndex(methodId.protoIndex), adjustStringIndex(methodId.nameIndex));
    }

    public com.tencent.tinker.android.dex.ProtoId adjust(com.tencent.tinker.android.dex.ProtoId protoId) {
        return new com.tencent.tinker.android.dex.ProtoId(protoId.off, adjustStringIndex(protoId.shortyIndex), adjustTypeIdIndex(protoId.returnTypeIndex), adjustTypeListOffset(protoId.parametersOffset));
    }

    public com.tencent.tinker.android.dex.TypeList adjust(com.tencent.tinker.android.dex.TypeList typeList) {
        if (typeList == com.tencent.tinker.android.dex.TypeList.EMPTY) {
            return typeList;
        }
        int length = typeList.types.length;
        short[] sArr = new short[length];
        for (int i = 0; i < length; i++) {
            sArr[i] = (short) adjustTypeIdIndex(typeList.types[i]);
        }
        return new com.tencent.tinker.android.dex.TypeList(typeList.off, sArr);
    }

    public abstract int adjustAnnotationOffset(int i);

    public abstract int adjustAnnotationSetOffset(int i);

    public abstract int adjustAnnotationSetRefListOffset(int i);

    public abstract int adjustAnnotationsDirectoryOffset(int i);

    public abstract int adjustClassDataOffset(int i);

    public abstract int adjustCodeOffset(int i);

    public abstract int adjustDebugInfoItemOffset(int i);

    public abstract int adjustFieldIdIndex(int i);

    public abstract int adjustMethodIdIndex(int i);

    public abstract int adjustProtoIdIndex(int i);

    public abstract int adjustStaticValuesOffset(int i);

    public abstract int adjustStringIndex(int i);

    public abstract int adjustTypeIdIndex(int i);

    public abstract int adjustTypeListOffset(int i);
}
