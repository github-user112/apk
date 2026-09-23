package d.q.c;

/* loaded from: classes.dex */
public class h extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ androidx.recyclerview.widget.RecyclerView.x a;
    public final /* synthetic */ int b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ android.view.View f2195c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ int f2196d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ android.view.ViewPropertyAnimator f2197e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ d.q.c.k f2198f;

    public h(d.q.c.k kVar, androidx.recyclerview.widget.RecyclerView.x xVar, int i, android.view.View view, int i2, android.view.ViewPropertyAnimator viewPropertyAnimator) {
        this.f2198f = kVar;
        this.a = xVar;
        this.b = i;
        this.f2195c = view;
        this.f2196d = i2;
        this.f2197e = viewPropertyAnimator;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(android.animation.Animator animator) {
        if (this.b != 0) {
            this.f2195c.setTranslationX(0.0f);
        }
        if (this.f2196d != 0) {
            this.f2195c.setTranslationY(0.0f);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        this.f2197e.setListener(null);
        this.f2198f.c(this.a);
        this.f2198f.p.remove(this.a);
        this.f2198f.j();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(android.animation.Animator animator) {
        if (this.f2198f == null) {
            throw null;
        }
    }
}
