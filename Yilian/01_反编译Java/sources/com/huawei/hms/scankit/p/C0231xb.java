package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.xb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0231xb extends com.huawei.hms.scankit.p.Ab {
    public static final int[] a = {6, 8, 10, 12, 14};
    public static final int[] b = {1, 1, 1, 1};

    /* renamed from: c, reason: collision with root package name */
    public static final int[][] f861c = {new int[]{1, 1, 2}, new int[]{1, 1, 3}};

    /* renamed from: d, reason: collision with root package name */
    public static final int[][] f862d = {new int[]{1, 1, 2, 2, 1}, new int[]{2, 1, 1, 1, 2}, new int[]{1, 2, 1, 1, 2}, new int[]{2, 2, 1, 1, 1}, new int[]{1, 1, 2, 1, 2}, new int[]{2, 1, 2, 1, 1}, new int[]{1, 2, 2, 1, 1}, new int[]{1, 1, 1, 2, 2}, new int[]{2, 1, 1, 2, 1}, new int[]{1, 2, 1, 2, 1}, new int[]{1, 1, 3, 3, 1}, new int[]{3, 1, 1, 1, 3}, new int[]{1, 3, 1, 1, 3}, new int[]{3, 3, 1, 1, 1}, new int[]{1, 1, 3, 1, 3}, new int[]{3, 1, 3, 1, 1}, new int[]{1, 3, 3, 1, 1}, new int[]{1, 1, 1, 3, 3}, new int[]{3, 1, 1, 3, 1}, new int[]{1, 3, 1, 3, 1}};

    /* renamed from: e, reason: collision with root package name */
    public int f863e = -1;

    /* renamed from: f, reason: collision with root package name */
    public int f864f = -1;

    public static void a(com.huawei.hms.scankit.p.C0117ab c0117ab, int i, int i2, java.lang.StringBuilder sb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int[] iArr = new int[10];
        int[] iArr2 = new int[5];
        int[] iArr3 = new int[5];
        while (i < i2) {
            com.huawei.hms.scankit.p.Ab.a(c0117ab, i, iArr);
            int i3 = -1;
            int i4 = 10000;
            for (int i5 = 0; i5 < 10; i5++) {
                if (i3 <= iArr[i5]) {
                    i3 = iArr[i5];
                }
                if (i4 >= iArr[i5]) {
                    i4 = iArr[i5];
                }
            }
            if (i3 / i4 > 8) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            for (int i6 = 0; i6 < 5; i6++) {
                int i7 = i6 * 2;
                iArr2[i6] = iArr[i7];
                iArr3[i6] = iArr[i7 + 1];
            }
            sb.append((char) (b(iArr2) + 48));
            sb.append((char) (b(iArr3) + 48));
            for (int i8 = 0; i8 < 10; i8++) {
                i += iArr[i8];
            }
        }
        if (i != i2) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }

    private boolean a(com.huawei.hms.scankit.p.C0117ab c0117ab, int i) {
        int i2 = this.f863e * 10;
        double d2 = this.f864f;
        java.lang.Double.isNaN(d2);
        int i3 = (int) (d2 * 1.5d);
        if (i2 < i3) {
            i2 = i3;
        }
        for (int i4 = i - 1; i2 > 0 && i4 >= 0 && !c0117ab.a(i4); i4--) {
            i2--;
        }
        return i2 == 0;
    }

    private int[] a(com.huawei.hms.scankit.p.C0117ab c0117ab) {
        try {
            c0117ab.g();
            int iC = c(c0117ab);
            while (true) {
                int[] iArrB = b(c0117ab, iC, f861c[0]);
                if (a(c0117ab, iArrB[0])) {
                    int i = iArrB[0];
                    iArrB[0] = c0117ab.d() - iArrB[1];
                    iArrB[1] = c0117ab.d() - i;
                    return iArrB;
                }
                iC = iArrB[2];
            }
        } finally {
            c0117ab.g();
        }
    }

    public static int b(int[] iArr) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int length = f862d.length;
        float f2 = 0.3f;
        int i = -1;
        for (int i2 = 0; i2 < length; i2++) {
            float fA = com.huawei.hms.scankit.p.Ab.a(iArr, f862d[i2], 0.75f);
            if (fA < f2) {
                i = i2;
                f2 = fA;
            } else if (java.lang.Math.abs(fA - f2) < 1.0E-7d) {
                i = -1;
            }
        }
        if (i >= 0) {
            return i % 10;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    private int[] b(com.huawei.hms.scankit.p.C0117ab c0117ab) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iC = c(c0117ab);
        while (true) {
            int[] iArrC = c(c0117ab, iC, b);
            this.f863e = (iArrC[1] - iArrC[0]) / 4;
            if (a(c0117ab, iArrC[0])) {
                return iArrC;
            }
            iC = iArrC[2];
        }
    }

    private int[] b(com.huawei.hms.scankit.p.C0117ab c0117ab, int i, int[] iArr) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int iD = c0117ab.d();
        int i2 = i;
        int i3 = i2;
        boolean z = false;
        int i4 = 0;
        while (i2 < iD) {
            if (c0117ab.a(i2) == z) {
                if (i4 != length - 1) {
                    i4++;
                } else {
                    if (java.lang.Math.min(iArr2[0], iArr2[1]) == 0 || java.lang.Math.max(iArr2[0], iArr2[1]) == 0) {
                        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                    }
                    float f2 = (iArr2[2] * 2.0f) / (iArr2[0] + iArr2[1]);
                    if (java.lang.Math.max(iArr2[0], iArr2[1]) / java.lang.Math.min(iArr2[0], iArr2[1]) <= 3.0f && ((double) f2) > 1.5d && f2 < 4.0f) {
                        return new int[]{i3, i2, i3 + iArr2[0] + iArr2[1]};
                    }
                    i3 += iArr2[0] + iArr2[1];
                    int i5 = i4 - 1;
                    java.lang.System.arraycopy(iArr2, 2, iArr2, 0, i5);
                    iArr2[i5] = 0;
                    iArr2[i4] = 0;
                    i4--;
                }
                iArr2[i4] = 1;
                z = !z;
            } else {
                if (i4 < 0 || i4 >= length) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                iArr2[i4] = iArr2[i4] + 1;
            }
            i2++;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public static int c(com.huawei.hms.scankit.p.C0117ab c0117ab) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iD = c0117ab.d();
        int iB = c0117ab.b(0);
        if (iB != iD) {
            return iB;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    private int[] c(com.huawei.hms.scankit.p.C0117ab c0117ab, int i, int[] iArr) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int length = iArr.length;
        int[] iArr2 = new int[length];
        int iD = c0117ab.d();
        char c2 = 0;
        int i2 = i;
        int i3 = i2;
        boolean z = false;
        int i4 = 0;
        while (i2 < iD) {
            if (c0117ab.a(i2) == z) {
                if (i4 == length - 1) {
                    int[] iArr3 = (int[]) iArr2.clone();
                    java.util.Arrays.sort(iArr3);
                    double d2 = iArr3[c2] + iArr3[1];
                    java.lang.Double.isNaN(d2);
                    double d3 = iArr3[2] + iArr3[3];
                    java.lang.Double.isNaN(d3);
                    if ((d3 * 0.5d) / (d2 * 0.5d) < 4.0d) {
                        double d4 = iArr3[3];
                        java.lang.Double.isNaN(d4);
                        double d5 = iArr3[0];
                        java.lang.Double.isNaN(d5);
                        if ((d4 * 1.0d) / d5 <= 3.0d) {
                            int[] iArr4 = new int[10];
                            com.huawei.hms.scankit.p.Ab.a(c0117ab, i2, iArr4);
                            this.f864f = -1;
                            for (int i5 = 0; i5 < 10; i5++) {
                                if (iArr4[i5] > this.f864f) {
                                    this.f864f = iArr4[i5];
                                }
                            }
                            return new int[]{i3, i2, i3 + iArr2[0] + iArr2[1]};
                        }
                    }
                    c2 = 0;
                    i3 += iArr2[0] + iArr2[1];
                    int i6 = i4 - 1;
                    java.lang.System.arraycopy(iArr2, 2, iArr2, 0, i6);
                    iArr2[i6] = 0;
                    iArr2[i4] = 0;
                    i4--;
                } else {
                    i4++;
                }
                iArr2[i4] = 1;
                z = !z;
            } else {
                if (i4 < 0 || i4 >= length) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
                iArr2[i4] = iArr2[i4] + 1;
            }
            i2++;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    @Override // com.huawei.hms.scankit.p.Ab
    public com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        boolean z;
        int[] iArrB = b(c0117ab);
        int[] iArrA = a(c0117ab);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(20);
        a(c0117ab, iArrB[1], iArrA[0], sb);
        java.lang.String string = sb.toString();
        int[] iArr = a;
        int length = string.length();
        int length2 = iArr.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= length2) {
                z = false;
                break;
            }
            int i4 = iArr[i2];
            if (length == i4) {
                z = true;
                break;
            }
            if (i4 > i3) {
                i3 = i4;
            }
            i2++;
        }
        if (!z && length > i3) {
            z = true;
        }
        if (!z) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        float f2 = i;
        return new com.huawei.hms.scankit.aiscan.common.x(string, null, new com.huawei.hms.scankit.aiscan.common.z[]{new com.huawei.hms.scankit.aiscan.common.z(iArrB[0], f2), new com.huawei.hms.scankit.aiscan.common.z(iArrA[1], f2)}, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.ITF);
    }
}
