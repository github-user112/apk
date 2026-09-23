package com.alibaba.fastjson.parser;

/* loaded from: classes.dex */
public abstract class JSONLexerBase implements com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable {
    public static final int INT_MULTMIN_RADIX_TEN = -214748364;
    public static final long MULTMIN_RADIX_TEN = -922337203685477580L;
    public static final java.lang.ThreadLocal<char[]> SBUF_LOCAL = new java.lang.ThreadLocal<>();
    public static final int[] digits;
    public static final char[] typeFieldName;
    public int bp;
    public char ch;
    public int eofPos;
    public int features;
    public boolean hasSpecial;
    public int np;
    public int pos;
    public char[] sbuf;
    public int sp;
    public java.lang.String stringDefaultValue;
    public int token;
    public java.util.Calendar calendar = null;
    public java.util.TimeZone timeZone = com.alibaba.fastjson.JSON.defaultTimeZone;
    public java.util.Locale locale = com.alibaba.fastjson.JSON.defaultLocale;
    public int matchStat = 0;
    public int nanos = 0;

    static {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("\"");
        sbO.append(com.alibaba.fastjson.JSON.DEFAULT_TYPE_KEY);
        sbO.append("\":\"");
        typeFieldName = sbO.toString().toCharArray();
        digits = new int[103];
        for (int i = 48; i <= 57; i++) {
            digits[i] = i - 48;
        }
        for (int i2 = 97; i2 <= 102; i2++) {
            digits[i2] = (i2 - 97) + 10;
        }
        for (int i3 = 65; i3 <= 70; i3++) {
            digits[i3] = (i3 - 65) + 10;
        }
    }

    public JSONLexerBase(int i) {
        this.stringDefaultValue = null;
        this.features = i;
        if ((i & com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
        char[] cArr = SBUF_LOCAL.get();
        this.sbuf = cArr;
        if (cArr == null) {
            this.sbuf = new char[512];
        }
    }

    public static boolean isWhitespace(char c2) {
        return c2 <= ' ' && (c2 == ' ' || c2 == '\n' || c2 == '\r' || c2 == '\t' || c2 == '\f' || c2 == '\b');
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x00e9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String readString(char[] r12, int r13) {
        /*
            Method dump skipped, instructions count: 292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.readString(char[], int):java.lang.String");
    }

    private void scanStringSingleQuote() throws java.lang.NumberFormatException {
        char next;
        char next2;
        int i;
        this.np = this.bp;
        this.hasSpecial = false;
        while (true) {
            char next3 = next();
            char c2 = '\'';
            if (next3 == '\'') {
                this.token = 4;
                next();
                return;
            }
            char c3 = com.alibaba.fastjson.parser.JSONLexer.EOI;
            if (next3 != 26) {
                c3 = '\\';
                boolean z = true;
                if (next3 == '\\') {
                    if (!this.hasSpecial) {
                        this.hasSpecial = true;
                        int i2 = this.sp;
                        char[] cArr = this.sbuf;
                        if (i2 > cArr.length) {
                            char[] cArr2 = new char[i2 * 2];
                            java.lang.System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
                            this.sbuf = cArr2;
                        }
                        copyTo(this.np + 1, this.sp, this.sbuf);
                    }
                    char next4 = next();
                    if (next4 != '\"') {
                        if (next4 != '\'') {
                            if (next4 != 'F') {
                                if (next4 != '\\') {
                                    if (next4 == 'b') {
                                        next3 = '\b';
                                    } else if (next4 != 'f') {
                                        if (next4 == 'n') {
                                            next3 = '\n';
                                        } else if (next4 != 'r') {
                                            if (next4 != 'x') {
                                                c2 = 3;
                                                c3 = 2;
                                                switch (next4) {
                                                    case '/':
                                                        next3 = com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH;
                                                        break;
                                                    case '0':
                                                        putChar((char) 0);
                                                        break;
                                                    case '1':
                                                        putChar((char) 1);
                                                        break;
                                                    case '2':
                                                        break;
                                                    case '3':
                                                        break;
                                                    case '4':
                                                        putChar((char) 4);
                                                        break;
                                                    case '5':
                                                        next3 = 5;
                                                        break;
                                                    case '6':
                                                        next3 = 6;
                                                        break;
                                                    case '7':
                                                        next3 = 7;
                                                        break;
                                                    default:
                                                        switch (next4) {
                                                            case 't':
                                                                next3 = '\t';
                                                                break;
                                                            case 'u':
                                                                i = java.lang.Integer.parseInt(new java.lang.String(new char[]{next(), next(), next(), next()}), 16);
                                                                break;
                                                            case 'v':
                                                                next3 = 11;
                                                                break;
                                                            default:
                                                                this.ch = next4;
                                                                throw new com.alibaba.fastjson.JSONException("unclosed single-quote string");
                                                        }
                                                }
                                            } else {
                                                next = next();
                                                next2 = next();
                                                boolean z2 = (next >= '0' && next <= '9') || (next >= 'a' && next <= 'f') || (next >= 'A' && next <= 'F');
                                                if ((next2 < '0' || next2 > '9') && ((next2 < 'a' || next2 > 'f') && (next2 < 'A' || next2 > 'F'))) {
                                                    z = false;
                                                }
                                                if (z2 && z) {
                                                    int[] iArr = digits;
                                                    i = (iArr[next] * 16) + iArr[next2];
                                                }
                                            }
                                            next3 = (char) i;
                                        } else {
                                            next3 = '\r';
                                        }
                                    }
                                    putChar(next3);
                                }
                            }
                            next3 = '\f';
                            putChar(next3);
                        }
                        putChar(c2);
                    } else {
                        putChar('\"');
                    }
                } else if (this.hasSpecial) {
                    int i3 = this.sp;
                    char[] cArr3 = this.sbuf;
                    if (i3 == cArr3.length) {
                        putChar(next3);
                    } else {
                        this.sp = i3 + 1;
                        cArr3[i3] = next3;
                    }
                } else {
                    this.sp++;
                }
            } else if (isEOF()) {
                throw new com.alibaba.fastjson.JSONException("unclosed single-quote string");
            }
            putChar(c3);
        }
        throw new com.alibaba.fastjson.JSONException("invalid escape character \\x" + next + next2);
    }

    public abstract java.lang.String addSymbol(int i, int i2, int i3, com.alibaba.fastjson.parser.SymbolTable symbolTable);

    public abstract void arrayCopy(int i, char[] cArr, int i2, int i3);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract byte[] bytesValue();

    public abstract boolean charArrayCompare(char[] cArr);

    public abstract char charAt(int i);

    @Override // com.alibaba.fastjson.parser.JSONLexer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        char[] cArr = this.sbuf;
        if (cArr.length <= 8192) {
            SBUF_LOCAL.set(cArr);
        }
        this.sbuf = null;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void config(com.alibaba.fastjson.parser.Feature feature, boolean z) {
        int iConfig = com.alibaba.fastjson.parser.Feature.config(this.features, feature, z);
        this.features = iConfig;
        if ((iConfig & com.alibaba.fastjson.parser.Feature.InitStringFieldAsEmpty.mask) != 0) {
            this.stringDefaultValue = "";
        }
    }

    public abstract void copyTo(int i, int i2, char[] cArr);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.Number decimalValue(boolean z) {
        char cCharAt = charAt((this.np + this.sp) - 1);
        try {
            return cCharAt == 'F' ? java.lang.Float.valueOf(java.lang.Float.parseFloat(numberString())) : cCharAt == 'D' ? java.lang.Double.valueOf(java.lang.Double.parseDouble(numberString())) : z ? decimalValue() : java.lang.Double.valueOf(doubleValue());
        } catch (java.lang.NumberFormatException e2) {
            throw new com.alibaba.fastjson.JSONException(e2.getMessage() + ", " + info());
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract java.math.BigDecimal decimalValue();

    public double doubleValue() {
        return java.lang.Double.parseDouble(numberString());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public float floatValue() throws java.lang.NumberFormatException {
        char cCharAt;
        java.lang.String strNumberString = numberString();
        float f2 = java.lang.Float.parseFloat(strNumberString);
        if ((f2 == 0.0f || f2 == Float.POSITIVE_INFINITY) && (cCharAt = strNumberString.charAt(0)) > '0' && cCharAt <= '9') {
            throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.e("float overflow : ", strNumberString));
        }
        return f2;
    }

    public java.util.Calendar getCalendar() {
        return this.calendar;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final char getCurrent() {
        return this.ch;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public int getFeatures() {
        return this.features;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.util.Locale getLocale() {
        return this.locale;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.util.TimeZone getTimeZone() {
        return this.timeZone;
    }

    public abstract int indexOf(char c2, int i);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.lang.String info() {
        return "";
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int intValue() {
        int i;
        boolean z;
        int i2 = 0;
        if (this.np == -1) {
            this.np = 0;
        }
        int i3 = this.np;
        int i4 = this.sp + i3;
        if (charAt(i3) == '-') {
            i = Integer.MIN_VALUE;
            i3++;
            z = true;
        } else {
            i = -2147483647;
            z = false;
        }
        if (i3 < i4) {
            i2 = -(charAt(i3) - '0');
            i3++;
        }
        while (i3 < i4) {
            int i5 = i3 + 1;
            char cCharAt = charAt(i3);
            if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B') {
                i3 = i5;
                break;
            }
            int i6 = cCharAt - '0';
            if (i2 < -214748364) {
                throw new java.lang.NumberFormatException(numberString());
            }
            int i7 = i2 * 10;
            if (i7 < i + i6) {
                throw new java.lang.NumberFormatException(numberString());
            }
            i2 = i7 - i6;
            i3 = i5;
        }
        if (!z) {
            return -i2;
        }
        if (i3 > this.np + 1) {
            return i2;
        }
        throw new java.lang.NumberFormatException(numberString());
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0092  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x008b -> B:20:0x0058). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Number integerValue() {
        /*
            Method dump skipped, instructions count: 257
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.integerValue():java.lang.Number");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public boolean isBlankInput() {
        int i = 0;
        while (true) {
            char cCharAt = charAt(i);
            if (cCharAt == 26) {
                this.token = 20;
                return true;
            }
            if (!isWhitespace(cCharAt)) {
                return false;
            }
            i++;
        }
    }

    public abstract boolean isEOF();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(int i) {
        return (i & this.features) != 0;
    }

    public final boolean isEnabled(int i, int i2) {
        return ((this.features & i2) == 0 && (i & i2) == 0) ? false : true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isEnabled(com.alibaba.fastjson.parser.Feature feature) {
        return isEnabled(feature.mask);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final boolean isRef() {
        return this.sp == 4 && charAt(this.np + 1) == '$' && charAt(this.np + 2) == 'r' && charAt(this.np + 3) == 'e' && charAt(this.np + 4) == 'f';
    }

    public void lexError(java.lang.String str, java.lang.Object... objArr) {
        this.token = 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0085  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x005c -> B:12:0x0032). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long longValue() {
        /*
            r15 = this;
            int r0 = r15.np
            r1 = 0
            r2 = -1
            if (r0 != r2) goto L8
            r15.np = r1
        L8:
            int r0 = r15.np
            int r2 = r15.sp
            int r2 = r2 + r0
            char r3 = r15.charAt(r0)
            r4 = 45
            r5 = 1
            if (r3 != r4) goto L1c
            r3 = -9223372036854775808
            int r0 = r0 + 1
            r1 = 1
            goto L21
        L1c:
            r3 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
        L21:
            r6 = -922337203685477580(0xf333333333333334, double:-8.390303882365713E246)
            if (r0 >= r2) goto L34
            int r8 = r0 + 1
            char r0 = r15.charAt(r0)
            int r0 = r0 + (-48)
            int r0 = -r0
            long r9 = (long) r0
        L32:
            r0 = r8
            goto L36
        L34:
            r9 = 0
        L36:
            if (r0 >= r2) goto L73
            int r8 = r0 + 1
            char r0 = r15.charAt(r0)
            r11 = 76
            if (r0 == r11) goto L72
            r11 = 83
            if (r0 == r11) goto L72
            r11 = 66
            if (r0 != r11) goto L4b
            goto L72
        L4b:
            int r0 = r0 + (-48)
            int r11 = (r9 > r6 ? 1 : (r9 == r6 ? 0 : -1))
            if (r11 < 0) goto L68
            r11 = 10
            long r9 = r9 * r11
            long r11 = (long) r0
            long r13 = r3 + r11
            int r0 = (r9 > r13 ? 1 : (r9 == r13 ? 0 : -1))
            if (r0 < 0) goto L5e
            long r9 = r9 - r11
            goto L32
        L5e:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r15.numberString()
            r0.<init>(r1)
            throw r0
        L68:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r15.numberString()
            r0.<init>(r1)
            throw r0
        L72:
            r0 = r8
        L73:
            if (r1 == 0) goto L85
            int r1 = r15.np
            int r1 = r1 + r5
            if (r0 <= r1) goto L7b
            return r9
        L7b:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.String r1 = r15.numberString()
            r0.<init>(r1)
            throw r0
        L85:
            long r0 = -r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.longValue():long");
    }

    public int matchField(long j) {
        throw new java.lang.UnsupportedOperationException();
    }

    public final boolean matchField(char[] cArr) throws java.lang.NumberFormatException {
        int i;
        while (!charArrayCompare(cArr)) {
            if (!isWhitespace(this.ch)) {
                return false;
            }
            next();
        }
        int length = this.bp + cArr.length;
        this.bp = length;
        char cCharAt = charAt(length);
        this.ch = cCharAt;
        if (cCharAt == '{') {
            next();
            i = 12;
        } else if (cCharAt == '[') {
            next();
            i = 14;
        } else {
            if (cCharAt != 'S' || charAt(this.bp + 1) != 'e' || charAt(this.bp + 2) != 't' || charAt(this.bp + 3) != '[') {
                nextToken();
                return true;
            }
            int i2 = this.bp + 3;
            this.bp = i2;
            this.ch = charAt(i2);
            i = 21;
        }
        this.token = i;
        return true;
    }

    public boolean matchField2(char[] cArr) {
        throw new java.lang.UnsupportedOperationException();
    }

    public final int matchStat() {
        return this.matchStat;
    }

    public java.util.Collection<java.lang.String> newCollectionByType(java.lang.Class<?> cls) {
        if (cls.isAssignableFrom(java.util.HashSet.class)) {
            return new java.util.HashSet();
        }
        if (cls.isAssignableFrom(java.util.ArrayList.class)) {
            return new java.util.ArrayList();
        }
        if (cls.isAssignableFrom(java.util.LinkedList.class)) {
            return new java.util.LinkedList();
        }
        try {
            return (java.util.Collection) cls.newInstance();
        } catch (java.lang.Exception e2) {
            throw new com.alibaba.fastjson.JSONException(e2.getMessage(), e2);
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract char next();

    public final void nextIdent() throws java.lang.NumberFormatException {
        while (isWhitespace(this.ch)) {
            next();
        }
        char c2 = this.ch;
        if (c2 == '_' || c2 == '$' || java.lang.Character.isLetter(c2)) {
            scanIdent();
        } else {
            nextToken();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextToken() throws java.lang.NumberFormatException {
        this.sp = 0;
        while (true) {
            this.pos = this.bp;
            char c2 = this.ch;
            if (c2 == '/') {
                skipComment();
            } else {
                if (c2 == '\"') {
                    scanString();
                    return;
                }
                if (c2 == ',') {
                    next();
                    this.token = 16;
                    return;
                }
                if (c2 >= '0' && c2 <= '9') {
                    scanNumber();
                    return;
                }
                char c3 = this.ch;
                if (c3 != '-') {
                    switch (c3) {
                        case '\b':
                        case '\t':
                        case '\n':
                        case '\f':
                        case '\r':
                        case ' ':
                            next();
                            break;
                        case '\'':
                            if (!isEnabled(com.alibaba.fastjson.parser.Feature.AllowSingleQuotes)) {
                                throw new com.alibaba.fastjson.JSONException("Feature.AllowSingleQuotes is false");
                            }
                            scanStringSingleQuote();
                            return;
                        case '(':
                            next();
                            this.token = 10;
                            return;
                        case ')':
                            next();
                            this.token = 11;
                            return;
                        case '+':
                            next();
                            scanNumber();
                            return;
                        case '.':
                            next();
                            this.token = 25;
                            return;
                        case ':':
                            next();
                            this.token = 17;
                            return;
                        case ';':
                            next();
                            this.token = 24;
                            return;
                        case 'N':
                        case 'S':
                        case 'T':
                        case 'u':
                            scanIdent();
                            return;
                        case '[':
                            next();
                            this.token = 14;
                            return;
                        case ']':
                            next();
                            this.token = 15;
                            return;
                        case 'f':
                            scanFalse();
                            return;
                        case 'n':
                            scanNullOrNew();
                            return;
                        case 't':
                            scanTrue();
                            return;
                        case 'x':
                            scanHex();
                            return;
                        case '{':
                            next();
                            this.token = 12;
                            return;
                        case '}':
                            next();
                            this.token = 13;
                            return;
                        default:
                            if (!isEOF()) {
                                char c4 = this.ch;
                                if (c4 > 31 && c4 != 127) {
                                    lexError("illegal.char", java.lang.String.valueOf((int) c4));
                                    next();
                                    return;
                                }
                                next();
                                break;
                            } else {
                                if (this.token == 20) {
                                    throw new com.alibaba.fastjson.JSONException("EOF error");
                                }
                                this.token = 20;
                                int i = this.bp;
                                this.pos = i;
                                this.eofPos = i;
                                return;
                            }
                    }
                } else {
                    scanNumber();
                    return;
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:110:0x007b A[SYNTHETIC] */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void nextToken(int r11) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.nextToken(int):void");
    }

    public final void nextTokenWithChar(char c2) throws java.lang.NumberFormatException {
        this.sp = 0;
        while (true) {
            char c3 = this.ch;
            if (c3 == c2) {
                next();
                nextToken();
                return;
            }
            if (c3 != ' ' && c3 != '\n' && c3 != '\r' && c3 != '\t' && c3 != '\f' && c3 != '\b') {
                throw new com.alibaba.fastjson.JSONException("not match " + c2 + " - " + this.ch + ", info : " + info());
            }
            next();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon() throws java.lang.NumberFormatException {
        nextTokenWithChar(':');
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void nextTokenWithColon(int i) throws java.lang.NumberFormatException {
        nextTokenWithChar(':');
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract java.lang.String numberString();

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int pos() {
        return this.pos;
    }

    public final void putChar(char c2) {
        int i = this.sp;
        char[] cArr = this.sbuf;
        if (i >= cArr.length) {
            int length = cArr.length * 2;
            if (length < i) {
                length = i + 1;
            }
            char[] cArr2 = new char[length];
            char[] cArr3 = this.sbuf;
            java.lang.System.arraycopy(cArr3, 0, cArr2, 0, cArr3.length);
            this.sbuf = cArr2;
        }
        char[] cArr4 = this.sbuf;
        int i2 = this.sp;
        this.sp = i2 + 1;
        cArr4[i2] = c2;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void resetStringPosition() {
        this.sp = 0;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public boolean scanBoolean(char c2) {
        boolean z = false;
        this.matchStat = 0;
        char cCharAt = charAt(this.bp + 0);
        int i = 5;
        if (cCharAt == 't') {
            if (charAt(this.bp + 1) != 'r' || e.a.c.a.a.a(this.bp, 1, 1, this) != 'u' || e.a.c.a.a.a(this.bp, 1, 2, this) != 'e') {
                this.matchStat = -1;
                return false;
            }
            cCharAt = charAt(this.bp + 4);
            z = true;
        } else if (cCharAt != 'f') {
            if (cCharAt == '1') {
                cCharAt = charAt(this.bp + 1);
                z = true;
            } else if (cCharAt == '0') {
                cCharAt = charAt(this.bp + 1);
            } else {
                i = 1;
            }
            i = 2;
        } else {
            if (charAt(this.bp + 1) != 'a' || e.a.c.a.a.a(this.bp, 1, 1, this) != 'l' || e.a.c.a.a.a(this.bp, 1, 2, this) != 's' || e.a.c.a.a.a(this.bp, 1, 3, this) != 'e') {
                this.matchStat = -1;
                return false;
            }
            cCharAt = charAt(this.bp + 5);
            i = 6;
        }
        while (cCharAt != c2) {
            if (!isWhitespace(cCharAt)) {
                this.matchStat = -1;
                return z;
            }
            cCharAt = charAt(this.bp + i);
            i++;
        }
        int i2 = this.bp + i;
        this.bp = i2;
        this.ch = charAt(i2);
        this.matchStat = 3;
        return z;
    }

    public java.util.Date scanDate(char c2) {
        long j;
        java.util.Date date;
        int i;
        int i2;
        boolean z = false;
        this.matchStat = 0;
        char cCharAt = charAt(this.bp + 0);
        int i3 = 5;
        if (cCharAt == '\"') {
            int iIndexOf = indexOf('\"', this.bp + 1);
            if (iIndexOf == -1) {
                throw new com.alibaba.fastjson.JSONException("unclosed str");
            }
            int i4 = this.bp + 1;
            java.lang.String strSubString = subString(i4, iIndexOf - i4);
            if (strSubString.indexOf(92) != -1) {
                while (true) {
                    int i5 = 0;
                    for (int i6 = iIndexOf - 1; i6 >= 0 && charAt(i6) == '\\'; i6--) {
                        i5++;
                    }
                    if (i5 % 2 == 0) {
                        break;
                    }
                    iIndexOf = indexOf('\"', iIndexOf + 1);
                }
                int i7 = this.bp;
                int i8 = iIndexOf - (i7 + 1);
                strSubString = readString(sub_chars(i7 + 1, i8), i8);
            }
            int i9 = this.bp;
            int i10 = (iIndexOf - (i9 + 1)) + 1 + 1;
            int i11 = i10 + 1;
            cCharAt = charAt(i9 + i10);
            com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(strSubString);
            try {
                if (!jSONScanner.scanISO8601DateIfMatch(false)) {
                    this.matchStat = -1;
                    return null;
                }
                date = jSONScanner.getCalendar().getTime();
                jSONScanner.close();
                i3 = i11;
            } finally {
                jSONScanner.close();
            }
        } else {
            char c3 = '9';
            int i12 = 2;
            if (cCharAt == '-' || (cCharAt >= '0' && cCharAt <= '9')) {
                if (cCharAt == '-') {
                    cCharAt = charAt(this.bp + 1);
                    z = true;
                } else {
                    i12 = 1;
                }
                if (cCharAt < '0' || cCharAt > '9') {
                    j = 0;
                } else {
                    j = cCharAt - '0';
                    while (true) {
                        i = i12 + 1;
                        cCharAt = charAt(this.bp + i12);
                        if (cCharAt < '0' || cCharAt > c3) {
                            break;
                        }
                        j = (j * 10) + (cCharAt - '0');
                        c3 = '9';
                        i12 = i;
                    }
                    i12 = i;
                }
                if (j < 0) {
                    this.matchStat = -1;
                    return null;
                }
                if (z) {
                    j = -j;
                }
                date = new java.util.Date(j);
                i3 = i12;
            } else {
                if (cCharAt != 'n' || charAt(this.bp + 1) != 'u' || e.a.c.a.a.a(this.bp, 1, 1, this) != 'l' || e.a.c.a.a.a(this.bp, 1, 2, this) != 'l') {
                    this.matchStat = -1;
                    return null;
                }
                this.matchStat = 5;
                cCharAt = charAt(this.bp + 4);
                date = null;
            }
        }
        if (cCharAt == ',') {
            int i13 = this.bp + i3;
            this.bp = i13;
            this.ch = charAt(i13);
            this.matchStat = 3;
            this.token = 16;
            return date;
        }
        if (cCharAt != ']') {
            this.matchStat = -1;
            return null;
        }
        int i14 = i3 + 1;
        char cCharAt2 = charAt(this.bp + i3);
        if (cCharAt2 == ',') {
            this.token = 16;
        } else {
            if (cCharAt2 == ']') {
                i2 = 15;
            } else {
                if (cCharAt2 != '}') {
                    if (cCharAt2 != 26) {
                        this.matchStat = -1;
                        return null;
                    }
                    this.token = 20;
                    this.bp = (i14 - 1) + this.bp;
                    this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                    this.matchStat = 4;
                    return date;
                }
                i2 = 13;
            }
            this.token = i2;
        }
        int i15 = this.bp + i14;
        this.bp = i15;
        this.ch = charAt(i15);
        this.matchStat = 4;
        return date;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.math.BigDecimal scanDecimal(char c2) {
        int i;
        int i2;
        char cCharAt;
        com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase;
        int i3;
        int i4;
        int i5;
        char cCharAt2;
        int i6;
        this.matchStat = 0;
        char cCharAt3 = charAt(this.bp + 0);
        boolean z = cCharAt3 == '\"';
        if (z) {
            cCharAt3 = charAt(this.bp + 1);
            i = 2;
        } else {
            i = 1;
        }
        if (cCharAt3 == '-') {
            cCharAt3 = charAt(this.bp + i);
            i++;
        }
        if (cCharAt3 < '0' || cCharAt3 > '9') {
            if (cCharAt3 != 'n' || charAt(this.bp + i) != 'u' || e.a.c.a.a.a(this.bp, i, 1, this) != 'l' || e.a.c.a.a.a(this.bp, i, 2, this) != 'l') {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 5;
            int i7 = i + 3;
            int i8 = i7 + 1;
            char cCharAt4 = charAt(this.bp + i7);
            if (z && cCharAt4 == '\"') {
                cCharAt4 = charAt(this.bp + i8);
                i8++;
            }
            while (cCharAt4 != ',') {
                if (cCharAt4 == '}') {
                    int i9 = this.bp + i8;
                    this.bp = i9;
                    this.ch = charAt(i9);
                    this.matchStat = 5;
                    this.token = 13;
                    return null;
                }
                if (!isWhitespace(cCharAt4)) {
                    this.matchStat = -1;
                    return null;
                }
                cCharAt4 = charAt(this.bp + i8);
                i8++;
            }
            int i10 = this.bp + i8;
            this.bp = i10;
            this.ch = charAt(i10);
            this.matchStat = 5;
            this.token = 16;
            return null;
        }
        while (true) {
            i2 = i + 1;
            cCharAt = charAt(this.bp + i);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            i = i2;
        }
        if (cCharAt == '.') {
            int i11 = i2 + 1;
            char cCharAt5 = charAt(this.bp + i2);
            if (cCharAt5 < '0' || cCharAt5 > '9') {
                this.matchStat = -1;
                return null;
            }
            while (true) {
                i2 = i11 + 1;
                cCharAt = charAt(this.bp + i11);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                i11 = i2;
            }
        }
        if (cCharAt == 'e' || cCharAt == 'E') {
            int i12 = i2 + 1;
            cCharAt = charAt(this.bp + i2);
            if (cCharAt == '+' || cCharAt == '-') {
                int i13 = i12 + 1;
                char cCharAt6 = charAt(this.bp + i12);
                jSONLexerBase = this;
                i2 = i13;
                cCharAt = cCharAt6;
                i3 = 0;
            } else {
                i2 = i12;
                i3 = 0;
                jSONLexerBase = this;
            }
            while (cCharAt >= '0' && cCharAt <= '9') {
                cCharAt = jSONLexerBase.charAt(jSONLexerBase.bp + i2);
                i2++;
            }
        } else {
            jSONLexerBase = this;
            i3 = 0;
        }
        if (!z) {
            i4 = jSONLexerBase.bp;
            i5 = ((i4 + i2) - i4) - 1;
        } else {
            if (cCharAt != '\"') {
                jSONLexerBase.matchStat = -1;
                return null;
            }
            int i14 = i2 + 1;
            cCharAt = jSONLexerBase.charAt(jSONLexerBase.bp + i2);
            int i15 = jSONLexerBase.bp;
            i4 = i15 + 1;
            i5 = ((i15 + i14) - i4) - 2;
            i2 = i14;
        }
        if (i5 > 65535) {
            throw new com.alibaba.fastjson.JSONException("decimal overflow");
        }
        char[] cArrSub_chars = jSONLexerBase.sub_chars(i4, i5);
        java.math.BigDecimal bigDecimal = new java.math.BigDecimal(cArrSub_chars, i3, cArrSub_chars.length, java.math.MathContext.UNLIMITED);
        if (cCharAt == ',') {
            int i16 = jSONLexerBase.bp + i2;
            jSONLexerBase.bp = i16;
            jSONLexerBase.ch = jSONLexerBase.charAt(i16);
            jSONLexerBase.matchStat = 3;
            jSONLexerBase.token = 16;
            return bigDecimal;
        }
        if (cCharAt != ']') {
            jSONLexerBase.matchStat = -1;
            return null;
        }
        int i17 = i2 + 1;
        char cCharAt7 = jSONLexerBase.charAt(jSONLexerBase.bp + i2);
        if (cCharAt7 == ',') {
            jSONLexerBase.token = 16;
        } else {
            if (cCharAt7 == ']') {
                i6 = 15;
            } else {
                if (cCharAt7 != '}') {
                    cCharAt2 = com.alibaba.fastjson.parser.JSONLexer.EOI;
                    if (cCharAt7 != 26) {
                        jSONLexerBase.matchStat = -1;
                        return null;
                    }
                    jSONLexerBase.token = 20;
                    jSONLexerBase.bp = (i17 - 1) + jSONLexerBase.bp;
                    jSONLexerBase.ch = cCharAt2;
                    jSONLexerBase.matchStat = 4;
                    return bigDecimal;
                }
                i6 = 13;
            }
            jSONLexerBase.token = i6;
        }
        int i18 = jSONLexerBase.bp + i17;
        jSONLexerBase.bp = i18;
        cCharAt2 = jSONLexerBase.charAt(i18);
        jSONLexerBase.ch = cCharAt2;
        jSONLexerBase.matchStat = 4;
        return bigDecimal;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public double scanDouble(char c2) throws java.lang.NumberFormatException {
        int i;
        int i2;
        int i3;
        char cCharAt;
        boolean z;
        long j;
        com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase;
        double d2;
        int i4;
        long j2;
        boolean z2;
        boolean z3;
        char cCharAt2;
        char c3;
        int i5;
        int i6;
        double d3;
        int i7;
        this.matchStat = 0;
        char cCharAt3 = charAt(this.bp + 0);
        boolean z4 = cCharAt3 == '\"';
        if (z4) {
            cCharAt3 = charAt(this.bp + 1);
            i = 2;
        } else {
            i = 1;
        }
        boolean z5 = cCharAt3 == '-';
        if (z5) {
            cCharAt3 = charAt(this.bp + i);
            i++;
        }
        char c4 = '0';
        if (cCharAt3 >= '0') {
            char c5 = '9';
            if (cCharAt3 <= '9') {
                long j3 = cCharAt3 - '0';
                while (true) {
                    i3 = i + 1;
                    cCharAt = charAt(this.bp + i);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    j3 = (j3 * 10) + (cCharAt - '0');
                    i = i3;
                }
                if (cCharAt == '.') {
                    int i8 = i3 + 1;
                    char cCharAt4 = charAt(this.bp + i3);
                    if (cCharAt4 < '0' || cCharAt4 > '9') {
                        this.matchStat = -1;
                        return 0.0d;
                    }
                    z = z5;
                    j3 = (j3 * 10) + (cCharAt4 - '0');
                    j = 10;
                    while (true) {
                        i3 = i8 + 1;
                        cCharAt = charAt(this.bp + i8);
                        if (cCharAt < c4 || cCharAt > c5) {
                            break;
                        }
                        j3 = (j3 * 10) + (cCharAt - '0');
                        j *= 10;
                        i8 = i3;
                        c4 = '0';
                        c5 = '9';
                    }
                } else {
                    z = z5;
                    j = 1;
                }
                boolean z6 = cCharAt == 'e' || cCharAt == 'E';
                if (z6) {
                    int i9 = i3 + 1;
                    char cCharAt5 = charAt(this.bp + i3);
                    if (cCharAt5 == '+' || cCharAt5 == '-') {
                        cCharAt5 = charAt(this.bp + i9);
                        jSONLexerBase = this;
                        d2 = 0.0d;
                        i7 = i9 + 1;
                    } else {
                        jSONLexerBase = this;
                        d2 = 0.0d;
                        i7 = i9;
                    }
                    long j4 = j3;
                    i4 = -1;
                    j2 = j;
                    z2 = z6;
                    z3 = z4;
                    cCharAt2 = cCharAt5;
                    c3 = c2;
                    while (cCharAt2 >= '0' && cCharAt2 <= '9') {
                        cCharAt2 = jSONLexerBase.charAt(jSONLexerBase.bp + i7);
                        i7++;
                    }
                    j3 = j4;
                    i3 = i7;
                } else {
                    jSONLexerBase = this;
                    d2 = 0.0d;
                    i4 = -1;
                    j2 = j;
                    z2 = z6;
                    z3 = z4;
                    cCharAt2 = cCharAt;
                    c3 = c2;
                }
                if (!z3) {
                    i5 = jSONLexerBase.bp;
                    i6 = ((i5 + i3) - i5) - 1;
                } else {
                    if (cCharAt2 != '\"') {
                        jSONLexerBase.matchStat = i4;
                        return d2;
                    }
                    int i10 = i3 + 1;
                    cCharAt2 = jSONLexerBase.charAt(jSONLexerBase.bp + i3);
                    int i11 = jSONLexerBase.bp;
                    i5 = i11 + 1;
                    i6 = ((i11 + i10) - i5) - 2;
                    i3 = i10;
                }
                if (z2 || i6 >= 17) {
                    d3 = java.lang.Double.parseDouble(jSONLexerBase.subString(i5, i6));
                } else {
                    double d4 = j3;
                    double d5 = j2;
                    java.lang.Double.isNaN(d4);
                    java.lang.Double.isNaN(d5);
                    d3 = d4 / d5;
                    if (z) {
                        d3 = -d3;
                    }
                }
                if (cCharAt2 != c3) {
                    jSONLexerBase.matchStat = i4;
                    return d3;
                }
                int i12 = jSONLexerBase.bp + i3;
                jSONLexerBase.bp = i12;
                jSONLexerBase.ch = jSONLexerBase.charAt(i12);
                jSONLexerBase.matchStat = 3;
                jSONLexerBase.token = 16;
                return d3;
            }
        }
        if (cCharAt3 != 'n' || charAt(this.bp + i) != 'u' || e.a.c.a.a.a(this.bp, i, 1, this) != 'l' || e.a.c.a.a.a(this.bp, i, 2, this) != 'l') {
            this.matchStat = -1;
            return 0.0d;
        }
        this.matchStat = 5;
        int i13 = i + 3;
        int i14 = i13 + 1;
        char cCharAt6 = charAt(this.bp + i13);
        if (z4 && cCharAt6 == '\"') {
            char cCharAt7 = charAt(this.bp + i14);
            i14++;
            cCharAt6 = cCharAt7;
        }
        while (true) {
            if (cCharAt6 == ',') {
                int i15 = this.bp + i14;
                this.bp = i15;
                this.ch = charAt(i15);
                this.matchStat = 5;
                i2 = 16;
                break;
            }
            if (cCharAt6 == ']') {
                int i16 = this.bp + i14;
                this.bp = i16;
                this.ch = charAt(i16);
                this.matchStat = 5;
                i2 = 15;
                break;
            }
            if (!isWhitespace(cCharAt6)) {
                this.matchStat = -1;
                return 0.0d;
            }
            char cCharAt8 = charAt(this.bp + i14);
            i14++;
            cCharAt6 = cCharAt8;
        }
        this.token = i2;
        return 0.0d;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.lang.Enum<?> scanEnum(java.lang.Class<?> cls, com.alibaba.fastjson.parser.SymbolTable symbolTable, char c2) {
        java.lang.String strScanSymbolWithSeperator = scanSymbolWithSeperator(symbolTable, c2);
        if (strScanSymbolWithSeperator == null) {
            return null;
        }
        return java.lang.Enum.valueOf(cls, strScanSymbolWithSeperator);
    }

    public long scanEnumSymbol(char[] cArr) {
        int i;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i2 = length + 1;
        if (charAt(this.bp + length) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode;
        while (true) {
            int i3 = i2 + 1;
            char cCharAt = charAt(this.bp + i2);
            if (cCharAt == '\"') {
                int i4 = i3 + 1;
                char cCharAt2 = charAt(this.bp + i3);
                if (cCharAt2 == ',') {
                    int i5 = this.bp + i4;
                    this.bp = i5;
                    this.ch = charAt(i5);
                    this.matchStat = 3;
                    return j;
                }
                if (cCharAt2 != '}') {
                    this.matchStat = -1;
                    return 0L;
                }
                int i6 = i4 + 1;
                char cCharAt3 = charAt(this.bp + i4);
                if (cCharAt3 == ',') {
                    i = 16;
                } else if (cCharAt3 == ']') {
                    i = 15;
                } else {
                    if (cCharAt3 != '}') {
                        if (cCharAt3 != 26) {
                            this.matchStat = -1;
                            return 0L;
                        }
                        this.token = 20;
                        this.bp = (i6 - 1) + this.bp;
                        this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                        this.matchStat = 4;
                        return j;
                    }
                    i = 13;
                }
                this.token = i;
                int i7 = this.bp + i6;
                this.bp = i7;
                this.ch = charAt(i7);
                this.matchStat = 4;
                return j;
            }
            j = (j ^ ((cCharAt < 'A' || cCharAt > 'Z') ? cCharAt : cCharAt + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE)) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
            if (cCharAt == '\\') {
                this.matchStat = -1;
                return 0L;
            }
            i2 = i3;
        }
    }

    public final void scanFalse() {
        if (this.ch != 'f') {
            throw new com.alibaba.fastjson.JSONException("error parse false");
        }
        next();
        if (this.ch != 'a') {
            throw new com.alibaba.fastjson.JSONException("error parse false");
        }
        next();
        if (this.ch != 'l') {
            throw new com.alibaba.fastjson.JSONException("error parse false");
        }
        next();
        if (this.ch != 's') {
            throw new com.alibaba.fastjson.JSONException("error parse false");
        }
        next();
        if (this.ch != 'e') {
            throw new com.alibaba.fastjson.JSONException("error parse false");
        }
        next();
        char c2 = this.ch;
        if (c2 != ' ' && c2 != ',' && c2 != '}' && c2 != ']' && c2 != '\n' && c2 != '\r' && c2 != '\t' && c2 != 26 && c2 != '\f' && c2 != '\b' && c2 != ':' && c2 != '/') {
            throw new com.alibaba.fastjson.JSONException("scan false error");
        }
        this.token = 7;
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x0073, code lost:
    
        r5 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.math.BigInteger scanFieldBigInteger(char[] r19) {
        /*
            Method dump skipped, instructions count: 421
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldBigInteger(char[]):java.math.BigInteger");
    }

    public boolean scanFieldBoolean(char[] cArr) {
        int i;
        boolean z;
        int i2;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = cArr.length;
        int i3 = length + 1;
        char cCharAt = charAt(this.bp + length);
        if (cCharAt == 't') {
            int i4 = i3 + 1;
            if (charAt(this.bp + i3) != 'r') {
                this.matchStat = -1;
                return false;
            }
            int i5 = i4 + 1;
            if (charAt(this.bp + i4) != 'u') {
                this.matchStat = -1;
                return false;
            }
            i = i5 + 1;
            if (charAt(this.bp + i5) != 'e') {
                this.matchStat = -1;
                return false;
            }
            z = true;
        } else {
            if (cCharAt != 'f') {
                this.matchStat = -1;
                return false;
            }
            int i6 = i3 + 1;
            if (charAt(this.bp + i3) != 'a') {
                this.matchStat = -1;
                return false;
            }
            int i7 = i6 + 1;
            if (charAt(this.bp + i6) != 'l') {
                this.matchStat = -1;
                return false;
            }
            int i8 = i7 + 1;
            if (charAt(this.bp + i7) != 's') {
                this.matchStat = -1;
                return false;
            }
            int i9 = i8 + 1;
            if (charAt(this.bp + i8) != 'e') {
                this.matchStat = -1;
                return false;
            }
            i = i9;
            z = false;
        }
        int i10 = i + 1;
        char cCharAt2 = charAt(this.bp + i);
        if (cCharAt2 == ',') {
            int i11 = this.bp + i10;
            this.bp = i11;
            this.ch = charAt(i11);
            this.matchStat = 3;
            this.token = 16;
            return z;
        }
        if (cCharAt2 != '}') {
            this.matchStat = -1;
            return false;
        }
        int i12 = i10 + 1;
        char cCharAt3 = charAt(this.bp + i10);
        if (cCharAt3 == ',') {
            this.token = 16;
        } else {
            if (cCharAt3 == ']') {
                i2 = 15;
            } else {
                if (cCharAt3 != '}') {
                    if (cCharAt3 != 26) {
                        this.matchStat = -1;
                        return false;
                    }
                    this.token = 20;
                    this.bp = (i12 - 1) + this.bp;
                    this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                    this.matchStat = 4;
                    return z;
                }
                i2 = 13;
            }
            this.token = i2;
        }
        int i13 = this.bp + i12;
        this.bp = i13;
        this.ch = charAt(i13);
        this.matchStat = 4;
        return z;
    }

    public java.util.Date scanFieldDate(char[] cArr) {
        int i;
        long j;
        java.util.Date date;
        int i2;
        char cCharAt;
        int i3;
        boolean z = false;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i4 = length + 1;
        char cCharAt2 = charAt(this.bp + length);
        if (cCharAt2 == '\"') {
            int iIndexOf = indexOf('\"', this.bp + cArr.length + 1);
            if (iIndexOf == -1) {
                throw new com.alibaba.fastjson.JSONException("unclosed str");
            }
            int length2 = this.bp + cArr.length + 1;
            java.lang.String strSubString = subString(length2, iIndexOf - length2);
            if (strSubString.indexOf(92) != -1) {
                while (true) {
                    int i5 = 0;
                    for (int i6 = iIndexOf - 1; i6 >= 0 && charAt(i6) == '\\'; i6--) {
                        i5++;
                    }
                    if (i5 % 2 == 0) {
                        break;
                    }
                    iIndexOf = indexOf('\"', iIndexOf + 1);
                }
                int i7 = this.bp;
                int length3 = iIndexOf - ((cArr.length + i7) + 1);
                strSubString = readString(sub_chars(i7 + cArr.length + 1, length3), length3);
            }
            int i8 = this.bp;
            int length4 = (iIndexOf - ((cArr.length + i8) + 1)) + 1 + i4;
            i = length4 + 1;
            cCharAt2 = charAt(i8 + length4);
            com.alibaba.fastjson.parser.JSONScanner jSONScanner = new com.alibaba.fastjson.parser.JSONScanner(strSubString);
            try {
                if (!jSONScanner.scanISO8601DateIfMatch(false)) {
                    this.matchStat = -1;
                    return null;
                }
                date = jSONScanner.getCalendar().getTime();
            } finally {
                jSONScanner.close();
            }
        } else {
            if (cCharAt2 != '-' && (cCharAt2 < '0' || cCharAt2 > '9')) {
                this.matchStat = -1;
                return null;
            }
            if (cCharAt2 == '-') {
                cCharAt2 = charAt(this.bp + i4);
                i4++;
                z = true;
            }
            if (cCharAt2 < '0' || cCharAt2 > '9') {
                i = i4;
                j = 0;
            } else {
                j = cCharAt2 - '0';
                while (true) {
                    i2 = i4 + 1;
                    cCharAt = charAt(this.bp + i4);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    j = (j * 10) + (cCharAt - '0');
                    i4 = i2;
                }
                cCharAt2 = cCharAt;
                i = i2;
            }
            if (j < 0) {
                this.matchStat = -1;
                return null;
            }
            if (z) {
                j = -j;
            }
            date = new java.util.Date(j);
        }
        if (cCharAt2 == ',') {
            int i9 = this.bp + i;
            this.bp = i9;
            this.ch = charAt(i9);
            this.matchStat = 3;
            return date;
        }
        if (cCharAt2 != '}') {
            this.matchStat = -1;
            return null;
        }
        int i10 = i + 1;
        char cCharAt3 = charAt(this.bp + i);
        if (cCharAt3 == ',') {
            i3 = 16;
        } else if (cCharAt3 == ']') {
            i3 = 15;
        } else {
            if (cCharAt3 != '}') {
                if (cCharAt3 != 26) {
                    this.matchStat = -1;
                    return null;
                }
                this.token = 20;
                this.bp = (i10 - 1) + this.bp;
                this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                this.matchStat = 4;
                return date;
            }
            i3 = 13;
        }
        this.token = i3;
        int i11 = this.bp + i10;
        this.bp = i11;
        this.ch = charAt(i11);
        this.matchStat = 4;
        return date;
    }

    public java.math.BigDecimal scanFieldDecimal(char[] cArr) {
        int i;
        char cCharAt;
        com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase;
        int length;
        int i2;
        char cCharAt2;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length2 = cArr.length;
        int i3 = length2 + 1;
        char cCharAt3 = charAt(this.bp + length2);
        boolean z = cCharAt3 == '\"';
        if (z) {
            cCharAt3 = charAt(this.bp + i3);
            i3++;
        }
        if (cCharAt3 == '-') {
            cCharAt3 = charAt(this.bp + i3);
            i3++;
        }
        if (cCharAt3 < '0' || cCharAt3 > '9') {
            if (cCharAt3 != 'n' || charAt(this.bp + i3) != 'u' || e.a.c.a.a.a(this.bp, i3, 1, this) != 'l' || e.a.c.a.a.a(this.bp, i3, 2, this) != 'l') {
                this.matchStat = -1;
                return null;
            }
            this.matchStat = 5;
            int i4 = i3 + 3;
            int i5 = i4 + 1;
            char cCharAt4 = charAt(this.bp + i4);
            if (z && cCharAt4 == '\"') {
                cCharAt4 = charAt(this.bp + i5);
                i5++;
            }
            while (cCharAt4 != ',') {
                if (cCharAt4 == '}') {
                    int i6 = this.bp + i5;
                    this.bp = i6;
                    this.ch = charAt(i6);
                    this.matchStat = 5;
                    this.token = 13;
                    return null;
                }
                if (!isWhitespace(cCharAt4)) {
                    this.matchStat = -1;
                    return null;
                }
                cCharAt4 = charAt(this.bp + i5);
                i5++;
            }
            int i7 = this.bp + i5;
            this.bp = i7;
            this.ch = charAt(i7);
            this.matchStat = 5;
            this.token = 16;
            return null;
        }
        while (true) {
            i = i3 + 1;
            cCharAt = charAt(this.bp + i3);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            i3 = i;
        }
        if (cCharAt == '.') {
            int i8 = i + 1;
            char cCharAt5 = charAt(this.bp + i);
            if (cCharAt5 < '0' || cCharAt5 > '9') {
                this.matchStat = -1;
                return null;
            }
            while (true) {
                i = i8 + 1;
                cCharAt = charAt(this.bp + i8);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                i8 = i;
            }
        }
        if (cCharAt == 'e' || cCharAt == 'E') {
            int i9 = i + 1;
            cCharAt = charAt(this.bp + i);
            if (cCharAt == '+' || cCharAt == '-') {
                int i10 = i9 + 1;
                cCharAt = charAt(this.bp + i9);
                jSONLexerBase = this;
                i = i10;
            } else {
                i = i9;
                jSONLexerBase = this;
            }
            while (cCharAt >= '0' && cCharAt <= '9') {
                int i11 = i + 1;
                cCharAt = jSONLexerBase.charAt(jSONLexerBase.bp + i);
                i = i11;
            }
        } else {
            jSONLexerBase = this;
        }
        if (!z) {
            int i12 = jSONLexerBase.bp;
            length = cArr.length + i12;
            i2 = ((i12 + i) - length) - 1;
        } else {
            if (cCharAt != '\"') {
                jSONLexerBase.matchStat = -1;
                return null;
            }
            int i13 = i + 1;
            cCharAt = jSONLexerBase.charAt(jSONLexerBase.bp + i);
            int i14 = jSONLexerBase.bp;
            length = cArr.length + i14 + 1;
            i2 = ((i14 + i13) - length) - 2;
            i = i13;
        }
        if (i2 > 65535) {
            throw new com.alibaba.fastjson.JSONException("scan decimal overflow");
        }
        char[] cArrSub_chars = jSONLexerBase.sub_chars(length, i2);
        java.math.BigDecimal bigDecimal = new java.math.BigDecimal(cArrSub_chars, 0, cArrSub_chars.length, java.math.MathContext.UNLIMITED);
        if (cCharAt == ',') {
            int i15 = jSONLexerBase.bp + i;
            jSONLexerBase.bp = i15;
            jSONLexerBase.ch = jSONLexerBase.charAt(i15);
            jSONLexerBase.matchStat = 3;
            jSONLexerBase.token = 16;
            return bigDecimal;
        }
        int i16 = 16;
        if (cCharAt != '}') {
            jSONLexerBase.matchStat = -1;
            return null;
        }
        int i17 = i + 1;
        char cCharAt6 = jSONLexerBase.charAt(jSONLexerBase.bp + i);
        if (cCharAt6 != ',') {
            if (cCharAt6 == ']') {
                i16 = 15;
            } else if (cCharAt6 == '}') {
                i16 = 13;
            } else {
                cCharAt2 = com.alibaba.fastjson.parser.JSONLexer.EOI;
                if (cCharAt6 != 26) {
                    jSONLexerBase.matchStat = -1;
                    return null;
                }
                jSONLexerBase.token = 20;
                jSONLexerBase.bp = (i17 - 1) + jSONLexerBase.bp;
            }
            jSONLexerBase.token = i16;
            int i18 = jSONLexerBase.bp + i17;
            jSONLexerBase.bp = i18;
            cCharAt2 = jSONLexerBase.charAt(i18);
        } else {
            jSONLexerBase.token = i16;
            int i182 = jSONLexerBase.bp + i17;
            jSONLexerBase.bp = i182;
            cCharAt2 = jSONLexerBase.charAt(i182);
        }
        jSONLexerBase.ch = cCharAt2;
        jSONLexerBase.matchStat = 4;
        return bigDecimal;
    }

    public final double scanFieldDouble(char[] cArr) throws java.lang.NumberFormatException {
        int i;
        char cCharAt;
        com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase;
        int length;
        int i2;
        double d2;
        char cCharAt2;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0.0d;
        }
        int length2 = cArr.length;
        int i3 = length2 + 1;
        char cCharAt3 = charAt(this.bp + length2);
        boolean z = cCharAt3 == '\"';
        if (z) {
            cCharAt3 = charAt(this.bp + i3);
            i3++;
        }
        boolean z2 = cCharAt3 == '-';
        if (z2) {
            cCharAt3 = charAt(this.bp + i3);
            i3++;
        }
        char c2 = '0';
        if (cCharAt3 >= '0') {
            char c3 = '9';
            if (cCharAt3 <= '9') {
                long j = cCharAt3 - '0';
                while (true) {
                    i = i3 + 1;
                    cCharAt = charAt(this.bp + i3);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    j = (j * 10) + (cCharAt - '0');
                    i3 = i;
                    z2 = z2;
                }
                boolean z3 = z2;
                long j2 = 1;
                if (cCharAt == '.') {
                    int i4 = i + 1;
                    char cCharAt4 = charAt(this.bp + i);
                    if (cCharAt4 < '0' || cCharAt4 > '9') {
                        this.matchStat = -1;
                        return 0.0d;
                    }
                    j = (j * 10) + (cCharAt4 - '0');
                    long j3 = 10;
                    while (true) {
                        i = i4 + 1;
                        cCharAt = charAt(this.bp + i4);
                        if (cCharAt < c2 || cCharAt > c3) {
                            break;
                        }
                        j = (j * 10) + (cCharAt - '0');
                        j3 *= 10;
                        i4 = i;
                        c2 = '0';
                        c3 = '9';
                    }
                    j2 = j3;
                }
                boolean z4 = cCharAt == 'e' || cCharAt == 'E';
                if (z4) {
                    int i5 = i + 1;
                    cCharAt = charAt(this.bp + i);
                    if (cCharAt == '+' || cCharAt == '-') {
                        cCharAt = charAt(this.bp + i5);
                        jSONLexerBase = this;
                        i = i5 + 1;
                    } else {
                        jSONLexerBase = this;
                        i = i5;
                    }
                    while (cCharAt >= '0' && cCharAt <= '9') {
                        cCharAt = jSONLexerBase.charAt(jSONLexerBase.bp + i);
                        i++;
                    }
                } else {
                    jSONLexerBase = this;
                }
                if (!z) {
                    int i6 = jSONLexerBase.bp;
                    length = cArr.length + i6;
                    i2 = ((i6 + i) - length) - 1;
                } else {
                    if (cCharAt != '\"') {
                        jSONLexerBase.matchStat = -1;
                        return 0.0d;
                    }
                    int i7 = i + 1;
                    cCharAt = jSONLexerBase.charAt(jSONLexerBase.bp + i);
                    int i8 = jSONLexerBase.bp;
                    length = cArr.length + i8 + 1;
                    i2 = ((i8 + i7) - length) - 2;
                    i = i7;
                }
                if (z4 || i2 >= 17) {
                    d2 = java.lang.Double.parseDouble(jSONLexerBase.subString(length, i2));
                } else {
                    double d3 = j;
                    double d4 = j2;
                    java.lang.Double.isNaN(d3);
                    java.lang.Double.isNaN(d4);
                    d2 = d3 / d4;
                    if (z3) {
                        d2 = -d2;
                    }
                }
                if (cCharAt == ',') {
                    int i9 = jSONLexerBase.bp + i;
                    jSONLexerBase.bp = i9;
                    jSONLexerBase.ch = jSONLexerBase.charAt(i9);
                    jSONLexerBase.matchStat = 3;
                    jSONLexerBase.token = 16;
                    return d2;
                }
                int i10 = 16;
                if (cCharAt != '}') {
                    jSONLexerBase.matchStat = -1;
                    return 0.0d;
                }
                int i11 = i + 1;
                char cCharAt5 = jSONLexerBase.charAt(jSONLexerBase.bp + i);
                if (cCharAt5 != ',') {
                    if (cCharAt5 == ']') {
                        i10 = 15;
                    } else if (cCharAt5 == '}') {
                        i10 = 13;
                    } else {
                        cCharAt2 = com.alibaba.fastjson.parser.JSONLexer.EOI;
                        if (cCharAt5 != 26) {
                            jSONLexerBase.matchStat = -1;
                            return 0.0d;
                        }
                        jSONLexerBase.token = 20;
                        jSONLexerBase.bp = (i11 - 1) + jSONLexerBase.bp;
                    }
                    jSONLexerBase.token = i10;
                    int i12 = jSONLexerBase.bp + i11;
                    jSONLexerBase.bp = i12;
                    cCharAt2 = jSONLexerBase.charAt(i12);
                } else {
                    jSONLexerBase.token = i10;
                    int i122 = jSONLexerBase.bp + i11;
                    jSONLexerBase.bp = i122;
                    cCharAt2 = jSONLexerBase.charAt(i122);
                }
                jSONLexerBase.ch = cCharAt2;
                jSONLexerBase.matchStat = 4;
                return d2;
            }
        }
        if (cCharAt3 != 'n' || charAt(this.bp + i3) != 'u' || e.a.c.a.a.a(this.bp, i3, 1, this) != 'l' || e.a.c.a.a.a(this.bp, i3, 2, this) != 'l') {
            this.matchStat = -1;
            return 0.0d;
        }
        this.matchStat = 5;
        int i13 = i3 + 3;
        int i14 = i13 + 1;
        char cCharAt6 = charAt(this.bp + i13);
        if (z && cCharAt6 == '\"') {
            cCharAt6 = charAt(this.bp + i14);
            i14++;
        }
        while (cCharAt6 != ',') {
            if (cCharAt6 == '}') {
                int i15 = this.bp + i14;
                this.bp = i15;
                this.ch = charAt(i15);
                this.matchStat = 5;
                this.token = 13;
                return 0.0d;
            }
            if (!isWhitespace(cCharAt6)) {
                this.matchStat = -1;
                return 0.0d;
            }
            cCharAt6 = charAt(this.bp + i14);
            i14++;
        }
        int i16 = this.bp + i14;
        this.bp = i16;
        this.ch = charAt(i16);
        this.matchStat = 5;
        this.token = 16;
        return 0.0d;
    }

    public final float scanFieldFloat(char[] cArr) throws java.lang.NumberFormatException {
        int i;
        char cCharAt;
        boolean z;
        long j;
        int i2;
        com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase;
        int length;
        int i3;
        float f2;
        int i4;
        char c2;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0.0f;
        }
        int length2 = cArr.length;
        int i5 = length2 + 1;
        char cCharAt2 = charAt(this.bp + length2);
        boolean z2 = cCharAt2 == '\"';
        if (z2) {
            cCharAt2 = charAt(this.bp + i5);
            i5++;
        }
        boolean z3 = cCharAt2 == '-';
        if (z3) {
            cCharAt2 = charAt(this.bp + i5);
            i5++;
        }
        char c3 = '0';
        if (cCharAt2 >= '0') {
            char c4 = '9';
            if (cCharAt2 <= '9') {
                long j2 = cCharAt2 - '0';
                while (true) {
                    i = i5 + 1;
                    cCharAt = charAt(this.bp + i5);
                    if (cCharAt < '0' || cCharAt > '9') {
                        break;
                    }
                    j2 = (j2 * 10) + (cCharAt - '0');
                    i5 = i;
                }
                if (cCharAt == '.') {
                    int i6 = i + 1;
                    char cCharAt3 = charAt(this.bp + i);
                    if (cCharAt3 < '0' || cCharAt3 > '9') {
                        this.matchStat = -1;
                        return 0.0f;
                    }
                    z = z3;
                    j2 = (j2 * 10) + (cCharAt3 - '0');
                    j = 10;
                    while (true) {
                        i = i6 + 1;
                        cCharAt = charAt(this.bp + i6);
                        if (cCharAt < c3 || cCharAt > c4) {
                            break;
                        }
                        j2 = (j2 * 10) + (cCharAt - '0');
                        j *= 10;
                        c4 = '9';
                        i6 = i;
                        c3 = '0';
                    }
                } else {
                    z = z3;
                    j = 1;
                }
                boolean z4 = cCharAt == 'e' || cCharAt == 'E';
                if (z4) {
                    int i7 = i + 1;
                    cCharAt = charAt(this.bp + i);
                    if (cCharAt == '+' || cCharAt == '-') {
                        i2 = i7 + 1;
                        int i8 = this.bp + i7;
                        jSONLexerBase = this;
                        c2 = '0';
                        cCharAt = jSONLexerBase.charAt(i8);
                    } else {
                        jSONLexerBase = this;
                        i2 = i7;
                        c2 = '0';
                    }
                    while (cCharAt >= c2 && cCharAt <= '9') {
                        int i9 = jSONLexerBase.bp + i2;
                        i2++;
                        cCharAt = jSONLexerBase.charAt(i9);
                    }
                } else {
                    i2 = i;
                    jSONLexerBase = this;
                }
                if (!z2) {
                    int i10 = jSONLexerBase.bp;
                    length = cArr.length + i10;
                    i3 = ((i10 + i2) - length) - 1;
                } else {
                    if (cCharAt != '\"') {
                        jSONLexerBase.matchStat = -1;
                        return 0.0f;
                    }
                    int i11 = i2 + 1;
                    cCharAt = jSONLexerBase.charAt(jSONLexerBase.bp + i2);
                    int i12 = jSONLexerBase.bp;
                    length = cArr.length + i12 + 1;
                    i3 = ((i12 + i11) - length) - 2;
                    i2 = i11;
                }
                if (z4 || i3 >= 17) {
                    f2 = java.lang.Float.parseFloat(jSONLexerBase.subString(length, i3));
                } else {
                    double d2 = j2;
                    double d3 = j;
                    java.lang.Double.isNaN(d2);
                    java.lang.Double.isNaN(d3);
                    f2 = (float) (d2 / d3);
                    if (z) {
                        f2 = -f2;
                    }
                }
                if (cCharAt == ',') {
                    int i13 = jSONLexerBase.bp + i2;
                    jSONLexerBase.bp = i13;
                    jSONLexerBase.ch = jSONLexerBase.charAt(i13);
                    jSONLexerBase.matchStat = 3;
                    jSONLexerBase.token = 16;
                    return f2;
                }
                if (cCharAt != '}') {
                    jSONLexerBase.matchStat = -1;
                    return 0.0f;
                }
                int i14 = i2 + 1;
                char cCharAt4 = jSONLexerBase.charAt(jSONLexerBase.bp + i2);
                if (cCharAt4 == ',') {
                    jSONLexerBase.token = 16;
                } else {
                    if (cCharAt4 == ']') {
                        i4 = 15;
                    } else {
                        if (cCharAt4 != '}') {
                            if (cCharAt4 != 26) {
                                jSONLexerBase.matchStat = -1;
                                return 0.0f;
                            }
                            jSONLexerBase.bp = (i14 - 1) + jSONLexerBase.bp;
                            jSONLexerBase.token = 20;
                            jSONLexerBase.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                            jSONLexerBase.matchStat = 4;
                            return f2;
                        }
                        i4 = 13;
                    }
                    jSONLexerBase.token = i4;
                }
                int i15 = jSONLexerBase.bp + i14;
                jSONLexerBase.bp = i15;
                jSONLexerBase.ch = jSONLexerBase.charAt(i15);
                jSONLexerBase.matchStat = 4;
                return f2;
            }
        }
        if (cCharAt2 != 'n' || charAt(this.bp + i5) != 'u' || e.a.c.a.a.a(this.bp, i5, 1, this) != 'l' || e.a.c.a.a.a(this.bp, i5, 2, this) != 'l') {
            this.matchStat = -1;
            return 0.0f;
        }
        this.matchStat = 5;
        int i16 = i5 + 3;
        int i17 = i16 + 1;
        char cCharAt5 = charAt(this.bp + i16);
        if (z2 && cCharAt5 == '\"') {
            cCharAt5 = charAt(this.bp + i17);
            i17++;
        }
        while (cCharAt5 != ',') {
            if (cCharAt5 == '}') {
                int i18 = this.bp + i17;
                this.bp = i18;
                this.ch = charAt(i18);
                this.matchStat = 5;
                this.token = 13;
                return 0.0f;
            }
            if (!isWhitespace(cCharAt5)) {
                this.matchStat = -1;
                return 0.0f;
            }
            cCharAt5 = charAt(this.bp + i17);
            i17++;
        }
        int i19 = this.bp + i17;
        this.bp = i19;
        this.ch = charAt(i19);
        this.matchStat = 5;
        this.token = 16;
        return 0.0f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:105:0x01a6, code lost:
    
        r20.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01a8, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00a2, code lost:
    
        r20.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a4, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[] scanFieldFloatArray(char[] r21) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloatArray(char[]):float[]");
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00b1, code lost:
    
        r19.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b3, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x014f, code lost:
    
        r3 = r17 + 1;
        r0 = charAt(r19.bp + r17);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x015a, code lost:
    
        if (r1 == r2.length) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x015c, code lost:
    
        r4 = new float[r1];
        r5 = 0;
        java.lang.System.arraycopy(r2, 0, r4, 0, r1);
        r2 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0164, code lost:
    
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0166, code lost:
    
        if (r7 < r6.length) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0168, code lost:
    
        r4 = new float[(r6.length * 3) / 2][];
        java.lang.System.arraycopy(r2, r5, r4, r5, r1);
        r6 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0173, code lost:
    
        r1 = r7 + 1;
        r6[r7] = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0179, code lost:
    
        if (r0 != ',') goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x017b, code lost:
    
        r2 = r3 + 1;
        r0 = charAt(r19.bp + r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0187, code lost:
    
        if (r0 != ']') goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0189, code lost:
    
        r2 = r3 + 1;
        r7 = r1;
        r1 = charAt(r19.bp + r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0195, code lost:
    
        r2 = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x01ab, code lost:
    
        r19.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x01ae, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float[][] scanFieldFloatArray2(char[] r20) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 533
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldFloatArray2(char[]):float[][]");
    }

    public int scanFieldInt(char[] cArr) {
        int i;
        char cCharAt;
        char cCharAt2;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char cCharAt3 = charAt(this.bp + length);
        boolean z = cCharAt3 == '-';
        if (z) {
            cCharAt3 = charAt(this.bp + i2);
            i2++;
        }
        if (cCharAt3 < '0' || cCharAt3 > '9') {
            this.matchStat = -1;
            return 0;
        }
        int i3 = cCharAt3 - '0';
        while (true) {
            i = i2 + 1;
            cCharAt = charAt(this.bp + i2);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            i3 = (i3 * 10) + (cCharAt - '0');
            i2 = i;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0;
        }
        if ((i3 < 0 || i > cArr.length + 14) && !(i3 == Integer.MIN_VALUE && i == 17 && z)) {
            this.matchStat = -1;
            return 0;
        }
        int i4 = 16;
        if (cCharAt == ',') {
            int i5 = this.bp + i;
            this.bp = i5;
            this.ch = charAt(i5);
            this.matchStat = 3;
            this.token = 16;
            return z ? -i3 : i3;
        }
        if (cCharAt != '}') {
            this.matchStat = -1;
            return 0;
        }
        int i6 = i + 1;
        char cCharAt4 = charAt(this.bp + i);
        if (cCharAt4 != ',') {
            if (cCharAt4 == ']') {
                i4 = 15;
            } else if (cCharAt4 == '}') {
                i4 = 13;
            } else {
                cCharAt2 = com.alibaba.fastjson.parser.JSONLexer.EOI;
                if (cCharAt4 != 26) {
                    this.matchStat = -1;
                    return 0;
                }
                this.token = 20;
                this.bp = (i6 - 1) + this.bp;
            }
            this.token = i4;
            int i7 = this.bp + i6;
            this.bp = i7;
            cCharAt2 = charAt(i7);
        } else {
            this.token = i4;
            int i72 = this.bp + i6;
            this.bp = i72;
            cCharAt2 = charAt(i72);
        }
        this.ch = cCharAt2;
        this.matchStat = 4;
        return z ? -i3 : i3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:65:0x010a, code lost:
    
        r2 = r4;
        r17.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x010d, code lost:
    
        return r2;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int[] scanFieldIntArray(char[] r18) {
        /*
            Method dump skipped, instructions count: 270
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldIntArray(char[]):int[]");
    }

    public long scanFieldLong(char[] cArr) {
        boolean z;
        int i;
        char cCharAt;
        char cCharAt2;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i2 = length + 1;
        char cCharAt3 = charAt(this.bp + length);
        if (cCharAt3 == '-') {
            cCharAt3 = charAt(this.bp + i2);
            i2++;
            z = true;
        } else {
            z = false;
        }
        if (cCharAt3 < '0' || cCharAt3 > '9') {
            this.matchStat = -1;
            return 0L;
        }
        long j = cCharAt3 - '0';
        while (true) {
            i = i2 + 1;
            cCharAt = charAt(this.bp + i2);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j = (j * 10) + (cCharAt - '0');
            i2 = i;
        }
        if (cCharAt == '.') {
            this.matchStat = -1;
            return 0L;
        }
        if (!(i - cArr.length < 21 && (j >= 0 || (j == Long.MIN_VALUE && z)))) {
            this.matchStat = -1;
            return 0L;
        }
        int i3 = 16;
        if (cCharAt == ',') {
            int i4 = this.bp + i;
            this.bp = i4;
            this.ch = charAt(i4);
            this.matchStat = 3;
            this.token = 16;
            return z ? -j : j;
        }
        if (cCharAt != '}') {
            this.matchStat = -1;
            return 0L;
        }
        int i5 = i + 1;
        char cCharAt4 = charAt(this.bp + i);
        if (cCharAt4 != ',') {
            if (cCharAt4 == ']') {
                i3 = 15;
            } else if (cCharAt4 == '}') {
                i3 = 13;
            } else {
                cCharAt2 = com.alibaba.fastjson.parser.JSONLexer.EOI;
                if (cCharAt4 != 26) {
                    this.matchStat = -1;
                    return 0L;
                }
                this.token = 20;
                this.bp = (i5 - 1) + this.bp;
            }
            this.token = i3;
            int i6 = this.bp + i5;
            this.bp = i6;
            cCharAt2 = charAt(i6);
        } else {
            this.token = i3;
            int i62 = this.bp + i5;
            this.bp = i62;
            cCharAt2 = charAt(i62);
        }
        this.ch = cCharAt2;
        this.matchStat = 4;
        return z ? -j : j;
    }

    public java.lang.String scanFieldString(char[] cArr) {
        int i;
        this.matchStat = 0;
        if (charArrayCompare(cArr)) {
            int length = cArr.length;
            int i2 = length + 1;
            if (charAt(this.bp + length) == '\"') {
                int iIndexOf = indexOf('\"', this.bp + cArr.length + 1);
                if (iIndexOf == -1) {
                    throw new com.alibaba.fastjson.JSONException("unclosed str");
                }
                int length2 = this.bp + cArr.length + 1;
                java.lang.String strSubString = subString(length2, iIndexOf - length2);
                if (strSubString.indexOf(92) != -1) {
                    while (true) {
                        int i3 = 0;
                        for (int i4 = iIndexOf - 1; i4 >= 0 && charAt(i4) == '\\'; i4--) {
                            i3++;
                        }
                        if (i3 % 2 == 0) {
                            break;
                        }
                        iIndexOf = indexOf('\"', iIndexOf + 1);
                    }
                    int i5 = this.bp;
                    int length3 = iIndexOf - ((cArr.length + i5) + 1);
                    strSubString = readString(sub_chars(i5 + cArr.length + 1, length3), length3);
                }
                int i6 = this.bp;
                int length4 = (iIndexOf - ((cArr.length + i6) + 1)) + 1 + i2;
                int i7 = length4 + 1;
                char cCharAt = charAt(i6 + length4);
                if (cCharAt == ',') {
                    int i8 = this.bp + i7;
                    this.bp = i8;
                    this.ch = charAt(i8);
                    this.matchStat = 3;
                    return strSubString;
                }
                if (cCharAt == '}') {
                    int i9 = i7 + 1;
                    char cCharAt2 = charAt(this.bp + i7);
                    if (cCharAt2 == ',') {
                        i = 16;
                    } else if (cCharAt2 == ']') {
                        i = 15;
                    } else if (cCharAt2 == '}') {
                        i = 13;
                    } else if (cCharAt2 == 26) {
                        this.token = 20;
                        this.bp = (i9 - 1) + this.bp;
                        this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                        this.matchStat = 4;
                        return strSubString;
                    }
                    this.token = i;
                    int i10 = this.bp + i9;
                    this.bp = i10;
                    this.ch = charAt(i10);
                    this.matchStat = 4;
                    return strSubString;
                }
            }
            this.matchStat = -1;
        } else {
            this.matchStat = -2;
        }
        return stringDefaultValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:44:0x00db, code lost:
    
        if (r11 != ']') goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00e1, code lost:
    
        if (r12.size() != 0) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0147, code lost:
    
        throw new com.alibaba.fastjson.JSONException("illega str");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Collection<java.lang.String> scanFieldStringArray(char[] r11, java.lang.Class<?> r12) {
        /*
            Method dump skipped, instructions count: 329
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanFieldStringArray(char[], java.lang.Class):java.util.Collection");
    }

    public java.lang.String[] scanFieldStringArray(char[] cArr, int i, com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        throw new java.lang.UnsupportedOperationException();
    }

    public long scanFieldSymbol(char[] cArr) {
        int i;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return 0L;
        }
        int length = cArr.length;
        int i2 = length + 1;
        if (charAt(this.bp + length) != '\"') {
            this.matchStat = -1;
            return 0L;
        }
        long j = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode;
        while (true) {
            int i3 = i2 + 1;
            char cCharAt = charAt(this.bp + i2);
            if (cCharAt == '\"') {
                int i4 = i3 + 1;
                char cCharAt2 = charAt(this.bp + i3);
                if (cCharAt2 == ',') {
                    int i5 = this.bp + i4;
                    this.bp = i5;
                    this.ch = charAt(i5);
                    this.matchStat = 3;
                    return j;
                }
                if (cCharAt2 != '}') {
                    this.matchStat = -1;
                    return 0L;
                }
                int i6 = i4 + 1;
                char cCharAt3 = charAt(this.bp + i4);
                if (cCharAt3 == ',') {
                    i = 16;
                } else if (cCharAt3 == ']') {
                    i = 15;
                } else {
                    if (cCharAt3 != '}') {
                        if (cCharAt3 != 26) {
                            this.matchStat = -1;
                            return 0L;
                        }
                        this.token = 20;
                        this.bp = (i6 - 1) + this.bp;
                        this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                        this.matchStat = 4;
                        return j;
                    }
                    i = 13;
                }
                this.token = i;
                int i7 = this.bp + i6;
                this.bp = i7;
                this.ch = charAt(i7);
                this.matchStat = 4;
                return j;
            }
            j = (j ^ cCharAt) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
            if (cCharAt == '\\') {
                this.matchStat = -1;
                return 0L;
            }
            i2 = i3;
        }
    }

    public java.util.UUID scanFieldUUID(char[] cArr) {
        char cCharAt;
        int i;
        java.util.UUID uuid;
        char cCharAt2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        this.matchStat = 0;
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = cArr.length;
        int i18 = length + 1;
        char cCharAt3 = charAt(this.bp + length);
        char c2 = 4;
        if (cCharAt3 != '\"') {
            if (cCharAt3 == 'n') {
                int i19 = i18 + 1;
                if (charAt(this.bp + i18) == 'u') {
                    int i20 = i19 + 1;
                    if (charAt(this.bp + i19) == 'l') {
                        int i21 = i20 + 1;
                        if (charAt(this.bp + i20) == 'l') {
                            cCharAt = charAt(this.bp + i21);
                            i = i21 + 1;
                            uuid = null;
                        }
                    }
                }
            }
            this.matchStat = -1;
            return null;
        }
        int iIndexOf = indexOf('\"', this.bp + cArr.length + 1);
        if (iIndexOf == -1) {
            throw new com.alibaba.fastjson.JSONException("unclosed str");
        }
        int length2 = this.bp + cArr.length + 1;
        int i22 = iIndexOf - length2;
        char c3 = 'F';
        char c4 = 'f';
        char c5 = 'A';
        char c6 = '0';
        if (i22 != 36) {
            i3 = iIndexOf;
            i4 = i18;
            if (i22 == 32) {
                long j = 0;
                for (int i23 = 0; i23 < 16; i23++) {
                    char cCharAt4 = charAt(length2 + i23);
                    if (cCharAt4 < '0' || cCharAt4 > '9') {
                        if (cCharAt4 >= 'a' && cCharAt4 <= 'f') {
                            i6 = cCharAt4 - 'a';
                        } else {
                            if (cCharAt4 < 'A' || cCharAt4 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i6 = cCharAt4 - 'A';
                        }
                        i7 = i6 + 10;
                    } else {
                        i7 = cCharAt4 - '0';
                    }
                    j = (j << 4) | i7;
                }
                int i24 = 16;
                long j2 = 0;
                for (int i25 = 32; i24 < i25; i25 = 32) {
                    char cCharAt5 = charAt(length2 + i24);
                    if (cCharAt5 >= '0' && cCharAt5 <= '9') {
                        i5 = cCharAt5 - '0';
                    } else if (cCharAt5 >= 'a' && cCharAt5 <= 'f') {
                        i5 = (cCharAt5 - 'a') + 10;
                    } else {
                        if (cCharAt5 < 'A' || cCharAt5 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i5 = (cCharAt5 - 'A') + 10;
                        j2 = (j2 << 4) | i5;
                        i24++;
                    }
                    j2 = (j2 << 4) | i5;
                    i24++;
                }
                uuid = new java.util.UUID(j, j2);
            }
            this.matchStat = -1;
            return null;
        }
        int i26 = 0;
        long j3 = 0;
        while (i26 < 8) {
            char cCharAt6 = charAt(length2 + i26);
            if (cCharAt6 < '0' || cCharAt6 > '9') {
                if (cCharAt6 >= 'a' && cCharAt6 <= 'f') {
                    i16 = cCharAt6 - 'a';
                } else {
                    if (cCharAt6 < 'A' || cCharAt6 > c3) {
                        this.matchStat = -2;
                        return null;
                    }
                    i16 = cCharAt6 - 'A';
                }
                i17 = i16 + 10;
            } else {
                i17 = cCharAt6 - '0';
            }
            j3 = (j3 << 4) | i17;
            i26++;
            iIndexOf = iIndexOf;
            c3 = 'F';
        }
        i3 = iIndexOf;
        int i27 = 9;
        int i28 = 13;
        while (i27 < i28) {
            char cCharAt7 = charAt(length2 + i27);
            if (cCharAt7 < '0' || cCharAt7 > '9') {
                if (cCharAt7 >= 'a' && cCharAt7 <= 'f') {
                    i14 = cCharAt7 - 'a';
                } else {
                    if (cCharAt7 < c5 || cCharAt7 > 'F') {
                        this.matchStat = -2;
                        return null;
                    }
                    i14 = cCharAt7 - 'A';
                }
                i15 = i14 + 10;
            } else {
                i15 = cCharAt7 - '0';
            }
            j3 = (j3 << c2) | i15;
            i27++;
            i28 = 13;
            c5 = 'A';
            c2 = 4;
        }
        long j4 = j3;
        for (int i29 = 14; i29 < 18; i29++) {
            char cCharAt8 = charAt(length2 + i29);
            if (cCharAt8 < '0' || cCharAt8 > '9') {
                if (cCharAt8 >= 'a' && cCharAt8 <= 'f') {
                    i12 = cCharAt8 - 'a';
                } else {
                    if (cCharAt8 < 'A' || cCharAt8 > 'F') {
                        this.matchStat = -2;
                        return null;
                    }
                    i12 = cCharAt8 - 'A';
                }
                i13 = i12 + 10;
            } else {
                i13 = cCharAt8 - '0';
            }
            j4 = (j4 << 4) | i13;
        }
        int i30 = 19;
        long j5 = 0;
        while (i30 < 23) {
            char cCharAt9 = charAt(length2 + i30);
            if (cCharAt9 < '0' || cCharAt9 > '9') {
                if (cCharAt9 >= 'a' && cCharAt9 <= 'f') {
                    i10 = cCharAt9 - 'a';
                } else {
                    if (cCharAt9 < 'A' || cCharAt9 > 'F') {
                        this.matchStat = -2;
                        return null;
                    }
                    i10 = cCharAt9 - 'A';
                }
                i11 = i10 + 10;
            } else {
                i11 = cCharAt9 - '0';
            }
            i30++;
            j5 = (j5 << 4) | i11;
        }
        int i31 = 24;
        long j6 = j5;
        int i32 = 36;
        while (i31 < i32) {
            char cCharAt10 = charAt(length2 + i31);
            if (cCharAt10 < c6 || cCharAt10 > '9') {
                if (cCharAt10 >= 'a' && cCharAt10 <= c4) {
                    i8 = cCharAt10 - 'a';
                } else {
                    if (cCharAt10 < 'A' || cCharAt10 > 'F') {
                        this.matchStat = -2;
                        return null;
                    }
                    i8 = cCharAt10 - 'A';
                }
                i9 = i8 + 10;
            } else {
                i9 = cCharAt10 - '0';
            }
            j6 = (j6 << 4) | i9;
            i31++;
            i18 = i18;
            i32 = 36;
            c6 = '0';
            c4 = 'f';
        }
        i4 = i18;
        uuid = new java.util.UUID(j4, j6);
        int i33 = this.bp;
        int length3 = (i3 - ((cArr.length + i33) + 1)) + 1 + i4;
        i = length3 + 1;
        cCharAt = charAt(i33 + length3);
        if (cCharAt == ',') {
            int i34 = this.bp + i;
            this.bp = i34;
            this.ch = charAt(i34);
            this.matchStat = 3;
            return uuid;
        }
        if (cCharAt == '}') {
            int i35 = i + 1;
            char cCharAt11 = charAt(this.bp + i);
            if (cCharAt11 == ',') {
                i2 = 16;
            } else {
                if (cCharAt11 == ']') {
                    this.token = 15;
                    int i36 = this.bp + i35;
                    this.bp = i36;
                    cCharAt2 = charAt(i36);
                    this.ch = cCharAt2;
                    this.matchStat = 4;
                    return uuid;
                }
                if (cCharAt11 == '}') {
                    i2 = 13;
                } else if (cCharAt11 == 26) {
                    this.token = 20;
                    this.bp = (i35 - 1) + this.bp;
                    cCharAt2 = com.alibaba.fastjson.parser.JSONLexer.EOI;
                    this.ch = cCharAt2;
                    this.matchStat = 4;
                    return uuid;
                }
            }
            this.token = i2;
            int i362 = this.bp + i35;
            this.bp = i362;
            cCharAt2 = charAt(i362);
            this.ch = cCharAt2;
            this.matchStat = 4;
            return uuid;
        }
        this.matchStat = -1;
        return null;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final float scanFloat(char c2) throws java.lang.NumberFormatException {
        int i;
        int i2;
        int i3;
        char cCharAt;
        boolean z;
        com.alibaba.fastjson.parser.JSONLexerBase jSONLexerBase;
        boolean z2;
        long j;
        char c3;
        char c4;
        int i4;
        int i5;
        int i6;
        float f2;
        boolean z3;
        char c5;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.bp + 0);
        boolean z4 = cCharAt2 == '\"';
        if (z4) {
            cCharAt2 = charAt(this.bp + 1);
            i = 2;
        } else {
            i = 1;
        }
        boolean z5 = cCharAt2 == '-';
        if (z5) {
            cCharAt2 = charAt(this.bp + i);
            i++;
        }
        if (cCharAt2 < '0' || cCharAt2 > '9') {
            boolean z6 = z4;
            if (cCharAt2 != 'n' || charAt(this.bp + i) != 'u' || e.a.c.a.a.a(this.bp, i, 1, this) != 'l' || e.a.c.a.a.a(this.bp, i, 2, this) != 'l') {
                this.matchStat = -1;
                return 0.0f;
            }
            this.matchStat = 5;
            int i7 = i + 3;
            int i8 = i7 + 1;
            char cCharAt3 = charAt(this.bp + i7);
            if (z6 && cCharAt3 == '\"') {
                cCharAt3 = charAt(this.bp + i8);
                i8++;
            }
            while (true) {
                if (cCharAt3 == ',') {
                    int i9 = this.bp + i8;
                    this.bp = i9;
                    this.ch = charAt(i9);
                    this.matchStat = 5;
                    i2 = 16;
                    break;
                }
                if (cCharAt3 == ']') {
                    int i10 = this.bp + i8;
                    this.bp = i10;
                    this.ch = charAt(i10);
                    this.matchStat = 5;
                    i2 = 15;
                    break;
                }
                if (!isWhitespace(cCharAt3)) {
                    this.matchStat = -1;
                    return 0.0f;
                }
                cCharAt3 = charAt(this.bp + i8);
                i8++;
            }
            this.token = i2;
            return 0.0f;
        }
        long j2 = cCharAt2 - '0';
        while (true) {
            i3 = i + 1;
            cCharAt = charAt(this.bp + i);
            if (cCharAt < '0' || cCharAt > '9') {
                break;
            }
            j2 = (j2 * 10) + (cCharAt - '0');
            i = i3;
        }
        long j3 = 1;
        if (cCharAt == '.') {
            int i11 = i3 + 1;
            char cCharAt4 = charAt(this.bp + i3);
            if (cCharAt4 < '0' || cCharAt4 > '9') {
                this.matchStat = -1;
                return 0.0f;
            }
            z = z4;
            j2 = (j2 * 10) + (cCharAt4 - '0');
            j3 = 10;
            while (true) {
                i3 = i11 + 1;
                cCharAt = charAt(this.bp + i11);
                if (cCharAt < '0' || cCharAt > '9') {
                    break;
                }
                j2 = (j2 * 10) + (cCharAt - '0');
                j3 *= 10;
                i11 = i3;
            }
        } else {
            z = z4;
        }
        boolean z7 = cCharAt == 'e' || cCharAt == 'E';
        if (z7) {
            int i12 = i3 + 1;
            cCharAt = charAt(this.bp + i3);
            if (cCharAt == '+' || cCharAt == '-') {
                int i13 = i12 + 1;
                char cCharAt5 = charAt(this.bp + i12);
                jSONLexerBase = this;
                z3 = z7;
                c5 = '\"';
                i3 = i13;
                c4 = c2;
                cCharAt = cCharAt5;
            } else {
                jSONLexerBase = this;
                i3 = i12;
                c5 = '\"';
                z3 = z7;
                c4 = c2;
            }
            while (cCharAt >= '0' && cCharAt <= '9') {
                int i14 = i3 + 1;
                char cCharAt6 = jSONLexerBase.charAt(jSONLexerBase.bp + i3);
                i3 = i14;
                c4 = c4;
                cCharAt = cCharAt6;
            }
            z2 = z3;
            j = j3;
            c3 = c5;
        } else {
            jSONLexerBase = this;
            z2 = z7;
            j = j3;
            c3 = '\"';
            c4 = c2;
        }
        if (!z) {
            int i15 = jSONLexerBase.bp;
            i4 = ((i15 + i3) - i15) - 1;
            int i16 = i3;
            i5 = i15;
            i6 = i16;
        } else {
            if (cCharAt != c3) {
                jSONLexerBase.matchStat = -1;
                return 0.0f;
            }
            i6 = i3 + 1;
            cCharAt = jSONLexerBase.charAt(jSONLexerBase.bp + i3);
            int i17 = jSONLexerBase.bp;
            i5 = i17 + 1;
            i4 = ((i17 + i6) - i5) - 2;
        }
        if (z2 || i4 >= 17) {
            f2 = java.lang.Float.parseFloat(jSONLexerBase.subString(i5, i4));
        } else {
            double d2 = j2;
            double d3 = j;
            java.lang.Double.isNaN(d2);
            java.lang.Double.isNaN(d3);
            f2 = (float) (d2 / d3);
            if (z5) {
                f2 = -f2;
            }
        }
        if (cCharAt != c4) {
            jSONLexerBase.matchStat = -1;
            return f2;
        }
        int i18 = jSONLexerBase.bp + i6;
        jSONLexerBase.bp = i18;
        jSONLexerBase.ch = jSONLexerBase.charAt(i18);
        jSONLexerBase.matchStat = 3;
        jSONLexerBase.token = 16;
        return f2;
    }

    public final void scanHex() {
        char next;
        if (this.ch != 'x') {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("illegal state. ");
            sbO.append(this.ch);
            throw new com.alibaba.fastjson.JSONException(sbO.toString());
        }
        next();
        if (this.ch != '\'') {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("illegal state. ");
            sbO2.append(this.ch);
            throw new com.alibaba.fastjson.JSONException(sbO2.toString());
        }
        this.np = this.bp;
        next();
        if (this.ch != '\'') {
            while (true) {
                next = next();
                if ((next < '0' || next > '9') && (next < 'A' || next > 'F')) {
                    break;
                } else {
                    this.sp++;
                }
            }
            if (next != '\'') {
                throw new com.alibaba.fastjson.JSONException("illegal state. " + next);
            }
            this.sp++;
        }
        next();
        this.token = 26;
    }

    public final void scanIdent() {
        this.np = this.bp - 1;
        this.hasSpecial = false;
        do {
            this.sp++;
            next();
        } while (java.lang.Character.isLetterOrDigit(this.ch));
        java.lang.String strStringVal = stringVal();
        this.token = "null".equalsIgnoreCase(strStringVal) ? 8 : "new".equals(strStringVal) ? 9 : "true".equals(strStringVal) ? 6 : "false".equals(strStringVal) ? 7 : "undefined".equals(strStringVal) ? 23 : "Set".equals(strStringVal) ? 21 : "TreeSet".equals(strStringVal) ? 22 : 18;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00d5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:66:0x00ef -> B:67:0x00f1). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanInt(char r14) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanInt(char):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:71:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x010f  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:78:0x0129 -> B:79:0x012b). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long scanLong(char r16) {
        /*
            Method dump skipped, instructions count: 316
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanLong(char):long");
    }

    public final void scanNullOrNew() {
        scanNullOrNew(true);
    }

    public final void scanNullOrNew(boolean z) {
        char c2;
        if (this.ch != 'n') {
            throw new com.alibaba.fastjson.JSONException("error parse null or new");
        }
        next();
        char c3 = this.ch;
        if (c3 != 'u') {
            if (c3 != 'e') {
                throw new com.alibaba.fastjson.JSONException("error parse new");
            }
            next();
            if (this.ch != 'w') {
                throw new com.alibaba.fastjson.JSONException("error parse new");
            }
            next();
            char c4 = this.ch;
            if (c4 != ' ' && c4 != ',' && c4 != '}' && c4 != ']' && c4 != '\n' && c4 != '\r' && c4 != '\t' && c4 != 26 && c4 != '\f' && c4 != '\b') {
                throw new com.alibaba.fastjson.JSONException("scan new error");
            }
            this.token = 9;
            return;
        }
        next();
        if (this.ch != 'l') {
            throw new com.alibaba.fastjson.JSONException("error parse null");
        }
        next();
        if (this.ch != 'l') {
            throw new com.alibaba.fastjson.JSONException("error parse null");
        }
        next();
        char c5 = this.ch;
        if (c5 != ' ' && c5 != ',' && c5 != '}' && c5 != ']' && c5 != '\n' && c5 != '\r' && c5 != '\t' && c5 != 26 && ((c5 != ':' || !z) && (c2 = this.ch) != '\f' && c2 != '\b')) {
            throw new com.alibaba.fastjson.JSONException("scan null error");
        }
        this.token = 8;
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x007c, code lost:
    
        if (r0 != '-') goto L44;
     */
    /* JADX WARN: Path cross not found for [B:43:0x007e, B:42:0x007c], limit reached: 59 */
    /* JADX WARN: Path cross not found for [B:43:0x007e, B:44:0x0086], limit reached: 59 */
    /* JADX WARN: Path cross not found for [B:44:0x0086, B:43:0x007e], limit reached: 59 */
    /* JADX WARN: Removed duplicated region for block: B:53:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x009d  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x008a -> B:43:0x007e). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void scanNumber() {
        /*
            r9 = this;
            int r0 = r9.bp
            r9.np = r0
            char r0 = r9.ch
            r1 = 45
            r2 = 1
            if (r0 != r1) goto L13
        Lb:
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
        L13:
            char r0 = r9.ch
            r3 = 57
            r4 = 48
            if (r0 < r4) goto L1e
            if (r0 > r3) goto L1e
            goto Lb
        L1e:
            r0 = 0
            char r5 = r9.ch
            r6 = 46
            if (r5 != r6) goto L35
        L25:
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
            char r0 = r9.ch
            if (r0 < r4) goto L34
            if (r0 > r3) goto L34
            goto L25
        L34:
            r0 = 1
        L35:
            int r5 = r9.sp
            r6 = 65535(0xffff, float:9.1834E-41)
            if (r5 > r6) goto La1
            char r6 = r9.ch
            r7 = 76
            if (r6 != r7) goto L49
        L42:
            int r5 = r5 + r2
            r9.sp = r5
            r9.next()
            goto L6c
        L49:
            r7 = 83
            if (r6 != r7) goto L4e
            goto L42
        L4e:
            r7 = 66
            if (r6 != r7) goto L53
            goto L42
        L53:
            r7 = 70
            if (r6 != r7) goto L5e
        L57:
            int r5 = r5 + r2
            r9.sp = r5
        L5a:
            r9.next()
            goto L99
        L5e:
            r8 = 68
            if (r6 != r8) goto L63
            goto L57
        L63:
            r5 = 101(0x65, float:1.42E-43)
            if (r6 == r5) goto L6e
            r5 = 69
            if (r6 != r5) goto L6c
            goto L6e
        L6c:
            r2 = r0
            goto L99
        L6e:
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
            char r0 = r9.ch
            r5 = 43
            if (r0 == r5) goto L7e
            if (r0 != r1) goto L86
        L7e:
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            r9.next()
        L86:
            char r0 = r9.ch
            if (r0 < r4) goto L8d
            if (r0 > r3) goto L8d
            goto L7e
        L8d:
            char r0 = r9.ch
            if (r0 == r8) goto L93
            if (r0 != r7) goto L99
        L93:
            int r0 = r9.sp
            int r0 = r0 + r2
            r9.sp = r0
            goto L5a
        L99:
            if (r2 == 0) goto L9d
            r0 = 3
            goto L9e
        L9d:
            r0 = 2
        L9e:
            r9.token = r0
            return
        La1:
            com.alibaba.fastjson.JSONException r0 = new com.alibaba.fastjson.JSONException
            java.lang.String r1 = "scanNumber overflow"
            r0.<init>(r1)
            goto Laa
        La9:
            throw r0
        Laa:
            goto La9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONLexerBase.scanNumber():void");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.lang.String scanString(char c2) {
        this.matchStat = 0;
        char cCharAt = charAt(this.bp + 0);
        if (cCharAt == 'n') {
            if (charAt(this.bp + 1) != 'u' || e.a.c.a.a.a(this.bp, 1, 1, this) != 'l' || e.a.c.a.a.a(this.bp, 1, 2, this) != 'l') {
                this.matchStat = -1;
                return null;
            }
            if (charAt(this.bp + 4) != c2) {
                this.matchStat = -1;
                return null;
            }
            int i = this.bp + 5;
            this.bp = i;
            this.ch = charAt(i);
            this.matchStat = 3;
            return null;
        }
        int i2 = 1;
        while (cCharAt != '\"') {
            if (!isWhitespace(cCharAt)) {
                this.matchStat = -1;
                return stringDefaultValue();
            }
            cCharAt = charAt(this.bp + i2);
            i2++;
        }
        int i3 = this.bp + i2;
        int iIndexOf = indexOf('\"', i3);
        if (iIndexOf == -1) {
            throw new com.alibaba.fastjson.JSONException("unclosed str");
        }
        java.lang.String strSubString = subString(this.bp + i2, iIndexOf - i3);
        if (strSubString.indexOf(92) != -1) {
            while (true) {
                int i4 = 0;
                for (int i5 = iIndexOf - 1; i5 >= 0 && charAt(i5) == '\\'; i5--) {
                    i4++;
                }
                if (i4 % 2 == 0) {
                    break;
                }
                iIndexOf = indexOf('\"', iIndexOf + 1);
            }
            int i6 = iIndexOf - i3;
            strSubString = readString(sub_chars(this.bp + 1, i6), i6);
        }
        int i7 = (iIndexOf - i3) + 1 + i2;
        int i8 = i7 + 1;
        char cCharAt2 = charAt(this.bp + i7);
        while (cCharAt2 != c2) {
            if (!isWhitespace(cCharAt2)) {
                if (cCharAt2 == ']') {
                    int i9 = this.bp + i8;
                    this.bp = i9;
                    this.ch = charAt(i9);
                    this.matchStat = -1;
                }
                return strSubString;
            }
            cCharAt2 = charAt(this.bp + i8);
            i8++;
        }
        int i10 = this.bp + i8;
        this.bp = i10;
        this.ch = charAt(i10);
        this.matchStat = 3;
        this.token = 16;
        return strSubString;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void scanString() throws java.lang.NumberFormatException {
        char next;
        char next2;
        int i;
        this.np = this.bp;
        this.hasSpecial = false;
        while (true) {
            char next3 = next();
            char c2 = '\"';
            if (next3 == '\"') {
                this.token = 4;
                this.ch = next();
                return;
            }
            char c3 = com.alibaba.fastjson.parser.JSONLexer.EOI;
            if (next3 != 26) {
                c3 = '\\';
                boolean z = true;
                if (next3 == '\\') {
                    if (!this.hasSpecial) {
                        this.hasSpecial = true;
                        int i2 = this.sp;
                        char[] cArr = this.sbuf;
                        if (i2 >= cArr.length) {
                            int length = cArr.length * 2;
                            if (i2 <= length) {
                                i2 = length;
                            }
                            char[] cArr2 = new char[i2];
                            char[] cArr3 = this.sbuf;
                            java.lang.System.arraycopy(cArr3, 0, cArr2, 0, cArr3.length);
                            this.sbuf = cArr2;
                        }
                        copyTo(this.np + 1, this.sp, this.sbuf);
                    }
                    char next4 = next();
                    if (next4 != '\"') {
                        c2 = '\'';
                        if (next4 != '\'') {
                            if (next4 != 'F') {
                                if (next4 != '\\') {
                                    if (next4 == 'b') {
                                        next3 = '\b';
                                    } else if (next4 != 'f') {
                                        if (next4 == 'n') {
                                            next3 = '\n';
                                        } else if (next4 != 'r') {
                                            if (next4 != 'x') {
                                                c2 = 3;
                                                switch (next4) {
                                                    case '/':
                                                        next3 = com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH;
                                                        break;
                                                    case '0':
                                                        putChar((char) 0);
                                                        break;
                                                    case '1':
                                                        putChar((char) 1);
                                                        break;
                                                    case '2':
                                                        putChar((char) 2);
                                                        break;
                                                    case '3':
                                                        break;
                                                    case '4':
                                                        putChar((char) 4);
                                                        break;
                                                    case '5':
                                                        next3 = 5;
                                                        break;
                                                    case '6':
                                                        next3 = 6;
                                                        break;
                                                    case '7':
                                                        next3 = 7;
                                                        break;
                                                    default:
                                                        switch (next4) {
                                                            case 't':
                                                                next3 = '\t';
                                                                break;
                                                            case 'u':
                                                                i = java.lang.Integer.parseInt(new java.lang.String(new char[]{next(), next(), next(), next()}), 16);
                                                                break;
                                                            case 'v':
                                                                next3 = 11;
                                                                break;
                                                            default:
                                                                this.ch = next4;
                                                                throw new com.alibaba.fastjson.JSONException("unclosed string : " + next4);
                                                        }
                                                }
                                            } else {
                                                next = next();
                                                next2 = next();
                                                boolean z2 = (next >= '0' && next <= '9') || (next >= 'a' && next <= 'f') || (next >= 'A' && next <= 'F');
                                                if ((next2 < '0' || next2 > '9') && ((next2 < 'a' || next2 > 'f') && (next2 < 'A' || next2 > 'F'))) {
                                                    z = false;
                                                }
                                                if (z2 && z) {
                                                    int[] iArr = digits;
                                                    i = (iArr[next] * 16) + iArr[next2];
                                                }
                                            }
                                            next3 = (char) i;
                                        } else {
                                            next3 = '\r';
                                        }
                                    }
                                    putChar(next3);
                                }
                            }
                            next3 = '\f';
                            putChar(next3);
                        }
                    }
                    putChar(c2);
                } else if (this.hasSpecial) {
                    int i3 = this.sp;
                    char[] cArr4 = this.sbuf;
                    if (i3 == cArr4.length) {
                        putChar(next3);
                    } else {
                        this.sp = i3 + 1;
                        cArr4[i3] = next3;
                    }
                } else {
                    this.sp++;
                }
            } else if (isEOF()) {
                throw new com.alibaba.fastjson.JSONException("unclosed string : " + next3);
            }
            putChar(c3);
        }
        throw new com.alibaba.fastjson.JSONException("invalid escape character \\x" + next + next2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void scanStringArray(java.util.Collection<java.lang.String> collection, char c2) {
        int i;
        char cCharAt;
        int i2;
        int i3;
        this.matchStat = 0;
        char cCharAt2 = charAt(this.bp + 0);
        char c3 = 'u';
        char c4 = 'n';
        if (cCharAt2 == 'n' && charAt(this.bp + 1) == 'u' && e.a.c.a.a.a(this.bp, 1, 1, this) == 'l' && e.a.c.a.a.a(this.bp, 1, 2, this) == 'l' && e.a.c.a.a.a(this.bp, 1, 3, this) == c2) {
            int i4 = this.bp + 5;
            this.bp = i4;
            this.ch = charAt(i4);
            this.matchStat = 5;
            return;
        }
        if (cCharAt2 != '[') {
            this.matchStat = -1;
            return;
        }
        char cCharAt3 = charAt(this.bp + 1);
        int i5 = 2;
        while (true) {
            if (cCharAt3 == c4 && charAt(this.bp + i5) == c3 && e.a.c.a.a.a(this.bp, i5, 1, this) == 'l' && e.a.c.a.a.a(this.bp, i5, 2, this) == 'l') {
                int i6 = i5 + 3;
                i = i6 + 1;
                cCharAt = charAt(this.bp + i6);
                collection.add(null);
            } else {
                if (cCharAt3 == ']' && collection.size() == 0) {
                    i2 = i5 + 1;
                    i3 = this.bp + i5;
                    break;
                }
                if (cCharAt3 != '\"') {
                    this.matchStat = -1;
                    return;
                }
                int i7 = this.bp + i5;
                int iIndexOf = indexOf('\"', i7);
                if (iIndexOf == -1) {
                    throw new com.alibaba.fastjson.JSONException("unclosed str");
                }
                java.lang.String strSubString = subString(this.bp + i5, iIndexOf - i7);
                if (strSubString.indexOf(92) != -1) {
                    while (true) {
                        int i8 = 0;
                        for (int i9 = iIndexOf - 1; i9 >= 0 && charAt(i9) == '\\'; i9--) {
                            i8++;
                        }
                        if (i8 % 2 == 0) {
                            break;
                        } else {
                            iIndexOf = indexOf('\"', iIndexOf + 1);
                        }
                    }
                    int i10 = iIndexOf - i7;
                    strSubString = readString(sub_chars(this.bp + i5, i10), i10);
                }
                int i11 = this.bp;
                int i12 = (iIndexOf - (i11 + i5)) + 1 + i5;
                i = i12 + 1;
                cCharAt = charAt(i11 + i12);
                collection.add(strSubString);
            }
            if (cCharAt == ',') {
                i5 = i + 1;
                cCharAt3 = charAt(this.bp + i);
                c3 = 'u';
                c4 = 'n';
            } else if (cCharAt != ']') {
                this.matchStat = -1;
                return;
            } else {
                i2 = i + 1;
                i3 = this.bp + i;
            }
        }
        if (charAt(i3) != c2) {
            this.matchStat = -1;
            return;
        }
        int i13 = this.bp + i2;
        this.bp = i13;
        this.ch = charAt(i13);
        this.matchStat = 3;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String scanSymbol(com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        int i;
        skipWhitespace();
        char c2 = this.ch;
        if (c2 == '\"') {
            return scanSymbol(symbolTable, '\"');
        }
        if (c2 == '\'') {
            if (isEnabled(com.alibaba.fastjson.parser.Feature.AllowSingleQuotes)) {
                return scanSymbol(symbolTable, '\'');
            }
            throw new com.alibaba.fastjson.JSONException("syntax error");
        }
        if (c2 == '}') {
            next();
            i = 13;
        } else if (c2 == ',') {
            next();
            i = 16;
        } else {
            if (c2 != 26) {
                if (isEnabled(com.alibaba.fastjson.parser.Feature.AllowUnQuotedFieldNames)) {
                    return scanSymbolUnQuoted(symbolTable);
                }
                throw new com.alibaba.fastjson.JSONException("syntax error");
            }
            i = 20;
        }
        this.token = i;
        return null;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String scanSymbol(com.alibaba.fastjson.parser.SymbolTable symbolTable, char c2) throws java.lang.NumberFormatException {
        java.lang.String strAddSymbol;
        int i;
        this.np = this.bp;
        this.sp = 0;
        boolean z = false;
        int i2 = 0;
        while (true) {
            char next = next();
            if (next == c2) {
                this.token = 4;
                if (z) {
                    strAddSymbol = symbolTable.addSymbol(this.sbuf, 0, this.sp, i2);
                } else {
                    int i3 = this.np;
                    strAddSymbol = addSymbol(i3 == -1 ? 0 : i3 + 1, this.sp, i2, symbolTable);
                }
                this.sp = 0;
                next();
                return strAddSymbol;
            }
            if (next == 26) {
                throw new com.alibaba.fastjson.JSONException("unclosed.str");
            }
            char c3 = '\\';
            if (next == '\\') {
                next = 2;
                if (!z) {
                    int i4 = this.sp;
                    char[] cArr = this.sbuf;
                    if (i4 >= cArr.length) {
                        int length = cArr.length * 2;
                        if (i4 <= length) {
                            i4 = length;
                        }
                        char[] cArr2 = new char[i4];
                        char[] cArr3 = this.sbuf;
                        java.lang.System.arraycopy(cArr3, 0, cArr2, 0, cArr3.length);
                        this.sbuf = cArr2;
                    }
                    arrayCopy(this.np + 1, this.sbuf, 0, this.sp);
                    z = true;
                }
                char next2 = next();
                char c4 = '\"';
                if (next2 != '\"') {
                    c4 = '\'';
                    if (next2 != '\'') {
                        if (next2 != 'F') {
                            if (next2 != '\\') {
                                if (next2 == 'b') {
                                    i = i2 * 31;
                                    next = '\b';
                                } else if (next2 != 'f') {
                                    if (next2 == 'n') {
                                        i = i2 * 31;
                                        next = '\n';
                                    } else if (next2 != 'r') {
                                        if (next2 != 'x') {
                                            c3 = 3;
                                            switch (next2) {
                                                case '/':
                                                    i = i2 * 31;
                                                    next = com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH;
                                                    break;
                                                case '0':
                                                    i2 = (i2 * 31) + next2;
                                                    putChar((char) 0);
                                                    break;
                                                case '1':
                                                    i2 = (i2 * 31) + next2;
                                                    putChar((char) 1);
                                                    break;
                                                case '2':
                                                    i2 = (i2 * 31) + next2;
                                                    break;
                                                case '3':
                                                    i2 = (i2 * 31) + next2;
                                                    break;
                                                case '4':
                                                    i2 = (i2 * 31) + next2;
                                                    putChar((char) 4);
                                                    break;
                                                case '5':
                                                    i2 = (i2 * 31) + next2;
                                                    next = 5;
                                                    break;
                                                case '6':
                                                    i2 = (i2 * 31) + next2;
                                                    next = 6;
                                                    break;
                                                case '7':
                                                    i2 = (i2 * 31) + next2;
                                                    next = 7;
                                                    break;
                                                default:
                                                    switch (next2) {
                                                        case 't':
                                                            i = i2 * 31;
                                                            next = '\t';
                                                            break;
                                                        case 'u':
                                                            int i5 = java.lang.Integer.parseInt(new java.lang.String(new char[]{next(), next(), next(), next()}), 16);
                                                            i2 = (i2 * 31) + i5;
                                                            next = (char) i5;
                                                            break;
                                                        case 'v':
                                                            i = i2 * 31;
                                                            next = 11;
                                                            break;
                                                        default:
                                                            this.ch = next2;
                                                            throw new com.alibaba.fastjson.JSONException("unclosed.str.lit");
                                                    }
                                            }
                                        } else {
                                            char next3 = next();
                                            this.ch = next3;
                                            char next4 = next();
                                            this.ch = next4;
                                            int[] iArr = digits;
                                            next = (char) ((iArr[next3] * 16) + iArr[next4]);
                                            i2 = (i2 * 31) + next;
                                        }
                                        putChar(next);
                                    } else {
                                        i = i2 * 31;
                                        next = '\r';
                                    }
                                }
                                i2 = i + next;
                                putChar(next);
                            } else {
                                i2 = (i2 * 31) + 92;
                            }
                            putChar(c3);
                        }
                        i = i2 * 31;
                        next = '\f';
                        i2 = i + next;
                        putChar(next);
                    }
                }
                i2 = (i2 * 31) + c4;
                putChar(c4);
            } else {
                i2 = (i2 * 31) + next;
                if (z) {
                    int i6 = this.sp;
                    char[] cArr4 = this.sbuf;
                    if (i6 == cArr4.length) {
                        putChar(next);
                    } else {
                        this.sp = i6 + 1;
                        cArr4[i6] = next;
                    }
                } else {
                    this.sp++;
                }
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String scanSymbolUnQuoted(com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        if (this.token == 1 && this.pos == 0 && this.bp == 1) {
            this.bp = 0;
        }
        boolean[] zArr = com.alibaba.fastjson.util.IOUtils.firstIdentifierFlags;
        int i = this.ch;
        if (!(i >= zArr.length || zArr[i])) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("illegal identifier : ");
            sbO.append(this.ch);
            sbO.append(info());
            throw new com.alibaba.fastjson.JSONException(sbO.toString());
        }
        boolean[] zArr2 = com.alibaba.fastjson.util.IOUtils.identifierFlags;
        this.np = this.bp;
        this.sp = 1;
        while (true) {
            char next = next();
            if (next < zArr2.length && !zArr2[next]) {
                break;
            }
            i = (i * 31) + next;
            this.sp++;
        }
        this.ch = charAt(this.bp);
        this.token = 18;
        if (this.sp == 4 && i == 3392903 && charAt(this.np) == 'n' && charAt(this.np + 1) == 'u' && charAt(this.np + 2) == 'l' && charAt(this.np + 3) == 'l') {
            return null;
        }
        return symbolTable == null ? subString(this.np, this.sp) : addSymbol(this.np, this.sp, i, symbolTable);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.lang.String scanSymbolWithSeperator(com.alibaba.fastjson.parser.SymbolTable symbolTable, char c2) {
        int i = 0;
        this.matchStat = 0;
        char cCharAt = charAt(this.bp + 0);
        if (cCharAt == 'n') {
            if (charAt(this.bp + 1) != 'u' || e.a.c.a.a.a(this.bp, 1, 1, this) != 'l' || e.a.c.a.a.a(this.bp, 1, 2, this) != 'l') {
                this.matchStat = -1;
                return null;
            }
            if (charAt(this.bp + 4) != c2) {
                this.matchStat = -1;
                return null;
            }
            int i2 = this.bp + 5;
            this.bp = i2;
            this.ch = charAt(i2);
            this.matchStat = 3;
            return null;
        }
        if (cCharAt != '\"') {
            this.matchStat = -1;
            return null;
        }
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char cCharAt2 = charAt(this.bp + i3);
            if (cCharAt2 == '\"') {
                int i5 = this.bp;
                int i6 = i5 + 0 + 1;
                java.lang.String strAddSymbol = addSymbol(i6, ((i5 + i4) - i6) - 1, i, symbolTable);
                int i7 = i4 + 1;
                char cCharAt3 = charAt(this.bp + i4);
                while (cCharAt3 != c2) {
                    if (!isWhitespace(cCharAt3)) {
                        this.matchStat = -1;
                        return strAddSymbol;
                    }
                    cCharAt3 = charAt(this.bp + i7);
                    i7++;
                }
                int i8 = this.bp + i7;
                this.bp = i8;
                this.ch = charAt(i8);
                this.matchStat = 3;
                return strAddSymbol;
            }
            i = (i * 31) + cCharAt2;
            if (cCharAt2 == '\\') {
                this.matchStat = -1;
                return null;
            }
            i3 = i4;
        }
    }

    public final void scanTrue() {
        if (this.ch != 't') {
            throw new com.alibaba.fastjson.JSONException("error parse true");
        }
        next();
        if (this.ch != 'r') {
            throw new com.alibaba.fastjson.JSONException("error parse true");
        }
        next();
        if (this.ch != 'u') {
            throw new com.alibaba.fastjson.JSONException("error parse true");
        }
        next();
        if (this.ch != 'e') {
            throw new com.alibaba.fastjson.JSONException("error parse true");
        }
        next();
        char c2 = this.ch;
        if (c2 != ' ' && c2 != ',' && c2 != '}' && c2 != ']' && c2 != '\n' && c2 != '\r' && c2 != '\t' && c2 != 26 && c2 != '\f' && c2 != '\b' && c2 != ':' && c2 != '/') {
            throw new com.alibaba.fastjson.JSONException("scan true error");
        }
        this.token = 6;
    }

    public final int scanType(java.lang.String str) {
        int i;
        this.matchStat = 0;
        if (!charArrayCompare(typeFieldName)) {
            return -2;
        }
        int length = this.bp + typeFieldName.length;
        int length2 = str.length();
        for (int i2 = 0; i2 < length2; i2++) {
            if (str.charAt(i2) != charAt(length + i2)) {
                return -1;
            }
        }
        int i3 = length + length2;
        if (charAt(i3) != '\"') {
            return -1;
        }
        int i4 = i3 + 1;
        char cCharAt = charAt(i4);
        this.ch = cCharAt;
        if (cCharAt == ',') {
            int i5 = i4 + 1;
            this.ch = charAt(i5);
            this.bp = i5;
            this.token = 16;
            return 3;
        }
        if (cCharAt == '}') {
            i4++;
            char cCharAt2 = charAt(i4);
            this.ch = cCharAt2;
            if (cCharAt2 == ',') {
                this.token = 16;
            } else {
                if (cCharAt2 == ']') {
                    i = 15;
                } else if (cCharAt2 == '}') {
                    i = 13;
                } else {
                    if (cCharAt2 != 26) {
                        return -1;
                    }
                    this.token = 20;
                    this.matchStat = 4;
                }
                this.token = i;
            }
            i4++;
            this.ch = charAt(i4);
            this.matchStat = 4;
        }
        this.bp = i4;
        return this.matchStat;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public java.lang.String scanTypeName(com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        return null;
    }

    public java.util.UUID scanUUID(char c2) {
        int i;
        char cCharAt;
        java.util.UUID uuid;
        char cCharAt2;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        this.matchStat = 0;
        char cCharAt3 = charAt(this.bp + 0);
        if (cCharAt3 == '\"') {
            int iIndexOf = indexOf('\"', this.bp + 1);
            if (iIndexOf == -1) {
                throw new com.alibaba.fastjson.JSONException("unclosed str");
            }
            int i17 = this.bp + 1;
            int i18 = iIndexOf - i17;
            char c3 = 'F';
            char c4 = 'f';
            char c5 = '9';
            char c6 = 'A';
            char c7 = 'a';
            if (i18 != 36) {
                i3 = iIndexOf;
                if (i18 == 32) {
                    long j = 0;
                    for (int i19 = 0; i19 < 16; i19++) {
                        char cCharAt4 = charAt(i17 + i19);
                        if (cCharAt4 < '0' || cCharAt4 > '9') {
                            if (cCharAt4 >= 'a' && cCharAt4 <= 'f') {
                                i5 = cCharAt4 - 'a';
                            } else {
                                if (cCharAt4 < 'A' || cCharAt4 > 'F') {
                                    this.matchStat = -2;
                                    return null;
                                }
                                i5 = cCharAt4 - 'A';
                            }
                            i6 = i5 + 10;
                        } else {
                            i6 = cCharAt4 - '0';
                        }
                        j = (j << 4) | i6;
                    }
                    int i20 = 16;
                    long j2 = 0;
                    for (int i21 = 32; i20 < i21; i21 = 32) {
                        char cCharAt5 = charAt(i17 + i20);
                        if (cCharAt5 >= '0' && cCharAt5 <= '9') {
                            i4 = cCharAt5 - '0';
                        } else if (cCharAt5 >= 'a' && cCharAt5 <= 'f') {
                            i4 = (cCharAt5 - 'a') + 10;
                        } else {
                            if (cCharAt5 < 'A' || cCharAt5 > 'F') {
                                this.matchStat = -2;
                                return null;
                            }
                            i4 = (cCharAt5 - 'A') + 10;
                        }
                        j2 = (j2 << 4) | i4;
                        i20++;
                    }
                    uuid = new java.util.UUID(j, j2);
                }
                this.matchStat = -1;
                return null;
            }
            int i22 = 0;
            long j3 = 0;
            while (i22 < 8) {
                char cCharAt6 = charAt(i17 + i22);
                if (cCharAt6 < '0' || cCharAt6 > '9') {
                    if (cCharAt6 >= 'a' && cCharAt6 <= 'f') {
                        i15 = cCharAt6 - 'a';
                    } else {
                        if (cCharAt6 < c6 || cCharAt6 > c3) {
                            this.matchStat = -2;
                            return null;
                        }
                        i15 = cCharAt6 - 'A';
                    }
                    i16 = i15 + 10;
                } else {
                    i16 = cCharAt6 - '0';
                }
                j3 = (j3 << 4) | i16;
                i22++;
                c6 = 'A';
                c3 = 'F';
            }
            int i23 = 9;
            while (i23 < 13) {
                char cCharAt7 = charAt(i17 + i23);
                if (cCharAt7 < '0' || cCharAt7 > '9') {
                    if (cCharAt7 >= 'a' && cCharAt7 <= c4) {
                        i13 = cCharAt7 - 'a';
                    } else {
                        if (cCharAt7 < 'A' || cCharAt7 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i13 = cCharAt7 - 'A';
                    }
                    i14 = i13 + 10;
                } else {
                    i14 = cCharAt7 - '0';
                }
                j3 = (j3 << 4) | i14;
                i23++;
                iIndexOf = iIndexOf;
                c4 = 'f';
            }
            i3 = iIndexOf;
            int i24 = 14;
            long j4 = j3;
            while (i24 < 18) {
                char cCharAt8 = charAt(i17 + i24);
                if (cCharAt8 < '0' || cCharAt8 > '9') {
                    if (cCharAt8 >= c7 && cCharAt8 <= 'f') {
                        i11 = cCharAt8 - 'a';
                    } else {
                        if (cCharAt8 < 'A' || cCharAt8 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i11 = cCharAt8 - 'A';
                    }
                    i12 = i11 + 10;
                } else {
                    i12 = cCharAt8 - '0';
                }
                j4 = (j4 << 4) | i12;
                i24++;
                c7 = 'a';
            }
            int i25 = 19;
            long j5 = 0;
            while (i25 < 23) {
                char cCharAt9 = charAt(i17 + i25);
                if (cCharAt9 < '0' || cCharAt9 > c5) {
                    if (cCharAt9 >= 'a' && cCharAt9 <= 'f') {
                        i9 = cCharAt9 - 'a';
                    } else {
                        if (cCharAt9 < 'A' || cCharAt9 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i9 = cCharAt9 - 'A';
                    }
                    i10 = i9 + 10;
                } else {
                    i10 = cCharAt9 - '0';
                }
                j5 = (j5 << 4) | i10;
                i25++;
                j4 = j4;
                c5 = '9';
            }
            long j6 = j4;
            long j7 = j5;
            for (int i26 = 24; i26 < 36; i26++) {
                char cCharAt10 = charAt(i17 + i26);
                if (cCharAt10 < '0' || cCharAt10 > '9') {
                    if (cCharAt10 >= 'a' && cCharAt10 <= 'f') {
                        i7 = cCharAt10 - 'a';
                    } else {
                        if (cCharAt10 < 'A' || cCharAt10 > 'F') {
                            this.matchStat = -2;
                            return null;
                        }
                        i7 = cCharAt10 - 'A';
                    }
                    i8 = i7 + 10;
                } else {
                    i8 = cCharAt10 - '0';
                }
                j7 = (j7 << 4) | i8;
            }
            uuid = new java.util.UUID(j6, j7);
            int i27 = this.bp;
            int i28 = (i3 - (i27 + 1)) + 1 + 1;
            i = i28 + 1;
            cCharAt = charAt(i27 + i28);
        } else {
            if (cCharAt3 != 'n' || charAt(this.bp + 1) != 'u' || charAt(this.bp + 2) != 'l' || charAt(this.bp + 3) != 'l') {
                this.matchStat = -1;
                return null;
            }
            i = 5;
            cCharAt = charAt(this.bp + 4);
            uuid = null;
        }
        if (cCharAt == ',') {
            int i29 = this.bp + i;
            this.bp = i29;
            this.ch = charAt(i29);
            this.matchStat = 3;
            return uuid;
        }
        if (cCharAt == ']') {
            int i30 = i + 1;
            char cCharAt11 = charAt(this.bp + i);
            if (cCharAt11 == ',') {
                i2 = 16;
            } else {
                if (cCharAt11 == ']') {
                    this.token = 15;
                    int i31 = this.bp + i30;
                    this.bp = i31;
                    cCharAt2 = charAt(i31);
                    this.ch = cCharAt2;
                    this.matchStat = 4;
                    return uuid;
                }
                if (cCharAt11 == '}') {
                    i2 = 13;
                } else if (cCharAt11 == 26) {
                    this.token = 20;
                    this.bp = (i30 - 1) + this.bp;
                    cCharAt2 = com.alibaba.fastjson.parser.JSONLexer.EOI;
                    this.ch = cCharAt2;
                    this.matchStat = 4;
                    return uuid;
                }
            }
            this.token = i2;
            int i312 = this.bp + i30;
            this.bp = i312;
            cCharAt2 = charAt(i312);
            this.ch = cCharAt2;
            this.matchStat = 4;
            return uuid;
        }
        this.matchStat = -1;
        return null;
    }

    public boolean seekArrayToItem(int i) {
        throw new java.lang.UnsupportedOperationException();
    }

    public int seekObjectToField(long j, boolean z) {
        throw new java.lang.UnsupportedOperationException();
    }

    public int seekObjectToField(long[] jArr) {
        throw new java.lang.UnsupportedOperationException();
    }

    public int seekObjectToFieldDeepScan(long j) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setFeatures(int i) {
        this.features = i;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setLocale(java.util.Locale locale) {
        this.locale = locale;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public void setTimeZone(java.util.TimeZone timeZone) {
        this.timeZone = timeZone;
    }

    public void setToken(int i) {
        this.token = i;
    }

    public void skipArray() {
        throw new java.lang.UnsupportedOperationException();
    }

    public void skipComment() {
        char c2;
        next();
        char c3 = this.ch;
        if (c3 == '/') {
            do {
                next();
                c2 = this.ch;
                if (c2 == '\n') {
                    next();
                    return;
                }
            } while (c2 != 26);
            return;
        }
        if (c3 != '*') {
            throw new com.alibaba.fastjson.JSONException("invalid comment");
        }
        while (true) {
            next();
            do {
                char c4 = this.ch;
                if (c4 == 26) {
                    return;
                }
                if (c4 == '*') {
                    next();
                }
            } while (this.ch != '/');
            next();
            return;
        }
    }

    public void skipObject() {
        throw new java.lang.UnsupportedOperationException();
    }

    public void skipObject(boolean z) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final void skipWhitespace() {
        while (true) {
            char c2 = this.ch;
            if (c2 > '/') {
                return;
            }
            if (c2 == ' ' || c2 == '\r' || c2 == '\n' || c2 == '\t' || c2 == '\f' || c2 == '\b') {
                next();
            } else if (c2 != '/') {
                return;
            } else {
                skipComment();
            }
        }
    }

    public final java.lang.String stringDefaultValue() {
        return this.stringDefaultValue;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public abstract java.lang.String stringVal();

    public abstract java.lang.String subString(int i, int i2);

    public abstract char[] sub_chars(int i, int i2);

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final int token() {
        return this.token;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String tokenName() {
        return com.alibaba.fastjson.parser.JSONToken.name(this.token);
    }
}
