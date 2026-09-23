package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Td extends com.huawei.hms.scankit.p.Xd {
    @Override // com.huawei.hms.scankit.p.Vd, com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) {
        if (barcodeFormat == com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_8) {
            return super.a(str, barcodeFormat, i, i2, map);
        }
        throw new java.lang.IllegalArgumentException("Can only encode EAN_8, but got " + barcodeFormat);
    }

    @Override // com.huawei.hms.scankit.p.Vd
    public boolean[] a(java.lang.String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = e.a.c.a.a.K(str, com.huawei.hms.scankit.p.Fb.b(str));
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a e2) {
                throw new java.lang.IllegalArgumentException(e2);
            }
        } else {
            if (length != 8) {
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Requested contents should be 8 digits long, but got ", length));
            }
            try {
                if (!com.huawei.hms.scankit.p.Fb.a((java.lang.CharSequence) str)) {
                    throw new java.lang.IllegalArgumentException("Contents do not pass checksum");
                }
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused) {
                throw new java.lang.IllegalArgumentException("Illegal contents");
            }
        }
        boolean[] zArr = new boolean[67];
        int iA = com.huawei.hms.scankit.p.Vd.a(zArr, 0, com.huawei.hms.scankit.p.Fb.a, true) + 0;
        for (int i = 0; i <= 3; i++) {
            iA += com.huawei.hms.scankit.p.Vd.a(zArr, iA, com.huawei.hms.scankit.p.Fb.f523d[java.lang.Character.digit(str.charAt(i), 10)], false);
        }
        int iA2 = com.huawei.hms.scankit.p.Vd.a(zArr, iA, com.huawei.hms.scankit.p.Fb.b, false) + iA;
        for (int i2 = 4; i2 <= 7; i2++) {
            iA2 += com.huawei.hms.scankit.p.Vd.a(zArr, iA2, com.huawei.hms.scankit.p.Fb.f523d[java.lang.Character.digit(str.charAt(i2), 10)], true);
        }
        com.huawei.hms.scankit.p.Vd.a(zArr, iA2, com.huawei.hms.scankit.p.Fb.a, true);
        return zArr;
    }
}
