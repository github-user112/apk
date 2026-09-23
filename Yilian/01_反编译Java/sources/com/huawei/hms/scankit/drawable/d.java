package com.huawei.hms.scankit.drawable;

/* loaded from: classes.dex */
public class d extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ com.huawei.hms.scankit.drawable.ScanDrawable a;

    public d(com.huawei.hms.scankit.drawable.ScanDrawable scanDrawable) {
        this.a = scanDrawable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(android.animation.Animator animator) {
        com.huawei.hms.scankit.drawable.ScanDrawable scanDrawable;
        float fA;
        super.onAnimationRepeat(animator);
        float fAbs = java.lang.Math.abs(((java.lang.Float) this.a.f438f.getAnimatedValue()).floatValue() - 0.5f);
        this.a.x = !r1.x;
        if (this.a.x) {
            if (fAbs > 0.35f) {
                scanDrawable = this.a;
                fA = 0.0f;
            } else {
                scanDrawable = this.a;
                fA = com.huawei.hms.scankit.p.ze.a(0.5f);
            }
            scanDrawable.r = fA;
        }
    }
}
