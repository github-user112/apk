package e.c.a.b.n;

/* loaded from: classes.dex */
public final class a extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ e.c.a.b.n.d a;

    public a(e.c.a.b.n.d dVar) {
        this.a = dVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        this.a.a();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(android.animation.Animator animator) {
        this.a.b();
    }
}
