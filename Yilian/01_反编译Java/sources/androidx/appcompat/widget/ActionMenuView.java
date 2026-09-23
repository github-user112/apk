package androidx.appcompat.widget;

/* loaded from: classes.dex */
public class ActionMenuView extends d.b.q.g0 implements d.b.p.i.g.b, d.b.p.i.n {
    public androidx.appcompat.widget.ActionMenuView.e A;
    public d.b.p.i.g p;
    public android.content.Context q;
    public int r;
    public boolean s;
    public d.b.q.c t;
    public d.b.p.i.m.a u;
    public d.b.p.i.g.a v;
    public boolean w;
    public int x;
    public int y;
    public int z;

    public interface a {
        boolean a();

        boolean b();
    }

    public static class b implements d.b.p.i.m.a {
        @Override // d.b.p.i.m.a
        public void a(d.b.p.i.g gVar, boolean z) {
        }

        @Override // d.b.p.i.m.a
        public boolean b(d.b.p.i.g gVar) {
            return false;
        }
    }

    public static class c extends d.b.q.g0.a {

        /* renamed from: c, reason: collision with root package name */
        @android.view.ViewDebug.ExportedProperty
        public boolean f48c;

        /* renamed from: d, reason: collision with root package name */
        @android.view.ViewDebug.ExportedProperty
        public int f49d;

        /* renamed from: e, reason: collision with root package name */
        @android.view.ViewDebug.ExportedProperty
        public int f50e;

        /* renamed from: f, reason: collision with root package name */
        @android.view.ViewDebug.ExportedProperty
        public boolean f51f;

        /* renamed from: g, reason: collision with root package name */
        @android.view.ViewDebug.ExportedProperty
        public boolean f52g;
        public boolean h;

        public c(int i, int i2) {
            super(i, i2);
            this.f48c = false;
        }

        public c(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public c(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        public c(androidx.appcompat.widget.ActionMenuView.c cVar) {
            super(cVar);
            this.f48c = cVar.f48c;
        }
    }

    public class d implements d.b.p.i.g.a {
        public d() {
        }

        @Override // d.b.p.i.g.a
        public boolean a(d.b.p.i.g gVar, android.view.MenuItem menuItem) {
            androidx.appcompat.widget.ActionMenuView.e eVar = androidx.appcompat.widget.ActionMenuView.this.A;
            if (eVar == null) {
                return false;
            }
            androidx.appcompat.widget.Toolbar.f fVar = androidx.appcompat.widget.Toolbar.this.H;
            return fVar != null ? fVar.onMenuItemClick(menuItem) : false;
        }

        @Override // d.b.p.i.g.a
        public void b(d.b.p.i.g gVar) {
            d.b.p.i.g.a aVar = androidx.appcompat.widget.ActionMenuView.this.v;
            if (aVar != null) {
                aVar.b(gVar);
            }
        }
    }

    public interface e {
    }

    public ActionMenuView(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        setBaselineAligned(false);
        float f2 = context.getResources().getDisplayMetrics().density;
        this.y = (int) (56.0f * f2);
        this.z = (int) (f2 * 4.0f);
        this.q = context;
        this.r = 0;
    }

    public static int u(android.view.View view, int i, int i2, int i3, int i4) {
        androidx.appcompat.widget.ActionMenuView.c cVar = (androidx.appcompat.widget.ActionMenuView.c) view.getLayoutParams();
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(android.view.View.MeasureSpec.getSize(i3) - i4, android.view.View.MeasureSpec.getMode(i3));
        androidx.appcompat.view.menu.ActionMenuItemView actionMenuItemView = view instanceof androidx.appcompat.view.menu.ActionMenuItemView ? (androidx.appcompat.view.menu.ActionMenuItemView) view : null;
        boolean z = false;
        boolean z2 = actionMenuItemView != null && actionMenuItemView.c();
        int i5 = 2;
        if (i2 <= 0 || (z2 && i2 < 2)) {
            i5 = 0;
        } else {
            view.measure(android.view.View.MeasureSpec.makeMeasureSpec(i2 * i, Integer.MIN_VALUE), iMakeMeasureSpec);
            int measuredWidth = view.getMeasuredWidth();
            int i6 = measuredWidth / i;
            if (measuredWidth % i != 0) {
                i6++;
            }
            if (!z2 || i6 >= 2) {
                i5 = i6;
            }
        }
        if (!cVar.f48c && z2) {
            z = true;
        }
        cVar.f51f = z;
        cVar.f49d = i5;
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(i * i5, 1073741824), iMakeMeasureSpec);
        return i5;
    }

    @Override // d.b.p.i.g.b
    public boolean a(d.b.p.i.i iVar) {
        return this.p.s(iVar, null, 0);
    }

    @Override // d.b.p.i.n
    public void b(d.b.p.i.g gVar) {
        this.p = gVar;
    }

    @Override // d.b.q.g0, android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof androidx.appcompat.widget.ActionMenuView.c;
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        return false;
    }

    @Override // d.b.q.g0, android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.ActionMenuView.c(getContext(), attributeSet);
    }

    public android.view.Menu getMenu() {
        if (this.p == null) {
            android.content.Context context = getContext();
            d.b.p.i.g gVar = new d.b.p.i.g(context);
            this.p = gVar;
            gVar.f1728e = new androidx.appcompat.widget.ActionMenuView.d();
            d.b.q.c cVar = new d.b.q.c(context);
            this.t = cVar;
            cVar.l = true;
            cVar.m = true;
            d.b.p.i.m.a bVar = this.u;
            if (bVar == null) {
                bVar = new androidx.appcompat.widget.ActionMenuView.b();
            }
            cVar.f1705e = bVar;
            this.p.b(this.t, this.q);
            d.b.q.c cVar2 = this.t;
            cVar2.h = this;
            this.p = cVar2.f1703c;
        }
        return this.p;
    }

    public android.graphics.drawable.Drawable getOverflowIcon() {
        getMenu();
        d.b.q.c cVar = this.t;
        d.b.q.c.d dVar = cVar.i;
        if (dVar != null) {
            return dVar.getDrawable();
        }
        if (cVar.k) {
            return cVar.j;
        }
        return null;
    }

    public int getPopupTheme() {
        return this.r;
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // d.b.q.g0
    /* renamed from: j */
    public d.b.q.g0.a generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.ActionMenuView.c(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        d.b.q.c cVar = this.t;
        if (cVar != null) {
            cVar.f(false);
            if (this.t.m()) {
                this.t.g();
                this.t.n();
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d.b.q.c cVar = this.t;
        if (cVar != null) {
            cVar.d();
        }
    }

    @Override // d.b.q.g0, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int width;
        int paddingLeft;
        if (!this.w) {
            super.onLayout(z, i, i2, i3, i4);
            return;
        }
        int childCount = getChildCount();
        int i5 = (i4 - i2) / 2;
        int dividerWidth = getDividerWidth();
        int i6 = i3 - i;
        int paddingRight = (i6 - getPaddingRight()) - getPaddingLeft();
        boolean zB = d.b.q.b1.b(this);
        int i7 = 0;
        int i8 = 0;
        for (int i9 = 0; i9 < childCount; i9++) {
            android.view.View childAt = getChildAt(i9);
            if (childAt.getVisibility() != 8) {
                androidx.appcompat.widget.ActionMenuView.c cVar = (androidx.appcompat.widget.ActionMenuView.c) childAt.getLayoutParams();
                if (cVar.f48c) {
                    int measuredWidth = childAt.getMeasuredWidth();
                    if (t(i9)) {
                        measuredWidth += dividerWidth;
                    }
                    int measuredHeight = childAt.getMeasuredHeight();
                    if (zB) {
                        paddingLeft = getPaddingLeft() + ((android.view.ViewGroup.MarginLayoutParams) cVar).leftMargin;
                        width = paddingLeft + measuredWidth;
                    } else {
                        width = (getWidth() - getPaddingRight()) - ((android.view.ViewGroup.MarginLayoutParams) cVar).rightMargin;
                        paddingLeft = width - measuredWidth;
                    }
                    int i10 = i5 - (measuredHeight / 2);
                    childAt.layout(paddingLeft, i10, width, measuredHeight + i10);
                    paddingRight -= measuredWidth;
                    i7 = 1;
                } else {
                    paddingRight -= (childAt.getMeasuredWidth() + ((android.view.ViewGroup.MarginLayoutParams) cVar).leftMargin) + ((android.view.ViewGroup.MarginLayoutParams) cVar).rightMargin;
                    t(i9);
                    i8++;
                }
            }
        }
        if (childCount == 1 && i7 == 0) {
            android.view.View childAt2 = getChildAt(0);
            int measuredWidth2 = childAt2.getMeasuredWidth();
            int measuredHeight2 = childAt2.getMeasuredHeight();
            int i11 = (i6 / 2) - (measuredWidth2 / 2);
            int i12 = i5 - (measuredHeight2 / 2);
            childAt2.layout(i11, i12, measuredWidth2 + i11, measuredHeight2 + i12);
            return;
        }
        int i13 = i8 - (i7 ^ 1);
        int iMax = java.lang.Math.max(0, i13 > 0 ? paddingRight / i13 : 0);
        if (zB) {
            int width2 = getWidth() - getPaddingRight();
            for (int i14 = 0; i14 < childCount; i14++) {
                android.view.View childAt3 = getChildAt(i14);
                androidx.appcompat.widget.ActionMenuView.c cVar2 = (androidx.appcompat.widget.ActionMenuView.c) childAt3.getLayoutParams();
                if (childAt3.getVisibility() != 8 && !cVar2.f48c) {
                    int i15 = width2 - ((android.view.ViewGroup.MarginLayoutParams) cVar2).rightMargin;
                    int measuredWidth3 = childAt3.getMeasuredWidth();
                    int measuredHeight3 = childAt3.getMeasuredHeight();
                    int i16 = i5 - (measuredHeight3 / 2);
                    childAt3.layout(i15 - measuredWidth3, i16, i15, measuredHeight3 + i16);
                    width2 = i15 - ((measuredWidth3 + ((android.view.ViewGroup.MarginLayoutParams) cVar2).leftMargin) + iMax);
                }
            }
            return;
        }
        int paddingLeft2 = getPaddingLeft();
        for (int i17 = 0; i17 < childCount; i17++) {
            android.view.View childAt4 = getChildAt(i17);
            androidx.appcompat.widget.ActionMenuView.c cVar3 = (androidx.appcompat.widget.ActionMenuView.c) childAt4.getLayoutParams();
            if (childAt4.getVisibility() != 8 && !cVar3.f48c) {
                int i18 = paddingLeft2 + ((android.view.ViewGroup.MarginLayoutParams) cVar3).leftMargin;
                int measuredWidth4 = childAt4.getMeasuredWidth();
                int measuredHeight4 = childAt4.getMeasuredHeight();
                int i19 = i5 - (measuredHeight4 / 2);
                childAt4.layout(i18, i19, i18 + measuredWidth4, measuredHeight4 + i19);
                paddingLeft2 = measuredWidth4 + ((android.view.ViewGroup.MarginLayoutParams) cVar3).rightMargin + iMax + i18;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v32 */
    /* JADX WARN: Type inference failed for: r3v33, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r3v39 */
    @Override // d.b.q.g0, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean z;
        int i4;
        int i5;
        boolean z2;
        int i6;
        ?? r3;
        d.b.p.i.g gVar;
        boolean z3 = this.w;
        boolean z4 = android.view.View.MeasureSpec.getMode(i) == 1073741824;
        this.w = z4;
        if (z3 != z4) {
            this.x = 0;
        }
        int size = android.view.View.MeasureSpec.getSize(i);
        if (this.w && (gVar = this.p) != null && size != this.x) {
            this.x = size;
            gVar.q(true);
        }
        int childCount = getChildCount();
        if (!this.w || childCount <= 0) {
            for (int i7 = 0; i7 < childCount; i7++) {
                androidx.appcompat.widget.ActionMenuView.c cVar = (androidx.appcompat.widget.ActionMenuView.c) getChildAt(i7).getLayoutParams();
                ((android.view.ViewGroup.MarginLayoutParams) cVar).rightMargin = 0;
                ((android.view.ViewGroup.MarginLayoutParams) cVar).leftMargin = 0;
            }
            super.onMeasure(i, i2);
            return;
        }
        int mode = android.view.View.MeasureSpec.getMode(i2);
        int size2 = android.view.View.MeasureSpec.getSize(i);
        int size3 = android.view.View.MeasureSpec.getSize(i2);
        int paddingRight = getPaddingRight() + getPaddingLeft();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int childMeasureSpec = android.view.ViewGroup.getChildMeasureSpec(i2, paddingBottom, -2);
        int i8 = size2 - paddingRight;
        int i9 = this.y;
        int i10 = i8 / i9;
        int i11 = i8 % i9;
        if (i10 == 0) {
            setMeasuredDimension(i8, 0);
            return;
        }
        int i12 = (i11 / i10) + i9;
        int childCount2 = getChildCount();
        int i13 = 0;
        int iMax = 0;
        int iMax2 = 0;
        int i14 = 0;
        int i15 = 0;
        boolean z5 = false;
        long j = 0;
        while (i15 < childCount2) {
            android.view.View childAt = getChildAt(i15);
            int i16 = size3;
            int i17 = i8;
            if (childAt.getVisibility() != 8) {
                boolean z6 = childAt instanceof androidx.appcompat.view.menu.ActionMenuItemView;
                int i18 = i13 + 1;
                if (z6) {
                    int i19 = this.z;
                    i6 = i18;
                    r3 = 0;
                    childAt.setPadding(i19, 0, i19, 0);
                } else {
                    i6 = i18;
                    r3 = 0;
                }
                androidx.appcompat.widget.ActionMenuView.c cVar2 = (androidx.appcompat.widget.ActionMenuView.c) childAt.getLayoutParams();
                cVar2.h = r3;
                cVar2.f50e = r3;
                cVar2.f49d = r3;
                cVar2.f51f = r3;
                ((android.view.ViewGroup.MarginLayoutParams) cVar2).leftMargin = r3;
                ((android.view.ViewGroup.MarginLayoutParams) cVar2).rightMargin = r3;
                cVar2.f52g = z6 && ((androidx.appcompat.view.menu.ActionMenuItemView) childAt).c();
                int iU = u(childAt, i12, cVar2.f48c ? 1 : i10, childMeasureSpec, paddingBottom);
                iMax2 = java.lang.Math.max(iMax2, iU);
                if (cVar2.f51f) {
                    i14++;
                }
                if (cVar2.f48c) {
                    z5 = true;
                }
                i10 -= iU;
                iMax = java.lang.Math.max(iMax, childAt.getMeasuredHeight());
                if (iU == 1) {
                    j |= 1 << i15;
                }
                i13 = i6;
            }
            i15++;
            size3 = i16;
            i8 = i17;
        }
        int i20 = i8;
        int i21 = size3;
        boolean z7 = z5 && i13 == 2;
        boolean z8 = false;
        while (i14 > 0 && i10 > 0) {
            int i22 = Integer.MAX_VALUE;
            int i23 = 0;
            int i24 = 0;
            long j2 = 0;
            while (i23 < childCount2) {
                int i25 = iMax;
                androidx.appcompat.widget.ActionMenuView.c cVar3 = (androidx.appcompat.widget.ActionMenuView.c) getChildAt(i23).getLayoutParams();
                boolean z9 = z8;
                if (cVar3.f51f) {
                    int i26 = cVar3.f49d;
                    if (i26 < i22) {
                        j2 = 1 << i23;
                        i22 = i26;
                        i24 = 1;
                    } else if (i26 == i22) {
                        i24++;
                        j2 |= 1 << i23;
                    }
                }
                i23++;
                z8 = z9;
                iMax = i25;
            }
            i3 = iMax;
            z = z8;
            j |= j2;
            if (i24 > i10) {
                break;
            }
            int i27 = i22 + 1;
            int i28 = 0;
            while (i28 < childCount2) {
                android.view.View childAt2 = getChildAt(i28);
                androidx.appcompat.widget.ActionMenuView.c cVar4 = (androidx.appcompat.widget.ActionMenuView.c) childAt2.getLayoutParams();
                int i29 = i14;
                long j3 = 1 << i28;
                if ((j2 & j3) == 0) {
                    if (cVar4.f49d == i27) {
                        j |= j3;
                    }
                    z2 = z7;
                } else {
                    if (z7 && cVar4.f52g && i10 == 1) {
                        int i30 = this.z;
                        z2 = z7;
                        childAt2.setPadding(i30 + i12, 0, i30, 0);
                    } else {
                        z2 = z7;
                    }
                    cVar4.f49d++;
                    cVar4.h = true;
                    i10--;
                }
                i28++;
                i14 = i29;
                z7 = z2;
            }
            iMax = i3;
            z8 = true;
        }
        i3 = iMax;
        z = z8;
        boolean z10 = !z5 && i13 == 1;
        if (i10 > 0 && j != 0 && (i10 < i13 - 1 || z10 || iMax2 > 1)) {
            float fBitCount = java.lang.Long.bitCount(j);
            if (!z10) {
                if ((j & 1) != 0 && !((androidx.appcompat.widget.ActionMenuView.c) getChildAt(0).getLayoutParams()).f52g) {
                    fBitCount -= 0.5f;
                }
                int i31 = childCount2 - 1;
                if ((j & (1 << i31)) != 0 && !((androidx.appcompat.widget.ActionMenuView.c) getChildAt(i31).getLayoutParams()).f52g) {
                    fBitCount -= 0.5f;
                }
            }
            int i32 = fBitCount > 0.0f ? (int) ((i10 * i12) / fBitCount) : 0;
            for (int i33 = 0; i33 < childCount2; i33++) {
                if ((j & (1 << i33)) != 0) {
                    android.view.View childAt3 = getChildAt(i33);
                    androidx.appcompat.widget.ActionMenuView.c cVar5 = (androidx.appcompat.widget.ActionMenuView.c) childAt3.getLayoutParams();
                    if (childAt3 instanceof androidx.appcompat.view.menu.ActionMenuItemView) {
                        cVar5.f50e = i32;
                        cVar5.h = true;
                        if (i33 == 0 && !cVar5.f52g) {
                            ((android.view.ViewGroup.MarginLayoutParams) cVar5).leftMargin = (-i32) / 2;
                        }
                    } else if (cVar5.f48c) {
                        cVar5.f50e = i32;
                        cVar5.h = true;
                        ((android.view.ViewGroup.MarginLayoutParams) cVar5).rightMargin = (-i32) / 2;
                    } else {
                        if (i33 != 0) {
                            ((android.view.ViewGroup.MarginLayoutParams) cVar5).leftMargin = i32 / 2;
                        }
                        if (i33 != childCount2 - 1) {
                            ((android.view.ViewGroup.MarginLayoutParams) cVar5).rightMargin = i32 / 2;
                        }
                    }
                    z = true;
                }
            }
        }
        if (z) {
            for (int i34 = 0; i34 < childCount2; i34++) {
                android.view.View childAt4 = getChildAt(i34);
                androidx.appcompat.widget.ActionMenuView.c cVar6 = (androidx.appcompat.widget.ActionMenuView.c) childAt4.getLayoutParams();
                if (cVar6.h) {
                    childAt4.measure(android.view.View.MeasureSpec.makeMeasureSpec((cVar6.f49d * i12) + cVar6.f50e, 1073741824), childMeasureSpec);
                }
            }
        }
        if (mode != 1073741824) {
            i5 = i20;
            i4 = i3;
        } else {
            i4 = i21;
            i5 = i20;
        }
        setMeasuredDimension(i5, i4);
    }

    @Override // d.b.q.g0
    /* renamed from: r, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.ActionMenuView.c generateDefaultLayoutParams() {
        androidx.appcompat.widget.ActionMenuView.c cVar = new androidx.appcompat.widget.ActionMenuView.c(-2, -2);
        cVar.b = 16;
        return cVar;
    }

    @Override // d.b.q.g0
    /* renamed from: s, reason: merged with bridge method [inline-methods] */
    public androidx.appcompat.widget.ActionMenuView.c generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        if (layoutParams == null) {
            return generateDefaultLayoutParams();
        }
        androidx.appcompat.widget.ActionMenuView.c cVar = layoutParams instanceof androidx.appcompat.widget.ActionMenuView.c ? new androidx.appcompat.widget.ActionMenuView.c((androidx.appcompat.widget.ActionMenuView.c) layoutParams) : new androidx.appcompat.widget.ActionMenuView.c(layoutParams);
        if (cVar.b <= 0) {
            cVar.b = 16;
        }
        return cVar;
    }

    public void setExpandedActionViewsExclusive(boolean z) {
        this.t.q = z;
    }

    public void setOnMenuItemClickListener(androidx.appcompat.widget.ActionMenuView.e eVar) {
        this.A = eVar;
    }

    public void setOverflowIcon(android.graphics.drawable.Drawable drawable) {
        getMenu();
        d.b.q.c cVar = this.t;
        d.b.q.c.d dVar = cVar.i;
        if (dVar != null) {
            dVar.setImageDrawable(drawable);
        } else {
            cVar.k = true;
            cVar.j = drawable;
        }
    }

    public void setOverflowReserved(boolean z) {
        this.s = z;
    }

    public void setPopupTheme(int i) {
        if (this.r != i) {
            this.r = i;
            if (i == 0) {
                this.q = getContext();
            } else {
                this.q = new android.view.ContextThemeWrapper(getContext(), i);
            }
        }
    }

    public void setPresenter(d.b.q.c cVar) {
        this.t = cVar;
        cVar.h = this;
        this.p = cVar.f1703c;
    }

    public boolean t(int i) {
        boolean zA = false;
        if (i == 0) {
            return false;
        }
        android.view.KeyEvent.Callback childAt = getChildAt(i - 1);
        android.view.KeyEvent.Callback childAt2 = getChildAt(i);
        if (i < getChildCount() && (childAt instanceof androidx.appcompat.widget.ActionMenuView.a)) {
            zA = false | ((androidx.appcompat.widget.ActionMenuView.a) childAt).a();
        }
        return (i <= 0 || !(childAt2 instanceof androidx.appcompat.widget.ActionMenuView.a)) ? zA : zA | ((androidx.appcompat.widget.ActionMenuView.a) childAt2).b();
    }
}
