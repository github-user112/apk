package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class A extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public static java.util.ArrayList<com.tencent.bugly.proguard.C0260z> a;
    public static final /* synthetic */ boolean b = !com.tencent.bugly.proguard.A.class.desiredAssertionStatus();

    /* renamed from: c, reason: collision with root package name */
    public java.util.ArrayList<com.tencent.bugly.proguard.C0260z> f1051c;

    public A() {
        this.f1051c = null;
    }

    public A(java.util.ArrayList<com.tencent.bugly.proguard.C0260z> arrayList) {
        this.f1051c = null;
        this.f1051c = arrayList;
    }

    public java.util.ArrayList<com.tencent.bugly.proguard.C0260z> a() {
        return this.f1051c;
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        if (a == null) {
            a = new java.util.ArrayList<>();
            a.add(new com.tencent.bugly.proguard.C0260z());
        }
        this.f1051c = (java.util.ArrayList) c0252k.a((com.tencent.bugly.proguard.C0252k) a, 0, true);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a((java.util.Collection) this.f1051c, 0);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
        new com.tencent.bugly.proguard.C0250i(sb, i).a((java.util.Collection) this.f1051c, com.umeng.analytics.pro.c.ar);
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
        return com.tencent.bugly.proguard.C0255n.a(this.f1051c, ((com.tencent.bugly.proguard.A) obj).f1051c);
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
