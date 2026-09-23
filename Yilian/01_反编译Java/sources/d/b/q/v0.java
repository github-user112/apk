package d.b.q;

/* loaded from: classes.dex */
public class v0 {
    public final android.content.Context a;
    public final android.content.res.TypedArray b;

    /* renamed from: c, reason: collision with root package name */
    public android.util.TypedValue f1838c;

    public v0(android.content.Context context, android.content.res.TypedArray typedArray) {
        this.a = context;
        this.b = typedArray;
    }

    public static d.b.q.v0 n(android.content.Context context, android.util.AttributeSet attributeSet, int[] iArr) {
        return new d.b.q.v0(context, context.obtainStyledAttributes(attributeSet, iArr));
    }

    public static d.b.q.v0 o(android.content.Context context, android.util.AttributeSet attributeSet, int[] iArr, int i, int i2) {
        return new d.b.q.v0(context, context.obtainStyledAttributes(attributeSet, iArr, i, i2));
    }

    public boolean a(int i, boolean z) {
        return this.b.getBoolean(i, z);
    }

    public android.content.res.ColorStateList b(int i) {
        int resourceId;
        android.content.res.ColorStateList colorStateListA;
        return (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0 || (colorStateListA = d.b.l.a.a.a(this.a, resourceId)) == null) ? this.b.getColorStateList(i) : colorStateListA;
    }

    public int c(int i, int i2) {
        return this.b.getDimensionPixelOffset(i, i2);
    }

    public int d(int i, int i2) {
        return this.b.getDimensionPixelSize(i, i2);
    }

    public android.graphics.drawable.Drawable e(int i) {
        int resourceId;
        return (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) ? this.b.getDrawable(i) : d.b.l.a.a.b(this.a, resourceId);
    }

    public android.graphics.drawable.Drawable f(int i) {
        int resourceId;
        android.graphics.drawable.Drawable drawableG;
        if (!this.b.hasValue(i) || (resourceId = this.b.getResourceId(i, 0)) == 0) {
            return null;
        }
        d.b.q.i iVarA = d.b.q.i.a();
        android.content.Context context = this.a;
        synchronized (iVarA) {
            drawableG = iVarA.a.g(context, resourceId, true);
        }
        return drawableG;
    }

    public android.graphics.Typeface g(int i, int i2, d.g.f.b.h.c cVar) {
        int resourceId = this.b.getResourceId(i, 0);
        if (resourceId == 0) {
            return null;
        }
        if (this.f1838c == null) {
            this.f1838c = new android.util.TypedValue();
        }
        return d.g.f.b.h.c(this.a, resourceId, this.f1838c, i2, cVar);
    }

    public int h(int i, int i2) {
        return this.b.getInt(i, i2);
    }

    public int i(int i, int i2) {
        return this.b.getLayoutDimension(i, i2);
    }

    public int j(int i, int i2) {
        return this.b.getResourceId(i, i2);
    }

    public java.lang.String k(int i) {
        return this.b.getString(i);
    }

    public java.lang.CharSequence l(int i) {
        return this.b.getText(i);
    }

    public boolean m(int i) {
        return this.b.hasValue(i);
    }
}
