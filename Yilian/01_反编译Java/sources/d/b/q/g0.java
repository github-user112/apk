package d.b.q;

/* loaded from: classes.dex */
public class g0 extends android.view.ViewGroup {
    public boolean a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f1777c;

    /* renamed from: d, reason: collision with root package name */
    public int f1778d;

    /* renamed from: e, reason: collision with root package name */
    public int f1779e;

    /* renamed from: f, reason: collision with root package name */
    public int f1780f;

    /* renamed from: g, reason: collision with root package name */
    public float f1781g;
    public boolean h;
    public int[] i;
    public int[] j;
    public android.graphics.drawable.Drawable k;
    public int l;
    public int m;
    public int n;
    public int o;

    public static class a extends android.view.ViewGroup.MarginLayoutParams {
        public float a;
        public int b;

        public a(int i, int i2) {
            super(i, i2);
            this.b = -1;
            this.a = 0.0f;
        }

        public a(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = -1;
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.b.j.LinearLayoutCompat_Layout);
            this.a = typedArrayObtainStyledAttributes.getFloat(d.b.j.LinearLayoutCompat_Layout_android_layout_weight, 0.0f);
            this.b = typedArrayObtainStyledAttributes.getInt(d.b.j.LinearLayoutCompat_Layout_android_layout_gravity, -1);
            typedArrayObtainStyledAttributes.recycle();
        }

        public a(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = -1;
        }
    }

    public g0(android.content.Context context) {
        this(context, null);
    }

    public g0(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public g0(android.content.Context context, android.util.AttributeSet attributeSet, int i) {
        int resourceId;
        super(context, attributeSet, i);
        this.a = true;
        this.b = -1;
        this.f1777c = 0;
        this.f1779e = 8388659;
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.b.j.LinearLayoutCompat, i, 0);
        int i2 = typedArrayObtainStyledAttributes.getInt(d.b.j.LinearLayoutCompat_android_orientation, -1);
        if (i2 >= 0) {
            setOrientation(i2);
        }
        int i3 = typedArrayObtainStyledAttributes.getInt(d.b.j.LinearLayoutCompat_android_gravity, -1);
        if (i3 >= 0) {
            setGravity(i3);
        }
        boolean z = typedArrayObtainStyledAttributes.getBoolean(d.b.j.LinearLayoutCompat_android_baselineAligned, true);
        if (!z) {
            setBaselineAligned(z);
        }
        this.f1781g = typedArrayObtainStyledAttributes.getFloat(d.b.j.LinearLayoutCompat_android_weightSum, -1.0f);
        this.b = typedArrayObtainStyledAttributes.getInt(d.b.j.LinearLayoutCompat_android_baselineAlignedChildIndex, -1);
        this.h = typedArrayObtainStyledAttributes.getBoolean(d.b.j.LinearLayoutCompat_measureWithLargestChild, false);
        int i4 = d.b.j.LinearLayoutCompat_divider;
        setDividerDrawable((!typedArrayObtainStyledAttributes.hasValue(i4) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(i4, 0)) == 0) ? typedArrayObtainStyledAttributes.getDrawable(i4) : d.b.l.a.a.b(context, resourceId));
        this.n = typedArrayObtainStyledAttributes.getInt(d.b.j.LinearLayoutCompat_showDividers, 0);
        this.o = typedArrayObtainStyledAttributes.getDimensionPixelSize(d.b.j.LinearLayoutCompat_dividerPadding, 0);
        typedArrayObtainStyledAttributes.recycle();
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof d.b.q.g0.a;
    }

    public void g(android.graphics.Canvas canvas, int i) {
        this.k.setBounds(getPaddingLeft() + this.o, i, (getWidth() - getPaddingRight()) - this.o, this.m + i);
        this.k.draw(canvas);
    }

    @Override // android.view.View
    public int getBaseline() {
        int i;
        if (this.b < 0) {
            return super.getBaseline();
        }
        int childCount = getChildCount();
        int i2 = this.b;
        if (childCount <= i2) {
            throw new java.lang.RuntimeException("mBaselineAlignedChildIndex of LinearLayout set to an index that is out of bounds.");
        }
        android.view.View childAt = getChildAt(i2);
        int baseline = childAt.getBaseline();
        if (baseline == -1) {
            if (this.b == 0) {
                return -1;
            }
            throw new java.lang.RuntimeException("mBaselineAlignedChildIndex of LinearLayout points to a View that doesn't know how to get its baseline.");
        }
        int bottom = this.f1777c;
        if (this.f1778d == 1 && (i = this.f1779e & 112) != 48) {
            if (i == 16) {
                bottom += ((((getBottom() - getTop()) - getPaddingTop()) - getPaddingBottom()) - this.f1780f) / 2;
            } else if (i == 80) {
                bottom = ((getBottom() - getTop()) - getPaddingBottom()) - this.f1780f;
            }
        }
        return bottom + ((android.view.ViewGroup.MarginLayoutParams) ((d.b.q.g0.a) childAt.getLayoutParams())).topMargin + baseline;
    }

    public int getBaselineAlignedChildIndex() {
        return this.b;
    }

    public android.graphics.drawable.Drawable getDividerDrawable() {
        return this.k;
    }

    public int getDividerPadding() {
        return this.o;
    }

    public int getDividerWidth() {
        return this.l;
    }

    public int getGravity() {
        return this.f1779e;
    }

    public int getOrientation() {
        return this.f1778d;
    }

    public int getShowDividers() {
        return this.n;
    }

    public int getVirtualChildCount() {
        return getChildCount();
    }

    public float getWeightSum() {
        return this.f1781g;
    }

    public void h(android.graphics.Canvas canvas, int i) {
        this.k.setBounds(i, getPaddingTop() + this.o, this.l + i, (getHeight() - getPaddingBottom()) - this.o);
        this.k.draw(canvas);
    }

    @Override // android.view.ViewGroup
    /* renamed from: i, reason: merged with bridge method [inline-methods] */
    public d.b.q.g0.a generateDefaultLayoutParams() {
        int i = this.f1778d;
        if (i == 0) {
            return new d.b.q.g0.a(-2, -2);
        }
        if (i == 1) {
            return new d.b.q.g0.a(-1, -2);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public d.b.q.g0.a generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new d.b.q.g0.a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    /* renamed from: k, reason: merged with bridge method [inline-methods] */
    public d.b.q.g0.a generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return new d.b.q.g0.a(layoutParams);
    }

    public int l() {
        return 0;
    }

    public int m() {
        return 0;
    }

    public int n() {
        return 0;
    }

    public boolean o(int i) {
        if (i == 0) {
            return (this.n & 1) != 0;
        }
        if (i == getChildCount()) {
            return (this.n & 4) != 0;
        }
        if ((this.n & 2) == 0) {
            return false;
        }
        for (int i2 = i - 1; i2 >= 0; i2--) {
            if (getChildAt(i2).getVisibility() != 8) {
                return true;
            }
        }
        return false;
    }

    @Override // android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
        int right;
        int left;
        int paddingRight;
        if (this.k == null) {
            return;
        }
        int i = 0;
        if (this.f1778d == 1) {
            int virtualChildCount = getVirtualChildCount();
            while (i < virtualChildCount) {
                android.view.View childAt = getChildAt(i);
                if (childAt != null && childAt.getVisibility() != 8 && o(i)) {
                    g(canvas, (childAt.getTop() - ((android.view.ViewGroup.MarginLayoutParams) ((d.b.q.g0.a) childAt.getLayoutParams())).topMargin) - this.m);
                }
                i++;
            }
            if (o(virtualChildCount)) {
                android.view.View childAt2 = getChildAt(virtualChildCount - 1);
                g(canvas, childAt2 == null ? (getHeight() - getPaddingBottom()) - this.m : childAt2.getBottom() + ((android.view.ViewGroup.MarginLayoutParams) ((d.b.q.g0.a) childAt2.getLayoutParams())).bottomMargin);
                return;
            }
            return;
        }
        int virtualChildCount2 = getVirtualChildCount();
        boolean zB = d.b.q.b1.b(this);
        while (i < virtualChildCount2) {
            android.view.View childAt3 = getChildAt(i);
            if (childAt3 != null && childAt3.getVisibility() != 8 && o(i)) {
                d.b.q.g0.a aVar = (d.b.q.g0.a) childAt3.getLayoutParams();
                h(canvas, zB ? childAt3.getRight() + ((android.view.ViewGroup.MarginLayoutParams) aVar).rightMargin : (childAt3.getLeft() - ((android.view.ViewGroup.MarginLayoutParams) aVar).leftMargin) - this.l);
            }
            i++;
        }
        if (o(virtualChildCount2)) {
            android.view.View childAt4 = getChildAt(virtualChildCount2 - 1);
            if (childAt4 != null) {
                d.b.q.g0.a aVar2 = (d.b.q.g0.a) childAt4.getLayoutParams();
                if (zB) {
                    left = childAt4.getLeft();
                    paddingRight = ((android.view.ViewGroup.MarginLayoutParams) aVar2).leftMargin;
                    right = (left - paddingRight) - this.l;
                } else {
                    right = childAt4.getRight() + ((android.view.ViewGroup.MarginLayoutParams) aVar2).rightMargin;
                }
            } else if (zB) {
                right = getPaddingLeft();
            } else {
                left = getWidth();
                paddingRight = getPaddingRight();
                right = (left - paddingRight) - this.l;
            }
            h(canvas, right);
        }
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("androidx.appcompat.widget.LinearLayoutCompat");
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01a2  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x01b4  */
    @Override // android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r24, int r25, int r26, int r27, int r28) {
        /*
            Method dump skipped, instructions count: 486
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.q.g0.onLayout(boolean, int, int, int, int):void");
    }

    /* JADX WARN: Removed duplicated region for block: B:136:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:147:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:214:0x04b1  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x04b6  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x04de  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x04e3  */
    /* JADX WARN: Removed duplicated region for block: B:222:0x04ed  */
    /* JADX WARN: Removed duplicated region for block: B:223:0x04fc  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0511  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x0524  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0567  */
    /* JADX WARN: Removed duplicated region for block: B:246:0x0576  */
    /* JADX WARN: Removed duplicated region for block: B:249:0x057e  */
    /* JADX WARN: Removed duplicated region for block: B:252:0x0589  */
    /* JADX WARN: Removed duplicated region for block: B:281:0x0624  */
    /* JADX WARN: Removed duplicated region for block: B:316:0x06e3  */
    /* JADX WARN: Removed duplicated region for block: B:318:0x06ea  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0707  */
    /* JADX WARN: Removed duplicated region for block: B:337:0x0760  */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0810  */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0858  */
    /* JADX WARN: Removed duplicated region for block: B:384:0x088a  */
    /* JADX WARN: Removed duplicated region for block: B:387:0x088f  */
    /* JADX WARN: Removed duplicated region for block: B:390:0x08b1  */
    /* JADX WARN: Removed duplicated region for block: B:439:? A[RETURN, SYNTHETIC] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r39, int r40) {
        /*
            Method dump skipped, instructions count: 2290
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.b.q.g0.onMeasure(int, int):void");
    }

    public void p(android.view.View view, int i, int i2, int i3, int i4) {
        measureChildWithMargins(view, i, i2, i3, i4);
    }

    public int q() {
        return 0;
    }

    public void setBaselineAligned(boolean z) {
        this.a = z;
    }

    public void setBaselineAlignedChildIndex(int i) {
        if (i >= 0 && i < getChildCount()) {
            this.b = i;
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("base aligned child index out of range (0, ");
        sbO.append(getChildCount());
        sbO.append(")");
        throw new java.lang.IllegalArgumentException(sbO.toString());
    }

    public void setDividerDrawable(android.graphics.drawable.Drawable drawable) {
        if (drawable == this.k) {
            return;
        }
        this.k = drawable;
        if (drawable != null) {
            this.l = drawable.getIntrinsicWidth();
            this.m = drawable.getIntrinsicHeight();
        } else {
            this.l = 0;
            this.m = 0;
        }
        setWillNotDraw(drawable == null);
        requestLayout();
    }

    public void setDividerPadding(int i) {
        this.o = i;
    }

    public void setGravity(int i) {
        if (this.f1779e != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.f1779e = i;
            requestLayout();
        }
    }

    public void setHorizontalGravity(int i) {
        int i2 = i & 8388615;
        int i3 = this.f1779e;
        if ((8388615 & i3) != i2) {
            this.f1779e = i2 | ((-8388616) & i3);
            requestLayout();
        }
    }

    public void setMeasureWithLargestChildEnabled(boolean z) {
        this.h = z;
    }

    public void setOrientation(int i) {
        if (this.f1778d != i) {
            this.f1778d = i;
            requestLayout();
        }
    }

    public void setShowDividers(int i) {
        if (i != this.n) {
            requestLayout();
        }
        this.n = i;
    }

    public void setVerticalGravity(int i) {
        int i2 = i & 112;
        int i3 = this.f1779e;
        if ((i3 & 112) != i2) {
            this.f1779e = i2 | (i3 & (-113));
            requestLayout();
        }
    }

    public void setWeightSum(float f2) {
        this.f1781g = java.lang.Math.max(0.0f, f2);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
