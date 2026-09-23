package com.huawei.hms.framework.network.grs.c;

/* loaded from: classes.dex */
public class b {
    public com.huawei.hms.framework.network.grs.c.f a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.framework.network.grs.c.a f303c;

    /* renamed from: d, reason: collision with root package name */
    public int f304d;

    /* renamed from: e, reason: collision with root package name */
    public android.content.Context f305e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f306f;

    /* renamed from: g, reason: collision with root package name */
    public com.huawei.hms.framework.network.grs.GrsBaseInfo f307g;
    public com.huawei.hms.framework.network.grs.a.c h;

    public enum a {
        GRSPOST,
        GRSGET,
        GRSDEFAULT
    }

    public b(java.lang.String str, int i, com.huawei.hms.framework.network.grs.c.a aVar, android.content.Context context, java.lang.String str2, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, com.huawei.hms.framework.network.grs.a.c cVar) {
        this.b = str;
        this.f303c = aVar;
        this.f304d = i;
        this.f305e = context;
        this.f306f = str2;
        this.f307g = grsBaseInfo;
        this.h = cVar;
    }

    private java.lang.String a(java.lang.String str) {
        return android.net.Uri.parse(str).getPath();
    }

    private com.huawei.hms.framework.network.grs.c.b.a h() {
        if (this.b.isEmpty()) {
            return com.huawei.hms.framework.network.grs.c.b.a.GRSDEFAULT;
        }
        java.lang.String strA = a(this.b);
        return strA.contains("1.0") ? com.huawei.hms.framework.network.grs.c.b.a.GRSGET : strA.contains(com.umeng.commonsdk.internal.crash.UMCrashManager.CM_VERSION) ? com.huawei.hms.framework.network.grs.c.b.a.GRSPOST : com.huawei.hms.framework.network.grs.c.b.a.GRSDEFAULT;
    }

    public com.huawei.hms.framework.network.grs.c.a a() {
        return this.f303c;
    }

    public android.content.Context b() {
        return this.f305e;
    }

    public java.lang.String c() {
        return this.b;
    }

    public int d() {
        return this.f304d;
    }

    public java.lang.String e() {
        return this.f306f;
    }

    public com.huawei.hms.framework.network.grs.a.c f() {
        return this.h;
    }

    public java.util.concurrent.Callable<com.huawei.hms.framework.network.grs.c.f> g() {
        if (com.huawei.hms.framework.network.grs.c.b.a.GRSDEFAULT.equals(h())) {
            return null;
        }
        return com.huawei.hms.framework.network.grs.c.b.a.GRSGET.equals(h()) ? new com.huawei.hms.framework.network.grs.c.i(this.b, this.f304d, this.f303c, this.f305e, this.f306f, this.f307g) : new com.huawei.hms.framework.network.grs.c.j(this.b, this.f304d, this.f303c, this.f305e, this.f306f, this.f307g, this.h);
    }
}
