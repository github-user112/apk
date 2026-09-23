package com.tencent.bugly.proguard;

/* renamed from: com.tencent.bugly.proguard.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0260z extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public static com.tencent.bugly.proguard.y a;
    public static java.util.Map<java.lang.String, java.lang.String> b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ boolean f1184c = !com.tencent.bugly.proguard.C0260z.class.desiredAssertionStatus();

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f1185d;

    /* renamed from: e, reason: collision with root package name */
    public long f1186e;

    /* renamed from: f, reason: collision with root package name */
    public byte f1187f;

    /* renamed from: g, reason: collision with root package name */
    public long f1188g;
    public com.tencent.bugly.proguard.y h;
    public java.lang.String i;
    public int j;
    public java.util.Map<java.lang.String, java.lang.String> k;

    public C0260z() {
        this.f1185d = "";
        this.f1186e = 0L;
        this.f1187f = (byte) 0;
        this.f1188g = 0L;
        this.h = null;
        this.i = "";
        this.j = 0;
        this.k = null;
    }

    public C0260z(java.lang.String str, long j, byte b2, long j2, com.tencent.bugly.proguard.y yVar, java.lang.String str2, int i, java.util.Map<java.lang.String, java.lang.String> map) {
        this.f1185d = "";
        this.f1186e = 0L;
        this.f1187f = (byte) 0;
        this.f1188g = 0L;
        this.h = null;
        this.i = "";
        this.j = 0;
        this.k = null;
        this.f1185d = str;
        this.f1186e = j;
        this.f1187f = b2;
        this.f1188g = j2;
        this.h = yVar;
        this.i = str2;
        this.j = i;
        this.k = map;
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.f1185d = c0252k.a(0, true);
        this.f1186e = c0252k.a(this.f1186e, 1, true);
        this.f1187f = c0252k.a(this.f1187f, 2, true);
        this.f1188g = c0252k.a(this.f1188g, 3, false);
        if (a == null) {
            a = new com.tencent.bugly.proguard.y();
        }
        this.h = (com.tencent.bugly.proguard.y) c0252k.a((com.tencent.bugly.proguard.AbstractC0254m) a, 4, false);
        this.i = c0252k.a(5, false);
        this.j = c0252k.a(this.j, 6, false);
        if (b == null) {
            java.util.HashMap map = new java.util.HashMap();
            b = map;
            map.put("", "");
        }
        this.k = (java.util.Map) c0252k.a((com.tencent.bugly.proguard.C0252k) b, 7, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.f1185d, 0);
        c0253l.a(this.f1186e, 1);
        c0253l.a(this.f1187f, 2);
        c0253l.a(this.f1188g, 3);
        com.tencent.bugly.proguard.y yVar = this.h;
        if (yVar != null) {
            c0253l.a((com.tencent.bugly.proguard.AbstractC0254m) yVar, 4);
        }
        java.lang.String str = this.i;
        if (str != null) {
            c0253l.a(str, 5);
        }
        c0253l.a(this.j, 6);
        java.util.Map<java.lang.String, java.lang.String> map = this.k;
        if (map != null) {
            c0253l.a((java.util.Map) map, 7);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(sb, i);
        c0250i.a(this.f1185d, "eventType");
        c0250i.a(this.f1186e, "eventTime");
        c0250i.a(this.f1187f, "eventResult");
        c0250i.a(this.f1188g, "eventElapse");
        c0250i.a((com.tencent.bugly.proguard.AbstractC0254m) this.h, "destAppInfo");
        c0250i.a(this.i, "strategyId");
        c0250i.a(this.j, "updateType");
        c0250i.a((java.util.Map) this.k, "reserved");
    }

    public java.lang.Object clone() {
        try {
            return super.clone();
        } catch (java.lang.CloneNotSupportedException unused) {
            if (f1184c) {
                return null;
            }
            throw new java.lang.AssertionError();
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (obj == null) {
            return false;
        }
        com.tencent.bugly.proguard.C0260z c0260z = (com.tencent.bugly.proguard.C0260z) obj;
        return com.tencent.bugly.proguard.C0255n.a(this.f1185d, c0260z.f1185d) && com.tencent.bugly.proguard.C0255n.a(this.f1186e, c0260z.f1186e) && com.tencent.bugly.proguard.C0255n.a(this.f1187f, c0260z.f1187f) && com.tencent.bugly.proguard.C0255n.a(this.f1188g, c0260z.f1188g) && com.tencent.bugly.proguard.C0255n.a(this.h, c0260z.h) && com.tencent.bugly.proguard.C0255n.a(this.i, c0260z.i) && com.tencent.bugly.proguard.C0255n.a(this.j, c0260z.j) && com.tencent.bugly.proguard.C0255n.a(this.k, c0260z.k);
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
