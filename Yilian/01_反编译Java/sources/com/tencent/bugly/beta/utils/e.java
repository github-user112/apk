package com.tencent.bugly.beta.utils;

/* loaded from: classes.dex */
public class e {
    public static android.os.Handler a;

    public static android.os.Handler a() {
        if (a == null && android.os.Looper.getMainLooper() != null) {
            a = new android.os.Handler(android.os.Looper.getMainLooper());
        }
        return a;
    }

    public static void a(java.lang.Runnable runnable) {
        if (a() != null) {
            a.post(runnable);
        }
    }

    public static void a(java.lang.Runnable runnable, long j) {
        if (a() != null) {
            a.postDelayed(runnable, j);
        }
    }

    public static void b(java.lang.Runnable runnable) {
        if (a() != null) {
            a.removeCallbacks(runnable);
        }
    }
}
