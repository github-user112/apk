package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class ue implements com.huawei.hms.scankit.p.te {
    public final int a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final long f836c;

    /* renamed from: d, reason: collision with root package name */
    public final long f837d;

    /* renamed from: e, reason: collision with root package name */
    public final float f838e;

    /* renamed from: f, reason: collision with root package name */
    public final android.view.animation.Interpolator f839f;

    public ue(int i, int i2, long j, long j2, android.view.animation.Interpolator interpolator) {
        this.a = i;
        this.b = i2;
        this.f836c = j;
        this.f837d = j2;
        this.f838e = j2 - j;
        this.f839f = interpolator;
    }

    private int a(com.huawei.hms.scankit.p.qe qeVar) {
        int i = this.b;
        return i == -1 ? qeVar.e() : i;
    }

    private int b(com.huawei.hms.scankit.p.qe qeVar) {
        int i = this.a;
        return i == -1 ? qeVar.a() : i;
    }

    private int c(com.huawei.hms.scankit.p.qe qeVar) {
        return a(qeVar) - b(qeVar);
    }

    @Override // com.huawei.hms.scankit.p.te
    public void a(com.huawei.hms.scankit.p.qe qeVar, long j) {
        if (j < this.f836c || j > this.f837d || java.lang.Float.compare(this.f838e, 0.0f) == 0) {
            return;
        }
        qeVar.a((int) ((c(qeVar) * this.f839f.getInterpolation((j - this.f836c) / this.f838e)) + b(qeVar)));
    }
}
