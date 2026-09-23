package e.c.a.b.l;

/* loaded from: classes.dex */
public class b extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ com.google.android.material.bottomappbar.BottomAppBar a;

    public b(com.google.android.material.bottomappbar.BottomAppBar bottomAppBar) {
        this.a = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        this.a.P = null;
    }
}
