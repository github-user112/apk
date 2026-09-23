package d.s;

/* loaded from: classes.dex */
public class d0 extends d.s.g0 {
    public static java.lang.reflect.Method a;
    public static boolean b;

    /* renamed from: c, reason: collision with root package name */
    public static java.lang.reflect.Method f2256c;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f2257d;

    @Override // d.s.g0
    public void a(android.view.View view) {
    }

    @Override // d.s.g0
    public float b(android.view.View view) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        if (!f2257d) {
            try {
                java.lang.reflect.Method declaredMethod = android.view.View.class.getDeclaredMethod("getTransitionAlpha", new java.lang.Class[0]);
                f2256c = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (java.lang.NoSuchMethodException e2) {
                android.util.Log.i("ViewUtilsApi19", "Failed to retrieve getTransitionAlpha method", e2);
            }
            f2257d = true;
        }
        java.lang.reflect.Method method = f2256c;
        if (method != null) {
            try {
                return ((java.lang.Float) method.invoke(view, new java.lang.Object[0])).floatValue();
            } catch (java.lang.IllegalAccessException unused) {
            } catch (java.lang.reflect.InvocationTargetException e3) {
                throw new java.lang.RuntimeException(e3.getCause());
            }
        }
        return super.b(view);
    }

    @Override // d.s.g0
    public void c(android.view.View view) {
    }

    @Override // d.s.g0
    public void e(android.view.View view, float f2) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (!b) {
            try {
                java.lang.reflect.Method declaredMethod = android.view.View.class.getDeclaredMethod("setTransitionAlpha", java.lang.Float.TYPE);
                a = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (java.lang.NoSuchMethodException e2) {
                android.util.Log.i("ViewUtilsApi19", "Failed to retrieve setTransitionAlpha method", e2);
            }
            b = true;
        }
        java.lang.reflect.Method method = a;
        if (method == null) {
            view.setAlpha(f2);
            return;
        }
        try {
            method.invoke(view, java.lang.Float.valueOf(f2));
        } catch (java.lang.IllegalAccessException unused) {
        } catch (java.lang.reflect.InvocationTargetException e3) {
            throw new java.lang.RuntimeException(e3.getCause());
        }
    }
}
