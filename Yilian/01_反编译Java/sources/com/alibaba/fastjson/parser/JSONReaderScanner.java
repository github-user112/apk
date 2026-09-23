package com.alibaba.fastjson.parser;

/* loaded from: classes.dex */
public final class JSONReaderScanner extends com.alibaba.fastjson.parser.JSONLexerBase {
    public static final java.lang.ThreadLocal<char[]> BUF_LOCAL = new java.lang.ThreadLocal<>();
    public char[] buf;
    public int bufLength;
    public java.io.Reader reader;

    public JSONReaderScanner(java.io.Reader reader) {
        this(reader, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONReaderScanner(java.io.Reader reader, int i) throws java.io.IOException {
        super(i);
        this.reader = reader;
        char[] cArr = BUF_LOCAL.get();
        this.buf = cArr;
        if (cArr != null) {
            BUF_LOCAL.set(null);
        }
        if (this.buf == null) {
            this.buf = new char[16384];
        }
        try {
            this.bufLength = reader.read(this.buf);
            this.bp = -1;
            next();
            if (this.ch == 65279) {
                next();
            }
        } catch (java.io.IOException e2) {
            throw new com.alibaba.fastjson.JSONException(e2.getMessage(), e2);
        }
    }

    public JSONReaderScanner(java.lang.String str) {
        this(str, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONReaderScanner(java.lang.String str, int i) {
        this(new java.io.StringReader(str), i);
    }

    public JSONReaderScanner(char[] cArr, int i) {
        this(cArr, i, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONReaderScanner(char[] cArr, int i, int i2) {
        this(new java.io.CharArrayReader(cArr, 0, i), i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final java.lang.String addSymbol(int i, int i2, int i3, com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.buf, i, i2, i3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void arrayCopy(int i, char[] cArr, int i2, int i3) {
        java.lang.System.arraycopy(this.buf, i, cArr, i2, i3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public byte[] bytesValue() {
        if (this.token != 26) {
            return com.alibaba.fastjson.util.IOUtils.decodeBase64(this.buf, this.np + 1, this.sp);
        }
        throw new com.alibaba.fastjson.JSONException("TODO");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final boolean charArrayCompare(char[] cArr) {
        for (int i = 0; i < cArr.length; i++) {
            if (charAt(this.bp + i) != cArr[i]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char charAt(int i) throws java.io.IOException {
        int i2 = this.bufLength;
        if (i >= i2) {
            if (i2 == -1) {
                return i < this.sp ? this.buf[i] : com.alibaba.fastjson.parser.JSONLexer.EOI;
            }
            int i3 = this.bp;
            if (i3 == 0) {
                char[] cArr = this.buf;
                int length = (cArr.length * 3) / 2;
                char[] cArr2 = new char[length];
                java.lang.System.arraycopy(cArr, i3, cArr2, 0, i2);
                int i4 = this.bufLength;
                try {
                    this.bufLength += this.reader.read(cArr2, i4, length - i4);
                    this.buf = cArr2;
                } catch (java.io.IOException e2) {
                    throw new com.alibaba.fastjson.JSONException(e2.getMessage(), e2);
                }
            } else {
                int i5 = i2 - i3;
                if (i5 > 0) {
                    char[] cArr3 = this.buf;
                    java.lang.System.arraycopy(cArr3, i3, cArr3, 0, i5);
                }
                try {
                    int i6 = this.reader.read(this.buf, i5, this.buf.length - i5);
                    this.bufLength = i6;
                    if (i6 == 0) {
                        throw new com.alibaba.fastjson.JSONException("illegal state, textLength is zero");
                    }
                    if (i6 == -1) {
                        return com.alibaba.fastjson.parser.JSONLexer.EOI;
                    }
                    this.bufLength = i6 + i5;
                    int i7 = this.bp;
                    i -= i7;
                    this.np -= i7;
                    this.bp = 0;
                } catch (java.io.IOException e3) {
                    throw new com.alibaba.fastjson.JSONException(e3.getMessage(), e3);
                }
            }
        }
        return this.buf[i];
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        super.close();
        char[] cArr = this.buf;
        if (cArr.length <= 65536) {
            BUF_LOCAL.set(cArr);
        }
        this.buf = null;
        com.alibaba.fastjson.util.IOUtils.close(this.reader);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void copyTo(int i, int i2, char[] cArr) {
        java.lang.System.arraycopy(this.buf, i, cArr, 0, i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final java.math.BigDecimal decimalValue() throws java.io.IOException {
        int i = this.np;
        if (i == -1) {
            i = 0;
        }
        char cCharAt = charAt((this.sp + i) - 1);
        int i2 = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i2--;
        }
        if (i2 <= 65535) {
            return new java.math.BigDecimal(this.buf, i, i2, java.math.MathContext.UNLIMITED);
        }
        throw new com.alibaba.fastjson.JSONException("decimal overflow");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final int indexOf(char c2, int i) throws java.io.IOException {
        int i2 = i - this.bp;
        while (true) {
            char cCharAt = charAt(this.bp + i2);
            if (c2 == cCharAt) {
                return i2 + this.bp;
            }
            if (cCharAt == 26) {
                return -1;
            }
            i2++;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final boolean isBlankInput() {
        int i = 0;
        while (true) {
            char c2 = this.buf[i];
            if (c2 == 26) {
                this.token = 20;
                return true;
            }
            if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(c2)) {
                return false;
            }
            i++;
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean isEOF() {
        if (this.bufLength == -1) {
            return true;
        }
        int i = this.bp;
        char[] cArr = this.buf;
        if (i != cArr.length) {
            return this.ch == 26 && i + 1 >= cArr.length;
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final char next() throws java.io.IOException {
        int i = this.bp + 1;
        this.bp = i;
        int i2 = this.bufLength;
        if (i >= i2) {
            if (i2 == -1) {
                return com.alibaba.fastjson.parser.JSONLexer.EOI;
            }
            int i3 = this.sp;
            if (i3 > 0) {
                int i4 = i2 - i3;
                if (this.ch == '\"' && i4 > 0) {
                    i4--;
                }
                char[] cArr = this.buf;
                java.lang.System.arraycopy(cArr, i4, cArr, 0, this.sp);
            }
            this.np = -1;
            int i5 = this.sp;
            this.bp = i5;
            try {
                int length = this.buf.length - i5;
                if (length == 0) {
                    char[] cArr2 = new char[this.buf.length * 2];
                    java.lang.System.arraycopy(this.buf, 0, cArr2, 0, this.buf.length);
                    this.buf = cArr2;
                    length = cArr2.length - i5;
                }
                int i6 = this.reader.read(this.buf, this.bp, length);
                this.bufLength = i6;
                if (i6 == 0) {
                    throw new com.alibaba.fastjson.JSONException("illegal stat, textLength is zero");
                }
                if (i6 == -1) {
                    this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                    return com.alibaba.fastjson.parser.JSONLexer.EOI;
                }
                this.bufLength = i6 + this.bp;
                i = i5;
            } catch (java.io.IOException e2) {
                throw new com.alibaba.fastjson.JSONException(e2.getMessage(), e2);
            }
        }
        char c2 = this.buf[i];
        this.ch = c2;
        return c2;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String numberString() throws java.io.IOException {
        int i = this.np;
        if (i == -1) {
            i = 0;
        }
        char cCharAt = charAt((this.sp + i) - 1);
        int i2 = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i2--;
        }
        return new java.lang.String(this.buf, i, i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String stringVal() {
        if (this.hasSpecial) {
            return new java.lang.String(this.sbuf, 0, this.sp);
        }
        int i = this.np + 1;
        if (i < 0) {
            throw new java.lang.IllegalStateException();
        }
        if (i <= this.buf.length - this.sp) {
            return new java.lang.String(this.buf, i, this.sp);
        }
        throw new java.lang.IllegalStateException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final java.lang.String subString(int i, int i2) {
        if (i2 >= 0) {
            return new java.lang.String(this.buf, i, i2);
        }
        throw new java.lang.StringIndexOutOfBoundsException(i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char[] sub_chars(int i, int i2) {
        if (i2 < 0) {
            throw new java.lang.StringIndexOutOfBoundsException(i2);
        }
        if (i == 0) {
            return this.buf;
        }
        char[] cArr = new char[i2];
        java.lang.System.arraycopy(this.buf, i, cArr, 0, i2);
        return cArr;
    }
}
