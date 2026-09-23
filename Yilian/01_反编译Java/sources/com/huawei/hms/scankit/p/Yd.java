package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Yd extends com.huawei.hms.scankit.p.Xd {
    @Override // com.huawei.hms.scankit.p.Vd, com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) {
        if (barcodeFormat == com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_E) {
            return super.a(str, barcodeFormat, i, i2, map);
        }
        throw new java.lang.IllegalArgumentException("Can only encode UPC_E, but got " + barcodeFormat);
    }

    @Override // com.huawei.hms.scankit.p.Vd
    public boolean[] a(java.lang.String str) {
        int length = str.length();
        if (length == 7) {
            try {
                str = e.a.c.a.a.K(str, com.huawei.hms.scankit.p.Fb.b(com.huawei.hms.scankit.p.Gb.b(str)));
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
        int iDigit = java.lang.Character.digit(str.charAt(0), 10);
        if (iDigit != 0 && iDigit != 1) {
            throw new java.lang.IllegalArgumentException("Number system must be 0 or 1");
        }
        int i = com.huawei.hms.scankit.p.Gb.i[iDigit][java.lang.Character.digit(str.charAt(7), 10)];
        boolean[] zArr = new boolean[51];
        int iA = com.huawei.hms.scankit.p.Vd.a(zArr, 0, com.huawei.hms.scankit.p.Fb.a, true) + 0;
        for (int i2 = 1; i2 <= 6; i2++) {
            int iDigit2 = java.lang.Character.digit(str.charAt(i2), 10);
            if (((i >> (6 - i2)) & 1) == 1) {
                iDigit2 += 10;
            }
            iA += com.huawei.hms.scankit.p.Vd.a(zArr, iA, com.huawei.hms.scankit.p.Fb.f524e[iDigit2], false);
        }
        com.huawei.hms.scankit.p.Vd.a(zArr, iA, com.huawei.hms.scankit.p.Fb.f522c, false);
        return zArr;
    }
}
