package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class va extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public java.lang.String a = "";
    public java.lang.String b = "";

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.a = c0252k.a(0, true);
        this.b = c0252k.a(1, true);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.a, 0);
        c0253l.a(this.b, 1);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
    }
}
