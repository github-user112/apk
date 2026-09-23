package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Hc extends com.huawei.hms.scankit.p.Qc {
    public int h;
    public java.lang.String i;
    public java.lang.String j;

    public Hc(android.os.Bundle bundle, java.lang.String str) {
        super(bundle, com.huawei.hms.feature.DynamicModuleInitializer.getContext().getApplicationContext());
        this.h = -1001;
        this.i = com.huawei.hms.scankit.p.Qc.a;
        this.j = com.huawei.hms.scankit.p.Qc.b;
        this.f621f.put("callTime", new com.huawei.hms.scankit.p.Fc(this, "yyyyMMddHHmmss.SSS").format(java.lang.Long.valueOf(java.lang.System.currentTimeMillis())));
        this.f621f.put("transId", java.util.UUID.randomUUID().toString());
        this.f621f.put("apiName", str);
    }

    private void f() {
        this.h = -1001;
        this.i = com.huawei.hms.scankit.p.Qc.a;
        this.j = com.huawei.hms.scankit.p.Qc.b;
    }

    public void a(com.huawei.hms.ml.scan.HmsScan[] hmsScanArr) {
        if (hmsScanArr != null) {
            this.h = hmsScanArr.length;
            for (com.huawei.hms.ml.scan.HmsScan hmsScan : hmsScanArr) {
                this.i = com.huawei.hms.scankit.p.Qc.a(hmsScan.scanType);
                this.j = com.huawei.hms.scankit.p.Qc.b(hmsScan.scanTypeForm);
            }
        }
    }

    public void b() {
        this.f622g = java.lang.System.currentTimeMillis();
    }

    public void c() {
        java.lang.String str;
        try {
            if (a()) {
                com.huawei.hms.scankit.p.Gc gc = new com.huawei.hms.scankit.p.Gc(this);
                gc.put("result", java.lang.String.valueOf(this.h));
                gc.put("costTime", java.lang.String.valueOf(java.lang.System.currentTimeMillis() - this.f622g));
                gc.put("scanType", this.i);
                gc.put("sceneType", this.j);
                com.huawei.hms.scankit.p.Tc.a().a("60000", gc);
                f();
            }
        } catch (java.lang.NullPointerException unused) {
            str = "nullPoint";
            com.huawei.hms.scankit.util.a.b("HaLog60000", str);
        } catch (java.lang.Exception unused2) {
            str = "logEnd Exception";
            com.huawei.hms.scankit.util.a.b("HaLog60000", str);
        }
    }

    public void c(int i) {
        this.h = i;
    }
}
