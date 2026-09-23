package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class _b extends com.huawei.hms.scankit.aiscan.common.z {

    /* renamed from: e, reason: collision with root package name */
    public final float f664e;

    public _b(float f2, float f3, float f4) {
        super(f2, f3);
        this.f664e = f4;
    }

    public boolean a(float f2, float f3, float f4) {
        if (java.lang.Math.abs(f3 - c()) > f2 || java.lang.Math.abs(f4 - b()) > f2) {
            return false;
        }
        float fAbs = java.lang.Math.abs(f2 - this.f664e);
        return fAbs <= 1.0f || fAbs <= this.f664e;
    }

    public com.huawei.hms.scankit.p._b b(float f2, float f3, float f4) {
        return new com.huawei.hms.scankit.p._b((b() + f3) / 2.0f, (c() + f2) / 2.0f, (this.f664e + f4) / 2.0f);
    }
}
