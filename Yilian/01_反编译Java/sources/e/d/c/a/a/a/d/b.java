package e.d.c.a.a.a.d;

/* loaded from: classes.dex */
public class b {
    public final java.lang.String a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public int f2820c;

    /* renamed from: d, reason: collision with root package name */
    public int f2821d;

    /* renamed from: e, reason: collision with root package name */
    public int f2822e;

    /* renamed from: f, reason: collision with root package name */
    public int f2823f;

    /* renamed from: g, reason: collision with root package name */
    public char[] f2824g;

    public b(javax.security.auth.x500.X500Principal x500Principal) {
        java.lang.String name = x500Principal.getName("RFC2253");
        this.a = name;
        this.b = name.length();
    }

    public final int a(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.b) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Malformed DN: ");
            sbO.append(this.a);
            throw new java.lang.IllegalStateException(sbO.toString());
        }
        char c2 = this.f2824g[i];
        if (c2 >= '0' && c2 <= '9') {
            i2 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i2 = c2 - 'W';
        } else {
            if (c2 < 'A' || c2 > 'F') {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Malformed DN: ");
                sbO2.append(this.a);
                throw new java.lang.IllegalStateException(sbO2.toString());
            }
            i2 = c2 - '7';
        }
        char c3 = this.f2824g[i4];
        if (c3 >= '0' && c3 <= '9') {
            i3 = c3 - '0';
        } else if (c3 >= 'a' && c3 <= 'f') {
            i3 = c3 - 'W';
        } else {
            if (c3 < 'A' || c3 > 'F') {
                java.lang.StringBuilder sbO3 = e.a.c.a.a.o("Malformed DN: ");
                sbO3.append(this.a);
                throw new java.lang.IllegalStateException(sbO3.toString());
            }
            i3 = c3 - '7';
        }
        return (i2 << 4) + i3;
    }

    public final java.lang.String b() {
        char[] cArr;
        while (true) {
            int i = this.f2820c;
            if (i >= this.b || this.f2824g[i] != ' ') {
                break;
            }
            this.f2820c = i + 1;
        }
        int i2 = this.f2820c;
        if (i2 == this.b) {
            return null;
        }
        this.f2821d = i2;
        do {
            this.f2820c = i2 + 1;
            i2 = this.f2820c;
            if (i2 >= this.b) {
                break;
            }
            cArr = this.f2824g;
            if (cArr[i2] == '=') {
                break;
            }
        } while (cArr[i2] != ' ');
        int i3 = this.f2820c;
        if (i3 >= this.b) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Unexpected end of DN: ");
            sbO.append(this.a);
            throw new java.lang.IllegalStateException(sbO.toString());
        }
        this.f2822e = i3;
        if (this.f2824g[i3] == ' ') {
            while (true) {
                int i4 = this.f2820c;
                if (i4 >= this.b) {
                    break;
                }
                char[] cArr2 = this.f2824g;
                if (cArr2[i4] == '=' || cArr2[i4] != ' ') {
                    break;
                }
                this.f2820c = i4 + 1;
            }
            char[] cArr3 = this.f2824g;
            int i5 = this.f2820c;
            if (cArr3[i5] != '=' || i5 == this.b) {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Unexpected end of DN: ");
                sbO2.append(this.a);
                throw new java.lang.IllegalStateException(sbO2.toString());
            }
        }
        int i6 = this.f2820c;
        do {
            this.f2820c = i6 + 1;
            i6 = this.f2820c;
            if (i6 >= this.b) {
                break;
            }
        } while (this.f2824g[i6] == ' ');
        int i7 = this.f2822e;
        int i8 = this.f2821d;
        if (i7 - i8 > 4) {
            char[] cArr4 = this.f2824g;
            if (cArr4[i8 + 3] == '.' && (cArr4[i8] == 'O' || cArr4[i8] == 'o')) {
                char[] cArr5 = this.f2824g;
                int i9 = this.f2821d;
                if (cArr5[i9 + 1] == 'I' || cArr5[i9 + 1] == 'i') {
                    char[] cArr6 = this.f2824g;
                    int i10 = this.f2821d;
                    if (cArr6[i10 + 2] == 'D' || cArr6[i10 + 2] == 'd') {
                        this.f2821d += 4;
                    }
                }
            }
        }
        char[] cArr7 = this.f2824g;
        int i11 = this.f2821d;
        return new java.lang.String(cArr7, i11, this.f2822e - i11);
    }

    public final char c() {
        int i;
        int i2 = this.f2820c + 1;
        this.f2820c = i2;
        if (i2 == this.b) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Unexpected end of DN: ");
            sbO.append(this.a);
            throw new java.lang.IllegalStateException(sbO.toString());
        }
        char c2 = this.f2824g[i2];
        if (c2 != ' ' && c2 != '%' && c2 != '\\' && c2 != '_' && c2 != '\"' && c2 != '#') {
            switch (c2) {
                case '*':
                case '+':
                case ',':
                    break;
                default:
                    switch (c2) {
                        case ';':
                        case '<':
                        case '=':
                        case '>':
                            break;
                        default:
                            int iA = a(i2);
                            this.f2820c++;
                            if (iA >= 128) {
                                if (iA < 192 || iA > 247) {
                                    return '?';
                                }
                                if (iA <= 223) {
                                    iA &= 31;
                                    i = 1;
                                } else if (iA <= 239) {
                                    i = 2;
                                    iA &= 15;
                                } else {
                                    i = 3;
                                    iA &= 7;
                                }
                                for (int i3 = 0; i3 < i; i3++) {
                                    int i4 = this.f2820c + 1;
                                    this.f2820c = i4;
                                    if (i4 == this.b || this.f2824g[i4] != '\\') {
                                        return '?';
                                    }
                                    int i5 = i4 + 1;
                                    this.f2820c = i5;
                                    int iA2 = a(i5);
                                    this.f2820c++;
                                    if ((iA2 & 192) != 128) {
                                        return '?';
                                    }
                                    iA = (iA << 6) + (iA2 & 63);
                                }
                            }
                            return (char) iA;
                    }
            }
        }
        return this.f2824g[this.f2820c];
    }
}
