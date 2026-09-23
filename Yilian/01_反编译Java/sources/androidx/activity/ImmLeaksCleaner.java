package androidx.activity;

/* loaded from: classes.dex */
public final class ImmLeaksCleaner implements d.l.f {
    public static int b;

    /* renamed from: c, reason: collision with root package name */
    public static java.lang.reflect.Field f2c;

    /* renamed from: d, reason: collision with root package name */
    public static java.lang.reflect.Field f3d;

    /* renamed from: e, reason: collision with root package name */
    public static java.lang.reflect.Field f4e;
    public android.app.Activity a;

    public ImmLeaksCleaner(android.app.Activity activity) {
        this.a = activity;
    }

    @Override // d.l.f
    public void d(d.l.h hVar, d.l.e.a aVar) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        if (aVar != d.l.e.a.ON_DESTROY) {
            return;
        }
        if (b == 0) {
            try {
                b = 2;
                java.lang.reflect.Field declaredField = android.view.inputmethod.InputMethodManager.class.getDeclaredField("mServedView");
                f3d = declaredField;
                declaredField.setAccessible(true);
                java.lang.reflect.Field declaredField2 = android.view.inputmethod.InputMethodManager.class.getDeclaredField("mNextServedView");
                f4e = declaredField2;
                declaredField2.setAccessible(true);
                java.lang.reflect.Field declaredField3 = android.view.inputmethod.InputMethodManager.class.getDeclaredField("mH");
                f2c = declaredField3;
                declaredField3.setAccessible(true);
                b = 1;
            } catch (java.lang.NoSuchFieldException unused) {
            }
        }
        if (b == 1) {
            android.view.inputmethod.InputMethodManager inputMethodManager = (android.view.inputmethod.InputMethodManager) this.a.getSystemService("input_method");
            try {
                java.lang.Object obj = f2c.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            android.view.View view = (android.view.View) f3d.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                f4e.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (java.lang.IllegalAccessException unused2) {
                            }
                        } catch (java.lang.Throwable th) {
                            throw th;
                        }
                    } catch (java.lang.ClassCastException unused3) {
                    } catch (java.lang.IllegalAccessException unused4) {
                    }
                }
            } catch (java.lang.IllegalAccessException unused5) {
            }
        }
    }
}
