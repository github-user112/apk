package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class Kb {
    public final int a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f558c;

    /* renamed from: d, reason: collision with root package name */
    public final int f559d;

    /* renamed from: e, reason: collision with root package name */
    public int f560e = -1;

    public Kb(int i, int i2, int i3, int i4) {
        this.a = i;
        this.b = i2;
        this.f558c = i3;
        this.f559d = i4;
    }

    public int a() {
        return this.f558c;
    }

    public boolean a(int i) {
        return i != -1 && this.f558c == (i % 3) * 3;
    }

    public int b() {
        return this.b;
    }

    public void b(int i) {
        this.f560e = i;
    }

    public int c() {
        return this.f560e;
    }

    public int d() {
        return this.a;
    }

    public int e() {
        return this.f559d;
    }

    public int f() {
        return this.b - this.a;
    }

    public boolean g() {
        return a(this.f560e);
    }

    public void h() {
        this.f560e = (this.f558c / 3) + ((this.f559d / 30) * 3);
    }

    public java.lang.String toString() {
        return this.f560e + "|" + this.f559d;
    }
}
