package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class ya extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public static java.util.ArrayList<com.tencent.bugly.proguard.xa> a;
    public static java.util.Map<java.lang.String, java.lang.String> b;

    /* renamed from: c, reason: collision with root package name */
    public byte f1179c = 0;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f1180d = "";

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f1181e = "";

    /* renamed from: f, reason: collision with root package name */
    public java.util.ArrayList<com.tencent.bugly.proguard.xa> f1182f = null;

    /* renamed from: g, reason: collision with root package name */
    public java.util.Map<java.lang.String, java.lang.String> f1183g = null;

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.f1179c = c0252k.a(this.f1179c, 0, true);
        this.f1180d = c0252k.a(1, false);
        this.f1181e = c0252k.a(2, false);
        if (a == null) {
            a = new java.util.ArrayList<>();
            a.add(new com.tencent.bugly.proguard.xa());
        }
        this.f1182f = (java.util.ArrayList) c0252k.a((com.tencent.bugly.proguard.C0252k) a, 3, false);
        if (b == null) {
            java.util.HashMap map = new java.util.HashMap();
            b = map;
            map.put("", "");
        }
        this.f1183g = (java.util.Map) c0252k.a((com.tencent.bugly.proguard.C0252k) b, 4, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.f1179c, 0);
        java.lang.String str = this.f1180d;
        if (str != null) {
            c0253l.a(str, 1);
        }
        java.lang.String str2 = this.f1181e;
        if (str2 != null) {
            c0253l.a(str2, 2);
        }
        java.util.ArrayList<com.tencent.bugly.proguard.xa> arrayList = this.f1182f;
        if (arrayList != null) {
            c0253l.a((java.util.Collection) arrayList, 3);
        }
        java.util.Map<java.lang.String, java.lang.String> map = this.f1183g;
        if (map != null) {
            c0253l.a((java.util.Map) map, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
    }
}
