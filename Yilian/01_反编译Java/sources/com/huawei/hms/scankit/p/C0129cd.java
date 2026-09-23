package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.cd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0129cd extends com.huawei.hms.scankit.p.AbstractC0149gd {
    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        if (com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()) != com.huawei.hms.ml.scan.HmsScanBase.EAN13_SCAN_TYPE) {
            return null;
        }
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (strA.length() != 13) {
            return null;
        }
        if (strA.startsWith("978") || strA.startsWith("979")) {
            return new com.huawei.hms.ml.scan.HmsScan(xVar.i(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), strA, com.huawei.hms.ml.scan.HmsScan.ISBN_NUMBER_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, null);
        }
        return null;
    }
}
