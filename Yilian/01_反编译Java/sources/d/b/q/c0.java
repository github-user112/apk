package d.b.q;

@android.annotation.SuppressLint({"RestrictedAPI"})
/* loaded from: classes.dex */
public class c0 {
    public static final int[] a = {android.R.attr.state_checked};
    public static final int[] b = new int[0];

    /* renamed from: c, reason: collision with root package name */
    public static final android.graphics.Rect f1760c = new android.graphics.Rect();

    /* renamed from: d, reason: collision with root package name */
    public static java.lang.Class<?> f1761d;

    static {
        if (android.os.Build.VERSION.SDK_INT >= 18) {
            try {
                f1761d = java.lang.Class.forName("android.graphics.Insets");
            } catch (java.lang.ClassNotFoundException unused) {
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(android.graphics.drawable.Drawable drawable) {
        android.graphics.drawable.Drawable drawable2;
        if (android.os.Build.VERSION.SDK_INT < 17 && (drawable instanceof android.graphics.drawable.LayerDrawable)) {
            return false;
        }
        if (!(drawable instanceof android.graphics.drawable.DrawableContainer)) {
            if (drawable instanceof d.g.g.l.b) {
                drawable2 = ((d.g.g.l.b) drawable).b();
            } else {
                if (drawable instanceof d.b.m.a.c) {
                    return a(((d.b.m.a.c) drawable).a);
                }
                if (!(drawable instanceof android.graphics.drawable.ScaleDrawable)) {
                    return true;
                }
                drawable2 = ((android.graphics.drawable.ScaleDrawable) drawable).getDrawable();
            }
            return a(drawable2);
        }
        android.graphics.drawable.Drawable.ConstantState constantState = drawable.getConstantState();
        if (!(constantState instanceof android.graphics.drawable.DrawableContainer.DrawableContainerState)) {
            return true;
        }
        for (android.graphics.drawable.Drawable drawable3 : ((android.graphics.drawable.DrawableContainer.DrawableContainerState) constantState).getChildren()) {
            if (!a(drawable3)) {
                return false;
            }
        }
        return true;
    }

    public static void b(android.graphics.drawable.Drawable drawable) {
        if (android.os.Build.VERSION.SDK_INT == 21 && "android.graphics.drawable.VectorDrawable".equals(drawable.getClass().getName())) {
            int[] state = drawable.getState();
            if (state == null || state.length == 0) {
                drawable.setState(a);
            } else {
                drawable.setState(b);
            }
            drawable.setState(state);
        }
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Multi-variable type inference failed */
    public static android.graphics.Rect c(android.graphics.drawable.Drawable drawable) throws java.lang.IllegalAccessException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            android.graphics.Insets opticalInsets = drawable.getOpticalInsets();
            android.graphics.Rect rect = new android.graphics.Rect();
            rect.left = opticalInsets.left;
            rect.right = opticalInsets.right;
            rect.top = opticalInsets.top;
            rect.bottom = opticalInsets.bottom;
            return rect;
        }
        if (f1761d != null) {
            try {
                boolean z = drawable instanceof d.g.g.l.b;
                android.graphics.drawable.Drawable drawableB = drawable;
                if (z) {
                    drawableB = ((d.g.g.l.b) drawable).b();
                }
                java.lang.Object objInvoke = drawableB.getClass().getMethod("getOpticalInsets", new java.lang.Class[0]).invoke(drawableB, new java.lang.Object[0]);
                if (objInvoke != null) {
                    android.graphics.Rect rect2 = new android.graphics.Rect();
                    for (java.lang.reflect.Field field : f1761d.getFields()) {
                        java.lang.String name = field.getName();
                        char c2 = 65535;
                        switch (name.hashCode()) {
                            case -1383228885:
                                if (name.equals("bottom")) {
                                    c2 = 3;
                                    break;
                                }
                                break;
                            case 115029:
                                if (name.equals("top")) {
                                    c2 = 1;
                                    break;
                                }
                                break;
                            case 3317767:
                                if (name.equals(com.google.android.exoplayer2.text.ttml.TtmlNode.LEFT)) {
                                    c2 = 0;
                                    break;
                                }
                                break;
                            case 108511772:
                                if (name.equals(com.google.android.exoplayer2.text.ttml.TtmlNode.RIGHT)) {
                                    c2 = 2;
                                    break;
                                }
                                break;
                        }
                        if (c2 == 0) {
                            rect2.left = field.getInt(objInvoke);
                        } else if (c2 == 1) {
                            rect2.top = field.getInt(objInvoke);
                        } else if (c2 == 2) {
                            rect2.right = field.getInt(objInvoke);
                        } else if (c2 == 3) {
                            rect2.bottom = field.getInt(objInvoke);
                        }
                    }
                    return rect2;
                }
            } catch (java.lang.Exception unused) {
                android.util.Log.e("DrawableUtils", "Couldn't obtain the optical insets. Ignoring.");
            }
        }
        return f1760c;
    }

    public static android.graphics.PorterDuff.Mode d(int i, android.graphics.PorterDuff.Mode mode) {
        if (i == 3) {
            return android.graphics.PorterDuff.Mode.SRC_OVER;
        }
        if (i == 5) {
            return android.graphics.PorterDuff.Mode.SRC_IN;
        }
        if (i == 9) {
            return android.graphics.PorterDuff.Mode.SRC_ATOP;
        }
        switch (i) {
            case 14:
                return android.graphics.PorterDuff.Mode.MULTIPLY;
            case 15:
                return android.graphics.PorterDuff.Mode.SCREEN;
            case 16:
                return android.graphics.PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
