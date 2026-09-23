package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class wa extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public static java.util.Map<java.lang.String, java.lang.String> b;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1161d = true;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1162e = true;

    /* renamed from: f, reason: collision with root package name */
    public boolean f1163f = true;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.String f1164g = "";
    public java.lang.String h = "";
    public com.tencent.bugly.proguard.va i = null;
    public java.util.Map<java.lang.String, java.lang.String> j = null;
    public long k = 0;
    public java.lang.String l = "";
    public java.lang.String m = "";
    public int n = 0;
    public int o = 0;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ boolean f1160c = !com.tencent.bugly.proguard.wa.class.desiredAssertionStatus();
    public static com.tencent.bugly.proguard.va a = new com.tencent.bugly.proguard.va();

    static {
        java.util.HashMap map = new java.util.HashMap();
        b = map;
        map.put("", "");
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.f1161d = c0252k.a(this.f1161d, 0, true);
        this.f1162e = c0252k.a(this.f1162e, 1, true);
        this.f1163f = c0252k.a(this.f1163f, 2, true);
        this.f1164g = c0252k.a(3, false);
        this.h = c0252k.a(4, false);
        this.i = (com.tencent.bugly.proguard.va) c0252k.a((com.tencent.bugly.proguard.AbstractC0254m) a, 5, false);
        this.j = (java.util.Map) c0252k.a((com.tencent.bugly.proguard.C0252k) b, 6, false);
        this.k = c0252k.a(this.k, 7, false);
        this.l = c0252k.a(8, false);
        this.m = c0252k.a(9, false);
        this.n = c0252k.a(this.n, 10, false);
        this.o = c0252k.a(this.o, 11, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.f1161d, 0);
        c0253l.a(this.f1162e, 1);
        c0253l.a(this.f1163f, 2);
        java.lang.String str = this.f1164g;
        if (str != null) {
            c0253l.a(str, 3);
        }
        java.lang.String str2 = this.h;
        if (str2 != null) {
            c0253l.a(str2, 4);
        }
        com.tencent.bugly.proguard.va vaVar = this.i;
        if (vaVar != null) {
            c0253l.a((com.tencent.bugly.proguard.AbstractC0254m) vaVar, 5);
        }
        java.util.Map<java.lang.String, java.lang.String> map = this.j;
        if (map != null) {
            c0253l.a((java.util.Map) map, 6);
        }
        c0253l.a(this.k, 7);
        java.lang.String str3 = this.l;
        if (str3 != null) {
            c0253l.a(str3, 8);
        }
        java.lang.String str4 = this.m;
        if (str4 != null) {
            c0253l.a(str4, 9);
        }
        c0253l.a(this.n, 10);
        c0253l.a(this.o, 11);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(sb, i);
        c0250i.a(this.f1161d, "enable");
        c0250i.a(this.f1162e, "enableUserInfo");
        c0250i.a(this.f1163f, "enableQuery");
        c0250i.a(this.f1164g, "url");
        c0250i.a(this.h, "expUrl");
        c0250i.a((com.tencent.bugly.proguard.AbstractC0254m) this.i, "security");
        c0250i.a((java.util.Map) this.j, "valueMap");
        c0250i.a(this.k, "strategylastUpdateTime");
        c0250i.a(this.l, "httpsUrl");
        c0250i.a(this.m, "httpsExpUrl");
        c0250i.a(this.n, "eventRecordCount");
        c0250i.a(this.o, "eventTimeInterval");
    }

    public java.lang.Object clone() {
        try {
            return super.clone();
        } catch (java.lang.CloneNotSupportedException unused) {
            if (f1160c) {
                return null;
            }
            throw new java.lang.AssertionError();
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (obj == null) {
            return false;
        }
        com.tencent.bugly.proguard.wa waVar = (com.tencent.bugly.proguard.wa) obj;
        return com.tencent.bugly.proguard.C0255n.a(this.f1161d, waVar.f1161d) && com.tencent.bugly.proguard.C0255n.a(this.f1162e, waVar.f1162e) && com.tencent.bugly.proguard.C0255n.a(this.f1163f, waVar.f1163f) && com.tencent.bugly.proguard.C0255n.a(this.f1164g, waVar.f1164g) && com.tencent.bugly.proguard.C0255n.a(this.h, waVar.h) && com.tencent.bugly.proguard.C0255n.a(this.i, waVar.i) && com.tencent.bugly.proguard.C0255n.a(this.j, waVar.j) && com.tencent.bugly.proguard.C0255n.a(this.k, waVar.k) && com.tencent.bugly.proguard.C0255n.a(this.l, waVar.l) && com.tencent.bugly.proguard.C0255n.a(this.m, waVar.m) && com.tencent.bugly.proguard.C0255n.a(this.n, waVar.n) && com.tencent.bugly.proguard.C0255n.a(this.o, waVar.o);
    }

    public int hashCode() throws java.lang.Exception {
        try {
            throw new java.lang.Exception("Need define key first!");
        } catch (java.lang.Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }
}
