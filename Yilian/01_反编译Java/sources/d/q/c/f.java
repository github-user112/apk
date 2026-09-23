package d.q.c;

/* loaded from: classes.dex */
public class f extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ androidx.recyclerview.widget.RecyclerView.x a;
    public final /* synthetic */ android.view.ViewPropertyAnimator b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ android.view.View f2191c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d.q.c.k f2192d;

    public f(d.q.c.k kVar, androidx.recyclerview.widget.RecyclerView.x xVar, android.view.ViewPropertyAnimator viewPropertyAnimator, android.view.View view) {
        this.f2192d = kVar;
        this.a = xVar;
        this.b = viewPropertyAnimator;
        this.f2191c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        this.b.setListener(null);
        this.f2191c.setAlpha(1.0f);
        this.f2192d.c(this.a);
        this.f2192d.q.remove(this.a);
        this.f2192d.j();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(android.animation.Animator animator) {
        if (this.f2192d == null) {
            throw null;
        }
    }
}
