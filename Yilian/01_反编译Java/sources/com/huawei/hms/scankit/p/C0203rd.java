package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.rd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0203rd implements com.huawei.hms.scankit.p.InterfaceC0199qd {
    public static com.huawei.hms.scankit.p.C0122bb a(com.huawei.hms.scankit.p.C0208sd c0208sd, int i, int i2, int i3) {
        com.huawei.hms.scankit.p.C0122bb c0122bbA = c0208sd.a();
        if (c0122bbA == null) {
            throw new java.lang.IllegalStateException();
        }
        int iD = c0122bbA.d();
        int iB = c0122bbA.b();
        int i4 = i3 * 2;
        int i5 = iD + i4;
        int i6 = i4 + iB;
        int iMax = java.lang.Math.max(i, i5);
        int iMax2 = java.lang.Math.max(i2, i6);
        int iMin = java.lang.Math.min(iMax / i5, iMax2 / i6);
        int i7 = (iMax - (iD * iMin)) / 2;
        int i8 = (iMax2 - (iB * iMin)) / 2;
        com.huawei.hms.scankit.p.C0122bb c0122bb = new com.huawei.hms.scankit.p.C0122bb(iMax, iMax2);
        int i9 = 0;
        while (i9 < iB) {
            int i10 = i7;
            int i11 = 0;
            while (i11 < iD) {
                if (c0122bbA.b(i11, i9)) {
                    c0122bb.a(i10, i8, iMin, iMin);
                }
                i11++;
                i10 += iMin;
            }
            i9++;
            i8 += iMin;
        }
        return c0122bb;
    }

    public static com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.nio.charset.Charset charset, int i3, int i4, int i5) throws java.lang.Exception {
        if (barcodeFormat == com.huawei.hms.scankit.aiscan.common.BarcodeFormat.AZTEC) {
            return a(com.huawei.hms.scankit.p.C0218ud.a(str.getBytes(charset), i3, i4), i, i2, i5);
        }
        try {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("Can only encode AZTEC, but got ");
            sb.append(barcodeFormat);
            throw new java.lang.IllegalArgumentException(sb.toString());
        } catch (java.lang.Exception e2) {
            throw e2;
        }
    }

    @Override // com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) throws java.lang.Exception {
        java.nio.charset.Charset charset;
        int i3;
        int i4;
        int i5;
        java.nio.charset.Charset charsetForName = java.nio.charset.StandardCharsets.ISO_8859_1;
        int i6 = 33;
        int i7 = 0;
        if (map != null) {
            if (map.containsKey(com.huawei.hms.scankit.p.ke.CHARACTER_SET)) {
                charsetForName = java.nio.charset.Charset.forName(map.get(com.huawei.hms.scankit.p.ke.CHARACTER_SET).toString());
            }
            if (map.containsKey(com.huawei.hms.scankit.p.ke.ERROR_CORRECTION)) {
                try {
                    i6 = java.lang.Integer.parseInt(map.get(com.huawei.hms.scankit.p.ke.ERROR_CORRECTION).toString());
                } catch (java.lang.Exception e2) {
                    throw e2;
                }
            }
            if (map.containsKey(com.huawei.hms.scankit.p.ke.AZTEC_LAYERS)) {
                try {
                    i7 = java.lang.Integer.parseInt(map.get(com.huawei.hms.scankit.p.ke.AZTEC_LAYERS).toString());
                } catch (java.lang.Exception e3) {
                    throw e3;
                }
            }
            if (map.containsKey(com.huawei.hms.scankit.p.ke.MARGIN)) {
                try {
                    charset = charsetForName;
                    i3 = i6;
                    i4 = i7;
                    i5 = java.lang.Integer.parseInt(map.get(com.huawei.hms.scankit.p.ke.MARGIN).toString());
                    return a(str, barcodeFormat, i, i2, charset, i3, i4, i5);
                } catch (java.lang.Exception e4) {
                    throw e4;
                }
            }
            charset = charsetForName;
            i3 = i6;
            i4 = i7;
        } else {
            charset = charsetForName;
            i3 = 33;
            i4 = 0;
        }
        i5 = 4;
        return a(str, barcodeFormat, i, i2, charset, i3, i4, i5);
    }
}
