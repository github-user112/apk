package d.b.q;

import androidx.appcompat.widget.Toolbar.d;

/* loaded from: classes.dex */
public class x0 implements d.b.q.b0 {
    public androidx.appcompat.widget.Toolbar a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public android.view.View f1847c;

    /* renamed from: d, reason: collision with root package name */
    public android.view.View f1848d;

    /* renamed from: e, reason: collision with root package name */
    public android.graphics.drawable.Drawable f1849e;

    /* renamed from: f, reason: collision with root package name */
    public android.graphics.drawable.Drawable f1850f;

    /* renamed from: g, reason: collision with root package name */
    public android.graphics.drawable.Drawable f1851g;
    public boolean h;
    public java.lang.CharSequence i;
    public java.lang.CharSequence j;
    public java.lang.CharSequence k;
    public android.view.Window.Callback l;
    public boolean m;
    public d.b.q.c n;
    public int o;
    public int p;
    public android.graphics.drawable.Drawable q;

    public class a extends d.g.m.x {
        public boolean a = false;
        public final /* synthetic */ int b;

        public a(int i) {
            this.b = i;
        }

        @Override // d.g.m.x, d.g.m.w
        public void a(android.view.View view) {
            this.a = true;
        }

        @Override // d.g.m.w
        public void b(android.view.View view) {
            if (this.a) {
                return;
            }
            d.b.q.x0.this.a.setVisibility(this.b);
        }

        @Override // d.g.m.x, d.g.m.w
        public void c(android.view.View view) {
            d.b.q.x0.this.a.setVisibility(0);
        }
    }

    public x0(androidx.appcompat.widget.Toolbar toolbar, boolean z) {
        int i;
        android.graphics.drawable.Drawable drawable;
        int i2 = d.b.h.abc_action_bar_up_description;
        this.o = 0;
        this.p = 0;
        this.a = toolbar;
        this.i = toolbar.getTitle();
        this.j = toolbar.getSubtitle();
        this.h = this.i != null;
        this.f1851g = toolbar.getNavigationIcon();
        d.b.q.v0 v0VarO = d.b.q.v0.o(toolbar.getContext(), null, d.b.j.ActionBar, d.b.a.actionBarStyle, 0);
        this.q = v0VarO.e(d.b.j.ActionBar_homeAsUpIndicator);
        if (z) {
            java.lang.CharSequence charSequenceL = v0VarO.l(d.b.j.ActionBar_title);
            if (!android.text.TextUtils.isEmpty(charSequenceL)) {
                this.h = true;
                this.i = charSequenceL;
                if ((this.b & 8) != 0) {
                    this.a.setTitle(charSequenceL);
                }
            }
            java.lang.CharSequence charSequenceL2 = v0VarO.l(d.b.j.ActionBar_subtitle);
            if (!android.text.TextUtils.isEmpty(charSequenceL2)) {
                this.j = charSequenceL2;
                if ((this.b & 8) != 0) {
                    this.a.setSubtitle(charSequenceL2);
                }
            }
            android.graphics.drawable.Drawable drawableE = v0VarO.e(d.b.j.ActionBar_logo);
            if (drawableE != null) {
                this.f1850f = drawableE;
                y();
            }
            android.graphics.drawable.Drawable drawableE2 = v0VarO.e(d.b.j.ActionBar_icon);
            if (drawableE2 != null) {
                this.f1849e = drawableE2;
                y();
            }
            if (this.f1851g == null && (drawable = this.q) != null) {
                this.f1851g = drawable;
                x();
            }
            o(v0VarO.h(d.b.j.ActionBar_displayOptions, 0));
            int iJ = v0VarO.j(d.b.j.ActionBar_customNavigationLayout, 0);
            if (iJ != 0) {
                android.view.View viewInflate = android.view.LayoutInflater.from(this.a.getContext()).inflate(iJ, (android.view.ViewGroup) this.a, false);
                android.view.View view = this.f1848d;
                if (view != null && (this.b & 16) != 0) {
                    this.a.removeView(view);
                }
                this.f1848d = viewInflate;
                if (viewInflate != null && (this.b & 16) != 0) {
                    this.a.addView(viewInflate);
                }
                o(this.b | 16);
            }
            int i3 = v0VarO.i(d.b.j.ActionBar_height, 0);
            if (i3 > 0) {
                android.view.ViewGroup.LayoutParams layoutParams = this.a.getLayoutParams();
                layoutParams.height = i3;
                this.a.setLayoutParams(layoutParams);
            }
            int iC = v0VarO.c(d.b.j.ActionBar_contentInsetStart, -1);
            int iC2 = v0VarO.c(d.b.j.ActionBar_contentInsetEnd, -1);
            if (iC >= 0 || iC2 >= 0) {
                androidx.appcompat.widget.Toolbar toolbar2 = this.a;
                int iMax = java.lang.Math.max(iC, 0);
                int iMax2 = java.lang.Math.max(iC2, 0);
                toolbar2.d();
                toolbar2.t.a(iMax, iMax2);
            }
            int iJ2 = v0VarO.j(d.b.j.ActionBar_titleTextStyle, 0);
            if (iJ2 != 0) {
                androidx.appcompat.widget.Toolbar toolbar3 = this.a;
                android.content.Context context = toolbar3.getContext();
                toolbar3.l = iJ2;
                android.widget.TextView textView = toolbar3.b;
                if (textView != null) {
                    textView.setTextAppearance(context, iJ2);
                }
            }
            int iJ3 = v0VarO.j(d.b.j.ActionBar_subtitleTextStyle, 0);
            if (iJ3 != 0) {
                androidx.appcompat.widget.Toolbar toolbar4 = this.a;
                android.content.Context context2 = toolbar4.getContext();
                toolbar4.m = iJ3;
                android.widget.TextView textView2 = toolbar4.f75c;
                if (textView2 != null) {
                    textView2.setTextAppearance(context2, iJ3);
                }
            }
            int iJ4 = v0VarO.j(d.b.j.ActionBar_popupTheme, 0);
            if (iJ4 != 0) {
                this.a.setPopupTheme(iJ4);
            }
        } else {
            if (this.a.getNavigationIcon() != null) {
                i = 15;
                this.q = this.a.getNavigationIcon();
            } else {
                i = 11;
            }
            this.b = i;
        }
        v0VarO.b.recycle();
        if (i2 != this.p) {
            this.p = i2;
            if (android.text.TextUtils.isEmpty(this.a.getNavigationContentDescription())) {
                int i4 = this.p;
                this.k = i4 != 0 ? m().getString(i4) : null;
                w();
            }
        }
        this.k = this.a.getNavigationContentDescription();
        this.a.setNavigationOnClickListener(new d.b.q.w0(this));
    }

    @Override // d.b.q.b0
    public void a(android.view.Menu menu, d.b.p.i.m.a aVar) {
        d.b.p.i.i iVar;
        if (this.n == null) {
            d.b.q.c cVar = new d.b.q.c(this.a.getContext());
            this.n = cVar;
            if (cVar == null) {
                throw null;
            }
        }
        d.b.q.c cVar2 = this.n;
        cVar2.f1705e = aVar;
        androidx.appcompat.widget.Toolbar toolbar = this.a;
        d.b.p.i.g gVar = (d.b.p.i.g) menu;
        if (gVar == null && toolbar.a == null) {
            return;
        }
        toolbar.f();
        d.b.p.i.g gVar2 = toolbar.a.p;
        if (gVar2 == gVar) {
            return;
        }
        if (gVar2 != null) {
            gVar2.u(toolbar.K);
            gVar2.u(toolbar.L);
        }
        if (toolbar.L == null) {
            toolbar.L = toolbar.new d();
        }
        cVar2.q = true;
        if (gVar != null) {
            gVar.b(cVar2, toolbar.j);
            gVar.b(toolbar.L, toolbar.j);
        } else {
            cVar2.c(toolbar.j, null);
            androidx.appcompat.widget.Toolbar.d dVar = toolbar.L;
            d.b.p.i.g gVar3 = dVar.a;
            if (gVar3 != null && (iVar = dVar.b) != null) {
                gVar3.d(iVar);
            }
            dVar.a = null;
            cVar2.f(true);
            toolbar.L.f(true);
        }
        toolbar.a.setPopupTheme(toolbar.k);
        toolbar.a.setPresenter(cVar2);
        toolbar.K = cVar2;
    }

    @Override // d.b.q.b0
    public boolean b() {
        return this.a.o();
    }

    @Override // d.b.q.b0
    public void c() {
        this.m = true;
    }

    @Override // d.b.q.b0
    public void collapseActionView() {
        androidx.appcompat.widget.Toolbar.d dVar = this.a.L;
        d.b.p.i.i iVar = dVar == null ? null : dVar.b;
        if (iVar != null) {
            iVar.collapseActionView();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x001e  */
    @Override // d.b.q.b0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean d() {
        /*
            r4 = this;
            androidx.appcompat.widget.Toolbar r0 = r4.a
            androidx.appcompat.widget.ActionMenuView r0 = r0.a
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L22
            d.b.q.c r0 = r0.t
            if (r0 == 0) goto L1e
            d.b.q.c$c r3 = r0.v
            if (r3 != 0) goto L19
            boolean r0 = r0.m()
            if (r0 == 0) goto L17
            goto L19
        L17:
            r0 = 0
            goto L1a
        L19:
            r0 = 1
        L1a:
            if (r0 == 0) goto L1e
            r0 = 1
            goto L1f
        L1e:
            r0 = 0
        L1f:
            if (r0 == 0) goto L22
            r1 = 1
        L22:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.q.x0.d():boolean");
    }

    @Override // d.b.q.b0
    public boolean e() {
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.a.a;
        if (actionMenuView == null) {
            return false;
        }
        d.b.q.c cVar = actionMenuView.t;
        return cVar != null && cVar.g();
    }

    @Override // d.b.q.b0
    public boolean f() {
        return this.a.u();
    }

    @Override // d.b.q.b0
    public boolean g() {
        androidx.appcompat.widget.ActionMenuView actionMenuView;
        androidx.appcompat.widget.Toolbar toolbar = this.a;
        return toolbar.getVisibility() == 0 && (actionMenuView = toolbar.a) != null && actionMenuView.s;
    }

    @Override // d.b.q.b0
    public java.lang.CharSequence getTitle() {
        return this.a.getTitle();
    }

    @Override // d.b.q.b0
    public void h() {
        d.b.q.c cVar;
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.a.a;
        if (actionMenuView == null || (cVar = actionMenuView.t) == null) {
            return;
        }
        cVar.d();
    }

    @Override // d.b.q.b0
    public void i(int i) {
        this.a.setVisibility(i);
    }

    @Override // d.b.q.b0
    public void j(d.b.q.o0 o0Var) {
        android.view.View view = this.f1847c;
        if (view != null) {
            android.view.ViewParent parent = view.getParent();
            androidx.appcompat.widget.Toolbar toolbar = this.a;
            if (parent == toolbar) {
                toolbar.removeView(this.f1847c);
            }
        }
        this.f1847c = null;
    }

    @Override // d.b.q.b0
    public android.view.ViewGroup k() {
        return this.a;
    }

    @Override // d.b.q.b0
    public void l(boolean z) {
    }

    @Override // d.b.q.b0
    public android.content.Context m() {
        return this.a.getContext();
    }

    @Override // d.b.q.b0
    public boolean n() {
        androidx.appcompat.widget.Toolbar.d dVar = this.a.L;
        return (dVar == null || dVar.b == null) ? false : true;
    }

    @Override // d.b.q.b0
    public void o(int i) {
        android.view.View view;
        java.lang.CharSequence charSequence;
        androidx.appcompat.widget.Toolbar toolbar;
        int i2 = this.b ^ i;
        this.b = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    w();
                }
                x();
            }
            if ((i2 & 3) != 0) {
                y();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    this.a.setTitle(this.i);
                    toolbar = this.a;
                    charSequence = this.j;
                } else {
                    charSequence = null;
                    this.a.setTitle((java.lang.CharSequence) null);
                    toolbar = this.a;
                }
                toolbar.setSubtitle(charSequence);
            }
            if ((i2 & 16) == 0 || (view = this.f1848d) == null) {
                return;
            }
            if ((i & 16) != 0) {
                this.a.addView(view);
            } else {
                this.a.removeView(view);
            }
        }
    }

    @Override // d.b.q.b0
    public int p() {
        return this.b;
    }

    @Override // d.b.q.b0
    public void q(int i) {
        this.f1850f = i != 0 ? d.b.l.a.a.b(m(), i) : null;
        y();
    }

    @Override // d.b.q.b0
    public int r() {
        return this.o;
    }

    @Override // d.b.q.b0
    public d.g.m.v s(int i, long j) {
        d.g.m.v vVarA = d.g.m.s.a(this.a);
        vVarA.a(i == 0 ? 1.0f : 0.0f);
        vVarA.c(j);
        d.b.q.x0.a aVar = new d.b.q.x0.a(i);
        android.view.View view = vVarA.a.get();
        if (view != null) {
            vVarA.e(view, aVar);
        }
        return vVarA;
    }

    @Override // d.b.q.b0
    public void setIcon(int i) {
        this.f1849e = i != 0 ? d.b.l.a.a.b(m(), i) : null;
        y();
    }

    @Override // d.b.q.b0
    public void setIcon(android.graphics.drawable.Drawable drawable) {
        this.f1849e = drawable;
        y();
    }

    @Override // d.b.q.b0
    public void setWindowCallback(android.view.Window.Callback callback) {
        this.l = callback;
    }

    @Override // d.b.q.b0
    public void setWindowTitle(java.lang.CharSequence charSequence) {
        if (this.h) {
            return;
        }
        this.i = charSequence;
        if ((this.b & 8) != 0) {
            this.a.setTitle(charSequence);
        }
    }

    @Override // d.b.q.b0
    public void t() {
        android.util.Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // d.b.q.b0
    public void u() {
        android.util.Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // d.b.q.b0
    public void v(boolean z) {
        this.a.setCollapsible(z);
    }

    public final void w() {
        if ((this.b & 4) != 0) {
            if (android.text.TextUtils.isEmpty(this.k)) {
                this.a.setNavigationContentDescription(this.p);
            } else {
                this.a.setNavigationContentDescription(this.k);
            }
        }
    }

    public final void x() {
        androidx.appcompat.widget.Toolbar toolbar;
        android.graphics.drawable.Drawable drawable;
        if ((this.b & 4) != 0) {
            toolbar = this.a;
            drawable = this.f1851g;
            if (drawable == null) {
                drawable = this.q;
            }
        } else {
            toolbar = this.a;
            drawable = null;
        }
        toolbar.setNavigationIcon(drawable);
    }

    public final void y() {
        android.graphics.drawable.Drawable drawable;
        int i = this.b;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) == 0 || (drawable = this.f1850f) == null) {
            drawable = this.f1849e;
        }
        this.a.setLogo(drawable);
    }
}
