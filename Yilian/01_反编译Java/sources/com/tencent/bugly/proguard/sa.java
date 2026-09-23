package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class sa extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public static java.util.ArrayList<com.tencent.bugly.proguard.ra> a;
    public java.util.ArrayList<com.tencent.bugly.proguard.ra> b = null;

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        if (a == null) {
            a = new java.util.ArrayList<>();
            a.add(new com.tencent.bugly.proguard.ra());
        }
        this.b = (java.util.ArrayList) c0252k.a((com.tencent.bugly.proguard.C0252k) a, 0, true);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a((java.util.Collection) this.b, 0);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
    }
}
