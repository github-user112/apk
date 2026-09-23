package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public final class cc extends com.umeng.analytics.pro.cd {
    public byte[] a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f1292c;

    public cc() {
    }

    public cc(byte[] bArr) {
        a(bArr);
    }

    public cc(byte[] bArr, int i, int i2) {
        c(bArr, i, i2);
    }

    @Override // com.umeng.analytics.pro.cd
    public int a(byte[] bArr, int i, int i2) {
        int iH = h();
        if (i2 > iH) {
            i2 = iH;
        }
        if (i2 > 0) {
            java.lang.System.arraycopy(this.a, this.b, bArr, i, i2);
            a(i2);
        }
        return i2;
    }

    @Override // com.umeng.analytics.pro.cd
    public void a(int i) {
        this.b += i;
    }

    public void a(byte[] bArr) {
        c(bArr, 0, bArr.length);
    }

    @Override // com.umeng.analytics.pro.cd
    public boolean a() {
        return true;
    }

    @Override // com.umeng.analytics.pro.cd
    public void b() {
    }

    @Override // com.umeng.analytics.pro.cd
    public void b(byte[] bArr, int i, int i2) {
        throw new java.lang.UnsupportedOperationException("No writing allowed!");
    }

    @Override // com.umeng.analytics.pro.cd
    public void c() {
    }

    public void c(byte[] bArr, int i, int i2) {
        this.a = bArr;
        this.b = i;
        this.f1292c = i + i2;
    }

    public void e() {
        this.a = null;
    }

    @Override // com.umeng.analytics.pro.cd
    public byte[] f() {
        return this.a;
    }

    @Override // com.umeng.analytics.pro.cd
    public int g() {
        return this.b;
    }

    @Override // com.umeng.analytics.pro.cd
    public int h() {
        return this.f1292c - this.b;
    }
}
