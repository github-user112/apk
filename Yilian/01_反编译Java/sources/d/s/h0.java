package d.s;

/* loaded from: classes.dex */
public class h0 extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ d.s.w a;
    public final /* synthetic */ android.view.View b;

    public h0(d.s.i0 i0Var, d.s.w wVar, android.view.View view) {
        this.a = wVar;
        this.b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        this.a.c(this.b);
    }
}
