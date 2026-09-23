package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.hb, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0152hb implements com.huawei.hms.scankit.aiscan.common.t {
    public static final com.huawei.hms.scankit.aiscan.common.z[] a = new com.huawei.hms.scankit.aiscan.common.z[0];
    public final com.huawei.hms.scankit.p.C0167kb b = new com.huawei.hms.scankit.p.C0167kb();

    @Override // com.huawei.hms.scankit.aiscan.common.t
    public com.huawei.hms.scankit.aiscan.common.x a(com.huawei.hms.scankit.p._a _aVar, java.util.Map<com.huawei.hms.scankit.aiscan.common.EnumC0105d, ?> map) throws java.lang.Exception {
        com.huawei.hms.scankit.aiscan.common.g gVarA = new com.huawei.hms.scankit.p.C0172lb(_aVar.b()).a();
        try {
            com.huawei.hms.scankit.aiscan.common.C0106e c0106eA = this.b.a(gVarA.a(), map);
            return new com.huawei.hms.scankit.aiscan.common.x(c0106eA.d(), c0106eA.c(), gVarA.d(), com.huawei.hms.scankit.aiscan.common.BarcodeFormat.DATA_MATRIX);
        } catch (com.huawei.hms.scankit.aiscan.common.C0102a e2) {
            if (gVarA.d() == null || com.huawei.hms.scankit.p.Bc.f491c) {
                throw e2;
            }
            double dSqrt = java.lang.Math.sqrt(java.lang.Math.pow(gVarA.d()[0].c() - gVarA.d()[1].c(), 2.0d) + java.lang.Math.pow(gVarA.d()[0].b() - gVarA.d()[1].b(), 2.0d));
            double dSqrt2 = java.lang.Math.sqrt(java.lang.Math.pow(gVarA.d()[0].c() - gVarA.d()[3].c(), 2.0d) + java.lang.Math.pow(gVarA.d()[0].b() - gVarA.d()[3].b(), 2.0d));
            if (this.b.a() == null || java.lang.Math.abs(dSqrt - dSqrt2) / dSqrt >= 0.1d) {
                throw e2;
            }
            return new com.huawei.hms.scankit.aiscan.common.x(null, null, gVarA.d(), com.huawei.hms.scankit.aiscan.common.BarcodeFormat.DATA_MATRIX);
        }
    }
}
