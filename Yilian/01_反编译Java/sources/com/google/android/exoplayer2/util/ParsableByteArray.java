package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class ParsableByteArray {
    public byte[] data;
    public int limit;
    public int position;

    public ParsableByteArray() {
        this.data = com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
    }

    public ParsableByteArray(int i) {
        this.data = new byte[i];
        this.limit = i;
    }

    public ParsableByteArray(byte[] bArr) {
        this.data = bArr;
        this.limit = bArr.length;
    }

    public ParsableByteArray(byte[] bArr, int i) {
        this.data = bArr;
        this.limit = i;
    }

    public int bytesLeft() {
        return this.limit - this.position;
    }

    public int capacity() {
        return this.data.length;
    }

    public void ensureCapacity(int i) {
        if (i > capacity()) {
            this.data = java.util.Arrays.copyOf(this.data, i);
        }
    }

    public byte[] getData() {
        return this.data;
    }

    public int getPosition() {
        return this.position;
    }

    public int limit() {
        return this.limit;
    }

    public char peekChar() {
        byte[] bArr = this.data;
        int i = this.position;
        return (char) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    public int peekUnsignedByte() {
        return this.data[this.position] & 255;
    }

    public void readBytes(com.google.android.exoplayer2.util.ParsableBitArray parsableBitArray, int i) {
        readBytes(parsableBitArray.data, 0, i);
        parsableBitArray.setPosition(0);
    }

    public void readBytes(java.nio.ByteBuffer byteBuffer, int i) {
        byteBuffer.put(this.data, this.position, i);
        this.position += i;
    }

    public void readBytes(byte[] bArr, int i, int i2) {
        java.lang.System.arraycopy(this.data, this.position, bArr, i, i2);
        this.position += i2;
    }

    public java.lang.String readDelimiterTerminatedString(char c2) {
        if (bytesLeft() == 0) {
            return null;
        }
        int i = this.position;
        while (i < this.limit && this.data[i] != c2) {
            i++;
        }
        byte[] bArr = this.data;
        int i2 = this.position;
        java.lang.String strFromUtf8Bytes = com.google.android.exoplayer2.util.Util.fromUtf8Bytes(bArr, i2, i - i2);
        this.position = i;
        if (i < this.limit) {
            this.position = i + 1;
        }
        return strFromUtf8Bytes;
    }

    public double readDouble() {
        return java.lang.Double.longBitsToDouble(readLong());
    }

    public float readFloat() {
        return java.lang.Float.intBitsToFloat(readInt());
    }

    public int readInt() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = (bArr[i] & 255) << 24;
        int i4 = i2 + 1;
        this.position = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 16);
        int i6 = i4 + 1;
        this.position = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        this.position = i6 + 1;
        return (bArr[i6] & 255) | i7;
    }

    public int readInt24() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = ((bArr[i] & 255) << 24) >> 8;
        int i4 = i2 + 1;
        this.position = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 8);
        this.position = i4 + 1;
        return (bArr[i4] & 255) | i5;
    }

    public java.lang.String readLine() {
        if (bytesLeft() == 0) {
            return null;
        }
        int i = this.position;
        while (i < this.limit && !com.google.android.exoplayer2.util.Util.isLinebreak(this.data[i])) {
            i++;
        }
        int i2 = this.position;
        if (i - i2 >= 3) {
            byte[] bArr = this.data;
            if (bArr[i2] == -17 && bArr[i2 + 1] == -69 && bArr[i2 + 2] == -65) {
                this.position = i2 + 3;
            }
        }
        byte[] bArr2 = this.data;
        int i3 = this.position;
        java.lang.String strFromUtf8Bytes = com.google.android.exoplayer2.util.Util.fromUtf8Bytes(bArr2, i3, i - i3);
        this.position = i;
        int i4 = this.limit;
        if (i == i4) {
            return strFromUtf8Bytes;
        }
        if (this.data[i] == 13) {
            int i5 = i + 1;
            this.position = i5;
            if (i5 == i4) {
                return strFromUtf8Bytes;
            }
        }
        byte[] bArr3 = this.data;
        int i6 = this.position;
        if (bArr3[i6] == 10) {
            this.position = i6 + 1;
        }
        return strFromUtf8Bytes;
    }

    public int readLittleEndianInt() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = bArr[i] & 255;
        int i4 = i2 + 1;
        this.position = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 8);
        int i6 = i4 + 1;
        this.position = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 16);
        this.position = i6 + 1;
        return ((bArr[i6] & 255) << 24) | i7;
    }

    public int readLittleEndianInt24() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = bArr[i] & 255;
        int i4 = i2 + 1;
        this.position = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 8);
        this.position = i4 + 1;
        return ((bArr[i4] & 255) << 16) | i5;
    }

    public long readLittleEndianLong() {
        byte[] bArr = this.data;
        int i = this.position + 1;
        this.position = i;
        long j = bArr[r1] & 255;
        int i2 = i + 1;
        this.position = i2;
        long j2 = j | ((bArr[i] & 255) << 8);
        int i3 = i2 + 1;
        this.position = i3;
        long j3 = j2 | ((bArr[i2] & 255) << 16);
        int i4 = i3 + 1;
        this.position = i4;
        long j4 = j3 | ((bArr[i3] & 255) << 24);
        int i5 = i4 + 1;
        this.position = i5;
        long j5 = j4 | ((bArr[i4] & 255) << 32);
        int i6 = i5 + 1;
        this.position = i6;
        long j6 = j5 | ((bArr[i5] & 255) << 40);
        int i7 = i6 + 1;
        this.position = i7;
        long j7 = j6 | ((bArr[i6] & 255) << 48);
        this.position = i7 + 1;
        return ((bArr[i7] & 255) << 56) | j7;
    }

    public short readLittleEndianShort() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = bArr[i] & 255;
        this.position = i2 + 1;
        return (short) (((bArr[i2] & 255) << 8) | i3);
    }

    public long readLittleEndianUnsignedInt() {
        byte[] bArr = this.data;
        int i = this.position + 1;
        this.position = i;
        long j = bArr[r1] & 255;
        int i2 = i + 1;
        this.position = i2;
        long j2 = j | ((bArr[i] & 255) << 8);
        int i3 = i2 + 1;
        this.position = i3;
        long j3 = j2 | ((bArr[i2] & 255) << 16);
        this.position = i3 + 1;
        return ((bArr[i3] & 255) << 24) | j3;
    }

    public int readLittleEndianUnsignedInt24() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = bArr[i] & 255;
        int i4 = i2 + 1;
        this.position = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 8);
        this.position = i4 + 1;
        return ((bArr[i4] & 255) << 16) | i5;
    }

    public int readLittleEndianUnsignedIntToInt() {
        int littleEndianInt = readLittleEndianInt();
        if (littleEndianInt >= 0) {
            return littleEndianInt;
        }
        throw new java.lang.IllegalStateException(e.a.c.a.a.F(29, "Top bit not zero: ", littleEndianInt));
    }

    public int readLittleEndianUnsignedShort() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = bArr[i] & 255;
        this.position = i2 + 1;
        return ((bArr[i2] & 255) << 8) | i3;
    }

    public long readLong() {
        byte[] bArr = this.data;
        int i = this.position + 1;
        this.position = i;
        long j = (bArr[r1] & 255) << 56;
        int i2 = i + 1;
        this.position = i2;
        long j2 = j | ((bArr[i] & 255) << 48);
        int i3 = i2 + 1;
        this.position = i3;
        long j3 = j2 | ((bArr[i2] & 255) << 40);
        int i4 = i3 + 1;
        this.position = i4;
        long j4 = j3 | ((bArr[i3] & 255) << 32);
        int i5 = i4 + 1;
        this.position = i5;
        long j5 = j4 | ((bArr[i4] & 255) << 24);
        int i6 = i5 + 1;
        this.position = i6;
        long j6 = j5 | ((bArr[i5] & 255) << 16);
        int i7 = i6 + 1;
        this.position = i7;
        long j7 = j6 | ((bArr[i6] & 255) << 8);
        this.position = i7 + 1;
        return (bArr[i7] & 255) | j7;
    }

    public java.lang.String readNullTerminatedString() {
        return readDelimiterTerminatedString((char) 0);
    }

    public java.lang.String readNullTerminatedString(int i) {
        if (i == 0) {
            return "";
        }
        int i2 = (this.position + i) - 1;
        java.lang.String strFromUtf8Bytes = com.google.android.exoplayer2.util.Util.fromUtf8Bytes(this.data, this.position, (i2 >= this.limit || this.data[i2] != 0) ? i : i - 1);
        this.position += i;
        return strFromUtf8Bytes;
    }

    public short readShort() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.position = i2 + 1;
        return (short) ((bArr[i2] & 255) | i3);
    }

    public java.lang.String readString(int i) {
        return readString(i, e.c.b.a.c.f2667c);
    }

    public java.lang.String readString(int i, java.nio.charset.Charset charset) {
        java.lang.String str = new java.lang.String(this.data, this.position, i, charset);
        this.position += i;
        return str;
    }

    public int readSynchSafeInt() {
        return (readUnsignedByte() << 21) | (readUnsignedByte() << 14) | (readUnsignedByte() << 7) | readUnsignedByte();
    }

    public int readUnsignedByte() {
        byte[] bArr = this.data;
        int i = this.position;
        this.position = i + 1;
        return bArr[i] & 255;
    }

    public int readUnsignedFixedPoint1616() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = (bArr[i] & 255) << 8;
        int i4 = i2 + 1;
        this.position = i4;
        int i5 = (bArr[i2] & 255) | i3;
        this.position = i4 + 2;
        return i5;
    }

    public long readUnsignedInt() {
        byte[] bArr = this.data;
        int i = this.position + 1;
        this.position = i;
        long j = (bArr[r1] & 255) << 24;
        int i2 = i + 1;
        this.position = i2;
        long j2 = j | ((bArr[i] & 255) << 16);
        int i3 = i2 + 1;
        this.position = i3;
        long j3 = j2 | ((bArr[i2] & 255) << 8);
        this.position = i3 + 1;
        return (bArr[i3] & 255) | j3;
    }

    public int readUnsignedInt24() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = (bArr[i] & 255) << 16;
        int i4 = i2 + 1;
        this.position = i4;
        int i5 = i3 | ((bArr[i2] & 255) << 8);
        this.position = i4 + 1;
        return (bArr[i4] & 255) | i5;
    }

    public int readUnsignedIntToInt() {
        int i = readInt();
        if (i >= 0) {
            return i;
        }
        throw new java.lang.IllegalStateException(e.a.c.a.a.F(29, "Top bit not zero: ", i));
    }

    public long readUnsignedLongToLong() {
        long j = readLong();
        if (j >= 0) {
            return j;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(38);
        sb.append("Top bit not zero: ");
        sb.append(j);
        throw new java.lang.IllegalStateException(sb.toString());
    }

    public int readUnsignedShort() {
        byte[] bArr = this.data;
        int i = this.position;
        int i2 = i + 1;
        this.position = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.position = i2 + 1;
        return (bArr[i2] & 255) | i3;
    }

    public long readUtf8EncodedLong() {
        int i;
        int i2;
        long j = this.data[this.position];
        int i3 = 7;
        while (true) {
            if (i3 < 0) {
                break;
            }
            if (((1 << i3) & j) != 0) {
                i3--;
            } else if (i3 < 6) {
                j &= r6 - 1;
                i2 = 7 - i3;
            } else if (i3 == 7) {
                i2 = 1;
            }
        }
        i2 = 0;
        if (i2 == 0) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(55);
            sb.append("Invalid UTF-8 sequence first byte: ");
            sb.append(j);
            throw new java.lang.NumberFormatException(sb.toString());
        }
        for (i = 1; i < i2; i++) {
            if ((this.data[this.position + i] & 192) != 128) {
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder(62);
                sb2.append("Invalid UTF-8 sequence continuation byte: ");
                sb2.append(j);
                throw new java.lang.NumberFormatException(sb2.toString());
            }
            j = (j << 6) | (r3 & 63);
        }
        this.position += i2;
        return j;
    }

    public void reset(int i) {
        reset(capacity() < i ? new byte[i] : this.data, i);
    }

    public void reset(byte[] bArr) {
        reset(bArr, bArr.length);
    }

    public void reset(byte[] bArr, int i) {
        this.data = bArr;
        this.limit = i;
        this.position = 0;
    }

    public void setLimit(int i) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i >= 0 && i <= this.data.length);
        this.limit = i;
    }

    public void setPosition(int i) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i >= 0 && i <= this.limit);
        this.position = i;
    }

    public void skipBytes(int i) {
        setPosition(this.position + i);
    }
}
