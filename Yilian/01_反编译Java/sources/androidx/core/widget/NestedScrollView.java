package androidx.core.widget;

/* loaded from: classes.dex */
public class NestedScrollView extends android.widget.FrameLayout implements d.g.m.i, d.g.m.e {
    public static final androidx.core.widget.NestedScrollView.a A = new androidx.core.widget.NestedScrollView.a();
    public static final int[] B = {android.R.attr.fillViewport};
    public long a;
    public final android.graphics.Rect b;

    /* renamed from: c, reason: collision with root package name */
    public android.widget.OverScroller f106c;

    /* renamed from: d, reason: collision with root package name */
    public android.widget.EdgeEffect f107d;

    /* renamed from: e, reason: collision with root package name */
    public android.widget.EdgeEffect f108e;

    /* renamed from: f, reason: collision with root package name */
    public int f109f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f110g;
    public boolean h;
    public android.view.View i;
    public boolean j;
    public android.view.VelocityTracker k;
    public boolean l;
    public boolean m;
    public int n;
    public int o;
    public int p;
    public int q;
    public final int[] r;
    public final int[] s;
    public int t;
    public int u;
    public androidx.core.widget.NestedScrollView.c v;
    public final d.g.m.k w;
    public final d.g.m.g x;
    public float y;
    public androidx.core.widget.NestedScrollView.b z;

    public static class a extends d.g.m.a {
        @Override // d.g.m.a
        public void a(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
            androidx.core.widget.NestedScrollView nestedScrollView = (androidx.core.widget.NestedScrollView) view;
            accessibilityEvent.setClassName(android.widget.ScrollView.class.getName());
            accessibilityEvent.setScrollable(nestedScrollView.getScrollRange() > 0);
            accessibilityEvent.setScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setScrollY(nestedScrollView.getScrollY());
            accessibilityEvent.setMaxScrollX(nestedScrollView.getScrollX());
            accessibilityEvent.setMaxScrollY(nestedScrollView.getScrollRange());
        }

        @Override // d.g.m.a
        public void b(android.view.View view, d.g.m.a0.d dVar) {
            int scrollRange;
            this.a.onInitializeAccessibilityNodeInfo(view, dVar.a);
            androidx.core.widget.NestedScrollView nestedScrollView = (androidx.core.widget.NestedScrollView) view;
            dVar.a.setClassName(android.widget.ScrollView.class.getName());
            if (!nestedScrollView.isEnabled() || (scrollRange = nestedScrollView.getScrollRange()) <= 0) {
                return;
            }
            dVar.a.setScrollable(true);
            if (nestedScrollView.getScrollY() > 0) {
                dVar.a(d.g.m.a0.d.a.f1989e);
                dVar.a(d.g.m.a0.d.a.f1990f);
            }
            if (nestedScrollView.getScrollY() < scrollRange) {
                dVar.a(d.g.m.a0.d.a.f1988d);
                dVar.a(d.g.m.a0.d.a.f1991g);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0075 A[RETURN] */
        @Override // d.g.m.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean c(android.view.View r4, int r5, android.os.Bundle r6) {
            /*
                r3 = this;
                boolean r6 = super.c(r4, r5, r6)
                r0 = 1
                if (r6 == 0) goto L8
                return r0
            L8:
                androidx.core.widget.NestedScrollView r4 = (androidx.core.widget.NestedScrollView) r4
                boolean r6 = r4.isEnabled()
                r1 = 0
                if (r6 != 0) goto L12
                return r1
            L12:
                r6 = 4096(0x1000, float:5.74E-42)
                r2 = 250(0xfa, float:3.5E-43)
                if (r5 == r6) goto L53
                r6 = 8192(0x2000, float:1.14794E-41)
                if (r5 == r6) goto L27
                r6 = 16908344(0x1020038, float:2.3877386E-38)
                if (r5 == r6) goto L27
                r6 = 16908346(0x102003a, float:2.3877392E-38)
                if (r5 == r6) goto L53
                return r1
            L27:
                int r5 = r4.getHeight()
                int r6 = r4.getPaddingBottom()
                int r5 = r5 - r6
                int r6 = r4.getPaddingTop()
                int r5 = r5 - r6
                int r6 = r4.getScrollY()
                int r6 = r6 - r5
                int r5 = java.lang.Math.max(r6, r1)
                int r6 = r4.getScrollY()
                if (r5 == r6) goto L52
            L44:
                int r6 = r4.getScrollX()
                int r1 = r1 - r6
                int r6 = r4.getScrollY()
                int r5 = r5 - r6
                r4.C(r1, r5, r2, r0)
                return r0
            L52:
                return r1
            L53:
                int r5 = r4.getHeight()
                int r6 = r4.getPaddingBottom()
                int r5 = r5 - r6
                int r6 = r4.getPaddingTop()
                int r5 = r5 - r6
                int r6 = r4.getScrollY()
                int r6 = r6 + r5
                int r5 = r4.getScrollRange()
                int r5 = java.lang.Math.min(r6, r5)
                int r6 = r4.getScrollY()
                if (r5 == r6) goto L75
                goto L44
            L75:
                return r1
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.a.c(android.view.View, int, android.os.Bundle):boolean");
        }
    }

    public interface b {
    }

    public static class c extends android.view.View.BaseSavedState {
        public static final android.os.Parcelable.Creator<androidx.core.widget.NestedScrollView.c> CREATOR = new androidx.core.widget.NestedScrollView.c.a();
        public int a;

        public class a implements android.os.Parcelable.Creator<androidx.core.widget.NestedScrollView.c> {
            @Override // android.os.Parcelable.Creator
            public androidx.core.widget.NestedScrollView.c createFromParcel(android.os.Parcel parcel) {
                return new androidx.core.widget.NestedScrollView.c(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public androidx.core.widget.NestedScrollView.c[] newArray(int i) {
                return new androidx.core.widget.NestedScrollView.c[i];
            }
        }

        public c(android.os.Parcel parcel) {
            super(parcel);
            this.a = parcel.readInt();
        }

        public c(android.os.Parcelable parcelable) {
            super(parcelable);
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("HorizontalScrollView.SavedState{");
            sbO.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
            sbO.append(" scrollPosition=");
            return e.a.c.a.a.i(sbO, this.a, com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeInt(this.a);
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public NestedScrollView(android.content.Context context, android.util.AttributeSet attributeSet) {
        int i = d.g.a.nestedScrollViewStyle;
        super(context, attributeSet, i);
        this.b = new android.graphics.Rect();
        this.f110g = true;
        this.h = false;
        this.i = null;
        this.j = false;
        this.m = true;
        this.q = -1;
        this.r = new int[2];
        this.s = new int[2];
        this.f106c = new android.widget.OverScroller(getContext());
        setFocusable(true);
        setDescendantFocusability(net.easyconn.ecsdk.ECTypes.ECSupportFunction.EC_SUPPORT_FUNCTION_WEB_CAR_DVR);
        setWillNotDraw(false);
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(getContext());
        this.n = viewConfiguration.getScaledTouchSlop();
        this.o = viewConfiguration.getScaledMinimumFlingVelocity();
        this.p = viewConfiguration.getScaledMaximumFlingVelocity();
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, B, i, 0);
        setFillViewport(typedArrayObtainStyledAttributes.getBoolean(0, false));
        typedArrayObtainStyledAttributes.recycle();
        this.w = new d.g.m.k();
        this.x = new d.g.m.g(this);
        setNestedScrollingEnabled(true);
        d.g.m.s.L(this, A);
    }

    public static int d(int i, int i2, int i3) {
        if (i2 >= i3 || i < 0) {
            return 0;
        }
        return i2 + i > i3 ? i3 - i2 : i;
    }

    private float getVerticalScrollFactorCompat() {
        if (this.y == 0.0f) {
            android.util.TypedValue typedValue = new android.util.TypedValue();
            android.content.Context context = getContext();
            if (!context.getTheme().resolveAttribute(android.R.attr.listPreferredItemHeight, typedValue, true)) {
                throw new java.lang.IllegalStateException("Expected theme to define listPreferredItemHeight.");
            }
            this.y = typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return this.y;
    }

    public static boolean t(android.view.View view, android.view.View view2) {
        if (view == view2) {
            return true;
        }
        java.lang.Object parent = view.getParent();
        return (parent instanceof android.view.ViewGroup) && t((android.view.View) parent, view2);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0068  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean A(int r18, int r19, int r20) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            r2 = r19
            r3 = r20
            int r4 = r17.getHeight()
            int r5 = r17.getScrollY()
            int r4 = r4 + r5
            r8 = 33
            if (r1 != r8) goto L17
            r8 = 1
            goto L18
        L17:
            r8 = 0
        L18:
            r9 = 2
            java.util.ArrayList r9 = r0.getFocusables(r9)
            int r10 = r9.size()
            r11 = 0
            r12 = 0
            r13 = 0
        L24:
            if (r12 >= r10) goto L6c
            java.lang.Object r14 = r9.get(r12)
            android.view.View r14 = (android.view.View) r14
            int r15 = r14.getTop()
            int r6 = r14.getBottom()
            if (r2 >= r6) goto L69
            if (r15 >= r3) goto L69
            if (r2 >= r15) goto L3f
            if (r6 >= r3) goto L3f
            r16 = 1
            goto L41
        L3f:
            r16 = 0
        L41:
            if (r11 != 0) goto L47
            r11 = r14
            r13 = r16
            goto L69
        L47:
            if (r8 == 0) goto L4f
            int r7 = r11.getTop()
            if (r15 < r7) goto L57
        L4f:
            if (r8 != 0) goto L59
            int r7 = r11.getBottom()
            if (r6 <= r7) goto L59
        L57:
            r6 = 1
            goto L5a
        L59:
            r6 = 0
        L5a:
            if (r13 == 0) goto L61
            if (r16 == 0) goto L69
            if (r6 == 0) goto L69
            goto L68
        L61:
            if (r16 == 0) goto L66
            r11 = r14
            r13 = 1
            goto L69
        L66:
            if (r6 == 0) goto L69
        L68:
            r11 = r14
        L69:
            int r12 = r12 + 1
            goto L24
        L6c:
            if (r11 != 0) goto L6f
            r11 = r0
        L6f:
            if (r2 < r5) goto L75
            if (r3 > r4) goto L75
            r6 = 0
            goto L7f
        L75:
            if (r8 == 0) goto L79
            int r2 = r2 - r5
            goto L7b
        L79:
            int r2 = r3 - r4
        L7b:
            r0.g(r2)
            r6 = 1
        L7f:
            android.view.View r2 = r17.findFocus()
            if (r11 == r2) goto L88
            r11.requestFocus(r1)
        L88:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.A(int, int, int):boolean");
    }

    public final void B(android.view.View view) {
        view.getDrawingRect(this.b);
        offsetDescendantRectToMyCoords(view, this.b);
        int iE = e(this.b);
        if (iE != 0) {
            scrollBy(0, iE);
        }
    }

    public final void C(int i, int i2, int i3, boolean z) {
        if (getChildCount() == 0) {
            return;
        }
        if (android.view.animation.AnimationUtils.currentAnimationTimeMillis() - this.a > 250) {
            android.view.View childAt = getChildAt(0);
            android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
            int height = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int height2 = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            this.f106c.startScroll(getScrollX(), scrollY, 0, java.lang.Math.max(0, java.lang.Math.min(i2 + scrollY, java.lang.Math.max(0, height - height2))) - scrollY, i3);
            z(z);
        } else {
            if (!this.f106c.isFinished()) {
                b();
            }
            scrollBy(i, i2);
        }
        this.a = android.view.animation.AnimationUtils.currentAnimationTimeMillis();
    }

    public boolean D(int i, int i2) {
        return this.x.h(i, i2);
    }

    @Override // d.g.m.e
    public void a(int i) {
        this.x.i(i);
    }

    @Override // android.view.ViewGroup
    public void addView(android.view.View view) {
        if (getChildCount() > 0) {
            throw new java.lang.IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view);
    }

    @Override // android.view.ViewGroup
    public void addView(android.view.View view, int i) {
        if (getChildCount() > 0) {
            throw new java.lang.IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i);
    }

    @Override // android.view.ViewGroup
    public void addView(android.view.View view, int i, android.view.ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new java.lang.IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, i, layoutParams);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void addView(android.view.View view, android.view.ViewGroup.LayoutParams layoutParams) {
        if (getChildCount() > 0) {
            throw new java.lang.IllegalStateException("ScrollView can host only one direct child");
        }
        super.addView(view, layoutParams);
    }

    public final void b() {
        this.f106c.abortAnimation();
        this.x.i(1);
    }

    public boolean c(int i) {
        android.view.View viewFindFocus = findFocus();
        if (viewFindFocus == this) {
            viewFindFocus = null;
        }
        android.view.View viewFindNextFocus = android.view.FocusFinder.getInstance().findNextFocus(this, viewFindFocus, i);
        int maxScrollAmount = getMaxScrollAmount();
        if (viewFindNextFocus == null || !u(viewFindNextFocus, maxScrollAmount, getHeight())) {
            if (i == 33 && getScrollY() < maxScrollAmount) {
                maxScrollAmount = getScrollY();
            } else if (i == 130 && getChildCount() > 0) {
                android.view.View childAt = getChildAt(0);
                maxScrollAmount = java.lang.Math.min((childAt.getBottom() + ((android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin) - ((getHeight() + getScrollY()) - getPaddingBottom()), maxScrollAmount);
            }
            if (maxScrollAmount == 0) {
                return false;
            }
            if (i != 130) {
                maxScrollAmount = -maxScrollAmount;
            }
            g(maxScrollAmount);
        } else {
            viewFindNextFocus.getDrawingRect(this.b);
            offsetDescendantRectToMyCoords(viewFindNextFocus, this.b);
            g(e(this.b));
            viewFindNextFocus.requestFocus(i);
        }
        if (viewFindFocus != null && viewFindFocus.isFocused() && (!u(viewFindFocus, 0, getHeight()))) {
            int descendantFocusability = getDescendantFocusability();
            setDescendantFocusability(131072);
            requestFocus();
            setDescendantFocusability(descendantFocusability);
        }
        return true;
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        return super.computeHorizontalScrollExtent();
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        return super.computeHorizontalScrollOffset();
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        return super.computeHorizontalScrollRange();
    }

    @Override // android.view.View
    public void computeScroll() {
        android.widget.EdgeEffect edgeEffect;
        if (this.f106c.isFinished()) {
            return;
        }
        this.f106c.computeScrollOffset();
        int currY = this.f106c.getCurrY();
        int i = currY - this.u;
        this.u = currY;
        int[] iArr = this.s;
        boolean z = false;
        iArr[1] = 0;
        f(0, i, iArr, null, 1);
        int i2 = i - this.s[1];
        int scrollRange = getScrollRange();
        if (i2 != 0) {
            int scrollY = getScrollY();
            x(0, i2, getScrollX(), scrollY, 0, scrollRange, 0, 0);
            int scrollY2 = getScrollY() - scrollY;
            int i3 = i2 - scrollY2;
            int[] iArr2 = this.s;
            iArr2[1] = 0;
            this.x.e(0, scrollY2, 0, i3, this.r, 1, iArr2);
            i2 = i3 - this.s[1];
        }
        if (i2 != 0) {
            int overScrollMode = getOverScrollMode();
            if (overScrollMode == 0 || (overScrollMode == 1 && scrollRange > 0)) {
                z = true;
            }
            if (z) {
                l();
                if (i2 < 0) {
                    if (this.f107d.isFinished()) {
                        edgeEffect = this.f107d;
                        edgeEffect.onAbsorb((int) this.f106c.getCurrVelocity());
                    }
                } else if (this.f108e.isFinished()) {
                    edgeEffect = this.f108e;
                    edgeEffect.onAbsorb((int) this.f106c.getCurrVelocity());
                }
            }
            b();
        }
        if (this.f106c.isFinished()) {
            this.x.i(1);
        } else {
            d.g.m.s.H(this);
        }
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        return super.computeVerticalScrollExtent();
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        return java.lang.Math.max(0, super.computeVerticalScrollOffset());
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        int childCount = getChildCount();
        int height = (getHeight() - getPaddingBottom()) - getPaddingTop();
        if (childCount == 0) {
            return height;
        }
        android.view.View childAt = getChildAt(0);
        int bottom = childAt.getBottom() + ((android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
        int scrollY = getScrollY();
        int iMax = java.lang.Math.max(0, bottom - height);
        return scrollY < 0 ? bottom - scrollY : scrollY > iMax ? bottom + (scrollY - iMax) : bottom;
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEvent(android.view.KeyEvent keyEvent) {
        return super.dispatchKeyEvent(keyEvent) || p(keyEvent);
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f2, float f3, boolean z) {
        return this.x.a(f2, f3, z);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f2, float f3) {
        return this.x.b(f2, f3);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i, int i2, int[] iArr, int[] iArr2) {
        return f(i, i2, iArr, iArr2, 0);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i, int i2, int i3, int i4, int[] iArr) {
        return this.x.d(i, i2, i3, i4, iArr);
    }

    @Override // android.view.View
    public void draw(android.graphics.Canvas canvas) {
        int paddingLeft;
        super.draw(canvas);
        if (this.f107d != null) {
            int scrollY = getScrollY();
            int paddingLeft2 = 0;
            if (!this.f107d.isFinished()) {
                int iSave = canvas.save();
                int width = getWidth();
                int height = getHeight();
                int iMin = java.lang.Math.min(0, scrollY);
                if (android.os.Build.VERSION.SDK_INT < 21 || getClipToPadding()) {
                    width -= getPaddingRight() + getPaddingLeft();
                    paddingLeft = getPaddingLeft() + 0;
                } else {
                    paddingLeft = 0;
                }
                if (android.os.Build.VERSION.SDK_INT >= 21 && getClipToPadding()) {
                    height -= getPaddingBottom() + getPaddingTop();
                    iMin += getPaddingTop();
                }
                canvas.translate(paddingLeft, iMin);
                this.f107d.setSize(width, height);
                if (this.f107d.draw(canvas)) {
                    d.g.m.s.H(this);
                }
                canvas.restoreToCount(iSave);
            }
            if (this.f108e.isFinished()) {
                return;
            }
            int iSave2 = canvas.save();
            int width2 = getWidth();
            int height2 = getHeight();
            int iMax = java.lang.Math.max(getScrollRange(), scrollY) + height2;
            if (android.os.Build.VERSION.SDK_INT < 21 || getClipToPadding()) {
                width2 -= getPaddingRight() + getPaddingLeft();
                paddingLeft2 = 0 + getPaddingLeft();
            }
            if (android.os.Build.VERSION.SDK_INT >= 21 && getClipToPadding()) {
                height2 -= getPaddingBottom() + getPaddingTop();
                iMax -= getPaddingBottom();
            }
            canvas.translate(paddingLeft2 - width2, iMax);
            canvas.rotate(180.0f, width2, 0.0f);
            this.f108e.setSize(width2, height2);
            if (this.f108e.draw(canvas)) {
                d.g.m.s.H(this);
            }
            canvas.restoreToCount(iSave2);
        }
    }

    public int e(android.graphics.Rect rect) {
        if (getChildCount() == 0) {
            return 0;
        }
        int height = getHeight();
        int scrollY = getScrollY();
        int i = scrollY + height;
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        if (rect.top > 0) {
            scrollY += verticalFadingEdgeLength;
        }
        android.view.View childAt = getChildAt(0);
        android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
        int i2 = rect.bottom < (childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin ? i - verticalFadingEdgeLength : i;
        if (rect.bottom > i2 && rect.top > scrollY) {
            return java.lang.Math.min((rect.height() > height ? rect.top - scrollY : rect.bottom - i2) + 0, (childAt.getBottom() + layoutParams.bottomMargin) - i);
        }
        if (rect.top >= scrollY || rect.bottom >= i2) {
            return 0;
        }
        return java.lang.Math.max(rect.height() > height ? 0 - (i2 - rect.bottom) : 0 - (scrollY - rect.top), -getScrollY());
    }

    public boolean f(int i, int i2, int[] iArr, int[] iArr2, int i3) {
        return this.x.c(i, i2, iArr, iArr2, i3);
    }

    public final void g(int i) {
        if (i != 0) {
            if (this.m) {
                C(0, i, 250, false);
            } else {
                scrollBy(0, i);
            }
        }
    }

    @Override // android.view.View
    public float getBottomFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        android.view.View childAt = getChildAt(0);
        android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int bottom = ((childAt.getBottom() + layoutParams.bottomMargin) - getScrollY()) - (getHeight() - getPaddingBottom());
        if (bottom < verticalFadingEdgeLength) {
            return bottom / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    public int getMaxScrollAmount() {
        return (int) (getHeight() * 0.5f);
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.w.a();
    }

    public int getScrollRange() {
        if (getChildCount() <= 0) {
            return 0;
        }
        android.view.View childAt = getChildAt(0);
        android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
        return java.lang.Math.max(0, ((childAt.getHeight() + layoutParams.topMargin) + layoutParams.bottomMargin) - ((getHeight() - getPaddingTop()) - getPaddingBottom()));
    }

    @Override // android.view.View
    public float getTopFadingEdgeStrength() {
        if (getChildCount() == 0) {
            return 0.0f;
        }
        int verticalFadingEdgeLength = getVerticalFadingEdgeLength();
        int scrollY = getScrollY();
        if (scrollY < verticalFadingEdgeLength) {
            return scrollY / verticalFadingEdgeLength;
        }
        return 1.0f;
    }

    @Override // d.g.m.h
    public void h(android.view.View view, android.view.View view2, int i, int i2) {
        d.g.m.k kVar = this.w;
        if (i2 == 1) {
            kVar.b = i;
        } else {
            kVar.a = i;
        }
        D(2, i2);
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return s(0);
    }

    @Override // d.g.m.h
    public void i(android.view.View view, int i) {
        d.g.m.k kVar = this.w;
        if (i == 1) {
            kVar.b = 0;
        } else {
            kVar.a = 0;
        }
        this.x.i(i);
    }

    @Override // android.view.View, d.g.m.f
    public boolean isNestedScrollingEnabled() {
        return this.x.f1996d;
    }

    @Override // d.g.m.h
    public void j(android.view.View view, int i, int i2, int[] iArr, int i3) {
        f(i, i2, iArr, null, i3);
    }

    public final void k() {
        this.j = false;
        y();
        this.x.i(0);
        android.widget.EdgeEffect edgeEffect = this.f107d;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            this.f108e.onRelease();
        }
    }

    public final void l() {
        if (getOverScrollMode() == 2) {
            this.f107d = null;
            this.f108e = null;
        } else if (this.f107d == null) {
            android.content.Context context = getContext();
            this.f107d = new android.widget.EdgeEffect(context);
            this.f108e = new android.widget.EdgeEffect(context);
        }
    }

    @Override // d.g.m.i
    public void m(android.view.View view, int i, int i2, int i3, int i4, int i5, int[] iArr) {
        v(i4, i5, iArr);
    }

    @Override // android.view.ViewGroup
    public void measureChild(android.view.View view, int i, int i2) {
        android.view.ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        view.measure(android.widget.FrameLayout.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft(), layoutParams.width), android.view.View.MeasureSpec.makeMeasureSpec(0, 0));
    }

    @Override // android.view.ViewGroup
    public void measureChildWithMargins(android.view.View view, int i, int i2, int i3, int i4) {
        android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) view.getLayoutParams();
        view.measure(android.widget.FrameLayout.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + marginLayoutParams.leftMargin + marginLayoutParams.rightMargin + i2, marginLayoutParams.width), android.view.View.MeasureSpec.makeMeasureSpec(marginLayoutParams.topMargin + marginLayoutParams.bottomMargin, 0));
    }

    @Override // d.g.m.h
    public void n(android.view.View view, int i, int i2, int i3, int i4, int i5) {
        v(i4, i5, null);
    }

    @Override // d.g.m.h
    public boolean o(android.view.View view, android.view.View view2, int i, int i2) {
        return (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.h = false;
    }

    @Override // android.view.View
    public boolean onGenericMotionEvent(android.view.MotionEvent motionEvent) {
        if ((motionEvent.getSource() & 2) != 0 && motionEvent.getAction() == 8 && !this.j) {
            float axisValue = motionEvent.getAxisValue(9);
            if (axisValue != 0.0f) {
                int verticalScrollFactorCompat = (int) (axisValue * getVerticalScrollFactorCompat());
                int scrollRange = getScrollRange();
                int scrollY = getScrollY();
                int i = scrollY - verticalScrollFactorCompat;
                if (i < 0) {
                    scrollRange = 0;
                } else if (i <= scrollRange) {
                    scrollRange = i;
                }
                if (scrollRange != scrollY) {
                    super.scrollTo(getScrollX(), scrollRange);
                    return true;
                }
            }
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0085  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e0  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r12) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        int measuredHeight = 0;
        this.f110g = false;
        android.view.View view = this.i;
        if (view != null && t(view, this)) {
            B(this.i);
        }
        this.i = null;
        if (!this.h) {
            if (this.v != null) {
                scrollTo(getScrollX(), this.v.a);
                this.v = null;
            }
            if (getChildCount() > 0) {
                android.view.View childAt = getChildAt(0);
                android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
                measuredHeight = childAt.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            }
            int paddingTop = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
            int scrollY = getScrollY();
            int iD = d(scrollY, paddingTop, measuredHeight);
            if (iD != scrollY) {
                scrollTo(getScrollX(), iD);
            }
        }
        scrollTo(getScrollX(), getScrollY());
        this.h = true;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.l && android.view.View.MeasureSpec.getMode(i2) != 0 && getChildCount() > 0) {
            android.view.View childAt = getChildAt(0);
            android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int measuredHeight2 = (((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom()) - layoutParams.topMargin) - layoutParams.bottomMargin;
            if (measuredHeight < measuredHeight2) {
                childAt.measure(android.widget.FrameLayout.getChildMeasureSpec(i, getPaddingRight() + getPaddingLeft() + layoutParams.leftMargin + layoutParams.rightMargin, layoutParams.width), android.view.View.MeasureSpec.makeMeasureSpec(measuredHeight2, 1073741824));
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public boolean onNestedFling(android.view.View view, float f2, float f3, boolean z) {
        if (z) {
            return false;
        }
        dispatchNestedFling(0.0f, f3, true);
        q((int) f3);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public boolean onNestedPreFling(android.view.View view, float f2, float f3) {
        return dispatchNestedPreFling(f2, f3);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public void onNestedPreScroll(android.view.View view, int i, int i2, int[] iArr) {
        f(i, i2, iArr, null, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public void onNestedScroll(android.view.View view, int i, int i2, int i3, int i4) {
        v(i4, 0, null);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public void onNestedScrollAccepted(android.view.View view, android.view.View view2, int i) {
        this.w.a = i;
        D(2, 0);
    }

    @Override // android.view.View
    public void onOverScrolled(int i, int i2, boolean z, boolean z2) {
        super.scrollTo(i, i2);
    }

    @Override // android.view.ViewGroup
    public boolean onRequestFocusInDescendants(int i, android.graphics.Rect rect) {
        if (i == 2) {
            i = 130;
        } else if (i == 1) {
            i = 33;
        }
        android.view.FocusFinder focusFinder = android.view.FocusFinder.getInstance();
        android.view.View viewFindNextFocus = rect == null ? focusFinder.findNextFocus(this, null, i) : focusFinder.findNextFocusFromRect(this, rect, i);
        if (viewFindNextFocus == null || (true ^ u(viewFindNextFocus, 0, getHeight()))) {
            return false;
        }
        return viewFindNextFocus.requestFocus(i, rect);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        if (!(parcelable instanceof androidx.core.widget.NestedScrollView.c)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.core.widget.NestedScrollView.c cVar = (androidx.core.widget.NestedScrollView.c) parcelable;
        super.onRestoreInstanceState(cVar.getSuperState());
        this.v = cVar;
        requestLayout();
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        androidx.core.widget.NestedScrollView.c cVar = new androidx.core.widget.NestedScrollView.c(super.onSaveInstanceState());
        cVar.a = getScrollY();
        return cVar;
    }

    @Override // android.view.View
    public void onScrollChanged(int i, int i2, int i3, int i4) {
        super.onScrollChanged(i, i2, i3, i4);
        androidx.core.widget.NestedScrollView.b bVar = this.z;
        if (bVar != null) {
            d.b.k.b bVar2 = (d.b.k.b) bVar;
            androidx.appcompat.app.AlertController.c(this, bVar2.a, bVar2.b);
        }
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        android.view.View viewFindFocus = findFocus();
        if (viewFindFocus == null || this == viewFindFocus || !u(viewFindFocus, 0, i4)) {
            return;
        }
        viewFindFocus.getDrawingRect(this.b);
        offsetDescendantRectToMyCoords(viewFindFocus, this.b);
        g(e(this.b));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public boolean onStartNestedScroll(android.view.View view, android.view.View view2, int i) {
        return (i & 2) != 0;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public void onStopNestedScroll(android.view.View view) {
        this.w.a = 0;
        a(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:87:0x0209  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r23) {
        /*
            Method dump skipped, instructions count: 595
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0033  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean p(android.view.KeyEvent r7) {
        /*
            Method dump skipped, instructions count: 252
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.p(android.view.KeyEvent):boolean");
    }

    public void q(int i) {
        if (getChildCount() > 0) {
            this.f106c.fling(getScrollX(), getScrollY(), 0, i, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE, 0, 0);
            z(true);
        }
    }

    public boolean r(int i) {
        int childCount;
        boolean z = i == 130;
        int height = getHeight();
        android.graphics.Rect rect = this.b;
        rect.top = 0;
        rect.bottom = height;
        if (z && (childCount = getChildCount()) > 0) {
            android.view.View childAt = getChildAt(childCount - 1);
            this.b.bottom = getPaddingBottom() + childAt.getBottom() + ((android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams()).bottomMargin;
            android.graphics.Rect rect2 = this.b;
            rect2.top = rect2.bottom - height;
        }
        android.graphics.Rect rect3 = this.b;
        return A(i, rect3.top, rect3.bottom);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(android.view.View view, android.view.View view2) {
        if (this.f110g) {
            this.i = view2;
        } else {
            B(view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(android.view.View view, android.graphics.Rect rect, boolean z) {
        rect.offset(view.getLeft() - view.getScrollX(), view.getTop() - view.getScrollY());
        int iE = e(rect);
        boolean z2 = iE != 0;
        if (z2) {
            if (z) {
                scrollBy(0, iE);
            } else {
                C(0, iE, 250, false);
            }
        }
        return z2;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        if (z) {
            y();
        }
        super.requestDisallowInterceptTouchEvent(z);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f110g = true;
        super.requestLayout();
    }

    public boolean s(int i) {
        return this.x.f(i) != null;
    }

    @Override // android.view.View
    public void scrollTo(int i, int i2) {
        if (getChildCount() > 0) {
            android.view.View childAt = getChildAt(0);
            android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) childAt.getLayoutParams();
            int width = (getWidth() - getPaddingLeft()) - getPaddingRight();
            int width2 = childAt.getWidth() + layoutParams.leftMargin + layoutParams.rightMargin;
            int height = (getHeight() - getPaddingTop()) - getPaddingBottom();
            int height2 = childAt.getHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
            int iD = d(i, width, width2);
            int iD2 = d(i2, height, height2);
            if (iD == getScrollX() && iD2 == getScrollY()) {
                return;
            }
            super.scrollTo(iD, iD2);
        }
    }

    public void setFillViewport(boolean z) {
        if (z != this.l) {
            this.l = z;
            requestLayout();
        }
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z) {
        d.g.m.g gVar = this.x;
        if (gVar.f1996d) {
            d.g.m.s.W(gVar.f1995c);
        }
        gVar.f1996d = z;
    }

    public void setOnScrollChangeListener(androidx.core.widget.NestedScrollView.b bVar) {
        this.z = bVar;
    }

    public void setSmoothScrollingEnabled(boolean z) {
        this.m = z;
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return true;
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i) {
        return this.x.h(i, 0);
    }

    @Override // android.view.View, d.g.m.f
    public void stopNestedScroll() {
        this.x.i(0);
    }

    public final boolean u(android.view.View view, int i, int i2) {
        view.getDrawingRect(this.b);
        offsetDescendantRectToMyCoords(view, this.b);
        return this.b.bottom + i >= getScrollY() && this.b.top - i <= getScrollY() + i2;
    }

    public final void v(int i, int i2, int[] iArr) {
        int scrollY = getScrollY();
        scrollBy(0, i);
        int scrollY2 = getScrollY() - scrollY;
        if (iArr != null) {
            iArr[1] = iArr[1] + scrollY2;
        }
        this.x.e(0, scrollY2, 0, i - scrollY2, null, i2, iArr);
    }

    public final void w(android.view.MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.q) {
            int i = actionIndex == 0 ? 1 : 0;
            this.f109f = (int) motionEvent.getY(i);
            this.q = motionEvent.getPointerId(i);
            android.view.VelocityTracker velocityTracker = this.k;
            if (velocityTracker != null) {
                velocityTracker.clear();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0083 A[ADDED_TO_REGION] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean x(int r13, int r14, int r15, int r16, int r17, int r18, int r19, int r20) {
        /*
            r12 = this;
            r0 = r12
            int r1 = r12.getOverScrollMode()
            int r2 = r12.computeHorizontalScrollRange()
            int r3 = r12.computeHorizontalScrollExtent()
            r4 = 0
            r5 = 1
            if (r2 <= r3) goto L13
            r2 = 1
            goto L14
        L13:
            r2 = 0
        L14:
            int r3 = r12.computeVerticalScrollRange()
            int r6 = r12.computeVerticalScrollExtent()
            if (r3 <= r6) goto L20
            r3 = 1
            goto L21
        L20:
            r3 = 0
        L21:
            if (r1 == 0) goto L2a
            if (r1 != r5) goto L28
            if (r2 == 0) goto L28
            goto L2a
        L28:
            r2 = 0
            goto L2b
        L2a:
            r2 = 1
        L2b:
            if (r1 == 0) goto L34
            if (r1 != r5) goto L32
            if (r3 == 0) goto L32
            goto L34
        L32:
            r1 = 0
            goto L35
        L34:
            r1 = 1
        L35:
            int r3 = r15 + r13
            if (r2 != 0) goto L3b
            r2 = 0
            goto L3d
        L3b:
            r2 = r19
        L3d:
            int r6 = r16 + r14
            if (r1 != 0) goto L43
            r1 = 0
            goto L45
        L43:
            r1 = r20
        L45:
            int r7 = -r2
            int r2 = r2 + r17
            int r8 = -r1
            int r1 = r1 + r18
            if (r3 <= r2) goto L50
            r3 = r2
        L4e:
            r2 = 1
            goto L55
        L50:
            if (r3 >= r7) goto L54
            r3 = r7
            goto L4e
        L54:
            r2 = 0
        L55:
            if (r6 <= r1) goto L5a
            r6 = r1
        L58:
            r1 = 1
            goto L5f
        L5a:
            if (r6 >= r8) goto L5e
            r6 = r8
            goto L58
        L5e:
            r1 = 0
        L5f:
            if (r1 == 0) goto L7e
            boolean r7 = r12.s(r5)
            if (r7 != 0) goto L7e
            android.widget.OverScroller r7 = r0.f106c
            r8 = 0
            r9 = 0
            r10 = 0
            int r11 = r12.getScrollRange()
            r13 = r7
            r14 = r3
            r15 = r6
            r16 = r8
            r17 = r9
            r18 = r10
            r19 = r11
            r13.springBack(r14, r15, r16, r17, r18, r19)
        L7e:
            r12.onOverScrolled(r3, r6, r2, r1)
            if (r2 != 0) goto L85
            if (r1 == 0) goto L86
        L85:
            r4 = 1
        L86:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.NestedScrollView.x(int, int, int, int, int, int, int, int):boolean");
    }

    public final void y() {
        android.view.VelocityTracker velocityTracker = this.k;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.k = null;
        }
    }

    public final void z(boolean z) {
        if (z) {
            D(2, 1);
        } else {
            this.x.i(1);
        }
        this.u = getScrollY();
        d.g.m.s.H(this);
    }
}
