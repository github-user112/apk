package com.alibaba.fastjson.serializer;

/* loaded from: classes.dex */
public final class SerializeWriter extends java.io.Writer {
    public static int BUFFER_THRESHOLD;
    public static final int nonDirectFeatures;
    public boolean beanToArray;
    public boolean browserSecure;
    public char[] buf;
    public int count;
    public boolean disableCircularReferenceDetect;
    public int features;
    public char keySeperator;
    public int maxBufSize;
    public boolean notWriteDefaultValue;
    public boolean quoteFieldNames;
    public long sepcialBits;
    public boolean sortField;
    public boolean useSingleQuotes;
    public boolean writeDirect;
    public boolean writeEnumUsingName;
    public boolean writeEnumUsingToString;
    public boolean writeNonStringValueAsString;
    public final java.io.Writer writer;
    public static final java.lang.ThreadLocal<char[]> bufLocal = new java.lang.ThreadLocal<>();
    public static final java.lang.ThreadLocal<byte[]> bytesBufLocal = new java.lang.ThreadLocal<>();
    public static final char[] VALUE_TRUE = ":true".toCharArray();
    public static final char[] VALUE_FALSE = ":false".toCharArray();

    static {
        int i;
        BUFFER_THRESHOLD = 131072;
        try {
            java.lang.String stringProperty = com.alibaba.fastjson.util.IOUtils.getStringProperty("fastjson.serializer_buffer_threshold");
            if (stringProperty != null && stringProperty.length() > 0 && (i = java.lang.Integer.parseInt(stringProperty)) >= 64 && i <= 65536) {
                BUFFER_THRESHOLD = i * 1024;
            }
        } catch (java.lang.Throwable unused) {
        }
        nonDirectFeatures = com.alibaba.fastjson.serializer.SerializerFeature.UseSingleQuotes.mask | 0 | com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible.mask | com.alibaba.fastjson.serializer.SerializerFeature.PrettyFormat.mask | com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingToString.mask | com.alibaba.fastjson.serializer.SerializerFeature.WriteNonStringValueAsString.mask | com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial.mask | com.alibaba.fastjson.serializer.SerializerFeature.IgnoreErrorGetter.mask | com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName.mask | com.alibaba.fastjson.serializer.SerializerFeature.NotWriteDefaultValue.mask;
    }

    public SerializeWriter() {
        this((java.io.Writer) null);
    }

    public SerializeWriter(int i) {
        this((java.io.Writer) null, i);
    }

    public SerializeWriter(java.io.Writer writer) {
        this(writer, com.alibaba.fastjson.JSON.DEFAULT_GENERATE_FEATURE, com.alibaba.fastjson.serializer.SerializerFeature.EMPTY);
    }

    public SerializeWriter(java.io.Writer writer, int i) {
        this.maxBufSize = -1;
        this.writer = writer;
        if (i <= 0) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Negative initial size: ", i));
        }
        this.buf = new char[i];
        computeFeatures();
    }

    public SerializeWriter(java.io.Writer writer, int i, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        this.maxBufSize = -1;
        this.writer = writer;
        char[] cArr = bufLocal.get();
        this.buf = cArr;
        if (cArr != null) {
            bufLocal.set(null);
        } else {
            this.buf = new char[2048];
        }
        for (com.alibaba.fastjson.serializer.SerializerFeature serializerFeature : serializerFeatureArr) {
            i |= serializerFeature.getMask();
        }
        this.features = i;
        computeFeatures();
    }

    public SerializeWriter(java.io.Writer writer, com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        this(writer, 0, serializerFeatureArr);
    }

    public SerializeWriter(com.alibaba.fastjson.serializer.SerializerFeature... serializerFeatureArr) {
        this((java.io.Writer) null, serializerFeatureArr);
    }

    private int encodeToUTF8(java.io.OutputStream outputStream) throws java.io.IOException {
        double d2 = this.count;
        java.lang.Double.isNaN(d2);
        int i = (int) (d2 * 3.0d);
        byte[] bArr = bytesBufLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            bytesBufLocal.set(bArr);
        }
        byte[] bArr2 = bArr.length < i ? new byte[i] : bArr;
        int iEncodeUTF8 = com.alibaba.fastjson.util.IOUtils.encodeUTF8(this.buf, 0, this.count, bArr2);
        outputStream.write(bArr2, 0, iEncodeUTF8);
        if (bArr2 != bArr && bArr2.length <= BUFFER_THRESHOLD) {
            bytesBufLocal.set(bArr2);
        }
        return iEncodeUTF8;
    }

    private byte[] encodeToUTF8Bytes() {
        double d2 = this.count;
        java.lang.Double.isNaN(d2);
        int i = (int) (d2 * 3.0d);
        byte[] bArr = bytesBufLocal.get();
        if (bArr == null) {
            bArr = new byte[8192];
            bytesBufLocal.set(bArr);
        }
        byte[] bArr2 = bArr.length < i ? new byte[i] : bArr;
        int iEncodeUTF8 = com.alibaba.fastjson.util.IOUtils.encodeUTF8(this.buf, 0, this.count, bArr2);
        byte[] bArr3 = new byte[iEncodeUTF8];
        java.lang.System.arraycopy(bArr2, 0, bArr3, 0, iEncodeUTF8);
        if (bArr2 != bArr && bArr2.length <= BUFFER_THRESHOLD) {
            bytesBufLocal.set(bArr2);
        }
        return bArr3;
    }

    private void writeEnumFieldValue(char c2, java.lang.String str, java.lang.String str2) {
        if (this.useSingleQuotes) {
            writeFieldValue(c2, str, str2);
        } else {
            writeFieldValueStringWithDoubleQuote(c2, str, str2);
        }
    }

    private void writeKeyWithSingleQuoteIfHasSpecial(java.lang.String str) {
        byte[] bArr = com.alibaba.fastjson.util.IOUtils.specicalFlags_singleQuotes;
        int length = str.length();
        boolean z = true;
        int i = this.count + length + 1;
        int i2 = 0;
        if (i > this.buf.length) {
            if (this.writer != null) {
                if (length == 0) {
                    write(39);
                    write(39);
                    write(58);
                    return;
                }
                int i3 = 0;
                while (true) {
                    if (i3 < length) {
                        char cCharAt = str.charAt(i3);
                        if (cCharAt < bArr.length && bArr[cCharAt] != 0) {
                            break;
                        } else {
                            i3++;
                        }
                    } else {
                        z = false;
                        break;
                    }
                }
                if (z) {
                    write(39);
                }
                while (i2 < length) {
                    char cCharAt2 = str.charAt(i2);
                    if (cCharAt2 < bArr.length && bArr[cCharAt2] != 0) {
                        write(92);
                        cCharAt2 = com.alibaba.fastjson.util.IOUtils.replaceChars[cCharAt2];
                    }
                    write(cCharAt2);
                    i2++;
                }
                if (z) {
                    write(39);
                }
                write(58);
                return;
            }
            expandCapacity(i);
        }
        if (length == 0) {
            int i4 = this.count;
            if (i4 + 3 > this.buf.length) {
                expandCapacity(i4 + 3);
            }
            char[] cArr = this.buf;
            int i5 = this.count;
            int i6 = i5 + 1;
            this.count = i6;
            cArr[i5] = '\'';
            int i7 = i6 + 1;
            this.count = i7;
            cArr[i6] = '\'';
            this.count = i7 + 1;
            cArr[i7] = ':';
            return;
        }
        int i8 = this.count;
        int i9 = i8 + length;
        str.getChars(0, length, this.buf, i8);
        this.count = i;
        int i10 = i8;
        boolean z2 = false;
        while (i10 < i9) {
            char[] cArr2 = this.buf;
            char c2 = cArr2[i10];
            if (c2 < bArr.length && bArr[c2] != 0) {
                if (z2) {
                    i++;
                    if (i > cArr2.length) {
                        expandCapacity(i);
                    }
                    this.count = i;
                    char[] cArr3 = this.buf;
                    int i11 = i10 + 1;
                    java.lang.System.arraycopy(cArr3, i11, cArr3, i10 + 2, i9 - i10);
                    char[] cArr4 = this.buf;
                    cArr4[i10] = '\\';
                    cArr4[i11] = com.alibaba.fastjson.util.IOUtils.replaceChars[c2];
                    i9++;
                    i10 = i11;
                } else {
                    i += 3;
                    if (i > cArr2.length) {
                        expandCapacity(i);
                    }
                    this.count = i;
                    char[] cArr5 = this.buf;
                    int i12 = i10 + 1;
                    java.lang.System.arraycopy(cArr5, i12, cArr5, i10 + 3, (i9 - i10) - 1);
                    char[] cArr6 = this.buf;
                    java.lang.System.arraycopy(cArr6, i2, cArr6, 1, i10);
                    char[] cArr7 = this.buf;
                    cArr7[i8] = '\'';
                    cArr7[i12] = '\\';
                    int i13 = i12 + 1;
                    cArr7[i13] = com.alibaba.fastjson.util.IOUtils.replaceChars[c2];
                    i9 += 2;
                    cArr7[this.count - 2] = '\'';
                    i10 = i13;
                    z2 = true;
                }
            }
            i10++;
            i2 = 0;
        }
        this.buf[i - 1] = ':';
    }

    @Override // java.io.Writer, java.lang.Appendable
    public com.alibaba.fastjson.serializer.SerializeWriter append(char c2) {
        write(c2);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public com.alibaba.fastjson.serializer.SerializeWriter append(java.lang.CharSequence charSequence) throws java.io.IOException {
        java.lang.String string = charSequence == null ? "null" : charSequence.toString();
        write(string, 0, string.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public com.alibaba.fastjson.serializer.SerializeWriter append(java.lang.CharSequence charSequence, int i, int i2) throws java.io.IOException {
        if (charSequence == null) {
            charSequence = "null";
        }
        java.lang.String string = charSequence.subSequence(i, i2).toString();
        write(string, 0, string.length());
        return this;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.writer != null && this.count > 0) {
            flush();
        }
        char[] cArr = this.buf;
        if (cArr.length <= BUFFER_THRESHOLD) {
            bufLocal.set(cArr);
        }
        this.buf = null;
    }

    public void computeFeatures() {
        this.quoteFieldNames = (this.features & com.alibaba.fastjson.serializer.SerializerFeature.QuoteFieldNames.mask) != 0;
        this.useSingleQuotes = (this.features & com.alibaba.fastjson.serializer.SerializerFeature.UseSingleQuotes.mask) != 0;
        this.sortField = (this.features & com.alibaba.fastjson.serializer.SerializerFeature.SortField.mask) != 0;
        this.disableCircularReferenceDetect = (this.features & com.alibaba.fastjson.serializer.SerializerFeature.DisableCircularReferenceDetect.mask) != 0;
        this.beanToArray = (this.features & com.alibaba.fastjson.serializer.SerializerFeature.BeanToArray.mask) != 0;
        this.writeNonStringValueAsString = (this.features & com.alibaba.fastjson.serializer.SerializerFeature.WriteNonStringValueAsString.mask) != 0;
        this.notWriteDefaultValue = (this.features & com.alibaba.fastjson.serializer.SerializerFeature.NotWriteDefaultValue.mask) != 0;
        this.writeEnumUsingName = (this.features & com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingName.mask) != 0;
        this.writeEnumUsingToString = (this.features & com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingToString.mask) != 0;
        this.writeDirect = this.quoteFieldNames && (this.features & nonDirectFeatures) == 0 && (this.beanToArray || this.writeEnumUsingName);
        this.keySeperator = this.useSingleQuotes ? '\'' : '\"';
        boolean z = (this.features & com.alibaba.fastjson.serializer.SerializerFeature.BrowserSecure.mask) != 0;
        this.browserSecure = z;
        this.sepcialBits = z ? 5764610843043954687L : (this.features & com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial.mask) != 0 ? 140758963191807L : 21474836479L;
    }

    public void config(com.alibaba.fastjson.serializer.SerializerFeature serializerFeature, boolean z) {
        int mask;
        if (z) {
            mask = this.features | serializerFeature.getMask();
            this.features = mask;
            if (serializerFeature != com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingToString) {
                if (serializerFeature == com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingName) {
                    serializerFeature = com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingToString;
                }
                computeFeatures();
            }
            serializerFeature = com.alibaba.fastjson.serializer.SerializerFeature.WriteEnumUsingName;
        } else {
            mask = this.features;
        }
        this.features = (serializerFeature.getMask() ^ (-1)) & mask;
        computeFeatures();
    }

    public void expandCapacity(int i) {
        char[] cArr;
        int i2 = this.maxBufSize;
        if (i2 != -1 && i >= i2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("serialize exceeded MAX_OUTPUT_LENGTH=");
            sbO.append(this.maxBufSize);
            sbO.append(", minimumCapacity=");
            sbO.append(i);
            throw new com.alibaba.fastjson.JSONException(sbO.toString());
        }
        char[] cArr2 = this.buf;
        int length = cArr2.length + (cArr2.length >> 1) + 1;
        if (length >= i) {
            i = length;
        }
        char[] cArr3 = new char[i];
        java.lang.System.arraycopy(this.buf, 0, cArr3, 0, this.count);
        if (this.buf.length < BUFFER_THRESHOLD && ((cArr = bufLocal.get()) == null || cArr.length < this.buf.length)) {
            bufLocal.set(this.buf);
        }
        this.buf = cArr3;
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws java.io.IOException {
        java.io.Writer writer = this.writer;
        if (writer == null) {
            return;
        }
        try {
            writer.write(this.buf, 0, this.count);
            this.writer.flush();
            this.count = 0;
        } catch (java.io.IOException e2) {
            throw new com.alibaba.fastjson.JSONException(e2.getMessage(), e2);
        }
    }

    public int getBufferLength() {
        return this.buf.length;
    }

    public int getMaxBufSize() {
        return this.maxBufSize;
    }

    public boolean isEnabled(int i) {
        return (i & this.features) != 0;
    }

    public boolean isEnabled(com.alibaba.fastjson.serializer.SerializerFeature serializerFeature) {
        return (serializerFeature.mask & this.features) != 0;
    }

    public boolean isNotWriteDefaultValue() {
        return this.notWriteDefaultValue;
    }

    public boolean isSortField() {
        return this.sortField;
    }

    public void reset() {
        this.count = 0;
    }

    public void setMaxBufSize(int i) {
        if (i >= this.buf.length) {
            this.maxBufSize = i;
        } else {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("must > ");
            sbO.append(this.buf.length);
            throw new com.alibaba.fastjson.JSONException(sbO.toString());
        }
    }

    public int size() {
        return this.count;
    }

    public byte[] toBytes(java.lang.String str) {
        return toBytes((str == null || com.google.android.exoplayer2.C.UTF8_NAME.equals(str)) ? com.alibaba.fastjson.util.IOUtils.UTF8 : java.nio.charset.Charset.forName(str));
    }

    public byte[] toBytes(java.nio.charset.Charset charset) {
        if (this.writer == null) {
            return charset == com.alibaba.fastjson.util.IOUtils.UTF8 ? encodeToUTF8Bytes() : new java.lang.String(this.buf, 0, this.count).getBytes(charset);
        }
        throw new java.lang.UnsupportedOperationException("writer not null");
    }

    public char[] toCharArray() {
        if (this.writer != null) {
            throw new java.lang.UnsupportedOperationException("writer not null");
        }
        int i = this.count;
        char[] cArr = new char[i];
        java.lang.System.arraycopy(this.buf, 0, cArr, 0, i);
        return cArr;
    }

    public char[] toCharArrayForSpringWebSocket() {
        if (this.writer != null) {
            throw new java.lang.UnsupportedOperationException("writer not null");
        }
        int i = this.count;
        char[] cArr = new char[i - 2];
        java.lang.System.arraycopy(this.buf, 1, cArr, 0, i - 2);
        return cArr;
    }

    public java.lang.String toString() {
        return new java.lang.String(this.buf, 0, this.count);
    }

    @Override // java.io.Writer
    public void write(int i) {
        int i2 = 1;
        int i3 = this.count + 1;
        if (i3 <= this.buf.length) {
            i2 = i3;
        } else if (this.writer == null) {
            expandCapacity(i3);
            i2 = i3;
        } else {
            flush();
        }
        this.buf[this.count] = (char) i;
        this.count = i2;
    }

    @Override // java.io.Writer
    public void write(java.lang.String str) {
        if (str == null) {
            writeNull();
        } else {
            write(str, 0, str.length());
        }
    }

    @Override // java.io.Writer
    public void write(java.lang.String str, int i, int i2) throws java.io.IOException {
        int i3;
        int i4 = this.count + i2;
        if (i4 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(i4);
            } else {
                while (true) {
                    char[] cArr = this.buf;
                    int length = cArr.length;
                    int i5 = this.count;
                    int i6 = length - i5;
                    i3 = i + i6;
                    str.getChars(i, i3, cArr, i5);
                    this.count = this.buf.length;
                    flush();
                    i2 -= i6;
                    if (i2 <= this.buf.length) {
                        break;
                    } else {
                        i = i3;
                    }
                }
                i4 = i2;
                i = i3;
            }
        }
        str.getChars(i, i2 + i, this.buf, this.count);
        this.count = i4;
    }

    public void write(java.util.List<java.lang.String> list) {
        boolean z;
        if (list.isEmpty()) {
            write("[]");
            return;
        }
        int i = this.count;
        int size = list.size();
        int i2 = i;
        int i3 = 0;
        while (i3 < size) {
            java.lang.String str = list.get(i3);
            if (str == null) {
                z = true;
            } else {
                int length = str.length();
                z = false;
                for (int i4 = 0; i4 < length; i4++) {
                    char cCharAt = str.charAt(i4);
                    z = cCharAt < ' ' || cCharAt > '~' || cCharAt == '\"' || cCharAt == '\\';
                    if (z) {
                        break;
                    }
                }
            }
            if (z) {
                this.count = i;
                write(91);
                for (int i5 = 0; i5 < list.size(); i5++) {
                    java.lang.String str2 = list.get(i5);
                    if (i5 != 0) {
                        write(44);
                    }
                    if (str2 == null) {
                        write("null");
                    } else {
                        writeStringWithDoubleQuote(str2, (char) 0);
                    }
                }
                write(93);
                return;
            }
            int length2 = str.length() + i2 + 3;
            if (i3 == list.size() - 1) {
                length2++;
            }
            if (length2 > this.buf.length) {
                this.count = i2;
                expandCapacity(length2);
            }
            char[] cArr = this.buf;
            int i6 = i2 + 1;
            if (i3 == 0) {
                cArr[i2] = '[';
            } else {
                cArr[i2] = ',';
            }
            int i7 = i6 + 1;
            this.buf[i6] = '\"';
            str.getChars(0, str.length(), this.buf, i7);
            int length3 = str.length() + i7;
            this.buf[length3] = '\"';
            i3++;
            i2 = length3 + 1;
        }
        this.buf[i2] = ']';
        this.count = i2 + 1;
    }

    public void write(boolean z) {
        write(z ? "true" : "false");
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws java.io.IOException {
        int i3;
        if (i < 0 || i > cArr.length || i2 < 0 || (i3 = i + i2) > cArr.length || i3 < 0) {
            throw new java.lang.IndexOutOfBoundsException();
        }
        if (i2 == 0) {
            return;
        }
        int i4 = this.count + i2;
        if (i4 > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(i4);
            } else {
                do {
                    char[] cArr2 = this.buf;
                    int length = cArr2.length;
                    int i5 = this.count;
                    int i6 = length - i5;
                    java.lang.System.arraycopy(cArr, i, cArr2, i5, i6);
                    this.count = this.buf.length;
                    flush();
                    i2 -= i6;
                    i += i6;
                } while (i2 > this.buf.length);
                i4 = i2;
            }
        }
        java.lang.System.arraycopy(cArr, i, this.buf, this.count, i2);
        this.count = i4;
    }

    public void writeByteArray(byte[] bArr) {
        if (isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName.mask)) {
            writeHex(bArr);
            return;
        }
        int length = bArr.length;
        char c2 = this.useSingleQuotes ? '\'' : '\"';
        if (length == 0) {
            write(this.useSingleQuotes ? "''" : "\"\"");
            return;
        }
        char[] cArr = com.alibaba.fastjson.util.IOUtils.CA;
        int i = (length / 3) * 3;
        int i2 = length - 1;
        int i3 = this.count;
        int i4 = (((i2 / 3) + 1) << 2) + i3 + 2;
        if (i4 > this.buf.length) {
            if (this.writer != null) {
                write(c2);
                int i5 = 0;
                while (i5 < i) {
                    int i6 = i5 + 1;
                    int i7 = i6 + 1;
                    int i8 = ((bArr[i5] & 255) << 16) | ((bArr[i6] & 255) << 8) | (bArr[i7] & 255);
                    write(cArr[(i8 >>> 18) & 63]);
                    write(cArr[(i8 >>> 12) & 63]);
                    write(cArr[(i8 >>> 6) & 63]);
                    write(cArr[i8 & 63]);
                    i5 = i7 + 1;
                }
                int i9 = length - i;
                if (i9 > 0) {
                    int i10 = ((bArr[i] & 255) << 10) | (i9 == 2 ? (bArr[i2] & 255) << 2 : 0);
                    write(cArr[i10 >> 12]);
                    write(cArr[(i10 >>> 6) & 63]);
                    write(i9 == 2 ? cArr[i10 & 63] : '=');
                    write(61);
                }
                write(c2);
                return;
            }
            expandCapacity(i4);
        }
        this.count = i4;
        int i11 = i3 + 1;
        this.buf[i3] = c2;
        int i12 = 0;
        while (i12 < i) {
            int i13 = i12 + 1;
            int i14 = i13 + 1;
            int i15 = ((bArr[i12] & 255) << 16) | ((bArr[i13] & 255) << 8);
            int i16 = i14 + 1;
            int i17 = i15 | (bArr[i14] & 255);
            char[] cArr2 = this.buf;
            int i18 = i11 + 1;
            cArr2[i11] = cArr[(i17 >>> 18) & 63];
            int i19 = i18 + 1;
            cArr2[i18] = cArr[(i17 >>> 12) & 63];
            int i20 = i19 + 1;
            cArr2[i19] = cArr[(i17 >>> 6) & 63];
            i11 = i20 + 1;
            cArr2[i20] = cArr[i17 & 63];
            i12 = i16;
        }
        int i21 = length - i;
        if (i21 > 0) {
            int i22 = ((bArr[i] & 255) << 10) | (i21 == 2 ? (bArr[i2] & 255) << 2 : 0);
            char[] cArr3 = this.buf;
            cArr3[i4 - 5] = cArr[i22 >> 12];
            cArr3[i4 - 4] = cArr[(i22 >>> 6) & 63];
            cArr3[i4 - 3] = i21 == 2 ? cArr[i22 & 63] : '=';
            this.buf[i4 - 2] = '=';
        }
        this.buf[i4 - 1] = c2;
    }

    public void writeDouble(double d2, boolean z) throws java.io.IOException {
        if (java.lang.Double.isNaN(d2) || java.lang.Double.isInfinite(d2)) {
            writeNull();
            return;
        }
        int i = this.count + 24;
        if (i > this.buf.length) {
            if (this.writer != null) {
                java.lang.String string = com.alibaba.fastjson.util.RyuDouble.toString(d2);
                write(string, 0, string.length());
                if (z && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
                    write(68);
                    return;
                }
                return;
            }
            expandCapacity(i);
        }
        this.count += com.alibaba.fastjson.util.RyuDouble.toString(d2, this.buf, this.count);
        if (z && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
            write(68);
        }
    }

    public void writeEnum(java.lang.Enum<?> r3) {
        if (r3 == null) {
            writeNull();
            return;
        }
        java.lang.String string = null;
        if (this.writeEnumUsingName && !this.writeEnumUsingToString) {
            string = r3.name();
        } else if (this.writeEnumUsingToString) {
            string = r3.toString();
        }
        if (string == null) {
            writeInt(r3.ordinal());
            return;
        }
        int i = isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.UseSingleQuotes) ? 39 : 34;
        write(i);
        write(string);
        write(i);
    }

    public void writeFieldName(java.lang.String str) {
        writeFieldName(str, false);
    }

    public void writeFieldName(java.lang.String str, boolean z) {
        if (str == null) {
            write("null:");
            return;
        }
        if (!this.useSingleQuotes) {
            if (!this.quoteFieldNames) {
                boolean z2 = true;
                boolean z3 = str.length() == 0;
                int i = 0;
                while (true) {
                    if (i >= str.length()) {
                        z2 = z3;
                        break;
                    }
                    char cCharAt = str.charAt(i);
                    if ((cCharAt < '@' && (this.sepcialBits & (1 << cCharAt)) != 0) || cCharAt == '\\') {
                        break;
                    } else {
                        i++;
                    }
                }
                if (!z2) {
                    write(str);
                }
            }
            writeStringWithDoubleQuote(str, ':');
            return;
        }
        if (!this.quoteFieldNames) {
            writeKeyWithSingleQuoteIfHasSpecial(str);
            return;
        }
        writeStringWithSingleQuote(str);
        write(58);
    }

    public void writeFieldNameDirect(java.lang.String str) {
        int length = str.length();
        int i = this.count + length + 3;
        if (i > this.buf.length) {
            expandCapacity(i);
        }
        int i2 = this.count;
        char[] cArr = this.buf;
        cArr[i2] = '\"';
        str.getChars(0, length, cArr, i2 + 1);
        this.count = i;
        char[] cArr2 = this.buf;
        cArr2[i - 2] = '\"';
        cArr2[i - 1] = ':';
    }

    public void writeFieldValue(char c2, java.lang.String str, char c3) {
        write(c2);
        writeFieldName(str);
        writeString(c3 == 0 ? com.tencent.tinker.android.dex.DexFormat.MAGIC_SUFFIX : java.lang.Character.toString(c3));
    }

    public void writeFieldValue(char c2, java.lang.String str, double d2) throws java.io.IOException {
        write(c2);
        writeFieldName(str);
        writeDouble(d2, false);
    }

    public void writeFieldValue(char c2, java.lang.String str, float f2) throws java.io.IOException {
        write(c2);
        writeFieldName(str);
        writeFloat(f2, false);
    }

    public void writeFieldValue(char c2, java.lang.String str, int i) {
        if (i == Integer.MIN_VALUE || !this.quoteFieldNames) {
            write(c2);
            writeFieldName(str);
            writeInt(i);
            return;
        }
        int iStringSize = i < 0 ? com.alibaba.fastjson.util.IOUtils.stringSize(-i) + 1 : com.alibaba.fastjson.util.IOUtils.stringSize(i);
        int length = str.length();
        int i2 = this.count + length + 4 + iStringSize;
        if (i2 > this.buf.length) {
            if (this.writer != null) {
                write(c2);
                writeFieldName(str);
                writeInt(i);
                return;
            }
            expandCapacity(i2);
        }
        int i3 = this.count;
        this.count = i2;
        char[] cArr = this.buf;
        cArr[i3] = c2;
        int i4 = i3 + length + 1;
        cArr[i3 + 1] = this.keySeperator;
        str.getChars(0, length, cArr, i3 + 2);
        char[] cArr2 = this.buf;
        cArr2[i4 + 1] = this.keySeperator;
        cArr2[i4 + 2] = ':';
        com.alibaba.fastjson.util.IOUtils.getChars(i, this.count, cArr2);
    }

    public void writeFieldValue(char c2, java.lang.String str, long j) {
        if (j == Long.MIN_VALUE || !this.quoteFieldNames || isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible.mask)) {
            write(c2);
            writeFieldName(str);
            writeLong(j);
            return;
        }
        int iStringSize = j < 0 ? com.alibaba.fastjson.util.IOUtils.stringSize(-j) + 1 : com.alibaba.fastjson.util.IOUtils.stringSize(j);
        int length = str.length();
        int i = this.count + length + 4 + iStringSize;
        if (i > this.buf.length) {
            if (this.writer != null) {
                write(c2);
                writeFieldName(str);
                writeLong(j);
                return;
            }
            expandCapacity(i);
        }
        int i2 = this.count;
        this.count = i;
        char[] cArr = this.buf;
        cArr[i2] = c2;
        int i3 = i2 + length + 1;
        cArr[i2 + 1] = this.keySeperator;
        str.getChars(0, length, cArr, i2 + 2);
        char[] cArr2 = this.buf;
        cArr2[i3 + 1] = this.keySeperator;
        cArr2[i3 + 2] = ':';
        com.alibaba.fastjson.util.IOUtils.getChars(j, this.count, cArr2);
    }

    public void writeFieldValue(char c2, java.lang.String str, java.lang.Enum<?> r4) {
        java.lang.String string;
        if (r4 == null) {
            write(c2);
            writeFieldName(str);
            writeNull();
            return;
        }
        if (this.writeEnumUsingName && !this.writeEnumUsingToString) {
            string = r4.name();
        } else {
            if (!this.writeEnumUsingToString) {
                writeFieldValue(c2, str, r4.ordinal());
                return;
            }
            string = r4.toString();
        }
        writeEnumFieldValue(c2, str, string);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0030, code lost:
    
        if (r4 == null) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0032, code lost:
    
        writeNull();
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0036, code lost:
    
        writeString(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0039, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000e, code lost:
    
        if (r4 == null) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeFieldValue(char r2, java.lang.String r3, java.lang.String r4) {
        /*
            r1 = this;
            boolean r0 = r1.quoteFieldNames
            if (r0 == 0) goto L2a
            boolean r0 = r1.useSingleQuotes
            if (r0 == 0) goto L11
            r1.write(r2)
            r1.writeFieldName(r3)
            if (r4 != 0) goto L36
            goto L32
        L11:
            com.alibaba.fastjson.serializer.SerializerFeature r0 = com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible
            boolean r0 = r1.isEnabled(r0)
            if (r0 == 0) goto L26
            r1.write(r2)
            r2 = 58
            r1.writeStringWithDoubleQuote(r3, r2)
            r2 = 0
            r1.writeStringWithDoubleQuote(r4, r2)
            goto L39
        L26:
            r1.writeFieldValueStringWithDoubleQuoteCheck(r2, r3, r4)
            goto L39
        L2a:
            r1.write(r2)
            r1.writeFieldName(r3)
            if (r4 != 0) goto L36
        L32:
            r1.writeNull()
            goto L39
        L36:
            r1.writeString(r4)
        L39:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.SerializeWriter.writeFieldValue(char, java.lang.String, java.lang.String):void");
    }

    public void writeFieldValue(char c2, java.lang.String str, java.math.BigDecimal bigDecimal) {
        write(c2);
        writeFieldName(str);
        if (bigDecimal == null) {
            writeNull();
        } else {
            int iScale = bigDecimal.scale();
            write((!isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteBigDecimalAsPlain) || iScale < -100 || iScale >= 100) ? bigDecimal.toString() : bigDecimal.toPlainString());
        }
    }

    public void writeFieldValue(char c2, java.lang.String str, boolean z) {
        if (this.quoteFieldNames) {
            int i = z ? 4 : 5;
            int length = str.length();
            int i2 = this.count + length + 4 + i;
            if (i2 > this.buf.length) {
                if (this.writer != null) {
                    write(c2);
                    writeString(str);
                    write(58);
                } else {
                    expandCapacity(i2);
                }
            }
            int i3 = this.count;
            this.count = i2;
            char[] cArr = this.buf;
            cArr[i3] = c2;
            int i4 = i3 + length + 1;
            cArr[i3 + 1] = this.keySeperator;
            str.getChars(0, length, cArr, i3 + 2);
            char[] cArr2 = this.buf;
            cArr2[i4 + 1] = this.keySeperator;
            if (z) {
                java.lang.System.arraycopy(VALUE_TRUE, 0, cArr2, i4 + 2, 5);
                return;
            } else {
                java.lang.System.arraycopy(VALUE_FALSE, 0, cArr2, i4 + 2, 6);
                return;
            }
        }
        write(c2);
        writeFieldName(str);
        write(z);
    }

    public void writeFieldValueStringWithDoubleQuote(char c2, java.lang.String str, java.lang.String str2) {
        int length = str.length();
        int i = this.count;
        int length2 = str2.length();
        int i2 = length + length2 + 6 + i;
        if (i2 > this.buf.length) {
            if (this.writer != null) {
                write(c2);
                writeStringWithDoubleQuote(str, ':');
                writeStringWithDoubleQuote(str2, (char) 0);
                return;
            }
            expandCapacity(i2);
        }
        char[] cArr = this.buf;
        int i3 = this.count;
        cArr[i3] = c2;
        int i4 = i3 + 2;
        int i5 = i4 + length;
        cArr[i3 + 1] = '\"';
        str.getChars(0, length, cArr, i4);
        this.count = i2;
        char[] cArr2 = this.buf;
        cArr2[i5] = '\"';
        int i6 = i5 + 1;
        int i7 = i6 + 1;
        cArr2[i6] = ':';
        cArr2[i7] = '\"';
        str2.getChars(0, length2, cArr2, i7 + 1);
        this.buf[this.count - 1] = '\"';
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00a1 A[PHI: r1 r6 r10 r12
  0x00a1: PHI (r1v39 int) = (r1v29 int), (r1v3 int) binds: [B:55:0x00dc, B:30:0x009d] A[DONT_GENERATE, DONT_INLINE]
  0x00a1: PHI (r6v14 int) = (r6v12 int), (r6v16 int) binds: [B:55:0x00dc, B:30:0x009d] A[DONT_GENERATE, DONT_INLINE]
  0x00a1: PHI (r10v15 int) = (r10v13 int), (r10v17 int) binds: [B:55:0x00dc, B:30:0x009d] A[DONT_GENERATE, DONT_INLINE]
  0x00a1: PHI (r12v22 int) = (r12v3 int), (r12v24 int) binds: [B:55:0x00dc, B:30:0x009d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00d9  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00de  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeFieldValueStringWithDoubleQuoteCheck(char r22, java.lang.String r23, java.lang.String r24) {
        /*
            Method dump skipped, instructions count: 780
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.SerializeWriter.writeFieldValueStringWithDoubleQuoteCheck(char, java.lang.String, java.lang.String):void");
    }

    public void writeFloat(float f2, boolean z) throws java.io.IOException {
        if (f2 != f2 || f2 == Float.POSITIVE_INFINITY || f2 == Float.NEGATIVE_INFINITY) {
            writeNull();
            return;
        }
        int i = this.count + 15;
        if (i > this.buf.length) {
            if (this.writer != null) {
                java.lang.String string = com.alibaba.fastjson.util.RyuFloat.toString(f2);
                write(string, 0, string.length());
                if (z && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
                    write(70);
                    return;
                }
                return;
            }
            expandCapacity(i);
        }
        this.count += com.alibaba.fastjson.util.RyuFloat.toString(f2, this.buf, this.count);
        if (z && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName)) {
            write(70);
        }
    }

    public void writeHex(byte[] bArr) {
        int length = (bArr.length * 2) + this.count + 3;
        if (length > this.buf.length) {
            expandCapacity(length);
        }
        char[] cArr = this.buf;
        int i = this.count;
        int i2 = i + 1;
        this.count = i2;
        cArr[i] = 'x';
        this.count = i2 + 1;
        cArr[i2] = '\'';
        for (byte b : bArr) {
            int i3 = b & 255;
            int i4 = i3 >> 4;
            int i5 = i3 & 15;
            char[] cArr2 = this.buf;
            int i6 = this.count;
            this.count = i6 + 1;
            int i7 = 48;
            cArr2[i6] = (char) (i4 + (i4 < 10 ? 48 : 55));
            char[] cArr3 = this.buf;
            int i8 = this.count;
            this.count = i8 + 1;
            if (i5 >= 10) {
                i7 = 55;
            }
            cArr3[i8] = (char) (i5 + i7);
        }
        char[] cArr4 = this.buf;
        int i9 = this.count;
        this.count = i9 + 1;
        cArr4[i9] = '\'';
    }

    public void writeInt(int i) {
        if (i == Integer.MIN_VALUE) {
            write("-2147483648");
            return;
        }
        int iStringSize = i < 0 ? com.alibaba.fastjson.util.IOUtils.stringSize(-i) + 1 : com.alibaba.fastjson.util.IOUtils.stringSize(i);
        int i2 = this.count + iStringSize;
        if (i2 > this.buf.length) {
            if (this.writer != null) {
                char[] cArr = new char[iStringSize];
                com.alibaba.fastjson.util.IOUtils.getChars(i, iStringSize, cArr);
                write(cArr, 0, iStringSize);
                return;
            }
            expandCapacity(i2);
        }
        com.alibaba.fastjson.util.IOUtils.getChars(i, i2, this.buf);
        this.count = i2;
    }

    public void writeLong(long j) {
        boolean z = isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.BrowserCompatible) && !isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteClassName) && (j > 9007199254740991L || j < -9007199254740991L);
        if (j == Long.MIN_VALUE) {
            write(z ? "\"-9223372036854775808\"" : "-9223372036854775808");
            return;
        }
        int iStringSize = j < 0 ? com.alibaba.fastjson.util.IOUtils.stringSize(-j) + 1 : com.alibaba.fastjson.util.IOUtils.stringSize(j);
        int i = this.count + iStringSize;
        if (z) {
            i += 2;
        }
        if (i > this.buf.length) {
            if (this.writer != null) {
                char[] cArr = new char[iStringSize];
                com.alibaba.fastjson.util.IOUtils.getChars(j, iStringSize, cArr);
                if (!z) {
                    write(cArr, 0, iStringSize);
                    return;
                }
                write(34);
                write(cArr, 0, iStringSize);
                write(34);
                return;
            }
            expandCapacity(i);
        }
        if (z) {
            char[] cArr2 = this.buf;
            cArr2[this.count] = '\"';
            int i2 = i - 1;
            com.alibaba.fastjson.util.IOUtils.getChars(j, i2, cArr2);
            this.buf[i2] = '\"';
        } else {
            com.alibaba.fastjson.util.IOUtils.getChars(j, i, this.buf);
        }
        this.count = i;
    }

    public void writeLongAndChar(long j, char c2) {
        writeLong(j);
        write(c2);
    }

    public void writeNull() {
        write("null");
    }

    public void writeNull(int i, int i2) {
        java.lang.String str;
        if ((i & i2) == 0 && (this.features & i2) == 0) {
            writeNull();
            return;
        }
        int i3 = com.alibaba.fastjson.serializer.SerializerFeature.WriteMapNullValue.mask;
        if ((i & i3) != 0 && (i & (i3 ^ (-1)) & com.alibaba.fastjson.serializer.SerializerFeature.WRITE_MAP_NULL_FEATURES) == 0) {
            writeNull();
            return;
        }
        if (i2 == com.alibaba.fastjson.serializer.SerializerFeature.WriteNullListAsEmpty.mask) {
            str = "[]";
        } else if (i2 == com.alibaba.fastjson.serializer.SerializerFeature.WriteNullStringAsEmpty.mask) {
            writeString("");
            return;
        } else {
            if (i2 != com.alibaba.fastjson.serializer.SerializerFeature.WriteNullBooleanAsFalse.mask) {
                if (i2 == com.alibaba.fastjson.serializer.SerializerFeature.WriteNullNumberAsZero.mask) {
                    write(48);
                    return;
                } else {
                    writeNull();
                    return;
                }
            }
            str = "false";
        }
        write(str);
    }

    public void writeNull(com.alibaba.fastjson.serializer.SerializerFeature serializerFeature) {
        writeNull(0, serializerFeature.mask);
    }

    public void writeString(java.lang.String str) {
        if (this.useSingleQuotes) {
            writeStringWithSingleQuote(str);
        } else {
            writeStringWithDoubleQuote(str, (char) 0);
        }
    }

    public void writeString(java.lang.String str, char c2) {
        if (!this.useSingleQuotes) {
            writeStringWithDoubleQuote(str, c2);
        } else {
            writeStringWithSingleQuote(str);
            write(c2);
        }
    }

    public void writeString(char[] cArr) {
        if (this.useSingleQuotes) {
            writeStringWithSingleQuote(cArr);
        } else {
            writeStringWithDoubleQuote(new java.lang.String(cArr), (char) 0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:145:0x02b8 A[PHI: r4 r5 r8 r12
  0x02b8: PHI (r4v44 int) = (r4v42 int), (r4v46 int) binds: [B:169:0x02f6, B:144:0x02b4] A[DONT_GENERATE, DONT_INLINE]
  0x02b8: PHI (r5v36 int) = (r5v5 int), (r5v38 int) binds: [B:169:0x02f6, B:144:0x02b4] A[DONT_GENERATE, DONT_INLINE]
  0x02b8: PHI (r8v20 int) = (r8v10 int), (r8v3 int) binds: [B:169:0x02f6, B:144:0x02b4] A[DONT_GENERATE, DONT_INLINE]
  0x02b8: PHI (r12v14 int) = (r12v12 int), (r12v16 int) binds: [B:169:0x02f6, B:144:0x02b4] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:167:0x02f3  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeStringWithDoubleQuote(java.lang.String r23, char r24) {
        /*
            Method dump skipped, instructions count: 1346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.SerializeWriter.writeStringWithDoubleQuote(java.lang.String, char):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:167:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:170:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x02fa  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void writeStringWithDoubleQuote(char[] r24, char r25) {
        /*
            Method dump skipped, instructions count: 1340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.serializer.SerializeWriter.writeStringWithDoubleQuote(char[], char):void");
    }

    public void writeStringWithSingleQuote(java.lang.String str) {
        int i = 0;
        if (str == null) {
            int i2 = this.count + 4;
            if (i2 > this.buf.length) {
                expandCapacity(i2);
            }
            "null".getChars(0, 4, this.buf, this.count);
            this.count = i2;
            return;
        }
        int length = str.length();
        int i3 = this.count + length + 2;
        if (i3 > this.buf.length) {
            if (this.writer != null) {
                write(39);
                while (i < str.length()) {
                    char cCharAt = str.charAt(i);
                    if (cCharAt <= '\r' || cCharAt == '\\' || cCharAt == '\'' || (cCharAt == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                        write(92);
                        cCharAt = com.alibaba.fastjson.util.IOUtils.replaceChars[cCharAt];
                    }
                    write(cCharAt);
                    i++;
                }
                write(39);
                return;
            }
            expandCapacity(i3);
        }
        int i4 = this.count;
        int i5 = i4 + 1;
        int i6 = i5 + length;
        char[] cArr = this.buf;
        cArr[i4] = '\'';
        str.getChars(0, length, cArr, i5);
        this.count = i3;
        int i7 = -1;
        char c2 = 0;
        for (int i8 = i5; i8 < i6; i8++) {
            char c3 = this.buf[i8];
            if (c3 <= '\r' || c3 == '\\' || c3 == '\'' || (c3 == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                i++;
                i7 = i8;
                c2 = c3;
            }
        }
        int i9 = i3 + i;
        if (i9 > this.buf.length) {
            expandCapacity(i9);
        }
        this.count = i9;
        if (i == 1) {
            char[] cArr2 = this.buf;
            int i10 = i7 + 1;
            java.lang.System.arraycopy(cArr2, i10, cArr2, i7 + 2, (i6 - i7) - 1);
            char[] cArr3 = this.buf;
            cArr3[i7] = '\\';
            cArr3[i10] = com.alibaba.fastjson.util.IOUtils.replaceChars[c2];
        } else if (i > 1) {
            char[] cArr4 = this.buf;
            int i11 = i7 + 1;
            java.lang.System.arraycopy(cArr4, i11, cArr4, i7 + 2, (i6 - i7) - 1);
            char[] cArr5 = this.buf;
            cArr5[i7] = '\\';
            cArr5[i11] = com.alibaba.fastjson.util.IOUtils.replaceChars[c2];
            int i12 = i6 + 1;
            for (int i13 = i11 - 2; i13 >= i5; i13--) {
                char c4 = this.buf[i13];
                if (c4 <= '\r' || c4 == '\\' || c4 == '\'' || (c4 == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr6 = this.buf;
                    int i14 = i13 + 1;
                    java.lang.System.arraycopy(cArr6, i14, cArr6, i13 + 2, (i12 - i13) - 1);
                    char[] cArr7 = this.buf;
                    cArr7[i13] = '\\';
                    cArr7[i14] = com.alibaba.fastjson.util.IOUtils.replaceChars[c4];
                    i12++;
                }
            }
        }
        this.buf[this.count - 1] = '\'';
    }

    public void writeStringWithSingleQuote(char[] cArr) {
        int i = 0;
        if (cArr == null) {
            int i2 = this.count + 4;
            if (i2 > this.buf.length) {
                expandCapacity(i2);
            }
            "null".getChars(0, 4, this.buf, this.count);
            this.count = i2;
            return;
        }
        int length = cArr.length;
        int i3 = this.count + length + 2;
        if (i3 > this.buf.length) {
            if (this.writer != null) {
                write(39);
                while (i < cArr.length) {
                    char c2 = cArr[i];
                    if (c2 <= '\r' || c2 == '\\' || c2 == '\'' || (c2 == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                        write(92);
                        c2 = com.alibaba.fastjson.util.IOUtils.replaceChars[c2];
                    }
                    write(c2);
                    i++;
                }
                write(39);
                return;
            }
            expandCapacity(i3);
        }
        int i4 = this.count;
        int i5 = i4 + 1;
        int i6 = length + i5;
        char[] cArr2 = this.buf;
        cArr2[i4] = '\'';
        java.lang.System.arraycopy(cArr, 0, cArr2, i5, cArr.length);
        this.count = i3;
        int i7 = -1;
        char c3 = 0;
        for (int i8 = i5; i8 < i6; i8++) {
            char c4 = this.buf[i8];
            if (c4 <= '\r' || c4 == '\\' || c4 == '\'' || (c4 == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                i++;
                i7 = i8;
                c3 = c4;
            }
        }
        int i9 = i3 + i;
        if (i9 > this.buf.length) {
            expandCapacity(i9);
        }
        this.count = i9;
        if (i == 1) {
            char[] cArr3 = this.buf;
            int i10 = i7 + 1;
            java.lang.System.arraycopy(cArr3, i10, cArr3, i7 + 2, (i6 - i7) - 1);
            char[] cArr4 = this.buf;
            cArr4[i7] = '\\';
            cArr4[i10] = com.alibaba.fastjson.util.IOUtils.replaceChars[c3];
        } else if (i > 1) {
            char[] cArr5 = this.buf;
            int i11 = i7 + 1;
            java.lang.System.arraycopy(cArr5, i11, cArr5, i7 + 2, (i6 - i7) - 1);
            char[] cArr6 = this.buf;
            cArr6[i7] = '\\';
            cArr6[i11] = com.alibaba.fastjson.util.IOUtils.replaceChars[c3];
            int i12 = i6 + 1;
            for (int i13 = i11 - 2; i13 >= i5; i13--) {
                char c5 = this.buf[i13];
                if (c5 <= '\r' || c5 == '\\' || c5 == '\'' || (c5 == '/' && isEnabled(com.alibaba.fastjson.serializer.SerializerFeature.WriteSlashAsSpecial))) {
                    char[] cArr7 = this.buf;
                    int i14 = i13 + 1;
                    java.lang.System.arraycopy(cArr7, i14, cArr7, i13 + 2, (i12 - i13) - 1);
                    char[] cArr8 = this.buf;
                    cArr8[i13] = '\\';
                    cArr8[i14] = com.alibaba.fastjson.util.IOUtils.replaceChars[c5];
                    i12++;
                }
            }
        }
        this.buf[this.count - 1] = '\'';
    }

    public void writeTo(java.io.OutputStream outputStream, java.lang.String str) throws java.io.IOException {
        writeTo(outputStream, java.nio.charset.Charset.forName(str));
    }

    public void writeTo(java.io.OutputStream outputStream, java.nio.charset.Charset charset) throws java.io.IOException {
        writeToEx(outputStream, charset);
    }

    public void writeTo(java.io.Writer writer) throws java.io.IOException {
        if (this.writer != null) {
            throw new java.lang.UnsupportedOperationException("writer not null");
        }
        writer.write(this.buf, 0, this.count);
    }

    public int writeToEx(java.io.OutputStream outputStream, java.nio.charset.Charset charset) throws java.io.IOException {
        if (this.writer != null) {
            throw new java.lang.UnsupportedOperationException("writer not null");
        }
        if (charset == com.alibaba.fastjson.util.IOUtils.UTF8) {
            return encodeToUTF8(outputStream);
        }
        byte[] bytes = new java.lang.String(this.buf, 0, this.count).getBytes(charset);
        outputStream.write(bytes);
        return bytes.length;
    }
}
