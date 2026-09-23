package com.huawei.hms.scankit.aiscan.common;

/* renamed from: com.huawei.hms.scankit.aiscan.common.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0107f extends com.huawei.hms.scankit.aiscan.common.j {
    @Override // com.huawei.hms.scankit.aiscan.common.j
    public com.huawei.hms.scankit.p.C0122bb a(com.huawei.hms.scankit.p.C0122bb c0122bb, int i, int i2, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        return a(c0122bb, i, i2, com.huawei.hms.scankit.aiscan.common.q.a(f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12, f13, f14, f15, f16, f17), false);
    }

    public com.huawei.hms.scankit.p.C0122bb a(com.huawei.hms.scankit.p.C0122bb c0122bb, int i, int i2, com.huawei.hms.scankit.aiscan.common.q qVar) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if (i <= 0 || i2 <= 0) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        com.huawei.hms.scankit.p.C0122bb c0122bb2 = new com.huawei.hms.scankit.p.C0122bb(i, i2);
        float[] fArr = new float[10];
        float f2 = 0.5f;
        char c2 = 0;
        int i3 = 0;
        while (i3 < i2) {
            int i4 = 0;
            while (i4 < i) {
                float f3 = i4;
                fArr[c2] = (f3 - 0.2f) + f2;
                float f4 = i3;
                float f5 = f4 + f2;
                fArr[1] = f5;
                fArr[2] = f3 + 0.2f + f2;
                fArr[3] = f5;
                float f6 = f3 + f2;
                fArr[4] = f6;
                fArr[5] = (f4 - 0.2f) + f2;
                fArr[6] = f6;
                fArr[7] = f4 + 0.2f + f2;
                fArr[8] = f6;
                fArr[9] = f5;
                if (com.huawei.hms.scankit.p.Bc.k && com.huawei.hms.scankit.p.Bc.h) {
                    qVar.b(fArr);
                } else {
                    qVar.a(fArr);
                }
                int iD = c0122bb.d();
                int iB = c0122bb.b();
                int i5 = 0;
                for (int i6 = 0; i6 < 5; i6++) {
                    int i7 = i6 * 2;
                    try {
                        int i8 = (int) fArr[i7];
                        int i9 = (int) fArr[i7 + 1];
                        if (i8 >= -1 && i8 <= iD && i9 >= -1 && i9 <= iB) {
                            if (c0122bb.b(i8, i9)) {
                                i5++;
                            }
                        }
                    } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
                        throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                    }
                }
                if (i5 >= 3) {
                    c0122bb2.c(i4, i3);
                }
                i4++;
                f2 = 0.5f;
                c2 = 0;
            }
            i3++;
            f2 = 0.5f;
            c2 = 0;
        }
        return c0122bb2;
    }

    @Override // com.huawei.hms.scankit.aiscan.common.j
    public com.huawei.hms.scankit.p.C0122bb a(com.huawei.hms.scankit.p.C0122bb c0122bb, int i, int i2, com.huawei.hms.scankit.aiscan.common.q qVar, boolean z) {
        return (com.huawei.hms.scankit.p.Bc.i && z) || ((!com.huawei.hms.scankit.p.Bc.i && !z) || com.huawei.hms.scankit.p.Bc.p) ? b(c0122bb, i, i2, qVar) : a(c0122bb, i, i2, qVar);
    }

    public com.huawei.hms.scankit.p.C0122bb b(com.huawei.hms.scankit.p.C0122bb c0122bb, int i, int i2, com.huawei.hms.scankit.aiscan.common.q qVar) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if (i <= 0 || i2 <= 0) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        com.huawei.hms.scankit.p.C0122bb c0122bb2 = new com.huawei.hms.scankit.p.C0122bb(i, i2);
        int i3 = i * 2;
        float[] fArr = new float[i3];
        for (int i4 = 0; i4 < i2; i4++) {
            float f2 = i4 + 0.5f;
            for (int i5 = 0; i5 < i3; i5 += 2) {
                fArr[i5] = (i5 / 2) + 0.5f;
                fArr[i5 + 1] = f2;
            }
            if (com.huawei.hms.scankit.p.Bc.k && com.huawei.hms.scankit.p.Bc.h) {
                qVar.b(fArr);
            } else {
                qVar.a(fArr);
            }
            int iD = c0122bb.d();
            int iB = c0122bb.b();
            for (int i6 = 0; i6 < i3; i6 += 2) {
                try {
                    int i7 = (int) fArr[i6];
                    int i8 = (int) fArr[i6 + 1];
                    if (i7 < -1 || i7 > iD || i8 < -1 || i8 > iB || c0122bb.b(i7, i8)) {
                        c0122bb2.c(i6 / 2, i4);
                    }
                } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
                    throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
                }
            }
        }
        return c0122bb2;
    }
}
