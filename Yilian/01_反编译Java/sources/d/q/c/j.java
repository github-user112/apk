package d.q.c;

/* loaded from: classes.dex */
public class j extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ d.q.c.k.a a;
    public final /* synthetic */ android.view.ViewPropertyAnimator b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ android.view.View f2201c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d.q.c.k f2202d;

    public j(d.q.c.k kVar, d.q.c.k.a aVar, android.view.ViewPropertyAnimator viewPropertyAnimator, android.view.View view) {
        this.f2202d = kVar;
        this.a = aVar;
        this.b = viewPropertyAnimator;
        this.f2201c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        this.b.setListener(null);
        this.f2201c.setAlpha(1.0f);
        this.f2201c.setTranslationX(0.0f);
        this.f2201c.setTranslationY(0.0f);
        this.f2202d.c(this.a.b);
        this.f2202d.r.remove(this.a.b);
        this.f2202d.j();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(android.animation.Animator animator) {
        d.q.c.k kVar = this.f2202d;
        androidx.recyclerview.widget.RecyclerView.x xVar = this.a.b;
        if (kVar == null) {
            throw null;
        }
    }
}
