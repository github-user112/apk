package com.huawei.hms.scankit.aiscan.common;

/* loaded from: classes.dex */
public final class q {
    public final float a;
    public final float b;

    /* renamed from: c, reason: collision with root package name */
    public final float f413c;

    /* renamed from: d, reason: collision with root package name */
    public final float f414d;

    /* renamed from: e, reason: collision with root package name */
    public final float f415e;

    /* renamed from: f, reason: collision with root package name */
    public final float f416f;

    /* renamed from: g, reason: collision with root package name */
    public final float f417g;
    public final float h;
    public final float i;
    public float j;
    public float k;
    public float l;
    public float m;
    public float n;
    public float o;
    public float p;
    public float q;
    public float r;
    public float s = 0.0f;
    public float t = 0.0f;
    public float u = 0.0f;
    public float v = 0.0f;
    public float w = 0.0f;

    public q(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10) {
        this.a = f2;
        this.b = f5;
        this.f413c = f8;
        this.f414d = f3;
        this.f415e = f6;
        this.f416f = f9;
        this.f417g = f4;
        this.h = f7;
        this.i = f10;
        this.j = f2;
        this.k = f3;
        this.l = f4;
        this.m = f5;
        this.n = f6;
        this.o = f7;
        this.p = f8;
        this.q = f9;
        this.r = f10;
    }

    public static com.huawei.hms.scankit.aiscan.common.q a(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        return b(f2, f3, f4, f5, f6, f7, f8, f9).a();
    }

    public static com.huawei.hms.scankit.aiscan.common.q a(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17) {
        return b(f10, f11, f12, f13, f14, f15, f16, f17).a(a(f2, f3, f4, f5, f6, f7, f8, f9));
    }

    public static com.huawei.hms.scankit.aiscan.common.q b(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9) {
        float f10 = ((f2 - f4) + f6) - f8;
        float f11 = ((f3 - f5) + f7) - f9;
        if (f10 == 0.0f && f11 == 0.0f) {
            return new com.huawei.hms.scankit.aiscan.common.q(f4 - f2, f6 - f4, f2, f5 - f3, f7 - f5, f3, 0.0f, 0.0f, 1.0f);
        }
        float f12 = f4 - f6;
        float f13 = f8 - f6;
        float f14 = f5 - f7;
        float f15 = f9 - f7;
        float f16 = (f12 * f15) - (f13 * f14);
        float f17 = ((f15 * f10) - (f13 * f11)) / f16;
        float f18 = ((f12 * f11) - (f10 * f14)) / f16;
        return new com.huawei.hms.scankit.aiscan.common.q((f17 * f4) + (f4 - f2), (f18 * f8) + (f8 - f2), f2, (f17 * f5) + (f5 - f3), (f18 * f9) + (f9 - f3), f3, f17, f18, 1.0f);
    }

    public com.huawei.hms.scankit.aiscan.common.q a() {
        float f2 = this.f415e;
        float f3 = this.i;
        float f4 = this.f416f;
        float f5 = this.h;
        float f6 = (f2 * f3) - (f4 * f5);
        float f7 = this.f417g;
        float f8 = this.f414d;
        float f9 = (f4 * f7) - (f8 * f3);
        float f10 = (f8 * f5) - (f2 * f7);
        float f11 = this.f413c;
        float f12 = this.b;
        float f13 = (f11 * f5) - (f12 * f3);
        float f14 = this.a;
        return new com.huawei.hms.scankit.aiscan.common.q(f6, f9, f10, f13, (f3 * f14) - (f11 * f7), (f7 * f12) - (f5 * f14), (f12 * f4) - (f11 * f2), (f11 * f8) - (f4 * f14), (f14 * f2) - (f12 * f8));
    }

    public com.huawei.hms.scankit.aiscan.common.q a(com.huawei.hms.scankit.aiscan.common.q qVar) {
        float f2 = this.a;
        float f3 = qVar.a;
        float f4 = this.f414d;
        float f5 = qVar.b;
        float f6 = this.f417g;
        float f7 = qVar.f413c;
        float f8 = (f4 * f5) + (f2 * f3) + (f6 * f7);
        float f9 = qVar.f414d;
        float f10 = qVar.f415e;
        float f11 = qVar.f416f;
        float f12 = (f4 * f10) + (f2 * f9) + (f6 * f11);
        float f13 = qVar.f417g;
        float f14 = qVar.h;
        float f15 = qVar.i;
        float f16 = f6 * f15;
        float f17 = f16 + (f4 * f14) + (f2 * f13);
        float f18 = this.b;
        float f19 = this.f415e;
        float f20 = this.h;
        float f21 = (f20 * f7) + (f19 * f5) + (f18 * f3);
        float f22 = (f20 * f11) + (f19 * f10) + (f18 * f9);
        float f23 = f20 * f15;
        float f24 = f23 + (f19 * f14) + (f18 * f13);
        float f25 = this.f413c;
        float f26 = this.f416f;
        float f27 = (f5 * f26) + (f3 * f25);
        float f28 = this.i;
        return new com.huawei.hms.scankit.aiscan.common.q(f8, f12, f17, f21, f22, f24, (f7 * f28) + f27, (f11 * f28) + (f10 * f26) + (f9 * f25), (f28 * f15) + (f26 * f14) + (f25 * f13));
    }

    public void a(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15) {
        this.j = f2;
        this.k = f3;
        this.l = f4;
        this.m = f5;
        this.n = f6;
        this.o = f7;
        this.p = f8;
        this.q = f9;
        this.r = f10;
        this.s = f11;
        this.t = f12;
        this.u = f13;
        this.v = f14;
        this.w = f15;
    }

    public void a(float[] fArr) {
        int length = fArr.length;
        float f2 = this.a;
        float f3 = this.b;
        float f4 = this.f413c;
        float f5 = this.f414d;
        float f6 = this.f415e;
        float f7 = this.f416f;
        float f8 = this.f417g;
        float f9 = this.h;
        float f10 = this.i;
        for (int i = 0; i < length; i += 2) {
            float f11 = fArr[i];
            int i2 = i + 1;
            float f12 = fArr[i2];
            float f13 = (f7 * f12) + (f4 * f11) + f10;
            fArr[i] = (((f5 * f12) + (f2 * f11)) + f8) / f13;
            fArr[i2] = (((f12 * f6) + (f11 * f3)) + f9) / f13;
        }
    }

    public void b(float[] fArr) {
        int length = fArr.length;
        for (int i = 0; i < length; i += 2) {
            float f2 = fArr[i];
            int i2 = i + 1;
            float f3 = fArr[i2];
            float f4 = (this.w * f3 * f3) + (this.v * f2 * f2) + (this.u * f3) + (this.t * f2) + 1.0f;
            fArr[i] = ((((this.m * f3) * f3) + (((this.l * f2) * f2) + ((this.k * f3) + (this.j * f2)))) + this.n) / f4;
            fArr[i2] = ((((this.r * f3) * f3) + (((this.q * f2) * f2) + ((this.p * f3) + (this.o * f2)))) + this.s) / f4;
        }
    }
}
