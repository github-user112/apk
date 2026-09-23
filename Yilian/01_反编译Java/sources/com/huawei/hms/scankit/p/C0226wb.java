package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.wb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0226wb extends com.huawei.hms.scankit.p.Fb {
    public final int[] h = new int[4];

    private int b(com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr, int i, int[][] iArr2) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.p.Ab.a(c0117ab, i, iArr);
        int length = iArr2.length;
        float f2 = 0.43f;
        int i2 = -1;
        for (int i3 = 0; i3 < length; i3++) {
            float fA = com.huawei.hms.scankit.p.Ab.a(iArr, iArr2[i3], 0.7f);
            if (fA < f2) {
                i2 = i3;
                f2 = fA;
            }
        }
        if (i2 >= 0) {
            return i2;
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public int a(com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr, java.lang.StringBuilder sb) {
        int[] iArr2 = this.h;
        iArr2[0] = 0;
        iArr2[1] = 0;
        iArr2[2] = 0;
        iArr2[3] = 0;
        int iD = c0117ab.d();
        int i = iArr[1];
        for (int i2 = 0; i2 < 4 && i < iD; i2++) {
            sb.append((char) (b(c0117ab, iArr2, i, com.huawei.hms.scankit.p.Fb.f523d) + 48));
            for (int i3 : iArr2) {
                i += i3;
            }
        }
        int i4 = com.huawei.hms.scankit.p.Fb.a(c0117ab, i, true, com.huawei.hms.scankit.p.Fb.b)[1];
        for (int i5 = 0; i5 < 4 && i4 < iD; i5++) {
            sb.append((char) (b(c0117ab, iArr2, i4, com.huawei.hms.scankit.p.Fb.f523d) + 48));
            for (int i6 : iArr2) {
                i4 += i6;
            }
        }
        return i4;
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public com.huawei.hms.scankit.aiscan.common.BarcodeFormat a() {
        return com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_8;
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public boolean a(int i, int i2, com.huawei.hms.scankit.p.C0117ab c0117ab) {
        double d2 = i2 - i;
        java.lang.Double.isNaN(d2);
        return c0117ab.a(i2, ((int) (d2 * 1.5d)) + i2, false, true);
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public boolean a(int[] iArr, int[] iArr2) {
        double d2 = iArr[1] - iArr[0];
        java.lang.Double.isNaN(d2);
        double d3 = d2 / 3.0d;
        double d4 = iArr2[1] - iArr2[0];
        java.lang.Double.isNaN(d4);
        double d5 = d4 / 3.0d;
        double d6 = (iArr[1] - iArr[0]) + (iArr2[1] - iArr2[0]);
        java.lang.Double.isNaN(d6);
        double d7 = iArr2[1] - iArr[0];
        java.lang.Double.isNaN(d7);
        return ((double) java.lang.Math.abs(((int) java.lang.Math.round(d7 / (d6 / 6.0d))) + (-67))) <= 6.7d && java.lang.Math.abs(1.0d - (d3 / d5)) < 0.2d;
    }
}
