package e.c.a.b.v;

/* loaded from: classes.dex */
public class c extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ e.c.a.b.n.d a;

    public c(com.google.android.material.transformation.FabTransformationBehavior fabTransformationBehavior, e.c.a.b.n.d dVar) {
        this.a = dVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        e.c.a.b.n.d.e revealInfo = this.a.getRevealInfo();
        revealInfo.f2640c = Float.MAX_VALUE;
        this.a.setRevealInfo(revealInfo);
    }
}
