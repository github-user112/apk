package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Sd extends com.huawei.hms.scankit.p.Xd {
    @Override // com.huawei.hms.scankit.p.Vd, com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) {
        if (barcodeFormat == com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_13) {
            return super.a(str, barcodeFormat, i, i2, map);
        }
        throw new java.lang.IllegalArgumentException("Can only encode EAN_13, but got " + barcodeFormat);
    }

    @Override // com.huawei.hms.scankit.p.Vd
    public boolean[] a(java.lang.String str) {
        int length = str.length();
        if (length == 12) {
            try {
                str = e.a.c.a.a.K(str, com.huawei.hms.scankit.p.Fb.b(str));
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a e2) {
                throw new java.lang.IllegalArgumentException(e2);
            }
        } else {
            if (length != 13) {
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Requested contents should be 12 or 13 digits long, but got ", length));
            }
            try {
                if (!com.huawei.hms.scankit.p.Fb.a((java.lang.CharSequence) str)) {
                    throw new java.lang.IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                throw new java.lang.IllegalArgumentException("Illegal contents");
            }
        }
        int i = com.huawei.hms.scankit.p.C0221vb.h[java.lang.Character.digit(str.charAt(0), 10)];
        boolean[] zArr = new boolean[95];
        int iA = com.huawei.hms.scankit.p.Vd.a(zArr, 0, com.huawei.hms.scankit.p.Fb.a, true) + 0;
        for (int i2 = 1; i2 <= 6; i2++) {
            int iDigit = java.lang.Character.digit(str.charAt(i2), 10);
            if (((i >> (6 - i2)) & 1) == 1) {
                iDigit += 10;
            }
            iA += com.huawei.hms.scankit.p.Vd.a(zArr, iA, com.huawei.hms.scankit.p.Fb.f524e[iDigit], false);
        }
        int iA2 = com.huawei.hms.scankit.p.Vd.a(zArr, iA, com.huawei.hms.scankit.p.Fb.b, false) + iA;
        for (int i3 = 7; i3 <= 12; i3++) {
            iA2 += com.huawei.hms.scankit.p.Vd.a(zArr, iA2, com.huawei.hms.scankit.p.Fb.f523d[java.lang.Character.digit(str.charAt(i3), 10)], true);
        }
        com.huawei.hms.scankit.p.Vd.a(zArr, iA2, com.huawei.hms.scankit.p.Fb.a, true);
        return zArr;
    }
}
