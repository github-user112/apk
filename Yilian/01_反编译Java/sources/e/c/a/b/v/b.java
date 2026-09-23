package e.c.a.b.v;

/* loaded from: classes.dex */
public class b extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ e.c.a.b.n.d a;
    public final /* synthetic */ android.graphics.drawable.Drawable b;

    public b(com.google.android.material.transformation.FabTransformationBehavior fabTransformationBehavior, e.c.a.b.n.d dVar, android.graphics.drawable.Drawable drawable) {
        this.a = dVar;
        this.b = drawable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        this.a.setCircularRevealOverlayDrawable(null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(android.animation.Animator animator) {
        this.a.setCircularRevealOverlayDrawable(this.b);
    }
}
