package d.g.m;

/* loaded from: classes.dex */
public final class u {
    public static java.lang.reflect.Method a;

    static {
        if (android.os.Build.VERSION.SDK_INT == 25) {
            try {
                a = android.view.ViewConfiguration.class.getDeclaredMethod("getScaledScrollFactor", new java.lang.Class[0]);
            } catch (java.lang.Exception unused) {
                android.util.Log.i("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
    }

    public static float a(android.view.ViewConfiguration viewConfiguration, android.content.Context context) {
        java.lang.reflect.Method method;
        if (android.os.Build.VERSION.SDK_INT >= 25 && (method = a) != null) {
            try {
                return ((java.lang.Integer) method.invoke(viewConfiguration, new java.lang.Object[0])).intValue();
            } catch (java.lang.Exception unused) {
                android.util.Log.i("ViewConfigCompat", "Could not find method getScaledScrollFactor() on ViewConfiguration");
            }
        }
        android.util.TypedValue typedValue = new android.util.TypedValue();
        if (context.getTheme().resolveAttribute(android.R.attr.listPreferredItemHeight, typedValue, true)) {
            return typedValue.getDimension(context.getResources().getDisplayMetrics());
        }
        return 0.0f;
    }

    public static float b(android.view.ViewConfiguration viewConfiguration, android.content.Context context) {
        return android.os.Build.VERSION.SDK_INT >= 26 ? viewConfiguration.getScaledHorizontalScrollFactor() : a(viewConfiguration, context);
    }

    public static int c(android.view.ViewConfiguration viewConfiguration) {
        return android.os.Build.VERSION.SDK_INT >= 28 ? viewConfiguration.getScaledHoverSlop() : viewConfiguration.getScaledTouchSlop() / 2;
    }

    public static boolean d(android.view.ViewConfiguration viewConfiguration, android.content.Context context) {
        if (android.os.Build.VERSION.SDK_INT >= 28) {
            return viewConfiguration.shouldShowMenuShortcutsWhenKeyboardPresent();
        }
        android.content.res.Resources resources = context.getResources();
        int identifier = resources.getIdentifier("config_showMenuShortcutsWhenKeyboardPresent", "bool", "android");
        return identifier != 0 && resources.getBoolean(identifier);
    }
}
