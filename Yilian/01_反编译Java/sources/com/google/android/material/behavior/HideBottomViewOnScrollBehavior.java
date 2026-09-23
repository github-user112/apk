package com.google.android.material.behavior;

/* loaded from: classes.dex */
public class HideBottomViewOnScrollBehavior<V extends android.view.View> extends androidx.coordinatorlayout.widget.CoordinatorLayout.c<V> {
    public int a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public android.view.ViewPropertyAnimator f210c;

    public class a extends android.animation.AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            com.google.android.material.behavior.HideBottomViewOnScrollBehavior.this.f210c = null;
        }
    }

    public HideBottomViewOnScrollBehavior() {
        this.a = 0;
        this.b = 2;
    }

    public HideBottomViewOnScrollBehavior(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
        this.b = 2;
    }

    public final void A(V v, int i, long j, android.animation.TimeInterpolator timeInterpolator) {
        this.f210c = v.animate().translationY(i).setInterpolator(timeInterpolator).setDuration(j).setListener(new com.google.android.material.behavior.HideBottomViewOnScrollBehavior.a());
    }

    public void B(V v) {
        android.view.ViewPropertyAnimator viewPropertyAnimator = this.f210c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.b = 1;
        A(v, this.a, 175L, e.c.a.b.j.a.b);
    }

    public void C(V v) {
        android.view.ViewPropertyAnimator viewPropertyAnimator = this.f210c;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
            v.clearAnimation();
        }
        this.b = 2;
        A(v, 0, 225L, e.c.a.b.j.a.f2606c);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean j(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, int i) {
        this.a = v.getMeasuredHeight();
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void p(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view, int i, int i2, int i3, int i4) {
        if (this.b != 1 && i2 > 0) {
            B(v);
        } else {
            if (this.b == 2 || i2 >= 0) {
                return;
            }
            C(v);
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean v(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view, android.view.View view2, int i) {
        return i == 2;
    }
}
