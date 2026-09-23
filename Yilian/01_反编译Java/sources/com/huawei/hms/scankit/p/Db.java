package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Db {
    public static final int[] a = {24, 20, 18, 17, 12, 6, 3, 10, 9, 5};
    public final int[] b = new int[4];

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.StringBuilder f509c = new java.lang.StringBuilder();

    public static int a(int i) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        for (int i2 = 0; i2 < 10; i2++) {
            if (i == a[i2]) {
                return i2;
            }
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    private int a(com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr, java.lang.StringBuilder sb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int[] iArr2 = this.b;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iD = c0117ab.d();
        int iC = iArr[1];
        int i = 0;
        for (int i2 = 0; i2 < 5 && iC < iD; i2++) {
            int iA = com.huawei.hms.scankit.p.Fb.a(c0117ab, iArr2, iC, com.huawei.hms.scankit.p.Fb.f524e);
            sb.append((char) ((iA % 10) + 48));
            for (int i3 : iArr2) {
                iC += i3;
            }
            if (iA >= 10) {
                i |= 1 << (4 - i2);
            }
            if (i2 != 4) {
                iC = c0117ab.c(c0117ab.b(iC));
            }
        }
        if (sb.length() != 5) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        if (a(sb.toString()) == a(i)) {
            return iC;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    public static int a(java.lang.CharSequence charSequence) {
        int length = charSequence.length();
        int iCharAt = 0;
        for (int i = length - 2; i >= 0; i -= 2) {
            iCharAt += charSequence.charAt(i) - '0';
        }
        int iCharAt2 = iCharAt * 3;
        for (int i2 = length - 1; i2 >= 0; i2 -= 2) {
            iCharAt2 += charSequence.charAt(i2) - '0';
        }
        return (iCharAt2 * 3) % 10;
    }

    public com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        java.lang.StringBuilder sb = this.f509c;
        sb.setLength(0);
        float f2 = i;
        return new com.huawei.hms.scankit.aiscan.common.x(sb.toString(), null, new com.huawei.hms.scankit.aiscan.common.z[]{new com.huawei.hms.scankit.aiscan.common.z((iArr[0] + iArr[1]) / 2.0f, f2), new com.huawei.hms.scankit.aiscan.common.z(a(c0117ab, iArr, sb), f2)}, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_EAN_EXTENSION);
    }
}
