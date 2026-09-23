package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class D {
    public boolean a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f503c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f504d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.String f505e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f506f;

    /* renamed from: g, reason: collision with root package name */
    public com.huawei.hms.scankit.p.C f507g;
    public java.lang.String h;
    public java.util.Map<java.lang.String, java.lang.String> i;
    public java.lang.String j;
    public int k;
    public int l;
    public boolean m;
    public boolean n;
    public boolean o;
    public java.lang.String p;
    public long q;

    public D() {
        this.f505e = "";
        this.f506f = "";
        this.f507g = new com.huawei.hms.scankit.p.C();
        this.h = "";
        this.j = "";
        this.k = 10;
        this.l = 7;
        this.m = true;
        this.n = true;
        this.o = false;
        this.q = 0L;
    }

    public D(com.huawei.hms.scankit.p.D d2) {
        this.f505e = "";
        this.f506f = "";
        this.f507g = new com.huawei.hms.scankit.p.C();
        this.h = "";
        this.j = "";
        this.k = 10;
        this.l = 7;
        this.m = true;
        this.n = true;
        this.o = false;
        this.q = 0L;
        this.f507g = d2.f507g;
        b(d2.a);
        a(d2.f503c);
        b(d2.f504d);
        c(d2.f505e);
        d(d2.f506f);
        e(d2.h);
        f(d2.j);
        a(d2.b);
        b(d2.k);
        a(d2.l);
        c(d2.m);
        d(d2.n);
        e(d2.o);
        a(d2.i);
        g(d2.p);
        a(d2.q);
    }

    public java.lang.String a() {
        return this.f506f;
    }

    public void a(int i) {
        this.l = i;
    }

    public void a(long j) {
        this.q = j;
    }

    public void a(java.lang.String str) {
        this.f503c = str;
    }

    public void a(java.util.Map<java.lang.String, java.lang.String> map) {
        this.i = map;
    }

    public void a(boolean z) {
        this.b = z;
    }

    public java.lang.String b() {
        return this.h;
    }

    public void b(int i) {
        this.k = i;
    }

    public void b(java.lang.String str) {
        this.f504d = str;
    }

    public void b(boolean z) {
        this.a = z;
    }

    public java.lang.String c() {
        return this.j;
    }

    public void c(java.lang.String str) {
        this.f505e = str;
    }

    public void c(boolean z) {
        this.m = z;
    }

    public void d(java.lang.String str) {
        this.f506f = str;
    }

    public void d(boolean z) {
        this.n = z;
    }

    public boolean d() {
        return this.m;
    }

    public void e(java.lang.String str) {
        this.h = str;
    }

    public void e(boolean z) {
        this.o = z;
    }

    public boolean e() {
        return this.n;
    }

    public void f(java.lang.String str) {
        this.j = str;
    }

    public boolean f() {
        return this.o;
    }

    public java.lang.String g() {
        return this.p;
    }

    public void g(java.lang.String str) {
        this.p = str;
    }

    public long h() {
        return this.q;
    }

    public java.util.Map<java.lang.String, java.lang.String> i() {
        return this.i;
    }

    public com.huawei.hms.scankit.p.C j() {
        return this.f507g;
    }

    public int k() {
        return this.l;
    }

    public int l() {
        return this.k;
    }

    public boolean m() {
        return this.b;
    }

    public boolean n() {
        return this.a;
    }

    public java.lang.String o() {
        return this.f503c;
    }

    public java.lang.String p() {
        return this.f504d;
    }

    public java.lang.String q() {
        return this.f505e;
    }
}
