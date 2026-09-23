package androidx.appcompat.widget;

/* loaded from: classes.dex */
public class SwitchCompat extends android.widget.CompoundButton {
    public static final android.util.Property<androidx.appcompat.widget.SwitchCompat, java.lang.Float> O = new androidx.appcompat.widget.SwitchCompat.a(java.lang.Float.class, "thumbPos");
    public static final int[] P = {android.R.attr.state_checked};
    public int A;
    public int B;
    public int C;
    public int D;
    public int F;
    public final android.text.TextPaint G;
    public android.content.res.ColorStateList H;
    public android.text.Layout I;
    public android.text.Layout J;
    public android.text.method.TransformationMethod K;
    public android.animation.ObjectAnimator L;
    public final d.b.q.w M;
    public final android.graphics.Rect N;
    public android.graphics.drawable.Drawable a;
    public android.content.res.ColorStateList b;

    /* renamed from: c, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f70c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f71d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f72e;

    /* renamed from: f, reason: collision with root package name */
    public android.graphics.drawable.Drawable f73f;

    /* renamed from: g, reason: collision with root package name */
    public android.content.res.ColorStateList f74g;
    public android.graphics.PorterDuff.Mode h;
    public boolean i;
    public boolean j;
    public int k;
    public int l;
    public int m;
    public boolean n;
    public java.lang.CharSequence o;
    public java.lang.CharSequence p;
    public boolean q;
    public int r;
    public int s;
    public float t;
    public float u;
    public android.view.VelocityTracker v;
    public int w;
    public float x;
    public int y;
    public int z;

    public static class a extends android.util.Property<androidx.appcompat.widget.SwitchCompat, java.lang.Float> {
        public a(java.lang.Class cls, java.lang.String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public java.lang.Float get(androidx.appcompat.widget.SwitchCompat switchCompat) {
            return java.lang.Float.valueOf(switchCompat.x);
        }

        @Override // android.util.Property
        public void set(androidx.appcompat.widget.SwitchCompat switchCompat, java.lang.Float f2) {
            switchCompat.setThumbPosition(f2.floatValue());
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public SwitchCompat(android.content.Context context, android.util.AttributeSet attributeSet) throws android.content.res.Resources.NotFoundException {
        int resourceId;
        int i = d.b.a.switchStyle;
        super(context, attributeSet, i);
        this.b = null;
        this.f70c = null;
        this.f71d = false;
        this.f72e = false;
        this.f74g = null;
        this.h = null;
        this.i = false;
        this.j = false;
        this.v = android.view.VelocityTracker.obtain();
        this.N = new android.graphics.Rect();
        this.G = new android.text.TextPaint(1);
        this.G.density = getResources().getDisplayMetrics().density;
        d.b.q.v0 v0Var = new d.b.q.v0(context, context.obtainStyledAttributes(attributeSet, d.b.j.SwitchCompat, i, 0));
        android.graphics.drawable.Drawable drawableE = v0Var.e(d.b.j.SwitchCompat_android_thumb);
        this.a = drawableE;
        if (drawableE != null) {
            drawableE.setCallback(this);
        }
        android.graphics.drawable.Drawable drawableE2 = v0Var.e(d.b.j.SwitchCompat_track);
        this.f73f = drawableE2;
        if (drawableE2 != null) {
            drawableE2.setCallback(this);
        }
        this.o = v0Var.l(d.b.j.SwitchCompat_android_textOn);
        this.p = v0Var.l(d.b.j.SwitchCompat_android_textOff);
        this.q = v0Var.a(d.b.j.SwitchCompat_showText, true);
        this.k = v0Var.d(d.b.j.SwitchCompat_thumbTextPadding, 0);
        this.l = v0Var.d(d.b.j.SwitchCompat_switchMinWidth, 0);
        this.m = v0Var.d(d.b.j.SwitchCompat_switchPadding, 0);
        this.n = v0Var.a(d.b.j.SwitchCompat_splitTrack, false);
        android.content.res.ColorStateList colorStateListB = v0Var.b(d.b.j.SwitchCompat_thumbTint);
        if (colorStateListB != null) {
            this.b = colorStateListB;
            this.f71d = true;
        }
        android.graphics.PorterDuff.Mode modeD = d.b.q.c0.d(v0Var.h(d.b.j.SwitchCompat_thumbTintMode, -1), null);
        if (this.f70c != modeD) {
            this.f70c = modeD;
            this.f72e = true;
        }
        if (this.f71d || this.f72e) {
            a();
        }
        android.content.res.ColorStateList colorStateListB2 = v0Var.b(d.b.j.SwitchCompat_trackTint);
        if (colorStateListB2 != null) {
            this.f74g = colorStateListB2;
            this.i = true;
        }
        android.graphics.PorterDuff.Mode modeD2 = d.b.q.c0.d(v0Var.h(d.b.j.SwitchCompat_trackTintMode, -1), null);
        if (this.h != modeD2) {
            this.h = modeD2;
            this.j = true;
        }
        if (this.i || this.j) {
            b();
        }
        int iJ = v0Var.j(d.b.j.SwitchCompat_switchTextAppearance, 0);
        if (iJ != 0) {
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(iJ, d.b.j.TextAppearance);
            int i2 = d.b.j.TextAppearance_android_textColor;
            android.content.res.ColorStateList colorStateList = (!typedArrayObtainStyledAttributes.hasValue(i2) || (resourceId = typedArrayObtainStyledAttributes.getResourceId(i2, 0)) == 0 || (colorStateList = d.b.l.a.a.a(context, resourceId)) == null) ? typedArrayObtainStyledAttributes.getColorStateList(i2) : colorStateList;
            this.H = colorStateList == null ? getTextColors() : colorStateList;
            int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(d.b.j.TextAppearance_android_textSize, 0);
            if (dimensionPixelSize != 0) {
                float f2 = dimensionPixelSize;
                if (f2 != this.G.getTextSize()) {
                    this.G.setTextSize(f2);
                    requestLayout();
                }
            }
            int i3 = typedArrayObtainStyledAttributes.getInt(d.b.j.TextAppearance_android_typeface, -1);
            int i4 = typedArrayObtainStyledAttributes.getInt(d.b.j.TextAppearance_android_textStyle, -1);
            android.graphics.Typeface typeface = i3 != 1 ? i3 != 2 ? i3 != 3 ? null : android.graphics.Typeface.MONOSPACE : android.graphics.Typeface.SERIF : android.graphics.Typeface.SANS_SERIF;
            if (i4 > 0) {
                android.graphics.Typeface typefaceDefaultFromStyle = typeface == null ? android.graphics.Typeface.defaultFromStyle(i4) : android.graphics.Typeface.create(typeface, i4);
                setSwitchTypeface(typefaceDefaultFromStyle);
                int style = ((-1) ^ (typefaceDefaultFromStyle != null ? typefaceDefaultFromStyle.getStyle() : 0)) & i4;
                this.G.setFakeBoldText((style & 1) != 0);
                this.G.setTextSkewX((style & 2) != 0 ? -0.25f : 0.0f);
            } else {
                this.G.setFakeBoldText(false);
                this.G.setTextSkewX(0.0f);
                setSwitchTypeface(typeface);
            }
            this.K = typedArrayObtainStyledAttributes.getBoolean(d.b.j.TextAppearance_textAllCaps, false) ? new d.b.o.a(getContext()) : null;
            typedArrayObtainStyledAttributes.recycle();
        }
        d.b.q.w wVar = new d.b.q.w(this);
        this.M = wVar;
        wVar.e(attributeSet, i);
        v0Var.b.recycle();
        android.view.ViewConfiguration viewConfiguration = android.view.ViewConfiguration.get(context);
        this.s = viewConfiguration.getScaledTouchSlop();
        this.w = viewConfiguration.getScaledMinimumFlingVelocity();
        refreshDrawableState();
        setChecked(isChecked());
    }

    private boolean getTargetCheckedState() {
        return this.x > 0.5f;
    }

    private int getThumbOffset() {
        return (int) (((d.b.q.b1.b(this) ? 1.0f - this.x : this.x) * getThumbScrollRange()) + 0.5f);
    }

    private int getThumbScrollRange() {
        android.graphics.drawable.Drawable drawable = this.f73f;
        if (drawable == null) {
            return 0;
        }
        android.graphics.Rect rect = this.N;
        drawable.getPadding(rect);
        android.graphics.drawable.Drawable drawable2 = this.a;
        android.graphics.Rect rectC = drawable2 != null ? d.b.q.c0.c(drawable2) : d.b.q.c0.f1760c;
        return ((((this.y - this.A) - rect.left) - rect.right) - rectC.left) - rectC.right;
    }

    public final void a() {
        if (this.a != null) {
            if (this.f71d || this.f72e) {
                android.graphics.drawable.Drawable drawableMutate = d.b.k.r.A0(this.a).mutate();
                this.a = drawableMutate;
                if (this.f71d) {
                    d.b.k.r.t0(drawableMutate, this.b);
                }
                if (this.f72e) {
                    d.b.k.r.u0(this.a, this.f70c);
                }
                if (this.a.isStateful()) {
                    this.a.setState(getDrawableState());
                }
            }
        }
    }

    public final void b() {
        if (this.f73f != null) {
            if (this.i || this.j) {
                android.graphics.drawable.Drawable drawableMutate = d.b.k.r.A0(this.f73f).mutate();
                this.f73f = drawableMutate;
                if (this.i) {
                    d.b.k.r.t0(drawableMutate, this.f74g);
                }
                if (this.j) {
                    d.b.k.r.u0(this.f73f, this.h);
                }
                if (this.f73f.isStateful()) {
                    this.f73f.setState(getDrawableState());
                }
            }
        }
    }

    public final android.text.Layout c(java.lang.CharSequence charSequence) {
        android.text.method.TransformationMethod transformationMethod = this.K;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, this);
        }
        java.lang.CharSequence charSequence2 = charSequence;
        return new android.text.StaticLayout(charSequence2, this.G, charSequence2 != null ? (int) java.lang.Math.ceil(android.text.Layout.getDesiredWidth(charSequence2, r2)) : 0, android.text.Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
    }

    @Override // android.view.View
    public void draw(android.graphics.Canvas canvas) {
        int i;
        int i2;
        android.graphics.Rect rect = this.N;
        int i3 = this.B;
        int i4 = this.C;
        int i5 = this.D;
        int i6 = this.F;
        int thumbOffset = getThumbOffset() + i3;
        android.graphics.drawable.Drawable drawable = this.a;
        android.graphics.Rect rectC = drawable != null ? d.b.q.c0.c(drawable) : d.b.q.c0.f1760c;
        android.graphics.drawable.Drawable drawable2 = this.f73f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            int i7 = rect.left;
            thumbOffset += i7;
            if (rectC != null) {
                int i8 = rectC.left;
                if (i8 > i7) {
                    i3 += i8 - i7;
                }
                int i9 = rectC.top;
                int i10 = rect.top;
                i = i9 > i10 ? (i9 - i10) + i4 : i4;
                int i11 = rectC.right;
                int i12 = rect.right;
                if (i11 > i12) {
                    i5 -= i11 - i12;
                }
                int i13 = rectC.bottom;
                int i14 = rect.bottom;
                if (i13 > i14) {
                    i2 = i6 - (i13 - i14);
                }
                this.f73f.setBounds(i3, i, i5, i2);
            } else {
                i = i4;
            }
            i2 = i6;
            this.f73f.setBounds(i3, i, i5, i2);
        }
        android.graphics.drawable.Drawable drawable3 = this.a;
        if (drawable3 != null) {
            drawable3.getPadding(rect);
            int i15 = thumbOffset - rect.left;
            int i16 = thumbOffset + this.A + rect.right;
            this.a.setBounds(i15, i4, i16, i6);
            android.graphics.drawable.Drawable background = getBackground();
            if (background != null) {
                d.b.k.r.m0(background, i15, i4, i16, i6);
            }
        }
        super.draw(canvas);
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableHotspotChanged(float f2, float f3) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            super.drawableHotspotChanged(f2, f3);
        }
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            d.b.k.r.l0(drawable, f2, f3);
        }
        android.graphics.drawable.Drawable drawable2 = this.f73f;
        if (drawable2 != null) {
            d.b.k.r.l0(drawable2, f2, f3);
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        android.graphics.drawable.Drawable drawable = this.a;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        android.graphics.drawable.Drawable drawable2 = this.f73f;
        if (drawable2 != null && drawable2.isStateful()) {
            state |= drawable2.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingLeft() {
        if (!d.b.q.b1.b(this)) {
            return super.getCompoundPaddingLeft();
        }
        int compoundPaddingLeft = super.getCompoundPaddingLeft() + this.y;
        return !android.text.TextUtils.isEmpty(getText()) ? compoundPaddingLeft + this.m : compoundPaddingLeft;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView
    public int getCompoundPaddingRight() {
        if (d.b.q.b1.b(this)) {
            return super.getCompoundPaddingRight();
        }
        int compoundPaddingRight = super.getCompoundPaddingRight() + this.y;
        return !android.text.TextUtils.isEmpty(getText()) ? compoundPaddingRight + this.m : compoundPaddingRight;
    }

    public boolean getShowText() {
        return this.q;
    }

    public boolean getSplitTrack() {
        return this.n;
    }

    public int getSwitchMinWidth() {
        return this.l;
    }

    public int getSwitchPadding() {
        return this.m;
    }

    public java.lang.CharSequence getTextOff() {
        return this.p;
    }

    public java.lang.CharSequence getTextOn() {
        return this.o;
    }

    public android.graphics.drawable.Drawable getThumbDrawable() {
        return this.a;
    }

    public int getThumbTextPadding() {
        return this.k;
    }

    public android.content.res.ColorStateList getThumbTintList() {
        return this.b;
    }

    public android.graphics.PorterDuff.Mode getThumbTintMode() {
        return this.f70c;
    }

    public android.graphics.drawable.Drawable getTrackDrawable() {
        return this.f73f;
    }

    public android.content.res.ColorStateList getTrackTintList() {
        return this.f74g;
    }

    public android.graphics.PorterDuff.Mode getTrackTintMode() {
        return this.h;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        android.graphics.drawable.Drawable drawable2 = this.f73f;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        android.animation.ObjectAnimator objectAnimator = this.L;
        if (objectAnimator == null || !objectAnimator.isStarted()) {
            return;
        }
        this.L.end();
        this.L = null;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        if (isChecked()) {
            android.widget.CompoundButton.mergeDrawableStates(iArrOnCreateDrawableState, P);
        }
        return iArrOnCreateDrawableState;
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public void onDraw(android.graphics.Canvas canvas) throws java.lang.IllegalAccessException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        int width;
        super.onDraw(canvas);
        android.graphics.Rect rect = this.N;
        android.graphics.drawable.Drawable drawable = this.f73f;
        if (drawable != null) {
            drawable.getPadding(rect);
        } else {
            rect.setEmpty();
        }
        int i = this.C;
        int i2 = this.F;
        int i3 = i + rect.top;
        int i4 = i2 - rect.bottom;
        android.graphics.drawable.Drawable drawable2 = this.a;
        if (drawable != null) {
            if (!this.n || drawable2 == null) {
                drawable.draw(canvas);
            } else {
                android.graphics.Rect rectC = d.b.q.c0.c(drawable2);
                drawable2.copyBounds(rect);
                rect.left += rectC.left;
                rect.right -= rectC.right;
                int iSave = canvas.save();
                canvas.clipRect(rect, android.graphics.Region.Op.DIFFERENCE);
                drawable.draw(canvas);
                canvas.restoreToCount(iSave);
            }
        }
        int iSave2 = canvas.save();
        if (drawable2 != null) {
            drawable2.draw(canvas);
        }
        android.text.Layout layout = getTargetCheckedState() ? this.I : this.J;
        if (layout != null) {
            int[] drawableState = getDrawableState();
            android.content.res.ColorStateList colorStateList = this.H;
            if (colorStateList != null) {
                this.G.setColor(colorStateList.getColorForState(drawableState, 0));
            }
            this.G.drawableState = drawableState;
            if (drawable2 != null) {
                android.graphics.Rect bounds = drawable2.getBounds();
                width = bounds.left + bounds.right;
            } else {
                width = getWidth();
            }
            canvas.translate((width / 2) - (layout.getWidth() / 2), ((i3 + i4) / 2) - (layout.getHeight() / 2));
            layout.draw(canvas);
        }
        canvas.restoreToCount(iSave2);
    }

    @Override // android.view.View
    public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        super.onInitializeAccessibilityEvent(accessibilityEvent);
        accessibilityEvent.setClassName("android.widget.Switch");
    }

    @Override // android.view.View
    public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo accessibilityNodeInfo) {
        super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
        accessibilityNodeInfo.setClassName("android.widget.Switch");
        java.lang.CharSequence charSequence = isChecked() ? this.o : this.p;
        if (android.text.TextUtils.isEmpty(charSequence)) {
            return;
        }
        java.lang.CharSequence text = accessibilityNodeInfo.getText();
        if (android.text.TextUtils.isEmpty(text)) {
            accessibilityNodeInfo.setText(charSequence);
            return;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(text);
        sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
        sb.append(charSequence);
        accessibilityNodeInfo.setText(sb);
    }

    @Override // android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) throws java.lang.IllegalAccessException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        int iMax;
        int width;
        int paddingLeft;
        int height;
        int paddingTop;
        super.onLayout(z, i, i2, i3, i4);
        int iMax2 = 0;
        if (this.a != null) {
            android.graphics.Rect rect = this.N;
            android.graphics.drawable.Drawable drawable = this.f73f;
            if (drawable != null) {
                drawable.getPadding(rect);
            } else {
                rect.setEmpty();
            }
            android.graphics.Rect rectC = d.b.q.c0.c(this.a);
            iMax = java.lang.Math.max(0, rectC.left - rect.left);
            iMax2 = java.lang.Math.max(0, rectC.right - rect.right);
        } else {
            iMax = 0;
        }
        if (d.b.q.b1.b(this)) {
            paddingLeft = getPaddingLeft() + iMax;
            width = ((this.y + paddingLeft) - iMax) - iMax2;
        } else {
            width = (getWidth() - getPaddingRight()) - iMax2;
            paddingLeft = (width - this.y) + iMax + iMax2;
        }
        int gravity = getGravity() & 112;
        if (gravity == 16) {
            int height2 = ((getHeight() + getPaddingTop()) - getPaddingBottom()) / 2;
            int i5 = this.z;
            int i6 = height2 - (i5 / 2);
            height = i5 + i6;
            paddingTop = i6;
        } else if (gravity != 80) {
            paddingTop = getPaddingTop();
            height = this.z + paddingTop;
        } else {
            height = getHeight() - getPaddingBottom();
            paddingTop = height - this.z;
        }
        this.B = paddingLeft;
        this.C = paddingTop;
        this.F = height;
        this.D = width;
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) throws java.lang.IllegalAccessException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        int intrinsicWidth;
        int intrinsicHeight;
        int iMax;
        if (this.q) {
            if (this.I == null) {
                this.I = c(this.o);
            }
            if (this.J == null) {
                this.J = c(this.p);
            }
        }
        android.graphics.Rect rect = this.N;
        android.graphics.drawable.Drawable drawable = this.a;
        int intrinsicHeight2 = 0;
        if (drawable != null) {
            drawable.getPadding(rect);
            intrinsicWidth = (this.a.getIntrinsicWidth() - rect.left) - rect.right;
            intrinsicHeight = this.a.getIntrinsicHeight();
        } else {
            intrinsicWidth = 0;
            intrinsicHeight = 0;
        }
        if (this.q) {
            iMax = (this.k * 2) + java.lang.Math.max(this.I.getWidth(), this.J.getWidth());
        } else {
            iMax = 0;
        }
        this.A = java.lang.Math.max(iMax, intrinsicWidth);
        android.graphics.drawable.Drawable drawable2 = this.f73f;
        if (drawable2 != null) {
            drawable2.getPadding(rect);
            intrinsicHeight2 = this.f73f.getIntrinsicHeight();
        } else {
            rect.setEmpty();
        }
        int iMax2 = rect.left;
        int iMax3 = rect.right;
        android.graphics.drawable.Drawable drawable3 = this.a;
        if (drawable3 != null) {
            android.graphics.Rect rectC = d.b.q.c0.c(drawable3);
            iMax2 = java.lang.Math.max(iMax2, rectC.left);
            iMax3 = java.lang.Math.max(iMax3, rectC.right);
        }
        int iMax4 = java.lang.Math.max(this.l, (this.A * 2) + iMax2 + iMax3);
        int iMax5 = java.lang.Math.max(intrinsicHeight2, intrinsicHeight);
        this.y = iMax4;
        this.z = iMax5;
        super.onMeasure(i, i2);
        if (getMeasuredHeight() < iMax5) {
            setMeasuredDimension(getMeasuredWidthAndState(), iMax5);
        }
    }

    @Override // android.view.View
    public void onPopulateAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        super.onPopulateAccessibilityEvent(accessibilityEvent);
        java.lang.CharSequence charSequence = isChecked() ? this.o : this.p;
        if (charSequence != null) {
            accessibilityEvent.getText().add(charSequence);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0095  */
    @Override // android.widget.TextView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r11) {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.SwitchCompat.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void setChecked(boolean z) {
        super.setChecked(z);
        boolean zIsChecked = isChecked();
        if (getWindowToken() == null || !d.g.m.s.A(this)) {
            android.animation.ObjectAnimator objectAnimator = this.L;
            if (objectAnimator != null) {
                objectAnimator.cancel();
            }
            setThumbPosition(zIsChecked ? 1.0f : 0.0f);
            return;
        }
        android.animation.ObjectAnimator objectAnimatorOfFloat = android.animation.ObjectAnimator.ofFloat(this, O, zIsChecked ? 1.0f : 0.0f);
        this.L = objectAnimatorOfFloat;
        objectAnimatorOfFloat.setDuration(250L);
        if (android.os.Build.VERSION.SDK_INT >= 18) {
            this.L.setAutoCancel(true);
        }
        this.L.start();
    }

    @Override // android.widget.TextView
    public void setCustomSelectionActionModeCallback(android.view.ActionMode.Callback callback) {
        super.setCustomSelectionActionModeCallback(d.b.k.r.B0(this, callback));
    }

    public void setShowText(boolean z) {
        if (this.q != z) {
            this.q = z;
            requestLayout();
        }
    }

    public void setSplitTrack(boolean z) {
        this.n = z;
        invalidate();
    }

    public void setSwitchMinWidth(int i) {
        this.l = i;
        requestLayout();
    }

    public void setSwitchPadding(int i) {
        this.m = i;
        requestLayout();
    }

    public void setSwitchTypeface(android.graphics.Typeface typeface) {
        if ((this.G.getTypeface() == null || this.G.getTypeface().equals(typeface)) && (this.G.getTypeface() != null || typeface == null)) {
            return;
        }
        this.G.setTypeface(typeface);
        requestLayout();
        invalidate();
    }

    public void setTextOff(java.lang.CharSequence charSequence) {
        this.p = charSequence;
        requestLayout();
    }

    public void setTextOn(java.lang.CharSequence charSequence) {
        this.o = charSequence;
        requestLayout();
    }

    public void setThumbDrawable(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2 = this.a;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.a = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setThumbPosition(float f2) {
        this.x = f2;
        invalidate();
    }

    public void setThumbResource(int i) {
        setThumbDrawable(d.b.l.a.a.b(getContext(), i));
    }

    public void setThumbTextPadding(int i) {
        this.k = i;
        requestLayout();
    }

    public void setThumbTintList(android.content.res.ColorStateList colorStateList) {
        this.b = colorStateList;
        this.f71d = true;
        a();
    }

    public void setThumbTintMode(android.graphics.PorterDuff.Mode mode) {
        this.f70c = mode;
        this.f72e = true;
        a();
    }

    public void setTrackDrawable(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2 = this.f73f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f73f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
        }
        requestLayout();
    }

    public void setTrackResource(int i) {
        setTrackDrawable(d.b.l.a.a.b(getContext(), i));
    }

    public void setTrackTintList(android.content.res.ColorStateList colorStateList) {
        this.f74g = colorStateList;
        this.i = true;
        b();
    }

    public void setTrackTintMode(android.graphics.PorterDuff.Mode mode) {
        this.h = mode;
        this.j = true;
        b();
    }

    @Override // android.widget.CompoundButton, android.widget.Checkable
    public void toggle() {
        setChecked(!isChecked());
    }

    @Override // android.widget.CompoundButton, android.widget.TextView, android.view.View
    public boolean verifyDrawable(android.graphics.drawable.Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.a || drawable == this.f73f;
    }
}
