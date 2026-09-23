package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class F {
    public com.huawei.hms.scankit.p.D a;
    public com.huawei.hms.scankit.p.D b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.scankit.p.D f518c;

    /* renamed from: d, reason: collision with root package name */
    public com.huawei.hms.scankit.p.D f519d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f520e;

    public F(java.lang.String str) {
        this.f520e = str;
    }

    public com.huawei.hms.scankit.p.D a() {
        return this.a;
    }

    public com.huawei.hms.scankit.p.D a(java.lang.String str) {
        if (str.equals("oper")) {
            return b();
        }
        if (str.equals("maint")) {
            return a();
        }
        if (str.equals("diffprivacy")) {
            return d();
        }
        if (str.equals("preins")) {
            return c();
        }
        com.huawei.hms.scankit.p.T.c("hmsSdk", "HiAnalyticsInstData.getConfig(type): wrong type: " + str);
        return null;
    }

    public void a(com.huawei.hms.scankit.p.D d2) {
        this.a = d2;
    }

    public com.huawei.hms.scankit.p.D b() {
        return this.b;
    }

    public void b(com.huawei.hms.scankit.p.D d2) {
        this.b = d2;
    }

    public com.huawei.hms.scankit.p.D c() {
        return this.f519d;
    }

    public com.huawei.hms.scankit.p.D d() {
        return this.f518c;
    }
}
