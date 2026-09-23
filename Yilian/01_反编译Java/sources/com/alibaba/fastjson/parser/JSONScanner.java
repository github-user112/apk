package com.alibaba.fastjson.parser;

/* loaded from: classes.dex */
public final class JSONScanner extends com.alibaba.fastjson.parser.JSONLexerBase {
    public final int len;
    public final java.lang.String text;

    public JSONScanner(java.lang.String str) {
        this(str, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(java.lang.String str, int i) {
        super(i);
        this.text = str;
        this.len = str.length();
        this.bp = -1;
        next();
        if (this.ch == 65279) {
            next();
        }
    }

    public JSONScanner(char[] cArr, int i) {
        this(cArr, i, com.alibaba.fastjson.JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(char[] cArr, int i, int i2) {
        this(new java.lang.String(cArr, 0, i), i2);
    }

    public static boolean charArrayCompare(java.lang.String str, int i, char[] cArr) {
        int length = cArr.length;
        if (length + i > str.length()) {
            return false;
        }
        for (int i2 = 0; i2 < length; i2++) {
            if (cArr[i2] != str.charAt(i + i2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean checkDate(char c2, char c3, char c4, char c5, char c6, char c7, int i, int i2) {
        if (c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9' && c5 >= '0' && c5 <= '9') {
            if (c6 == '0') {
                if (c7 < '1' || c7 > '9') {
                    return false;
                }
            } else if (c6 != '1' || (c7 != '0' && c7 != '1' && c7 != '2')) {
                return false;
            }
            if (i == 48) {
                return i2 >= 49 && i2 <= 57;
            }
            if (i != 49 && i != 50) {
                return i == 51 && (i2 == 48 || i2 == 49);
            }
            if (i2 >= 48 && i2 <= 57) {
                return true;
            }
        }
        return false;
    }

    private boolean checkTime(char c2, char c3, char c4, char c5, char c6, char c7) {
        if (c2 == '0') {
            if (c3 < '0' || c3 > '9') {
                return false;
            }
        } else {
            if (c2 != '1') {
                if (c2 == '2' && c3 >= '0' && c3 <= '4') {
                }
                return false;
            }
            if (c3 < '0' || c3 > '9') {
                return false;
            }
        }
        if (c4 < '0' || c4 > '5') {
            if (c4 != '6' || c5 != '0') {
                return false;
            }
        } else if (c5 < '0' || c5 > '9') {
            return false;
        }
        return (c6 < '0' || c6 > '5') ? c6 == '6' && c7 == '0' : c7 >= '0' && c7 <= '9';
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x01e0 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:133:0x01e2  */
    /* JADX WARN: Removed duplicated region for block: B:186:0x030d  */
    /* JADX WARN: Removed duplicated region for block: B:198:0x0364 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:200:0x0366  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean scanISO8601DateIfMatch(boolean r27, int r28) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 1700
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanISO8601DateIfMatch(boolean, int):boolean");
    }

    private void setCalendar(char c2, char c3, char c4, char c5, char c6, char c7, char c8, char c9) {
        java.util.Calendar calendar = java.util.Calendar.getInstance(this.timeZone, this.locale);
        this.calendar = calendar;
        int i = c5 - '0';
        calendar.set(1, i + ((c4 - '0') * 10) + ((c3 - '0') * 100) + ((c2 - '0') * 1000));
        this.calendar.set(2, ((c7 - '0') + ((c6 - '0') * 10)) - 1);
        this.calendar.set(5, (c9 - '0') + ((c8 - '0') * 10));
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final java.lang.String addSymbol(int i, int i2, int i3, com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.text, i, i2, i3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void arrayCopy(int i, char[] cArr, int i2, int i3) {
        this.text.getChars(i, i3 + i, cArr, i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public byte[] bytesValue() {
        if (this.token != 26) {
            return !this.hasSpecial ? com.alibaba.fastjson.util.IOUtils.decodeBase64(this.text, this.np + 1, this.sp) : com.alibaba.fastjson.util.IOUtils.decodeBase64(new java.lang.String(this.sbuf, 0, this.sp));
        }
        int i = this.np + 1;
        int i2 = this.sp;
        if (i2 % 2 != 0) {
            throw new com.alibaba.fastjson.JSONException(e.a.c.a.a.K("illegal state. ", i2));
        }
        int i3 = i2 / 2;
        byte[] bArr = new byte[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            int i5 = (i4 * 2) + i;
            char cCharAt = this.text.charAt(i5);
            char cCharAt2 = this.text.charAt(i5 + 1);
            char c2 = '0';
            int i6 = cCharAt - (cCharAt <= '9' ? '0' : '7');
            if (cCharAt2 > '9') {
                c2 = '7';
            }
            bArr[i4] = (byte) ((i6 << 4) | (cCharAt2 - c2));
        }
        return bArr;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final boolean charArrayCompare(char[] cArr) {
        return charArrayCompare(this.text, this.bp, cArr);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char charAt(int i) {
        return i >= this.len ? com.alibaba.fastjson.parser.JSONLexer.EOI : this.text.charAt(i);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void copyTo(int i, int i2, char[] cArr) {
        this.text.getChars(i, i2 + i, cArr, 0);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final java.math.BigDecimal decimalValue() {
        char cCharAt = charAt((this.np + this.sp) - 1);
        int i = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i--;
        }
        if (i > 65535) {
            throw new com.alibaba.fastjson.JSONException("decimal overflow");
        }
        int i2 = this.np;
        char[] cArr = this.sbuf;
        if (i < cArr.length) {
            this.text.getChars(i2, i2 + i, cArr, 0);
            return new java.math.BigDecimal(this.sbuf, 0, i, java.math.MathContext.UNLIMITED);
        }
        char[] cArr2 = new char[i];
        this.text.getChars(i2, i2 + i, cArr2, 0);
        return new java.math.BigDecimal(cArr2, 0, i, java.math.MathContext.UNLIMITED);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final int indexOf(char c2, int i) {
        return this.text.indexOf(c2, i);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public java.lang.String info() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        int i = 0;
        int i2 = 1;
        int i3 = 1;
        while (i < this.bp) {
            if (this.text.charAt(i) == '\n') {
                i2++;
                i3 = 1;
            }
            i++;
            i3++;
        }
        sb.append("pos ");
        sb.append(this.bp);
        sb.append(", line ");
        sb.append(i2);
        sb.append(", column ");
        sb.append(i3);
        sb.append(this.text.length() < 65535 ? this.text : this.text.substring(0, 65535));
        return sb.toString();
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean isEOF() {
        int i = this.bp;
        int i2 = this.len;
        if (i != i2) {
            return this.ch == 26 && i + 1 >= i2;
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean matchField2(char[] cArr) {
        while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
            next();
        }
        if (!charArrayCompare(cArr)) {
            this.matchStat = -2;
            return false;
        }
        int length = this.bp + cArr.length;
        int i = length + 1;
        char cCharAt = this.text.charAt(length);
        while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
            cCharAt = this.text.charAt(i);
            i++;
        }
        if (cCharAt != ':') {
            this.matchStat = -2;
            return false;
        }
        this.bp = i;
        this.ch = charAt(i);
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final char next() {
        int i = this.bp + 1;
        this.bp = i;
        char cCharAt = i >= this.len ? com.alibaba.fastjson.parser.JSONLexer.EOI : this.text.charAt(i);
        this.ch = cCharAt;
        return cCharAt;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String numberString() {
        char cCharAt = charAt((this.np + this.sp) - 1);
        int i = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i--;
        }
        return subString(this.np, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ed  */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Date scanDate(char r20) {
        /*
            Method dump skipped, instructions count: 288
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanDate(char):java.util.Date");
    }

    /* JADX WARN: Removed duplicated region for block: B:55:0x00c0  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x00c4 -> B:52:0x00b4). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public double scanDouble(char r22) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 391
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanDouble(char):double");
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x00eb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:78:0x00fc  */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean scanFieldBoolean(char[] r11) {
        /*
            Method dump skipped, instructions count: 344
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldBoolean(char[]):boolean");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public java.util.Date scanFieldDate(char[] cArr) {
        char cCharAt;
        long j;
        char cCharAt2;
        java.util.Date date;
        int i;
        int i2;
        boolean z = false;
        this.matchStat = 0;
        int i3 = this.bp;
        char c2 = this.ch;
        if (!charArrayCompare(this.text, i3, cArr)) {
            this.matchStat = -2;
            return null;
        }
        int length = this.bp + cArr.length;
        int i4 = length + 1;
        char cCharAt3 = charAt(length);
        if (cCharAt3 == '\"') {
            int iIndexOf = indexOf('\"', i4);
            if (iIndexOf == -1) {
                throw new com.alibaba.fastjson.JSONException("unclosed str");
            }
            this.bp = i4;
            if (!scanISO8601DateIfMatch(false, iIndexOf - i4)) {
                this.bp = i3;
                this.matchStat = -1;
                return null;
            }
            date = this.calendar.getTime();
            cCharAt2 = charAt(iIndexOf + 1);
            this.bp = i3;
            while (cCharAt2 != ',' && cCharAt2 != '}') {
                if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt2)) {
                    this.matchStat = -1;
                    return null;
                }
                iIndexOf++;
                cCharAt2 = charAt(iIndexOf + 1);
            }
            this.bp = iIndexOf + 1;
            this.ch = cCharAt2;
        } else {
            char c3 = '9';
            char c4 = '0';
            if (cCharAt3 != '-' && (cCharAt3 < '0' || cCharAt3 > '9')) {
                this.matchStat = -1;
                return null;
            }
            if (cCharAt3 == '-') {
                cCharAt3 = charAt(i4);
                i4++;
                z = true;
            }
            if (cCharAt3 < '0' || cCharAt3 > '9') {
                cCharAt = cCharAt3;
                j = 0;
            } else {
                j = cCharAt3 - '0';
                while (true) {
                    i = i4 + 1;
                    cCharAt = charAt(i4);
                    if (cCharAt < c4 || cCharAt > c3) {
                        break;
                    }
                    j = (j * 10) + (cCharAt - '0');
                    i4 = i;
                    c3 = '9';
                    c4 = '0';
                }
                if (cCharAt == ',' || cCharAt == '}') {
                    this.bp = i - 1;
                }
            }
            if (j < 0) {
                this.matchStat = -1;
                return null;
            }
            if (z) {
                j = -j;
            }
            cCharAt2 = cCharAt;
            date = new java.util.Date(j);
        }
        if (cCharAt2 == ',') {
            int i5 = this.bp + 1;
            this.bp = i5;
            this.ch = charAt(i5);
            this.matchStat = 3;
            this.token = 16;
            return date;
        }
        int i6 = this.bp + 1;
        this.bp = i6;
        char cCharAt4 = charAt(i6);
        if (cCharAt4 == ',') {
            this.token = 16;
        } else {
            if (cCharAt4 == ']') {
                i2 = 15;
            } else {
                if (cCharAt4 != '}') {
                    if (cCharAt4 == 26) {
                        this.token = 20;
                        this.matchStat = 4;
                        return date;
                    }
                    this.bp = i3;
                    this.ch = c2;
                    this.matchStat = -1;
                    return null;
                }
                i2 = 13;
            }
            this.token = i2;
        }
        int i7 = this.bp + 1;
        this.bp = i7;
        this.ch = charAt(i7);
        this.matchStat = 4;
        return date;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0065, code lost:
    
        if (r15 != '.') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0067, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0069, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x006a, code lost:
    
        if (r3 >= 0) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x006c, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x006e, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006f, code lost:
    
        if (r6 == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0071, code lost:
    
        if (r15 == '\"') goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0073, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0075, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0076, code lost:
    
        r4 = charAt(r11);
        r11 = r11 + 1;
        r15 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0082, code lost:
    
        if (r15 == ',') goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0084, code lost:
    
        if (r15 != '}') goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x008b, code lost:
    
        if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(r15) == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x008e, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0090, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0091, code lost:
    
        r11 = r11 - 1;
        r14.bp = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0096, code lost:
    
        if (r15 != ',') goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0098, code lost:
    
        r11 = r11 + 1;
        r14.bp = r11;
        r14.ch = charAt(r11);
        r14.matchStat = 3;
        r14.token = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00a6, code lost:
    
        if (r7 == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00a9, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00aa, code lost:
    
        if (r15 != '}') goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00ac, code lost:
    
        r14.bp = r11;
        r11 = r11 + 1;
        r14.bp = r11;
        r15 = charAt(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00b5, code lost:
    
        if (r15 != ',') goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b7, code lost:
    
        r14.token = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00b9, code lost:
    
        r15 = r14.bp + 1;
        r14.bp = r15;
        r14.ch = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00c7, code lost:
    
        if (r15 != ']') goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x00c9, code lost:
    
        r15 = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00cb, code lost:
    
        r14.token = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ce, code lost:
    
        if (r15 != '}') goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x00d0, code lost:
    
        r15 = 13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x00d5, code lost:
    
        if (r15 != 26) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x00d7, code lost:
    
        r14.token = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00db, code lost:
    
        r14.matchStat = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00e3, code lost:
    
        if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(r15) == false) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00e5, code lost:
    
        r15 = r14.bp + 1;
        r14.bp = r15;
        r15 = charAt(r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00ef, code lost:
    
        r14.bp = r1;
        r14.ch = r2;
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00f5, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00f6, code lost:
    
        if (r7 == false) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00f9, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0076, code lost:
    
        r4 = charAt(r11);
        r11 = r11 + 1;
        r15 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:?, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:?, code lost:
    
        return r3;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int scanFieldInt(char[] r15) {
        /*
            Method dump skipped, instructions count: 253
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldInt(char[]):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:72:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:98:? A[RETURN, SYNTHETIC] */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long scanFieldLong(char[] r21) {
        /*
            Method dump skipped, instructions count: 300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldLong(char[]):long");
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00bf, code lost:
    
        r3 = r3 + 1;
        r12.bp = r3;
        r12.ch = r13;
        r3 = r3 + 1;
        r12.bp = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00c9, code lost:
    
        if (r13 != ',') goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00cb, code lost:
    
        r12.ch = charAt(r3);
        r13 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d2, code lost:
    
        r12.matchStat = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d4, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d5, code lost:
    
        r13 = charAt(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00d9, code lost:
    
        if (r13 != ',') goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00db, code lost:
    
        r13 = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00dd, code lost:
    
        r12.token = r13;
        r13 = r12.bp + 1;
        r12.bp = r13;
        r12.ch = charAt(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00ee, code lost:
    
        if (r13 != ']') goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00f0, code lost:
    
        r13 = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00f3, code lost:
    
        if (r13 != '}') goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00f5, code lost:
    
        r13 = 13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00fa, code lost:
    
        if (r13 != 26) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00fc, code lost:
    
        r12.token = 20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0100, code lost:
    
        r13 = 4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0102, code lost:
    
        r12.bp = r1;
        r12.ch = r2;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0054 A[PHI: r4 r7
  0x0054: PHI (r4v3 int) = (r4v2 int), (r4v17 int) binds: [B:14:0x003b, B:18:0x004f] A[DONT_GENERATE, DONT_INLINE]
  0x0054: PHI (r7v1 int) = (r7v0 int), (r7v2 int) binds: [B:14:0x003b, B:18:0x004f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String scanFieldString(char[] r13) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldString(char[]):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:47:0x00db, code lost:
    
        if (r9 != ']') goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00e1, code lost:
    
        if (r3.size() != 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00e3, code lost:
    
        r2 = r1 + 1;
        r1 = charAt(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00ed, code lost:
    
        r17.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00f0, code lost:
    
        return null;
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.Collection<java.lang.String> scanFieldStringArray(char[] r18, java.lang.Class<?> r19) {
        /*
            Method dump skipped, instructions count: 389
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanFieldStringArray(char[], java.lang.Class):java.util.Collection");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public java.lang.String[] scanFieldStringArray(char[] cArr, int i, com.alibaba.fastjson.parser.SymbolTable symbolTable) throws java.lang.NumberFormatException {
        int i2;
        char cCharAt;
        int i3 = this.bp;
        char c2 = this.ch;
        while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
            next();
        }
        if (cArr != null) {
            this.matchStat = 0;
            if (!charArrayCompare(cArr)) {
                this.matchStat = -2;
                return null;
            }
            int length = this.bp + cArr.length;
            int i4 = length + 1;
            char cCharAt2 = this.text.charAt(length);
            while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt2)) {
                cCharAt2 = this.text.charAt(i4);
                i4++;
            }
            if (cCharAt2 != ':') {
                this.matchStat = -1;
                return null;
            }
            i2 = i4 + 1;
            cCharAt = this.text.charAt(i4);
            while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                cCharAt = this.text.charAt(i2);
                i2++;
            }
        } else {
            i2 = this.bp + 1;
            cCharAt = this.ch;
        }
        if (cCharAt != '[') {
            if (cCharAt != 'n' || !this.text.startsWith("ull", this.bp + 1)) {
                this.matchStat = -1;
                return null;
            }
            int i5 = this.bp + 4;
            this.bp = i5;
            this.ch = this.text.charAt(i5);
            return null;
        }
        this.bp = i2;
        this.ch = this.text.charAt(i2);
        java.lang.String[] strArr = i >= 0 ? new java.lang.String[i] : new java.lang.String[4];
        int i6 = 0;
        while (true) {
            if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
                next();
            } else {
                if (this.ch != '\"') {
                    this.bp = i3;
                    this.ch = c2;
                    this.matchStat = -1;
                    return null;
                }
                java.lang.String strScanSymbol = scanSymbol(symbolTable, '\"');
                if (i6 == strArr.length) {
                    java.lang.String[] strArr2 = new java.lang.String[strArr.length + (strArr.length >> 1) + 1];
                    java.lang.System.arraycopy(strArr, 0, strArr2, 0, strArr.length);
                    strArr = strArr2;
                }
                int i7 = i6 + 1;
                strArr[i6] = strScanSymbol;
                while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
                    next();
                }
                if (this.ch != ',') {
                    if (strArr.length != i7) {
                        java.lang.String[] strArr3 = new java.lang.String[i7];
                        java.lang.System.arraycopy(strArr, 0, strArr3, 0, i7);
                        strArr = strArr3;
                    }
                    while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
                        next();
                    }
                    if (this.ch == ']') {
                        next();
                        return strArr;
                    }
                    this.bp = i3;
                    this.ch = c2;
                    this.matchStat = -1;
                    return null;
                }
                next();
                i6 = i7;
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public long scanFieldSymbol(char[] cArr) {
        int i;
        this.matchStat = 0;
        while (!charArrayCompare(this.text, this.bp, cArr)) {
            if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch)) {
                this.matchStat = -2;
                return 0L;
            }
            do {
                next();
            } while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(this.ch));
        }
        int length = this.bp + cArr.length;
        int i2 = length + 1;
        char cCharAt = charAt(length);
        if (cCharAt != '\"') {
            while (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                cCharAt = charAt(i2);
                i2++;
            }
            if (cCharAt != '\"') {
                this.matchStat = -1;
                return 0L;
            }
        }
        long j = com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_hashcode;
        while (true) {
            int i3 = i2 + 1;
            char cCharAt2 = charAt(i2);
            if (cCharAt2 == '\"') {
                this.bp = i3;
                char cCharAt3 = charAt(i3);
                this.ch = cCharAt3;
                while (cCharAt3 != ',') {
                    if (cCharAt3 == '}') {
                        next();
                        skipWhitespace();
                        char current = getCurrent();
                        if (current == ',') {
                            i = 16;
                        } else if (current == ']') {
                            i = 15;
                        } else {
                            if (current != '}') {
                                if (current != 26) {
                                    this.matchStat = -1;
                                    return 0L;
                                }
                                this.token = 20;
                                this.matchStat = 4;
                                return j;
                            }
                            i = 13;
                        }
                        this.token = i;
                        int i4 = this.bp + 1;
                        this.bp = i4;
                        this.ch = charAt(i4);
                        this.matchStat = 4;
                        return j;
                    }
                    if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt3)) {
                        this.matchStat = -1;
                        return 0L;
                    }
                    int i5 = this.bp + 1;
                    this.bp = i5;
                    cCharAt3 = charAt(i5);
                }
                int i6 = this.bp + 1;
                this.bp = i6;
                this.ch = charAt(i6);
                this.matchStat = 3;
                return j;
            }
            if (i3 > this.len) {
                this.matchStat = -1;
                return 0L;
            }
            j = (j ^ cCharAt2) * com.alibaba.fastjson.util.TypeUtils.fnv1a_64_magic_prime;
            i2 = i3;
        }
    }

    public boolean scanISO8601DateIfMatch() {
        return scanISO8601DateIfMatch(true);
    }

    public boolean scanISO8601DateIfMatch(boolean z) {
        return scanISO8601DateIfMatch(z, this.len - this.bp);
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x007a, code lost:
    
        if (r2 != '.') goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007c, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007e, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007f, code lost:
    
        if (r5 == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0081, code lost:
    
        if (r2 == '\"') goto L39;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0083, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0085, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0086, code lost:
    
        r2 = charAt(r11);
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008d, code lost:
    
        if (r3 >= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008f, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0091, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0092, code lost:
    
        if (r2 != r15) goto L48;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0094, code lost:
    
        r14.bp = r11;
        r14.ch = charAt(r11);
        r14.matchStat = 3;
        r14.token = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00a1, code lost:
    
        if (r6 == false) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00a4, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a9, code lost:
    
        if (com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(r2) == false) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00ab, code lost:
    
        r2 = charAt(r11);
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00b3, code lost:
    
        r14.matchStat = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00b5, code lost:
    
        if (r6 == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00b8, code lost:
    
        return -r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:?, code lost:
    
        return r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:?, code lost:
    
        return r3;
     */
    /* JADX WARN: Removed duplicated region for block: B:70:0x00ed  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00fa  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x0111 -> B:78:0x0113). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int scanInt(char r15) {
        /*
            Method dump skipped, instructions count: 291
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.scanInt(char):int");
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public long scanLong(char c2) {
        int i;
        char cCharAt;
        boolean z = false;
        this.matchStat = 0;
        int i2 = this.bp;
        int i3 = i2 + 1;
        char cCharAt2 = charAt(i2);
        boolean z2 = cCharAt2 == '\"';
        if (z2) {
            int i4 = i3 + 1;
            char cCharAt3 = charAt(i3);
            i3 = i4;
            cCharAt2 = cCharAt3;
        }
        boolean z3 = cCharAt2 == '-';
        if (z3) {
            int i5 = i3 + 1;
            char cCharAt4 = charAt(i3);
            i3 = i5;
            cCharAt2 = cCharAt4;
        }
        char c3 = '0';
        if (cCharAt2 >= '0' && cCharAt2 <= '9') {
            long j = cCharAt2 - '0';
            while (true) {
                i = i3 + 1;
                cCharAt = charAt(i3);
                if (cCharAt < c3 || cCharAt > '9') {
                    break;
                }
                j = (j * 10) + (cCharAt - '0');
                i3 = i;
                c3 = '0';
            }
            if (cCharAt == '.') {
                this.matchStat = -1;
                return 0L;
            }
            if (z2) {
                if (cCharAt != '\"') {
                    this.matchStat = -1;
                    return 0L;
                }
                cCharAt = charAt(i);
                i++;
            }
            if (j >= 0 || (j == Long.MIN_VALUE && z3)) {
                z = true;
            }
            if (!z) {
                this.matchStat = -1;
                return 0L;
            }
            while (cCharAt != c2) {
                if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt)) {
                    this.matchStat = -1;
                    return j;
                }
                cCharAt = charAt(i);
                i++;
            }
            this.bp = i;
            this.ch = charAt(i);
            this.matchStat = 3;
            this.token = 16;
            return z3 ? -j : j;
        }
        if (cCharAt2 == 'n') {
            int i6 = i3 + 1;
            if (charAt(i3) == 'u') {
                int i7 = i6 + 1;
                if (charAt(i6) == 'l') {
                    int i8 = i7 + 1;
                    if (charAt(i7) == 'l') {
                        this.matchStat = 5;
                        int i9 = i8 + 1;
                        char cCharAt5 = charAt(i8);
                        if (z2 && cCharAt5 == '\"') {
                            int i10 = i9 + 1;
                            char cCharAt6 = charAt(i9);
                            i9 = i10;
                            cCharAt5 = cCharAt6;
                        }
                        while (cCharAt5 != ',') {
                            if (cCharAt5 == ']') {
                                this.bp = i9;
                                this.ch = charAt(i9);
                                this.matchStat = 5;
                                this.token = 15;
                                return 0L;
                            }
                            if (!com.alibaba.fastjson.parser.JSONLexerBase.isWhitespace(cCharAt5)) {
                                this.matchStat = -1;
                                return 0L;
                            }
                            int i11 = i9 + 1;
                            char cCharAt7 = charAt(i9);
                            i9 = i11;
                            cCharAt5 = cCharAt7;
                        }
                        this.bp = i9;
                        this.ch = charAt(i9);
                        this.matchStat = 5;
                        this.token = 16;
                        return 0L;
                    }
                }
            }
        }
        this.matchStat = -1;
        return 0L;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public java.lang.String scanTypeName(com.alibaba.fastjson.parser.SymbolTable symbolTable) {
        int iIndexOf;
        if (!this.text.startsWith("\"@type\":\"", this.bp) || (iIndexOf = this.text.indexOf(34, this.bp + 9)) == -1) {
            return null;
        }
        int i = this.bp + 9;
        this.bp = i;
        int iCharAt = 0;
        while (i < iIndexOf) {
            iCharAt = (iCharAt * 31) + this.text.charAt(i);
            i++;
        }
        int i2 = this.bp;
        java.lang.String strAddSymbol = addSymbol(i2, iIndexOf - i2, iCharAt, symbolTable);
        char cCharAt = this.text.charAt(iIndexOf + 1);
        if (cCharAt != ',' && cCharAt != ']') {
            return null;
        }
        int i3 = iIndexOf + 2;
        this.bp = i3;
        this.ch = this.text.charAt(i3);
        return strAddSymbol;
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0084, code lost:
    
        if (r3 == false) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x008c, code lost:
    
        throw new com.alibaba.fastjson.JSONException("illegal json.");
     */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean seekArrayToItem(int r11) throws java.lang.NumberFormatException {
        /*
            r10 = this;
            if (r11 < 0) goto Lb4
            int r0 = r10.token
            r1 = 20
            r2 = 0
            if (r0 != r1) goto La
            return r2
        La:
            r1 = 14
            if (r0 != r1) goto Lae
            r0 = 0
        Lf:
            r3 = 1
            if (r0 >= r11) goto Laa
            r10.skipWhitespace()
            char r4 = r10.ch
            r5 = 34
            r6 = 16
            java.lang.String r7 = "illegal json."
            r8 = 93
            r9 = 44
            if (r4 == r5) goto L8d
            r5 = 39
            if (r4 != r5) goto L28
            goto L8d
        L28:
            r5 = 123(0x7b, float:1.72E-43)
            if (r4 != r5) goto L37
            r10.next()
            r3 = 12
            r10.token = r3
            r10.skipObject(r2)
            goto L43
        L37:
            r5 = 91
            if (r4 != r5) goto L53
            r10.next()
            r10.token = r1
            r10.skipArray(r2)
        L43:
            int r3 = r10.token
            if (r3 != r6) goto L48
            goto L97
        L48:
            r11 = 15
            if (r3 != r11) goto L4d
            return r2
        L4d:
            java.lang.UnsupportedOperationException r11 = new java.lang.UnsupportedOperationException
            r11.<init>()
            throw r11
        L53:
            int r4 = r10.bp
            int r4 = r4 + r3
        L56:
            java.lang.String r5 = r10.text
            int r5 = r5.length()
            if (r4 >= r5) goto L83
            java.lang.String r5 = r10.text
            char r5 = r5.charAt(r4)
            if (r5 != r9) goto L71
            int r4 = r4 + 1
            r10.bp = r4
            char r4 = r10.charAt(r4)
            r10.ch = r4
            goto L84
        L71:
            if (r5 != r8) goto L80
            int r4 = r4 + r3
            r10.bp = r4
            char r11 = r10.charAt(r4)
            r10.ch = r11
            r10.nextToken()
            return r2
        L80:
            int r4 = r4 + 1
            goto L56
        L83:
            r3 = 0
        L84:
            if (r3 == 0) goto L87
            goto L97
        L87:
            com.alibaba.fastjson.JSONException r11 = new com.alibaba.fastjson.JSONException
            r11.<init>(r7)
            throw r11
        L8d:
            r10.skipString()
            char r3 = r10.ch
            if (r3 != r9) goto L9b
            r10.next()
        L97:
            int r0 = r0 + 1
            goto Lf
        L9b:
            if (r3 != r8) goto La4
            r10.next()
            r10.nextToken(r6)
            return r2
        La4:
            com.alibaba.fastjson.JSONException r11 = new com.alibaba.fastjson.JSONException
            r11.<init>(r7)
            throw r11
        Laa:
            r10.nextToken()
            return r3
        Lae:
            java.lang.UnsupportedOperationException r11 = new java.lang.UnsupportedOperationException
            r11.<init>()
            throw r11
        Lb4:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "index must > 0, but "
            java.lang.String r11 = e.a.c.a.a.K(r1, r11)
            r0.<init>(r11)
            goto Lc1
        Lc0:
            throw r0
        Lc1:
            goto Lc0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.seekArrayToItem(int):boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:231:0x0308, code lost:
    
        if (r7 != '+') goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:235:0x0311, code lost:
    
        if (r7 <= '9') goto L232;
     */
    /* JADX WARN: Path cross not found for [B:232:0x030a, B:231:0x0308], limit reached: 264 */
    /* JADX WARN: Path cross not found for [B:232:0x030a, B:233:0x030d], limit reached: 264 */
    /* JADX WARN: Path cross not found for [B:233:0x030d, B:232:0x030a], limit reached: 264 */
    /* JADX WARN: Removed duplicated region for block: B:189:0x0290  */
    /* JADX WARN: Removed duplicated region for block: B:212:0x02d5  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:235:0x0311 -> B:232:0x030a). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int seekObjectToField(long r18, boolean r20) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 845
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.seekObjectToField(long, boolean):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0183, code lost:
    
        if (r6 == '0') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0187, code lost:
    
        if (r6 == '1') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x018b, code lost:
    
        if (r6 == '2') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x018f, code lost:
    
        if (r6 == '3') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0193, code lost:
    
        if (r6 == '4') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0197, code lost:
    
        if (r6 == '5') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x019b, code lost:
    
        if (r6 == '6') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x019f, code lost:
    
        if (r6 == '7') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01a3, code lost:
    
        if (r6 == '8') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01a5, code lost:
    
        if (r6 == '9') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01a7, code lost:
    
        if (r6 == '+') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x01a9, code lost:
    
        if (r6 == '-') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x01ab, code lost:
    
        skipWhitespace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x01ae, code lost:
    
        r6 = r16.ch;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x01b0, code lost:
    
        if (r6 == '-') goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x01b2, code lost:
    
        if (r6 == '+') goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01b4, code lost:
    
        if (r6 < '0') goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01b6, code lost:
    
        if (r6 > '9') goto L191;
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01b9, code lost:
    
        r6 = r16.ch;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x01bb, code lost:
    
        if (r6 != '\"') goto L179;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x01bd, code lost:
    
        skipString();
        r4 = r16.ch;
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x01c2, code lost:
    
        if (r4 == ',') goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x01c4, code lost:
    
        if (r4 == '}') goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x01c6, code lost:
    
        skipWhitespace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x01cb, code lost:
    
        if (r16.ch != ',') goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x01cf, code lost:
    
        if (r6 != '{') goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x01d1, code lost:
    
        r5 = r16.bp + 1;
        r16.bp = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x01dd, code lost:
    
        if (r5 < r16.text.length()) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x01df, code lost:
    
        r7 = com.alibaba.fastjson.parser.JSONLexer.EOI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x01e2, code lost:
    
        r7 = r16.text.charAt(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x01e8, code lost:
    
        r16.ch = r7;
        skipObject(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x01ef, code lost:
    
        if (r6 != '[') goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x01f1, code lost:
    
        next();
        skipArray(false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x01fe, code lost:
    
        throw new java.lang.UnsupportedOperationException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x01ff, code lost:
    
        next();
        r4 = r16.ch;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0204, code lost:
    
        if (r4 < '0') goto L207;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x0206, code lost:
    
        if (r4 > '9') goto L208;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x020d, code lost:
    
        if (r16.ch != '.') goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x020f, code lost:
    
        next();
        r4 = r16.ch;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0214, code lost:
    
        if (r4 < '0') goto L211;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0216, code lost:
    
        if (r4 > '9') goto L212;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0219, code lost:
    
        r4 = r16.ch;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x021d, code lost:
    
        if (r4 == 'E') goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0221, code lost:
    
        if (r4 != 'e') goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0223, code lost:
    
        next();
        r4 = r16.ch;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0228, code lost:
    
        if (r4 == '-') goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x022a, code lost:
    
        if (r4 != '+') goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x022c, code lost:
    
        next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x022f, code lost:
    
        r4 = r16.ch;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0231, code lost:
    
        if (r4 < '0') goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0233, code lost:
    
        if (r4 > '9') goto L168;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x0238, code lost:
    
        if (r16.ch == ',') goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x023a, code lost:
    
        skipWhitespace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x023f, code lost:
    
        if (r16.ch != ',') goto L198;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0241, code lost:
    
        next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x0246, code lost:
    
        r2 = e.a.c.a.a.o("illegal json, ");
        r2.append(info());
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x025c, code lost:
    
        throw new com.alibaba.fastjson.JSONException(r2.toString());
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a1, code lost:
    
        r11 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a4, code lost:
    
        if (r11 >= r17.length) goto L205;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00aa, code lost:
    
        if (r9 != r17[r11]) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00ad, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00b0, code lost:
    
        r11 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00b9, code lost:
    
        if (r11 == (-1)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00bd, code lost:
    
        if (r16.ch == ':') goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00bf, code lost:
    
        skipWhitespace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c4, code lost:
    
        if (r16.ch != ':') goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00c6, code lost:
    
        r1 = r16.bp + 1;
        r16.bp = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00d2, code lost:
    
        if (r1 < r16.text.length()) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00d4, code lost:
    
        r1 = com.alibaba.fastjson.parser.JSONLexer.EOI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00d7, code lost:
    
        r1 = r16.text.charAt(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00dd, code lost:
    
        r16.ch = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00df, code lost:
    
        if (r1 != ',') goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00e1, code lost:
    
        r1 = r16.bp + 1;
        r16.bp = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00ed, code lost:
    
        if (r1 < r16.text.length()) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x00f0, code lost:
    
        r7 = r16.text.charAt(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x00f6, code lost:
    
        r16.ch = r7;
        r16.token = 16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x00fd, code lost:
    
        if (r1 != ']') goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x00ff, code lost:
    
        r1 = r16.bp + 1;
        r16.bp = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x010b, code lost:
    
        if (r1 < r16.text.length()) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x010e, code lost:
    
        r7 = r16.text.charAt(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0114, code lost:
    
        r16.ch = r7;
        r1 = 15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0119, code lost:
    
        if (r1 != '}') goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x011b, code lost:
    
        r1 = r16.bp + 1;
        r16.bp = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0127, code lost:
    
        if (r1 < r16.text.length()) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x012a, code lost:
    
        r7 = r16.text.charAt(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0130, code lost:
    
        r16.ch = r7;
        r1 = 13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0134, code lost:
    
        r16.token = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0137, code lost:
    
        if (r1 < '0') goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0139, code lost:
    
        if (r1 > '9') goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x013b, code lost:
    
        r16.sp = 0;
        r16.pos = r16.bp;
        scanNumber();
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0145, code lost:
    
        nextToken(2);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0149, code lost:
    
        r16.matchStat = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x014c, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x014f, code lost:
    
        if (r16.ch == ':') goto L88;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0151, code lost:
    
        skipWhitespace();
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0156, code lost:
    
        if (r16.ch != ':') goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0158, code lost:
    
        r6 = r16.bp + 1;
        r16.bp = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0164, code lost:
    
        if (r6 < r16.text.length()) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0166, code lost:
    
        r6 = com.alibaba.fastjson.parser.JSONLexer.EOI;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0169, code lost:
    
        r6 = r16.text.charAt(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x016f, code lost:
    
        r16.ch = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0179, code lost:
    
        if (r6 == '\"') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x017d, code lost:
    
        if (r6 == '\'') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x017f, code lost:
    
        if (r6 == '{') goto L121;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0181, code lost:
    
        if (r6 == '[') goto L121;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:166:0x0233 -> B:163:0x022c). Please report as a decompilation issue!!! */
    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int seekObjectToField(long[] r17) throws java.lang.NumberFormatException {
        /*
            Method dump skipped, instructions count: 613
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.parser.JSONScanner.seekObjectToField(long[]):int");
    }

    public void setTime(char c2, char c3, char c4, char c5, char c6, char c7) {
        this.calendar.set(11, (c3 - '0') + ((c2 - '0') * 10));
        this.calendar.set(12, (c5 - '0') + ((c4 - '0') * 10));
        this.calendar.set(13, (c7 - '0') + ((c6 - '0') * 10));
    }

    public void setTimeZone(char c2, char c3, char c4) {
        setTimeZone(c2, c3, c4, '0', '0');
    }

    public void setTimeZone(char c2, char c3, char c4, char c5, char c6) {
        int i = (((c6 - '0') + ((c5 - '0') * 10)) * 60 * 1000) + (((c4 - '0') + ((c3 - '0') * 10)) * javax.jmdns.impl.constants.DNSConstants.DNS_TTL * 1000);
        if (c2 == '-') {
            i = -i;
        }
        if (this.calendar.getTimeZone().getRawOffset() != i) {
            this.calendar.setTimeZone(new java.util.SimpleTimeZone(i, java.lang.Integer.toString(i)));
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipArray() throws java.lang.NumberFormatException {
        skipArray(false);
    }

    public final void skipArray(boolean z) throws java.lang.NumberFormatException {
        int i = this.bp;
        boolean z2 = false;
        int i2 = 0;
        while (i < this.text.length()) {
            char cCharAt = this.text.charAt(i);
            if (cCharAt == '\\') {
                if (i >= this.len - 1) {
                    this.ch = cCharAt;
                    this.bp = i;
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("illegal str, ");
                    sbO.append(info());
                    throw new com.alibaba.fastjson.JSONException(sbO.toString());
                }
                i++;
            } else if (cCharAt == '\"') {
                z2 = !z2;
            } else if (cCharAt != '[') {
                char cCharAt2 = com.alibaba.fastjson.parser.JSONLexer.EOI;
                if (cCharAt == '{' && z) {
                    int i3 = this.bp + 1;
                    this.bp = i3;
                    if (i3 < this.text.length()) {
                        cCharAt2 = this.text.charAt(i3);
                    }
                    this.ch = cCharAt2;
                    skipObject(z);
                } else if (cCharAt == ']' && !z2 && i2 - 1 == -1) {
                    int i4 = i + 1;
                    this.bp = i4;
                    if (i4 == this.text.length()) {
                        this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                        this.token = 20;
                        return;
                    } else {
                        this.ch = this.text.charAt(this.bp);
                        nextToken(16);
                        return;
                    }
                }
            } else if (!z2) {
                i2++;
            }
            i++;
        }
        if (i != this.text.length()) {
            return;
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("illegal str, ");
        sbO2.append(info());
        throw new com.alibaba.fastjson.JSONException(sbO2.toString());
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipObject() throws java.lang.NumberFormatException {
        skipObject(false);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final void skipObject(boolean z) throws java.lang.NumberFormatException {
        int i = this.bp;
        boolean z2 = false;
        int i2 = 0;
        while (i < this.text.length()) {
            char cCharAt = this.text.charAt(i);
            if (cCharAt == '\\') {
                if (i >= this.len - 1) {
                    this.ch = cCharAt;
                    this.bp = i;
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("illegal str, ");
                    sbO.append(info());
                    throw new com.alibaba.fastjson.JSONException(sbO.toString());
                }
                i++;
            } else if (cCharAt == '\"') {
                z2 = !z2;
            } else if (cCharAt != '{') {
                if (cCharAt == '}' && !z2 && i2 - 1 == -1) {
                    int i3 = i + 1;
                    this.bp = i3;
                    int length = this.text.length();
                    char cCharAt2 = com.alibaba.fastjson.parser.JSONLexer.EOI;
                    if (i3 == length) {
                        this.ch = com.alibaba.fastjson.parser.JSONLexer.EOI;
                        this.token = 20;
                        return;
                    }
                    char cCharAt3 = this.text.charAt(this.bp);
                    this.ch = cCharAt3;
                    if (cCharAt3 == ',') {
                        this.token = 16;
                        int i4 = this.bp + 1;
                        this.bp = i4;
                        if (i4 < this.text.length()) {
                            cCharAt2 = this.text.charAt(i4);
                        }
                        this.ch = cCharAt2;
                        return;
                    }
                    if (cCharAt3 == '}') {
                        this.token = 13;
                        next();
                        return;
                    } else if (cCharAt3 != ']') {
                        nextToken(16);
                        return;
                    } else {
                        this.token = 15;
                        next();
                        return;
                    }
                }
            } else if (!z2) {
                i2++;
            }
            i++;
        }
        for (int i5 = 0; i5 < this.bp; i5++) {
            if (i5 < this.text.length() && this.text.charAt(i5) == ' ') {
                i++;
            }
        }
        if (i != this.text.length()) {
            return;
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("illegal str, ");
        sbO2.append(info());
        throw new com.alibaba.fastjson.JSONException(sbO2.toString());
    }

    public final void skipString() {
        if (this.ch != '\"') {
            throw new java.lang.UnsupportedOperationException();
        }
        int i = this.bp;
        while (true) {
            i++;
            if (i >= this.text.length()) {
                throw new com.alibaba.fastjson.JSONException("unclosed str");
            }
            char cCharAt = this.text.charAt(i);
            if (cCharAt == '\\') {
                if (i < this.len - 1) {
                    i++;
                }
            } else if (cCharAt == '\"') {
                java.lang.String str = this.text;
                int i2 = i + 1;
                this.bp = i2;
                this.ch = str.charAt(i2);
                return;
            }
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final java.lang.String stringVal() {
        return !this.hasSpecial ? subString(this.np + 1, this.sp) : new java.lang.String(this.sbuf, 0, this.sp);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final java.lang.String subString(int i, int i2) {
        if (!com.alibaba.fastjson.util.ASMUtils.IS_ANDROID) {
            return this.text.substring(i, i2 + i);
        }
        char[] cArr = this.sbuf;
        if (i2 < cArr.length) {
            this.text.getChars(i, i + i2, cArr, 0);
            return new java.lang.String(this.sbuf, 0, i2);
        }
        char[] cArr2 = new char[i2];
        this.text.getChars(i, i2 + i, cArr2, 0);
        return new java.lang.String(cArr2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char[] sub_chars(int i, int i2) {
        if (com.alibaba.fastjson.util.ASMUtils.IS_ANDROID) {
            char[] cArr = this.sbuf;
            if (i2 < cArr.length) {
                this.text.getChars(i, i2 + i, cArr, 0);
                return this.sbuf;
            }
        }
        char[] cArr2 = new char[i2];
        this.text.getChars(i, i2 + i, cArr2, 0);
        return cArr2;
    }
}
