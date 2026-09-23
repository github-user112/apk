package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class _a {
    public final com.huawei.hms.scankit.p.Za a;
    public com.huawei.hms.scankit.p.C0122bb b;

    public _a(com.huawei.hms.scankit.p.Za za) throws java.lang.Exception {
        if (za != null) {
            this.a = za;
        } else {
            try {
                throw new java.lang.IllegalArgumentException("Binarizer must be non-null.");
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
    }

    private com.huawei.hms.scankit.p.C0117ab a(int i, int i2, int[] iArr, int[] iArr2, byte[] bArr, int i3) {
        int i4;
        com.huawei.hms.scankit.p.C0117ab c0117ab = new com.huawei.hms.scankit.p.C0117ab(i2);
        for (int i5 = 1; i5 < i2; i5++) {
            iArr2[i5] = ((bArr[i5] & 255) * (bArr[i5] & 255)) + iArr2[i5 - 1];
        }
        int i6 = i3 + 1;
        int i7 = i6;
        while (true) {
            i4 = i2 - i3;
            if (i7 >= i4) {
                break;
            }
            int i8 = i7 + i3;
            int i9 = (i7 - i3) - 1;
            double d2 = iArr[i8] - iArr[i9];
            double d3 = iArr2[i8] - iArr2[i9];
            java.lang.Double.isNaN(d2);
            java.lang.Double.isNaN(d2);
            double d4 = i;
            java.lang.Double.isNaN(d4);
            java.lang.Double.isNaN(d3);
            double d5 = i - 1;
            java.lang.Double.isNaN(d5);
            double dSqrt = java.lang.Math.sqrt((d3 - ((d2 * d2) / d4)) / d5);
            java.lang.Double.isNaN(d2);
            java.lang.Double.isNaN(d4);
            double d6 = d2 / d4;
            double d7 = 0.5f;
            double d8 = 127;
            java.lang.Double.isNaN(d8);
            java.lang.Double.isNaN(d7);
            if ((bArr[i7] & 255) <= (((dSqrt / d8) * d7) + 1.0d) * d6) {
                c0117ab.d(i7);
            }
            i7++;
        }
        if (c0117ab.a(i6)) {
            c0117ab.c(0, i6);
        }
        if (c0117ab.a(i4 - 1)) {
            c0117ab.c(i4, i2);
        }
        return c0117ab;
    }

    public com.huawei.hms.scankit.p.Za a() {
        return this.a;
    }

    public com.huawei.hms.scankit.p._a a(int i, int i2, int i3, int i4) {
        return new com.huawei.hms.scankit.p._a(this.a.a(this.a.c().a(i, i2, i3, i4)));
    }

    public com.huawei.hms.scankit.p.C0117ab a(int i, int i2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int i3;
        int iE = e();
        if (iE < 45) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        com.huawei.hms.scankit.p.C0117ab c0117ab = new com.huawei.hms.scankit.p.C0117ab(iE);
        byte[] bArr = new byte[iE];
        a().c().a(i, bArr);
        int[] iArr = new int[iE];
        int[] iArr2 = new int[iE];
        iArr[0] = bArr[0] & 255;
        iArr2[0] = iArr[0] * iArr[0];
        for (int i4 = 1; i4 < iE; i4++) {
            iArr[i4] = iArr[i4 - 1] + (bArr[i4] & 255);
        }
        if (i2 != 0) {
            return a(45, iE, iArr, iArr2, bArr, 22);
        }
        int i5 = 23;
        while (true) {
            i3 = iE - 22;
            if (i5 >= i3) {
                break;
            }
            if ((bArr[i5] & 255) + 5 < (iArr[i5 + 22] - iArr[(i5 - 22) - 1]) / 45) {
                c0117ab.d(i5);
            }
            i5++;
        }
        if (c0117ab.a(23)) {
            c0117ab.c(0, 23);
        }
        if (c0117ab.a(i3 - 1)) {
            c0117ab.c(i3, iE);
        }
        return c0117ab;
    }

    public com.huawei.hms.scankit.p.C0117ab a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab) {
        return this.a.a(i, c0117ab);
    }

    public void a(com.huawei.hms.scankit.p.C0122bb c0122bb) {
        this.b = c0122bb;
    }

    public com.huawei.hms.scankit.p.C0122bb b() {
        if (this.b == null) {
            this.b = this.a.a();
        }
        return this.b;
    }

    public int c() {
        return this.a.b();
    }

    public byte[] d() {
        return this.a.c().b();
    }

    public int e() {
        return this.a.d();
    }
}
