package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.yc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0237yc implements com.huawei.hms.scankit.aiscan.common.t {
    public final com.huawei.hms.scankit.p.C0188oc a = new com.huawei.hms.scankit.p.C0188oc();

    private int a(com.huawei.hms.scankit.aiscan.common.g gVar) {
        com.huawei.hms.scankit.p.Bc.f493e = gVar.c();
        com.huawei.hms.scankit.p.C0122bb c0122bbA = gVar.a();
        int[] iArr = {3, c0122bbA.d() - 4, 3};
        int[] iArr2 = {3, 3, c0122bbA.b() - 4};
        int i = 0;
        for (int i2 = 0; i2 < 3; i2++) {
            if (a(c0122bbA, iArr[i2], iArr2[i2])) {
                i++;
            }
        }
        return i;
    }

    public static void a(com.huawei.hms.scankit.aiscan.common.m mVar) {
        int iA = mVar.a();
        if (iA == mVar.c() && iA == 805) {
            com.huawei.hms.scankit.p.Bc.q[0] = true;
        }
    }

    public static void a(com.huawei.hms.scankit.aiscan.common.m mVar, com.huawei.hms.scankit.aiscan.common.x xVar) {
        boolean z;
        int iA = mVar.a();
        int iC = mVar.c();
        while (true) {
            if (com.huawei.hms.scankit.p.Bc.r.size() == 0) {
                z = false;
                break;
            }
            int iIntValue = com.huawei.hms.scankit.p.Bc.r.pop().intValue();
            if (iIntValue != 0 && iA % iIntValue == 0) {
                z = true;
                break;
            }
        }
        if (!(iA == iC && z) || xVar == null || xVar.h() == null) {
            return;
        }
        double dMax = (java.lang.Math.max(java.lang.Math.max(xVar.h()[0].c(), xVar.h()[1].c()), xVar.h()[2].c()) - java.lang.Math.min(java.lang.Math.min(xVar.h()[0].c(), xVar.h()[1].c()), xVar.h()[2].c())) * (java.lang.Math.max(java.lang.Math.max(xVar.h()[0].b(), xVar.h()[1].b()), xVar.h()[2].b()) - java.lang.Math.min(java.lang.Math.min(xVar.h()[0].b(), xVar.h()[1].b()), xVar.h()[2].b()));
        double d2 = iA * iC;
        java.lang.Double.isNaN(d2);
        if (dMax > d2 * 0.8d) {
            com.huawei.hms.scankit.p.Bc.q[1] = true;
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [boolean, int] */
    private boolean a(com.huawei.hms.scankit.p.C0122bb c0122bb, int i, int i2) {
        if (c0122bb == null || c0122bb.b() < 21 || c0122bb.d() < 21) {
            return false;
        }
        ?? B = c0122bb.b(i, i2);
        int i3 = B;
        if (c0122bb.b(i + 1, i2)) {
            i3 = B + 1;
        }
        int i4 = i3;
        if (!c0122bb.b(i + 2, i2)) {
            i4 = i3 + 1;
        }
        int i5 = i4;
        if (c0122bb.b(i + 3, i2)) {
            i5 = i4 + 1;
        }
        int i6 = i5;
        if (c0122bb.b(i - 1, i2)) {
            i6 = i5 + 1;
        }
        int i7 = i6;
        if (!c0122bb.b(i - 2, i2)) {
            i7 = i6 + 1;
        }
        int i8 = i7;
        if (c0122bb.b(i - 3, i2)) {
            i8 = i7 + 1;
        }
        int i9 = i8;
        if (c0122bb.b(i, i2 + 1)) {
            i9 = i8 + 1;
        }
        int i10 = i9;
        if (!c0122bb.b(i, i2 + 2)) {
            i10 = i9 + 1;
        }
        int i11 = i10;
        if (c0122bb.b(i, i2 + 3)) {
            i11 = i10 + 1;
        }
        int i12 = i11;
        if (c0122bb.b(i, i2 - 1)) {
            i12 = i11 + 1;
        }
        int i13 = i12;
        if (!c0122bb.b(i, i2 - 2)) {
            i13 = i12 + 1;
        }
        int i14 = i13;
        if (c0122bb.b(i, i2 - 3)) {
            i14 = i13 + 1;
        }
        return i14 > 10;
    }

    @Override // com.huawei.hms.scankit.aiscan.common.t
    public final com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.aiscan.common.C0106e c0106eA;
        boolean z = true;
        com.huawei.hms.scankit.p.Bc.f494f++;
        try {
            com.huawei.hms.scankit.aiscan.common.g gVarA = new com.huawei.hms.scankit.p.C0193pc(_aVar.b()).a(map);
            int iA = a(gVarA);
            boolean z2 = iA > 0;
            try {
                c0106eA = this.a.a(gVarA.a(), map);
                z = false;
            } catch (java.lang.Exception unused) {
                c0106eA = null;
            }
            if (com.huawei.hms.scankit.p.Bc.f491c) {
                if (z && iA >= 2) {
                    return new com.huawei.hms.scankit.aiscan.common.x(null, null, gVarA.b(), com.huawei.hms.scankit.aiscan.common.BarcodeFormat.QR_CODE);
                }
            } else if (z && z2) {
                return new com.huawei.hms.scankit.aiscan.common.x(null, null, gVarA.b(), com.huawei.hms.scankit.aiscan.common.BarcodeFormat.QR_CODE);
            }
            if (z) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
            }
            if (c0106eA == null) {
                return null;
            }
            com.huawei.hms.scankit.aiscan.common.z[] zVarArrD = gVarA.d();
            if (c0106eA.b() instanceof com.huawei.hms.scankit.p.C0232xc) {
                ((com.huawei.hms.scankit.p.C0232xc) c0106eA.b()).a(zVarArrD);
            }
            com.huawei.hms.scankit.aiscan.common.x xVar = new com.huawei.hms.scankit.aiscan.common.x(c0106eA.d(), c0106eA.c(), zVarArrD, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.QR_CODE);
            xVar.b(gVarA.b());
            return xVar;
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a unused2) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
    }
}
