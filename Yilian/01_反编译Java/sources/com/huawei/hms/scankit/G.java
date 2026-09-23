package com.huawei.hms.scankit;

/* loaded from: classes.dex */
public class G implements android.animation.ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ com.huawei.hms.scankit.ViewfinderView a;

    public G(com.huawei.hms.scankit.ViewfinderView viewfinderView) {
        this.a = viewfinderView;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
        this.a.m = ((java.lang.Integer) valueAnimator.getAnimatedValue()).intValue();
        this.a.invalidate();
    }
}
