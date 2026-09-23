package d.g.m;

/* loaded from: classes.dex */
public class d {
    public static boolean a = false;
    public static java.lang.reflect.Method b = null;

    /* renamed from: c, reason: collision with root package name */
    public static boolean f1993c = false;

    /* renamed from: d, reason: collision with root package name */
    public static java.lang.reflect.Field f1994d;

    public interface a {
        boolean superDispatchKeyEvent(android.view.KeyEvent keyEvent);
    }

    public static boolean a(d.g.m.d.a aVar, android.view.View view, android.view.Window.Callback callback, android.view.KeyEvent keyEvent) throws java.lang.NoSuchFieldException {
        android.content.DialogInterface.OnKeyListener onKeyListener;
        boolean zBooleanValue = false;
        if (aVar == null) {
            return false;
        }
        if (android.os.Build.VERSION.SDK_INT >= 28) {
            return aVar.superDispatchKeyEvent(keyEvent);
        }
        if (callback instanceof android.app.Activity) {
            android.app.Activity activity = (android.app.Activity) callback;
            activity.onUserInteraction();
            android.view.Window window = activity.getWindow();
            if (window.hasFeature(8)) {
                android.app.ActionBar actionBar = activity.getActionBar();
                if (keyEvent.getKeyCode() == 82 && actionBar != null) {
                    if (!a) {
                        try {
                            b = actionBar.getClass().getMethod("onMenuKeyEvent", android.view.KeyEvent.class);
                        } catch (java.lang.NoSuchMethodException unused) {
                        }
                        a = true;
                    }
                    java.lang.reflect.Method method = b;
                    if (method != null) {
                        try {
                            zBooleanValue = ((java.lang.Boolean) method.invoke(actionBar, keyEvent)).booleanValue();
                        } catch (java.lang.IllegalAccessException | java.lang.reflect.InvocationTargetException unused2) {
                        }
                    }
                    if (zBooleanValue) {
                        return true;
                    }
                }
            }
            if (window.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            android.view.View decorView = window.getDecorView();
            if (d.g.m.s.d(decorView, keyEvent)) {
                return true;
            }
            return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
        }
        if (!(callback instanceof android.app.Dialog)) {
            return (view != null && d.g.m.s.d(view, keyEvent)) || aVar.superDispatchKeyEvent(keyEvent);
        }
        android.app.Dialog dialog = (android.app.Dialog) callback;
        if (!f1993c) {
            try {
                java.lang.reflect.Field declaredField = android.app.Dialog.class.getDeclaredField("mOnKeyListener");
                f1994d = declaredField;
                declaredField.setAccessible(true);
            } catch (java.lang.NoSuchFieldException unused3) {
            }
            f1993c = true;
        }
        java.lang.reflect.Field field = f1994d;
        if (field != null) {
            try {
                onKeyListener = (android.content.DialogInterface.OnKeyListener) field.get(dialog);
            } catch (java.lang.IllegalAccessException unused4) {
            }
        } else {
            onKeyListener = null;
        }
        if (onKeyListener != null && onKeyListener.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        android.view.Window window2 = dialog.getWindow();
        if (window2.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        android.view.View decorView2 = window2.getDecorView();
        if (d.g.m.s.d(decorView2, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(dialog, decorView2 != null ? decorView2.getKeyDispatcherState() : null, dialog);
    }
}
