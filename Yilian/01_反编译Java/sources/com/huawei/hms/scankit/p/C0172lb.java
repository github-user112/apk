package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.lb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0172lb {
    public final com.huawei.hms.scankit.p.C0122bb a;
    public final com.huawei.hms.scankit.aiscan.common.F b;

    public C0172lb(com.huawei.hms.scankit.p.C0122bb c0122bb) {
        this.a = c0122bb;
        this.b = new com.huawei.hms.scankit.aiscan.common.F(c0122bb);
    }

    private int a(com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2) {
        int i;
        boolean z;
        com.huawei.hms.scankit.p.C0172lb c0172lb = this;
        int iB = (int) zVar.b();
        int iC = (int) zVar.c();
        int iB2 = (int) zVar2.b();
        int iC2 = (int) zVar2.c();
        boolean z2 = java.lang.Math.abs(iC2 - iC) > java.lang.Math.abs(iB2 - iB);
        if (!z2) {
            iC = iB;
            iB = iC;
            iC2 = iB2;
            iB2 = iC2;
        }
        int iAbs = java.lang.Math.abs(iC2 - iC);
        int iAbs2 = java.lang.Math.abs(iB2 - iB);
        int i2 = (-iAbs) / 2;
        int i3 = iB < iB2 ? 1 : -1;
        int i4 = iC < iC2 ? 1 : -1;
        boolean zB = c0172lb.a.b(z2 ? iB : iC, z2 ? iC : iB);
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        while (iC != iC2) {
            boolean zB2 = c0172lb.a.b(z2 ? iB : iC, z2 ? iC : iB);
            i5++;
            if (zB2 != zB) {
                double d2 = i5;
                i = iC2;
                z = z2;
                double d3 = i6;
                java.lang.Double.isNaN(d3);
                if (d2 > java.lang.Math.ceil(d3 / 1.5d)) {
                    i7++;
                    i6 -= (i6 - i5) / i7;
                    zB = zB2;
                    i5 = 0;
                }
            } else {
                i = iC2;
                z = z2;
            }
            i2 += iAbs2;
            if (i2 > 0) {
                if (iB == iB2) {
                    break;
                }
                iB += i3;
                i2 -= iAbs;
            }
            iC += i4;
            c0172lb = this;
            z2 = z;
            iC2 = i;
        }
        return i7;
    }

    public static com.huawei.hms.scankit.aiscan.common.z a(com.huawei.hms.scankit.aiscan.common.z zVar, float f2, float f3) {
        float fB = zVar.b();
        float fC = zVar.c();
        return new com.huawei.hms.scankit.aiscan.common.z(fB < f2 ? fB - 1.0f : fB + 1.0f, fC < f3 ? fC - 1.0f : fC + 1.0f);
    }

    public static com.huawei.hms.scankit.aiscan.common.z a(com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2, int i) {
        float f2 = i + 1;
        return new com.huawei.hms.scankit.aiscan.common.z(zVar.b() + ((zVar2.b() - zVar.b()) / f2), zVar.c() + ((zVar2.c() - zVar.c()) / f2));
    }

    private com.huawei.hms.scankit.aiscan.common.z a(com.huawei.hms.scankit.aiscan.common.z[] zVarArr) {
        com.huawei.hms.scankit.aiscan.common.z zVar = zVarArr[0];
        com.huawei.hms.scankit.aiscan.common.z zVar2 = zVarArr[1];
        com.huawei.hms.scankit.aiscan.common.z zVar3 = zVarArr[2];
        com.huawei.hms.scankit.aiscan.common.z zVar4 = zVarArr[3];
        int iA = a(zVar, zVar4);
        com.huawei.hms.scankit.aiscan.common.z zVarA = a(zVar, zVar2, (a(zVar2, zVar4) + 1) * 4);
        com.huawei.hms.scankit.aiscan.common.z zVarA2 = a(zVar3, zVar2, (iA + 1) * 4);
        int iA2 = a(zVarA, zVar4);
        int iA3 = a(zVarA2, zVar4);
        float f2 = iA2 + 1;
        com.huawei.hms.scankit.aiscan.common.z zVar5 = new com.huawei.hms.scankit.aiscan.common.z(((zVar3.b() - zVar2.b()) / f2) + zVar4.b(), ((zVar3.c() - zVar2.c()) / f2) + zVar4.c());
        float f3 = iA3 + 1;
        com.huawei.hms.scankit.aiscan.common.z zVar6 = new com.huawei.hms.scankit.aiscan.common.z(((zVar.b() - zVar2.b()) / f3) + zVar4.b(), ((zVar.c() - zVar2.c()) / f3) + zVar4.c());
        if (a(zVar5)) {
            return (a(zVar6) && a(zVarA, zVar5) + a(zVarA2, zVar5) <= a(zVarA, zVar6) + a(zVarA2, zVar6)) ? zVar6 : zVar5;
        }
        if (a(zVar6)) {
            return zVar6;
        }
        return null;
    }

    public static com.huawei.hms.scankit.p.C0122bb a(com.huawei.hms.scankit.p.C0122bb c0122bb, com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2, com.huawei.hms.scankit.aiscan.common.z zVar3, com.huawei.hms.scankit.aiscan.common.z zVar4, int i, int i2) {
        float f2 = i - 0.5f;
        float f3 = i2 - 0.5f;
        return com.huawei.hms.scankit.aiscan.common.j.a().a(c0122bb, i, i2, 0.5f, 0.5f, f2, 0.5f, f2, f3, 0.5f, f3, zVar.b(), zVar.c(), zVar4.b(), zVar4.c(), zVar3.b(), zVar3.c(), zVar2.b(), zVar2.c());
    }

    private boolean a(com.huawei.hms.scankit.aiscan.common.z zVar) {
        return zVar.b() >= 0.0f && zVar.b() < ((float) this.a.d()) && zVar.c() > 0.0f && zVar.c() < ((float) this.a.b());
    }

    private com.huawei.hms.scankit.aiscan.common.z[] b(com.huawei.hms.scankit.aiscan.common.z[] zVarArr) {
        com.huawei.hms.scankit.aiscan.common.z zVar = zVarArr[0];
        com.huawei.hms.scankit.aiscan.common.z zVar2 = zVarArr[1];
        com.huawei.hms.scankit.aiscan.common.z zVar3 = zVarArr[3];
        com.huawei.hms.scankit.aiscan.common.z zVar4 = zVarArr[2];
        int iA = a(zVar, zVar2);
        int iA2 = a(zVar2, zVar3);
        int iA3 = a(zVar3, zVar4);
        int iA4 = a(zVar4, zVar);
        com.huawei.hms.scankit.aiscan.common.z[] zVarArr2 = {zVar4, zVar, zVar2, zVar3};
        if (iA > iA2) {
            zVarArr2[0] = zVar;
            zVarArr2[1] = zVar2;
            zVarArr2[2] = zVar3;
            zVarArr2[3] = zVar4;
            iA = iA2;
        }
        if (iA > iA3) {
            zVarArr2[0] = zVar2;
            zVarArr2[1] = zVar3;
            zVarArr2[2] = zVar4;
            zVarArr2[3] = zVar;
        } else {
            iA3 = iA;
        }
        if (iA3 > iA4) {
            zVarArr2[0] = zVar3;
            zVarArr2[1] = zVar4;
            zVarArr2[2] = zVar;
            zVarArr2[3] = zVar2;
        }
        return zVarArr2;
    }

    private com.huawei.hms.scankit.aiscan.common.z[] c(com.huawei.hms.scankit.aiscan.common.z[] zVarArr) {
        com.huawei.hms.scankit.aiscan.common.z zVar = zVarArr[0];
        com.huawei.hms.scankit.aiscan.common.z zVar2 = zVarArr[1];
        com.huawei.hms.scankit.aiscan.common.z zVar3 = zVarArr[2];
        com.huawei.hms.scankit.aiscan.common.z zVar4 = zVarArr[3];
        int iA = (a(zVar, zVar4) + 1) * 4;
        if (a(a(zVar2, zVar3, iA), zVar) < a(a(zVar3, zVar2, iA), zVar4)) {
            zVarArr[0] = zVar;
            zVarArr[1] = zVar2;
            zVarArr[2] = zVar3;
            zVarArr[3] = zVar4;
        } else {
            zVarArr[0] = zVar2;
            zVarArr[1] = zVar3;
            zVarArr[2] = zVar4;
            zVarArr[3] = zVar;
        }
        return zVarArr;
    }

    private com.huawei.hms.scankit.aiscan.common.z[] d(com.huawei.hms.scankit.aiscan.common.z[] zVarArr) {
        com.huawei.hms.scankit.aiscan.common.z zVar = zVarArr[0];
        com.huawei.hms.scankit.aiscan.common.z zVar2 = zVarArr[1];
        com.huawei.hms.scankit.aiscan.common.z zVar3 = zVarArr[2];
        com.huawei.hms.scankit.aiscan.common.z zVar4 = zVarArr[3];
        int iA = a(zVar, zVar4) + 1;
        com.huawei.hms.scankit.aiscan.common.z zVarA = a(zVar, zVar2, (a(zVar3, zVar4) + 1) * 4);
        com.huawei.hms.scankit.aiscan.common.z zVarA2 = a(zVar3, zVar2, iA * 4);
        int iA2 = a(zVarA, zVar4) + 1;
        int iA3 = a(zVarA2, zVar4) + 1;
        if ((iA2 & 1) == 1) {
            iA2++;
        }
        if ((iA3 & 1) == 1) {
            iA3++;
        }
        float fB = (zVar4.b() + (zVar3.b() + (zVar2.b() + zVar.b()))) / 4.0f;
        float fC = (zVar4.c() + (zVar3.c() + (zVar2.c() + zVar.c()))) / 4.0f;
        com.huawei.hms.scankit.aiscan.common.z zVarA3 = a(zVar, fB, fC);
        com.huawei.hms.scankit.aiscan.common.z zVarA4 = a(zVar2, fB, fC);
        com.huawei.hms.scankit.aiscan.common.z zVarA5 = a(zVar3, fB, fC);
        com.huawei.hms.scankit.aiscan.common.z zVarA6 = a(zVar4, fB, fC);
        int i = iA3 * 4;
        int i2 = iA2 * 4;
        return new com.huawei.hms.scankit.aiscan.common.z[]{a(a(zVarA3, zVarA4, i), zVarA6, i2), a(a(zVarA4, zVarA3, i), zVarA5, i2), a(a(zVarA5, zVarA6, i), zVarA4, i2), a(a(zVarA6, zVarA5, i), zVarA3, i2)};
    }

    public com.huawei.hms.scankit.aiscan.common.g a() throws com.huawei.hms.scankit.aiscan.common.C0102a {
        int iMax;
        int i;
        com.huawei.hms.scankit.aiscan.common.z[] zVarArrC = c(b(this.b.a()));
        zVarArrC[3] = a(zVarArrC);
        if (zVarArrC[3] == null) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        com.huawei.hms.scankit.aiscan.common.z[] zVarArrD = d(zVarArrC);
        com.huawei.hms.scankit.aiscan.common.z zVar = zVarArrD[0];
        com.huawei.hms.scankit.aiscan.common.z zVar2 = zVarArrD[1];
        com.huawei.hms.scankit.aiscan.common.z zVar3 = zVarArrD[2];
        com.huawei.hms.scankit.aiscan.common.z zVar4 = zVarArrD[3];
        int iA = a(zVar, zVar4) + 1;
        int iA2 = a(zVar3, zVar4) + 1;
        if ((iA & 1) == 1) {
            iA++;
        }
        if ((iA2 & 1) == 1) {
            iA2++;
        }
        if (iA * 4 >= iA2 * 7 || iA2 * 4 >= iA * 7) {
            iMax = iA;
            i = iA2;
        } else {
            iMax = java.lang.Math.max(iA, iA2);
            i = iMax;
        }
        return new com.huawei.hms.scankit.aiscan.common.g(a(this.a, zVar, zVar2, zVar3, zVar4, iMax, i), new com.huawei.hms.scankit.aiscan.common.z[]{zVar, zVar2, zVar3, zVar4});
    }
}
