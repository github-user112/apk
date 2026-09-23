package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class qe {
    public float b;

    /* renamed from: c, reason: collision with root package name */
    public float f789c;

    /* renamed from: g, reason: collision with root package name */
    public int f793g;
    public long h;
    public float i;
    public float j;
    public float k;
    public float l;
    public float m;
    public int n;
    public int o;
    public long p;
    public com.huawei.hms.scankit.p.te r;
    public float a = 1.0f;

    /* renamed from: d, reason: collision with root package name */
    public int f790d = 255;

    /* renamed from: e, reason: collision with root package name */
    public float f791e = 0.0f;

    /* renamed from: f, reason: collision with root package name */
    public float f792f = 0.0f;
    public int q = 0;

    public qe(android.graphics.Bitmap bitmap) {
        this.f793g = 255;
        this.k = 1.0f;
        this.k = 1.0f;
        this.f793g = 255;
        if (bitmap != null) {
            this.n = bitmap.getWidth() / 2;
            this.o = bitmap.getHeight() / 2;
        }
    }

    public int a() {
        return this.f793g;
    }

    public void a(float f2) {
        this.a = f2;
    }

    public void a(int i) {
        this.f793g = i;
    }

    public void a(long j, float f2, float f3, long j2, com.huawei.hms.scankit.p.te teVar) {
        float f4 = f2 - this.n;
        this.l = f4;
        float f5 = f3 - this.o;
        this.m = f5;
        this.i = f4;
        this.j = f5;
        this.p = j;
        this.h = j2;
        this.r = teVar;
    }

    public boolean a(long j) {
        long j2 = j - this.h;
        if (j2 > this.p) {
            return false;
        }
        float f2 = j2;
        float f3 = j2 * j2;
        this.i = (this.b * f3) + (this.f791e * f2) + this.l;
        this.j = (this.f789c * f3) + (this.f792f * f2) + this.m;
        this.r.a(this, j2);
        return true;
    }

    public int b() {
        return this.q;
    }

    public void b(float f2) {
        this.k = f2;
    }

    public void b(int i) {
        this.q = i;
    }

    public float c() {
        return this.i;
    }

    public float d() {
        return this.j;
    }

    public int e() {
        return this.f790d;
    }

    public float f() {
        return this.k;
    }
}
