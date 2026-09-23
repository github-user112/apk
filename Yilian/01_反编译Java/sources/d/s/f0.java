package d.s;

/* loaded from: classes.dex */
public class f0 extends d.s.e0 {
    public static java.lang.reflect.Method i;
    public static boolean j;

    @Override // d.s.g0
    public void d(android.view.View view, int i2, int i3, int i4, int i5) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (!j) {
            try {
                java.lang.reflect.Method declaredMethod = android.view.View.class.getDeclaredMethod("setLeftTopRightBottom", java.lang.Integer.TYPE, java.lang.Integer.TYPE, java.lang.Integer.TYPE, java.lang.Integer.TYPE);
                i = declaredMethod;
                declaredMethod.setAccessible(true);
            } catch (java.lang.NoSuchMethodException e2) {
                android.util.Log.i("ViewUtilsApi22", "Failed to retrieve setLeftTopRightBottom method", e2);
            }
            j = true;
        }
        java.lang.reflect.Method method = i;
        if (method != null) {
            try {
                method.invoke(view, java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(i3), java.lang.Integer.valueOf(i4), java.lang.Integer.valueOf(i5));
            } catch (java.lang.IllegalAccessException unused) {
            } catch (java.lang.reflect.InvocationTargetException e3) {
                throw new java.lang.RuntimeException(e3.getCause());
            }
        }
    }
}
