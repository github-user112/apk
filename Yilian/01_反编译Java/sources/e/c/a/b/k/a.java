package e.c.a.b.k;

/* loaded from: classes.dex */
public class a implements android.animation.ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ androidx.coordinatorlayout.widget.CoordinatorLayout a;
    public final /* synthetic */ com.google.android.material.appbar.AppBarLayout b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ com.google.android.material.appbar.AppBarLayout.BaseBehavior f2613c;

    public a(com.google.android.material.appbar.AppBarLayout.BaseBehavior baseBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, com.google.android.material.appbar.AppBarLayout appBarLayout) {
        this.f2613c = baseBehavior;
        this.a = coordinatorLayout;
        this.b = appBarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
        this.f2613c.G(this.a, this.b, ((java.lang.Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
