package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ob, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0187ob implements java.lang.Comparable<com.huawei.hms.scankit.p.C0187ob> {
    public float a;
    public float b;

    /* renamed from: c, reason: collision with root package name */
    public float f772c;

    /* renamed from: d, reason: collision with root package name */
    public float f773d;

    /* renamed from: e, reason: collision with root package name */
    public float f774e;

    /* renamed from: f, reason: collision with root package name */
    public float f775f;

    /* renamed from: g, reason: collision with root package name */
    public float f776g;
    public float h;
    public float i;
    public float j;
    public float k;
    public com.huawei.hms.scankit.p._a l;
    public float[] m = new float[5];
    public float n = 0.0f;
    public float o = 0.0f;
    public int p = 0;
    public int q = 0;
    public int r = 0;
    public int s = 0;
    public int t = 0;
    public int u = 0;
    public float v = 0.0f;

    public C0187ob(boolean z, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11) {
        this.a = f2;
        this.b = f3;
        this.f772c = f4;
        this.f773d = f5;
        this.f774e = f6;
        this.f775f = f7;
        this.k = f11;
        if (!z) {
            this.i = f10;
            this.j = f9;
        } else {
            this.f776g = f8;
            this.h = f9;
            this.j = f10;
        }
    }

    private float a(float f2, int i, int i2) {
        float f3 = i;
        if (f2 <= f3) {
            f2 = f3;
        }
        float f4 = i2 - 1;
        return f2 < f4 ? f2 : f4;
    }

    public float a() {
        return this.o;
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(com.huawei.hms.scankit.p.C0187ob c0187ob) {
        return java.lang.Float.compare(c0187ob.h() + (-c0187ob.g()), h() + (-g()));
    }

    public void a(float f2, float f3) {
        this.a += f2;
        this.b += f3;
        this.f774e += f2;
        this.f775f += f3;
    }

    public void a(int i, int i2, float f2, float f3) {
        float f4 = this.a + f2;
        this.a = f4;
        this.b += f3;
        if (f4 < 0.0f) {
            this.f772c += f4;
        }
        float f5 = this.b;
        if (f5 < 0.0f) {
            this.f773d += f5;
        }
        this.f774e += f2;
        this.f775f += f3;
        this.a = a(this.a, 0, i);
        this.f774e = a(this.f774e, 0, i);
        this.b = a(this.b, 0, i2);
        this.f775f = a(this.f775f, 0, i2);
        float f6 = this.a;
        float f7 = i - f2;
        if (this.f772c + f6 >= f7) {
            this.f772c = (f7 - 1.0f) - f6;
        }
        float f8 = this.b;
        float f9 = i2 - f3;
        if (this.f773d + f8 >= f9) {
            this.f773d = (f9 - 1.0f) - f8;
        }
    }

    public float b() {
        return this.n;
    }

    public void b(float f2, float f3) {
        this.a = 0.0f;
        this.b = 0.0f;
        this.f772c = f2;
        this.f773d = f3;
        this.f774e = f2 / 2.0f;
        this.f775f = f3 / 2.0f;
        this.f776g = f2;
        this.h = f3;
        this.j = 0.0f;
    }

    public float c() {
        return this.f773d;
    }

    public float d() {
        return this.a;
    }

    public float e() {
        return this.b;
    }

    public float f() {
        return this.f772c;
    }

    public float g() {
        return this.k;
    }

    public float h() {
        return this.i;
    }

    public float i() {
        return this.j;
    }

    public float j() {
        return this.f774e;
    }

    public float k() {
        return this.f775f;
    }

    public float l() {
        return this.h;
    }

    public float m() {
        return this.f776g;
    }

    public float n() {
        return this.v;
    }
}
