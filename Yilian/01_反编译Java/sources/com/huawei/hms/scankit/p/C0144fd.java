package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.fd, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0144fd extends com.huawei.hms.scankit.p.AbstractC0149gd {
    @Override // com.huawei.hms.scankit.p.AbstractC0149gd
    public com.huawei.hms.ml.scan.HmsScan b(com.huawei.hms.scankit.aiscan.common.x xVar) {
        int iA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b());
        if (iA != com.huawei.hms.ml.scan.HmsScanBase.EAN13_SCAN_TYPE && iA != com.huawei.hms.ml.scan.HmsScanBase.EAN8_SCAN_TYPE && iA != com.huawei.hms.ml.scan.HmsScanBase.UPCCODE_A_SCAN_TYPE && iA != com.huawei.hms.ml.scan.HmsScanBase.UPCCODE_E_SCAN_TYPE) {
            return null;
        }
        java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar);
        if (com.huawei.hms.scankit.p.AbstractC0149gd.a(strA, strA.length())) {
            return new com.huawei.hms.ml.scan.HmsScan(strA, com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.b()), strA, com.huawei.hms.ml.scan.HmsScan.ARTICLE_NUMBER_FORM, xVar.g(), com.huawei.hms.scankit.p.AbstractC0149gd.a(xVar.h()), null, null);
        }
        return null;
    }
}
