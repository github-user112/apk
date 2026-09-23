package d.g.g.l;

/* loaded from: classes.dex */
public class d extends d.g.g.l.c {
    public static java.lang.reflect.Method h;

    public d(android.graphics.drawable.Drawable drawable) {
        super(drawable);
        e();
    }

    public d(d.g.g.l.e eVar, android.content.res.Resources resources) {
        super(eVar, resources);
        e();
    }

    @Override // d.g.g.l.c
    public boolean c() {
        if (android.os.Build.VERSION.SDK_INT != 21) {
            return false;
        }
        android.graphics.drawable.Drawable drawable = this.f1963f;
        return (drawable instanceof android.graphics.drawable.GradientDrawable) || (drawable instanceof android.graphics.drawable.DrawableContainer) || (drawable instanceof android.graphics.drawable.InsetDrawable) || (drawable instanceof android.graphics.drawable.RippleDrawable);
    }

    public final void e() {
        if (h == null) {
            try {
                h = android.graphics.drawable.Drawable.class.getDeclaredMethod("isProjected", new java.lang.Class[0]);
            } catch (java.lang.Exception e2) {
                android.util.Log.w("WrappedDrawableApi21", "Failed to retrieve Drawable#isProjected() method", e2);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.Rect getDirtyBounds() {
        return this.f1963f.getDirtyBounds();
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(android.graphics.Outline outline) {
        this.f1963f.getOutline(outline);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f2, float f3) {
        this.f1963f.setHotspot(f2, f3);
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        this.f1963f.setHotspotBounds(i, i2, i3, i4);
    }

    @Override // d.g.g.l.c, android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        if (!super.setState(iArr)) {
            return false;
        }
        invalidateSelf();
        return true;
    }

    @Override // d.g.g.l.c, android.graphics.drawable.Drawable, d.g.g.l.a
    public void setTint(int i) {
        if (c()) {
            super.setTint(i);
        } else {
            this.f1963f.setTint(i);
        }
    }

    @Override // d.g.g.l.c, android.graphics.drawable.Drawable, d.g.g.l.a
    public void setTintList(android.content.res.ColorStateList colorStateList) {
        if (!c()) {
            this.f1963f.setTintList(colorStateList);
        } else {
            this.f1961d.f1964c = colorStateList;
            d(getState());
        }
    }

    @Override // d.g.g.l.c, android.graphics.drawable.Drawable, d.g.g.l.a
    public void setTintMode(android.graphics.PorterDuff.Mode mode) {
        if (!c()) {
            this.f1963f.setTintMode(mode);
        } else {
            this.f1961d.f1965d = mode;
            d(getState());
        }
    }
}
