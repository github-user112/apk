package d.d.a;

/* loaded from: classes.dex */
public class a extends android.widget.FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public static final d.d.a.f f1875c;
    public boolean a;
    public boolean b;

    static {
        int i = android.os.Build.VERSION.SDK_INT;
        d.d.a.f cVar = i >= 21 ? new d.d.a.c() : i >= 17 ? new d.d.a.b() : new d.d.a.d();
        f1875c = cVar;
        cVar.e();
    }

    public android.content.res.ColorStateList getCardBackgroundColor() {
        return f1875c.b(null);
    }

    public float getCardElevation() {
        return f1875c.d(null);
    }

    public int getContentPaddingBottom() {
        throw null;
    }

    public int getContentPaddingLeft() {
        throw null;
    }

    public int getContentPaddingRight() {
        throw null;
    }

    public int getContentPaddingTop() {
        throw null;
    }

    public float getMaxCardElevation() {
        return f1875c.a(null);
    }

    public boolean getPreventCornerOverlap() {
        return this.b;
    }

    public float getRadius() {
        return f1875c.f(null);
    }

    public boolean getUseCompatPadding() {
        return this.a;
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        if (!(f1875c instanceof d.d.a.c)) {
            int mode = android.view.View.MeasureSpec.getMode(i);
            if (mode == Integer.MIN_VALUE || mode == 1073741824) {
                i = android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.max((int) java.lang.Math.ceil(f1875c.h(null)), android.view.View.MeasureSpec.getSize(i)), mode);
            }
            int mode2 = android.view.View.MeasureSpec.getMode(i2);
            if (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) {
                i2 = android.view.View.MeasureSpec.makeMeasureSpec(java.lang.Math.max((int) java.lang.Math.ceil(f1875c.g(null)), android.view.View.MeasureSpec.getSize(i2)), mode2);
            }
        }
        super.onMeasure(i, i2);
    }

    public void setCardBackgroundColor(int i) {
        f1875c.l(null, android.content.res.ColorStateList.valueOf(i));
    }

    public void setCardBackgroundColor(android.content.res.ColorStateList colorStateList) {
        f1875c.l(null, colorStateList);
    }

    public void setCardElevation(float f2) {
        f1875c.j(null, f2);
    }

    public void setMaxCardElevation(float f2) {
        f1875c.m(null, f2);
    }

    @Override // android.view.View
    public void setMinimumHeight(int i) {
        super.setMinimumHeight(i);
    }

    @Override // android.view.View
    public void setMinimumWidth(int i) {
        super.setMinimumWidth(i);
    }

    @Override // android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
    }

    @Override // android.view.View
    public void setPaddingRelative(int i, int i2, int i3, int i4) {
    }

    public void setPreventCornerOverlap(boolean z) {
        if (z != this.b) {
            this.b = z;
            f1875c.k(null);
        }
    }

    public void setRadius(float f2) {
        f1875c.c(null, f2);
    }

    public void setUseCompatPadding(boolean z) {
        if (this.a != z) {
            this.a = z;
            f1875c.i(null);
        }
    }
}
