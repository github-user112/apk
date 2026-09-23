package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Zd implements com.huawei.hms.scankit.p.InterfaceC0199qd {
    public static com.huawei.hms.scankit.p.C0122bb a(com.huawei.hms.scankit.p.de deVar, java.lang.String str, int i, int i2, int i3, int i4) throws java.lang.Exception {
        deVar.a(str, i);
        byte[][] bArrA = deVar.a().a(1, 4);
        int length = i2 / bArrA[0].length;
        int length2 = i3 / bArrA.length;
        if (length >= length2) {
            length = length2;
        }
        return length > 1 ? a(deVar.a().a(length, length * 4), i4) : a(bArrA, i4);
    }

    public static com.huawei.hms.scankit.p.C0122bb a(byte[][] bArr, int i) {
        int i2 = i * 2;
        com.huawei.hms.scankit.p.C0122bb c0122bb = new com.huawei.hms.scankit.p.C0122bb(bArr[0].length + i2, bArr.length + i2);
        c0122bb.a();
        int iB = (c0122bb.b() - i) - 1;
        int i3 = 0;
        while (i3 < bArr.length) {
            byte[] bArr2 = bArr[i3];
            for (int i4 = 0; i4 < bArr[0].length; i4++) {
                if (bArr2[i4] == 1) {
                    c0122bb.c(i4 + i, iB);
                }
            }
            i3++;
            iB--;
        }
        return c0122bb;
    }

    @Override // com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) throws java.lang.Exception {
        int i3;
        int i4;
        if (barcodeFormat != com.huawei.hms.scankit.aiscan.common.BarcodeFormat.PDF_417) {
            throw new java.lang.IllegalArgumentException("Can only encode PDF_417, but got " + barcodeFormat);
        }
        com.huawei.hms.scankit.p.de deVar = new com.huawei.hms.scankit.p.de();
        int i5 = 30;
        int i6 = 2;
        if (map != null) {
            if (map.containsKey(com.huawei.hms.scankit.p.ke.PDF417_COMPACT)) {
                deVar.a(java.lang.Boolean.valueOf(map.get(com.huawei.hms.scankit.p.ke.PDF417_COMPACT).toString()).booleanValue());
            }
            if (map.containsKey(com.huawei.hms.scankit.p.ke.PDF417_COMPACTION)) {
                deVar.a(com.huawei.hms.scankit.p.be.valueOf(map.get(com.huawei.hms.scankit.p.ke.PDF417_COMPACTION).toString()));
            }
            if (map.containsKey(com.huawei.hms.scankit.p.ke.PDF417_DIMENSIONS)) {
                com.huawei.hms.scankit.p.ce ceVar = (com.huawei.hms.scankit.p.ce) map.get(com.huawei.hms.scankit.p.ke.PDF417_DIMENSIONS);
                deVar.a(ceVar.a(), ceVar.c(), ceVar.b(), ceVar.d());
            }
            if (map.containsKey(com.huawei.hms.scankit.p.ke.MARGIN)) {
                try {
                    i5 = java.lang.Integer.parseInt(map.get(com.huawei.hms.scankit.p.ke.MARGIN).toString());
                } catch (java.lang.Exception e2) {
                    throw e2;
                }
            }
            if (map.containsKey(com.huawei.hms.scankit.p.ke.ERROR_CORRECTION)) {
                try {
                    i6 = java.lang.Integer.parseInt(map.get(com.huawei.hms.scankit.p.ke.ERROR_CORRECTION).toString());
                } catch (java.lang.Exception e3) {
                    throw e3;
                }
            }
            if (map.containsKey(com.huawei.hms.scankit.p.ke.CHARACTER_SET)) {
                deVar.a(java.nio.charset.Charset.forName(map.get(com.huawei.hms.scankit.p.ke.CHARACTER_SET).toString()));
            }
            i4 = i5;
            i3 = i6;
        } else {
            i3 = 2;
            i4 = 30;
        }
        return a(deVar, str, i3, i, i2, i4);
    }
}
