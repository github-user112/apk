package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ud, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0218ud {
    public static final int[] a = {4, 6, 6, 8, 8, 8, 8, 8, 8, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 10, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12};

    public static int a(int i, boolean z) {
        return ((i * 16) + (z ? 88 : 112)) * i;
    }

    public static com.huawei.hms.scankit.aiscan.common.h a(int i) throws java.lang.Exception {
        if (i == 4) {
            return com.huawei.hms.scankit.aiscan.common.h.f404d;
        }
        if (i == 6) {
            return com.huawei.hms.scankit.aiscan.common.h.f403c;
        }
        if (i == 8) {
            return com.huawei.hms.scankit.aiscan.common.h.f407g;
        }
        if (i == 10) {
            return com.huawei.hms.scankit.aiscan.common.h.b;
        }
        if (i == 12) {
            return com.huawei.hms.scankit.aiscan.common.h.a;
        }
        try {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("Unsupported word size ");
            sb.append(i);
            throw new java.lang.IllegalArgumentException(sb.toString());
        } catch (java.lang.Exception e2) {
            throw e2;
        }
    }

    public static com.huawei.hms.scankit.p.C0117ab a(com.huawei.hms.scankit.p.C0117ab c0117ab, int i) throws java.lang.Exception {
        com.huawei.hms.scankit.p.C0117ab c0117ab2 = new com.huawei.hms.scankit.p.C0117ab();
        int iD = c0117ab.d();
        int i2 = (1 << i) - 2;
        int i3 = 0;
        while (i3 < iD) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                int i6 = i3 + i5;
                if (i6 >= iD || c0117ab.a(i6)) {
                    i4 |= 1 << ((i - 1) - i5);
                }
            }
            int i7 = i4 & i2;
            if (i7 == i2) {
                c0117ab2.a(i7, i);
                i3--;
            } else if (i7 == 0) {
                i7 = i4 | 1;
                c0117ab2.a(i7, i);
                i3--;
            } else {
                c0117ab2.a(i4, i);
            }
            i3 += i;
        }
        return c0117ab2;
    }

    public static com.huawei.hms.scankit.p.C0117ab a(boolean z, int i, int i2) throws java.lang.Exception {
        int i3;
        com.huawei.hms.scankit.p.C0117ab c0117ab = new com.huawei.hms.scankit.p.C0117ab();
        int i4 = i - 1;
        if (z) {
            c0117ab.a(i4, 2);
            c0117ab.a(i2 - 1, 6);
            i3 = 28;
        } else {
            c0117ab.a(i4, 5);
            c0117ab.a(i2 - 1, 11);
            i3 = 40;
        }
        return b(c0117ab, i3, 4);
    }

    public static com.huawei.hms.scankit.p.C0208sd a(byte[] bArr, int i, int i2) throws java.lang.Exception {
        com.huawei.hms.scankit.p.C0117ab c0117abA;
        int i3;
        boolean z;
        int iAbs;
        int iA;
        int i4;
        com.huawei.hms.scankit.p.C0117ab c0117abA2 = new com.huawei.hms.scankit.p.C0223vd(bArr).a();
        int iD = ((c0117abA2.d() * i) / 100) + 11;
        int iD2 = c0117abA2.d() + iD;
        int i5 = 0;
        int i6 = 1;
        if (i2 == 0) {
            com.huawei.hms.scankit.p.C0117ab c0117abA3 = null;
            int i7 = 0;
            int i8 = 0;
            while (i7 <= 32) {
                boolean z2 = i7 <= 3;
                int i9 = z2 ? i7 + 1 : i7;
                int iA2 = a(i9, z2);
                if (iD2 <= iA2) {
                    if (c0117abA3 == null || i8 != a[i9]) {
                        int i10 = a[i9];
                        i8 = i10;
                        c0117abA3 = a(c0117abA2, i10);
                    }
                    int i11 = iA2 - (iA2 % i8);
                    if ((!z2 || c0117abA3.d() <= i8 * 64) && c0117abA3.d() + iD <= i11) {
                        c0117abA = c0117abA3;
                        i3 = i8;
                        z = z2;
                        iAbs = i9;
                        iA = iA2;
                    }
                }
                i7++;
                i5 = 0;
                i6 = 1;
            }
            try {
                throw new java.lang.IllegalArgumentException("Data too large for an Aztec code");
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        z = i2 < 0;
        iAbs = java.lang.Math.abs(i2);
        if (iAbs > (z ? 4 : 32)) {
            try {
                throw new java.lang.IllegalArgumentException(java.lang.String.format(java.util.Locale.ENGLISH, "Illegal value %s for layers", java.lang.Integer.valueOf(i2)));
            } catch (java.lang.Exception e3) {
                throw e3;
            }
        }
        iA = a(iAbs, z);
        i3 = a[iAbs];
        int i12 = iA - (iA % i3);
        c0117abA = a(c0117abA2, i3);
        if (c0117abA.d() + iD > i12) {
            try {
                throw new java.lang.IllegalArgumentException("Data to large for user specified layer");
            } catch (java.lang.Exception e4) {
                throw e4;
            }
        }
        if (z && c0117abA.d() > i3 * 64) {
            try {
                throw new java.lang.IllegalArgumentException("Data to large for user specified layer");
            } catch (java.lang.Exception e5) {
                throw e5;
            }
        }
        com.huawei.hms.scankit.p.C0117ab c0117abB = b(c0117abA, iA, i3);
        int iD3 = c0117abA.d() / i3;
        com.huawei.hms.scankit.p.C0117ab c0117abA4 = a(z, iAbs, iD3);
        int i13 = (iAbs * 4) + (z ? 11 : 14);
        int[] iArr = new int[i13];
        int i14 = 2;
        if (z) {
            for (int i15 = 0; i15 < i13; i15++) {
                iArr[i15] = i15;
            }
            i4 = i13;
        } else {
            int i16 = i13 / 2;
            i4 = (((i16 - 1) / 15) * 2) + i13 + 1;
            int i17 = i4 / 2;
            for (int i18 = 0; i18 < i16; i18++) {
                iArr[(i16 - i18) - 1] = (i17 - r15) - 1;
                iArr[i16 + i18] = (i18 / 15) + i18 + i17 + i6;
            }
        }
        com.huawei.hms.scankit.p.C0122bb c0122bb = new com.huawei.hms.scankit.p.C0122bb(i4);
        int i19 = 0;
        int i20 = 0;
        while (i19 < iAbs) {
            int i21 = ((iAbs - i19) * 4) + (z ? 9 : 12);
            int i22 = 0;
            while (i22 < i21) {
                int i23 = i22 * 2;
                while (i5 < i14) {
                    if (c0117abB.a(i20 + i23 + i5)) {
                        int i24 = i19 * 2;
                        c0122bb.c(iArr[i24 + i5], iArr[i24 + i22]);
                    }
                    if (c0117abB.a((i21 * 2) + i20 + i23 + i5)) {
                        int i25 = i19 * 2;
                        c0122bb.c(iArr[i25 + i22], iArr[((i13 - 1) - i25) - i5]);
                    }
                    if (c0117abB.a((i21 * 4) + i20 + i23 + i5)) {
                        int i26 = (i13 - 1) - (i19 * 2);
                        c0122bb.c(iArr[i26 - i5], iArr[i26 - i22]);
                    }
                    if (c0117abB.a((i21 * 6) + i20 + i23 + i5)) {
                        int i27 = i19 * 2;
                        c0122bb.c(iArr[((i13 - 1) - i27) - i22], iArr[i27 + i5]);
                    }
                    i5++;
                    i14 = 2;
                }
                i22++;
                i5 = 0;
                i14 = 2;
            }
            i20 += i21 * 8;
            i19++;
            i5 = 0;
            i14 = 2;
        }
        a(c0122bb, z, i4, c0117abA4);
        int i28 = i4 / 2;
        if (z) {
            a(c0122bb, i28, 5);
        } else {
            a(c0122bb, i28, 7);
            int i29 = 0;
            int i30 = 0;
            while (i29 < (i13 / 2) - 1) {
                for (int i31 = i28 & 1; i31 < i4; i31 += 2) {
                    int i32 = i28 - i30;
                    c0122bb.c(i32, i31);
                    int i33 = i28 + i30;
                    c0122bb.c(i33, i31);
                    c0122bb.c(i31, i32);
                    c0122bb.c(i31, i33);
                }
                i29 += 15;
                i30 += 16;
            }
        }
        com.huawei.hms.scankit.p.C0208sd c0208sd = new com.huawei.hms.scankit.p.C0208sd();
        c0208sd.a(z);
        c0208sd.c(i4);
        c0208sd.b(iAbs);
        c0208sd.a(iD3);
        c0208sd.a(c0122bb);
        return c0208sd;
    }

    public static void a(com.huawei.hms.scankit.p.C0122bb c0122bb, int i, int i2) {
        for (int i3 = 0; i3 < i2; i3 += 2) {
            int i4 = i - i3;
            int i5 = i4;
            while (true) {
                int i6 = i + i3;
                if (i5 <= i6) {
                    c0122bb.c(i5, i4);
                    c0122bb.c(i5, i6);
                    c0122bb.c(i4, i5);
                    c0122bb.c(i6, i5);
                    i5++;
                }
            }
        }
        int i7 = i - i2;
        c0122bb.c(i7, i7);
        int i8 = i7 + 1;
        c0122bb.c(i8, i7);
        c0122bb.c(i7, i8);
        int i9 = i + i2;
        c0122bb.c(i9, i7);
        c0122bb.c(i9, i8);
        c0122bb.c(i9, i9 - 1);
    }

    public static void a(com.huawei.hms.scankit.p.C0122bb c0122bb, boolean z, int i, com.huawei.hms.scankit.p.C0117ab c0117ab) {
        int i2 = i / 2;
        int i3 = 0;
        if (z) {
            while (i3 < 7) {
                int i4 = (i2 - 3) + i3;
                if (c0117ab.a(i3)) {
                    c0122bb.c(i4, i2 - 5);
                }
                if (c0117ab.a(i3 + 7)) {
                    c0122bb.c(i2 + 5, i4);
                }
                if (c0117ab.a(20 - i3)) {
                    c0122bb.c(i4, i2 + 5);
                }
                if (c0117ab.a(27 - i3)) {
                    c0122bb.c(i2 - 5, i4);
                }
                i3++;
            }
            return;
        }
        while (i3 < 10) {
            int i5 = (i3 / 5) + (i2 - 5) + i3;
            if (c0117ab.a(i3)) {
                c0122bb.c(i5, i2 - 7);
            }
            if (c0117ab.a(i3 + 10)) {
                c0122bb.c(i2 + 7, i5);
            }
            if (c0117ab.a(29 - i3)) {
                c0122bb.c(i5, i2 + 7);
            }
            if (c0117ab.a(39 - i3)) {
                c0122bb.c(i2 - 7, i5);
            }
            i3++;
        }
    }

    public static int[] a(com.huawei.hms.scankit.p.C0117ab c0117ab, int i, int i2) {
        int[] iArr = new int[i2];
        int iD = c0117ab.d() / i;
        for (int i3 = 0; i3 < iD; i3++) {
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i4 |= c0117ab.a((i3 * i) + i5) ? 1 << ((i - i5) - 1) : 0;
            }
            iArr[i3] = i4;
        }
        return iArr;
    }

    public static com.huawei.hms.scankit.p.C0117ab b(com.huawei.hms.scankit.p.C0117ab c0117ab, int i, int i2) throws java.lang.Exception {
        int iD = c0117ab.d() / i2;
        com.huawei.hms.scankit.aiscan.common.v vVar = new com.huawei.hms.scankit.aiscan.common.v(a(i2));
        int i3 = i / i2;
        int[] iArrA = a(c0117ab, i2, i3);
        vVar.a(iArrA, i3 - iD);
        com.huawei.hms.scankit.p.C0117ab c0117ab2 = new com.huawei.hms.scankit.p.C0117ab();
        c0117ab2.a(0, i % i2);
        for (int i4 : iArrA) {
            c0117ab2.a(i4, i2);
        }
        return c0117ab2;
    }
}
