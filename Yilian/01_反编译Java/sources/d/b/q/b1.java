package d.b.q;

/* loaded from: classes.dex */
public class b1 {
    public static java.lang.reflect.Method a;

    static {
        if (android.os.Build.VERSION.SDK_INT >= 18) {
            try {
                java.lang.reflect.Method declaredMethod = android.view.View.class.getDeclaredMethod("computeFitSystemWindows", android.graphics.Rect.class, android.graphics.Rect.class);
                a = declaredMethod;
                if (declaredMethod.isAccessible()) {
                    return;
                }
                a.setAccessible(true);
            } catch (java.lang.NoSuchMethodException unused) {
                android.util.Log.d("ViewUtils", "Could not find method computeFitSystemWindows. Oh well.");
            }
        }
    }

    public static void a(android.view.View view, android.graphics.Rect rect, android.graphics.Rect rect2) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.lang.reflect.Method method = a;
        if (method != null) {
            try {
                method.invoke(view, rect, rect2);
            } catch (java.lang.Exception e2) {
                android.util.Log.d("ViewUtils", "Could not invoke computeFitSystemWindows", e2);
            }
        }
    }

    public static boolean b(android.view.View view) {
        return d.g.m.s.o(view) == 1;
    }

    public static void c(android.view.View view) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        try {
            java.lang.reflect.Method method = view.getClass().getMethod("makeOptionalFitsSystemWindows", new java.lang.Class[0]);
            if (!method.isAccessible()) {
                method.setAccessible(true);
            }
            method.invoke(view, new java.lang.Object[0]);
        } catch (java.lang.IllegalAccessException e2) {
            e = e2;
            android.util.Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e);
        } catch (java.lang.NoSuchMethodException unused) {
            android.util.Log.d("ViewUtils", "Could not find method makeOptionalFitsSystemWindows. Oh well...");
        } catch (java.lang.reflect.InvocationTargetException e3) {
            e = e3;
            android.util.Log.d("ViewUtils", "Could not invoke makeOptionalFitsSystemWindows", e);
        }
    }
}
