package d.b.p;

/* loaded from: classes.dex */
public class d extends d.b.p.a implements d.b.p.i.g.a {

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f1676c;

    /* renamed from: d, reason: collision with root package name */
    public androidx.appcompat.widget.ActionBarContextView f1677d;

    /* renamed from: e, reason: collision with root package name */
    public d.b.p.a.InterfaceC0036a f1678e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.ref.WeakReference<android.view.View> f1679f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1680g;
    public d.b.p.i.g h;

    public d(android.content.Context context, androidx.appcompat.widget.ActionBarContextView actionBarContextView, d.b.p.a.InterfaceC0036a interfaceC0036a, boolean z) {
        this.f1676c = context;
        this.f1677d = actionBarContextView;
        this.f1678e = interfaceC0036a;
        d.b.p.i.g gVar = new d.b.p.i.g(actionBarContextView.getContext());
        gVar.l = 1;
        this.h = gVar;
        gVar.f1728e = this;
    }

    @Override // d.b.p.i.g.a
    public boolean a(d.b.p.i.g gVar, android.view.MenuItem menuItem) {
        return this.f1678e.c(this, menuItem);
    }

    @Override // d.b.p.i.g.a
    public void b(d.b.p.i.g gVar) {
        i();
        d.b.q.c cVar = this.f1677d.f1754d;
        if (cVar != null) {
            cVar.n();
        }
    }

    @Override // d.b.p.a
    public void c() {
        if (this.f1680g) {
            return;
        }
        this.f1680g = true;
        this.f1677d.sendAccessibilityEvent(32);
        this.f1678e.b(this);
    }

    @Override // d.b.p.a
    public android.view.View d() {
        java.lang.ref.WeakReference<android.view.View> weakReference = this.f1679f;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // d.b.p.a
    public android.view.Menu e() {
        return this.h;
    }

    @Override // d.b.p.a
    public android.view.MenuInflater f() {
        return new d.b.p.f(this.f1677d.getContext());
    }

    @Override // d.b.p.a
    public java.lang.CharSequence g() {
        return this.f1677d.getSubtitle();
    }

    @Override // d.b.p.a
    public java.lang.CharSequence h() {
        return this.f1677d.getTitle();
    }

    @Override // d.b.p.a
    public void i() {
        this.f1678e.a(this, this.h);
    }

    @Override // d.b.p.a
    public boolean j() {
        return this.f1677d.r;
    }

    @Override // d.b.p.a
    public void k(android.view.View view) {
        this.f1677d.setCustomView(view);
        this.f1679f = view != null ? new java.lang.ref.WeakReference<>(view) : null;
    }

    @Override // d.b.p.a
    public void l(int i) {
        this.f1677d.setSubtitle(this.f1676c.getString(i));
    }

    @Override // d.b.p.a
    public void m(java.lang.CharSequence charSequence) {
        this.f1677d.setSubtitle(charSequence);
    }

    @Override // d.b.p.a
    public void n(int i) {
        this.f1677d.setTitle(this.f1676c.getString(i));
    }

    @Override // d.b.p.a
    public void o(java.lang.CharSequence charSequence) {
        this.f1677d.setTitle(charSequence);
    }

    @Override // d.b.p.a
    public void p(boolean z) {
        this.b = z;
        this.f1677d.setTitleOptional(z);
    }
}
