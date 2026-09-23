package d.q.c;

/* loaded from: classes.dex */
public class g extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ androidx.recyclerview.widget.RecyclerView.x a;
    public final /* synthetic */ android.view.View b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ android.view.ViewPropertyAnimator f2193c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d.q.c.k f2194d;

    public g(d.q.c.k kVar, androidx.recyclerview.widget.RecyclerView.x xVar, android.view.View view, android.view.ViewPropertyAnimator viewPropertyAnimator) {
        this.f2194d = kVar;
        this.a = xVar;
        this.b = view;
        this.f2193c = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(android.animation.Animator animator) {
        this.b.setAlpha(1.0f);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        this.f2193c.setListener(null);
        this.f2194d.c(this.a);
        this.f2194d.o.remove(this.a);
        this.f2194d.j();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(android.animation.Animator animator) {
        if (this.f2194d == null) {
            throw null;
        }
    }
}
