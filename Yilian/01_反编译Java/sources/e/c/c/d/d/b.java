package e.c.c.d.d;

/* loaded from: classes.dex */
public final class b {
    public final e.c.c.d.d.a a;
    public final int[] b;

    public b(e.c.c.d.d.a aVar, int[] iArr) {
        if (iArr.length == 0) {
            throw new java.lang.IllegalArgumentException();
        }
        this.a = aVar;
        int length = iArr.length;
        if (length <= 1 || iArr[0] != 0) {
            this.b = iArr;
            return;
        }
        int i = 1;
        while (i < length && iArr[i] == 0) {
            i++;
        }
        if (i == length) {
            this.b = new int[]{0};
            return;
        }
        int i2 = length - i;
        int[] iArr2 = new int[i2];
        this.b = iArr2;
        java.lang.System.arraycopy(iArr, i, iArr2, 0, i2);
    }

    public e.c.c.d.d.b a(e.c.c.d.d.b bVar) {
        if (!this.a.equals(bVar.a)) {
            throw new java.lang.IllegalArgumentException("GenericGFPolys do not have same GenericGF field");
        }
        if (d()) {
            return bVar;
        }
        if (bVar.d()) {
            return this;
        }
        int[] iArr = this.b;
        int[] iArr2 = bVar.b;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        java.lang.System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = e.c.c.d.d.a.a(iArr2[i - length], iArr[i]);
        }
        return new e.c.c.d.d.b(this.a, iArr3);
    }

    public int b(int i) {
        return this.b[(r0.length - 1) - i];
    }

    public int c() {
        return this.b.length - 1;
    }

    public boolean d() {
        return this.b[0] == 0;
    }

    public e.c.c.d.d.b e(int i, int i2) {
        if (i < 0) {
            throw new java.lang.IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.a.f2786c;
        }
        int length = this.b.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.a.b(this.b[i3], i2);
        }
        return new e.c.c.d.d.b(this.a, iArr);
    }

    public java.lang.String toString() {
        char c2;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(c() * 8);
        for (int iC = c(); iC >= 0; iC--) {
            int iB = b(iC);
            if (iB != 0) {
                if (iB < 0) {
                    sb.append(" - ");
                    iB = -iB;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iC == 0 || iB != 1) {
                    e.c.c.d.d.a aVar = this.a;
                    if (aVar == null) {
                        throw null;
                    }
                    if (iB == 0) {
                        throw new java.lang.IllegalArgumentException();
                    }
                    int i = aVar.b[iB];
                    if (i == 0) {
                        c2 = '1';
                    } else if (i == 1) {
                        c2 = 'a';
                    } else {
                        sb.append("a^");
                        sb.append(i);
                    }
                    sb.append(c2);
                }
                if (iC != 0) {
                    if (iC == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iC);
                    }
                }
            }
        }
        return sb.toString();
    }
}
