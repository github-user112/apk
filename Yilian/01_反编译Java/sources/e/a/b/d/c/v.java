package e.a.b.d.c;

/* loaded from: classes.dex */
public final class v extends e.a.b.d.c.x {
    public final java.lang.String a;
    public final e.a.b.f.b b;

    static {
        new e.a.b.d.c.v("");
    }

    public v(java.lang.String str) {
        if (str == null) {
            throw new java.lang.NullPointerException("string == null");
        }
        this.a = str.intern();
        int length = str.length();
        byte[] bArr = new byte[length * 3];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (cCharAt != 0 && cCharAt < 128) {
                bArr[i] = (byte) cCharAt;
                i++;
            } else if (cCharAt < 2048) {
                bArr[i] = (byte) (((cCharAt >> 6) & 31) | 192);
                bArr[i + 1] = (byte) ((cCharAt & '?') | 128);
                i += 2;
            } else {
                bArr[i] = (byte) (((cCharAt >> '\f') & 15) | 224);
                bArr[i + 1] = (byte) (((cCharAt >> 6) & 63) | 128);
                bArr[i + 2] = (byte) ((cCharAt & '?') | 128);
                i += 3;
            }
        }
        byte[] bArr2 = new byte[i];
        java.lang.System.arraycopy(bArr, 0, bArr2, 0, i);
        this.b = new e.a.b.f.b(bArr2);
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        java.lang.String str;
        int length = this.a.length();
        java.lang.StringBuilder sb = new java.lang.StringBuilder((length * 3) / 2);
        int i = 0;
        while (i < length) {
            char cCharAt = this.a.charAt(i);
            if (cCharAt < ' ' || cCharAt >= 127) {
                if (cCharAt <= 127) {
                    if (cCharAt == '\t') {
                        str = "\\t";
                    } else if (cCharAt == '\n') {
                        str = "\\n";
                    } else if (cCharAt != '\r') {
                        char cCharAt2 = i < length + (-1) ? this.a.charAt(i + 1) : (char) 0;
                        boolean z = cCharAt2 >= '0' && cCharAt2 <= '7';
                        sb.append('\\');
                        for (int i2 = 6; i2 >= 0; i2 -= 3) {
                            char c2 = (char) (((cCharAt >> i2) & 7) + 48);
                            if (c2 != '0' || z) {
                                sb.append(c2);
                                z = true;
                            }
                        }
                        if (!z) {
                            sb.append('0');
                        }
                        i++;
                    } else {
                        str = "\\r";
                    }
                    sb.append(str);
                    i++;
                } else {
                    sb.append("\\u");
                    sb.append(java.lang.Character.forDigit(cCharAt >> '\f', 16));
                    sb.append(java.lang.Character.forDigit((cCharAt >> '\b') & 15, 16));
                    sb.append(java.lang.Character.forDigit((cCharAt >> 4) & 15, 16));
                    cCharAt = java.lang.Character.forDigit(cCharAt & 15, 16);
                }
            } else if (cCharAt == '\'' || cCharAt == '\"' || cCharAt == '\\') {
                sb.append('\\');
            }
            sb.append(cCharAt);
            i++;
        }
        return sb.toString();
    }

    @Override // e.a.b.d.c.a
    public int d(e.a.b.d.c.a aVar) {
        return this.a.compareTo(((e.a.b.d.c.v) aVar).a);
    }

    @Override // e.a.b.d.c.a
    public java.lang.String e() {
        return "utf8";
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof e.a.b.d.c.v) {
            return this.a.equals(((e.a.b.d.c.v) obj).a);
        }
        return false;
    }

    public java.lang.String f() {
        return '\"' + a() + '\"';
    }

    @Override // e.a.b.d.d.d
    public e.a.b.d.d.c getType() {
        return e.a.b.d.d.c.t;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("string{\"");
        sbO.append(a());
        sbO.append("\"}");
        return sbO.toString();
    }
}
