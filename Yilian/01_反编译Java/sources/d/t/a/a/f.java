package d.t.a.a;

/* loaded from: classes.dex */
public abstract class f extends android.graphics.drawable.Drawable implements d.g.g.l.a {
    public android.graphics.drawable.Drawable a;

    @Override // android.graphics.drawable.Drawable
    public void applyTheme(android.content.res.Resources.Theme theme) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable == null || android.os.Build.VERSION.SDK_INT < 21) {
            return;
        }
        drawable.applyTheme(theme);
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.clearColorFilter();
        } else {
            super.clearColorFilter();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.drawable.Drawable getCurrent() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.getCurrent() : super.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.getMinimumHeight() : super.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.getMinimumWidth() : super.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(android.graphics.Rect rect) {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.getPadding(rect) : super.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.getState() : super.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.Region getTransparentRegion() {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.getTransparentRegion() : super.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.setLevel(i) : super.onLevelChange(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setChangingConfigurations(i);
        } else {
            super.setChangingConfigurations(i);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i, android.graphics.PorterDuff.Mode mode) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setColorFilter(i, mode);
        } else {
            super.setColorFilter(i, mode);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            drawable.setFilterBitmap(z);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspot(float f2, float f3) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            d.b.k.r.l0(drawable, f2, f3);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setHotspotBounds(int i, int i2, int i3, int i4) {
        android.graphics.drawable.Drawable drawable = this.a;
        if (drawable != null) {
            d.b.k.r.m0(drawable, i, i2, i3, i4);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        android.graphics.drawable.Drawable drawable = this.a;
        return drawable != null ? drawable.setState(iArr) : super.setState(iArr);
    }
}
