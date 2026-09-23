package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ta, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0210ta {
    public com.huawei.hms.scankit.p.D a;
    public com.huawei.hms.scankit.p.D b;

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f820c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f821d;

    public C0210ta(android.content.Context context) {
        if (context != null) {
            this.f820c = context.getApplicationContext();
        }
        this.a = new com.huawei.hms.scankit.p.D();
        this.b = new com.huawei.hms.scankit.p.D();
    }

    public com.huawei.hms.scankit.p.C0210ta a(int i, java.lang.String str) {
        com.huawei.hms.scankit.p.D d2;
        com.huawei.hms.scankit.p.T.b("hmsSdk", "Builder.setCollectURL(int type,String collectURL) is execute.TYPE : " + i);
        if (!com.huawei.hms.scankit.p.C0185o.a(str)) {
            str = "";
        }
        if (i == 0) {
            d2 = this.a;
        } else {
            if (i != 1) {
                com.huawei.hms.scankit.p.T.c("hmsSdk", "Builder.setCollectURL(int type,String collectURL): invalid type!");
                return this;
            }
            d2 = this.b;
        }
        d2.b(str);
        return this;
    }

    @java.lang.Deprecated
    public com.huawei.hms.scankit.p.C0210ta a(boolean z) {
        com.huawei.hms.scankit.p.T.b("hmsSdk", "Builder.setEnableImei(boolean isReportAndroidImei) is execute.");
        this.a.j().a(z);
        this.b.j().a(z);
        return this;
    }

    public void a() {
        if (this.f820c == null) {
            com.huawei.hms.scankit.p.T.d("hmsSdk", "analyticsConf create(): context is null,create failed!");
            return;
        }
        com.huawei.hms.scankit.p.T.b("hmsSdk", "Builder.create() is execute.");
        com.huawei.hms.scankit.p.C0196qa c0196qa = new com.huawei.hms.scankit.p.C0196qa("_hms_config_tag");
        c0196qa.b(new com.huawei.hms.scankit.p.D(this.a));
        c0196qa.a(new com.huawei.hms.scankit.p.D(this.b));
        com.huawei.hms.scankit.p.C0186oa.a().a(this.f820c);
        com.huawei.hms.scankit.p.C0191pa.a().a(this.f820c);
        com.huawei.hms.scankit.p.C0220va.a.a(c0196qa);
        com.huawei.hms.scankit.p.C0186oa.a().a(this.f821d);
    }

    public com.huawei.hms.scankit.p.C0210ta b(boolean z) {
        com.huawei.hms.scankit.p.T.a("hmsSdk", "Builder.setEnableUUID() is executed.");
        this.a.c(z);
        this.b.c(z);
        return this;
    }
}
