package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Wd implements com.huawei.hms.scankit.p.InterfaceC0199qd {
    public final com.huawei.hms.scankit.p.Sd a = new com.huawei.hms.scankit.p.Sd();

    @Override // com.huawei.hms.scankit.p.InterfaceC0199qd
    public com.huawei.hms.scankit.p.C0122bb a(java.lang.String str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat barcodeFormat, int i, int i2, java.util.Map<com.huawei.hms.scankit.p.ke, ?> map) {
        if (barcodeFormat != com.huawei.hms.scankit.aiscan.common.BarcodeFormat.UPC_A) {
            throw new java.lang.IllegalArgumentException("Can only encode UPC-A, but got " + barcodeFormat);
        }
        return this.a.a('0' + str, com.huawei.hms.scankit.aiscan.common.BarcodeFormat.EAN_13, i, i2, map);
    }
}
