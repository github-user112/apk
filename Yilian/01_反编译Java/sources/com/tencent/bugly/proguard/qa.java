package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public final class qa extends com.tencent.bugly.proguard.AbstractC0254m implements java.lang.Cloneable {
    public static byte[] a;
    public byte b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f1137c;

    /* renamed from: d, reason: collision with root package name */
    public byte[] f1138d;

    public qa() {
        this.b = (byte) 0;
        this.f1137c = "";
        this.f1138d = null;
    }

    public qa(byte b, java.lang.String str, byte[] bArr) {
        this.b = (byte) 0;
        this.f1137c = "";
        this.f1138d = null;
        this.b = b;
        this.f1137c = str;
        this.f1138d = bArr;
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0252k c0252k) {
        this.b = c0252k.a(this.b, 0, true);
        this.f1137c = c0252k.a(1, true);
        if (a == null) {
            a = new byte[]{0};
        }
        this.f1138d = c0252k.a(a, 2, false);
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(com.tencent.bugly.proguard.C0253l c0253l) {
        c0253l.a(this.b, 0);
        c0253l.a(this.f1137c, 1);
        byte[] bArr = this.f1138d;
        if (bArr != null) {
            c0253l.a(bArr, 2);
        }
    }

    @Override // com.tencent.bugly.proguard.AbstractC0254m
    public void a(java.lang.StringBuilder sb, int i) {
    }
}
