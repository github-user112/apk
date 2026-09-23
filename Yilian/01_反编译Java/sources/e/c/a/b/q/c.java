package e.c.a.b.q;

/* loaded from: classes.dex */
public class c extends d.b.q.g0 {
    public android.graphics.drawable.Drawable p;
    public final android.graphics.Rect q;
    public final android.graphics.Rect r;
    public int s;
    public boolean t;
    public boolean u;

    public c(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public c(android.content.Context context, android.util.AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.q = new android.graphics.Rect();
        this.r = new android.graphics.Rect();
        this.s = 119;
        this.t = true;
        this.u = false;
        android.content.res.TypedArray typedArrayB = e.c.a.b.q.e.b(context, attributeSet, e.c.a.b.i.ForegroundLinearLayout, i, 0, new int[0]);
        this.s = typedArrayB.getInt(e.c.a.b.i.ForegroundLinearLayout_android_foregroundGravity, this.s);
        android.graphics.drawable.Drawable drawable = typedArrayB.getDrawable(e.c.a.b.i.ForegroundLinearLayout_android_foreground);
        if (drawable != null) {
            setForeground(drawable);
        }
        this.t = typedArrayB.getBoolean(e.c.a.b.i.ForegroundLinearLayout_foregroundInsidePadding, true);
        typedArrayB.recycle();
    }

    @Override // android.view.View
    public void draw(android.graphics.Canvas canvas) {
        super.draw(canvas);
        android.graphics.drawable.Drawable drawable = this.p;
        if (drawable != null) {
            if (this.u) {
                this.u = false;
                android.graphics.Rect rect = this.q;
                android.graphics.Rect rect2 = this.r;
                int right = getRight() - getLeft();
                int bottom = getBottom() - getTop();
                if (this.t) {
                    rect.set(0, 0, right, bottom);
                } else {
                    rect.set(getPaddingLeft(), getPaddingTop(), right - getPaddingRight(), bottom - getPaddingBottom());
                }
                android.view.Gravity.apply(this.s, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight(), rect, rect2);
                drawable.setBounds(rect2);
            }
            drawable.draw(canvas);
        }
    }

    @Override // android.view.View
    @android.annotation.TargetApi(21)
    public void drawableHotspotChanged(float f2, float f3) {
        super.drawableHotspotChanged(f2, f3);
        android.graphics.drawable.Drawable drawable = this.p;
        if (drawable != null) {
            drawable.setHotspot(f2, f3);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        android.graphics.drawable.Drawable drawable = this.p;
        if (drawable == null || !drawable.isStateful()) {
            return;
        }
        this.p.setState(getDrawableState());
    }

    @Override // android.view.View
    public android.graphics.drawable.Drawable getForeground() {
        return this.p;
    }

    @Override // android.view.View
    public int getForegroundGravity() {
        return this.s;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        android.graphics.drawable.Drawable drawable = this.p;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // d.b.q.g0, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        this.u = z | this.u;
    }

    @Override // android.view.View
    public void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.u = true;
    }

    @Override // android.view.View
    public void setForeground(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2 = this.p;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
                unscheduleDrawable(this.p);
            }
            this.p = drawable;
            if (drawable != null) {
                setWillNotDraw(false);
                drawable.setCallback(this);
                if (drawable.isStateful()) {
                    drawable.setState(getDrawableState());
                }
                if (this.s == 119) {
                    drawable.getPadding(new android.graphics.Rect());
                }
            } else {
                setWillNotDraw(true);
            }
            requestLayout();
            invalidate();
        }
    }

    @Override // android.view.View
    public void setForegroundGravity(int i) {
        if (this.s != i) {
            if ((8388615 & i) == 0) {
                i |= 8388611;
            }
            if ((i & 112) == 0) {
                i |= 48;
            }
            this.s = i;
            if (i == 119 && this.p != null) {
                this.p.getPadding(new android.graphics.Rect());
            }
            requestLayout();
        }
    }

    @Override // android.view.View
    public boolean verifyDrawable(android.graphics.drawable.Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.p;
    }
}
