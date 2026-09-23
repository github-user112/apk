package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class he implements com.huawei.hms.scankit.p.InterfaceC0199qd {
    public static com.huawei.hms.scankit.p.C0122bb a(com.huawei.hms.scankit.p.pe peVar, int i, int i2, int i3, boolean z) {
        int iMax;
        int iMax2;
        int i4;
        int i5;
        com.huawei.hms.scankit.p.je jeVarA = peVar.a();
        if (jeVarA == null) {
            throw new java.lang.IllegalStateException();
        }
        int iC = jeVarA.c();
        int iB = jeVarA.b();
        if (z) {
            iMax = java.lang.Math.max(i, iC);
            iMax2 = java.lang.Math.max(i2, iB);
            int i6 = i3 * 2;
            i4 = (iMax - i6) / iC;
            i5 = (iMax2 - i6) / iB;
        } else {
            int i7 = i3 * 2;
            int i8 = iC + i7;
            int i9 = i7 + iB;
            iMax = java.lang.Math.max(i, i8);
            iMax2 = java.lang.Math.max(i2, i9);
            i4 = iMax / i8;
            i5 = iMax2 / i9;
        }
        int iMin = java.lang.Math.min(i4, i5);
        int i10 = (iMax - (iC * iMin)) / 2;
        int i11 = (iMax2 - (iB * iMin)) / 2;
        com.huawei.hms.scankit.p.C0122bb c0122bb = new com.huawei.hms.scankit.p.C0122bb(iMax, iMax2);
        int i12 = 0;
        while (i12 < iB) {
            int i13 = i10;
            int i14 = 0;
            while (i14 < iC) {
                if (jeVarA.a(i14, i12) == 1) {
                    c0122bb.a(i13, i11, iMin, iMin);
                }
                i14++;
                i13 += iMin;
            }
            i12++;
            i11 += iMin;
        }
        return c0122bb;
    }

    @Override // com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) throws java.lang.Exception {
        if (str.isEmpty()) {
            throw new java.lang.IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != com.huawei.hms.scankit.aiscan.common.BarcodeFormat.QR_CODE) {
            throw new java.lang.IllegalArgumentException("Can only encode QR_CODE, but got " + barcodeFormat);
        }
        if (i < 0 || i2 < 0) {
            throw new java.lang.IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        com.huawei.hms.scankit.p.EnumC0198qc enumC0198qcValueOf = com.huawei.hms.scankit.p.EnumC0198qc.L;
        int i3 = 4;
        java.lang.Boolean bool = java.lang.Boolean.FALSE;
        if (map != null) {
            if (map.containsKey(com.huawei.hms.scankit.p.ke.ERROR_CORRECTION)) {
                enumC0198qcValueOf = com.huawei.hms.scankit.p.EnumC0198qc.valueOf(map.get(com.huawei.hms.scankit.p.ke.ERROR_CORRECTION).toString());
            }
            if (map.containsKey(com.huawei.hms.scankit.p.ke.MARGIN)) {
                try {
                    i3 = java.lang.Integer.parseInt(map.get(com.huawei.hms.scankit.p.ke.MARGIN).toString());
                } catch (java.lang.Exception e2) {
                    throw e2;
                }
            }
            if (map.containsKey(com.huawei.hms.scankit.p.ke.LOGO)) {
                try {
                    bool = (java.lang.Boolean) map.get(com.huawei.hms.scankit.p.ke.LOGO);
                } catch (java.lang.Exception e3) {
                    throw e3;
                }
            }
        }
        return a(com.huawei.hms.scankit.p.me.a(str, enumC0198qcValueOf, map), i, i2, i3, bool.booleanValue());
    }
}
