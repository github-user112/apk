package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public class D {
    public static double a(com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2) {
        return java.lang.Math.atan2(zVar2.c() - zVar.c(), zVar2.b() - zVar.b());
    }

    /* JADX WARN: Removed duplicated region for block: B:28:0x0067  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] a(com.huawei.hms.scankit.p._a r4, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, java.lang.Object> r5, com.huawei.hms.scankit.aiscan.common.x r6, int[] r7, double[] r8) {
        /*
            r0 = 0
            if (r4 != 0) goto L4
            return r0
        L4:
            if (r5 != 0) goto L7
            goto Lf
        L7:
            com.huawei.hms.scankit.aiscan.common.d r0 = com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS
            java.lang.Object r0 = r5.get(r0)
            java.util.Collection r0 = (java.util.Collection) r0
        Lf:
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L26
            com.huawei.hms.scankit.aiscan.common.BarcodeFormat r3 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.QR_CODE
            boolean r3 = r0.contains(r3)
            if (r3 != 0) goto L26
            com.huawei.hms.scankit.aiscan.common.BarcodeFormat r3 = com.huawei.hms.scankit.aiscan.common.BarcodeFormat.PDF_417
            boolean r3 = r0.contains(r3)
            if (r3 == 0) goto L24
            goto L26
        L24:
            r3 = 0
            goto L27
        L26:
            r3 = 1
        L27:
            if (r3 == 0) goto L76
            if (r6 == 0) goto L76
            java.lang.String r3 = r6.i()
            if (r3 != 0) goto L76
            if (r0 == 0) goto L48
            r0.clear()
            com.huawei.hms.scankit.aiscan.common.d r1 = com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS
            r5.remove(r1)
            com.huawei.hms.scankit.aiscan.common.BarcodeFormat r1 = r6.b()
            r0.add(r1)
        L42:
            com.huawei.hms.scankit.aiscan.common.d r1 = com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS
            r5.put(r1, r0)
            goto L5c
        L48:
            if (r5 == 0) goto L5c
            com.huawei.hms.scankit.aiscan.common.d r0 = com.huawei.hms.scankit.aiscan.common.EnumC0105d.POSSIBLE_FORMATS
            r5.remove(r0)
            java.util.Vector r0 = new java.util.Vector
            r0.<init>()
            com.huawei.hms.scankit.aiscan.common.BarcodeFormat r1 = r6.b()
            r0.add(r1)
            goto L42
        L5c:
            float r5 = com.huawei.hms.scankit.p.Bc.f493e
            r0 = 1077936128(0x40400000, float:3.0)
            float r0 = r0 / r5
            r5 = 1065353216(0x3f800000, float:1.0)
            int r1 = (r0 > r5 ? 1 : (r0 == r5 ? 0 : -1))
            if (r1 >= 0) goto L69
            r0 = 1065353216(0x3f800000, float:1.0)
        L69:
            double r0 = (double) r0
            r5 = 5
            r8[r5] = r0
            com.huawei.hms.scankit.aiscan.common.z[] r5 = r6.h()
            byte[] r4 = a(r4, r5, r8, r7)
            return r4
        L76:
            int r5 = r4.e()
            r7[r1] = r5
            int r5 = r4.c()
            r7[r2] = r5
            byte[] r4 = r4.d()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.aiscan.common.D.a(com.huawei.hms.scankit.p._a, java.util.Map, com.huawei.hms.scankit.aiscan.common.x, int[], double[]):byte[]");
    }

    public static byte[] a(com.huawei.hms.scankit.p._a _aVar, com.huawei.hms.scankit.aiscan.common.z[] zVarArr, double[] dArr, int[] iArr) {
        if (zVarArr == null) {
            iArr[0] = _aVar.e();
            iArr[1] = _aVar.c();
            return _aVar.d();
        }
        int iE = _aVar.e();
        int iB = iE;
        int iC = _aVar.c();
        int iB2 = 0;
        int iC2 = 0;
        for (com.huawei.hms.scankit.aiscan.common.z zVar : zVarArr) {
            if (zVar != null) {
                if (((int) zVar.b()) < iB) {
                    iB = (int) zVar.b();
                }
                if (((int) zVar.c()) < iC) {
                    iC = (int) zVar.c();
                }
                if (((int) zVar.b()) > iB2) {
                    iB2 = (int) zVar.b();
                }
                if (((int) zVar.c()) > iC2) {
                    iC2 = (int) zVar.c();
                }
            }
        }
        return a(zVarArr, _aVar, iArr, java.lang.Math.max(iB2 - iB, iC2 - iC), dArr);
    }

    public static byte[] a(com.huawei.hms.scankit.aiscan.common.z[] zVarArr, com.huawei.hms.scankit.p._a _aVar, int[] iArr, float f2, double[] dArr) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        float fB = zVarArr[0].b();
        float fB2 = zVarArr[1].b();
        float fB3 = zVarArr[2].b();
        float fC = zVarArr[0].c();
        float fC2 = zVarArr[1].c();
        float fC3 = zVarArr[2].c();
        if (fB < 0.0f || fB2 < 0.0f || fB3 < 0.0f || fC < 0.0f || fC2 < 0.0f || fC3 < 0.0f || fB > _aVar.e() || fB2 > _aVar.e() || fB3 > _aVar.e() || fC > _aVar.c() || fC2 > _aVar.c() || fC3 > _aVar.c()) {
            iArr[0] = _aVar.e();
            iArr[1] = _aVar.c();
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        int i = ((int) (fC + fC3)) / 2;
        int i2 = (int) ((((int) (fB + fB3)) / 2) - f2);
        if (i2 < 0) {
            i2 = 0;
        }
        int i3 = (int) (i - f2);
        if (i3 < 0) {
            i3 = 0;
        }
        int iC = ((int) f2) * 2;
        int iE = i2 + iC <= _aVar.e() ? iC : _aVar.e() - i2;
        if (i3 + iC > _aVar.c()) {
            iC = _aVar.c() - i3;
        }
        com.huawei.hms.scankit.p._a _aVarA = _aVar.a(i2, i3, iE, iC);
        dArr[0] = java.lang.Math.toDegrees(a(zVarArr[0], zVarArr[1])) + 90.0d + dArr[0];
        dArr[1] = i2;
        dArr[2] = i3;
        double d2 = iE;
        dArr[3] = d2;
        double d3 = iC;
        dArr[4] = d3;
        double radians = java.lang.Math.toRadians(dArr[0]);
        double dAbs = java.lang.Math.abs(java.lang.Math.sin(radians));
        java.lang.Double.isNaN(d2);
        double dAbs2 = java.lang.Math.abs(java.lang.Math.cos(radians));
        java.lang.Double.isNaN(d3);
        int i4 = (int) (dArr[5] * ((dAbs2 * d3) + (dAbs * d2)));
        double dAbs3 = java.lang.Math.abs(java.lang.Math.sin(radians));
        java.lang.Double.isNaN(d3);
        double d4 = dAbs3 * d3;
        double dAbs4 = java.lang.Math.abs(java.lang.Math.cos(radians));
        java.lang.Double.isNaN(d2);
        int i5 = (int) (((dAbs4 * d2) + d4) * dArr[5]);
        iArr[0] = i5;
        iArr[1] = i4;
        byte[] bArrImageRotate = com.huawei.hms.scankit.util.LoadOpencvJNIUtil.imageRotate(_aVarA.d(), _aVarA.c(), _aVarA.e(), i4, i5, (float) dArr[0], dArr[5]);
        if (bArrImageRotate != null) {
            return bArrImageRotate;
        }
        iArr[0] = _aVar.e();
        iArr[1] = _aVar.c();
        return _aVar.d();
    }

    public static com.huawei.hms.scankit.aiscan.common.z[] a(com.huawei.hms.scankit.aiscan.common.z[] zVarArr, int i, int i2, double[] dArr) {
        double d2;
        double d3;
        com.huawei.hms.scankit.aiscan.common.z zVar = null;
        if (zVarArr == null) {
            return null;
        }
        int i3 = dArr[3] != 0.0d ? (int) dArr[3] : i;
        int i4 = dArr[4] != 0.0d ? (int) dArr[4] : i2;
        double d4 = dArr[5];
        com.huawei.hms.scankit.aiscan.common.z[] zVarArr2 = new com.huawei.hms.scankit.aiscan.common.z[zVarArr.length];
        int i5 = 0;
        double radians = java.lang.Math.toRadians(dArr[0]);
        double dCos = java.lang.Math.cos(radians) * d4;
        double dSin = java.lang.Math.sin(radians) * d4;
        double d5 = i4;
        double dAbs = java.lang.Math.abs(dSin) - dSin;
        java.lang.Double.isNaN(d5);
        double d6 = i3;
        double dAbs2 = java.lang.Math.abs(dCos) - dCos;
        java.lang.Double.isNaN(d6);
        double d7 = ((dAbs2 * d6) + (dAbs * d5)) / 2.0d;
        double d8 = -dSin;
        double dAbs3 = java.lang.Math.abs(dCos) - dCos;
        java.lang.Double.isNaN(d5);
        double d9 = dAbs3 * d5;
        double dAbs4 = java.lang.Math.abs(dSin) + dSin;
        java.lang.Double.isNaN(d6);
        double d10 = ((dAbs4 * d6) + d9) / 2.0d;
        while (i5 < zVarArr.length) {
            com.huawei.hms.scankit.aiscan.common.z zVar2 = zVarArr[i5];
            if (zVar2 != null) {
                double dB = zVar2.b();
                java.lang.Double.isNaN(dB);
                double dC = zVar2.c();
                java.lang.Double.isNaN(dC);
                double d11 = (((d10 - dC) * dSin) + ((dB - d7) * dCos)) / ((dCos * dCos) - (dSin * d8));
                if (dSin == 0.0d) {
                    double dC2 = zVar2.c();
                    java.lang.Double.isNaN(dC2);
                    d3 = (dC2 - d10) / dCos;
                } else {
                    double dB2 = zVar2.b();
                    java.lang.Double.isNaN(dB2);
                    d3 = ((dB2 - d7) - (dCos * d11)) / dSin;
                }
                d2 = d8;
                zVarArr2[i5] = new com.huawei.hms.scankit.aiscan.common.z(java.lang.Math.round(d11) + ((int) dArr[1]), java.lang.Math.round(d3) + ((int) dArr[2]));
                zVar = null;
            } else {
                d2 = d8;
                zVarArr2[i5] = zVar;
            }
            i5++;
            d8 = d2;
        }
        return zVarArr2;
    }
}
