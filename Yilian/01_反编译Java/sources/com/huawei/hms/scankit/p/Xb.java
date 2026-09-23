package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Xb implements com.huawei.hms.scankit.aiscan.common.t {
    public static final com.huawei.hms.scankit.aiscan.common.x[] a = new com.huawei.hms.scankit.aiscan.common.x[0];

    public static int a(com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2) {
        if (zVar == null || zVar2 == null) {
            return 0;
        }
        return (int) java.lang.Math.abs(zVar.b() - zVar2.b());
    }

    public static int a(com.huawei.hms.scankit.aiscan.common.z[] zVarArr) {
        return java.lang.Math.max(java.lang.Math.max(a(zVarArr[0], zVarArr[4]), (a(zVarArr[6], zVarArr[2]) * 17) / 18), java.lang.Math.max(a(zVarArr[1], zVarArr[5]), (a(zVarArr[7], zVarArr[3]) * 17) / 18));
    }

    public static com.huawei.hms.scankit.aiscan.common.x[] a(com.huawei.hms.scankit.p._a _aVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map, boolean z) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        com.huawei.hms.scankit.p.Wb wbA = com.huawei.hms.scankit.p.Qb.a(_aVar, map, z);
        for (com.huawei.hms.scankit.aiscan.common.z[] zVarArr : wbA.b()) {
            com.huawei.hms.scankit.aiscan.common.C0106e c0106eA = com.huawei.hms.scankit.p.Zb.a(wbA.a(), zVarArr[4], zVarArr[5], zVarArr[6], zVarArr[7], b(zVarArr), a(zVarArr), map);
            if (com.huawei.hms.scankit.p.Qb.a()) {
                for (int i = 0; i < zVarArr.length; i++) {
                    if (zVarArr[i] != null) {
                        zVarArr[i] = new com.huawei.hms.scankit.aiscan.common.z((_aVar.e() - 1) - zVarArr[i].b(), (_aVar.c() - 1) - zVarArr[i].c());
                    }
                }
            }
            if (zVarArr.length != 8) {
                throw com.huawei.hms.scankit.aiscan.common.C0102a.a("pdf417 points size incorrect!");
            }
            if (zVarArr[0] == null && zVarArr[1] == null && zVarArr[4] == null && zVarArr[5] == null) {
                zVarArr[0] = zVarArr[6];
                zVarArr[1] = zVarArr[7];
                zVarArr[4] = zVarArr[2];
                zVarArr[5] = zVarArr[3];
            } else if (zVarArr[2] == null && zVarArr[3] == null && zVarArr[6] == null && zVarArr[7] == null) {
                zVarArr[2] = zVarArr[4];
                zVarArr[3] = zVarArr[5];
                zVarArr[6] = zVarArr[0];
                zVarArr[7] = zVarArr[1];
            }
            arrayList.add(new com.huawei.hms.scankit.aiscan.common.x(c0106eA.d(), c0106eA.c(), zVarArr, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.PDF_417));
        }
        return (com.huawei.hms.scankit.aiscan.common.x[]) arrayList.toArray(a);
    }

    public static int b(com.huawei.hms.scankit.aiscan.common.z zVar, com.huawei.hms.scankit.aiscan.common.z zVar2) {
        if (zVar == null || zVar2 == null) {
            return Integer.MAX_VALUE;
        }
        return (int) java.lang.Math.abs(zVar.b() - zVar2.b());
    }

    public static int b(com.huawei.hms.scankit.aiscan.common.z[] zVarArr) {
        return java.lang.Math.min(java.lang.Math.min(b(zVarArr[0], zVarArr[4]), (b(zVarArr[6], zVarArr[2]) * 17) / 18), java.lang.Math.min(b(zVarArr[1], zVarArr[5]), (b(zVarArr[7], zVarArr[3]) * 17) / 18));
    }

    @Override // com.huawei.hms.scankit.aiscan.common.t
    public com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        com.huawei.hms.scankit.aiscan.common.x[] xVarArrA = a(_aVar, map, false);
        if (xVarArrA.length == 0 || xVarArrA[0] == null) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        return xVarArrA[0];
    }
}
