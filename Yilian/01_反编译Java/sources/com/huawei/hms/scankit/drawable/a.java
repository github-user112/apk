package com.huawei.hms.scankit.drawable;

/* loaded from: classes.dex */
public class a implements android.view.animation.Interpolator {
    public static final java.math.BigDecimal a = new java.math.BigDecimal(java.lang.Float.toString(1.0f));
    public static final java.math.BigDecimal b;

    /* renamed from: c, reason: collision with root package name */
    public static final float f440c;

    /* renamed from: d, reason: collision with root package name */
    public float f441d;

    /* renamed from: e, reason: collision with root package name */
    public float f442e;

    /* renamed from: f, reason: collision with root package name */
    public float f443f;

    /* renamed from: g, reason: collision with root package name */
    public float f444g;

    static {
        java.math.BigDecimal bigDecimal = new java.math.BigDecimal(java.lang.Long.toString(4000L));
        b = bigDecimal;
        f440c = a.divide(bigDecimal, 20, 4).floatValue();
    }

    public a(float f2, float f3, float f4, float f5) {
        this.f441d = 0.0f;
        this.f442e = 0.0f;
        this.f443f = 0.0f;
        this.f444g = 0.0f;
        this.f441d = f2;
        this.f442e = f3;
        this.f443f = f4;
        this.f444g = f5;
    }

    private long a(float f2) {
        long j = 0;
        long j2 = 4000;
        while (j <= j2) {
            long j3 = (j + j2) >>> 1;
            float fB = b(f440c * j3);
            if (fB < f2) {
                j = j3 + 1;
            } else {
                if (fB <= f2) {
                    return j3;
                }
                j2 = j3 - 1;
            }
        }
        return j;
    }

    private java.lang.String a() {
        return "CubicBezierInterpolator  mControlPoint1x = " + this.f441d + ", mControlPoint1y = " + this.f442e + ", mControlPoint2x = " + this.f443f + ", mControlPoint2y = " + this.f444g;
    }

    private float b(float f2) {
        float f3 = 1.0f - f2;
        float f4 = 3.0f * f3;
        return (f2 * f2 * f2) + (f4 * f2 * f2 * this.f443f) + (f3 * f4 * f2 * this.f441d);
    }

    private float c(float f2) {
        float f3 = 1.0f - f2;
        float f4 = 3.0f * f3;
        return (f2 * f2 * f2) + (f4 * f2 * f2 * this.f444g) + (f3 * f4 * f2 * this.f442e);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f2) {
        return c(f440c * a(f2));
    }

    public java.lang.String toString() {
        return a();
    }
}
