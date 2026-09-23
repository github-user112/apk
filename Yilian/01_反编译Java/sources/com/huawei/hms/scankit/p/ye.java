package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class ye implements com.huawei.hms.scankit.p.we {
    public final float a;
    public final float b;

    public ye(float f2, float f3) {
        this.b = f2;
        this.a = f3;
    }

    @Override // com.huawei.hms.scankit.p.we
    public void a(com.huawei.hms.scankit.p.qe qeVar) {
        float fA = this.a;
        float f2 = this.b;
        if (fA != f2) {
            fA = com.huawei.hms.scankit.p.ze.a(fA - f2) + this.b;
        }
        qeVar.b(fA);
        qeVar.a(fA);
    }
}
