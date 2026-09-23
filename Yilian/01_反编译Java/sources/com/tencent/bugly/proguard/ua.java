package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class ua extends com.tencent.bugly.proguard.AbstractC0254m {
    public static byte[] a = {0};
    public static java.util.Map<java.lang.String, java.lang.String> b;

    /* renamed from: c, reason: collision with root package name */
    public byte f1154c = 0;

    /* renamed from: d, reason: collision with root package name */
    public int f1155d = 0;

    /* renamed from: e, reason: collision with root package name */
    public byte[] f1156e = null;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f1157f = "";

    /* renamed from: g, reason: collision with root package name */
    public long f1158g = 0;
    public java.lang.String h = "";
    public java.lang.String i = "";
    public java.util.Map<java.lang.String, java.lang.String> j = null;

    static {
        java.util.HashMap map = new java.util.HashMap();
        b = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.f1154c = c0252k.a(this.f1154c, 0, true);
        this.f1155d = c0252k.a(this.f1155d, 1, true);
        this.f1156e = c0252k.a(a, 2, false);
        this.f1157f = c0252k.a(3, false);
        this.f1158g = c0252k.a(this.f1158g, 4, false);
        this.h = c0252k.a(5, false);
        this.i = c0252k.a(6, false);
        this.j = (java.util.Map) c0252k.a((com.tencent.bugly.proguard.C0252k) b, 7, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.f1154c, 0);
        c0253l.a(this.f1155d, 1);
        byte[] bArr = this.f1156e;
        if (bArr != null) {
            c0253l.a(bArr, 2);
        }
        java.lang.String str = this.f1157f;
        if (str != null) {
            c0253l.a(str, 3);
        }
        c0253l.a(this.f1158g, 4);
        java.lang.String str2 = this.h;
        if (str2 != null) {
            c0253l.a(str2, 5);
        }
        java.lang.String str3 = this.i;
        if (str3 != null) {
            c0253l.a(str3, 6);
        }
        java.util.Map<java.lang.String, java.lang.String> map = this.j;
        if (map != null) {
            c0253l.a((java.util.Map) map, 7);
        }
    }
}
