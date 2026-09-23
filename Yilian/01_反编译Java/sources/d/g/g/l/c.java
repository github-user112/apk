package d.g.g.l;

/* loaded from: classes.dex */
public class c extends android.graphics.drawable.Drawable implements android.graphics.drawable.Drawable.Callback, d.g.g.l.b, d.g.g.l.a {

    /* renamed from: g, reason: collision with root package name */
    public static final android.graphics.PorterDuff.Mode f1959g = android.graphics.PorterDuff.Mode.SRC_IN;
    public int a;
    public android.graphics.PorterDuff.Mode b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1960c;

    /* renamed from: d, reason: collision with root package name */
    public d.g.g.l.e f1961d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1962e;

    /* renamed from: f, reason: collision with root package name */
    public android.graphics.drawable.Drawable f1963f;

    public c(android.graphics.drawable.Drawable drawable) {
        this.f1961d = new d.g.g.l.e(this.f1961d);
        a(drawable);
    }

    @Override // d.g.g.l.b
    public final void a(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2 = this.f1963f;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1963f = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            d.g.g.l.e eVar = this.f1961d;
            if (eVar != null) {
                eVar.b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    @Override // d.g.g.l.b
    public final android.graphics.drawable.Drawable b() {
        return this.f1963f;
    }

    public boolean c() {
        return true;
    }

    public final boolean d(int[] iArr) {
        if (!c()) {
            return false;
        }
        d.g.g.l.e eVar = this.f1961d;
        android.content.res.ColorStateList colorStateList = eVar.f1964c;
        android.graphics.PorterDuff.Mode mode = eVar.f1965d;
        if (colorStateList == null || mode == null) {
            this.f1960c = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f1960c || colorForState != this.a || mode != this.b) {
                setColorFilter(colorForState, mode);
                this.a = colorForState;
                this.b = mode;
                this.f1960c = true;
                return true;
            }
        }
        return false;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(android.graphics.Canvas canvas) {
        this.f1963f.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        d.g.g.l.e eVar = this.f1961d;
        return changingConfigurations | (eVar != null ? eVar.getChangingConfigurations() : 0) | this.f1963f.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.drawable.Drawable.ConstantState getConstantState() {
        d.g.g.l.e eVar = this.f1961d;
        if (eVar == null) {
            return null;
        }
        if (!(eVar.b != null)) {
            return null;
        }
        this.f1961d.a = getChangingConfigurations();
        return this.f1961d;
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.drawable.Drawable getCurrent() {
        return this.f1963f.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f1963f.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f1963f.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getLayoutDirection() {
        return d.b.k.r.B(this.f1963f);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f1963f.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f1963f.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f1963f.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(android.graphics.Rect rect) {
        return this.f1963f.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f1963f.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.Region getTransparentRegion() {
        return this.f1963f.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(android.graphics.drawable.Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return d.b.k.r.R(this.f1963f);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        d.g.g.l.e eVar;
        android.content.res.ColorStateList colorStateList = (!c() || (eVar = this.f1961d) == null) ? null : eVar.f1964c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f1963f.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f1963f.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public android.graphics.drawable.Drawable mutate() {
        if (!this.f1962e && super.mutate() == this) {
            this.f1961d = new d.g.g.l.e(this.f1961d);
            android.graphics.drawable.Drawable drawable = this.f1963f;
            if (drawable != null) {
                drawable.mutate();
            }
            d.g.g.l.e eVar = this.f1961d;
            if (eVar != null) {
                android.graphics.drawable.Drawable drawable2 = this.f1963f;
                eVar.b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f1962e = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(android.graphics.Rect rect) {
        android.graphics.drawable.Drawable drawable = this.f1963f;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i) {
        return d.b.k.r.o0(this.f1963f, i);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLevelChange(int i) {
        return this.f1963f.setLevel(i);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(android.graphics.drawable.Drawable drawable, java.lang.Runnable runnable, long j) {
        scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f1963f.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z) {
        d.b.k.r.h0(this.f1963f, z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i) {
        this.f1963f.setChangingConfigurations(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(android.graphics.ColorFilter colorFilter) {
        this.f1963f.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z) {
        this.f1963f.setDither(z);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z) {
        this.f1963f.setFilterBitmap(z);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return d(iArr) || this.f1963f.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, d.g.g.l.a
    public void setTint(int i) {
        setTintList(android.content.res.ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, d.g.g.l.a
    public void setTintList(android.content.res.ColorStateList colorStateList) {
        this.f1961d.f1964c = colorStateList;
        d(getState());
    }

    @Override // android.graphics.drawable.Drawable, d.g.g.l.a
    public void setTintMode(android.graphics.PorterDuff.Mode mode) {
        this.f1961d.f1965d = mode;
        d(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z, boolean z2) {
        return super.setVisible(z, z2) || this.f1963f.setVisible(z, z2);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(android.graphics.drawable.Drawable drawable, java.lang.Runnable runnable) {
        unscheduleSelf(runnable);
    }

    public c(d.g.g.l.e eVar, android.content.res.Resources resources) {
        android.graphics.drawable.Drawable.ConstantState constantState;
        this.f1961d = eVar;
        if (eVar == null || (constantState = eVar.b) == null) {
            return;
        }
        a(constantState.newDrawable(resources));
    }
}
