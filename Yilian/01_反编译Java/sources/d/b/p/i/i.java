package d.b.p.i;

/* loaded from: classes.dex */
public final class i implements d.g.h.a.b {
    public d.g.m.b A;
    public android.view.MenuItem.OnActionExpandListener B;
    public android.view.ContextMenu.ContextMenuInfo D;
    public final int a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f1732c;

    /* renamed from: d, reason: collision with root package name */
    public final int f1733d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.CharSequence f1734e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.CharSequence f1735f;

    /* renamed from: g, reason: collision with root package name */
    public android.content.Intent f1736g;
    public char h;
    public char j;
    public android.graphics.drawable.Drawable l;
    public d.b.p.i.g n;
    public d.b.p.i.r o;
    public android.view.MenuItem.OnMenuItemClickListener p;
    public java.lang.CharSequence q;
    public java.lang.CharSequence r;
    public int y;
    public android.view.View z;
    public int i = 4096;
    public int k = 4096;
    public int m = 0;
    public android.content.res.ColorStateList s = null;
    public android.graphics.PorterDuff.Mode t = null;
    public boolean u = false;
    public boolean v = false;
    public boolean w = false;
    public int x = 16;
    public boolean C = false;

    public class a implements d.g.m.b.a {
        public a() {
        }
    }

    public i(d.b.p.i.g gVar, int i, int i2, int i3, int i4, java.lang.CharSequence charSequence, int i5) {
        this.y = 0;
        this.n = gVar;
        this.a = i2;
        this.b = i;
        this.f1732c = i3;
        this.f1733d = i4;
        this.f1734e = charSequence;
        this.y = i5;
    }

    public static void c(java.lang.StringBuilder sb, int i, int i2, java.lang.String str) {
        if ((i & i2) == i2) {
            sb.append(str);
        }
    }

    @Override // d.g.h.a.b
    public d.g.h.a.b a(d.g.m.b bVar) {
        d.g.m.b bVar2 = this.A;
        if (bVar2 != null) {
            bVar2.a = null;
        }
        this.z = null;
        this.A = bVar;
        this.n.q(true);
        d.g.m.b bVar3 = this.A;
        if (bVar3 != null) {
            bVar3.d(new d.b.p.i.i.a());
        }
        return this;
    }

    @Override // d.g.h.a.b
    public d.g.m.b b() {
        return this.A;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.y & 8) == 0) {
            return false;
        }
        if (this.z == null) {
            return true;
        }
        android.view.MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.n.d(this);
        }
        return false;
    }

    public final android.graphics.drawable.Drawable d(android.graphics.drawable.Drawable drawable) {
        if (drawable != null && this.w && (this.u || this.v)) {
            drawable = d.b.k.r.A0(drawable).mutate();
            if (this.u) {
                d.b.k.r.t0(drawable, this.s);
            }
            if (this.v) {
                d.b.k.r.u0(drawable, this.t);
            }
            this.w = false;
        }
        return drawable;
    }

    public char e() {
        return this.n.n() ? this.j : this.h;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public boolean expandActionView() {
        if (!f()) {
            return false;
        }
        android.view.MenuItem.OnActionExpandListener onActionExpandListener = this.B;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.n.f(this);
        }
        return false;
    }

    public boolean f() {
        d.g.m.b bVar;
        if ((this.y & 8) == 0) {
            return false;
        }
        if (this.z == null && (bVar = this.A) != null) {
            this.z = bVar.b(this);
        }
        return this.z != null;
    }

    public boolean g() {
        return (this.x & 32) == 32;
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        throw new java.lang.UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.View getActionView() {
        android.view.View view = this.z;
        if (view != null) {
            return view;
        }
        d.g.m.b bVar = this.A;
        if (bVar == null) {
            return null;
        }
        android.view.View viewB = bVar.b(this);
        this.z = viewB;
        return viewB;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.j;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public java.lang.CharSequence getContentDescription() {
        return this.q;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.b;
    }

    @Override // android.view.MenuItem
    public android.graphics.drawable.Drawable getIcon() {
        android.graphics.drawable.Drawable drawable = this.l;
        if (drawable != null) {
            return d(drawable);
        }
        int i = this.m;
        if (i == 0) {
            return null;
        }
        android.graphics.drawable.Drawable drawableB = d.b.l.a.a.b(this.n.a, i);
        this.m = 0;
        this.l = drawableB;
        return d(drawableB);
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.content.res.ColorStateList getIconTintList() {
        return this.s;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.graphics.PorterDuff.Mode getIconTintMode() {
        return this.t;
    }

    @Override // android.view.MenuItem
    public android.content.Intent getIntent() {
        return this.f1736g;
    }

    @Override // android.view.MenuItem
    @android.view.ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.a;
    }

    @Override // android.view.MenuItem
    public android.view.ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.D;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1732c;
    }

    @Override // android.view.MenuItem
    public android.view.SubMenu getSubMenu() {
        return this.o;
    }

    @Override // android.view.MenuItem
    @android.view.ViewDebug.CapturedViewProperty
    public java.lang.CharSequence getTitle() {
        return this.f1734e;
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getTitleCondensed() {
        java.lang.CharSequence charSequence = this.f1735f;
        if (charSequence == null) {
            charSequence = this.f1734e;
        }
        return (android.os.Build.VERSION.SDK_INT >= 18 || charSequence == null || (charSequence instanceof java.lang.String)) ? charSequence : charSequence.toString();
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public java.lang.CharSequence getTooltipText() {
        return this.r;
    }

    public boolean h() {
        return (this.x & 4) != 0;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.o != null;
    }

    public d.g.h.a.b i(android.view.View view) {
        int i;
        this.z = view;
        this.A = null;
        if (view != null && view.getId() == -1 && (i = this.a) > 0) {
            view.setId(i);
        }
        this.n.p();
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.C;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.x & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.x & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.x & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        d.g.m.b bVar = this.A;
        return (bVar == null || !bVar.c()) ? (this.x & 8) == 0 : (this.x & 8) == 0 && this.A.a();
    }

    public void j(boolean z) {
        int i = this.x;
        int i2 = (z ? 2 : 0) | (i & (-3));
        this.x = i2;
        if (i != i2) {
            this.n.q(false);
        }
    }

    public void k(boolean z) {
        this.x = z ? this.x | 32 : this.x & (-33);
    }

    public boolean l(boolean z) {
        int i = this.x;
        int i2 = (z ? 0 : 8) | (i & (-9));
        this.x = i2;
        return i != i2;
    }

    public boolean m() {
        return this.n.o() && e() != 0;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        throw new java.lang.UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setActionView(int i) {
        android.content.Context context = this.n.a;
        i(android.view.LayoutInflater.from(context).inflate(i, (android.view.ViewGroup) new android.widget.LinearLayout(context), false));
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public /* bridge */ /* synthetic */ android.view.MenuItem setActionView(android.view.View view) {
        i(view);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setAlphabeticShortcut(char c2) {
        if (this.j == c2) {
            return this;
        }
        this.j = java.lang.Character.toLowerCase(c2);
        this.n.q(false);
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setAlphabeticShortcut(char c2, int i) {
        if (this.j == c2 && this.k == i) {
            return this;
        }
        this.j = java.lang.Character.toLowerCase(c2);
        this.k = android.view.KeyEvent.normalizeMetaState(i);
        this.n.q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setCheckable(boolean z) {
        int i = this.x;
        int i2 = (z ? 1 : 0) | (i & (-2));
        this.x = i2;
        if (i != i2) {
            this.n.q(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setChecked(boolean z) {
        if ((this.x & 4) != 0) {
            d.b.p.i.g gVar = this.n;
            if (gVar == null) {
                throw null;
            }
            int groupId = getGroupId();
            int size = gVar.f1729f.size();
            gVar.z();
            for (int i = 0; i < size; i++) {
                d.b.p.i.i iVar = gVar.f1729f.get(i);
                if (iVar.b == groupId && iVar.h() && iVar.isCheckable()) {
                    iVar.j(iVar == this);
                }
            }
            gVar.y();
        } else {
            j(z);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setContentDescription(java.lang.CharSequence charSequence) {
        this.q = charSequence;
        this.n.q(false);
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public d.g.h.a.b setContentDescription(java.lang.CharSequence charSequence) {
        this.q = charSequence;
        this.n.q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setEnabled(boolean z) {
        this.x = z ? this.x | 16 : this.x & (-17);
        this.n.q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIcon(int i) {
        this.l = null;
        this.m = i;
        this.w = true;
        this.n.q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIcon(android.graphics.drawable.Drawable drawable) {
        this.m = 0;
        this.l = drawable;
        this.w = true;
        this.n.q(false);
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setIconTintList(android.content.res.ColorStateList colorStateList) {
        this.s = colorStateList;
        this.u = true;
        this.w = true;
        this.n.q(false);
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setIconTintMode(android.graphics.PorterDuff.Mode mode) {
        this.t = mode;
        this.v = true;
        this.w = true;
        this.n.q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIntent(android.content.Intent intent) {
        this.f1736g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setNumericShortcut(char c2) {
        if (this.h == c2) {
            return this;
        }
        this.h = c2;
        this.n.q(false);
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setNumericShortcut(char c2, int i) {
        if (this.h == c2 && this.i == i) {
            return this;
        }
        this.h = c2;
        this.i = android.view.KeyEvent.normalizeMetaState(i);
        this.n.q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setOnActionExpandListener(android.view.MenuItem.OnActionExpandListener onActionExpandListener) {
        this.B = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setOnMenuItemClickListener(android.view.MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.p = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setShortcut(char c2, char c3) {
        this.h = c2;
        this.j = java.lang.Character.toLowerCase(c3);
        this.n.q(false);
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.h = c2;
        this.i = android.view.KeyEvent.normalizeMetaState(i);
        this.j = java.lang.Character.toLowerCase(c3);
        this.k = android.view.KeyEvent.normalizeMetaState(i2);
        this.n.q(false);
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public void setShowAsAction(int i) {
        int i2 = i & 3;
        if (i2 != 0 && i2 != 1 && i2 != 2) {
            throw new java.lang.IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.y = i;
        this.n.p();
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public android.view.MenuItem setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitle(int i) {
        setTitle(this.n.a.getString(i));
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitle(java.lang.CharSequence charSequence) {
        this.f1734e = charSequence;
        this.n.q(false);
        d.b.p.i.r rVar = this.o;
        if (rVar != null) {
            rVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitleCondensed(java.lang.CharSequence charSequence) {
        this.f1735f = charSequence;
        this.n.q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTooltipText(java.lang.CharSequence charSequence) {
        this.r = charSequence;
        this.n.q(false);
        return this;
    }

    @Override // d.g.h.a.b, android.view.MenuItem
    public d.g.h.a.b setTooltipText(java.lang.CharSequence charSequence) {
        this.r = charSequence;
        this.n.q(false);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setVisible(boolean z) {
        if (l(z)) {
            d.b.p.i.g gVar = this.n;
            gVar.h = true;
            gVar.q(true);
        }
        return this;
    }

    public java.lang.String toString() {
        java.lang.CharSequence charSequence = this.f1734e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }
}
