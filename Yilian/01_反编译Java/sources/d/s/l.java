package d.s;

/* loaded from: classes.dex */
public class l extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ d.e.a a;
    public final /* synthetic */ d.s.k b;

    public l(d.s.k kVar, d.e.a aVar) {
        this.b = kVar;
        this.a = aVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        this.a.remove(animator);
        this.b.w.remove(animator);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(android.animation.Animator animator) {
        this.b.w.add(animator);
    }
}
