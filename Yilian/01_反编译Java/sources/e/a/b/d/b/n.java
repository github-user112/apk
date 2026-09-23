package e.a.b.d.b;

/* loaded from: classes.dex */
public final class n {
    public final int a;
    public final e.a.b.d.d.c b;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.d.d.e f2493c;

    /* renamed from: d, reason: collision with root package name */
    public final e.a.b.d.d.e f2494d;

    /* renamed from: e, reason: collision with root package name */
    public final int f2495e;

    /* renamed from: f, reason: collision with root package name */
    public final boolean f2496f;

    /* renamed from: g, reason: collision with root package name */
    public final java.lang.String f2497g;

    public n(int i, e.a.b.d.d.c cVar, e.a.b.d.d.e eVar, int i2, java.lang.String str) {
        this(i, cVar, eVar, e.a.b.d.d.b.f2519c, i2, false, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public n(int i, e.a.b.d.d.c cVar, e.a.b.d.d.e eVar, e.a.b.d.d.e eVar2, int i2, boolean z, java.lang.String str) {
        if (cVar == null) {
            throw new java.lang.NullPointerException("result == null");
        }
        if (eVar == null) {
            throw new java.lang.NullPointerException("sources == null");
        }
        if (eVar2 == 0) {
            throw new java.lang.NullPointerException("exceptions == null");
        }
        if (i2 < 1 || i2 > 6) {
            throw new java.lang.IllegalArgumentException("bogus branchingness");
        }
        if (((e.a.b.f.d) eVar2).b.length != 0 && i2 != 6) {
            throw new java.lang.IllegalArgumentException("exceptions / branchingness mismatch");
        }
        this.a = i;
        this.b = cVar;
        this.f2493c = eVar;
        this.f2494d = eVar2;
        this.f2495e = i2;
        this.f2496f = z;
        this.f2497g = str;
    }

    public n(int i, e.a.b.d.d.c cVar, e.a.b.d.d.e eVar, e.a.b.d.d.e eVar2, java.lang.String str) {
        this(i, cVar, eVar, eVar2, 6, false, str);
    }

    public n(int i, e.a.b.d.d.c cVar, e.a.b.d.d.e eVar, java.lang.String str) {
        this(i, cVar, eVar, e.a.b.d.d.b.f2519c, 1, false, str);
    }

    public n(int i, e.a.b.d.d.e eVar, e.a.b.d.d.e eVar2) {
        this(i, e.a.b.d.d.c.o, eVar, eVar2, 6, true, null);
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e.a.b.d.b.n)) {
            return false;
        }
        e.a.b.d.b.n nVar = (e.a.b.d.b.n) obj;
        return this.a == nVar.a && this.f2495e == nVar.f2495e && this.b == nVar.b && this.f2493c.equals(nVar.f2493c) && this.f2494d.equals(nVar.f2494d);
    }

    public int hashCode() {
        return this.f2494d.hashCode() + ((this.f2493c.hashCode() + ((this.b.hashCode() + (((this.a * 31) + this.f2495e) * 31)) * 31)) * 31);
    }

    public java.lang.String toString() {
        java.lang.String string;
        java.lang.String string2;
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(40);
        stringBuffer.append("Rop{");
        int i = this.a;
        switch (i) {
            case 1:
                string = "nop";
                break;
            case 2:
                string = "move";
                break;
            case 3:
                string = "move-param";
                break;
            case 4:
                string = "move-exception";
                break;
            case 5:
                string = "const";
                break;
            case 6:
                string = "goto";
                break;
            case 7:
                string = "if-eq";
                break;
            case 8:
                string = "if-ne";
                break;
            case 9:
                string = "if-lt";
                break;
            case 10:
                string = "if-ge";
                break;
            case 11:
                string = "if-le";
                break;
            case 12:
                string = "if-gt";
                break;
            case 13:
                string = "switch";
                break;
            case 14:
                string = "add";
                break;
            case 15:
                string = "sub";
                break;
            case 16:
                string = "mul";
                break;
            case 17:
                string = com.google.android.exoplayer2.text.ttml.TtmlNode.TAG_DIV;
                break;
            case 18:
                string = "rem";
                break;
            case 19:
                string = "neg";
                break;
            case 20:
                string = "and";
                break;
            case 21:
                string = "or";
                break;
            case 22:
                string = "xor";
                break;
            case 23:
                string = "shl";
                break;
            case 24:
                string = "shr";
                break;
            case 25:
                string = "ushr";
                break;
            case 26:
                string = "not";
                break;
            case 27:
                string = "cmpl";
                break;
            case 28:
                string = "cmpg";
                break;
            case 29:
                string = "conv";
                break;
            case 30:
                string = "to-byte";
                break;
            case 31:
                string = "to-char";
                break;
            case 32:
                string = "to-short";
                break;
            case 33:
                string = "return";
                break;
            case 34:
                string = "array-length";
                break;
            case 35:
                string = "throw";
                break;
            case 36:
                string = "monitor-enter";
                break;
            case 37:
                string = "monitor-exit";
                break;
            case 38:
                string = "aget";
                break;
            case 39:
                string = "aput";
                break;
            case 40:
                string = "new-instance";
                break;
            case 41:
                string = "new-array";
                break;
            case 42:
                string = "filled-new-array";
                break;
            case 43:
                string = "check-cast";
                break;
            case 44:
                string = "instance-of";
                break;
            case 45:
                string = "get-field";
                break;
            case 46:
                string = "get-static";
                break;
            case 47:
                string = "put-field";
                break;
            case 48:
                string = "put-static";
                break;
            case 49:
                string = "invoke-static";
                break;
            case 50:
                string = "invoke-virtual";
                break;
            case 51:
                string = "invoke-super";
                break;
            case 52:
                string = "invoke-direct";
                break;
            case 53:
                string = "invoke-interface";
                break;
            case 54:
            default:
                java.lang.StringBuilder sbO = e.a.c.a.a.o("unknown-");
                sbO.append(d.s.y.d0(i));
                string = sbO.toString();
                break;
            case 55:
                string = "move-result";
                break;
            case 56:
                string = "move-result-pseudo";
                break;
            case 57:
                string = "fill-array-data";
                break;
        }
        stringBuffer.append(string);
        if (this.b != e.a.b.d.d.c.o) {
            stringBuffer.append(" ");
            stringBuffer.append(this.b);
        } else {
            stringBuffer.append(" .");
        }
        stringBuffer.append(" <-");
        int length = ((e.a.b.f.d) this.f2493c).b.length;
        if (length == 0) {
            stringBuffer.append(" .");
        } else {
            for (int i2 = 0; i2 < length; i2++) {
                stringBuffer.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
                stringBuffer.append(this.f2493c.b(i2));
            }
        }
        if (this.f2496f) {
            stringBuffer.append(" call");
        }
        int length2 = ((e.a.b.f.d) this.f2494d).b.length;
        if (length2 != 0) {
            stringBuffer.append(" throws");
            for (int i3 = 0; i3 < length2; i3++) {
                stringBuffer.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
                if (this.f2494d.b(i3) == e.a.b.d.d.c.u) {
                    stringBuffer.append("<any>");
                } else {
                    stringBuffer.append(this.f2494d.b(i3));
                }
            }
        } else {
            int i4 = this.f2495e;
            if (i4 == 1) {
                string2 = " flows";
            } else if (i4 == 2) {
                string2 = " returns";
            } else if (i4 == 3) {
                string2 = " gotos";
            } else if (i4 == 4) {
                string2 = " ifs";
            } else if (i4 != 5) {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o(" ");
                sbO2.append(d.s.y.d0(this.f2495e));
                string2 = sbO2.toString();
            } else {
                string2 = " switches";
            }
            stringBuffer.append(string2);
        }
        stringBuffer.append('}');
        return stringBuffer.toString();
    }
}
