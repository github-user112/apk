package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Tb {
    public final com.huawei.hms.scankit.p.Sb a;
    public final int[] b;

    public Tb(com.huawei.hms.scankit.p.Sb sb, int[] iArr) {
        if (iArr.length == 0) {
            throw new java.lang.IllegalArgumentException();
        }
        this.a = sb;
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
        int[] iArr2 = new int[length - i];
        this.b = iArr2;
        java.lang.System.arraycopy(iArr, i, iArr2, 0, iArr2.length);
    }

    public int a() {
        return this.b.length - 1;
    }

    public int a(int i) {
        if (i == 0) {
            return b(0);
        }
        if (i == 1) {
            int iA = 0;
            for (int i2 : this.b) {
                iA = this.a.a(iA, i2);
            }
            return iA;
        }
        int[] iArr = this.b;
        int iA2 = iArr[0];
        int length = iArr.length;
        for (int i3 = 1; i3 < length; i3++) {
            com.huawei.hms.scankit.p.Sb sb = this.a;
            iA2 = sb.a(sb.c(i, iA2), this.b[i3]);
        }
        return iA2;
    }

    public com.huawei.hms.scankit.p.Tb a(int i, int i2) {
        if (i < 0) {
            throw new java.lang.IllegalArgumentException();
        }
        if (i2 == 0) {
            return this.a.c();
        }
        int length = this.b.length;
        int[] iArr = new int[i + length];
        for (int i3 = 0; i3 < length; i3++) {
            iArr[i3] = this.a.c(this.b[i3], i2);
        }
        return new com.huawei.hms.scankit.p.Tb(this.a, iArr);
    }

    public com.huawei.hms.scankit.p.Tb a(com.huawei.hms.scankit.p.Tb tb) {
        if (!this.a.equals(tb.a)) {
            throw new java.lang.IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (b()) {
            return tb;
        }
        if (tb.b()) {
            return this;
        }
        int[] iArr = this.b;
        int[] iArr2 = tb.b;
        if (iArr.length <= iArr2.length) {
            iArr = iArr2;
            iArr2 = iArr;
        }
        int[] iArr3 = new int[iArr.length];
        int length = iArr.length - iArr2.length;
        java.lang.System.arraycopy(iArr, 0, iArr3, 0, length);
        for (int i = length; i < iArr.length; i++) {
            iArr3[i] = this.a.a(iArr2[i - length], iArr[i]);
        }
        return new com.huawei.hms.scankit.p.Tb(this.a, iArr3);
    }

    public int b(int i) {
        return this.b[(r0.length - 1) - i];
    }

    public com.huawei.hms.scankit.p.Tb b(com.huawei.hms.scankit.p.Tb tb) {
        if (!this.a.equals(tb.a)) {
            throw new java.lang.IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
        }
        if (b() || tb.b()) {
            return this.a.c();
        }
        int[] iArr = this.b;
        int length = iArr.length;
        int[] iArr2 = tb.b;
        int length2 = iArr2.length;
        int[] iArr3 = new int[(length + length2) - 1];
        for (int i = 0; i < length; i++) {
            int i2 = iArr[i];
            for (int i3 = 0; i3 < length2; i3++) {
                int i4 = i + i3;
                com.huawei.hms.scankit.p.Sb sb = this.a;
                iArr3[i4] = sb.a(iArr3[i4], sb.c(i2, iArr2[i3]));
            }
        }
        return new com.huawei.hms.scankit.p.Tb(this.a, iArr3);
    }

    public boolean b() {
        return this.b[0] == 0;
    }

    public com.huawei.hms.scankit.p.Tb c() {
        int length = this.b.length;
        int[] iArr = new int[length];
        for (int i = 0; i < length; i++) {
            iArr[i] = this.a.d(0, this.b[i]);
        }
        return new com.huawei.hms.scankit.p.Tb(this.a, iArr);
    }

    public com.huawei.hms.scankit.p.Tb c(int i) {
        if (i == 0) {
            return this.a.c();
        }
        if (i == 1) {
            return this;
        }
        int length = this.b.length;
        int[] iArr = new int[length];
        for (int i2 = 0; i2 < length; i2++) {
            iArr[i2] = this.a.c(this.b[i2], i);
        }
        return new com.huawei.hms.scankit.p.Tb(this.a, iArr);
    }

    public com.huawei.hms.scankit.p.Tb c(com.huawei.hms.scankit.p.Tb tb) {
        if (this.a.equals(tb.a)) {
            return tb.b() ? this : a(tb.c());
        }
        throw new java.lang.IllegalArgumentException("ModulusPolys do not have same ModulusGF field");
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(a() * 8);
        for (int iA = a(); iA >= 0; iA--) {
            int iB = b(iA);
            if (iB != 0) {
                if (iB < 0) {
                    sb.append(" - ");
                    iB = -iB;
                } else if (sb.length() > 0) {
                    sb.append(" + ");
                }
                if (iA == 0 || iB != 1) {
                    sb.append(iB);
                }
                if (iA != 0) {
                    if (iA == 1) {
                        sb.append('x');
                    } else {
                        sb.append("x^");
                        sb.append(iA);
                    }
                }
            }
        }
        return sb.toString();
    }
}
