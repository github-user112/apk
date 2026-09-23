package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Cb {
    public final int[] a = new int[4];
    public final java.lang.StringBuilder b = new java.lang.StringBuilder();

    private int a(com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr, java.lang.StringBuilder sb) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int[] iArr2 = this.a;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iD = c0117ab.d();
        int iC = iArr[1];
        int i = 0;
        for (int i2 = 0; i2 < 2 && iC < iD; i2++) {
            int iA = com.huawei.hms.scankit.p.Fb.a(c0117ab, iArr2, iC, com.huawei.hms.scankit.p.Fb.f524e);
            sb.append((char) ((iA % 10) + 48));
            for (int i3 : iArr2) {
                iC += i3;
            }
            if (iA >= 10) {
                i |= 1 << (1 - i2);
            }
            if (i2 != 1) {
                iC = c0117ab.c(c0117ab.b(iC));
            }
        }
        if (sb.length() != 2) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        try {
            if (java.lang.Integer.parseInt(sb.toString()) % 4 == i) {
                return iC;
            }
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        } catch (java.lang.NumberFormatException unused) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }

    public com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        java.lang.StringBuilder sb = this.b;
        sb.setLength(0);
        float f2 = i;
        return new com.huawei.hms.scankit.aiscan.common.x(sb.toString(), null, new com.huawei.hms.scankit.aiscan.common.z[]{new com.huawei.hms.scankit.aiscan.common.z((iArr[0] + iArr[1]) / 2.0f, f2), new com.huawei.hms.scankit.aiscan.common.z(a(c0117ab, iArr, sb), f2)}, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_EAN_EXTENSION);
    }
}
