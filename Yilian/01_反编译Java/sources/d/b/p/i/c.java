package d.b.p.i;

/* loaded from: classes.dex */
public abstract class c {
    public final android.content.Context a;
    public java.util.Map<d.g.h.a.b, android.view.MenuItem> b;

    /* renamed from: c, reason: collision with root package name */
    public java.util.Map<d.g.h.a.c, android.view.SubMenu> f1708c;

    public c(android.content.Context context) {
        this.a = context;
    }

    public final android.view.MenuItem c(android.view.MenuItem menuItem) {
        if (!(menuItem instanceof d.g.h.a.b)) {
            return menuItem;
        }
        d.g.h.a.b bVar = (d.g.h.a.b) menuItem;
        if (this.b == null) {
            this.b = new d.e.a();
        }
        android.view.MenuItem menuItem2 = this.b.get(menuItem);
        if (menuItem2 != null) {
            return menuItem2;
        }
        d.b.p.i.j jVar = new d.b.p.i.j(this.a, bVar);
        this.b.put(bVar, jVar);
        return jVar;
    }

    public final android.view.SubMenu d(android.view.SubMenu subMenu) {
        if (!(subMenu instanceof d.g.h.a.c)) {
            return subMenu;
        }
        d.g.h.a.c cVar = (d.g.h.a.c) subMenu;
        if (this.f1708c == null) {
            this.f1708c = new d.e.a();
        }
        android.view.SubMenu subMenu2 = this.f1708c.get(cVar);
        if (subMenu2 != null) {
            return subMenu2;
        }
        d.b.p.i.s sVar = new d.b.p.i.s(this.a, cVar);
        this.f1708c.put(cVar, sVar);
        return sVar;
    }
}
