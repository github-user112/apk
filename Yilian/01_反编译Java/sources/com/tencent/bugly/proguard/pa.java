package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class pa extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public static java.util.ArrayList<java.lang.String> a;
    public java.lang.String b = "";

    /* renamed from: c, reason: collision with root package name */
    public java.util.ArrayList<java.lang.String> f1136c = null;

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.b = c0252k.a(0, true);
        if (a == null) {
            java.util.ArrayList<java.lang.String> arrayList = new java.util.ArrayList<>();
            a = arrayList;
            arrayList.add("");
        }
        this.f1136c = (java.util.ArrayList) c0252k.a((com.tencent.bugly.proguard.C0252k) a, 1, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.b, 0);
        java.util.ArrayList<java.lang.String> arrayList = this.f1136c;
        if (arrayList != null) {
            c0253l.a((java.util.Collection) arrayList, 1);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
    }
}
