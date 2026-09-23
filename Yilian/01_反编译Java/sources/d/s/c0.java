package d.s;

/* loaded from: classes.dex */
public class c0 {
    public static final d.s.g0 a;
    public static java.lang.reflect.Field b;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f2254c;

    /* renamed from: d, reason: collision with root package name */
    public static final android.util.Property<android.view.View, java.lang.Float> f2255d;

    public static class a extends android.util.Property<android.view.View, java.lang.Float> {
        public a(java.lang.Class cls, java.lang.String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public java.lang.Float get(android.view.View view) {
            return java.lang.Float.valueOf(d.s.c0.b(view));
        }

        @Override // android.util.Property
        public void set(android.view.View view, java.lang.Float f2) {
            float fFloatValue = f2.floatValue();
            d.s.c0.a.e(view, fFloatValue);
        }
    }

    public static class b extends android.util.Property<android.view.View, android.graphics.Rect> {
        public b(java.lang.Class cls, java.lang.String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        public android.graphics.Rect get(android.view.View view) {
            return d.g.m.s.i(view);
        }

        @Override // android.util.Property
        public void set(android.view.View view, android.graphics.Rect rect) {
            d.g.m.s.P(view, rect);
        }
    }

    static {
        int i = android.os.Build.VERSION.SDK_INT;
        a = i >= 22 ? new d.s.f0() : i >= 21 ? new d.s.e0() : i >= 19 ? new d.s.d0() : new d.s.g0();
        f2255d = new d.s.c0.a(java.lang.Float.class, "translationAlpha");
        new d.s.c0.b(android.graphics.Rect.class, "clipBounds");
    }

    public static d.s.b0 a(android.view.View view) {
        return android.os.Build.VERSION.SDK_INT >= 18 ? new d.s.a0(view) : d.s.z.e(view);
    }

    public static float b(android.view.View view) {
        return a.b(view);
    }

    public static d.s.l0 c(android.view.View view) {
        return android.os.Build.VERSION.SDK_INT >= 18 ? new d.s.k0(view) : new d.s.j0(view.getWindowToken());
    }

    public static void d(android.view.View view, int i, int i2, int i3, int i4) {
        a.d(view, i, i2, i3, i4);
    }

    public static void e(android.view.View view, int i) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        if (!f2254c) {
            try {
                java.lang.reflect.Field declaredField = android.view.View.class.getDeclaredField("mViewFlags");
                b = declaredField;
                declaredField.setAccessible(true);
            } catch (java.lang.NoSuchFieldException unused) {
                android.util.Log.i("ViewUtils", "fetchViewFlagsField: ");
            }
            f2254c = true;
        }
        java.lang.reflect.Field field = b;
        if (field != null) {
            try {
                b.setInt(view, i | (field.getInt(view) & (-13)));
            } catch (java.lang.IllegalAccessException unused2) {
            }
        }
    }
}
