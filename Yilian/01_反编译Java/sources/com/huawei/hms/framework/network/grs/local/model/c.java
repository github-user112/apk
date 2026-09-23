package com.huawei.hms.framework.network.grs.local.model;

/* loaded from: classes.dex */
public class c {
    public java.lang.String a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.util.Map<java.lang.String, com.huawei.hms.framework.network.grs.local.model.d> f343c = new java.util.HashMap(16);

    /* renamed from: d, reason: collision with root package name */
    public java.util.List<com.huawei.hms.framework.network.grs.local.model.b> f344d = new java.util.ArrayList(16);

    public com.huawei.hms.framework.network.grs.local.model.d a(java.lang.String str) {
        return this.f343c.get(str);
    }

    public java.util.List<com.huawei.hms.framework.network.grs.local.model.b> a() {
        return this.f344d;
    }

    public void a(java.lang.String str, com.huawei.hms.framework.network.grs.local.model.d dVar) {
        this.f343c.put(str, dVar);
    }

    public void a(java.util.List<com.huawei.hms.framework.network.grs.local.model.b> list) {
        this.f344d = list;
    }

    public java.lang.String b() {
        return this.b;
    }

    public void b(java.lang.String str) {
        this.a = str;
    }

    public void c(java.lang.String str) {
        this.b = str;
    }
}
