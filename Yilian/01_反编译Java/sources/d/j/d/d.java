package d.j.d;

/* loaded from: classes.dex */
public class d extends android.animation.AnimatorListenerAdapter {
    public final /* synthetic */ android.view.ViewGroup a;
    public final /* synthetic */ android.view.View b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ boolean f2065c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d.j.d.u0.d f2066d;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d.j.d.c.b f2067e;

    public d(d.j.d.c cVar, android.view.ViewGroup viewGroup, android.view.View view, boolean z, d.j.d.u0.d dVar, d.j.d.c.b bVar) {
        this.a = viewGroup;
        this.b = view;
        this.f2065c = z;
        this.f2066d = dVar;
        this.f2067e = bVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(android.animation.Animator animator) {
        this.a.endViewTransition(this.b);
        if (this.f2065c) {
            this.f2066d.a.a(this.b);
        }
        this.f2067e.a();
    }
}
