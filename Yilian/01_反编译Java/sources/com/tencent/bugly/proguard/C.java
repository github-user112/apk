package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class C extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public static java.util.Map<java.lang.String, java.lang.String> a;
    public static final /* synthetic */ boolean b = !com.tencent.bugly.proguard.C.class.desiredAssertionStatus();

    /* renamed from: c, reason: collision with root package name */
    public int f1057c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f1058d;

    /* renamed from: e, reason: collision with root package name */
    public long f1059e;

    /* renamed from: f, reason: collision with root package name */
    public java.util.Map<java.lang.String, java.lang.String> f1060f;

    public C() {
        this.f1057c = 0;
        this.f1058d = "";
        this.f1059e = 0L;
        this.f1060f = null;
    }

    public C(int i, java.lang.String str, long j, java.util.Map<java.lang.String, java.lang.String> map) {
        this.f1057c = 0;
        this.f1058d = "";
        this.f1059e = 0L;
        this.f1060f = null;
        this.f1057c = i;
        this.f1058d = str;
        this.f1059e = j;
        this.f1060f = map;
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.f1057c = c0252k.a(this.f1057c, 0, false);
        this.f1058d = c0252k.a(1, false);
        this.f1059e = c0252k.a(this.f1059e, 2, false);
        if (a == null) {
            java.util.HashMap map = new java.util.HashMap();
            a = map;
            map.put("", "");
        }
        this.f1060f = (java.util.Map) c0252k.a((com.tencent.bugly.proguard.C0252k) a, 3, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.f1057c, 0);
        java.lang.String str = this.f1058d;
        if (str != null) {
            c0253l.a(str, 1);
        }
        c0253l.a(this.f1059e, 2);
        java.util.Map<java.lang.String, java.lang.String> map = this.f1060f;
        if (map != null) {
            c0253l.a((java.util.Map) map, 3);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(sb, i);
        c0250i.a(this.f1057c, "flag");
        c0250i.a(this.f1058d, "localStrategyId");
        c0250i.a(this.f1059e, "localStrategyTime");
        c0250i.a((java.util.Map) this.f1060f, "reserved");
    }

    public java.lang.Object clone() {
        try {
            return super.clone();
        } catch (java.lang.CloneNotSupportedException unused) {
            if (b) {
                return null;
            }
            throw new java.lang.AssertionError();
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (obj == null) {
            return false;
        }
        com.tencent.bugly.proguard.C c2 = (com.tencent.bugly.proguard.C) obj;
        return com.tencent.bugly.proguard.C0255n.a(this.f1057c, c2.f1057c) && com.tencent.bugly.proguard.C0255n.a(this.f1058d, c2.f1058d) && com.tencent.bugly.proguard.C0255n.a(this.f1059e, c2.f1059e) && com.tencent.bugly.proguard.C0255n.a(this.f1060f, c2.f1060f);
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
