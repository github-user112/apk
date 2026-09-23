package androidx.appcompat.widget;

/* loaded from: classes.dex */
public class ActionBarOverlayLayout extends android.view.ViewGroup implements d.b.q.a0, d.g.m.j, d.g.m.h, d.g.m.i {
    public static final int[] B = {d.b.a.actionBarSize, android.R.attr.windowContentOverlay};
    public final d.g.m.k A;
    public int a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public androidx.appcompat.widget.ContentFrameLayout f43c;

    /* renamed from: d, reason: collision with root package name */
    public androidx.appcompat.widget.ActionBarContainer f44d;

    /* renamed from: e, reason: collision with root package name */
    public d.b.q.b0 f45e;

    /* renamed from: f, reason: collision with root package name */
    public android.graphics.drawable.Drawable f46f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f47g;
    public boolean h;
    public boolean i;
    public boolean j;
    public boolean k;
    public int l;
    public int m;
    public final android.graphics.Rect n;
    public final android.graphics.Rect o;
    public final android.graphics.Rect p;
    public final android.graphics.Rect q;
    public final android.graphics.Rect r;
    public final android.graphics.Rect s;
    public final android.graphics.Rect t;
    public androidx.appcompat.widget.ActionBarOverlayLayout.d u;
    public android.widget.OverScroller v;
    public android.view.ViewPropertyAnimator w;
    public final android.animation.AnimatorListenerAdapter x;
    public final java.lang.Runnable y;
    public final java.lang.Runnable z;

    public class a extends android.animation.AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(android.animation.Animator animator) {
            androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = androidx.appcompat.widget.ActionBarOverlayLayout.this;
            actionBarOverlayLayout.w = null;
            actionBarOverlayLayout.k = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) {
            androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = androidx.appcompat.widget.ActionBarOverlayLayout.this;
            actionBarOverlayLayout.w = null;
            actionBarOverlayLayout.k = false;
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.widget.ActionBarOverlayLayout.this.q();
            androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = androidx.appcompat.widget.ActionBarOverlayLayout.this;
            actionBarOverlayLayout.w = actionBarOverlayLayout.f44d.animate().translationY(0.0f).setListener(androidx.appcompat.widget.ActionBarOverlayLayout.this.x);
        }
    }

    public class c implements java.lang.Runnable {
        public c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.appcompat.widget.ActionBarOverlayLayout.this.q();
            androidx.appcompat.widget.ActionBarOverlayLayout actionBarOverlayLayout = androidx.appcompat.widget.ActionBarOverlayLayout.this;
            actionBarOverlayLayout.w = actionBarOverlayLayout.f44d.animate().translationY(-androidx.appcompat.widget.ActionBarOverlayLayout.this.f44d.getHeight()).setListener(androidx.appcompat.widget.ActionBarOverlayLayout.this.x);
        }
    }

    public interface d {
    }

    public static class e extends android.view.ViewGroup.MarginLayoutParams {
        public e(int i, int i2) {
            super(i, i2);
        }

        public e(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public e(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.n = new android.graphics.Rect();
        this.o = new android.graphics.Rect();
        this.p = new android.graphics.Rect();
        this.q = new android.graphics.Rect();
        this.r = new android.graphics.Rect();
        this.s = new android.graphics.Rect();
        this.t = new android.graphics.Rect();
        this.x = new androidx.appcompat.widget.ActionBarOverlayLayout.a();
        this.y = new androidx.appcompat.widget.ActionBarOverlayLayout.b();
        this.z = new androidx.appcompat.widget.ActionBarOverlayLayout.c();
        r(context);
        this.A = new d.g.m.k();
    }

    @Override // d.b.q.a0
    public void a(android.view.Menu menu, d.b.p.i.m.a aVar) {
        s();
        this.f45e.a(menu, aVar);
    }

    @Override // d.b.q.a0
    public boolean b() {
        s();
        return this.f45e.b();
    }

    @Override // d.b.q.a0
    public void c() {
        s();
        this.f45e.c();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof androidx.appcompat.widget.ActionBarOverlayLayout.e;
    }

    @Override // d.b.q.a0
    public boolean d() {
        s();
        return this.f45e.d();
    }

    @Override // android.view.View
    public void draw(android.graphics.Canvas canvas) {
        int translationY;
        super.draw(canvas);
        if (this.f46f == null || this.f47g) {
            return;
        }
        if (this.f44d.getVisibility() == 0) {
            translationY = (int) (this.f44d.getTranslationY() + this.f44d.getBottom() + 0.5f);
        } else {
            translationY = 0;
        }
        this.f46f.setBounds(0, translationY, getWidth(), this.f46f.getIntrinsicHeight() + translationY);
        this.f46f.draw(canvas);
    }

    @Override // d.b.q.a0
    public boolean e() {
        s();
        return this.f45e.e();
    }

    @Override // d.b.q.a0
    public boolean f() {
        s();
        return this.f45e.f();
    }

    @Override // android.view.View
    public boolean fitSystemWindows(android.graphics.Rect rect) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        s();
        int iV = d.g.m.s.v(this) & 256;
        boolean zP = p(this.f44d, rect, true, true, false, true);
        this.q.set(rect);
        d.b.q.b1.a(this, this.q, this.n);
        if (!this.r.equals(this.q)) {
            this.r.set(this.q);
            zP = true;
        }
        if (!this.o.equals(this.n)) {
            this.o.set(this.n);
            zP = true;
        }
        if (zP) {
            requestLayout();
        }
        return true;
    }

    @Override // d.b.q.a0
    public boolean g() {
        s();
        return this.f45e.g();
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new androidx.appcompat.widget.ActionBarOverlayLayout.e(-1, -1);
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.appcompat.widget.ActionBarOverlayLayout.e(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new androidx.appcompat.widget.ActionBarOverlayLayout.e(layoutParams);
    }

    public int getActionBarHideOffset() {
        androidx.appcompat.widget.ActionBarContainer actionBarContainer = this.f44d;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.A.a();
    }

    public java.lang.CharSequence getTitle() {
        s();
        return this.f45e.getTitle();
    }

    @Override // d.g.m.h
    public void h(android.view.View view, android.view.View view2, int i, int i2) {
        if (i2 == 0) {
            onNestedScrollAccepted(view, view2, i);
        }
    }

    @Override // d.g.m.h
    public void i(android.view.View view, int i) {
        if (i == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // d.g.m.h
    public void j(android.view.View view, int i, int i2, int[] iArr, int i3) {
        if (i3 == 0) {
            onNestedPreScroll(view, i, i2, iArr);
        }
    }

    @Override // d.b.q.a0
    public void k(int i) {
        s();
        if (i == 2) {
            this.f45e.t();
        } else if (i == 5) {
            this.f45e.u();
        } else {
            if (i != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // d.b.q.a0
    public void l() {
        s();
        this.f45e.h();
    }

    @Override // d.g.m.i
    public void m(android.view.View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // d.g.m.h
    public void n(android.view.View view, int i, int i2, int i3, int i4, int i5) {
        if (i5 == 0) {
            onNestedScroll(view, i, i2, i3, i4);
        }
    }

    @Override // d.g.m.h
    public boolean o(android.view.View view, android.view.View view2, int i, int i2) {
        return i2 == 0 && onStartNestedScroll(view, view2, i);
    }

    @Override // android.view.View
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        r(getContext());
        d.g.m.s.K(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        q();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        getPaddingRight();
        int paddingTop = getPaddingTop();
        getPaddingBottom();
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                androidx.appcompat.widget.ActionBarOverlayLayout.e eVar = (androidx.appcompat.widget.ActionBarOverlayLayout.e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i6 = ((android.view.ViewGroup.MarginLayoutParams) eVar).leftMargin + paddingLeft;
                int i7 = ((android.view.ViewGroup.MarginLayoutParams) eVar).topMargin + paddingTop;
                childAt.layout(i6, i7, measuredWidth + i6, measuredHeight + i7);
            }
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int measuredHeight;
        s();
        measureChildWithMargins(this.f44d, i, 0, i2, 0);
        androidx.appcompat.widget.ActionBarOverlayLayout.e eVar = (androidx.appcompat.widget.ActionBarOverlayLayout.e) this.f44d.getLayoutParams();
        int iMax = java.lang.Math.max(0, this.f44d.getMeasuredWidth() + ((android.view.ViewGroup.MarginLayoutParams) eVar).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) eVar).rightMargin);
        int iMax2 = java.lang.Math.max(0, this.f44d.getMeasuredHeight() + ((android.view.ViewGroup.MarginLayoutParams) eVar).topMargin + ((android.view.ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        int iCombineMeasuredStates = android.view.View.combineMeasuredStates(0, this.f44d.getMeasuredState());
        boolean z = (d.g.m.s.v(this) & 256) != 0;
        if (z) {
            measuredHeight = this.a;
            if (this.i && this.f44d.getTabContainer() != null) {
                measuredHeight += this.a;
            }
        } else {
            measuredHeight = this.f44d.getVisibility() != 8 ? this.f44d.getMeasuredHeight() : 0;
        }
        this.p.set(this.n);
        this.s.set(this.q);
        android.graphics.Rect rect = (this.h || z) ? this.s : this.p;
        rect.top += measuredHeight;
        rect.bottom += 0;
        p(this.f43c, this.p, true, true, true, true);
        if (!this.t.equals(this.s)) {
            this.t.set(this.s);
            this.f43c.a(this.s);
        }
        measureChildWithMargins(this.f43c, i, 0, i2, 0);
        androidx.appcompat.widget.ActionBarOverlayLayout.e eVar2 = (androidx.appcompat.widget.ActionBarOverlayLayout.e) this.f43c.getLayoutParams();
        int iMax3 = java.lang.Math.max(iMax, this.f43c.getMeasuredWidth() + ((android.view.ViewGroup.MarginLayoutParams) eVar2).leftMargin + ((android.view.ViewGroup.MarginLayoutParams) eVar2).rightMargin);
        int iMax4 = java.lang.Math.max(iMax2, this.f43c.getMeasuredHeight() + ((android.view.ViewGroup.MarginLayoutParams) eVar2).topMargin + ((android.view.ViewGroup.MarginLayoutParams) eVar2).bottomMargin);
        int iCombineMeasuredStates2 = android.view.View.combineMeasuredStates(iCombineMeasuredStates, this.f43c.getMeasuredState());
        setMeasuredDimension(android.view.View.resolveSizeAndState(java.lang.Math.max(getPaddingRight() + getPaddingLeft() + iMax3, getSuggestedMinimumWidth()), i, iCombineMeasuredStates2), android.view.View.resolveSizeAndState(java.lang.Math.max(getPaddingBottom() + getPaddingTop() + iMax4, getSuggestedMinimumHeight()), i2, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public boolean onNestedFling(android.view.View view, float f2, float f3, boolean z) {
        if (!this.j || !z) {
            return false;
        }
        if (t(f3)) {
            q();
            this.z.run();
        } else {
            q();
            this.y.run();
        }
        this.k = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public boolean onNestedPreFling(android.view.View view, float f2, float f3) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public void onNestedPreScroll(android.view.View view, int i, int i2, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public void onNestedScroll(android.view.View view, int i, int i2, int i3, int i4) {
        int i5 = this.l + i2;
        this.l = i5;
        setActionBarHideOffset(i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public void onNestedScrollAccepted(android.view.View view, android.view.View view2, int i) {
        d.b.k.u uVar;
        d.b.p.g gVar;
        this.A.a = i;
        this.l = getActionBarHideOffset();
        q();
        androidx.appcompat.widget.ActionBarOverlayLayout.d dVar = this.u;
        if (dVar == null || (gVar = (uVar = (d.b.k.u) dVar).u) == null) {
            return;
        }
        gVar.a();
        uVar.u = null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public boolean onStartNestedScroll(android.view.View view, android.view.View view2, int i) {
        if ((i & 2) == 0 || this.f44d.getVisibility() != 0) {
            return false;
        }
        return this.j;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public void onStopNestedScroll(android.view.View view) {
        if (this.j && !this.k) {
            if (this.l <= this.f44d.getHeight()) {
                q();
                postDelayed(this.y, 600L);
            } else {
                q();
                postDelayed(this.z, 600L);
            }
        }
        androidx.appcompat.widget.ActionBarOverlayLayout.d dVar = this.u;
        if (dVar != null && ((d.b.k.u) dVar) == null) {
            throw null;
        }
    }

    @Override // android.view.View
    public void onWindowSystemUiVisibilityChanged(int i) {
        super.onWindowSystemUiVisibilityChanged(i);
        s();
        int i2 = this.m ^ i;
        this.m = i;
        boolean z = (i & 4) == 0;
        boolean z2 = (i & 256) != 0;
        androidx.appcompat.widget.ActionBarOverlayLayout.d dVar = this.u;
        if (dVar != null) {
            ((d.b.k.u) dVar).p = !z2;
            if (z || !z2) {
                d.b.k.u uVar = (d.b.k.u) this.u;
                if (uVar.r) {
                    uVar.r = false;
                    uVar.n(true);
                }
            } else {
                d.b.k.u uVar2 = (d.b.k.u) dVar;
                if (!uVar2.r) {
                    uVar2.r = true;
                    uVar2.n(true);
                }
            }
        }
        if ((i2 & 256) == 0 || this.u == null) {
            return;
        }
        d.g.m.s.K(this);
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        this.b = i;
        androidx.appcompat.widget.ActionBarOverlayLayout.d dVar = this.u;
        if (dVar != null) {
            ((d.b.k.u) dVar).o = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean p(android.view.View r3, android.graphics.Rect r4, boolean r5, boolean r6, boolean r7, boolean r8) {
        /*
            r2 = this;
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$e r3 = (androidx.appcompat.widget.ActionBarOverlayLayout.e) r3
            r0 = 1
            if (r5 == 0) goto L13
            int r5 = r3.leftMargin
            int r1 = r4.left
            if (r5 == r1) goto L13
            r3.leftMargin = r1
            r5 = 1
            goto L14
        L13:
            r5 = 0
        L14:
            if (r6 == 0) goto L1f
            int r6 = r3.topMargin
            int r1 = r4.top
            if (r6 == r1) goto L1f
            r3.topMargin = r1
            r5 = 1
        L1f:
            if (r8 == 0) goto L2a
            int r6 = r3.rightMargin
            int r8 = r4.right
            if (r6 == r8) goto L2a
            r3.rightMargin = r8
            r5 = 1
        L2a:
            if (r7 == 0) goto L35
            int r6 = r3.bottomMargin
            int r4 = r4.bottom
            if (r6 == r4) goto L35
            r3.bottomMargin = r4
            goto L36
        L35:
            r0 = r5
        L36:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.p(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    public void q() {
        removeCallbacks(this.y);
        removeCallbacks(this.z);
        android.view.ViewPropertyAnimator viewPropertyAnimator = this.w;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public final void r(android.content.Context context) {
        android.content.res.TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(B);
        this.a = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        android.graphics.drawable.Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f46f = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f47g = context.getApplicationInfo().targetSdkVersion < 19;
        this.v = new android.widget.OverScroller(context);
    }

    public void s() {
        d.b.q.b0 wrapper;
        if (this.f43c == null) {
            this.f43c = (androidx.appcompat.widget.ContentFrameLayout) findViewById(d.b.f.action_bar_activity_content);
            this.f44d = (androidx.appcompat.widget.ActionBarContainer) findViewById(d.b.f.action_bar_container);
            android.view.KeyEvent.Callback callbackFindViewById = findViewById(d.b.f.action_bar);
            if (callbackFindViewById instanceof d.b.q.b0) {
                wrapper = (d.b.q.b0) callbackFindViewById;
            } else {
                if (!(callbackFindViewById instanceof androidx.appcompat.widget.Toolbar)) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("Can't make a decor toolbar out of ");
                    sbO.append(callbackFindViewById.getClass().getSimpleName());
                    throw new java.lang.IllegalStateException(sbO.toString());
                }
                wrapper = ((androidx.appcompat.widget.Toolbar) callbackFindViewById).getWrapper();
            }
            this.f45e = wrapper;
        }
    }

    public void setActionBarHideOffset(int i) {
        q();
        this.f44d.setTranslationY(-java.lang.Math.max(0, java.lang.Math.min(i, this.f44d.getHeight())));
    }

    public void setActionBarVisibilityCallback(androidx.appcompat.widget.ActionBarOverlayLayout.d dVar) {
        this.u = dVar;
        if (getWindowToken() != null) {
            ((d.b.k.u) this.u).o = this.b;
            int i = this.m;
            if (i != 0) {
                onWindowSystemUiVisibilityChanged(i);
                d.g.m.s.K(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z) {
        this.i = z;
    }

    public void setHideOnContentScrollEnabled(boolean z) {
        if (z != this.j) {
            this.j = z;
            if (z) {
                return;
            }
            q();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i) {
        s();
        this.f45e.setIcon(i);
    }

    public void setIcon(android.graphics.drawable.Drawable drawable) {
        s();
        this.f45e.setIcon(drawable);
    }

    public void setLogo(int i) {
        s();
        this.f45e.q(i);
    }

    public void setOverlayMode(boolean z) {
        this.h = z;
        this.f47g = z && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z) {
    }

    public void setUiOptions(int i) {
    }

    @Override // d.b.q.a0
    public void setWindowCallback(android.view.Window.Callback callback) {
        s();
        this.f45e.setWindowCallback(callback);
    }

    @Override // d.b.q.a0
    public void setWindowTitle(java.lang.CharSequence charSequence) {
        s();
        this.f45e.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public final boolean t(float f2) {
        this.v.fling(0, 0, 0, (int) f2, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.v.getFinalY() > this.f44d.getHeight();
    }
}
