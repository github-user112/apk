package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class y extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public static final /* synthetic */ boolean a = !com.tencent.bugly.proguard.y.class.desiredAssertionStatus();
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public byte f1174c;

    /* renamed from: d, reason: collision with root package name */
    public int f1175d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f1176e;

    /* renamed from: f, reason: collision with root package name */
    public int f1177f;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.String f1178g;
    public long h;
    public java.lang.String i;
    public java.lang.String j;
    public java.lang.String k;
    public java.lang.String l;

    public y() {
        this.b = "";
        this.f1174c = (byte) 0;
        this.f1175d = 0;
        this.f1176e = "";
        this.f1177f = 0;
        this.f1178g = "";
        this.h = 0L;
        this.i = "";
        this.j = "";
        this.k = "";
        this.l = "";
    }

    public y(java.lang.String str, byte b, int i, java.lang.String str2, int i2, java.lang.String str3, long j, java.lang.String str4, java.lang.String str5, java.lang.String str6, java.lang.String str7) {
        this.b = "";
        this.f1174c = (byte) 0;
        this.f1175d = 0;
        this.f1176e = "";
        this.f1177f = 0;
        this.f1178g = "";
        this.h = 0L;
        this.i = "";
        this.j = "";
        this.k = "";
        this.l = "";
        this.b = str;
        this.f1174c = b;
        this.f1175d = i;
        this.f1176e = str2;
        this.f1177f = i2;
        this.f1178g = str3;
        this.h = j;
        this.i = str4;
        this.j = str5;
        this.k = str6;
        this.l = str7;
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.b = c0252k.a(0, true);
        this.f1174c = c0252k.a(this.f1174c, 1, true);
        this.f1175d = c0252k.a(this.f1175d, 2, true);
        this.f1176e = c0252k.a(3, false);
        this.f1177f = c0252k.a(this.f1177f, 4, false);
        this.f1178g = c0252k.a(5, false);
        this.h = c0252k.a(this.h, 6, false);
        this.i = c0252k.a(7, false);
        this.j = c0252k.a(8, false);
        this.k = c0252k.a(9, false);
        this.l = c0252k.a(10, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.b, 0);
        c0253l.a(this.f1174c, 1);
        c0253l.a(this.f1175d, 2);
        java.lang.String str = this.f1176e;
        if (str != null) {
            c0253l.a(str, 3);
        }
        c0253l.a(this.f1177f, 4);
        java.lang.String str2 = this.f1178g;
        if (str2 != null) {
            c0253l.a(str2, 5);
        }
        c0253l.a(this.h, 6);
        java.lang.String str3 = this.i;
        if (str3 != null) {
            c0253l.a(str3, 7);
        }
        java.lang.String str4 = this.j;
        if (str4 != null) {
            c0253l.a(str4, 8);
        }
        java.lang.String str5 = this.k;
        if (str5 != null) {
            c0253l.a(str5, 9);
        }
        java.lang.String str6 = this.l;
        if (str6 != null) {
            c0253l.a(str6, 10);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(sb, i);
        c0250i.a(this.b, "appId");
        c0250i.a(this.f1174c, "platformId");
        c0250i.a(this.f1175d, "versionCode");
        c0250i.a(this.f1176e, "versionName");
        c0250i.a(this.f1177f, "buildNo");
        c0250i.a(this.f1178g, "iconUrl");
        c0250i.a(this.h, "apkId");
        c0250i.a(this.i, "channelId");
        c0250i.a(this.j, com.tencent.tinker.lib.util.UpgradePatchRetry.RETRY_FILE_MD5_PROPERTY);
        c0250i.a(this.k, "sdkVer");
        c0250i.a(this.l, "bundleId");
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
        com.tencent.bugly.proguard.y yVar = (com.tencent.bugly.proguard.y) obj;
        return com.tencent.bugly.proguard.C0255n.a(this.b, yVar.b) && com.tencent.bugly.proguard.C0255n.a(this.f1174c, yVar.f1174c) && com.tencent.bugly.proguard.C0255n.a(this.f1175d, yVar.f1175d) && com.tencent.bugly.proguard.C0255n.a(this.f1176e, yVar.f1176e) && com.tencent.bugly.proguard.C0255n.a(this.f1177f, yVar.f1177f) && com.tencent.bugly.proguard.C0255n.a(this.f1178g, yVar.f1178g) && com.tencent.bugly.proguard.C0255n.a(this.h, yVar.h) && com.tencent.bugly.proguard.C0255n.a(this.i, yVar.i) && com.tencent.bugly.proguard.C0255n.a(this.j, yVar.j) && com.tencent.bugly.proguard.C0255n.a(this.k, yVar.k) && com.tencent.bugly.proguard.C0255n.a(this.l, yVar.l);
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
