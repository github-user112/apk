package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.zd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0243zd implements com.huawei.hms.scankit.p.InterfaceC0199qd {
    public static com.huawei.hms.scankit.p.C0122bb a(com.huawei.hms.scankit.p.Ed ed, com.huawei.hms.scankit.p.Kd kd, int i, int i2, int i3) {
        int iE = kd.e();
        int iD = kd.d();
        com.huawei.hms.scankit.p.je jeVar = new com.huawei.hms.scankit.p.je(kd.g(), kd.f());
        int i4 = 0;
        for (int i5 = 0; i5 < iD; i5++) {
            if (i5 % kd.f578g == 0) {
                int i6 = 0;
                for (int i7 = 0; i7 < kd.g(); i7++) {
                    jeVar.a(i6, i4, i7 % 2 == 0);
                    i6++;
                }
                i4++;
            }
            int i8 = 0;
            for (int i9 = 0; i9 < iE; i9++) {
                if (i9 % kd.f577f == 0) {
                    jeVar.a(i8, i4, true);
                    i8++;
                }
                jeVar.a(i8, i4, ed.a(i9, i5));
                i8++;
                int i10 = kd.f577f;
                if (i9 % i10 == i10 - 1) {
                    jeVar.a(i8, i4, i5 % 2 == 0);
                    i8++;
                }
            }
            i4++;
            int i11 = kd.f578g;
            if (i5 % i11 == i11 - 1) {
                int i12 = 0;
                for (int i13 = 0; i13 < kd.g(); i13++) {
                    jeVar.a(i12, i4, true);
                    i12++;
                }
                i4++;
            }
        }
        return a(jeVar, i, i2, i3);
    }

    public static com.huawei.hms.scankit.p.C0122bb a(com.huawei.hms.scankit.p.je jeVar, int i, int i2, int i3) {
        com.huawei.hms.scankit.p.C0122bb c0122bb;
        int iC = jeVar.c();
        int iB = jeVar.b();
        int i4 = i3 * 2;
        int i5 = iC + i4;
        int i6 = i4 + iB;
        int iMax = java.lang.Math.max(i, i5);
        int iMax2 = java.lang.Math.max(i2, i6);
        int iMin = java.lang.Math.min(iMax / i5, iMax2 / i6);
        int i7 = (iMax - (iC * iMin)) / 2;
        int i8 = (iMax2 - (iB * iMin)) / 2;
        if (i2 < iB || i < iC) {
            c0122bb = new com.huawei.hms.scankit.p.C0122bb(iC, iB);
            i7 = 0;
            i8 = 0;
        } else {
            c0122bb = new com.huawei.hms.scankit.p.C0122bb(i, i2);
        }
        c0122bb.a();
        int i9 = 0;
        while (i9 < iB) {
            int i10 = i7;
            int i11 = 0;
            while (i11 < iC) {
                if (jeVar.a(i11, i9) == 1) {
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

    @Override // com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) throws java.lang.Exception {
        com.huawei.hms.scankit.p.C0184nd c0184nd;
        if (str.isEmpty()) {
            try {
                throw new java.lang.IllegalArgumentException("Found empty contents");
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        if (barcodeFormat != com.huawei.hms.scankit.aiscan.common.BarcodeFormat.DATA_MATRIX) {
            try {
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("Can only encode DATA_MATRIX, but got ");
                sb.append(barcodeFormat);
                throw new java.lang.IllegalArgumentException(sb.toString());
            } catch (java.lang.Exception e3) {
                throw e3;
            }
        }
        if (i < 0 || i2 < 0) {
            try {
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                sb2.append("Requested dimensions can't be negative: ");
                sb2.append(i);
                sb2.append('x');
                sb2.append(i2);
                throw new java.lang.IllegalArgumentException(sb2.toString());
            } catch (java.lang.Exception e4) {
                throw e4;
            }
        }
        com.huawei.hms.scankit.p.Ld ld = com.huawei.hms.scankit.p.Ld.FORCE_SQUARE;
        int i3 = 4;
        if (map != null) {
            com.huawei.hms.scankit.p.Ld ld2 = (com.huawei.hms.scankit.p.Ld) map.get(com.huawei.hms.scankit.p.ke.DATA_MATRIX_SHAPE);
            if (ld2 != null) {
                ld = ld2;
            }
            com.huawei.hms.scankit.p.C0184nd c0184nd2 = (com.huawei.hms.scankit.p.C0184nd) map.get(com.huawei.hms.scankit.p.ke.MIN_SIZE);
            if (c0184nd2 == null) {
                c0184nd2 = null;
            }
            com.huawei.hms.scankit.p.C0184nd c0184nd3 = (com.huawei.hms.scankit.p.C0184nd) map.get(com.huawei.hms.scankit.p.ke.MAX_SIZE);
            c0184nd = c0184nd3 != null ? c0184nd3 : null;
            if (map.containsKey(com.huawei.hms.scankit.p.ke.MARGIN)) {
                try {
                    i3 = java.lang.Integer.parseInt(map.get(com.huawei.hms.scankit.p.ke.MARGIN).toString());
                } catch (java.lang.Exception e5) {
                    throw e5;
                }
            }
            c0184nd = c0184nd;
            c0184nd = c0184nd2;
        } else {
            c0184nd = null;
        }
        java.lang.String strA = com.huawei.hms.scankit.p.Jd.a(str, ld, c0184nd, c0184nd);
        com.huawei.hms.scankit.p.Kd kdA = com.huawei.hms.scankit.p.Kd.a(strA.length(), ld, c0184nd, c0184nd, true);
        com.huawei.hms.scankit.p.Ed ed = new com.huawei.hms.scankit.p.Ed(com.huawei.hms.scankit.p.Id.a(strA, kdA), kdA.e(), kdA.d());
        ed.a();
        return a(ed, kdA, i, i2, i3);
    }
}
