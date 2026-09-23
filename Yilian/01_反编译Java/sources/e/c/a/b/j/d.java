package e.c.a.b.j;

/* loaded from: classes.dex */
public class d extends android.util.Property<android.graphics.drawable.Drawable, java.lang.Integer> {
    public static final android.util.Property<android.graphics.drawable.Drawable, java.lang.Integer> b = new e.c.a.b.j.d();
    public final java.util.WeakHashMap<android.graphics.drawable.Drawable, java.lang.Integer> a;

    public d() {
        super(java.lang.Integer.class, "drawableAlphaCompat");
        this.a = new java.util.WeakHashMap<>();
    }

    @Override // android.util.Property
    public java.lang.Integer get(android.graphics.drawable.Drawable drawable) {
        int alpha;
        android.graphics.drawable.Drawable drawable2 = drawable;
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            alpha = drawable2.getAlpha();
        } else {
            if (this.a.containsKey(drawable2)) {
                return this.a.get(drawable2);
            }
            alpha = 255;
        }
        return java.lang.Integer.valueOf(alpha);
    }

    @Override // android.util.Property
    public void set(android.graphics.drawable.Drawable drawable, java.lang.Integer num) {
        android.graphics.drawable.Drawable drawable2 = drawable;
        java.lang.Integer num2 = num;
        if (android.os.Build.VERSION.SDK_INT < 19) {
            this.a.put(drawable2, num2);
        }
        drawable2.setAlpha(num2.intValue());
    }
}
