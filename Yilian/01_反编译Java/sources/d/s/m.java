package d.s;

/* loaded from: classes.dex */
public class m extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ d.s.k a;

    public m(d.s.k kVar) {
        this.a = kVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        this.a.m();
        animator.removeListener(this);
    }
}
