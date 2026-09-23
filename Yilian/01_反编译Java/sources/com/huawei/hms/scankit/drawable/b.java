package com.huawei.hms.scankit.drawable;

/* loaded from: classes.dex */
public class b implements android.animation.ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ com.huawei.hms.scankit.drawable.ScanDrawable a;

    public b(com.huawei.hms.scankit.drawable.ScanDrawable scanDrawable) {
        this.a = scanDrawable;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
        float fFloatValue = ((java.lang.Float) this.a.f438f.getAnimatedValue()).floatValue();
        com.huawei.hms.scankit.drawable.ScanDrawable scanDrawable = this.a;
        scanDrawable.u = scanDrawable.o.top + ((int) (com.huawei.hms.scankit.drawable.ScanDrawable.b.getInterpolation(fFloatValue) * this.a.o.height()));
        if (fFloatValue < 0.389f) {
            this.a.t = com.huawei.hms.scankit.drawable.ScanDrawable.f435c.getInterpolation(fFloatValue / 0.389f);
        } else {
            this.a.t = 1.0f - com.huawei.hms.scankit.drawable.ScanDrawable.f436d.getInterpolation((fFloatValue - 0.389f) / 0.611f);
        }
        this.a.invalidateSelf();
    }
}
