package d.b.p.i;

/* loaded from: classes.dex */
public class s extends d.b.p.i.o implements android.view.SubMenu {

    /* renamed from: e, reason: collision with root package name */
    public final d.g.h.a.c f1752e;

    public s(android.content.Context context, d.g.h.a.c cVar) {
        super(context, cVar);
        this.f1752e = cVar;
    }

    @Override // android.view.SubMenu
    public void clearHeader() {
        this.f1752e.clearHeader();
    }

    @Override // android.view.SubMenu
    public android.view.MenuItem getItem() {
        return c(this.f1752e.getItem());
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderIcon(int i) {
        this.f1752e.setHeaderIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderIcon(android.graphics.drawable.Drawable drawable) {
        this.f1752e.setHeaderIcon(drawable);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderTitle(int i) {
        this.f1752e.setHeaderTitle(i);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderTitle(java.lang.CharSequence charSequence) {
        this.f1752e.setHeaderTitle(charSequence);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setHeaderView(android.view.View view) {
        this.f1752e.setHeaderView(view);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setIcon(int i) {
        this.f1752e.setIcon(i);
        return this;
    }

    @Override // android.view.SubMenu
    public android.view.SubMenu setIcon(android.graphics.drawable.Drawable drawable) {
        this.f1752e.setIcon(drawable);
        return this;
    }
}
