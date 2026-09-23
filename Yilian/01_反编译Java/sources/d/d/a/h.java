package d.d.a;

/* loaded from: classes.dex */
public class h extends android.graphics.drawable.Drawable {

    /* renamed from: g, reason: collision with root package name */
    public static final double f1881g = java.lang.Math.cos(java.lang.Math.toRadians(45.0d));
    public static d.d.a.h.a h;
    public float a;
    public float b;

    /* renamed from: c, reason: collision with root package name */
    public float f1882c;

    /* renamed from: d, reason: collision with root package name */
    public android.content.res.ColorStateList f1883d;

    /* renamed from: e, reason: collision with root package name */
    public boolean f1884e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f1885f;

    public interface a {
    }

    public static float a(float f2, float f3, boolean z) {
        if (!z) {
            return f2;
        }
        double d2 = f2;
        double d3 = 1.0d - f1881g;
        double d4 = f3;
        java.lang.Double.isNaN(d4);
        java.lang.Double.isNaN(d2);
        return (float) ((d3 * d4) + d2);
    }

    public static float b(float f2, float f3, boolean z) {
        float f4 = f2 * 1.5f;
        if (!z) {
            return f4;
        }
        double d2 = f4;
        double d3 = 1.0d - f1881g;
        double d4 = f3;
        java.lang.Double.isNaN(d4);
        java.lang.Double.isNaN(d2);
        return (float) ((d3 * d4) + d2);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(android.graphics.Canvas canvas) {
        if (this.f1884e) {
            int i = getBounds().left;
            throw null;
        }
        canvas.translate(0.0f, this.f1882c / 2.0f);
        throw null;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(android.graphics.Rect rect) {
        int iCeil = (int) java.lang.Math.ceil(b(this.b, this.a, this.f1885f));
        int iCeil2 = (int) java.lang.Math.ceil(a(this.b, this.a, this.f1885f));
        rect.set(iCeil2, iCeil, iCeil2, iCeil);
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        android.content.res.ColorStateList colorStateList = this.f1883d;
        return (colorStateList != null && colorStateList.isStateful()) || super.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void onBoundsChange(android.graphics.Rect rect) {
        super.onBoundsChange(rect);
        this.f1884e = true;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onStateChange(int[] iArr) {
        android.content.res.ColorStateList colorStateList = this.f1883d;
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
}
