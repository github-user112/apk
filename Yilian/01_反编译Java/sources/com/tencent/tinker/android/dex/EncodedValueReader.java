package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class EncodedValueReader {
    public static final int ENCODED_ANNOTATION = 29;
    public static final int ENCODED_ARRAY = 28;
    public static final int ENCODED_BOOLEAN = 31;
    public static final int ENCODED_BYTE = 0;
    public static final int ENCODED_CHAR = 3;
    public static final int ENCODED_DOUBLE = 17;
    public static final int ENCODED_ENUM = 27;
    public static final int ENCODED_FIELD = 25;
    public static final int ENCODED_FLOAT = 16;
    public static final int ENCODED_INT = 4;
    public static final int ENCODED_LONG = 6;
    public static final int ENCODED_METHOD = 26;
    public static final int ENCODED_NULL = 30;
    public static final int ENCODED_SHORT = 2;
    public static final int ENCODED_STRING = 23;
    public static final int ENCODED_TYPE = 24;
    public static final int MUST_READ = -1;
    public int annotationType;
    public int arg;
    public final com.tencent.tinker.android.dex.util.ByteInput in;
    public int type;

    public EncodedValueReader(com.tencent.tinker.android.dex.EncodedValue encodedValue) {
        this(encodedValue.asByteInput());
    }

    public EncodedValueReader(com.tencent.tinker.android.dex.EncodedValue encodedValue, int i) {
        this(encodedValue.asByteInput(), i);
    }

    public EncodedValueReader(com.tencent.tinker.android.dex.util.ByteInput byteInput) {
        this.type = -1;
        this.in = byteInput;
    }

    public EncodedValueReader(com.tencent.tinker.android.dex.util.ByteInput byteInput, int i) {
        this.type = -1;
        this.in = byteInput;
        this.type = i;
    }

    private void checkType(int i) {
        if (peek() != i) {
            throw new java.lang.IllegalStateException(java.lang.String.format("Expected %x but was %x", java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(peek())));
        }
    }

    public int getAnnotationType() {
        return this.annotationType;
    }

    public int peek() {
        if (this.type == -1) {
            int i = this.in.readByte() & 255;
            this.type = i & 31;
            this.arg = (i & 224) >> 5;
        }
        return this.type;
    }

    public int readAnnotation() {
        checkType(29);
        this.type = -1;
        this.annotationType = com.tencent.tinker.android.dex.Leb128.readUnsignedLeb128(this.in);
        return com.tencent.tinker.android.dex.Leb128.readUnsignedLeb128(this.in);
    }

    public int readAnnotationName() {
        return com.tencent.tinker.android.dex.Leb128.readUnsignedLeb128(this.in);
    }

    public int readArray() {
        checkType(28);
        this.type = -1;
        return com.tencent.tinker.android.dex.Leb128.readUnsignedLeb128(this.in);
    }

    public boolean readBoolean() {
        checkType(31);
        this.type = -1;
        return this.arg != 0;
    }

    public byte readByte() {
        checkType(0);
        this.type = -1;
        return (byte) com.tencent.tinker.android.dex.EncodedValueCodec.readSignedInt(this.in, this.arg);
    }

    public char readChar() {
        checkType(3);
        this.type = -1;
        return (char) com.tencent.tinker.android.dex.EncodedValueCodec.readUnsignedInt(this.in, this.arg, false);
    }

    public double readDouble() {
        checkType(17);
        this.type = -1;
        return java.lang.Double.longBitsToDouble(com.tencent.tinker.android.dex.EncodedValueCodec.readUnsignedLong(this.in, this.arg, true));
    }

    public int readEnum() {
        checkType(27);
        this.type = -1;
        return com.tencent.tinker.android.dex.EncodedValueCodec.readUnsignedInt(this.in, this.arg, false);
    }

    public int readField() {
        checkType(25);
        this.type = -1;
        return com.tencent.tinker.android.dex.EncodedValueCodec.readUnsignedInt(this.in, this.arg, false);
    }

    public float readFloat() {
        checkType(16);
        this.type = -1;
        return java.lang.Float.intBitsToFloat(com.tencent.tinker.android.dex.EncodedValueCodec.readUnsignedInt(this.in, this.arg, true));
    }

    public int readInt() {
        checkType(4);
        this.type = -1;
        return com.tencent.tinker.android.dex.EncodedValueCodec.readSignedInt(this.in, this.arg);
    }

    public long readLong() {
        checkType(6);
        this.type = -1;
        return com.tencent.tinker.android.dex.EncodedValueCodec.readSignedLong(this.in, this.arg);
    }

    public int readMethod() {
        checkType(26);
        this.type = -1;
        return com.tencent.tinker.android.dex.EncodedValueCodec.readUnsignedInt(this.in, this.arg, false);
    }

    public void readNull() {
        checkType(30);
        this.type = -1;
    }

    public short readShort() {
        checkType(2);
        this.type = -1;
        return (short) com.tencent.tinker.android.dex.EncodedValueCodec.readSignedInt(this.in, this.arg);
    }

    public int readString() {
        checkType(23);
        this.type = -1;
        return com.tencent.tinker.android.dex.EncodedValueCodec.readUnsignedInt(this.in, this.arg, false);
    }

    public int readType() {
        checkType(24);
        this.type = -1;
        return com.tencent.tinker.android.dex.EncodedValueCodec.readUnsignedInt(this.in, this.arg, false);
    }

    public void skipValue() {
        int iPeek = peek();
        if (iPeek == 0) {
            readByte();
            return;
        }
        if (iPeek == 6) {
            readLong();
            return;
        }
        if (iPeek == 2) {
            readShort();
            return;
        }
        if (iPeek == 3) {
            readChar();
            return;
        }
        if (iPeek == 4) {
            readInt();
            return;
        }
        if (iPeek == 16) {
            readFloat();
            return;
        }
        if (iPeek == 17) {
            readDouble();
            return;
        }
        int i = 0;
        switch (iPeek) {
            case 23:
                readString();
                return;
            case 24:
                readType();
                return;
            case 25:
                readField();
                return;
            case 26:
                readMethod();
                return;
            case 27:
                readEnum();
                return;
            case 28:
                int array = readArray();
                while (i < array) {
                    skipValue();
                    i++;
                }
                return;
            case 29:
                int annotation = readAnnotation();
                while (i < annotation) {
                    readAnnotationName();
                    skipValue();
                    i++;
                }
                return;
            case 30:
                readNull();
                return;
            case 31:
                readBoolean();
                return;
            default:
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Unexpected type: ");
                sbO.append(java.lang.Integer.toHexString(this.type));
                throw new com.tencent.tinker.android.dex.DexException(sbO.toString());
        }
    }
}
