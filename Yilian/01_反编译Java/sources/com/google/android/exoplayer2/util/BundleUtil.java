package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class BundleUtil {
    public static final java.lang.String TAG = "BundleUtil";
    public static java.lang.reflect.Method getIBinderMethod;
    public static java.lang.reflect.Method putIBinderMethod;

    public static android.os.IBinder getBinder(android.os.Bundle bundle, java.lang.String str) {
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 18 ? bundle.getBinder(str) : getBinderByReflection(bundle, str);
    }

    public static android.os.IBinder getBinderByReflection(android.os.Bundle bundle, java.lang.String str) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        java.lang.String str2;
        java.lang.reflect.Method method = getIBinderMethod;
        if (method != null) {
            return (android.os.IBinder) method.invoke(bundle, str);
        }
        try {
            java.lang.reflect.Method method2 = android.os.Bundle.class.getMethod("getIBinder", java.lang.String.class);
            getIBinderMethod = method2;
            method2.setAccessible(true);
            method = getIBinderMethod;
            try {
                return (android.os.IBinder) method.invoke(bundle, str);
            } catch (java.lang.IllegalAccessException | java.lang.IllegalArgumentException | java.lang.reflect.InvocationTargetException e2) {
                e = e2;
                str2 = "Failed to invoke getIBinder via reflection";
            }
        } catch (java.lang.NoSuchMethodException e3) {
            e = e3;
            str2 = "Failed to retrieve getIBinder method";
        }
        com.google.android.exoplayer2.util.Log.i(TAG, str2, e);
        return null;
    }

    public static void putBinder(android.os.Bundle bundle, java.lang.String str, android.os.IBinder iBinder) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 18) {
            bundle.putBinder(str, iBinder);
        } else {
            putBinderByReflection(bundle, str, iBinder);
        }
    }

    public static void putBinderByReflection(android.os.Bundle bundle, java.lang.String str, android.os.IBinder iBinder) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        java.lang.reflect.Method method = putIBinderMethod;
        if (method == null) {
            try {
                java.lang.reflect.Method method2 = android.os.Bundle.class.getMethod("putIBinder", java.lang.String.class, android.os.IBinder.class);
                putIBinderMethod = method2;
                method2.setAccessible(true);
                method = putIBinderMethod;
            } catch (java.lang.NoSuchMethodException e2) {
                com.google.android.exoplayer2.util.Log.i(TAG, "Failed to retrieve putIBinder method", e2);
                return;
            }
        }
        try {
            method.invoke(bundle, str, iBinder);
        } catch (java.lang.IllegalAccessException | java.lang.IllegalArgumentException | java.lang.reflect.InvocationTargetException e3) {
            com.google.android.exoplayer2.util.Log.i(TAG, "Failed to invoke putIBinder via reflection", e3);
        }
    }
}
