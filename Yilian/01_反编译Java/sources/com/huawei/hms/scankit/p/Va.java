package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Va implements com.huawei.hms.scankit.aiscan.common.t {
    @Override // com.huawei.hms.scankit.aiscan.common.t
    public com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws java.lang.Exception {
        com.huawei.hms.scankit.aiscan.common.z[] zVarArrD;
        com.huawei.hms.scankit.aiscan.common.A a;
        com.huawei.hms.scankit.p.Ya ya = new com.huawei.hms.scankit.p.Ya(_aVar.b());
        com.huawei.hms.scankit.aiscan.common.C0106e c0106eA = null;
        try {
            com.huawei.hms.scankit.p.Ua uaA = ya.a(false);
            zVarArrD = uaA.d();
            try {
                com.huawei.hms.scankit.aiscan.common.C0106e c0106eA2 = new com.huawei.hms.scankit.p.Xa().a(uaA, map);
                e = null;
                c0106eA = c0106eA2;
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a e2) {
                e = e2;
            }
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a e3) {
            e = e3;
            zVarArrD = null;
        }
        if (c0106eA == null) {
            try {
                com.huawei.hms.scankit.p.Ua uaA2 = ya.a(true);
                zVarArrD = uaA2.d();
                c0106eA = new com.huawei.hms.scankit.p.Xa().a(uaA2, map);
            } catch (com.huawei.hms.scankit.aiscan.common.C0102a e4) {
                if (zVarArrD != null && !com.huawei.hms.scankit.p.Bc.f491c) {
                    return new com.huawei.hms.scankit.aiscan.common.x(null, null, 0, (com.huawei.hms.scankit.aiscan.common.z[]) zVarArrD.clone(), com.huawei.hms.scankit.aiscan.common.BarcodeFormat.AZTEC, java.lang.System.currentTimeMillis());
                }
                if (e != null) {
                    throw e;
                }
                throw e4;
            }
        }
        com.huawei.hms.scankit.aiscan.common.z[] zVarArr = zVarArrD;
        if (map != null && (a = (com.huawei.hms.scankit.aiscan.common.A) map.get(com.huawei.hms.scankit.aiscan.common.EnumC0105d.NEED_RESULT_POINT_CALLBACK)) != null && zVarArr != null) {
            for (com.huawei.hms.scankit.aiscan.common.z zVar : zVarArr) {
                a.a(zVar);
            }
        }
        return new com.huawei.hms.scankit.aiscan.common.x(c0106eA.d(), c0106eA.c(), c0106eA.a(), zVarArr, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.AZTEC, java.lang.System.currentTimeMillis());
    }
}
