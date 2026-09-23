package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class B {
    public static java.util.Map<java.lang.String, com.huawei.hms.scankit.p.F> a = new java.util.HashMap();
    public static com.huawei.hms.scankit.p.B b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.scankit.p.E f490c = new com.huawei.hms.scankit.p.E();

    public static com.huawei.hms.scankit.p.B a() {
        if (b == null) {
            d();
        }
        return b;
    }

    public static synchronized void d() {
        if (b == null) {
            b = new com.huawei.hms.scankit.p.B();
        }
    }

    public com.huawei.hms.scankit.p.F a(java.lang.String str) {
        return a.get(str);
    }

    public void a(java.lang.String str, com.huawei.hms.scankit.p.F f2) {
        a.put(str, f2);
    }

    public java.util.Set<java.lang.String> b() {
        return a.keySet();
    }

    public com.huawei.hms.scankit.p.E c() {
        return this.f490c;
    }
}
