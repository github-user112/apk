package d.b.p.i;

/* loaded from: classes.dex */
public class a implements d.g.h.a.b {
    public final int a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1698c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.CharSequence f1699d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.CharSequence f1700e;

    /* renamed from: f, reason: collision with root package name */
    public android.content.Intent f1701f;

    /* renamed from: g, reason: collision with root package name */
    public char f1702g;
    public char i;
    public android.graphics.drawable.Drawable k;
    public android.content.Context l;
    public java.lang.CharSequence m;
    public java.lang.CharSequence n;
    public int h = 4096;
    public int j = 4096;
    public android.content.res.ColorStateList o = null;
    public android.graphics.PorterDuff.Mode p = null;
    public boolean q = false;
    public boolean r = false;
    public int s = 16;

    public a(android.content.Context context, int i, int i2, int i3, int i4, java.lang.CharSequence charSequence) {
        this.l = context;
        this.a = i2;
        this.b = i;
        this.f1698c = i4;
        this.f1699d = charSequence;
    }

    @Override // d.g.h.a.b
    public d.g.h.a.b a(d.g.m.b bVar) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // d.g.h.a.b
    public d.g.m.b b() {
        return null;
    }

    public final void c() {
        if (this.k != null) {
            if (this.q || this.r) {
                android.graphics.drawable.Drawable drawableA0 = d.b.k.r.A0(this.k);
                this.k = drawableA0;
                android.graphics.drawable.Drawable drawableMutate = drawableA0.mutate();
                this.k = drawableMutate;
                if (this.q) {
                    d.b.k.r.t0(drawableMutate, this.o);
                }
                if (this.r) {
                    d.b.k.r.u0(this.k, this.p);
                }
            }
        }
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.View getActionView() {
        return null;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.i;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public java.lang.CharSequence getContentDescription() {
        return this.m;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.b;
    }

    @Override // android.view.MenuItem
    public android.graphics.drawable.Drawable getIcon() {
        return this.k;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.content.res.ColorStateList getIconTintList() {
        return this.o;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.graphics.PorterDuff.Mode getIconTintMode() {
        return this.p;
    }

    @Override // android.view.MenuItem
    public android.content.Intent getIntent() {
        return this.f1701f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.a;
    }

    @Override // android.view.MenuItem
    public android.view.ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f1702g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1698c;
    }

    @Override // android.view.MenuItem
    public android.view.SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getTitle() {
        return this.f1699d;
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getTitleCondensed() {
        java.lang.CharSequence charSequence = this.f1700e;
        return charSequence != null ? charSequence : this.f1699d;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public java.lang.CharSequence getTooltipText() {
        return this.n;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.s & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.s & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.s & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.s & 8) == 0;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setActionView(int i) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setAlphabeticShortcut(char c2) {
        this.i = java.lang.Character.toLowerCase(c2);
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setAlphabeticShortcut(char c2, int i) {
        this.i = java.lang.Character.toLowerCase(c2);
        this.j = android.view.KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setCheckable(boolean z) {
        this.s = (z ? 1 : 0) | (this.s & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setChecked(boolean z) {
        this.s = (z ? 2 : 0) | (this.s & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setContentDescription(java.lang.CharSequence charSequence) {
        this.m = charSequence;
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public d.g.h.a.b setContentDescription(java.lang.CharSequence charSequence) {
        this.m = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setEnabled(boolean z) {
        this.s = (z ? 16 : 0) | (this.s & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIcon(int i) {
        this.k = d.g.f.a.d(this.l, i);
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIcon(android.graphics.drawable.Drawable drawable) {
        this.k = drawable;
        c();
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setIconTintList(android.content.res.ColorStateList colorStateList) {
        this.o = colorStateList;
        this.q = true;
        c();
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setIconTintMode(android.graphics.PorterDuff.Mode mode) {
        this.p = mode;
        this.r = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIntent(android.content.Intent intent) {
        this.f1701f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setNumericShortcut(char c2) {
        this.f1702g = c2;
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setNumericShortcut(char c2, int i) {
        this.f1702g = c2;
        this.h = android.view.KeyEvent.normalizeMetaState(i);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setOnActionExpandListener(android.view.MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setOnMenuItemClickListener(android.view.MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setShortcut(char c2, char c3) {
        this.f1702g = c2;
        this.i = java.lang.Character.toLowerCase(c3);
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.f1702g = c2;
        this.h = android.view.KeyEvent.normalizeMetaState(i);
        this.i = java.lang.Character.toLowerCase(c3);
        this.j = android.view.KeyEvent.normalizeMetaState(i2);
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setShowAsActionFlags(int i) {
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitle(int i) {
        this.f1699d = this.l.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitle(java.lang.CharSequence charSequence) {
        this.f1699d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitleCondensed(java.lang.CharSequence charSequence) {
        this.f1700e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTooltipText(java.lang.CharSequence charSequence) {
        this.n = charSequence;
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public d.g.h.a.b setTooltipText(java.lang.CharSequence charSequence) {
        this.n = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setVisible(boolean z) {
        this.s = (this.s & 8) | (z ? 0 : 8);
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setActionView(android.view.View view) {
        throw new java.lang.UnsupportedOperationException();
    }
}
