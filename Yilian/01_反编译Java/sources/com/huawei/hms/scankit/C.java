package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class C implements com.huawei.hms.scankit.p.Aa.d {
    public com.huawei.hms.scankit.m a;

    public C(com.huawei.hms.scankit.m mVar) {
        this.a = mVar;
    }

    @Override // com.huawei.hms.scankit.p.Aa.d
    public void a(byte[] bArr) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("request frame time:");
        sbO.append(java.lang.System.currentTimeMillis());
        com.huawei.hms.scankit.util.a.a("scan-time", sbO.toString());
        this.a.a().obtainMessage(com.huawei.hms.scankit.R.id.scankit_decode, bArr).sendToTarget();
    }
}
