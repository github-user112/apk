package d.j.d;

/* loaded from: classes.dex */
public class o extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ android.view.ViewGroup a;
    public final /* synthetic */ android.view.View b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ androidx.fragment.app.Fragment f2117c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d.j.d.n0.a f2118d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d.g.i.a f2119e;

    public o(android.view.ViewGroup viewGroup, android.view.View view, androidx.fragment.app.Fragment fragment, d.j.d.n0.a aVar, d.g.i.a aVar2) {
        this.a = viewGroup;
        this.b = view;
        this.f2117c = fragment;
        this.f2118d = aVar;
        this.f2119e = aVar2;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) throws android.content.res.Resources.NotFoundException {
        this.a.endViewTransition(this.b);
        android.animation.Animator animator2 = this.f2117c.getAnimator();
        this.f2117c.setAnimator(null);
        if (animator2 == null || this.a.indexOfChild(this.b) >= 0) {
            return;
        }
        ((d.j.d.y.d) this.f2118d).a(this.f2117c, this.f2119e);
    }
}
