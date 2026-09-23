package d.b.k;

/* loaded from: classes.dex */
public class u extends d.b.k.a implements androidx.appcompat.widget.ActionBarOverlayLayout.d {
    public static final android.view.animation.Interpolator A = new android.view.animation.AccelerateInterpolator();
    public static final android.view.animation.Interpolator B = new android.view.animation.DecelerateInterpolator();
    public android.content.Context a;
    public android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public androidx.appcompat.widget.ActionBarOverlayLayout f1652c;

    /* renamed from: d, reason: collision with root package name */
    public androidx.appcompat.widget.ActionBarContainer f1653d;

    /* renamed from: e, reason: collision with root package name */
    public d.b.q.b0 f1654e;

    /* renamed from: f, reason: collision with root package name */
    public androidx.appcompat.widget.ActionBarContextView f1655f;

    /* renamed from: g, reason: collision with root package name */
    public android.view.View f1656g;
    public boolean h;
    public d.b.k.u.d i;
    public d.b.p.a j;
    public d.b.p.a.InterfaceC0036a k;
    public boolean l;
    public java.util.ArrayList<d.b.k.a.b> m;
    public boolean n;
    public int o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t;
    public d.b.p.g u;
    public boolean v;
    public boolean w;
    public final d.g.m.w x;
    public final d.g.m.w y;
    public final d.g.m.y z;

    public class a extends d.g.m.x {
        public a() {
        }

        @Override // d.g.m.w
        public void b(android.view.View view) {
            android.view.View view2;
            d.b.k.u uVar = d.b.k.u.this;
            if (uVar.p && (view2 = uVar.f1656g) != null) {
                view2.setTranslationY(0.0f);
                d.b.k.u.this.f1653d.setTranslationY(0.0f);
            }
            d.b.k.u.this.f1653d.setVisibility(8);
            d.b.k.u.this.f1653d.setTransitioning(false);
            d.b.k.u uVar2 = d.b.k.u.this;
            uVar2.u = null;
            d.b.p.a.InterfaceC0036a interfaceC0036a = uVar2.k;
            if (interfaceC0036a != null) {
                interfaceC0036a.b(uVar2.j);
                uVar2.j = null;
                uVar2.k = null;
            }
            androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = d.b.k.u.this.f1652c;
            if (actionBarOverlayLayout != null) {
                d.g.m.s.K(actionBarOverlayLayout);
            }
        }
    }

    public class b extends d.g.m.x {
        public b() {
        }

        @Override // d.g.m.w
        public void b(android.view.View view) {
            d.b.k.u uVar = d.b.k.u.this;
            uVar.u = null;
            uVar.f1653d.requestLayout();
        }
    }

    public class c implements d.g.m.y {
        public c() {
        }
    }

    public class d extends d.b.p.a implements d.b.p.i.g.a {

        /* renamed from: c, reason: collision with root package name */
        public final android.content.Context f1657c;

        /* renamed from: d, reason: collision with root package name */
        public final d.b.p.i.g f1658d;

        /* renamed from: e, reason: collision with root package name */
        public d.b.p.a.InterfaceC0036a f1659e;

        /* renamed from: f, reason: collision with root package name */
        public java.lang.ref.WeakReference<android.view.View> f1660f;

        public d(android.content.Context context, d.b.p.a.InterfaceC0036a interfaceC0036a) {
            this.f1657c = context;
            this.f1659e = interfaceC0036a;
            d.b.p.i.g gVar = new d.b.p.i.g(context);
            gVar.l = 1;
            this.f1658d = gVar;
            gVar.f1728e = this;
        }

        @Override // d.b.p.i.g.a
        public boolean a(d.b.p.i.g gVar, android.view.MenuItem menuItem) {
            d.b.p.a.InterfaceC0036a interfaceC0036a = this.f1659e;
            if (interfaceC0036a != null) {
                return interfaceC0036a.c(this, menuItem);
            }
            return false;
        }

        @Override // d.b.p.i.g.a
        public void b(d.b.p.i.g gVar) {
            if (this.f1659e == null) {
                return;
            }
            i();
            d.b.q.c cVar = d.b.k.u.this.f1655f.f1754d;
            if (cVar != null) {
                cVar.n();
            }
        }

        @Override // d.b.p.a
        public void c() {
            d.b.k.u uVar = d.b.k.u.this;
            if (uVar.i != this) {
                return;
            }
            if ((uVar.q || uVar.r) ? false : true) {
                this.f1659e.b(this);
            } else {
                d.b.k.u uVar2 = d.b.k.u.this;
                uVar2.j = this;
                uVar2.k = this.f1659e;
            }
            this.f1659e = null;
            d.b.k.u.this.k(false);
            androidx.appcompat.widget.ActionBarContextView actionBarContextView = d.b.k.u.this.f1655f;
            if (actionBarContextView.k == null) {
                actionBarContextView.h();
            }
            d.b.k.u.this.f1654e.k().sendAccessibilityEvent(32);
            d.b.k.u uVar3 = d.b.k.u.this;
            uVar3.f1652c.setHideOnContentScrollEnabled(uVar3.w);
            d.b.k.u.this.i = null;
        }

        @Override // d.b.p.a
        public android.view.View d() {
            java.lang.ref.WeakReference<android.view.View> weakReference = this.f1660f;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // d.b.p.a
        public android.view.Menu e() {
            return this.f1658d;
        }

        @Override // d.b.p.a
        public android.view.MenuInflater f() {
            return new d.b.p.f(this.f1657c);
        }

        @Override // d.b.p.a
        public java.lang.CharSequence g() {
            return d.b.k.u.this.f1655f.getSubtitle();
        }

        @Override // d.b.p.a
        public java.lang.CharSequence h() {
            return d.b.k.u.this.f1655f.getTitle();
        }

        @Override // d.b.p.a
        public void i() {
            if (d.b.k.u.this.i != this) {
                return;
            }
            this.f1658d.z();
            try {
                this.f1659e.a(this, this.f1658d);
            } finally {
                this.f1658d.y();
            }
        }

        @Override // d.b.p.a
        public boolean j() {
            return d.b.k.u.this.f1655f.r;
        }

        @Override // d.b.p.a
        public void k(android.view.View view) {
            d.b.k.u.this.f1655f.setCustomView(view);
            this.f1660f = new java.lang.ref.WeakReference<>(view);
        }

        @Override // d.b.p.a
        public void l(int i) throws android.content.res.Resources.NotFoundException {
            d.b.k.u.this.f1655f.setSubtitle(d.b.k.u.this.a.getResources().getString(i));
        }

        @Override // d.b.p.a
        public void m(java.lang.CharSequence charSequence) {
            d.b.k.u.this.f1655f.setSubtitle(charSequence);
        }

        @Override // d.b.p.a
        public void n(int i) throws android.content.res.Resources.NotFoundException {
            d.b.k.u.this.f1655f.setTitle(d.b.k.u.this.a.getResources().getString(i));
        }

        @Override // d.b.p.a
        public void o(java.lang.CharSequence charSequence) {
            d.b.k.u.this.f1655f.setTitle(charSequence);
        }

        @Override // d.b.p.a
        public void p(boolean z) {
            this.b = z;
            d.b.k.u.this.f1655f.setTitleOptional(z);
        }
    }

    public u(android.app.Activity activity, boolean z) {
        new java.util.ArrayList();
        this.m = new java.util.ArrayList<>();
        this.o = 0;
        this.p = true;
        this.t = true;
        this.x = new d.b.k.u.a();
        this.y = new d.b.k.u.b();
        this.z = new d.b.k.u.c();
        android.view.View decorView = activity.getWindow().getDecorView();
        l(decorView);
        if (z) {
            return;
        }
        this.f1656g = decorView.findViewById(android.R.id.content);
    }

    public u(android.app.Dialog dialog) {
        new java.util.ArrayList();
        this.m = new java.util.ArrayList<>();
        this.o = 0;
        this.p = true;
        this.t = true;
        this.x = new d.b.k.u.a();
        this.y = new d.b.k.u.b();
        this.z = new d.b.k.u.c();
        l(dialog.getWindow().getDecorView());
    }

    @Override // d.b.k.a
    public boolean a() {
        d.b.q.b0 b0Var = this.f1654e;
        if (b0Var == null || !b0Var.n()) {
            return false;
        }
        this.f1654e.collapseActionView();
        return true;
    }

    @Override // d.b.k.a
    public void b(boolean z) {
        if (z == this.l) {
            return;
        }
        this.l = z;
        int size = this.m.size();
        for (int i = 0; i < size; i++) {
            this.m.get(i).a(z);
        }
    }

    @Override // d.b.k.a
    public int c() {
        return this.f1654e.p();
    }

    @Override // d.b.k.a
    public android.content.Context d() {
        if (this.b == null) {
            android.util.TypedValue typedValue = new android.util.TypedValue();
            this.a.getTheme().resolveAttribute(d.b.a.actionBarWidgetTheme, typedValue, true);
            int i = typedValue.resourceId;
            if (i != 0) {
                this.b = new android.view.ContextThemeWrapper(this.a, i);
            } else {
                this.b = this.a;
            }
        }
        return this.b;
    }

    @Override // d.b.k.a
    public void e(android.content.res.Configuration configuration) {
        m(this.a.getResources().getBoolean(d.b.b.abc_action_bar_embed_tabs));
    }

    @Override // d.b.k.a
    public boolean f(int i, android.view.KeyEvent keyEvent) {
        d.b.p.i.g gVar;
        d.b.k.u.d dVar = this.i;
        if (dVar == null || (gVar = dVar.f1658d) == null) {
            return false;
        }
        gVar.setQwertyMode(android.view.KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return gVar.performShortcut(i, keyEvent, 0);
    }

    @Override // d.b.k.a
    public void g(boolean z) {
        if (this.h) {
            return;
        }
        int i = z ? 4 : 0;
        int iP = this.f1654e.p();
        this.h = true;
        this.f1654e.o((i & 4) | (iP & (-5)));
    }

    @Override // d.b.k.a
    public void h(boolean z) {
        d.b.p.g gVar;
        this.v = z;
        if (z || (gVar = this.u) == null) {
            return;
        }
        gVar.a();
    }

    @Override // d.b.k.a
    public void i(java.lang.CharSequence charSequence) {
        this.f1654e.setWindowTitle(charSequence);
    }

    @Override // d.b.k.a
    public d.b.p.a j(d.b.p.a.InterfaceC0036a interfaceC0036a) {
        d.b.k.u.d dVar = this.i;
        if (dVar != null) {
            dVar.c();
        }
        this.f1652c.setHideOnContentScrollEnabled(false);
        this.f1655f.h();
        d.b.k.u.d dVar2 = new d.b.k.u.d(this.f1655f.getContext(), interfaceC0036a);
        dVar2.f1658d.z();
        try {
            if (!dVar2.f1659e.d(dVar2, dVar2.f1658d)) {
                return null;
            }
            this.i = dVar2;
            dVar2.i();
            this.f1655f.f(dVar2);
            k(true);
            this.f1655f.sendAccessibilityEvent(32);
            return dVar2;
        } finally {
            dVar2.f1658d.y();
        }
    }

    public void k(boolean z) {
        d.g.m.v vVarS;
        d.g.m.v vVarE;
        if (z) {
            if (!this.s) {
                this.s = true;
                androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = this.f1652c;
                if (actionBarOverlayLayout != null) {
                    actionBarOverlayLayout.setShowingForActionMode(true);
                }
                n(false);
            }
        } else if (this.s) {
            this.s = false;
            androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout2 = this.f1652c;
            if (actionBarOverlayLayout2 != null) {
                actionBarOverlayLayout2.setShowingForActionMode(false);
            }
            n(false);
        }
        if (!d.g.m.s.A(this.f1653d)) {
            if (z) {
                this.f1654e.i(4);
                this.f1655f.setVisibility(0);
                return;
            } else {
                this.f1654e.i(0);
                this.f1655f.setVisibility(8);
                return;
            }
        }
        if (z) {
            vVarE = this.f1654e.s(4, 100L);
            vVarS = this.f1655f.e(0, 200L);
        } else {
            vVarS = this.f1654e.s(0, 200L);
            vVarE = this.f1655f.e(8, 100L);
        }
        d.b.p.g gVar = new d.b.p.g();
        gVar.a.add(vVarE);
        android.view.View view = vVarE.a.get();
        long duration = view != null ? view.animate().getDuration() : 0L;
        android.view.View view2 = vVarS.a.get();
        if (view2 != null) {
            view2.animate().setStartDelay(duration);
        }
        gVar.a.add(vVarS);
        gVar.b();
    }

    public final void l(android.view.View view) {
        d.b.q.b0 wrapper;
        androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = (androidx.appcompat.widget.ActionBarOverlayLayout) view.findViewById(d.b.f.decor_content_parent);
        this.f1652c = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        android.view.KeyEvent.Callback callbackFindViewById = view.findViewById(d.b.f.action_bar);
        if (callbackFindViewById instanceof d.b.q.b0) {
            wrapper = (d.b.q.b0) callbackFindViewById;
        } else {
            if (!(callbackFindViewById instanceof androidx.appcompat.widget.Toolbar)) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Can't make a decor toolbar out of ");
                sbO.append(callbackFindViewById != null ? callbackFindViewById.getClass().getSimpleName() : "null");
                throw new java.lang.IllegalStateException(sbO.toString());
            }
            wrapper = ((androidx.appcompat.widget.Toolbar) callbackFindViewById).getWrapper();
        }
        this.f1654e = wrapper;
        this.f1655f = (androidx.appcompat.widget.ActionBarContextView) view.findViewById(d.b.f.action_context_bar);
        androidx.appcompat.widget.ActionBarContainer actionBarContainer = (androidx.appcompat.widget.ActionBarContainer) view.findViewById(d.b.f.action_bar_container);
        this.f1653d = actionBarContainer;
        d.b.q.b0 b0Var = this.f1654e;
        if (b0Var == null || this.f1655f == null || actionBarContainer == null) {
            throw new java.lang.IllegalStateException(d.b.k.u.class.getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.a = b0Var.m();
        boolean z = (this.f1654e.p() & 4) != 0;
        if (z) {
            this.h = true;
        }
        android.content.Context context = this.a;
        this.f1654e.l((context.getApplicationInfo().targetSdkVersion < 14) || z);
        m(context.getResources().getBoolean(d.b.b.abc_action_bar_embed_tabs));
        android.content.res.TypedArray typedArrayObtainStyledAttributes = this.a.obtainStyledAttributes(null, d.b.j.ActionBar, d.b.a.actionBarStyle, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(d.b.j.ActionBar_hideOnContentScroll, false)) {
            androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout2 = this.f1652c;
            if (!actionBarOverlayLayout2.h) {
                throw new java.lang.IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
            }
            this.w = true;
            actionBarOverlayLayout2.setHideOnContentScrollEnabled(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(d.b.j.ActionBar_elevation, 0);
        if (dimensionPixelSize != 0) {
            d.g.m.s.Q(this.f1653d, dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    public final void m(boolean z) {
        this.n = z;
        if (z) {
            this.f1653d.setTabContainer(null);
            this.f1654e.j(null);
        } else {
            this.f1654e.j(null);
            this.f1653d.setTabContainer(null);
        }
        boolean z2 = this.f1654e.r() == 2;
        this.f1654e.v(!this.n && z2);
        this.f1652c.setHasNonEmbeddedTabs(!this.n && z2);
    }

    public final void n(boolean z) {
        android.view.View view;
        android.view.View view2;
        android.view.View view3;
        if (!(this.s || !this.r)) {
            if (this.t) {
                this.t = false;
                d.b.p.g gVar = this.u;
                if (gVar != null) {
                    gVar.a();
                }
                if (this.o != 0 || (!this.v && !z)) {
                    this.x.b(null);
                    return;
                }
                this.f1653d.setAlpha(1.0f);
                this.f1653d.setTransitioning(true);
                d.b.p.g gVar2 = new d.b.p.g();
                float f2 = -this.f1653d.getHeight();
                if (z) {
                    this.f1653d.getLocationInWindow(new int[]{0, 0});
                    f2 -= r9[1];
                }
                d.g.m.v vVarA = d.g.m.s.a(this.f1653d);
                vVarA.g(f2);
                vVarA.f(this.z);
                if (!gVar2.f1695e) {
                    gVar2.a.add(vVarA);
                }
                if (this.p && (view = this.f1656g) != null) {
                    d.g.m.v vVarA2 = d.g.m.s.a(view);
                    vVarA2.g(f2);
                    if (!gVar2.f1695e) {
                        gVar2.a.add(vVarA2);
                    }
                }
                android.view.animation.Interpolator interpolator = A;
                if (!gVar2.f1695e) {
                    gVar2.f1693c = interpolator;
                }
                if (!gVar2.f1695e) {
                    gVar2.b = 250L;
                }
                d.g.m.w wVar = this.x;
                if (!gVar2.f1695e) {
                    gVar2.f1694d = wVar;
                }
                this.u = gVar2;
                gVar2.b();
                return;
            }
            return;
        }
        if (this.t) {
            return;
        }
        this.t = true;
        d.b.p.g gVar3 = this.u;
        if (gVar3 != null) {
            gVar3.a();
        }
        this.f1653d.setVisibility(0);
        if (this.o == 0 && (this.v || z)) {
            this.f1653d.setTranslationY(0.0f);
            float f3 = -this.f1653d.getHeight();
            if (z) {
                this.f1653d.getLocationInWindow(new int[]{0, 0});
                f3 -= r9[1];
            }
            this.f1653d.setTranslationY(f3);
            d.b.p.g gVar4 = new d.b.p.g();
            d.g.m.v vVarA3 = d.g.m.s.a(this.f1653d);
            vVarA3.g(0.0f);
            vVarA3.f(this.z);
            if (!gVar4.f1695e) {
                gVar4.a.add(vVarA3);
            }
            if (this.p && (view3 = this.f1656g) != null) {
                view3.setTranslationY(f3);
                d.g.m.v vVarA4 = d.g.m.s.a(this.f1656g);
                vVarA4.g(0.0f);
                if (!gVar4.f1695e) {
                    gVar4.a.add(vVarA4);
                }
            }
            android.view.animation.Interpolator interpolator2 = B;
            if (!gVar4.f1695e) {
                gVar4.f1693c = interpolator2;
            }
            if (!gVar4.f1695e) {
                gVar4.b = 250L;
            }
            d.g.m.w wVar2 = this.y;
            if (!gVar4.f1695e) {
                gVar4.f1694d = wVar2;
            }
            this.u = gVar4;
            gVar4.b();
        } else {
            this.f1653d.setAlpha(1.0f);
            this.f1653d.setTranslationY(0.0f);
            if (this.p && (view2 = this.f1656g) != null) {
                view2.setTranslationY(0.0f);
            }
            this.y.b(null);
        }
        androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = this.f1652c;
        if (actionBarOverlayLayout != null) {
            d.g.m.s.K(actionBarOverlayLayout);
        }
    }
}
