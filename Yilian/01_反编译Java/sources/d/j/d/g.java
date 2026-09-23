package d.j.d;

/* loaded from: classes.dex */
public class g implements d.g.i.a.InterfaceC0046a {
    public final /* synthetic */ android.view.View a;
    public final /* synthetic */ android.view.ViewGroup b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ d.j.d.c.b f2078c;

    public g(d.j.d.c cVar, android.view.View view, android.view.ViewGroup viewGroup, d.j.d.c.b bVar) {
        this.a = view;
        this.b = viewGroup;
        this.f2078c = bVar;
    }

    @Override // d.g.i.a.InterfaceC0046a
    public void c() {
        this.a.clearAnimation();
        this.b.endViewTransition(this.a);
        this.f2078c.a();
    }
}
