package d.b.p.i;

/* loaded from: classes.dex */
public class j extends d.b.p.i.c implements android.view.MenuItem {

    /* renamed from: d, reason: collision with root package name */
    public final d.g.h.a.b f1737d;

    /* renamed from: e, reason: collision with root package name */
    public java.lang.reflect.Method f1738e;

    public class a extends d.g.m.b {
        public final android.view.ActionProvider b;

        public a(android.content.Context context, android.view.ActionProvider actionProvider) {
            super(context);
            this.b = actionProvider;
        }
    }

    public class b extends d.b.p.i.j.a implements android.view.ActionProvider.VisibilityListener {

        /* renamed from: d, reason: collision with root package name */
        public d.g.m.b.a f1740d;

        public b(d.b.p.i.j jVar, android.content.Context context, android.view.ActionProvider actionProvider) {
            super(context, actionProvider);
        }

        @Override // d.g.m.b
        public boolean a() {
            return this.b.isVisible();
        }

        @Override // d.g.m.b
        public android.view.View b(android.view.MenuItem menuItem) {
            return this.b.onCreateActionView(menuItem);
        }

        @Override // d.g.m.b
        public boolean c() {
            return this.b.overridesItemVisibility();
        }

        @Override // d.g.m.b
        public void d(d.g.m.b.a aVar) {
            this.f1740d = aVar;
            this.b.setVisibilityListener(this);
        }

        @Override // android.view.ActionProvider.VisibilityListener
        public void onActionProviderVisibilityChanged(boolean z) {
            d.g.m.b.a aVar = this.f1740d;
            if (aVar != null) {
                d.b.p.i.g gVar = d.b.p.i.i.this.n;
                gVar.h = true;
                gVar.q(true);
            }
        }
    }

    public static class c extends android.widget.FrameLayout implements d.b.p.b {
        public final android.view.CollapsibleActionView a;

        /* JADX WARN: Multi-variable type inference failed */
        public c(android.view.View view) {
            super(view.getContext());
            this.a = (android.view.CollapsibleActionView) view;
            addView(view);
        }

        @Override // d.b.p.b
        public void c() {
            this.a.onActionViewExpanded();
        }

        @Override // d.b.p.b
        public void f() {
            this.a.onActionViewCollapsed();
        }
    }

    public class d implements android.view.MenuItem.OnActionExpandListener {
        public final android.view.MenuItem.OnActionExpandListener a;

        public d(android.view.MenuItem.OnActionExpandListener onActionExpandListener) {
            this.a = onActionExpandListener;
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionCollapse(android.view.MenuItem menuItem) {
            return this.a.onMenuItemActionCollapse(d.b.p.i.j.this.c(menuItem));
        }

        @Override // android.view.MenuItem.OnActionExpandListener
        public boolean onMenuItemActionExpand(android.view.MenuItem menuItem) {
            return this.a.onMenuItemActionExpand(d.b.p.i.j.this.c(menuItem));
        }
    }

    public class e implements android.view.MenuItem.OnMenuItemClickListener {
        public final android.view.MenuItem.OnMenuItemClickListener a;

        public e(android.view.MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            this.a = onMenuItemClickListener;
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(android.view.MenuItem menuItem) {
            return this.a.onMenuItemClick(d.b.p.i.j.this.c(menuItem));
        }
    }

    public j(android.content.Context context, d.g.h.a.b bVar) {
        super(context);
        if (bVar == null) {
            throw new java.lang.IllegalArgumentException("Wrapped Object can not be null.");
        }
        this.f1737d = bVar;
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return this.f1737d.collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return this.f1737d.expandActionView();
    }

    @Override // android.view.MenuItem
    public android.view.ActionProvider getActionProvider() {
        d.g.m.b bVarB = this.f1737d.b();
        if (bVarB instanceof d.b.p.i.j.a) {
            return ((d.b.p.i.j.a) bVarB).b;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public android.view.View getActionView() {
        android.view.View actionView = this.f1737d.getActionView();
        return actionView instanceof d.b.p.i.j.c ? (android.view.View) ((d.b.p.i.j.c) actionView).a : actionView;
    }

    @Override // android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f1737d.getAlphabeticModifiers();
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f1737d.getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getContentDescription() {
        return this.f1737d.getContentDescription();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f1737d.getGroupId();
    }

    @Override // android.view.MenuItem
    public android.graphics.drawable.Drawable getIcon() {
        return this.f1737d.getIcon();
    }

    @Override // android.view.MenuItem
    public android.content.res.ColorStateList getIconTintList() {
        return this.f1737d.getIconTintList();
    }

    @Override // android.view.MenuItem
    public android.graphics.PorterDuff.Mode getIconTintMode() {
        return this.f1737d.getIconTintMode();
    }

    @Override // android.view.MenuItem
    public android.content.Intent getIntent() {
        return this.f1737d.getIntent();
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f1737d.getItemId();
    }

    @Override // android.view.MenuItem
    public android.view.ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.f1737d.getMenuInfo();
    }

    @Override // android.view.MenuItem
    public int getNumericModifiers() {
        return this.f1737d.getNumericModifiers();
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f1737d.getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f1737d.getOrder();
    }

    @Override // android.view.MenuItem
    public android.view.SubMenu getSubMenu() {
        return d(this.f1737d.getSubMenu());
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getTitle() {
        return this.f1737d.getTitle();
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getTitleCondensed() {
        return this.f1737d.getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public java.lang.CharSequence getTooltipText() {
        return this.f1737d.getTooltipText();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f1737d.hasSubMenu();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.f1737d.isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return this.f1737d.isCheckable();
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return this.f1737d.isChecked();
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return this.f1737d.isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return this.f1737d.isVisible();
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setActionProvider(android.view.ActionProvider actionProvider) {
        d.b.p.i.j.b bVar = new d.b.p.i.j.b(this, this.a, actionProvider);
        d.g.h.a.b bVar2 = this.f1737d;
        if (actionProvider == null) {
            bVar = null;
        }
        bVar2.a(bVar);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setActionView(int i) {
        this.f1737d.setActionView(i);
        android.view.View actionView = this.f1737d.getActionView();
        if (actionView instanceof android.view.CollapsibleActionView) {
            this.f1737d.setActionView(new d.b.p.i.j.c(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setActionView(android.view.View view) {
        if (view instanceof android.view.CollapsibleActionView) {
            view = new d.b.p.i.j.c(view);
        }
        this.f1737d.setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setAlphabeticShortcut(char c2) {
        this.f1737d.setAlphabeticShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setAlphabeticShortcut(char c2, int i) {
        this.f1737d.setAlphabeticShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setCheckable(boolean z) {
        this.f1737d.setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setChecked(boolean z) {
        this.f1737d.setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setContentDescription(java.lang.CharSequence charSequence) {
        this.f1737d.setContentDescription(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setEnabled(boolean z) {
        this.f1737d.setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIcon(int i) {
        this.f1737d.setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIcon(android.graphics.drawable.Drawable drawable) {
        this.f1737d.setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIconTintList(android.content.res.ColorStateList colorStateList) {
        this.f1737d.setIconTintList(colorStateList);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIconTintMode(android.graphics.PorterDuff.Mode mode) {
        this.f1737d.setIconTintMode(mode);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setIntent(android.content.Intent intent) {
        this.f1737d.setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setNumericShortcut(char c2) {
        this.f1737d.setNumericShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setNumericShortcut(char c2, int i) {
        this.f1737d.setNumericShortcut(c2, i);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setOnActionExpandListener(android.view.MenuItem.OnActionExpandListener onActionExpandListener) {
        this.f1737d.setOnActionExpandListener(onActionExpandListener != null ? new d.b.p.i.j.d(onActionExpandListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setOnMenuItemClickListener(android.view.MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f1737d.setOnMenuItemClickListener(onMenuItemClickListener != null ? new d.b.p.i.j.e(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setShortcut(char c2, char c3) {
        this.f1737d.setShortcut(c2, c3);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setShortcut(char c2, char c3, int i, int i2) {
        this.f1737d.setShortcut(c2, c3, i, i2);
        return this;
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        this.f1737d.setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setShowAsActionFlags(int i) {
        this.f1737d.setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitle(int i) {
        this.f1737d.setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitle(java.lang.CharSequence charSequence) {
        this.f1737d.setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTitleCondensed(java.lang.CharSequence charSequence) {
        this.f1737d.setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setTooltipText(java.lang.CharSequence charSequence) {
        this.f1737d.setTooltipText(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public android.view.MenuItem setVisible(boolean z) {
        return this.f1737d.setVisible(z);
    }
}
