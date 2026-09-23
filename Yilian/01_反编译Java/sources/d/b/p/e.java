package d.b.p;

/* loaded from: classes.dex */
public class e extends android.view.ActionMode {
    public final android.content.Context a;
    public final d.b.p.a b;

    public static class a implements d.b.p.a.InterfaceC0036a {
        public final android.view.ActionMode.Callback a;
        public final android.content.Context b;

        /* renamed from: c, reason: collision with root package name */
        public final java.util.ArrayList<d.b.p.e> f1681c = new java.util.ArrayList<>();

        /* renamed from: d, reason: collision with root package name */
        public final d.e.h<android.view.Menu, android.view.Menu> f1682d = new d.e.h<>();

        public a(android.content.Context context, android.view.ActionMode.Callback callback) {
            this.b = context;
            this.a = callback;
        }

        @Override // d.b.p.a.InterfaceC0036a
        public boolean a(d.b.p.a aVar, android.view.Menu menu) {
            return this.a.onPrepareActionMode(e(aVar), f(menu));
        }

        @Override // d.b.p.a.InterfaceC0036a
        public void b(d.b.p.a aVar) {
            this.a.onDestroyActionMode(e(aVar));
        }

        @Override // d.b.p.a.InterfaceC0036a
        public boolean c(d.b.p.a aVar, android.view.MenuItem menuItem) {
            return this.a.onActionItemClicked(e(aVar), new d.b.p.i.j(this.b, (d.g.h.a.b) menuItem));
        }

        @Override // d.b.p.a.InterfaceC0036a
        public boolean d(d.b.p.a aVar, android.view.Menu menu) {
            return this.a.onCreateActionMode(e(aVar), f(menu));
        }

        public android.view.ActionMode e(d.b.p.a aVar) {
            int size = this.f1681c.size();
            for (int i = 0; i < size; i++) {
                d.b.p.e eVar = this.f1681c.get(i);
                if (eVar != null && eVar.b == aVar) {
                    return eVar;
                }
            }
            d.b.p.e eVar2 = new d.b.p.e(this.b, aVar);
            this.f1681c.add(eVar2);
            return eVar2;
        }

        public final android.view.Menu f(android.view.Menu menu) {
            android.view.Menu orDefault = this.f1682d.getOrDefault(menu, null);
            if (orDefault != null) {
                return orDefault;
            }
            d.b.p.i.o oVar = new d.b.p.i.o(this.b, (d.g.h.a.a) menu);
            this.f1682d.put(menu, oVar);
            return oVar;
        }
    }

    public e(android.content.Context context, d.b.p.a aVar) {
        this.a = context;
        this.b = aVar;
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.b.c();
    }

    @Override // android.view.ActionMode
    public android.view.View getCustomView() {
        return this.b.d();
    }

    @Override // android.view.ActionMode
    public android.view.Menu getMenu() {
        return new d.b.p.i.o(this.a, (d.g.h.a.a) this.b.e());
    }

    @Override // android.view.ActionMode
    public android.view.MenuInflater getMenuInflater() {
        return this.b.f();
    }

    @Override // android.view.ActionMode
    public java.lang.CharSequence getSubtitle() {
        return this.b.g();
    }

    @Override // android.view.ActionMode
    public java.lang.Object getTag() {
        return this.b.a;
    }

    @Override // android.view.ActionMode
    public java.lang.CharSequence getTitle() {
        return this.b.h();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.b.b;
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.b.i();
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.b.j();
    }

    @Override // android.view.ActionMode
    public void setCustomView(android.view.View view) {
        this.b.k(view);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.b.l(i);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(java.lang.CharSequence charSequence) {
        this.b.m(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTag(java.lang.Object obj) {
        this.b.a = obj;
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.b.n(i);
    }

    @Override // android.view.ActionMode
    public void setTitle(java.lang.CharSequence charSequence) {
        this.b.o(charSequence);
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.b.p(z);
    }
}
