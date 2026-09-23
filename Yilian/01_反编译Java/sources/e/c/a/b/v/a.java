package e.c.a.b.v;

/* loaded from: classes.dex */
public class a implements android.animation.ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ android.view.View a;

    public a(com.google.android.material.transformation.FabTransformationBehavior fabTransformationBehavior, android.view.View view) {
        this.a = view;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(android.animation.ValueAnimator valueAnimator) {
        this.a.invalidate();
    }
}
