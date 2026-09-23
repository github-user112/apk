package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class z {
    public static com.umeng.analytics.pro.y a = null;
    public static boolean b = false;

    public static synchronized java.lang.String a(android.content.Context context) {
        try {
            if (context == null) {
                throw new java.lang.RuntimeException("Context is null");
            }
            if (android.os.Looper.myLooper() == android.os.Looper.getMainLooper()) {
                throw new java.lang.IllegalStateException("Cannot be called from the main thread");
            }
            b(context);
            if (a != null) {
                try {
                    return a.a(context);
                } catch (java.lang.Exception unused) {
                }
            }
            return null;
        } catch (java.lang.Throwable th) {
            throw th;
        }
    }

    public static void b(android.content.Context context) {
        if (a != null || b) {
            return;
        }
        synchronized (com.umeng.analytics.pro.z.class) {
            if (a == null && !b) {
                a = com.umeng.analytics.pro.aa.a(context);
                b = true;
            }
        }
    }
}
