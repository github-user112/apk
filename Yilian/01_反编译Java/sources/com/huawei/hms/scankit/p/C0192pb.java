package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.pb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0192pb {
    public static com.huawei.hms.scankit.p.C0197qb a;
    public static com.huawei.hms.scankit.p._a b;

    public static com.huawei.hms.scankit.aiscan.common.z a(float f2, float f3, com.huawei.hms.scankit.p.C0187ob c0187ob) {
        float[] fArr = c0187ob.m;
        if (fArr == null || fArr.length != 5) {
            return new com.huawei.hms.scankit.aiscan.common.z(f2, f3);
        }
        float f4 = -fArr[4];
        double d2 = f2 - fArr[0];
        double d3 = f4;
        double dCos = java.lang.Math.cos(d3);
        java.lang.Double.isNaN(d2);
        double d4 = f3 - c0187ob.m[1];
        double dSin = java.lang.Math.sin(d3);
        java.lang.Double.isNaN(d4);
        double d5 = (dSin * d4) + (dCos * d2);
        float[] fArr2 = c0187ob.m;
        java.lang.Double.isNaN(fArr2[0]);
        double d6 = -(f2 - fArr2[0]);
        double dSin2 = java.lang.Math.sin(d3);
        java.lang.Double.isNaN(d6);
        double d7 = f3 - c0187ob.m[1];
        double dCos2 = java.lang.Math.cos(d3);
        java.lang.Double.isNaN(d7);
        double d8 = (dCos2 * d7) + (dSin2 * d6);
        float[] fArr3 = c0187ob.m;
        java.lang.Double.isNaN(fArr3[1]);
        return new com.huawei.hms.scankit.aiscan.common.z((((int) (d5 + r5)) - fArr3[2]) + c0187ob.r, (((int) (d8 + r2)) - fArr3[3]) + c0187ob.s);
    }

    public static java.util.List<com.huawei.hms.scankit.p.C0187ob> a(boolean z, com.huawei.hms.scankit.p._a _aVar, int i, boolean z2) {
        int iE = _aVar.e();
        int iC = _aVar.c();
        byte[] bArrB = _aVar.a().c().b();
        com.huawei.hms.scankit.p.C0197qb c0197qb = new com.huawei.hms.scankit.p.C0197qb();
        a = c0197qb;
        c0197qb.a(z, bArrB, iC, iE, i, z2);
        return a.a;
    }

    public static void a(com.huawei.hms.scankit.p._a _aVar, float f2, com.huawei.hms.scankit.p.C0187ob c0187ob, float[] fArr) {
        float fMin;
        float fMax;
        com.huawei.hms.scankit.p._a _aVarA;
        float radians = (float) java.lang.Math.toRadians(f2);
        double d2 = c0187ob.p;
        double d3 = radians;
        double dAbs = java.lang.Math.abs(java.lang.Math.sin(d3));
        java.lang.Double.isNaN(d2);
        double d4 = dAbs * d2;
        double d5 = c0187ob.q;
        double dAbs2 = java.lang.Math.abs(java.lang.Math.cos(d3));
        java.lang.Double.isNaN(d5);
        int i = (int) ((dAbs2 * d5) + d4);
        double d6 = c0187ob.q;
        double dAbs3 = java.lang.Math.abs(java.lang.Math.sin(d3));
        java.lang.Double.isNaN(d6);
        double d7 = dAbs3 * d6;
        double d8 = c0187ob.p;
        double dAbs4 = java.lang.Math.abs(java.lang.Math.cos(d3));
        java.lang.Double.isNaN(d8);
        int i2 = (int) ((dAbs4 * d8) + d7);
        float[] fArr2 = c0187ob.m;
        fArr2[0] = i2 * 0.5f;
        fArr2[1] = i * 0.5f;
        fArr2[2] = (i2 - c0187ob.p) * 0.5f;
        fArr2[3] = (i - c0187ob.q) * 0.5f;
        fArr2[4] = radians;
        if (f2 == 0.0f) {
            c0187ob.t = 0;
            c0187ob.u = 0;
            _aVarA = _aVar;
        } else {
            com.huawei.hms.scankit.p._a _aVar2 = new com.huawei.hms.scankit.p._a(new com.huawei.hms.scankit.p.C0132db(new com.huawei.hms.scankit.aiscan.common.r(com.huawei.hms.scankit.util.LoadOpencvJNIUtil.imageRotate(_aVar.a().c().b(), c0187ob.q, c0187ob.p, i, i2, f2, 1.0d), i2, i, 0, 0, i2, i, false)));
            if ((c0187ob.g() == 3.0f || c0187ob.g() == 4.0f) && _aVar2.c() > _aVar2.e()) {
                fMin = java.lang.Math.min(fArr[2], fArr[3]);
                fMax = java.lang.Math.max(fArr[2], fArr[3]);
            } else {
                fMin = java.lang.Math.max(fArr[2], fArr[3]);
                fMax = java.lang.Math.min(fArr[2], fArr[3]);
            }
            double d9 = i2;
            java.lang.Double.isNaN(d9);
            double d10 = fMin;
            java.lang.Double.isNaN(d10);
            c0187ob.t = (int) java.lang.Math.max((d9 * 0.5d) - (d10 * 0.5d), 0.0d);
            double d11 = i;
            java.lang.Double.isNaN(d11);
            double d12 = fMax;
            java.lang.Double.isNaN(d12);
            c0187ob.u = (int) java.lang.Math.max((d11 * 0.5d) - (d12 * 0.5d), 0.0d);
            _aVarA = _aVar2.a(c0187ob.t, c0187ob.u, java.lang.Math.min(i2 - c0187ob.t, (int) fMin), java.lang.Math.min(i - c0187ob.u, (int) fMax));
        }
        c0187ob.l = _aVarA;
    }

    public static void a(com.huawei.hms.scankit.p.C0122bb c0122bb, com.huawei.hms.scankit.aiscan.common.x xVar, float f2, com.huawei.hms.scankit.p.C0187ob c0187ob) {
        int iC;
        int iC2;
        com.huawei.hms.scankit.aiscan.common.z[] zVarArrH = xVar.h();
        float fMin = java.lang.Math.min(zVarArrH[0].b(), zVarArrH[1].b());
        float fMax = java.lang.Math.max(zVarArrH[0].b(), zVarArrH[1].b());
        float fC = zVarArrH[0].c();
        if (fMax > c0122bb.d() - 1) {
            fMax = c0122bb.d() - 1;
        }
        float f3 = fMax;
        float fB = fC > ((float) (c0122bb.b() - 1)) ? c0122bb.b() - 1 : fC;
        int iB = c0122bb.b();
        try {
            int[] iArrA = a(c0122bb, zVarArrH, fMin, f3, fB, iB, new int[iB]);
            iC = iArrA[0];
            iC2 = iArrA[1];
        } catch (java.lang.IndexOutOfBoundsException unused) {
            iC = (int) zVarArrH[0].c();
            iC2 = (int) zVarArrH[0].c();
        }
        float f4 = iC;
        float f5 = iC2;
        com.huawei.hms.scankit.aiscan.common.z[] zVarArr = {new com.huawei.hms.scankit.aiscan.common.z(fMin, f4), new com.huawei.hms.scankit.aiscan.common.z(f3, f4), new com.huawei.hms.scankit.aiscan.common.z(f3, f5), new com.huawei.hms.scankit.aiscan.common.z(fMin, f5)};
        if (c0187ob != null) {
            a(zVarArr, f2, c0187ob);
        }
        xVar.a();
        xVar.a(zVarArr);
    }

    public static void a(com.huawei.hms.scankit.aiscan.common.z[] zVarArr, float f2, com.huawei.hms.scankit.p.C0187ob c0187ob) {
        if (c0187ob == null || zVarArr == null) {
            return;
        }
        for (int i = 0; i < zVarArr.length; i++) {
            zVarArr[i] = a((zVarArr[i].b() * f2) + c0187ob.t, (zVarArr[i].c() * f2) + c0187ob.u, c0187ob);
        }
    }

    public static boolean a(boolean z, com.huawei.hms.scankit.p._a _aVar, com.huawei.hms.scankit.p.C0187ob c0187ob) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        float fI;
        int iE;
        int iE2 = _aVar.e();
        int iC = _aVar.c();
        float[] fArr = {c0187ob.j(), c0187ob.k(), c0187ob.f(), c0187ob.c()};
        if (z) {
            c0187ob.n = java.lang.Math.max(c0187ob.m(), c0187ob.l());
            c0187ob.o = java.lang.Math.min(c0187ob.m(), c0187ob.l());
            fI = c0187ob.i();
            if (c0187ob.g() == 11.0f || c0187ob.g() == 0.0f) {
                fI = 0.0f;
            }
            c0187ob.v = java.lang.Math.max(fArr[2], fArr[3]);
            double d2 = fArr[0];
            double d3 = fArr[2];
            java.lang.Double.isNaN(d3);
            java.lang.Double.isNaN(d2);
            c0187ob.r = (int) java.lang.Math.max(d2 - (d3 * 0.5d), 0.0d);
            double d4 = fArr[1];
            double d5 = fArr[3];
            java.lang.Double.isNaN(d5);
            java.lang.Double.isNaN(d4);
            iE = (int) java.lang.Math.max(d4 - (d5 * 0.5d), 0.0d);
        } else {
            fI = c0187ob.i();
            c0187ob.v = java.lang.Math.max(fArr[2], fArr[3]);
            c0187ob.r = (int) c0187ob.d();
            iE = (int) c0187ob.e();
        }
        c0187ob.s = iE;
        c0187ob.p = java.lang.Math.min(iE2 - c0187ob.r, (int) fArr[2]);
        int iMin = java.lang.Math.min(iC - c0187ob.s, (int) fArr[3]);
        c0187ob.q = iMin;
        int i = c0187ob.p;
        if (i <= 0 || iMin <= 0) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a("crop_w <= 0 || crop_h <= 0");
        }
        com.huawei.hms.scankit.p._a _aVarA = _aVar.a(c0187ob.r, c0187ob.s, i, iMin);
        b = _aVarA;
        a(_aVarA, fI, c0187ob, fArr);
        return true;
    }

    public static int[] a(com.huawei.hms.scankit.p.C0122bb c0122bb, com.huawei.hms.scankit.aiscan.common.z[] zVarArr, float f2, float f3, float f4, int i, int[] iArr) {
        int i2;
        int iC;
        int iC2;
        int i3 = (int) f2;
        int i4 = i3;
        int i5 = 0;
        while (true) {
            i2 = ((int) f3) - 1;
            if (i4 >= i2) {
                break;
            }
            int i6 = (int) f4;
            boolean zB = c0122bb.b(i4, i6);
            i4++;
            if (c0122bb.b(i4, i6) ^ zB) {
                i5++;
            }
        }
        int i7 = 0;
        for (int i8 = 0; i8 < i; i8++) {
            int i9 = i3;
            int i10 = 0;
            while (i9 < i2) {
                boolean zB2 = c0122bb.b(i9, i8);
                i9++;
                if (zB2 ^ c0122bb.b(i9, i8)) {
                    i10++;
                }
            }
            float f5 = i5;
            if (i10 > 1.5f * f5) {
                i10 = 0;
            }
            if (i10 < f5 * 0.5f) {
                i10 = 0;
            }
            iArr[i8] = i10;
            if (iArr[i8] > i7) {
                i7 = iArr[i8];
            }
        }
        if (i7 > 0) {
            float[] fArr = new float[i];
            for (int i11 = 0; i11 < i; i11++) {
                fArr[i11] = iArr[i11] / i7;
            }
            float f6 = 0.0f;
            for (int i12 = 0; i12 < i; i12++) {
                f6 += fArr[i12];
            }
            float f7 = f6 / i;
            if (f7 > 1.0d) {
                f7 = 0.99f;
            }
            iC = (int) f4;
            iC2 = iC;
            while (true) {
                if (iC2 < 0) {
                    iC2 = 0;
                    break;
                }
                if (fArr[iC2] < f7) {
                    break;
                }
                iC2--;
            }
            while (true) {
                if (iC >= i) {
                    iC = 0;
                    break;
                }
                if (fArr[iC] < f7) {
                    break;
                }
                iC++;
            }
        } else {
            iC = 0;
            iC2 = 0;
        }
        if (iC2 == 0 && iC == 0) {
            iC2 = ((int) zVarArr[0].c()) + (-10) < 0 ? 0 : ((int) zVarArr[0].c()) - 10;
            iC = i - 1;
            if (((int) zVarArr[0].c()) + 10 <= iC) {
                iC = ((int) zVarArr[0].c()) + 10;
            }
        }
        return new int[]{iC2, iC};
    }
}
