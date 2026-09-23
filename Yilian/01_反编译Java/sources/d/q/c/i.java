package d.q.c;

/* loaded from: classes.dex */
public class i extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ d.q.c.k.a a;
    public final /* synthetic */ android.view.ViewPropertyAnimator b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ android.view.View f2199c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d.q.c.k f2200d;

    public i(d.q.c.k kVar, d.q.c.k.a aVar, android.view.ViewPropertyAnimator viewPropertyAnimator, android.view.View view) {
        this.f2200d = kVar;
        this.a = aVar;
        this.b = viewPropertyAnimator;
        this.f2199c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        this.b.setListener(null);
        this.f2199c.setAlpha(1.0f);
        this.f2199c.setTranslationX(0.0f);
        this.f2199c.setTranslationY(0.0f);
        this.f2200d.c(this.a.a);
        this.f2200d.r.remove(this.a.a);
        this.f2200d.j();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(android.animation.Animator animator) {
        d.q.c.k kVar = this.f2200d;
        androidx.recyclerview.widget.RecyclerView.x xVar = this.a.a;
        if (kVar == null) {
            throw null;
        }
    }
}
