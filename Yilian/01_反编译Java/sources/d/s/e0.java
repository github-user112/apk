package d.s;

/* loaded from: classes.dex */
public class e0 extends d.s.d0 {

    /* renamed from: e, reason: collision with root package name */
    public static java.lang.reflect.Method f2263e;

    /* renamed from: f, reason: collision with root package name */
    public static boolean f2264f;

    /* renamed from: g, reason: collision with root package name */
    public static java.lang.reflect.Method f2265g;
    public static boolean h;

    @Override // d.s.g0
    public void f(android.view.View view, android.graphics.Matrix matrix) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (!f2264f) {
            try {
                java.lang.reflect.Method declaredMethod = android.view.View.class.getDeclaredMethod("transformMatrixToGlobal", android.graphics.Matrix.class);
                f2263e = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (java.lang.NoSuchMethodException e2) {
                android.util.Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToGlobal method", e2);
            }
            f2264f = true;
        }
        java.lang.reflect.Method method = f2263e;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (java.lang.IllegalAccessException unused) {
            } catch (java.lang.reflect.InvocationTargetException e3) {
                throw new java.lang.RuntimeException(e3.getCause());
            }
        }
    }

    @Override // d.s.g0
    public void g(android.view.View view, android.graphics.Matrix matrix) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (!h) {
            try {
                java.lang.reflect.Method declaredMethod = android.view.View.class.getDeclaredMethod("transformMatrixToLocal", android.graphics.Matrix.class);
                f2265g = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (java.lang.NoSuchMethodException e2) {
                android.util.Log.i("ViewUtilsApi21", "Failed to retrieve transformMatrixToLocal method", e2);
            }
            h = true;
        }
        java.lang.reflect.Method method = f2265g;
        if (method != null) {
            try {
                method.invoke(view, matrix);
            } catch (java.lang.IllegalAccessException unused) {
            } catch (java.lang.reflect.InvocationTargetException e3) {
                throw new java.lang.RuntimeException(e3.getCause());
            }
        }
    }
}
