package com.huawei.hms.scankit.drawable;

/* loaded from: classes.dex */
public class c extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ com.huawei.hms.scankit.drawable.ScanDrawable a;

    public c(com.huawei.hms.scankit.drawable.ScanDrawable scanDrawable) {
        this.a = scanDrawable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(android.animation.Animator animator) {
        super.onAnimationRepeat(animator);
        this.a.s = !r2.s;
    }
}
