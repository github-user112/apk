package d.b.p.i;

/* loaded from: classes.dex */
public class r extends d.b.p.i.g implements android.view.SubMenu {
    public d.b.p.i.g A;
    public d.b.p.i.i B;

    public r(android.content.Context context, d.b.p.i.g gVar, d.b.p.i.i iVar) {
        super(context);
        this.A = gVar;
        this.B = iVar;
    }

    @Override // d.b.p.i.g
    public boolean d(d.b.p.i.i iVar) {
        return this.A.d(iVar);
    }

    @Override // d.b.p.i.g
    public boolean e(d.b.p.i.g gVar, android.view.MenuItem menuItem) {
        return super.e(gVar, menuItem) || this.A.e(gVar, menuItem);
    }

    @Override // d.b.p.i.g
    public boolean f(d.b.p.i.i iVar) {
        return this.A.f(iVar);
    }

    @Override // android.view.SubMenu
    public android.view.MenuItem getItem() {
        return this.B;
    }

    @Override // d.b.p.i.g
    public java.lang.String j() {
        d.b.p.i.i iVar = this.B;
        int i = iVar != null ? iVar.a : 0;
        if (i == 0) {
            return null;
        }
        return "android:menu:actionviewstates:" + i;
    }

    @Override // d.b.p.i.g
    public d.b.p.i.g k() {
        return this.A.k();
    }

    @Override // d.b.p.i.g
    public boolean m() {
        return this.A.m();
    }

    @Override // d.b.p.i.g
    public boolean n() {
        return this.A.n();
    }

    @Override // d.b.p.i.g
    public boolean o() {
        return this.A.o();
    }

    @Override // d.b.p.i.g, android.view.Menu
    public void setGroupDividerEnabled(boolean z) {
        this.A.setGroupDividerEnabled(z);
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderIcon(int i) {
        x(0, null, i, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderTitle(int i) {
        x(i, null, 0, null, null);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderView(android.view.View view) {
        x(0, null, 0, null, view);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setIcon(int i) {
        this.B.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setIcon(android.graphics.drawable.Drawable drawable) {
        this.B.setIcon(drawable);
        return this;
    }

    @Override // d.b.p.i.g, android.view.Menu
    public void setQwertyMode(boolean z) {
        this.A.setQwertyMode(z);
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderIcon(android.graphics.drawable.Drawable drawable) {
        x(0, null, 0, drawable, null);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderTitle(java.lang.CharSequence charSequence) {
        x(0, charSequence, 0, null, null);
        return this;
    }
}
