package d.b.q;

/* loaded from: classes.dex */
public class c extends d.b.p.i.b {
    public d.b.q.c.d i;
    public android.graphics.drawable.Drawable j;
    public boolean k;
    public boolean l;
    public boolean m;
    public int n;
    public int o;
    public int p;
    public boolean q;
    public int r;
    public final android.util.SparseBooleanArray s;
    public d.b.q.c.e t;
    public d.b.q.c.a u;
    public d.b.q.c.RunnableC0039c v;
    public d.b.q.c.b w;
    public final d.b.q.c.f x;
    public int y;

    public class a extends d.b.p.i.l {
        public a(android.content.Context context, d.b.p.i.r rVar, android.view.View view) {
            super(context, rVar, view, false, d.b.a.actionOverflowMenuStyle, 0);
            if (!rVar.B.g()) {
                android.view.View view2 = d.b.q.c.this.i;
                this.f1744f = view2 == null ? (android.view.View) d.b.q.c.this.h : view2;
            }
            d(d.b.q.c.this.x);
        }

        @Override // d.b.p.i.l
        public void c() {
            d.b.q.c cVar = d.b.q.c.this;
            cVar.u = null;
            cVar.y = 0;
            super.c();
        }
    }

    public class b extends androidx.appcompat.view.menu.ActionMenuItemView.b {
        public b() {
        }
    }

    /* renamed from: d.b.q.c$c, reason: collision with other inner class name */
    public class RunnableC0039c implements java.lang.Runnable {
        public d.b.q.c.e a;

        public RunnableC0039c(d.b.q.c.e eVar) {
            this.a = eVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.b.p.i.g.a aVar;
            d.b.p.i.g gVar = d.b.q.c.this.f1703c;
            if (gVar != null && (aVar = gVar.f1728e) != null) {
                aVar.b(gVar);
            }
            android.view.View view = (android.view.View) d.b.q.c.this.h;
            if (view != null && view.getWindowToken() != null && this.a.f()) {
                d.b.q.c.this.t = this.a;
            }
            d.b.q.c.this.v = null;
        }
    }

    public class d extends androidx.appcompat.widget.AppCompatImageView implements androidx.appcompat.widget.ActionMenuView.a {

        public class a extends d.b.q.f0 {
            public a(android.view.View view, d.b.q.c cVar) {
                super(view);
            }

            @Override // d.b.q.f0
            public d.b.p.i.p b() {
                d.b.q.c.e eVar = d.b.q.c.this.t;
                if (eVar == null) {
                    return null;
                }
                return eVar.a();
            }

            @Override // d.b.q.f0
            public boolean c() {
                d.b.q.c.this.n();
                return true;
            }

            @Override // d.b.q.f0
            public boolean d() {
                d.b.q.c cVar = d.b.q.c.this;
                if (cVar.v != null) {
                    return false;
                }
                cVar.g();
                return true;
            }
        }

        public d(android.content.Context context) {
            super(context, null, d.b.a.actionOverflowButtonStyle);
            setClickable(true);
            setFocusable(true);
            setVisibility(0);
            setEnabled(true);
            d.b.k.r.v0(this, getContentDescription());
            setOnTouchListener(new d.b.q.c.d.a(this, d.b.q.c.this));
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean a() {
            return false;
        }

        @Override // androidx.appcompat.widget.ActionMenuView.a
        public boolean b() {
            return false;
        }

        @Override // android.view.View
        public boolean performClick() {
            if (super.performClick()) {
                return true;
            }
            playSoundEffect(0);
            d.b.q.c.this.n();
            return true;
        }

        @Override // android.widget.ImageView
        public boolean setFrame(int i, int i2, int i3, int i4) {
            boolean frame = super.setFrame(i, i2, i3, i4);
            android.graphics.drawable.Drawable drawable = getDrawable();
            android.graphics.drawable.Drawable background = getBackground();
            if (drawable != null && background != null) {
                int width = getWidth();
                int height = getHeight();
                int iMax = java.lang.Math.max(width, height) / 2;
                int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
                int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
                d.b.k.r.m0(background, paddingLeft - iMax, paddingTop - iMax, paddingLeft + iMax, paddingTop + iMax);
            }
            return frame;
        }
    }

    public class e extends d.b.p.i.l {
        public e(android.content.Context context, d.b.p.i.g gVar, android.view.View view, boolean z) {
            super(context, gVar, view, z, d.b.a.actionOverflowMenuStyle, 0);
            this.f1745g = 8388613;
            d(d.b.q.c.this.x);
        }

        @Override // d.b.p.i.l
        public void c() {
            d.b.p.i.g gVar = d.b.q.c.this.f1703c;
            if (gVar != null) {
                gVar.c(true);
            }
            d.b.q.c.this.t = null;
            super.c();
        }
    }

    public class f implements d.b.p.i.m.a {
        public f() {
        }

        @Override // d.b.p.i.m.a
        public void a(d.b.p.i.g gVar, boolean z) {
            if (gVar instanceof d.b.p.i.r) {
                gVar.k().c(false);
            }
            d.b.p.i.m.a aVar = d.b.q.c.this.f1705e;
            if (aVar != null) {
                aVar.a(gVar, z);
            }
        }

        @Override // d.b.p.i.m.a
        public boolean b(d.b.p.i.g gVar) {
            if (gVar == null) {
                return false;
            }
            d.b.q.c cVar = d.b.q.c.this;
            cVar.y = ((d.b.p.i.r) gVar).B.a;
            d.b.p.i.m.a aVar = cVar.f1705e;
            if (aVar != null) {
                return aVar.b(gVar);
            }
            return false;
        }
    }

    public c(android.content.Context context) {
        super(context, d.b.g.abc_action_menu_layout, d.b.g.abc_action_menu_item_layout);
        this.s = new android.util.SparseBooleanArray();
        this.x = new d.b.q.c.f();
    }

    @Override // d.b.p.i.m
    public void a(d.b.p.i.g gVar, boolean z) {
        d();
        d.b.p.i.m.a aVar = this.f1705e;
        if (aVar != null) {
            aVar.a(gVar, z);
        }
    }

    @Override // d.b.p.i.b
    public android.view.View b(d.b.p.i.i iVar, android.view.View view, android.view.ViewGroup viewGroup) {
        android.view.View actionView = iVar.getActionView();
        if (actionView == null || iVar.f()) {
            actionView = super.b(iVar, view, viewGroup);
        }
        actionView.setVisibility(iVar.C ? 8 : 0);
        androidx.appcompat.widget.ActionMenuView actionMenuView = (androidx.appcompat.widget.ActionMenuView) viewGroup;
        android.view.ViewGroup.LayoutParams layoutParams = actionView.getLayoutParams();
        if (!actionMenuView.checkLayoutParams(layoutParams)) {
            actionView.setLayoutParams(actionMenuView.generateLayoutParams(layoutParams));
        }
        return actionView;
    }

    @Override // d.b.p.i.m
    public void c(android.content.Context context, d.b.p.i.g gVar) {
        this.b = context;
        android.view.LayoutInflater.from(context);
        this.f1703c = gVar;
        android.content.res.Resources resources = context.getResources();
        if (!this.m) {
            this.l = android.os.Build.VERSION.SDK_INT < 19 ? true ^ android.view.ViewConfiguration.get(context).hasPermanentMenuKey() : true;
        }
        int i = 2;
        this.n = context.getResources().getDisplayMetrics().widthPixels / 2;
        android.content.res.Configuration configuration = context.getResources().getConfiguration();
        int i2 = configuration.screenWidthDp;
        int i3 = configuration.screenHeightDp;
        if (configuration.smallestScreenWidthDp > 600 || i2 > 600 || ((i2 > 960 && i3 > 720) || (i2 > 720 && i3 > 960))) {
            i = 5;
        } else if (i2 >= 500 || ((i2 > 640 && i3 > 480) || (i2 > 480 && i3 > 640))) {
            i = 4;
        } else if (i2 >= 360) {
            i = 3;
        }
        this.p = i;
        int measuredWidth = this.n;
        if (this.l) {
            if (this.i == null) {
                d.b.q.c.d dVar = new d.b.q.c.d(this.a);
                this.i = dVar;
                if (this.k) {
                    dVar.setImageDrawable(this.j);
                    this.j = null;
                    this.k = false;
                }
                int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
                this.i.measure(iMakeMeasureSpec, iMakeMeasureSpec);
            }
            measuredWidth -= this.i.getMeasuredWidth();
        } else {
            this.i = null;
        }
        this.o = measuredWidth;
        this.r = (int) (resources.getDisplayMetrics().density * 56.0f);
    }

    public boolean d() {
        return g() | l();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // d.b.p.i.b, d.b.p.i.m
    public boolean e(d.b.p.i.r rVar) {
        boolean z = false;
        if (!rVar.hasVisibleItems()) {
            return false;
        }
        d.b.p.i.r rVar2 = rVar;
        while (true) {
            d.b.p.i.g gVar = rVar2.A;
            if (gVar == this.f1703c) {
                break;
            }
            rVar2 = (d.b.p.i.r) gVar;
        }
        d.b.p.i.i iVar = rVar2.B;
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.h;
        android.view.View view = null;
        if (viewGroup != null) {
            int childCount = viewGroup.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    break;
                }
                android.view.View childAt = viewGroup.getChildAt(i);
                if ((childAt instanceof d.b.p.i.n.a) && ((d.b.p.i.n.a) childAt).getItemData() == iVar) {
                    view = childAt;
                    break;
                }
                i++;
            }
        }
        if (view == null) {
            return false;
        }
        int i2 = rVar.B.a;
        int size = rVar.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size) {
                break;
            }
            android.view.MenuItem item = rVar.getItem(i3);
            if (item.isVisible() && item.getIcon() != null) {
                z = true;
                break;
            }
            i3++;
        }
        d.b.q.c.a aVar = new d.b.q.c.a(this.b, rVar, view);
        this.u = aVar;
        aVar.h = z;
        d.b.p.i.k kVar = aVar.j;
        if (kVar != null) {
            kVar.p(z);
        }
        if (!this.u.f()) {
            throw new java.lang.IllegalStateException("MenuPopupHelper cannot be used without an anchor");
        }
        d.b.p.i.m.a aVar2 = this.f1705e;
        if (aVar2 != null) {
            aVar2.b(rVar);
        }
        return true;
    }

    @Override // d.b.p.i.b, d.b.p.i.m
    public void f(boolean z) {
        java.util.ArrayList<d.b.p.i.i> arrayList;
        super.f(z);
        ((android.view.View) this.h).requestLayout();
        d.b.p.i.g gVar = this.f1703c;
        boolean z2 = false;
        if (gVar != null) {
            gVar.i();
            java.util.ArrayList<d.b.p.i.i> arrayList2 = gVar.i;
            int size = arrayList2.size();
            for (int i = 0; i < size; i++) {
                d.g.m.b bVar = arrayList2.get(i).A;
            }
        }
        d.b.p.i.g gVar2 = this.f1703c;
        if (gVar2 != null) {
            gVar2.i();
            arrayList = gVar2.j;
        } else {
            arrayList = null;
        }
        if (this.l && arrayList != null) {
            int size2 = arrayList.size();
            if (size2 == 1) {
                z2 = !arrayList.get(0).C;
            } else if (size2 > 0) {
                z2 = true;
            }
        }
        d.b.q.c.d dVar = this.i;
        if (z2) {
            if (dVar == null) {
                this.i = new d.b.q.c.d(this.a);
            }
            android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.i.getParent();
            if (viewGroup != this.h) {
                if (viewGroup != null) {
                    viewGroup.removeView(this.i);
                }
                androidx.appcompat.widget.ActionMenuView actionMenuView = (androidx.appcompat.widget.ActionMenuView) this.h;
                d.b.q.c.d dVar2 = this.i;
                androidx.appcompat.widget.ActionMenuView.c cVarGenerateDefaultLayoutParams = actionMenuView.generateDefaultLayoutParams();
                cVarGenerateDefaultLayoutParams.f48c = true;
                actionMenuView.addView(dVar2, cVarGenerateDefaultLayoutParams);
            }
        } else if (dVar != null) {
            java.lang.Object parent = dVar.getParent();
            java.lang.Object obj = this.h;
            if (parent == obj) {
                ((android.view.ViewGroup) obj).removeView(this.i);
            }
        }
        ((androidx.appcompat.widget.ActionMenuView) this.h).setOverflowReserved(this.l);
    }

    public boolean g() {
        java.lang.Object obj;
        d.b.q.c.RunnableC0039c runnableC0039c = this.v;
        if (runnableC0039c != null && (obj = this.h) != null) {
            ((android.view.View) obj).removeCallbacks(runnableC0039c);
            this.v = null;
            return true;
        }
        d.b.q.c.e eVar = this.t;
        if (eVar == null) {
            return false;
        }
        if (eVar.b()) {
            eVar.j.dismiss();
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // d.b.p.i.m
    public boolean h() {
        java.util.ArrayList<d.b.p.i.i> arrayListL;
        int size;
        int i;
        boolean z;
        d.b.p.i.g gVar = this.f1703c;
        android.view.View view = null;
        if (gVar != null) {
            arrayListL = gVar.l();
            size = arrayListL.size();
        } else {
            arrayListL = null;
            size = 0;
        }
        int i2 = this.p;
        int i3 = this.o;
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(0, 0);
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.h;
        int i4 = 0;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        while (true) {
            i = 2;
            z = 1;
            if (i4 >= size) {
                break;
            }
            d.b.p.i.i iVar = arrayListL.get(i4);
            if ((iVar.y & 2) == 2) {
                i6++;
            } else if ((iVar.y & 1) == 1) {
                i5++;
            } else {
                z2 = true;
            }
            if (this.q && iVar.C) {
                i2 = 0;
            }
            i4++;
        }
        if (this.l && (z2 || i5 + i6 > i2)) {
            i2--;
        }
        int i7 = i2 - i6;
        android.util.SparseBooleanArray sparseBooleanArray = this.s;
        sparseBooleanArray.clear();
        int i8 = 0;
        int i9 = 0;
        while (i8 < size) {
            d.b.p.i.i iVar2 = arrayListL.get(i8);
            if ((iVar2.y & i) == i) {
                android.view.View viewB = b(iVar2, view, viewGroup);
                viewB.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                int measuredWidth = viewB.getMeasuredWidth();
                i3 -= measuredWidth;
                if (i9 == 0) {
                    i9 = measuredWidth;
                }
                int i10 = iVar2.b;
                if (i10 != 0) {
                    sparseBooleanArray.put(i10, z);
                }
                iVar2.k(z);
            } else if ((iVar2.y & z) == z) {
                int i11 = iVar2.b;
                boolean z3 = sparseBooleanArray.get(i11);
                boolean z4 = (i7 > 0 || z3) && i3 > 0;
                if (z4) {
                    android.view.View viewB2 = b(iVar2, view, viewGroup);
                    viewB2.measure(iMakeMeasureSpec, iMakeMeasureSpec);
                    int measuredWidth2 = viewB2.getMeasuredWidth();
                    i3 -= measuredWidth2;
                    if (i9 == 0) {
                        i9 = measuredWidth2;
                    }
                    z4 &= i3 + i9 > 0;
                }
                boolean z5 = z4;
                if (z5 && i11 != 0) {
                    sparseBooleanArray.put(i11, z);
                } else if (z3) {
                    sparseBooleanArray.put(i11, false);
                    for (int i12 = 0; i12 < i8; i12++) {
                        d.b.p.i.i iVar3 = arrayListL.get(i12);
                        if (iVar3.b == i11) {
                            if (iVar3.g()) {
                                i7++;
                            }
                            iVar3.k(false);
                        }
                    }
                }
                if (z5) {
                    i7--;
                }
                iVar2.k(z5);
            } else {
                iVar2.k(false);
                i8++;
                view = null;
                i = 2;
                z = 1;
            }
            i8++;
            view = null;
            i = 2;
            z = 1;
        }
        return true;
    }

    public boolean l() {
        d.b.q.c.a aVar = this.u;
        if (aVar == null) {
            return false;
        }
        if (!aVar.b()) {
            return true;
        }
        aVar.j.dismiss();
        return true;
    }

    public boolean m() {
        d.b.q.c.e eVar = this.t;
        return eVar != null && eVar.b();
    }

    public boolean n() {
        d.b.p.i.g gVar;
        if (!this.l || m() || (gVar = this.f1703c) == null || this.h == null || this.v != null) {
            return false;
        }
        gVar.i();
        if (gVar.j.isEmpty()) {
            return false;
        }
        d.b.q.c.RunnableC0039c runnableC0039c = new d.b.q.c.RunnableC0039c(new d.b.q.c.e(this.b, this.f1703c, this.i, true));
        this.v = runnableC0039c;
        ((android.view.View) this.h).post(runnableC0039c);
        super.e(null);
        return true;
    }
}
