package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class B extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public static com.tencent.bugly.proguard.y a;
    public static com.tencent.bugly.proguard.C0259x b;

    /* renamed from: c, reason: collision with root package name */
    public static com.tencent.bugly.proguard.C0259x f1052c;

    /* renamed from: d, reason: collision with root package name */
    public static java.util.Map<java.lang.String, java.lang.String> f1053d;

    /* renamed from: e, reason: collision with root package name */
    public static final /* synthetic */ boolean f1054e = !com.tencent.bugly.proguard.B.class.desiredAssertionStatus();

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f1055f;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.String f1056g;
    public long h;
    public int i;
    public com.tencent.bugly.proguard.y j;
    public com.tencent.bugly.proguard.C0259x k;
    public byte l;
    public int m;
    public long n;
    public com.tencent.bugly.proguard.C0259x o;
    public java.lang.String p;
    public java.util.Map<java.lang.String, java.lang.String> q;
    public java.lang.String r;
    public int s;
    public long t;
    public int u;

    public B() {
        this.f1055f = "";
        this.f1056g = "";
        this.h = 0L;
        this.i = 0;
        this.j = null;
        this.k = null;
        this.l = (byte) 0;
        this.m = 0;
        this.n = 0L;
        this.o = null;
        this.p = "";
        this.q = null;
        this.r = "";
        this.s = 0;
        this.t = 0L;
        this.u = 0;
    }

    public B(java.lang.String str, java.lang.String str2, long j, int i, com.tencent.bugly.proguard.y yVar, com.tencent.bugly.proguard.C0259x c0259x, byte b2, int i2, long j2, com.tencent.bugly.proguard.C0259x c0259x2, java.lang.String str3, java.util.Map<java.lang.String, java.lang.String> map, java.lang.String str4, int i3, long j3, int i4) {
        this.f1055f = "";
        this.f1056g = "";
        this.h = 0L;
        this.i = 0;
        this.j = null;
        this.k = null;
        this.l = (byte) 0;
        this.m = 0;
        this.n = 0L;
        this.o = null;
        this.p = "";
        this.q = null;
        this.r = "";
        this.s = 0;
        this.t = 0L;
        this.u = 0;
        this.f1055f = str;
        this.f1056g = str2;
        this.h = j;
        this.i = i;
        this.j = yVar;
        this.k = c0259x;
        this.l = b2;
        this.m = i2;
        this.n = j2;
        this.o = c0259x2;
        this.p = str3;
        this.q = map;
        this.r = str4;
        this.s = i3;
        this.t = j3;
        this.u = i4;
    }

    public com.tencent.bugly.proguard.C0259x a() {
        return this.k;
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.f1055f = c0252k.a(0, true);
        this.f1056g = c0252k.a(1, true);
        this.h = c0252k.a(this.h, 2, true);
        this.i = c0252k.a(this.i, 3, true);
        if (a == null) {
            a = new com.tencent.bugly.proguard.y();
        }
        this.j = (com.tencent.bugly.proguard.y) c0252k.a((com.tencent.bugly.proguard.AbstractC0254m) a, 4, true);
        if (b == null) {
            b = new com.tencent.bugly.proguard.C0259x();
        }
        this.k = (com.tencent.bugly.proguard.C0259x) c0252k.a((com.tencent.bugly.proguard.AbstractC0254m) b, 5, true);
        this.l = c0252k.a(this.l, 6, true);
        this.m = c0252k.a(this.m, 7, false);
        this.n = c0252k.a(this.n, 8, false);
        if (f1052c == null) {
            f1052c = new com.tencent.bugly.proguard.C0259x();
        }
        this.o = (com.tencent.bugly.proguard.C0259x) c0252k.a((com.tencent.bugly.proguard.AbstractC0254m) f1052c, 9, false);
        this.p = c0252k.a(10, false);
        if (f1053d == null) {
            java.util.HashMap map = new java.util.HashMap();
            f1053d = map;
            map.put("", "");
        }
        this.q = (java.util.Map) c0252k.a((com.tencent.bugly.proguard.C0252k) f1053d, 11, false);
        this.r = c0252k.a(12, false);
        this.s = c0252k.a(this.s, 13, false);
        this.t = c0252k.a(this.t, 14, false);
        this.u = c0252k.a(this.u, 15, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.f1055f, 0);
        c0253l.a(this.f1056g, 1);
        c0253l.a(this.h, 2);
        c0253l.a(this.i, 3);
        c0253l.a((com.tencent.bugly.proguard.AbstractC0254m) this.j, 4);
        c0253l.a((com.tencent.bugly.proguard.AbstractC0254m) this.k, 5);
        c0253l.a(this.l, 6);
        c0253l.a(this.m, 7);
        c0253l.a(this.n, 8);
        com.tencent.bugly.proguard.C0259x c0259x = this.o;
        if (c0259x != null) {
            c0253l.a((com.tencent.bugly.proguard.AbstractC0254m) c0259x, 9);
        }
        java.lang.String str = this.p;
        if (str != null) {
            c0253l.a(str, 10);
        }
        java.util.Map<java.lang.String, java.lang.String> map = this.q;
        if (map != null) {
            c0253l.a((java.util.Map) map, 11);
        }
        java.lang.String str2 = this.r;
        if (str2 != null) {
            c0253l.a(str2, 12);
        }
        c0253l.a(this.s, 13);
        c0253l.a(this.t, 14);
        c0253l.a(this.u, 15);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(sb, i);
        c0250i.a(this.f1055f, "title");
        c0250i.a(this.f1056g, "newFeature");
        c0250i.a(this.h, "publishTime");
        c0250i.a(this.i, "publishType");
        c0250i.a((com.tencent.bugly.proguard.AbstractC0254m) this.j, "appBasicInfo");
        c0250i.a((com.tencent.bugly.proguard.AbstractC0254m) this.k, "apkBaseInfo");
        c0250i.a(this.l, "updateStrategy");
        c0250i.a(this.m, "popTimes");
        c0250i.a(this.n, "popInterval");
        c0250i.a((com.tencent.bugly.proguard.AbstractC0254m) this.o, "diffApkInfo");
        c0250i.a(this.p, "netType");
        c0250i.a((java.util.Map) this.q, "reserved");
        c0250i.a(this.r, "strategyId");
        c0250i.a(this.s, net.easyconn.framework.broadcast.BroadcastManager.EXTRA_AUDIOFOCUS_MUSIC_STATUS);
        c0250i.a(this.t, "updateTime");
        c0250i.a(this.u, "updateType");
    }

    public long b() {
        return this.h;
    }

    public java.util.Map<java.lang.String, java.lang.String> c() {
        return this.q;
    }

    public java.lang.Object clone() {
        try {
            return super.clone();
        } catch (java.lang.CloneNotSupportedException unused) {
            if (f1054e) {
                return null;
            }
            throw new java.lang.AssertionError();
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (obj == null) {
            return false;
        }
        com.tencent.bugly.proguard.B b2 = (com.tencent.bugly.proguard.B) obj;
        return com.tencent.bugly.proguard.C0255n.a(this.f1055f, b2.f1055f) && com.tencent.bugly.proguard.C0255n.a(this.f1056g, b2.f1056g) && com.tencent.bugly.proguard.C0255n.a(this.h, b2.h) && com.tencent.bugly.proguard.C0255n.a(this.i, b2.i) && com.tencent.bugly.proguard.C0255n.a(this.j, b2.j) && com.tencent.bugly.proguard.C0255n.a(this.k, b2.k) && com.tencent.bugly.proguard.C0255n.a(this.l, b2.l) && com.tencent.bugly.proguard.C0255n.a(this.m, b2.m) && com.tencent.bugly.proguard.C0255n.a(this.n, b2.n) && com.tencent.bugly.proguard.C0255n.a(this.o, b2.o) && com.tencent.bugly.proguard.C0255n.a(this.p, b2.p) && com.tencent.bugly.proguard.C0255n.a(this.q, b2.q) && com.tencent.bugly.proguard.C0255n.a(this.r, b2.r) && com.tencent.bugly.proguard.C0255n.a(this.s, b2.s) && com.tencent.bugly.proguard.C0255n.a(this.t, b2.t) && com.tencent.bugly.proguard.C0255n.a(this.u, b2.u);
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
