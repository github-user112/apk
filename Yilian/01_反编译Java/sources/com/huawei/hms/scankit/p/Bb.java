package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Bb extends com.huawei.hms.scankit.p.Fb {
    public final com.huawei.hms.scankit.p.Fb h = new com.huawei.hms.scankit.p.C0221vb();

    public static com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.aiscan.common.x xVar) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        java.lang.String strI = xVar.i();
        if (strI.charAt(0) == '0') {
            return new com.huawei.hms.scankit.aiscan.common.x(strI.substring(1), null, xVar.h(), com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_A);
        }
        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public int a(com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr, java.lang.StringBuilder sb) {
        return this.h.a(c0117ab, iArr, sb);
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public com.huawei.hms.scankit.aiscan.common.BarcodeFormat a() {
        return com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_A;
    }

    @Override // com.huawei.hms.scankit.p.Fb, com.huawei.hms.scankit.p.Ab
    public com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) {
        return a(this.h.a(i, c0117ab, map));
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public com.huawei.hms.scankit.aiscan.common.x a(int i, com.huawei.hms.scankit.p.C0117ab c0117ab, int[] iArr, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) {
        return a(this.h.a(i, c0117ab, iArr, map));
    }

    @Override // com.huawei.hms.scankit.p.Ab, com.huawei.hms.scankit.aiscan.common.t
    public com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) {
        return a(this.h.a(_aVar, map));
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public boolean a(int i, int i2, com.huawei.hms.scankit.p.C0117ab c0117ab) {
        return c0117ab.a(i2, (i2 - i) + i2, false, false);
    }

    @Override // com.huawei.hms.scankit.p.Fb
    public boolean a(int[] iArr, int[] iArr2) {
        double d2 = (iArr[1] - iArr[0]) + (iArr2[1] - iArr2[0]);
        java.lang.Double.isNaN(d2);
        double d3 = iArr2[1] - iArr[0];
        java.lang.Double.isNaN(d3);
        return java.lang.Math.abs(((int) java.lang.Math.round(d3 / (d2 / 6.0d))) + (-113)) <= 5;
    }
}
