package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class D extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public static com.tencent.bugly.proguard.wa a;
    public static com.tencent.bugly.proguard.B b;

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ boolean f1061c = !com.tencent.bugly.proguard.D.class.desiredAssertionStatus();

    /* renamed from: d, reason: collision with root package name */
    public com.tencent.bugly.proguard.wa f1062d = null;

    /* renamed from: e, reason: collision with root package name */
    public com.tencent.bugly.proguard.B f1063e = null;

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        if (a == null) {
            a = new com.tencent.bugly.proguard.wa();
        }
        this.f1062d = (com.tencent.bugly.proguard.wa) c0252k.a((com.tencent.bugly.proguard.AbstractC0254m) a, 0, false);
        if (b == null) {
            b = new com.tencent.bugly.proguard.B();
        }
        this.f1063e = (com.tencent.bugly.proguard.B) c0252k.a((com.tencent.bugly.proguard.AbstractC0254m) b, 1, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        com.tencent.bugly.proguard.wa waVar = this.f1062d;
        if (waVar != null) {
            c0253l.a((com.tencent.bugly.proguard.AbstractC0254m) waVar, 0);
        }
        com.tencent.bugly.proguard.B b2 = this.f1063e;
        if (b2 != null) {
            c0253l.a((com.tencent.bugly.proguard.AbstractC0254m) b2, 1);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
        com.tencent.bugly.proguard.C0250i c0250i = new com.tencent.bugly.proguard.C0250i(sb, i);
        c0250i.a((com.tencent.bugly.proguard.AbstractC0254m) this.f1062d, "baseStrategy");
        c0250i.a((com.tencent.bugly.proguard.AbstractC0254m) this.f1063e, "grayStrategy");
    }

    public java.lang.Object clone() {
        try {
            return super.clone();
        } catch (java.lang.CloneNotSupportedException unused) {
            if (f1061c) {
                return null;
            }
            throw new java.lang.AssertionError();
        }
    }

    public boolean equals(java.lang.Object obj) {
        if (obj == null) {
            return false;
        }
        com.tencent.bugly.proguard.D d2 = (com.tencent.bugly.proguard.D) obj;
        return com.tencent.bugly.proguard.C0255n.a(this.f1062d, d2.f1062d) && com.tencent.bugly.proguard.C0255n.a(this.f1063e, d2.f1063e);
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
