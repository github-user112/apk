package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.rc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0202rc extends com.huawei.hms.scankit.aiscan.common.z {

    /* renamed from: e, reason: collision with root package name */
    public final float f799e;

    /* renamed from: f, reason: collision with root package name */
    public final int f800f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f801g;

    public C0202rc(float f2, float f3, float f4, boolean z) {
        this(f2, f3, f4, z, 1);
    }

    public C0202rc(float f2, float f3, float f4, boolean z, int i) {
        super(f2, f3, i);
        this.f799e = f4;
        this.f800f = i;
        this.f801g = z;
    }

    public com.huawei.hms.scankit.p.C0202rc a(float f2, float f3, float f4, boolean z) {
        int i = this.f800f;
        int i2 = i + 1;
        float fB = (b() * i) + f3;
        float f5 = i2;
        float f6 = fB / f5;
        float fC = ((c() * this.f800f) + f2) / f5;
        float f7 = ((this.f800f * this.f799e) + f4) / f5;
        boolean z2 = this.f801g;
        return new com.huawei.hms.scankit.p.C0202rc(f6, fC, f7, z2 ? z : z2, i2);
    }

    public boolean a(float f2, float f3, float f4) {
        if (java.lang.Math.abs(f3 - c()) > f2 || java.lang.Math.abs(f4 - b()) > f2) {
            return false;
        }
        float fAbs = java.lang.Math.abs(f2 - this.f799e);
        return fAbs <= 1.0f || fAbs <= this.f799e;
    }

    @Override // com.huawei.hms.scankit.aiscan.common.z
    public boolean d() {
        return this.f801g;
    }

    public float e() {
        return this.f799e;
    }
}
