package d.d.a;

/* loaded from: classes.dex */
public class g extends android.graphics.drawable.Drawable {
    public float a;
    public float b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1876c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1877d;

    /* renamed from: e, reason: collision with root package name */
    public android.content.res.ColorStateList f1878e;

    /* renamed from: f, reason: collision with root package name */
    public android.graphics.PorterDuffColorFilter f1879f;

    /* renamed from: g, reason: collision with root package name */
    public android.content.res.ColorStateList f1880g;
    public android.graphics.PorterDuff.Mode h;

    public final android.graphics.PorterDuffColorFilter a(android.content.res.ColorStateList colorStateList, android.graphics.PorterDuff.Mode mode) {
        if (colorStateList == null || mode == null) {
            return null;
        }
        return new android.graphics.PorterDuffColorFilter(colorStateList.getColorForState(getState(), 0), mode);
    }

    public final void b(android.graphics.Rect rect) {
        if (rect == null) {
            rect = getBounds();
        }
        int i = rect.left;
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(android.graphics.Canvas canvas) {
        if (this.f1879f != null) {
            throw null;
        }
        float f2 = this.a;
        canvas.drawRoundRect(null, f2, f2, null);
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public void getOutline(android.graphics.Outline outline) {
        outline.setRoundRect(null, this.a);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        android.content.res.ColorStateList colorStateList;
        android.content.res.ColorStateList colorStateList2 = this.f1880g;
        return (colorStateList2 != null && colorStateList2.isStateful()) || ((colorStateList = this.f1878e) != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(android.graphics.Rect rect) {
        super.onBoundsChange(rect);
        b(rect);
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        android.content.res.ColorStateList colorStateList = this.f1878e;
        colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(android.graphics.ColorFilter colorFilter) {
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintList(android.content.res.ColorStateList colorStateList) {
        this.f1880g = colorStateList;
        this.f1879f = a(colorStateList, this.h);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setTintMode(android.graphics.PorterDuff.Mode mode) {
        this.h = mode;
        this.f1879f = a(this.f1880g, mode);
        invalidateSelf();
    }
}
