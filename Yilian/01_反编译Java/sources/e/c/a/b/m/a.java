package e.c.a.b.m;

/* loaded from: classes.dex */
public class a extends d.b.q.f {

    /* renamed from: c, reason: collision with root package name */
    public final e.c.a.b.m.c f2630c;

    /* renamed from: d, reason: collision with root package name */
    public int f2631d;

    /* renamed from: e, reason: collision with root package name */
    public android.graphics.PorterDuff.Mode f2632e;

    /* renamed from: f, reason: collision with root package name */
    public android.content.res.ColorStateList f2633f;

    /* renamed from: g, reason: collision with root package name */
    public android.graphics.drawable.Drawable f2634g;
    public int h;
    public int i;
    public int j;

    /* JADX WARN: Illegal instructions before constructor call */
    public a(android.content.Context context, android.util.AttributeSet attributeSet) {
        android.graphics.drawable.Drawable insetDrawable;
        int resourceId;
        android.graphics.drawable.Drawable drawableB;
        int i = e.c.a.b.b.materialButtonStyle;
        super(context, attributeSet, i);
        android.content.res.TypedArray typedArrayB = e.c.a.b.q.e.b(context, attributeSet, e.c.a.b.i.MaterialButton, i, e.c.a.b.h.Widget_MaterialComponents_Button, new int[0]);
        this.f2631d = typedArrayB.getDimensionPixelSize(e.c.a.b.i.MaterialButton_iconPadding, 0);
        this.f2632e = d.s.y.X(typedArrayB.getInt(e.c.a.b.i.MaterialButton_iconTintMode, -1), android.graphics.PorterDuff.Mode.SRC_IN);
        this.f2633f = d.s.y.B(getContext(), typedArrayB, e.c.a.b.i.MaterialButton_iconTint);
        android.content.Context context2 = getContext();
        int i2 = e.c.a.b.i.MaterialButton_icon;
        this.f2634g = (!typedArrayB.hasValue(i2) || (resourceId = typedArrayB.getResourceId(i2, 0)) == 0 || (drawableB = d.b.l.a.a.b(context2, resourceId)) == null) ? typedArrayB.getDrawable(i2) : drawableB;
        this.j = typedArrayB.getInteger(e.c.a.b.i.MaterialButton_iconGravity, 1);
        this.h = typedArrayB.getDimensionPixelSize(e.c.a.b.i.MaterialButton_iconSize, 0);
        e.c.a.b.m.c cVar = new e.c.a.b.m.c(this);
        this.f2630c = cVar;
        cVar.b = typedArrayB.getDimensionPixelOffset(e.c.a.b.i.MaterialButton_android_insetLeft, 0);
        cVar.f2635c = typedArrayB.getDimensionPixelOffset(e.c.a.b.i.MaterialButton_android_insetRight, 0);
        cVar.f2636d = typedArrayB.getDimensionPixelOffset(e.c.a.b.i.MaterialButton_android_insetTop, 0);
        cVar.f2637e = typedArrayB.getDimensionPixelOffset(e.c.a.b.i.MaterialButton_android_insetBottom, 0);
        cVar.f2638f = typedArrayB.getDimensionPixelSize(e.c.a.b.i.MaterialButton_cornerRadius, 0);
        cVar.f2639g = typedArrayB.getDimensionPixelSize(e.c.a.b.i.MaterialButton_strokeWidth, 0);
        cVar.h = d.s.y.X(typedArrayB.getInt(e.c.a.b.i.MaterialButton_backgroundTintMode, -1), android.graphics.PorterDuff.Mode.SRC_IN);
        cVar.i = d.s.y.B(cVar.a.getContext(), typedArrayB, e.c.a.b.i.MaterialButton_backgroundTint);
        cVar.j = d.s.y.B(cVar.a.getContext(), typedArrayB, e.c.a.b.i.MaterialButton_strokeColor);
        cVar.k = d.s.y.B(cVar.a.getContext(), typedArrayB, e.c.a.b.i.MaterialButton_rippleColor);
        cVar.l.setStyle(android.graphics.Paint.Style.STROKE);
        cVar.l.setStrokeWidth(cVar.f2639g);
        android.graphics.Paint paint = cVar.l;
        android.content.res.ColorStateList colorStateList = cVar.j;
        paint.setColor(colorStateList != null ? colorStateList.getColorForState(cVar.a.getDrawableState(), 0) : 0);
        int iS = d.g.m.s.s(cVar.a);
        int paddingTop = cVar.a.getPaddingTop();
        int iR = d.g.m.s.r(cVar.a);
        int paddingBottom = cVar.a.getPaddingBottom();
        e.c.a.b.m.a aVar = cVar.a;
        if (e.c.a.b.m.c.w) {
            insetDrawable = cVar.a();
        } else {
            android.graphics.drawable.GradientDrawable gradientDrawable = new android.graphics.drawable.GradientDrawable();
            cVar.o = gradientDrawable;
            gradientDrawable.setCornerRadius(cVar.f2638f + 1.0E-5f);
            cVar.o.setColor(-1);
            android.graphics.drawable.Drawable drawableA0 = d.b.k.r.A0(cVar.o);
            cVar.p = drawableA0;
            d.b.k.r.t0(drawableA0, cVar.i);
            android.graphics.PorterDuff.Mode mode = cVar.h;
            if (mode != null) {
                d.b.k.r.u0(cVar.p, mode);
            }
            android.graphics.drawable.GradientDrawable gradientDrawable2 = new android.graphics.drawable.GradientDrawable();
            cVar.q = gradientDrawable2;
            gradientDrawable2.setCornerRadius(cVar.f2638f + 1.0E-5f);
            cVar.q.setColor(-1);
            android.graphics.drawable.Drawable drawableA02 = d.b.k.r.A0(cVar.q);
            cVar.r = drawableA02;
            d.b.k.r.t0(drawableA02, cVar.k);
            insetDrawable = new android.graphics.drawable.InsetDrawable((android.graphics.drawable.Drawable) new android.graphics.drawable.LayerDrawable(new android.graphics.drawable.Drawable[]{cVar.p, cVar.r}), cVar.b, cVar.f2636d, cVar.f2635c, cVar.f2637e);
        }
        aVar.setInternalBackground(insetDrawable);
        e.c.a.b.m.a aVar2 = cVar.a;
        int i3 = iS + cVar.b;
        int i4 = paddingTop + cVar.f2636d;
        int i5 = iR + cVar.f2635c;
        int i6 = paddingBottom + cVar.f2637e;
        if (android.os.Build.VERSION.SDK_INT >= 17) {
            aVar2.setPaddingRelative(i3, i4, i5, i6);
        } else {
            aVar2.setPadding(i3, i4, i5, i6);
        }
        typedArrayB.recycle();
        setCompoundDrawablePadding(this.f2631d);
        b();
    }

    public final boolean a() {
        e.c.a.b.m.c cVar = this.f2630c;
        return (cVar == null || cVar.v) ? false : true;
    }

    public final void b() {
        android.graphics.drawable.Drawable drawable = this.f2634g;
        if (drawable != null) {
            android.graphics.drawable.Drawable drawableMutate = drawable.mutate();
            this.f2634g = drawableMutate;
            d.b.k.r.t0(drawableMutate, this.f2633f);
            android.graphics.PorterDuff.Mode mode = this.f2632e;
            if (mode != null) {
                d.b.k.r.u0(this.f2634g, mode);
            }
            int intrinsicWidth = this.h;
            if (intrinsicWidth == 0) {
                intrinsicWidth = this.f2634g.getIntrinsicWidth();
            }
            int intrinsicHeight = this.h;
            if (intrinsicHeight == 0) {
                intrinsicHeight = this.f2634g.getIntrinsicHeight();
            }
            android.graphics.drawable.Drawable drawable2 = this.f2634g;
            int i = this.i;
            drawable2.setBounds(i, 0, intrinsicWidth + i, intrinsicHeight);
        }
        d.b.k.r.i0(this, this.f2634g, null, null, null);
    }

    @Override // android.view.View
    public android.content.res.ColorStateList getBackgroundTintList() {
        return getSupportBackgroundTintList();
    }

    @Override // android.view.View
    public android.graphics.PorterDuff.Mode getBackgroundTintMode() {
        return getSupportBackgroundTintMode();
    }

    public int getCornerRadius() {
        if (a()) {
            return this.f2630c.f2638f;
        }
        return 0;
    }

    public android.graphics.drawable.Drawable getIcon() {
        return this.f2634g;
    }

    public int getIconGravity() {
        return this.j;
    }

    public int getIconPadding() {
        return this.f2631d;
    }

    public int getIconSize() {
        return this.h;
    }

    public android.content.res.ColorStateList getIconTint() {
        return this.f2633f;
    }

    public android.graphics.PorterDuff.Mode getIconTintMode() {
        return this.f2632e;
    }

    public android.content.res.ColorStateList getRippleColor() {
        if (a()) {
            return this.f2630c.k;
        }
        return null;
    }

    public android.content.res.ColorStateList getStrokeColor() {
        if (a()) {
            return this.f2630c.j;
        }
        return null;
    }

    public int getStrokeWidth() {
        if (a()) {
            return this.f2630c.f2639g;
        }
        return 0;
    }

    @Override // d.b.q.f, d.g.m.n
    public android.content.res.ColorStateList getSupportBackgroundTintList() {
        return a() ? this.f2630c.i : super.getSupportBackgroundTintList();
    }

    @Override // d.b.q.f, d.g.m.n
    public android.graphics.PorterDuff.Mode getSupportBackgroundTintMode() {
        return a() ? this.f2630c.h : super.getSupportBackgroundTintMode();
    }

    @Override // android.widget.TextView, android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
        super.onDraw(canvas);
        if (android.os.Build.VERSION.SDK_INT >= 21 || !a()) {
            return;
        }
        e.c.a.b.m.c cVar = this.f2630c;
        if (cVar == null) {
            throw null;
        }
        if (canvas == null || cVar.j == null || cVar.f2639g <= 0) {
            return;
        }
        cVar.m.set(cVar.a.getBackground().getBounds());
        float f2 = cVar.f2639g / 2.0f;
        cVar.n.set(cVar.m.left + f2 + cVar.b, r2.top + f2 + cVar.f2636d, (r2.right - f2) - cVar.f2635c, (r2.bottom - f2) - cVar.f2637e);
        float f3 = cVar.f2638f - (cVar.f2639g / 2.0f);
        canvas.drawRoundRect(cVar.n, f3, f3, cVar.l);
    }

    @Override // d.b.q.f, android.widget.TextView, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        e.c.a.b.m.c cVar;
        super.onLayout(z, i, i2, i3, i4);
        if (android.os.Build.VERSION.SDK_INT != 21 || (cVar = this.f2630c) == null) {
            return;
        }
        int i5 = i4 - i2;
        int i6 = i3 - i;
        android.graphics.drawable.GradientDrawable gradientDrawable = cVar.u;
        if (gradientDrawable != null) {
            gradientDrawable.setBounds(cVar.b, cVar.f2636d, i6 - cVar.f2635c, i5 - cVar.f2637e);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        if (this.f2634g == null || this.j != 2) {
            return;
        }
        int iMeasureText = (int) getPaint().measureText(getText().toString());
        int intrinsicWidth = this.h;
        if (intrinsicWidth == 0) {
            intrinsicWidth = this.f2634g.getIntrinsicWidth();
        }
        int measuredWidth = (((((getMeasuredWidth() - iMeasureText) - d.g.m.s.r(this)) - intrinsicWidth) - this.f2631d) - d.g.m.s.s(this)) / 2;
        if (d.g.m.s.o(this) == 1) {
            measuredWidth = -measuredWidth;
        }
        if (this.i != measuredWidth) {
            this.i = measuredWidth;
            b();
        }
    }

    @Override // android.view.View
    public void setBackground(android.graphics.drawable.Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        android.graphics.drawable.GradientDrawable gradientDrawable;
        if (!a()) {
            super.setBackgroundColor(i);
            return;
        }
        e.c.a.b.m.c cVar = this.f2630c;
        if (cVar == null) {
            throw null;
        }
        if ((!e.c.a.b.m.c.w || (gradientDrawable = cVar.s) == null) && (e.c.a.b.m.c.w || (gradientDrawable = cVar.o) == null)) {
            return;
        }
        gradientDrawable.setColor(i);
    }

    @Override // d.b.q.f, android.view.View
    public void setBackgroundDrawable(android.graphics.drawable.Drawable drawable) {
        if (a()) {
            if (drawable == getBackground()) {
                getBackground().setState(drawable.getState());
                return;
            }
            android.util.Log.i("MaterialButton", "Setting a custom background is not supported.");
            e.c.a.b.m.c cVar = this.f2630c;
            cVar.v = true;
            cVar.a.setSupportBackgroundTintList(cVar.i);
            cVar.a.setSupportBackgroundTintMode(cVar.h);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // d.b.q.f, android.view.View
    public void setBackgroundResource(int i) {
        setBackgroundDrawable(i != 0 ? d.b.l.a.a.b(getContext(), i) : null);
    }

    @Override // android.view.View
    public void setBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        setSupportBackgroundTintList(colorStateList);
    }

    @Override // android.view.View
    public void setBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        setSupportBackgroundTintMode(mode);
    }

    public void setCornerRadius(int i) {
        android.graphics.drawable.GradientDrawable gradientDrawable;
        if (a()) {
            e.c.a.b.m.c cVar = this.f2630c;
            if (cVar.f2638f != i) {
                cVar.f2638f = i;
                if (!e.c.a.b.m.c.w || cVar.s == null || cVar.t == null || cVar.u == null) {
                    if (e.c.a.b.m.c.w || (gradientDrawable = cVar.o) == null || cVar.q == null) {
                        return;
                    }
                    float f2 = i + 1.0E-5f;
                    gradientDrawable.setCornerRadius(f2);
                    cVar.q.setCornerRadius(f2);
                    cVar.a.invalidate();
                    return;
                }
                if (android.os.Build.VERSION.SDK_INT == 21) {
                    android.graphics.drawable.GradientDrawable gradientDrawable2 = null;
                    float f3 = i + 1.0E-5f;
                    ((!e.c.a.b.m.c.w || cVar.a.getBackground() == null) ? null : (android.graphics.drawable.GradientDrawable) ((android.graphics.drawable.LayerDrawable) ((android.graphics.drawable.InsetDrawable) ((android.graphics.drawable.RippleDrawable) cVar.a.getBackground()).getDrawable(0)).getDrawable()).getDrawable(0)).setCornerRadius(f3);
                    if (e.c.a.b.m.c.w && cVar.a.getBackground() != null) {
                        gradientDrawable2 = (android.graphics.drawable.GradientDrawable) ((android.graphics.drawable.LayerDrawable) ((android.graphics.drawable.InsetDrawable) ((android.graphics.drawable.RippleDrawable) cVar.a.getBackground()).getDrawable(0)).getDrawable()).getDrawable(1);
                    }
                    gradientDrawable2.setCornerRadius(f3);
                }
                float f4 = i + 1.0E-5f;
                cVar.s.setCornerRadius(f4);
                cVar.t.setCornerRadius(f4);
                cVar.u.setCornerRadius(f4);
            }
        }
    }

    public void setCornerRadiusResource(int i) {
        if (a()) {
            setCornerRadius(getResources().getDimensionPixelSize(i));
        }
    }

    public void setIcon(android.graphics.drawable.Drawable drawable) {
        if (this.f2634g != drawable) {
            this.f2634g = drawable;
            b();
        }
    }

    public void setIconGravity(int i) {
        this.j = i;
    }

    public void setIconPadding(int i) {
        if (this.f2631d != i) {
            this.f2631d = i;
            setCompoundDrawablePadding(i);
        }
    }

    public void setIconResource(int i) {
        setIcon(i != 0 ? d.b.l.a.a.b(getContext(), i) : null);
    }

    public void setIconSize(int i) {
        if (i < 0) {
            throw new java.lang.IllegalArgumentException("iconSize cannot be less than 0");
        }
        if (this.h != i) {
            this.h = i;
            b();
        }
    }

    public void setIconTint(android.content.res.ColorStateList colorStateList) {
        if (this.f2633f != colorStateList) {
            this.f2633f = colorStateList;
            b();
        }
    }

    public void setIconTintMode(android.graphics.PorterDuff.Mode mode) {
        if (this.f2632e != mode) {
            this.f2632e = mode;
            b();
        }
    }

    public void setIconTintResource(int i) {
        setIconTint(d.b.l.a.a.a(getContext(), i));
    }

    public void setInternalBackground(android.graphics.drawable.Drawable drawable) {
        super.setBackgroundDrawable(drawable);
    }

    public void setRippleColor(android.content.res.ColorStateList colorStateList) {
        android.graphics.drawable.Drawable drawable;
        if (a()) {
            e.c.a.b.m.c cVar = this.f2630c;
            if (cVar.k != colorStateList) {
                cVar.k = colorStateList;
                if (e.c.a.b.m.c.w && (cVar.a.getBackground() instanceof android.graphics.drawable.RippleDrawable)) {
                    ((android.graphics.drawable.RippleDrawable) cVar.a.getBackground()).setColor(colorStateList);
                } else {
                    if (e.c.a.b.m.c.w || (drawable = cVar.r) == null) {
                        return;
                    }
                    d.b.k.r.t0(drawable, colorStateList);
                }
            }
        }
    }

    public void setRippleColorResource(int i) {
        if (a()) {
            setRippleColor(d.b.l.a.a.a(getContext(), i));
        }
    }

    public void setStrokeColor(android.content.res.ColorStateList colorStateList) {
        if (a()) {
            e.c.a.b.m.c cVar = this.f2630c;
            if (cVar.j != colorStateList) {
                cVar.j = colorStateList;
                cVar.l.setColor(colorStateList != null ? colorStateList.getColorForState(cVar.a.getDrawableState(), 0) : 0);
                cVar.b();
            }
        }
    }

    public void setStrokeColorResource(int i) {
        if (a()) {
            setStrokeColor(d.b.l.a.a.a(getContext(), i));
        }
    }

    public void setStrokeWidth(int i) {
        if (a()) {
            e.c.a.b.m.c cVar = this.f2630c;
            if (cVar.f2639g != i) {
                cVar.f2639g = i;
                cVar.l.setStrokeWidth(i);
                cVar.b();
            }
        }
    }

    public void setStrokeWidthResource(int i) {
        if (a()) {
            setStrokeWidth(getResources().getDimensionPixelSize(i));
        }
    }

    @Override // d.b.q.f, d.g.m.n
    public void setSupportBackgroundTintList(android.content.res.ColorStateList colorStateList) {
        if (!a()) {
            if (this.f2630c != null) {
                super.setSupportBackgroundTintList(colorStateList);
                return;
            }
            return;
        }
        e.c.a.b.m.c cVar = this.f2630c;
        if (cVar.i != colorStateList) {
            cVar.i = colorStateList;
            if (e.c.a.b.m.c.w) {
                cVar.c();
                return;
            }
            android.graphics.drawable.Drawable drawable = cVar.p;
            if (drawable != null) {
                d.b.k.r.t0(drawable, colorStateList);
            }
        }
    }

    @Override // d.b.q.f, d.g.m.n
    public void setSupportBackgroundTintMode(android.graphics.PorterDuff.Mode mode) {
        if (!a()) {
            if (this.f2630c != null) {
                super.setSupportBackgroundTintMode(mode);
                return;
            }
            return;
        }
        e.c.a.b.m.c cVar = this.f2630c;
        if (cVar.h != mode) {
            cVar.h = mode;
            if (e.c.a.b.m.c.w) {
                cVar.c();
                return;
            }
            android.graphics.drawable.Drawable drawable = cVar.p;
            if (drawable == null || mode == null) {
                return;
            }
            d.b.k.r.u0(drawable, mode);
        }
    }
}
