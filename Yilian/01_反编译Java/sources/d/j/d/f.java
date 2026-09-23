package d.j.d;

/* loaded from: classes.dex */
public class f implements android.view.animation.Animation.AnimationListener {
    public final /* synthetic */ android.view.ViewGroup a;
    public final /* synthetic */ android.view.View b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d.j.d.c.b f2076c;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.j.d.f fVar = d.j.d.f.this;
            fVar.a.endViewTransition(fVar.b);
            d.j.d.f.this.f2076c.a();
        }
    }

    public f(d.j.d.c cVar, android.view.ViewGroup viewGroup, android.view.View view, d.j.d.c.b bVar) {
        this.a = viewGroup;
        this.b = view;
        this.f2076c = bVar;
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(android.view.animation.Animation animation) {
        this.a.post(new d.j.d.f.a());
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(android.view.animation.Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(android.view.animation.Animation animation) {
    }
}
