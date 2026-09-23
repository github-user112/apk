package com.tencent.bugly.proguard;

/* renamed from: com.tencent.bugly.proguard.x, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0259x extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public static final /* synthetic */ boolean a = !com.tencent.bugly.proguard.C0259x.class.desiredAssertionStatus();
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f1165c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f1166d;

    /* renamed from: e, reason: collision with root package name */
    public long f1167e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f1168f;

    public C0259x() {
        this.b = "";
        this.f1165c = "";
        this.f1166d = "";
        this.f1167e = 0L;
        this.f1168f = "";
    }

    public C0259x(java.lang.String str, java.lang.String str2, java.lang.String str3, long j, java.lang.String str4) {
        this.b = "";
        this.f1165c = "";
        this.f1166d = "";
        this.f1167e = 0L;
        this.f1168f = "";
        this.b = str;
        this.f1165c = str2;
        this.f1166d = str3;
        this.f1167e = j;
        this.f1168f = str4;
    }

    public java.lang.String a() {
        return this.f1165c;
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.b = c0252k.a(0, true);
        this.f1165c = c0252k.a(1, true);
        this.f1166d = c0252k.a(2, false);
        this.f1167e = c0252k.a(this.f1167e, 3, true);
        this.f1168f = c0252k.a(4, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.b, 0);
        c0253l.a(this.f1165c, 1);
        java.lang.String str = this.f1166d;
        if (str != null) {
            c0253l.a(str, 2);
        }
        c0253l.a(this.f1167e, 3);
        java.lang.String str2 = this.f1168f;
        if (str2 != null) {
            c0253l.a(str2, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(sb, i);
        c0250i.a(this.b, "apkMd5");
        c0250i.a(this.f1165c, "apkUrl");
        c0250i.a(this.f1166d, "manifestMd5");
        c0250i.a(this.f1167e, "fileSize");
        c0250i.a(this.f1168f, "signatureMd5");
    }

    public java.lang.Object clone() {
        try {
            return super.clone();
        } catch (java.lang.CloneNotSupportedException unused) {
            if (a) {
                return null;
            }
            throw new java.lang.AssertionError();
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (obj == null) {
            return false;
        }
        com.tencent.bugly.proguard.C0259x c0259x = (com.tencent.bugly.proguard.C0259x) obj;
        return com.tencent.bugly.proguard.C0255n.a(this.b, c0259x.b) && com.tencent.bugly.proguard.C0255n.a(this.f1165c, c0259x.f1165c) && com.tencent.bugly.proguard.C0255n.a(this.f1166d, c0259x.f1166d) && com.tencent.bugly.proguard.C0255n.a(this.f1167e, c0259x.f1167e) && com.tencent.bugly.proguard.C0255n.a(this.f1168f, c0259x.f1168f);
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
