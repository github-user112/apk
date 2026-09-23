package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class ra extends com.tencent.bugly.proguard.AbstractC0254m {
    public static java.util.Map<java.lang.String, java.lang.String> a;
    public static com.tencent.bugly.proguard.pa b;

    /* renamed from: c, reason: collision with root package name */
    public static com.tencent.bugly.proguard.oa f1144c;

    /* renamed from: d, reason: collision with root package name */
    public static java.util.ArrayList<com.tencent.bugly.proguard.oa> f1145d;

    /* renamed from: e, reason: collision with root package name */
    public static java.util.ArrayList<com.tencent.bugly.proguard.oa> f1146e;

    /* renamed from: f, reason: collision with root package name */
    public static java.util.ArrayList<com.tencent.bugly.proguard.qa> f1147f;

    /* renamed from: g, reason: collision with root package name */
    public static java.util.Map<java.lang.String, java.lang.String> f1148g;
    public static java.util.Map<java.lang.String, java.lang.String> h;
    public java.lang.String i = "";
    public long j = 0;
    public java.lang.String k = "";
    public java.lang.String l = "";
    public java.lang.String m = "";
    public java.lang.String n = "";
    public java.lang.String o = "";
    public java.util.Map<java.lang.String, java.lang.String> p = null;
    public java.lang.String q = "";
    public com.tencent.bugly.proguard.pa r = null;
    public int s = 0;
    public java.lang.String t = "";
    public java.lang.String u = "";
    public com.tencent.bugly.proguard.oa v = null;
    public java.util.ArrayList<com.tencent.bugly.proguard.oa> w = null;
    public java.util.ArrayList<com.tencent.bugly.proguard.oa> x = null;
    public java.util.ArrayList<com.tencent.bugly.proguard.qa> y = null;
    public java.util.Map<java.lang.String, java.lang.String> z = null;
    public java.util.Map<java.lang.String, java.lang.String> A = null;
    public java.lang.String B = "";
    public boolean C = true;

    static {
        java.util.HashMap map = new java.util.HashMap();
        a = map;
        map.put("", "");
        b = new com.tencent.bugly.proguard.pa();
        f1144c = new com.tencent.bugly.proguard.oa();
        f1145d = new java.util.ArrayList<>();
        f1145d.add(new com.tencent.bugly.proguard.oa());
        f1146e = new java.util.ArrayList<>();
        f1146e.add(new com.tencent.bugly.proguard.oa());
        f1147f = new java.util.ArrayList<>();
        f1147f.add(new com.tencent.bugly.proguard.qa());
        java.util.HashMap map2 = new java.util.HashMap();
        f1148g = map2;
        map2.put("", "");
        java.util.HashMap map3 = new java.util.HashMap();
        h = map3;
        map3.put("", "");
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.i = c0252k.a(0, true);
        this.j = c0252k.a(this.j, 1, true);
        this.k = c0252k.a(2, true);
        this.l = c0252k.a(3, false);
        this.m = c0252k.a(4, false);
        this.n = c0252k.a(5, false);
        this.o = c0252k.a(6, false);
        this.p = (java.util.Map) c0252k.a((com.tencent.bugly.proguard.C0252k) a, 7, false);
        this.q = c0252k.a(8, false);
        this.r = (com.tencent.bugly.proguard.pa) c0252k.a((com.tencent.bugly.proguard.AbstractC0254m) b, 9, false);
        this.s = c0252k.a(this.s, 10, false);
        this.t = c0252k.a(11, false);
        this.u = c0252k.a(12, false);
        this.v = (com.tencent.bugly.proguard.oa) c0252k.a((com.tencent.bugly.proguard.AbstractC0254m) f1144c, 13, false);
        this.w = (java.util.ArrayList) c0252k.a((com.tencent.bugly.proguard.C0252k) f1145d, 14, false);
        this.x = (java.util.ArrayList) c0252k.a((com.tencent.bugly.proguard.C0252k) f1146e, 15, false);
        this.y = (java.util.ArrayList) c0252k.a((com.tencent.bugly.proguard.C0252k) f1147f, 16, false);
        this.z = (java.util.Map) c0252k.a((com.tencent.bugly.proguard.C0252k) f1148g, 17, false);
        this.A = (java.util.Map) c0252k.a((com.tencent.bugly.proguard.C0252k) h, 18, false);
        this.B = c0252k.a(19, false);
        this.C = c0252k.a(this.C, 20, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.i, 0);
        c0253l.a(this.j, 1);
        c0253l.a(this.k, 2);
        java.lang.String str = this.l;
        if (str != null) {
            c0253l.a(str, 3);
        }
        java.lang.String str2 = this.m;
        if (str2 != null) {
            c0253l.a(str2, 4);
        }
        java.lang.String str3 = this.n;
        if (str3 != null) {
            c0253l.a(str3, 5);
        }
        java.lang.String str4 = this.o;
        if (str4 != null) {
            c0253l.a(str4, 6);
        }
        java.util.Map<java.lang.String, java.lang.String> map = this.p;
        if (map != null) {
            c0253l.a((java.util.Map) map, 7);
        }
        java.lang.String str5 = this.q;
        if (str5 != null) {
            c0253l.a(str5, 8);
        }
        com.tencent.bugly.proguard.pa paVar = this.r;
        if (paVar != null) {
            c0253l.a((com.tencent.bugly.proguard.AbstractC0254m) paVar, 9);
        }
        c0253l.a(this.s, 10);
        java.lang.String str6 = this.t;
        if (str6 != null) {
            c0253l.a(str6, 11);
        }
        java.lang.String str7 = this.u;
        if (str7 != null) {
            c0253l.a(str7, 12);
        }
        com.tencent.bugly.proguard.oa oaVar = this.v;
        if (oaVar != null) {
            c0253l.a((com.tencent.bugly.proguard.AbstractC0254m) oaVar, 13);
        }
        java.util.ArrayList<com.tencent.bugly.proguard.oa> arrayList = this.w;
        if (arrayList != null) {
            c0253l.a((java.util.Collection) arrayList, 14);
        }
        java.util.ArrayList<com.tencent.bugly.proguard.oa> arrayList2 = this.x;
        if (arrayList2 != null) {
            c0253l.a((java.util.Collection) arrayList2, 15);
        }
        java.util.ArrayList<com.tencent.bugly.proguard.qa> arrayList3 = this.y;
        if (arrayList3 != null) {
            c0253l.a((java.util.Collection) arrayList3, 16);
        }
        java.util.Map<java.lang.String, java.lang.String> map2 = this.z;
        if (map2 != null) {
            c0253l.a((java.util.Map) map2, 17);
        }
        java.util.Map<java.lang.String, java.lang.String> map3 = this.A;
        if (map3 != null) {
            c0253l.a((java.util.Map) map3, 18);
        }
        java.lang.String str8 = this.B;
        if (str8 != null) {
            c0253l.a(str8, 19);
        }
        c0253l.a(this.C, 20);
    }
}
