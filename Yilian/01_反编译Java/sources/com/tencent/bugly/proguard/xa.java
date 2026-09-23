package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class xa extends com.tencent.bugly.proguard.AbstractC0254m {
    public static java.util.Map<java.lang.String, java.lang.String> a;
    public long b = 0;

    /* renamed from: c, reason: collision with root package name */
    public byte f1169c = 0;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f1170d = "";

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f1171e = "";

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f1172f = "";

    /* renamed from: g, reason: collision with root package name */
    public java.util.Map<java.lang.String, java.lang.String> f1173g = null;
    public java.lang.String h = "";
    public boolean i = true;

    static {
        java.util.HashMap map = new java.util.HashMap();
        a = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.b = c0252k.a(this.b, 0, true);
        this.f1169c = c0252k.a(this.f1169c, 1, true);
        this.f1170d = c0252k.a(2, false);
        this.f1171e = c0252k.a(3, false);
        this.f1172f = c0252k.a(4, false);
        this.f1173g = (java.util.Map) c0252k.a((com.tencent.bugly.proguard.C0252k) a, 5, false);
        this.h = c0252k.a(6, false);
        this.i = c0252k.a(this.i, 7, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.b, 0);
        c0253l.a(this.f1169c, 1);
        java.lang.String str = this.f1170d;
        if (str != null) {
            c0253l.a(str, 2);
        }
        java.lang.String str2 = this.f1171e;
        if (str2 != null) {
            c0253l.a(str2, 3);
        }
        java.lang.String str3 = this.f1172f;
        if (str3 != null) {
            c0253l.a(str3, 4);
        }
        java.util.Map<java.lang.String, java.lang.String> map = this.f1173g;
        if (map != null) {
            c0253l.a((java.util.Map) map, 5);
        }
        java.lang.String str4 = this.h;
        if (str4 != null) {
            c0253l.a(str4, 6);
        }
        c0253l.a(this.i, 7);
    }
}
