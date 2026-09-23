package androidx.appcompat.widget;

/* loaded from: classes.dex */
public class ActionBarContainer extends android.widget.FrameLayout {
    public boolean a;
    public android.view.View b;

    /* renamed from: c, reason: collision with root package name */
    public android.view.View f38c;

    /* renamed from: d, reason: collision with root package name */
    public android.view.View f39d;

    /* renamed from: e, reason: collision with root package name */
    public android.graphics.drawable.Drawable f40e;

    /* renamed from: f, reason: collision with root package name */
    public android.graphics.drawable.Drawable f41f;

    /* renamed from: g, reason: collision with root package name */
    public android.graphics.drawable.Drawable f42g;
    public boolean h;
    public boolean i;
    public int j;

    public ActionBarContainer(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        d.g.m.s.M(this, new d.b.q.b(this));
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.b.j.ActionBar);
        this.f40e = typedArrayObtainStyledAttributes.getDrawable(d.b.j.ActionBar_background);
        this.f41f = typedArrayObtainStyledAttributes.getDrawable(d.b.j.ActionBar_backgroundStacked);
        this.j = typedArrayObtainStyledAttributes.getDimensionPixelSize(d.b.j.ActionBar_height, -1);
        boolean z = true;
        if (getId() == d.b.f.split_action_bar) {
            this.h = true;
            this.f42g = typedArrayObtainStyledAttributes.getDrawable(d.b.j.ActionBar_backgroundSplit);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.h ? this.f40e != null || this.f41f != null : this.f42g != null) {
            z = false;
        }
        setWillNotDraw(z);
    }

    public final int a(android.view.View view) {
        android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    public final boolean b(android.view.View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        android.graphics.drawable.Drawable drawable = this.f40e;
        if (drawable != null && drawable.isStateful()) {
            this.f40e.setState(getDrawableState());
        }
        android.graphics.drawable.Drawable drawable2 = this.f41f;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f41f.setState(getDrawableState());
        }
        android.graphics.drawable.Drawable drawable3 = this.f42g;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f42g.setState(getDrawableState());
    }

    public android.view.View getTabContainer() {
        return this.b;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        android.graphics.drawable.Drawable drawable = this.f40e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        android.graphics.drawable.Drawable drawable2 = this.f41f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        android.graphics.drawable.Drawable drawable3 = this.f42g;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f38c = findViewById(d.b.f.action_bar);
        this.f39d = findViewById(d.b.f.action_context_bar);
    }

    @Override // android.view.View
    public boolean onHoverEvent(android.view.MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
        return this.a || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        android.graphics.drawable.Drawable drawable;
        android.graphics.drawable.Drawable drawable2;
        int left;
        int top;
        int right;
        android.view.View view;
        super.onLayout(z, i, i2, i3, i4);
        android.view.View view2 = this.b;
        boolean z2 = true;
        boolean z3 = false;
        boolean z4 = (view2 == null || view2.getVisibility() == 8) ? false : true;
        if (view2 != null && view2.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            android.widget.FrameLayout.LayoutParams layoutParams = (android.widget.FrameLayout.LayoutParams) view2.getLayoutParams();
            int measuredHeight2 = measuredHeight - view2.getMeasuredHeight();
            int i5 = layoutParams.bottomMargin;
            view2.layout(i, measuredHeight2 - i5, i3, measuredHeight - i5);
        }
        if (this.h) {
            android.graphics.drawable.Drawable drawable3 = this.f42g;
            if (drawable3 != null) {
                drawable3.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z2 = false;
            }
        } else {
            if (this.f40e != null) {
                if (this.f38c.getVisibility() == 0) {
                    drawable2 = this.f40e;
                    left = this.f38c.getLeft();
                    top = this.f38c.getTop();
                    right = this.f38c.getRight();
                    view = this.f38c;
                } else {
                    android.view.View view3 = this.f39d;
                    if (view3 == null || view3.getVisibility() != 0) {
                        this.f40e.setBounds(0, 0, 0, 0);
                        z3 = true;
                    } else {
                        drawable2 = this.f40e;
                        left = this.f39d.getLeft();
                        top = this.f39d.getTop();
                        right = this.f39d.getRight();
                        view = this.f39d;
                    }
                }
                drawable2.setBounds(left, top, right, view.getBottom());
                z3 = true;
            }
            this.i = z4;
            if (!z4 || (drawable = this.f41f) == null) {
                z2 = z3;
            } else {
                drawable.setBounds(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            }
        }
        if (z2) {
            invalidate();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005a  */
    @Override // android.widget.FrameLayout, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r4, int r5) {
        /*
            r3 = this;
            android.view.View r0 = r3.f38c
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 != 0) goto L1c
            int r0 = android.view.View.MeasureSpec.getMode(r5)
            if (r0 != r1) goto L1c
            int r0 = r3.j
            if (r0 < 0) goto L1c
            int r5 = android.view.View.MeasureSpec.getSize(r5)
            int r5 = java.lang.Math.min(r0, r5)
            int r5 = android.view.View.MeasureSpec.makeMeasureSpec(r5, r1)
        L1c:
            super.onMeasure(r4, r5)
            android.view.View r4 = r3.f38c
            if (r4 != 0) goto L24
            return
        L24:
            int r4 = android.view.View.MeasureSpec.getMode(r5)
            android.view.View r0 = r3.b
            if (r0 == 0) goto L6f
            int r0 = r0.getVisibility()
            r2 = 8
            if (r0 == r2) goto L6f
            r0 = 1073741824(0x40000000, float:2.0)
            if (r4 == r0) goto L6f
            android.view.View r0 = r3.f38c
            boolean r0 = r3.b(r0)
            if (r0 != 0) goto L47
            android.view.View r0 = r3.f38c
        L42:
            int r0 = r3.a(r0)
            goto L53
        L47:
            android.view.View r0 = r3.f39d
            boolean r0 = r3.b(r0)
            if (r0 != 0) goto L52
            android.view.View r0 = r3.f39d
            goto L42
        L52:
            r0 = 0
        L53:
            if (r4 != r1) goto L5a
            int r4 = android.view.View.MeasureSpec.getSize(r5)
            goto L5d
        L5a:
            r4 = 2147483647(0x7fffffff, float:NaN)
        L5d:
            int r5 = r3.getMeasuredWidth()
            android.view.View r1 = r3.b
            int r1 = r3.a(r1)
            int r1 = r1 + r0
            int r4 = java.lang.Math.min(r1, r4)
            r3.setMeasuredDimension(r5, r4)
        L6f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarContainer.onMeasure(int, int):void");
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2 = this.f40e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f40e);
        }
        this.f40e = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            android.view.View view = this.f38c;
            if (view != null) {
                this.f40e.setBounds(view.getLeft(), this.f38c.getTop(), this.f38c.getRight(), this.f38c.getBottom());
            }
        }
        boolean z = true;
        if (!this.h ? this.f40e != null || this.f41f != null : this.f42g != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setSplitBackground(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2;
        android.graphics.drawable.Drawable drawable3 = this.f42g;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f42g);
        }
        this.f42g = drawable;
        boolean z = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.h && (drawable2 = this.f42g) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.h ? !(this.f40e != null || this.f41f != null) : this.f42g == null) {
            z = true;
        }
        setWillNotDraw(z);
        invalidate();
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setStackedBackground(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2;
        android.graphics.drawable.Drawable drawable3 = this.f41f;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f41f);
        }
        this.f41f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.i && (drawable2 = this.f41f) != null) {
                drawable2.setBounds(this.b.getLeft(), this.b.getTop(), this.b.getRight(), this.b.getBottom());
            }
        }
        boolean z = true;
        if (!this.h ? this.f40e != null || this.f41f != null : this.f42g != null) {
            z = false;
        }
        setWillNotDraw(z);
        invalidate();
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            invalidateOutline();
        }
    }

    public void setTabContainer(d.b.q.o0 o0Var) {
        android.view.View view = this.b;
        if (view != null) {
            removeView(view);
        }
        this.b = o0Var;
        if (o0Var != null) {
            addView(o0Var);
            android.view.ViewGroup.LayoutParams layoutParams = o0Var.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            o0Var.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z) {
        this.a = z;
        setDescendantFocusability(z ? 393216 : net.easyconn.ecsdk.ECTypes.ECSupportFunction.EC_SUPPORT_FUNCTION_WEB_CAR_DVR);
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        boolean z = i == 0;
        android.graphics.drawable.Drawable drawable = this.f40e;
        if (drawable != null) {
            drawable.setVisible(z, false);
        }
        android.graphics.drawable.Drawable drawable2 = this.f41f;
        if (drawable2 != null) {
            drawable2.setVisible(z, false);
        }
        android.graphics.drawable.Drawable drawable3 = this.f42g;
        if (drawable3 != null) {
            drawable3.setVisible(z, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public android.view.ActionMode startActionModeForChild(android.view.View view, android.view.ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public android.view.ActionMode startActionModeForChild(android.view.View view, android.view.ActionMode.Callback callback, int i) {
        if (i != 0) {
            return super.startActionModeForChild(view, callback, i);
        }
        return null;
    }

    @Override // android.view.View
    public boolean verifyDrawable(android.graphics.drawable.Drawable drawable) {
        return (drawable == this.f40e && !this.h) || (drawable == this.f41f && this.i) || ((drawable == this.f42g && this.h) || super.verifyDrawable(drawable));
    }
}
