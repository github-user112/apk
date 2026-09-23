package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class oa extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public java.lang.String a = "";
    public java.lang.String b = "";

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f1133c = "";

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f1134d = "";

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f1135e = "";

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.a = c0252k.a(0, true);
        this.b = c0252k.a(1, false);
        this.f1133c = c0252k.a(2, false);
        this.f1134d = c0252k.a(3, false);
        this.f1135e = c0252k.a(4, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.a, 0);
        java.lang.String str = this.b;
        if (str != null) {
            c0253l.a(str, 1);
        }
        java.lang.String str2 = this.f1133c;
        if (str2 != null) {
            c0253l.a(str2, 2);
        }
        java.lang.String str3 = this.f1134d;
        if (str3 != null) {
            c0253l.a(str3, 3);
        }
        java.lang.String str4 = this.f1135e;
        if (str4 != null) {
            c0253l.a(str4, 4);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
    }
}
