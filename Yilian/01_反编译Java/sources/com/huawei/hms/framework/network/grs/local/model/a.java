package com.huawei.hms.framework.network.grs.local.model;

/* loaded from: classes.dex */
public class a {
    public java.lang.String a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public java.util.Map<java.lang.String, com.huawei.hms.framework.network.grs.local.model.c> f340c = new java.util.HashMap(16);

    public com.huawei.hms.framework.network.grs.local.model.c a(java.lang.String str) {
        return this.f340c.get(str);
    }

    public void a() {
        java.util.Map<java.lang.String, com.huawei.hms.framework.network.grs.local.model.c> map = this.f340c;
        if (map != null) {
            map.clear();
        }
    }

    public void a(long j) {
        this.b = j;
    }

    public void a(java.lang.String str, com.huawei.hms.framework.network.grs.local.model.c cVar) {
        this.f340c.put(str, cVar);
    }

    public java.lang.String b() {
        return this.a;
    }

    public void b(java.lang.String str) {
        this.a = str;
    }
}
