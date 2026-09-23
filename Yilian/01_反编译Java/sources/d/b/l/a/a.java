package d.b.l.a;

@android.annotation.SuppressLint({"RestrictedAPI"})
/* loaded from: classes.dex */
public final class a {
    public static final java.lang.ThreadLocal<android.util.TypedValue> a = new java.lang.ThreadLocal<>();
    public static final java.util.WeakHashMap<android.content.Context, android.util.SparseArray<d.b.l.a.a.C0033a>> b = new java.util.WeakHashMap<>(0);

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.Object f1662c = new java.lang.Object();

    /* renamed from: d.b.l.a.a$a, reason: collision with other inner class name */
    public static class C0033a {
        public final android.content.res.ColorStateList a;
        public final android.content.res.Configuration b;

        public C0033a(android.content.res.ColorStateList colorStateList, android.content.res.Configuration configuration) {
            this.a = colorStateList;
            this.b = configuration;
        }
    }

    public static android.content.res.ColorStateList a(android.content.Context context, int i) throws android.content.res.Resources.NotFoundException {
        android.content.res.ColorStateList colorStateListA;
        android.content.res.ColorStateList colorStateList;
        d.b.l.a.a.C0033a c0033a;
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            return context.getColorStateList(i);
        }
        synchronized (f1662c) {
            android.util.SparseArray<d.b.l.a.a.C0033a> sparseArray = b.get(context);
            colorStateListA = null;
            if (sparseArray == null || sparseArray.size() <= 0 || (c0033a = sparseArray.get(i)) == null) {
                colorStateList = null;
            } else if (c0033a.b.equals(context.getResources().getConfiguration())) {
                colorStateList = c0033a.a;
            } else {
                sparseArray.remove(i);
                colorStateList = null;
            }
        }
        if (colorStateList != null) {
            return colorStateList;
        }
        android.content.res.Resources resources = context.getResources();
        android.util.TypedValue typedValue = a.get();
        if (typedValue == null) {
            typedValue = new android.util.TypedValue();
            a.set(typedValue);
        }
        resources.getValue(i, typedValue, true);
        int i2 = typedValue.type;
        if (!(i2 >= 28 && i2 <= 31)) {
            android.content.res.Resources resources2 = context.getResources();
            try {
                colorStateListA = d.g.f.b.a.a(resources2, resources2.getXml(i), context.getTheme());
            } catch (java.lang.Exception e2) {
                android.util.Log.e("AppCompatResources", "Failed to inflate ColorStateList, leaving it to the framework", e2);
            }
        }
        if (colorStateListA == null) {
            return d.g.f.a.c(context, i);
        }
        synchronized (f1662c) {
            android.util.SparseArray<d.b.l.a.a.C0033a> sparseArray2 = b.get(context);
            if (sparseArray2 == null) {
                sparseArray2 = new android.util.SparseArray<>();
                b.put(context, sparseArray2);
            }
            sparseArray2.append(i, new d.b.l.a.a.C0033a(colorStateListA, context.getResources().getConfiguration()));
        }
        return colorStateListA;
    }

    public static android.graphics.drawable.Drawable b(android.content.Context context, int i) {
        return d.b.q.l0.d().f(context, i);
    }
}
