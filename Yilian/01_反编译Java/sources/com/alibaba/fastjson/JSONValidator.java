package com.alibaba.fastjson;

/* loaded from: classes.dex */
public abstract class JSONValidator implements java.lang.Cloneable, java.io.Closeable {
    public char ch;
    public boolean eof;
    public com.alibaba.fastjson.JSONValidator.Type type;
    public java.lang.Boolean validateResult;
    public int pos = -1;
    public int count = 0;
    public boolean supportMultiValue = false;

    public static class ReaderValidator extends com.alibaba.fastjson.JSONValidator {
        public static final java.lang.ThreadLocal<char[]> bufLocal = new java.lang.ThreadLocal<>();
        public char[] buf;
        public final java.io.Reader r;
        public int end = -1;
        public int readCount = 0;

        public ReaderValidator(java.io.Reader reader) throws java.io.IOException {
            this.r = reader;
            char[] cArr = bufLocal.get();
            this.buf = cArr;
            if (cArr != null) {
                bufLocal.set(null);
            } else {
                this.buf = new char[8192];
            }
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            bufLocal.set(this.buf);
            this.r.close();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() throws java.io.IOException {
            int i = this.pos;
            if (i < this.end) {
                char[] cArr = this.buf;
                int i2 = i + 1;
                this.pos = i2;
                this.ch = cArr[i2];
                return;
            }
            if (this.eof) {
                return;
            }
            try {
                int i3 = this.r.read(this.buf, 0, this.buf.length);
                this.readCount++;
                if (i3 > 0) {
                    this.ch = this.buf[0];
                    this.pos = 0;
                    this.end = i3 - 1;
                    return;
                }
                this.pos = 0;
                this.end = 0;
                this.buf = null;
                this.ch = (char) 0;
                this.eof = true;
                if (i3 != -1) {
                    throw new com.alibaba.fastjson.JSONException("read error");
                }
            } catch (java.io.IOException unused) {
                throw new com.alibaba.fastjson.JSONException("read error");
            }
        }
    }

    public enum Type {
        Object,
        Array,
        Value
    }

    public static class UTF16Validator extends com.alibaba.fastjson.JSONValidator {
        public final java.lang.String str;

        public UTF16Validator(java.lang.String str) {
            this.str = str;
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public final void fieldName() {
            char cCharAt;
            int i = this.pos;
            do {
                i++;
                if (i >= this.str.length() || (cCharAt = this.str.charAt(i)) == '\\') {
                    while (true) {
                        next();
                        char c2 = this.ch;
                        if (c2 == '\\') {
                            next();
                            if (this.ch == 'u') {
                                next();
                                next();
                                next();
                                next();
                            }
                        } else if (c2 == '\"') {
                            next();
                            return;
                        } else if (this.eof) {
                            return;
                        }
                    }
                }
            } while (cCharAt != '\"');
            int i2 = i + 1;
            this.ch = this.str.charAt(i2);
            this.pos = i2;
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() {
            int i = this.pos + 1;
            this.pos = i;
            if (i < this.str.length()) {
                this.ch = this.str.charAt(this.pos);
            } else {
                this.ch = (char) 0;
                this.eof = true;
            }
        }
    }

    public static class UTF8InputStreamValidator extends com.alibaba.fastjson.JSONValidator {
        public static final java.lang.ThreadLocal<byte[]> bufLocal = new java.lang.ThreadLocal<>();
        public byte[] buf;
        public final java.io.InputStream is;
        public int end = -1;
        public int readCount = 0;

        public UTF8InputStreamValidator(java.io.InputStream inputStream) throws java.io.IOException {
            this.is = inputStream;
            byte[] bArr = bufLocal.get();
            this.buf = bArr;
            if (bArr != null) {
                bufLocal.set(null);
            } else {
                this.buf = new byte[8192];
            }
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws java.io.IOException {
            bufLocal.set(this.buf);
            this.is.close();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() throws java.io.IOException {
            int i = this.pos;
            if (i < this.end) {
                byte[] bArr = this.buf;
                int i2 = i + 1;
                this.pos = i2;
                this.ch = (char) bArr[i2];
                return;
            }
            if (this.eof) {
                return;
            }
            try {
                int i3 = this.is.read(this.buf, 0, this.buf.length);
                this.readCount++;
                if (i3 > 0) {
                    this.ch = (char) this.buf[0];
                    this.pos = 0;
                    this.end = i3 - 1;
                    return;
                }
                this.pos = 0;
                this.end = 0;
                this.buf = null;
                this.ch = (char) 0;
                this.eof = true;
                if (i3 != -1) {
                    throw new com.alibaba.fastjson.JSONException("read error");
                }
            } catch (java.io.IOException unused) {
                throw new com.alibaba.fastjson.JSONException("read error");
            }
        }
    }

    public static class UTF8Validator extends com.alibaba.fastjson.JSONValidator {
        public final byte[] bytes;

        public UTF8Validator(byte[] bArr) {
            this.bytes = bArr;
            next();
            skipWhiteSpace();
        }

        @Override // com.alibaba.fastjson.JSONValidator
        public void next() {
            int i = this.pos + 1;
            this.pos = i;
            byte[] bArr = this.bytes;
            if (i < bArr.length) {
                this.ch = (char) bArr[i];
            } else {
                this.ch = (char) 0;
                this.eof = true;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x0077, code lost:
    
        if (r0 == '}') goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:122:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x019f A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:169:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:174:0x01a2 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private boolean any() {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.JSONValidator.any():boolean");
    }

    public static com.alibaba.fastjson.JSONValidator from(java.io.Reader reader) {
        return new com.alibaba.fastjson.JSONValidator.ReaderValidator(reader);
    }

    public static com.alibaba.fastjson.JSONValidator from(java.lang.String str) {
        return new com.alibaba.fastjson.JSONValidator.UTF16Validator(str);
    }

    public static com.alibaba.fastjson.JSONValidator fromUtf8(java.io.InputStream inputStream) {
        return new com.alibaba.fastjson.JSONValidator.UTF8InputStreamValidator(inputStream);
    }

    public static com.alibaba.fastjson.JSONValidator fromUtf8(byte[] bArr) {
        return new com.alibaba.fastjson.JSONValidator.UTF8Validator(bArr);
    }

    public static final boolean isWhiteSpace(char c2) {
        return c2 == ' ' || c2 == '\t' || c2 == '\r' || c2 == '\n' || c2 == '\f' || c2 == '\b';
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public void fieldName() {
        while (true) {
            next();
            char c2 = this.ch;
            if (c2 == '\\') {
                next();
                if (this.ch == 'u') {
                    next();
                    next();
                    next();
                    next();
                }
            } else if (c2 == '\"') {
                next();
                return;
            }
        }
    }

    public com.alibaba.fastjson.JSONValidator.Type getType() {
        if (this.type == null) {
            validate();
        }
        return this.type;
    }

    public boolean isSupportMultiValue() {
        return this.supportMultiValue;
    }

    public abstract void next();

    public com.alibaba.fastjson.JSONValidator setSupportMultiValue(boolean z) {
        this.supportMultiValue = z;
        return this;
    }

    public void skipWhiteSpace() {
        while (isWhiteSpace(this.ch)) {
            next();
        }
    }

    public boolean string() {
        while (true) {
            next();
            if (this.eof) {
                return false;
            }
            char c2 = this.ch;
            if (c2 == '\\') {
                next();
                if (this.ch == 'u') {
                    next();
                    next();
                    next();
                    next();
                }
            } else if (c2 == '\"') {
                next();
                return true;
            }
        }
    }

    public boolean validate() {
        java.lang.Boolean bool = this.validateResult;
        if (bool != null) {
            return bool.booleanValue();
        }
        while (any()) {
            skipWhiteSpace();
            this.count++;
            if (!this.eof) {
                if (!this.supportMultiValue) {
                    break;
                }
                skipWhiteSpace();
                if (this.eof) {
                }
            }
            this.validateResult = java.lang.Boolean.TRUE;
            return true;
        }
        this.validateResult = java.lang.Boolean.FALSE;
        return false;
    }
}
