package androidx.appcompat.widget;

/* loaded from: classes.dex */
public class Toolbar extends android.view.ViewGroup {
    public android.content.res.ColorStateList A;
    public boolean B;
    public boolean C;
    public final java.util.ArrayList<android.view.View> D;
    public final java.util.ArrayList<android.view.View> F;
    public final int[] G;
    public androidx.appcompat.widget.Toolbar.f H;
    public final androidx.appcompat.widget.ActionMenuView.e I;
    public d.b.q.x0 J;
    public d.b.q.c K;
    public androidx.appcompat.widget.Toolbar.d L;
    public boolean M;
    public final java.lang.Runnable N;
    public androidx.appcompat.widget.ActionMenuView a;
    public android.widget.TextView b;

    /* renamed from: c, reason: collision with root package name */
    public android.widget.TextView f75c;

    /* renamed from: d, reason: collision with root package name */
    public android.widget.ImageButton f76d;

    /* renamed from: e, reason: collision with root package name */
    public android.widget.ImageView f77e;

    /* renamed from: f, reason: collision with root package name */
    public android.graphics.drawable.Drawable f78f;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.CharSequence f79g;
    public android.widget.ImageButton h;
    public android.view.View i;
    public android.content.Context j;
    public int k;
    public int l;
    public int m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public int s;
    public d.b.q.n0 t;
    public int u;
    public int v;
    public int w;
    public java.lang.CharSequence x;
    public java.lang.CharSequence y;
    public android.content.res.ColorStateList z;

    public class a implements androidx.appcompat.widget.ActionMenuView.e {
        public a() {
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.widget.Toolbar.this.u();
        }
    }

    public class c implements android.view.View.OnClickListener {
        public c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            androidx.appcompat.widget.Toolbar.d dVar = androidx.appcompat.widget.Toolbar.this.L;
            d.b.p.i.i iVar = dVar == null ? null : dVar.b;
            if (iVar != null) {
                iVar.collapseActionView();
            }
        }
    }

    public class d implements d.b.p.i.m {
        public d.b.p.i.g a;
        public d.b.p.i.i b;

        public d() {
        }

        @Override // d.b.p.i.m
        public void a(d.b.p.i.g gVar, boolean z) {
        }

        @Override // d.b.p.i.m
        public void c(android.content.Context context, d.b.p.i.g gVar) {
            d.b.p.i.i iVar;
            d.b.p.i.g gVar2 = this.a;
            if (gVar2 != null && (iVar = this.b) != null) {
                gVar2.d(iVar);
            }
            this.a = gVar;
        }

        @Override // d.b.p.i.m
        public boolean e(d.b.p.i.r rVar) {
            return false;
        }

        @Override // d.b.p.i.m
        public void f(boolean z) {
            if (this.b != null) {
                d.b.p.i.g gVar = this.a;
                boolean z2 = false;
                if (gVar != null) {
                    int size = gVar.size();
                    int i = 0;
                    while (true) {
                        if (i >= size) {
                            break;
                        }
                        if (this.a.getItem(i) == this.b) {
                            z2 = true;
                            break;
                        }
                        i++;
                    }
                }
                if (z2) {
                    return;
                }
                i(this.a, this.b);
            }
        }

        @Override // d.b.p.i.m
        public boolean h() {
            return false;
        }

        @Override // d.b.p.i.m
        public boolean i(d.b.p.i.g gVar, d.b.p.i.i iVar) {
            android.view.KeyEvent.Callback callback = androidx.appcompat.widget.Toolbar.this.i;
            if (callback instanceof d.b.p.b) {
                ((d.b.p.b) callback).f();
            }
            androidx.appcompat.widget.Toolbar toolbar = androidx.appcompat.widget.Toolbar.this;
            toolbar.removeView(toolbar.i);
            androidx.appcompat.widget.Toolbar toolbar2 = androidx.appcompat.widget.Toolbar.this;
            toolbar2.removeView(toolbar2.h);
            androidx.appcompat.widget.Toolbar toolbar3 = androidx.appcompat.widget.Toolbar.this;
            toolbar3.i = null;
            int size = toolbar3.F.size();
            while (true) {
                size--;
                if (size < 0) {
                    toolbar3.F.clear();
                    this.b = null;
                    androidx.appcompat.widget.Toolbar.this.requestLayout();
                    iVar.C = false;
                    iVar.n.q(false);
                    return true;
                }
                toolbar3.addView(toolbar3.F.get(size));
            }
        }

        @Override // d.b.p.i.m
        public boolean j(d.b.p.i.g gVar, d.b.p.i.i iVar) {
            androidx.appcompat.widget.Toolbar.this.c();
            android.view.ViewParent parent = androidx.appcompat.widget.Toolbar.this.h.getParent();
            androidx.appcompat.widget.Toolbar toolbar = androidx.appcompat.widget.Toolbar.this;
            if (parent != toolbar) {
                if (parent instanceof android.view.ViewGroup) {
                    ((android.view.ViewGroup) parent).removeView(toolbar.h);
                }
                androidx.appcompat.widget.Toolbar toolbar2 = androidx.appcompat.widget.Toolbar.this;
                toolbar2.addView(toolbar2.h);
            }
            androidx.appcompat.widget.Toolbar.this.i = iVar.getActionView();
            this.b = iVar;
            android.view.ViewParent parent2 = androidx.appcompat.widget.Toolbar.this.i.getParent();
            androidx.appcompat.widget.Toolbar toolbar3 = androidx.appcompat.widget.Toolbar.this;
            if (parent2 != toolbar3) {
                if (parent2 instanceof android.view.ViewGroup) {
                    ((android.view.ViewGroup) parent2).removeView(toolbar3.i);
                }
                androidx.appcompat.widget.Toolbar.e eVarGenerateDefaultLayoutParams = androidx.appcompat.widget.Toolbar.this.generateDefaultLayoutParams();
                androidx.appcompat.widget.Toolbar toolbar4 = androidx.appcompat.widget.Toolbar.this;
                eVarGenerateDefaultLayoutParams.a = 8388611 | (toolbar4.n & 112);
                eVarGenerateDefaultLayoutParams.b = 2;
                toolbar4.i.setLayoutParams(eVarGenerateDefaultLayoutParams);
                androidx.appcompat.widget.Toolbar toolbar5 = androidx.appcompat.widget.Toolbar.this;
                toolbar5.addView(toolbar5.i);
            }
            androidx.appcompat.widget.Toolbar toolbar6 = androidx.appcompat.widget.Toolbar.this;
            int childCount = toolbar6.getChildCount();
            while (true) {
                childCount--;
                if (childCount < 0) {
                    break;
                }
                android.view.View childAt = toolbar6.getChildAt(childCount);
                if (((androidx.appcompat.widget.Toolbar.e) childAt.getLayoutParams()).b != 2 && childAt != toolbar6.a) {
                    toolbar6.removeViewAt(childCount);
                    toolbar6.F.add(childAt);
                }
            }
            androidx.appcompat.widget.Toolbar.this.requestLayout();
            iVar.C = true;
            iVar.n.q(false);
            android.view.KeyEvent.Callback callback = androidx.appcompat.widget.Toolbar.this.i;
            if (callback instanceof d.b.p.b) {
                ((d.b.p.b) callback).c();
            }
            return true;
        }

        @Override // d.b.p.i.m
        public void k(d.b.p.i.m.a aVar) {
        }
    }

    public static class e extends d.b.k.a.C0031a {
        public int b;

        public e(int i, int i2) {
            super(i, i2);
            this.b = 0;
            this.a = 8388627;
        }

        public e(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = 0;
        }

        public e(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = 0;
        }

        public e(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = 0;
            ((android.view.ViewGroup.MarginLayoutParams) this).leftMargin = marginLayoutParams.leftMargin;
            ((android.view.ViewGroup.MarginLayoutParams) this).topMargin = marginLayoutParams.topMargin;
            ((android.view.ViewGroup.MarginLayoutParams) this).rightMargin = marginLayoutParams.rightMargin;
            ((android.view.ViewGroup.MarginLayoutParams) this).bottomMargin = marginLayoutParams.bottomMargin;
        }

        public e(androidx.appcompat.widget.Toolbar.e eVar) {
            super((d.b.k.a.C0031a) eVar);
            this.b = 0;
            this.b = eVar.b;
        }

        public e(d.b.k.a.C0031a c0031a) {
            super(c0031a);
            this.b = 0;
        }
    }

    public interface f {
        boolean onMenuItemClick(android.view.MenuItem menuItem);
    }

    public static class g extends d.i.a.a {
        public static final android.os.Parcelable.Creator<androidx.appcompat.widget.Toolbar.g> CREATOR = new androidx.appcompat.widget.Toolbar.g.a();

        /* renamed from: c, reason: collision with root package name */
        public int f81c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f82d;

        public static class a implements android.os.Parcelable.ClassLoaderCreator<androidx.appcompat.widget.Toolbar.g> {
            @Override // android.os.Parcelable.Creator
            public java.lang.Object createFromParcel(android.os.Parcel parcel) {
                return new androidx.appcompat.widget.Toolbar.g(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public java.lang.Object[] newArray(int i) {
                return new androidx.appcompat.widget.Toolbar.g[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public androidx.appcompat.widget.Toolbar.g createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new androidx.appcompat.widget.Toolbar.g(parcel, classLoader);
            }
        }

        public g(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f81c = parcel.readInt();
            this.f82d = parcel.readInt() != 0;
        }

        public g(android.os.Parcelable parcelable) {
            super(parcelable);
        }

        @Override // d.i.a.a, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeParcelable(this.a, i);
            parcel.writeInt(this.f81c);
            parcel.writeInt(this.f82d ? 1 : 0);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Toolbar(android.content.Context context, android.util.AttributeSet attributeSet) {
        int i = d.b.a.toolbarStyle;
        super(context, attributeSet, i);
        this.w = 8388627;
        this.D = new java.util.ArrayList<>();
        this.F = new java.util.ArrayList<>();
        this.G = new int[2];
        this.I = new androidx.appcompat.widget.Toolbar.a();
        this.N = new androidx.appcompat.widget.Toolbar.b();
        d.b.q.v0 v0VarO = d.b.q.v0.o(getContext(), attributeSet, d.b.j.Toolbar, i, 0);
        this.l = v0VarO.j(d.b.j.Toolbar_titleTextAppearance, 0);
        this.m = v0VarO.j(d.b.j.Toolbar_subtitleTextAppearance, 0);
        this.w = v0VarO.b.getInteger(d.b.j.Toolbar_android_gravity, this.w);
        this.n = v0VarO.b.getInteger(d.b.j.Toolbar_buttonGravity, 48);
        int iC = v0VarO.c(d.b.j.Toolbar_titleMargin, 0);
        iC = v0VarO.m(d.b.j.Toolbar_titleMargins) ? v0VarO.c(d.b.j.Toolbar_titleMargins, iC) : iC;
        this.s = iC;
        this.r = iC;
        this.q = iC;
        this.p = iC;
        int iC2 = v0VarO.c(d.b.j.Toolbar_titleMarginStart, -1);
        if (iC2 >= 0) {
            this.p = iC2;
        }
        int iC3 = v0VarO.c(d.b.j.Toolbar_titleMarginEnd, -1);
        if (iC3 >= 0) {
            this.q = iC3;
        }
        int iC4 = v0VarO.c(d.b.j.Toolbar_titleMarginTop, -1);
        if (iC4 >= 0) {
            this.r = iC4;
        }
        int iC5 = v0VarO.c(d.b.j.Toolbar_titleMarginBottom, -1);
        if (iC5 >= 0) {
            this.s = iC5;
        }
        this.o = v0VarO.d(d.b.j.Toolbar_maxButtonHeight, -1);
        int iC6 = v0VarO.c(d.b.j.Toolbar_contentInsetStart, Integer.MIN_VALUE);
        int iC7 = v0VarO.c(d.b.j.Toolbar_contentInsetEnd, Integer.MIN_VALUE);
        int iD = v0VarO.d(d.b.j.Toolbar_contentInsetLeft, 0);
        int iD2 = v0VarO.d(d.b.j.Toolbar_contentInsetRight, 0);
        d();
        d.b.q.n0 n0Var = this.t;
        n0Var.h = false;
        if (iD != Integer.MIN_VALUE) {
            n0Var.f1806e = iD;
            n0Var.a = iD;
        }
        if (iD2 != Integer.MIN_VALUE) {
            n0Var.f1807f = iD2;
            n0Var.b = iD2;
        }
        if (iC6 != Integer.MIN_VALUE || iC7 != Integer.MIN_VALUE) {
            this.t.a(iC6, iC7);
        }
        this.u = v0VarO.c(d.b.j.Toolbar_contentInsetStartWithNavigation, Integer.MIN_VALUE);
        this.v = v0VarO.c(d.b.j.Toolbar_contentInsetEndWithActions, Integer.MIN_VALUE);
        this.f78f = v0VarO.e(d.b.j.Toolbar_collapseIcon);
        this.f79g = v0VarO.l(d.b.j.Toolbar_collapseContentDescription);
        java.lang.CharSequence charSequenceL = v0VarO.l(d.b.j.Toolbar_title);
        if (!android.text.TextUtils.isEmpty(charSequenceL)) {
            setTitle(charSequenceL);
        }
        java.lang.CharSequence charSequenceL2 = v0VarO.l(d.b.j.Toolbar_subtitle);
        if (!android.text.TextUtils.isEmpty(charSequenceL2)) {
            setSubtitle(charSequenceL2);
        }
        this.j = getContext();
        setPopupTheme(v0VarO.j(d.b.j.Toolbar_popupTheme, 0));
        android.graphics.drawable.Drawable drawableE = v0VarO.e(d.b.j.Toolbar_navigationIcon);
        if (drawableE != null) {
            setNavigationIcon(drawableE);
        }
        java.lang.CharSequence charSequenceL3 = v0VarO.l(d.b.j.Toolbar_navigationContentDescription);
        if (!android.text.TextUtils.isEmpty(charSequenceL3)) {
            setNavigationContentDescription(charSequenceL3);
        }
        android.graphics.drawable.Drawable drawableE2 = v0VarO.e(d.b.j.Toolbar_logo);
        if (drawableE2 != null) {
            setLogo(drawableE2);
        }
        java.lang.CharSequence charSequenceL4 = v0VarO.l(d.b.j.Toolbar_logoDescription);
        if (!android.text.TextUtils.isEmpty(charSequenceL4)) {
            setLogoDescription(charSequenceL4);
        }
        if (v0VarO.m(d.b.j.Toolbar_titleTextColor)) {
            setTitleTextColor(v0VarO.b(d.b.j.Toolbar_titleTextColor));
        }
        if (v0VarO.m(d.b.j.Toolbar_subtitleTextColor)) {
            setSubtitleTextColor(v0VarO.b(d.b.j.Toolbar_subtitleTextColor));
        }
        if (v0VarO.m(d.b.j.Toolbar_menu)) {
            getMenuInflater().inflate(v0VarO.j(d.b.j.Toolbar_menu, 0), getMenu());
        }
        v0VarO.b.recycle();
    }

    private android.view.MenuInflater getMenuInflater() {
        return new d.b.p.f(getContext());
    }

    public final void a(java.util.List<android.view.View> list, int i) {
        boolean z = d.g.m.s.o(this) == 1;
        int childCount = getChildCount();
        int iV = d.b.k.r.v(i, d.g.m.s.o(this));
        list.clear();
        if (!z) {
            for (int i2 = 0; i2 < childCount; i2++) {
                android.view.View childAt = getChildAt(i2);
                androidx.appcompat.widget.Toolbar.e eVar = (androidx.appcompat.widget.Toolbar.e) childAt.getLayoutParams();
                if (eVar.b == 0 && t(childAt) && j(eVar.a) == iV) {
                    list.add(childAt);
                }
            }
            return;
        }
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            android.view.View childAt2 = getChildAt(i3);
            androidx.appcompat.widget.Toolbar.e eVar2 = (androidx.appcompat.widget.Toolbar.e) childAt2.getLayoutParams();
            if (eVar2.b == 0 && t(childAt2) && j(eVar2.a) == iV) {
                list.add(childAt2);
            }
        }
    }

    public final void b(android.view.View view, boolean z) {
        android.view.ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        androidx.appcompat.widget.Toolbar.e eVarGenerateDefaultLayoutParams = layoutParams == null ? generateDefaultLayoutParams() : !checkLayoutParams(layoutParams) ? generateLayoutParams(layoutParams) : (androidx.appcompat.widget.Toolbar.e) layoutParams;
        eVarGenerateDefaultLayoutParams.b = 1;
        if (!z || this.i == null) {
            addView(view, eVarGenerateDefaultLayoutParams);
        } else {
            view.setLayoutParams(eVarGenerateDefaultLayoutParams);
            this.F.add(view);
        }
    }

    public void c() {
        if (this.h == null) {
            d.b.q.k kVar = new d.b.q.k(getContext(), null, d.b.a.toolbarNavigationButtonStyle);
            this.h = kVar;
            kVar.setImageDrawable(this.f78f);
            this.h.setContentDescription(this.f79g);
            androidx.appcompat.widget.Toolbar.e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.a = 8388611 | (this.n & 112);
            eVarGenerateDefaultLayoutParams.b = 2;
            this.h.setLayoutParams(eVarGenerateDefaultLayoutParams);
            this.h.setOnClickListener(new androidx.appcompat.widget.Toolbar.c());
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return super.checkLayoutParams(layoutParams) && (layoutParams instanceof androidx.appcompat.widget.Toolbar.e);
    }

    public final void d() {
        if (this.t == null) {
            this.t = new d.b.q.n0();
        }
    }

    public final void e() {
        f();
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.a;
        if (actionMenuView.p == null) {
            d.b.p.i.g gVar = (d.b.p.i.g) actionMenuView.getMenu();
            if (this.L == null) {
                this.L = new androidx.appcompat.widget.Toolbar.d();
            }
            this.a.setExpandedActionViewsExclusive(true);
            gVar.b(this.L, this.j);
        }
    }

    public final void f() {
        if (this.a == null) {
            androidx.appcompat.widget.ActionMenuView actionMenuView = new androidx.appcompat.widget.ActionMenuView(getContext(), null);
            this.a = actionMenuView;
            actionMenuView.setPopupTheme(this.k);
            this.a.setOnMenuItemClickListener(this.I);
            androidx.appcompat.widget.ActionMenuView actionMenuView2 = this.a;
            actionMenuView2.u = null;
            actionMenuView2.v = null;
            androidx.appcompat.widget.Toolbar.e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.a = 8388613 | (this.n & 112);
            this.a.setLayoutParams(eVarGenerateDefaultLayoutParams);
            b(this.a, false);
        }
    }

    public final void g() {
        if (this.f76d == null) {
            this.f76d = new d.b.q.k(getContext(), null, d.b.a.toolbarNavigationButtonStyle);
            androidx.appcompat.widget.Toolbar.e eVarGenerateDefaultLayoutParams = generateDefaultLayoutParams();
            eVarGenerateDefaultLayoutParams.a = 8388611 | (this.n & 112);
            this.f76d.setLayoutParams(eVarGenerateDefaultLayoutParams);
        }
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.Toolbar.e(getContext(), attributeSet);
    }

    public java.lang.CharSequence getCollapseContentDescription() {
        android.widget.ImageButton imageButton = this.h;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public android.graphics.drawable.Drawable getCollapseIcon() {
        android.widget.ImageButton imageButton = this.h;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public int getContentInsetEnd() {
        d.b.q.n0 n0Var = this.t;
        if (n0Var != null) {
            return n0Var.f1808g ? n0Var.a : n0Var.b;
        }
        return 0;
    }

    public int getContentInsetEndWithActions() {
        int i = this.v;
        return i != Integer.MIN_VALUE ? i : getContentInsetEnd();
    }

    public int getContentInsetLeft() {
        d.b.q.n0 n0Var = this.t;
        if (n0Var != null) {
            return n0Var.a;
        }
        return 0;
    }

    public int getContentInsetRight() {
        d.b.q.n0 n0Var = this.t;
        if (n0Var != null) {
            return n0Var.b;
        }
        return 0;
    }

    public int getContentInsetStart() {
        d.b.q.n0 n0Var = this.t;
        if (n0Var != null) {
            return n0Var.f1808g ? n0Var.b : n0Var.a;
        }
        return 0;
    }

    public int getContentInsetStartWithNavigation() {
        int i = this.u;
        return i != Integer.MIN_VALUE ? i : getContentInsetStart();
    }

    public int getCurrentContentInsetEnd() {
        d.b.p.i.g gVar;
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.a;
        return actionMenuView != null && (gVar = actionMenuView.p) != null && gVar.hasVisibleItems() ? java.lang.Math.max(getContentInsetEnd(), java.lang.Math.max(this.v, 0)) : getContentInsetEnd();
    }

    public int getCurrentContentInsetLeft() {
        return d.g.m.s.o(this) == 1 ? getCurrentContentInsetEnd() : getCurrentContentInsetStart();
    }

    public int getCurrentContentInsetRight() {
        return d.g.m.s.o(this) == 1 ? getCurrentContentInsetStart() : getCurrentContentInsetEnd();
    }

    public int getCurrentContentInsetStart() {
        return getNavigationIcon() != null ? java.lang.Math.max(getContentInsetStart(), java.lang.Math.max(this.u, 0)) : getContentInsetStart();
    }

    public android.graphics.drawable.Drawable getLogo() {
        android.widget.ImageView imageView = this.f77e;
        if (imageView != null) {
            return imageView.getDrawable();
        }
        return null;
    }

    public java.lang.CharSequence getLogoDescription() {
        android.widget.ImageView imageView = this.f77e;
        if (imageView != null) {
            return imageView.getContentDescription();
        }
        return null;
    }

    public android.view.Menu getMenu() {
        e();
        return this.a.getMenu();
    }

    public java.lang.CharSequence getNavigationContentDescription() {
        android.widget.ImageButton imageButton = this.f76d;
        if (imageButton != null) {
            return imageButton.getContentDescription();
        }
        return null;
    }

    public android.graphics.drawable.Drawable getNavigationIcon() {
        android.widget.ImageButton imageButton = this.f76d;
        if (imageButton != null) {
            return imageButton.getDrawable();
        }
        return null;
    }

    public d.b.q.c getOuterActionMenuPresenter() {
        return this.K;
    }

    public android.graphics.drawable.Drawable getOverflowIcon() {
        e();
        return this.a.getOverflowIcon();
    }

    public android.content.Context getPopupContext() {
        return this.j;
    }

    public int getPopupTheme() {
        return this.k;
    }

    public java.lang.CharSequence getSubtitle() {
        return this.y;
    }

    public final android.widget.TextView getSubtitleTextView() {
        return this.f75c;
    }

    public java.lang.CharSequence getTitle() {
        return this.x;
    }

    public int getTitleMarginBottom() {
        return this.s;
    }

    public int getTitleMarginEnd() {
        return this.q;
    }

    public int getTitleMarginStart() {
        return this.p;
    }

    public int getTitleMarginTop() {
        return this.r;
    }

    public final android.widget.TextView getTitleTextView() {
        return this.b;
    }

    public d.b.q.b0 getWrapper() {
        if (this.J == null) {
            this.J = new d.b.q.x0(this, true);
        }
        return this.J;
    }

    @Override // android.view.ViewGroup
    /* renamed from: h, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.Toolbar.e generateDefaultLayoutParams() {
        return new androidx.appcompat.widget.Toolbar.e(-2, -2);
    }

    @Override // android.view.ViewGroup
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.Toolbar.e generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof androidx.appcompat.widget.Toolbar.e ? new androidx.appcompat.widget.Toolbar.e((androidx.appcompat.widget.Toolbar.e) layoutParams) : layoutParams instanceof d.b.k.a.C0031a ? new androidx.appcompat.widget.Toolbar.e((d.b.k.a.C0031a) layoutParams) : layoutParams instanceof android.view.ViewGroup.MarginLayoutParams ? new androidx.appcompat.widget.Toolbar.e((android.view.ViewGroup.MarginLayoutParams) layoutParams) : new androidx.appcompat.widget.Toolbar.e(layoutParams);
    }

    public final int j(int i) {
        int iO = d.g.m.s.o(this);
        int iV = d.b.k.r.v(i, iO) & 7;
        return (iV == 1 || iV == 3 || iV == 5) ? iV : iO == 1 ? 5 : 3;
    }

    public final int k(android.view.View view, int i) {
        androidx.appcompat.widget.Toolbar.e eVar = (androidx.appcompat.widget.Toolbar.e) view.getLayoutParams();
        int measuredHeight = view.getMeasuredHeight();
        int i2 = i > 0 ? (measuredHeight - i) / 2 : 0;
        int i3 = eVar.a & 112;
        if (i3 != 16 && i3 != 48 && i3 != 80) {
            i3 = this.w & 112;
        }
        if (i3 == 48) {
            return getPaddingTop() - i2;
        }
        if (i3 == 80) {
            return (((getHeight() - getPaddingBottom()) - measuredHeight) - ((android.view.ViewGroup.MarginLayoutParams) eVar).bottomMargin) - i2;
        }
        int paddingTop = getPaddingTop();
        int paddingBottom = getPaddingBottom();
        int height = getHeight();
        int iMax = (((height - paddingTop) - paddingBottom) - measuredHeight) / 2;
        int i4 = ((android.view.ViewGroup.MarginLayoutParams) eVar).topMargin;
        if (iMax < i4) {
            iMax = i4;
        } else {
            int i5 = (((height - paddingBottom) - measuredHeight) - iMax) - paddingTop;
            int i6 = ((android.view.ViewGroup.MarginLayoutParams) eVar).bottomMargin;
            if (i5 < i6) {
                iMax = java.lang.Math.max(0, iMax - (i6 - i5));
            }
        }
        return paddingTop + iMax;
    }

    public final int l(android.view.View view) {
        android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return (android.os.Build.VERSION.SDK_INT >= 17 ? marginLayoutParams.getMarginStart() : marginLayoutParams.leftMargin) + (android.os.Build.VERSION.SDK_INT >= 17 ? marginLayoutParams.getMarginEnd() : marginLayoutParams.rightMargin);
    }

    public final int m(android.view.View view) {
        android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) view.getLayoutParams();
        return marginLayoutParams.topMargin + marginLayoutParams.bottomMargin;
    }

    public final boolean n(android.view.View view) {
        return view.getParent() == this || this.F.contains(view);
    }

    public boolean o() {
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.a;
        if (actionMenuView != null) {
            d.b.q.c cVar = actionMenuView.t;
            if (cVar != null && cVar.m()) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        removeCallbacks(this.N);
    }

    @Override // android.view.View
    public boolean onHoverEvent(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.C = false;
        }
        if (!this.C) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.C = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.C = false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:110:0x0295 A[LOOP:0: B:109:0x0293->B:110:0x0295, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:113:0x02b7 A[LOOP:1: B:112:0x02b5->B:113:0x02b7, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:116:0x02dc A[LOOP:2: B:115:0x02da->B:116:0x02dc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:120:0x031d  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x032e A[LOOP:3: B:124:0x032c->B:125:0x032e, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:20:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ad  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c2  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00dd  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x015d  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x019b  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x021b  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r20, int r21, int r22, int r23, int r24) {
        /*
            Method dump skipped, instructions count: 835
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.Toolbar.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        char c2;
        char c3;
        int iL;
        int iMax;
        int iCombineMeasuredStates;
        int iL2;
        int iCombineMeasuredStates2;
        int iMax2;
        int iM;
        int[] iArr = this.G;
        boolean z = true;
        if (d.b.q.b1.b(this)) {
            c2 = 1;
            c3 = 0;
        } else {
            c2 = 0;
            c3 = 1;
        }
        if (t(this.f76d)) {
            s(this.f76d, i, 0, i2, 0, this.o);
            iL = l(this.f76d) + this.f76d.getMeasuredWidth();
            iMax = java.lang.Math.max(0, m(this.f76d) + this.f76d.getMeasuredHeight());
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(0, this.f76d.getMeasuredState());
        } else {
            iL = 0;
            iMax = 0;
            iCombineMeasuredStates = 0;
        }
        if (t(this.h)) {
            s(this.h, i, 0, i2, 0, this.o);
            iL = l(this.h) + this.h.getMeasuredWidth();
            iMax = java.lang.Math.max(iMax, m(this.h) + this.h.getMeasuredHeight());
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, this.h.getMeasuredState());
        }
        int currentContentInsetStart = getCurrentContentInsetStart();
        int iMax3 = java.lang.Math.max(currentContentInsetStart, iL) + 0;
        iArr[c2] = java.lang.Math.max(0, currentContentInsetStart - iL);
        if (t(this.a)) {
            s(this.a, i, iMax3, i2, 0, this.o);
            iL2 = l(this.a) + this.a.getMeasuredWidth();
            iMax = java.lang.Math.max(iMax, m(this.a) + this.a.getMeasuredHeight());
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, this.a.getMeasuredState());
        } else {
            iL2 = 0;
        }
        int currentContentInsetEnd = getCurrentContentInsetEnd();
        int iMax4 = java.lang.Math.max(currentContentInsetEnd, iL2) + iMax3;
        iArr[c3] = java.lang.Math.max(0, currentContentInsetEnd - iL2);
        if (t(this.i)) {
            iMax4 += r(this.i, i, iMax4, i2, 0, iArr);
            iMax = java.lang.Math.max(iMax, m(this.i) + this.i.getMeasuredHeight());
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, this.i.getMeasuredState());
        }
        if (t(this.f77e)) {
            iMax4 += r(this.f77e, i, iMax4, i2, 0, iArr);
            iMax = java.lang.Math.max(iMax, m(this.f77e) + this.f77e.getMeasuredHeight());
            iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, this.f77e.getMeasuredState());
        }
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            android.view.View childAt = getChildAt(i3);
            if (((androidx.appcompat.widget.Toolbar.e) childAt.getLayoutParams()).b == 0 && t(childAt)) {
                iMax4 += r(childAt, i, iMax4, i2, 0, iArr);
                iMax = java.lang.Math.max(iMax, m(childAt) + childAt.getMeasuredHeight());
                iCombineMeasuredStates = android.view.View.combineMeasuredStates(iCombineMeasuredStates, childAt.getMeasuredState());
            }
        }
        int i4 = this.r + this.s;
        int i5 = this.p + this.q;
        if (t(this.b)) {
            r(this.b, i, iMax4 + i5, i2, i4, iArr);
            int iL3 = l(this.b) + this.b.getMeasuredWidth();
            iM = m(this.b) + this.b.getMeasuredHeight();
            iCombineMeasuredStates2 = android.view.View.combineMeasuredStates(iCombineMeasuredStates, this.b.getMeasuredState());
            iMax2 = iL3;
        } else {
            iCombineMeasuredStates2 = iCombineMeasuredStates;
            iMax2 = 0;
            iM = 0;
        }
        if (t(this.f75c)) {
            iMax2 = java.lang.Math.max(iMax2, r(this.f75c, i, iMax4 + i5, i2, iM + i4, iArr));
            iM = m(this.f75c) + this.f75c.getMeasuredHeight() + iM;
            iCombineMeasuredStates2 = android.view.View.combineMeasuredStates(iCombineMeasuredStates2, this.f75c.getMeasuredState());
        }
        int iMax5 = java.lang.Math.max(iMax, iM);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop() + iMax5;
        int iResolveSizeAndState = android.view.View.resolveSizeAndState(java.lang.Math.max(paddingRight + iMax4 + iMax2, getSuggestedMinimumWidth()), i, (-16777216) & iCombineMeasuredStates2);
        int iResolveSizeAndState2 = android.view.View.resolveSizeAndState(java.lang.Math.max(paddingBottom, getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16);
        if (!this.M) {
            z = false;
            break;
        }
        int childCount2 = getChildCount();
        for (int i6 = 0; i6 < childCount2; i6++) {
            android.view.View childAt2 = getChildAt(i6);
            if (t(childAt2) && childAt2.getMeasuredWidth() > 0 && childAt2.getMeasuredHeight() > 0) {
                z = false;
                break;
            }
        }
        setMeasuredDimension(iResolveSizeAndState, z ? 0 : iResolveSizeAndState2);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        android.view.MenuItem menuItemFindItem;
        if (!(parcelable instanceof androidx.appcompat.widget.Toolbar.g)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.appcompat.widget.Toolbar.g gVar = (androidx.appcompat.widget.Toolbar.g) parcelable;
        super.onRestoreInstanceState(gVar.a);
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.a;
        d.b.p.i.g gVar2 = actionMenuView != null ? actionMenuView.p : null;
        int i = gVar.f81c;
        if (i != 0 && this.L != null && gVar2 != null && (menuItemFindItem = gVar2.findItem(i)) != null) {
            menuItemFindItem.expandActionView();
        }
        if (gVar.f82d) {
            removeCallbacks(this.N);
            post(this.N);
        }
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i) {
        int i2;
        if (android.os.Build.VERSION.SDK_INT >= 17) {
            super.onRtlPropertiesChanged(i);
        }
        d();
        d.b.q.n0 n0Var = this.t;
        boolean z = i == 1;
        if (z == n0Var.f1808g) {
            return;
        }
        n0Var.f1808g = z;
        if (n0Var.h) {
            if (z) {
                int i3 = n0Var.f1805d;
                if (i3 == Integer.MIN_VALUE) {
                    i3 = n0Var.f1806e;
                }
                n0Var.a = i3;
                i2 = n0Var.f1804c;
                if (i2 == Integer.MIN_VALUE) {
                }
            } else {
                int i4 = n0Var.f1804c;
                if (i4 == Integer.MIN_VALUE) {
                    i4 = n0Var.f1806e;
                }
                n0Var.a = i4;
                i2 = n0Var.f1805d;
                if (i2 == Integer.MIN_VALUE) {
                }
            }
            n0Var.b = i2;
        }
        n0Var.a = n0Var.f1806e;
        i2 = n0Var.f1807f;
        n0Var.b = i2;
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        d.b.p.i.i iVar;
        androidx.appcompat.widget.Toolbar.g gVar = new androidx.appcompat.widget.Toolbar.g(super.onSaveInstanceState());
        androidx.appcompat.widget.Toolbar.d dVar = this.L;
        if (dVar != null && (iVar = dVar.b) != null) {
            gVar.f81c = iVar.a;
        }
        gVar.f82d = o();
        return gVar;
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.B = false;
        }
        if (!this.B) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.B = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.B = false;
        }
        return true;
    }

    public final int p(android.view.View view, int i, int[] iArr, int i2) {
        androidx.appcompat.widget.Toolbar.e eVar = (androidx.appcompat.widget.Toolbar.e) view.getLayoutParams();
        int i3 = ((android.view.ViewGroup.MarginLayoutParams) eVar).leftMargin - iArr[0];
        int iMax = java.lang.Math.max(0, i3) + i;
        iArr[0] = java.lang.Math.max(0, -i3);
        int iK = k(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax, iK, iMax + measuredWidth, view.getMeasuredHeight() + iK);
        return measuredWidth + ((android.view.ViewGroup.MarginLayoutParams) eVar).rightMargin + iMax;
    }

    public final int q(android.view.View view, int i, int[] iArr, int i2) {
        androidx.appcompat.widget.Toolbar.e eVar = (androidx.appcompat.widget.Toolbar.e) view.getLayoutParams();
        int i3 = ((android.view.ViewGroup.MarginLayoutParams) eVar).rightMargin - iArr[1];
        int iMax = i - java.lang.Math.max(0, i3);
        iArr[1] = java.lang.Math.max(0, -i3);
        int iK = k(view, i2);
        int measuredWidth = view.getMeasuredWidth();
        view.layout(iMax - measuredWidth, iK, iMax, view.getMeasuredHeight() + iK);
        return iMax - (measuredWidth + ((android.view.ViewGroup.MarginLayoutParams) eVar).leftMargin);
    }

    public final int r(android.view.View view, int i, int i2, int i3, int i4, int[] iArr) {
        android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int i5 = marginLayoutParams.leftMargin - iArr[0];
        int i6 = marginLayoutParams.rightMargin - iArr[1];
        int iMax = java.lang.Math.max(0, i6) + java.lang.Math.max(0, i5);
        iArr[0] = java.lang.Math.max(0, -i5);
        iArr[1] = java.lang.Math.max(0, -i6);
        view.measure(android.view.ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + iMax + i2, marginLayoutParams.width), android.view.ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height));
        return view.getMeasuredWidth() + iMax;
    }

    public final void s(android.view.View view, int i, int i2, int i3, int i4, int i5) {
        android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) view.getLayoutParams();
        int childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width);
        int childMeasureSpec2 = android.view.ViewGroup.getChildMeasureSpec(i3, getPaddingBottom() + getPaddingTop() + marginLayoutParams.topMargin + marginLayoutParams.bottomMargin + i4, marginLayoutParams.height);
        int mode = android.view.View.MeasureSpec.getMode(childMeasureSpec2);
        if (mode != 1073741824 && i5 >= 0) {
            if (mode != 0) {
                i5 = java.lang.Math.min(android.view.View.MeasureSpec.getSize(childMeasureSpec2), i5);
            }
            childMeasureSpec2 = android.view.View.MeasureSpec.makeMeasureSpec(i5, 1073741824);
        }
        view.measure(childMeasureSpec, childMeasureSpec2);
    }

    public void setCollapseContentDescription(int i) {
        setCollapseContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setCollapseContentDescription(java.lang.CharSequence charSequence) {
        if (!android.text.TextUtils.isEmpty(charSequence)) {
            c();
        }
        android.widget.ImageButton imageButton = this.h;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setCollapseIcon(int i) {
        setCollapseIcon(d.b.l.a.a.b(getContext(), i));
    }

    public void setCollapseIcon(android.graphics.drawable.Drawable drawable) {
        if (drawable != null) {
            c();
            this.h.setImageDrawable(drawable);
        } else {
            android.widget.ImageButton imageButton = this.h;
            if (imageButton != null) {
                imageButton.setImageDrawable(this.f78f);
            }
        }
    }

    public void setCollapsible(boolean z) {
        this.M = z;
        requestLayout();
    }

    public void setContentInsetEndWithActions(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.v) {
            this.v = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setContentInsetStartWithNavigation(int i) {
        if (i < 0) {
            i = Integer.MIN_VALUE;
        }
        if (i != this.u) {
            this.u = i;
            if (getNavigationIcon() != null) {
                requestLayout();
            }
        }
    }

    public void setLogo(int i) {
        setLogo(d.b.l.a.a.b(getContext(), i));
    }

    public void setLogo(android.graphics.drawable.Drawable drawable) {
        if (drawable != null) {
            if (this.f77e == null) {
                this.f77e = new androidx.appcompat.widget.AppCompatImageView(getContext(), null);
            }
            if (!n(this.f77e)) {
                b(this.f77e, true);
            }
        } else {
            android.widget.ImageView imageView = this.f77e;
            if (imageView != null && n(imageView)) {
                removeView(this.f77e);
                this.F.remove(this.f77e);
            }
        }
        android.widget.ImageView imageView2 = this.f77e;
        if (imageView2 != null) {
            imageView2.setImageDrawable(drawable);
        }
    }

    public void setLogoDescription(int i) {
        setLogoDescription(getContext().getText(i));
    }

    public void setLogoDescription(java.lang.CharSequence charSequence) {
        if (!android.text.TextUtils.isEmpty(charSequence) && this.f77e == null) {
            this.f77e = new androidx.appcompat.widget.AppCompatImageView(getContext(), null);
        }
        android.widget.ImageView imageView = this.f77e;
        if (imageView != null) {
            imageView.setContentDescription(charSequence);
        }
    }

    public void setNavigationContentDescription(int i) {
        setNavigationContentDescription(i != 0 ? getContext().getText(i) : null);
    }

    public void setNavigationContentDescription(java.lang.CharSequence charSequence) {
        if (!android.text.TextUtils.isEmpty(charSequence)) {
            g();
        }
        android.widget.ImageButton imageButton = this.f76d;
        if (imageButton != null) {
            imageButton.setContentDescription(charSequence);
        }
    }

    public void setNavigationIcon(int i) {
        setNavigationIcon(d.b.l.a.a.b(getContext(), i));
    }

    public void setNavigationIcon(android.graphics.drawable.Drawable drawable) {
        if (drawable != null) {
            g();
            if (!n(this.f76d)) {
                b(this.f76d, true);
            }
        } else {
            android.widget.ImageButton imageButton = this.f76d;
            if (imageButton != null && n(imageButton)) {
                removeView(this.f76d);
                this.F.remove(this.f76d);
            }
        }
        android.widget.ImageButton imageButton2 = this.f76d;
        if (imageButton2 != null) {
            imageButton2.setImageDrawable(drawable);
        }
    }

    public void setNavigationOnClickListener(android.view.View.OnClickListener onClickListener) {
        g();
        this.f76d.setOnClickListener(onClickListener);
    }

    public void setOnMenuItemClickListener(androidx.appcompat.widget.Toolbar.f fVar) {
        this.H = fVar;
    }

    public void setOverflowIcon(android.graphics.drawable.Drawable drawable) {
        e();
        this.a.setOverflowIcon(drawable);
    }

    public void setPopupTheme(int i) {
        if (this.k != i) {
            this.k = i;
            if (i == 0) {
                this.j = getContext();
            } else {
                this.j = new android.view.ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setSubtitle(int i) {
        setSubtitle(getContext().getText(i));
    }

    public void setSubtitle(java.lang.CharSequence charSequence) {
        if (android.text.TextUtils.isEmpty(charSequence)) {
            android.widget.TextView textView = this.f75c;
            if (textView != null && n(textView)) {
                removeView(this.f75c);
                this.F.remove(this.f75c);
            }
        } else {
            if (this.f75c == null) {
                android.content.Context context = getContext();
                d.b.q.x xVar = new d.b.q.x(context, null);
                this.f75c = xVar;
                xVar.setSingleLine();
                this.f75c.setEllipsize(android.text.TextUtils.TruncateAt.END);
                int i = this.m;
                if (i != 0) {
                    this.f75c.setTextAppearance(context, i);
                }
                android.content.res.ColorStateList colorStateList = this.A;
                if (colorStateList != null) {
                    this.f75c.setTextColor(colorStateList);
                }
            }
            if (!n(this.f75c)) {
                b(this.f75c, true);
            }
        }
        android.widget.TextView textView2 = this.f75c;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.y = charSequence;
    }

    public void setSubtitleTextColor(int i) {
        setSubtitleTextColor(android.content.res.ColorStateList.valueOf(i));
    }

    public void setSubtitleTextColor(android.content.res.ColorStateList colorStateList) {
        this.A = colorStateList;
        android.widget.TextView textView = this.f75c;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public void setTitle(int i) {
        setTitle(getContext().getText(i));
    }

    public void setTitle(java.lang.CharSequence charSequence) {
        if (android.text.TextUtils.isEmpty(charSequence)) {
            android.widget.TextView textView = this.b;
            if (textView != null && n(textView)) {
                removeView(this.b);
                this.F.remove(this.b);
            }
        } else {
            if (this.b == null) {
                android.content.Context context = getContext();
                d.b.q.x xVar = new d.b.q.x(context, null);
                this.b = xVar;
                xVar.setSingleLine();
                this.b.setEllipsize(android.text.TextUtils.TruncateAt.END);
                int i = this.l;
                if (i != 0) {
                    this.b.setTextAppearance(context, i);
                }
                android.content.res.ColorStateList colorStateList = this.z;
                if (colorStateList != null) {
                    this.b.setTextColor(colorStateList);
                }
            }
            if (!n(this.b)) {
                b(this.b, true);
            }
        }
        android.widget.TextView textView2 = this.b;
        if (textView2 != null) {
            textView2.setText(charSequence);
        }
        this.x = charSequence;
    }

    public void setTitleMarginBottom(int i) {
        this.s = i;
        requestLayout();
    }

    public void setTitleMarginEnd(int i) {
        this.q = i;
        requestLayout();
    }

    public void setTitleMarginStart(int i) {
        this.p = i;
        requestLayout();
    }

    public void setTitleMarginTop(int i) {
        this.r = i;
        requestLayout();
    }

    public void setTitleTextColor(int i) {
        setTitleTextColor(android.content.res.ColorStateList.valueOf(i));
    }

    public void setTitleTextColor(android.content.res.ColorStateList colorStateList) {
        this.z = colorStateList;
        android.widget.TextView textView = this.b;
        if (textView != null) {
            textView.setTextColor(colorStateList);
        }
    }

    public final boolean t(android.view.View view) {
        return (view == null || view.getParent() != this || view.getVisibility() == 8) ? false : true;
    }

    public boolean u() {
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.a;
        if (actionMenuView != null) {
            d.b.q.c cVar = actionMenuView.t;
            if (cVar != null && cVar.n()) {
                return true;
            }
        }
        return false;
    }
}
