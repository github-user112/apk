package androidx.appcompat.widget;

/* loaded from: classes.dex */
public class ActionBarContextView extends d.b.q.a {
    public java.lang.CharSequence i;
    public java.lang.CharSequence j;
    public android.view.View k;
    public android.view.View l;
    public android.widget.LinearLayout m;
    public android.widget.TextView n;
    public android.widget.TextView o;
    public int p;
    public int q;
    public boolean r;
    public int s;

    public class a implements android.view.View.OnClickListener {
        public final /* synthetic */ d.b.p.a a;

        public a(androidx.appcompat.widget.ActionBarContextView actionBarContextView, d.b.p.a aVar) {
            this.a = aVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(android.view.View view) {
            this.a.c();
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public ActionBarContextView(android.content.Context context, android.util.AttributeSet attributeSet) {
        int resourceId;
        int i = d.b.a.actionModeStyle;
        super(context, attributeSet, i);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.b.j.ActionMode, i, 0);
        int i2 = d.b.j.ActionMode_background;
        d.g.m.s.M(this, (!typedArrayObtainStyledAttributes.hasValue(i2) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(i2, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(i2) : d.b.l.a.a.b(context, resourceId));
        this.p = typedArrayObtainStyledAttributes.getResourceId(d.b.j.ActionMode_titleTextStyle, 0);
        this.q = typedArrayObtainStyledAttributes.getResourceId(d.b.j.ActionMode_subtitleTextStyle, 0);
        this.f1755e = typedArrayObtainStyledAttributes.getLayoutDimension(d.b.j.ActionMode_height, 0);
        this.s = typedArrayObtainStyledAttributes.getResourceId(d.b.j.ActionMode_closeItemLayout, d.b.g.abc_action_mode_close_item_material);
        typedArrayObtainStyledAttributes.recycle();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0062  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void f(d.b.p.a r7) {
        /*
            r6 = this;
            android.view.View r0 = r6.k
            r1 = 0
            if (r0 != 0) goto L16
            android.content.Context r0 = r6.getContext()
            android.view.LayoutInflater r0 = android.view.LayoutInflater.from(r0)
            int r2 = r6.s
            android.view.View r0 = r0.inflate(r2, r6, r1)
            r6.k = r0
            goto L1e
        L16:
            android.view.ViewParent r0 = r0.getParent()
            if (r0 != 0) goto L21
            android.view.View r0 = r6.k
        L1e:
            r6.addView(r0)
        L21:
            android.view.View r0 = r6.k
            int r2 = d.b.f.action_mode_close_button
            android.view.View r0 = r0.findViewById(r2)
            androidx.appcompat.widget.ActionBarContextView$a r2 = new androidx.appcompat.widget.ActionBarContextView$a
            r2.<init>(r6, r7)
            r0.setOnClickListener(r2)
            android.view.Menu r7 = r7.e()
            d.b.p.i.g r7 = (d.b.p.i.g) r7
            d.b.q.c r0 = r6.f1754d
            if (r0 == 0) goto L3e
            r0.d()
        L3e:
            d.b.q.c r0 = new d.b.q.c
            android.content.Context r2 = r6.getContext()
            r0.<init>(r2)
            r6.f1754d = r0
            r2 = 1
            r0.l = r2
            r0.m = r2
            android.view.ViewGroup$LayoutParams r0 = new android.view.ViewGroup$LayoutParams
            r3 = -2
            r4 = -1
            r0.<init>(r3, r4)
            d.b.q.c r3 = r6.f1754d
            android.content.Context r4 = r6.b
            r7.b(r3, r4)
            d.b.q.c r7 = r6.f1754d
            d.b.p.i.n r3 = r7.h
            if (r3 != 0) goto L76
            android.view.LayoutInflater r4 = r7.f1704d
            int r5 = r7.f1706f
            android.view.View r1 = r4.inflate(r5, r6, r1)
            d.b.p.i.n r1 = (d.b.p.i.n) r1
            r7.h = r1
            d.b.p.i.g r4 = r7.f1703c
            r1.b(r4)
            r7.f(r2)
        L76:
            d.b.p.i.n r1 = r7.h
            if (r3 == r1) goto L80
            r2 = r1
            androidx.appcompat.widget.ActionMenuView r2 = (androidx.appcompat.widget.ActionMenuView) r2
            r2.setPresenter(r7)
        L80:
            androidx.appcompat.widget.ActionMenuView r1 = (androidx.appcompat.widget.ActionMenuView) r1
            r6.f1753c = r1
            r7 = 0
            d.g.m.s.M(r1, r7)
            androidx.appcompat.widget.ActionMenuView r7 = r6.f1753c
            r6.addView(r7, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContextView.f(d.b.p.a):void");
    }

    public final void g() {
        if (this.m == null) {
            android.view.LayoutInflater.from(getContext()).inflate(d.b.g.abc_action_bar_title_item, this);
            android.widget.LinearLayout linearLayout = (android.widget.LinearLayout) getChildAt(getChildCount() - 1);
            this.m = linearLayout;
            this.n = (android.widget.TextView) linearLayout.findViewById(d.b.f.action_bar_title);
            this.o = (android.widget.TextView) this.m.findViewById(d.b.f.action_bar_subtitle);
            if (this.p != 0) {
                this.n.setTextAppearance(getContext(), this.p);
            }
            if (this.q != 0) {
                this.o.setTextAppearance(getContext(), this.q);
            }
        }
        this.n.setText(this.i);
        this.o.setText(this.j);
        boolean z = !android.text.TextUtils.isEmpty(this.i);
        boolean z2 = !android.text.TextUtils.isEmpty(this.j);
        int i = 0;
        this.o.setVisibility(z2 ? 0 : 8);
        android.widget.LinearLayout linearLayout2 = this.m;
        if (!z && !z2) {
            i = 8;
        }
        linearLayout2.setVisibility(i);
        if (this.m.getParent() == null) {
            addView(this.m);
        }
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new android.view.ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new android.view.ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // d.b.q.a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // d.b.q.a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public java.lang.CharSequence getSubtitle() {
        return this.j;
    }

    public java.lang.CharSequence getTitle() {
        return this.i;
    }

    public void h() {
        removeAllViews();
        this.l = null;
        this.f1753c = null;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        d.b.q.c cVar = this.f1754d;
        if (cVar != null) {
            cVar.g();
            this.f1754d.l();
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        if (accessibilityEvent.getEventType() != 32) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            return;
        }
        accessibilityEvent.setSource(this);
        accessibilityEvent.setClassName(androidx.appcompat.widget.ActionBarContextView.class.getName());
        accessibilityEvent.setPackageName(getContext().getPackageName());
        accessibilityEvent.setContentDescription(this.i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        boolean zB = d.b.q.b1.b(this);
        int paddingRight = zB ? (i3 - i) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i4 - i2) - getPaddingTop()) - getPaddingBottom();
        android.view.View view = this.k;
        if (view != null && view.getVisibility() != 8) {
            android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) this.k.getLayoutParams();
            int i5 = zB ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i6 = zB ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int i7 = zB ? paddingRight - i5 : paddingRight + i5;
            int iD = i7 + d(this.k, i7, paddingTop, paddingTop2, zB);
            paddingRight = zB ? iD - i6 : iD + i6;
        }
        int iD2 = paddingRight;
        android.widget.LinearLayout linearLayout = this.m;
        if (linearLayout != null && this.l == null && linearLayout.getVisibility() != 8) {
            iD2 += d(this.m, iD2, paddingTop, paddingTop2, zB);
        }
        int i8 = iD2;
        android.view.View view2 = this.l;
        if (view2 != null) {
            d(view2, i8, paddingTop, paddingTop2, zB);
        }
        int paddingLeft = zB ? getPaddingLeft() : (i3 - i) - getPaddingRight();
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.f1753c;
        if (actionMenuView != null) {
            d(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zB);
        }
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        if (android.view.View.MeasureSpec.getMode(i) != 1073741824) {
            throw new java.lang.IllegalStateException(androidx.appcompat.widget.ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (android.view.View.MeasureSpec.getMode(i2) == 0) {
            throw new java.lang.IllegalStateException(androidx.appcompat.widget.ActionBarContextView.class.getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = android.view.View.MeasureSpec.getSize(i);
        int size2 = this.f1755e;
        if (size2 <= 0) {
            size2 = android.view.View.MeasureSpec.getSize(i2);
        }
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingBottom;
        int iMakeMeasureSpec = android.view.View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        android.view.View view = this.k;
        if (view != null) {
            int iC = c(view, paddingLeft, iMakeMeasureSpec, 0);
            android.view.ViewGroup.MarginLayoutParams marginLayoutParams = (android.view.ViewGroup.MarginLayoutParams) this.k.getLayoutParams();
            paddingLeft = iC - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        androidx.appcompat.widget.ActionMenuView actionMenuView = this.f1753c;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = c(this.f1753c, paddingLeft, iMakeMeasureSpec, 0);
        }
        android.widget.LinearLayout linearLayout = this.m;
        if (linearLayout != null && this.l == null) {
            if (this.r) {
                this.m.measure(android.view.View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.m.getMeasuredWidth();
                boolean z = measuredWidth <= paddingLeft;
                if (z) {
                    paddingLeft -= measuredWidth;
                }
                this.m.setVisibility(z ? 0 : 8);
            } else {
                paddingLeft = c(linearLayout, paddingLeft, iMakeMeasureSpec, 0);
            }
        }
        android.view.View view2 = this.l;
        if (view2 != null) {
            android.view.ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i3 = layoutParams.width != -2 ? 1073741824 : Integer.MIN_VALUE;
            int i4 = layoutParams.width;
            if (i4 >= 0) {
                paddingLeft = java.lang.Math.min(i4, paddingLeft);
            }
            int i5 = layoutParams.height == -2 ? Integer.MIN_VALUE : 1073741824;
            int i6 = layoutParams.height;
            if (i6 >= 0) {
                iMin = java.lang.Math.min(i6, iMin);
            }
            this.l.measure(android.view.View.MeasureSpec.makeMeasureSpec(paddingLeft, i3), android.view.View.MeasureSpec.makeMeasureSpec(iMin, i5));
        }
        if (this.f1755e <= 0) {
            int childCount = getChildCount();
            size2 = 0;
            for (int i7 = 0; i7 < childCount; i7++) {
                int measuredHeight = getChildAt(i7).getMeasuredHeight() + paddingBottom;
                if (measuredHeight > size2) {
                    size2 = measuredHeight;
                }
            }
        }
        setMeasuredDimension(size, size2);
    }

    @Override // d.b.q.a
    public void setContentHeight(int i) {
        this.f1755e = i;
    }

    public void setCustomView(android.view.View view) {
        android.widget.LinearLayout linearLayout;
        android.view.View view2 = this.l;
        if (view2 != null) {
            removeView(view2);
        }
        this.l = view;
        if (view != null && (linearLayout = this.m) != null) {
            removeView(linearLayout);
            this.m = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(java.lang.CharSequence charSequence) {
        this.j = charSequence;
        g();
    }

    public void setTitle(java.lang.CharSequence charSequence) {
        this.i = charSequence;
        g();
    }

    public void setTitleOptional(boolean z) {
        if (z != this.r) {
            requestLayout();
        }
        this.r = z;
    }

    @Override // d.b.q.a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i) {
        super.setVisibility(i);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
