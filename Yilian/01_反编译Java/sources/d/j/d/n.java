package d.j.d;

/* loaded from: classes.dex */
public class n implements android.view.animation.Animation.AnimationListener {
    public final /* synthetic */ android.view.ViewGroup a;
    public final /* synthetic */ androidx.fragment.app.Fragment b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d.j.d.n0.a f2110c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d.g.i.a f2111d;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() throws android.content.res.Resources.NotFoundException {
            if (d.j.d.n.this.b.getAnimatingAway() != null) {
                d.j.d.n.this.b.setAnimatingAway(null);
                d.j.d.n nVar = d.j.d.n.this;
                ((d.j.d.y.d) nVar.f2110c).a(nVar.b, nVar.f2111d);
            }
        }
    }

    public n(android.view.ViewGroup viewGroup, androidx.fragment.app.Fragment fragment, d.j.d.n0.a aVar, d.g.i.a aVar2) {
        this.a = viewGroup;
        this.b = fragment;
        this.f2110c = aVar;
        this.f2111d = aVar2;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(android.view.animation.Animation animation) {
        this.a.post(new d.j.d.n.a());
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(android.view.animation.Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(android.view.animation.Animation animation) {
    }
}
