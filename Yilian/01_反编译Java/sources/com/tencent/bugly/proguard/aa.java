package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class aa {
    public static java.lang.String a = "CrashReportInfo";
    public static java.lang.String b = "CrashReport";

    /* renamed from: c, reason: collision with root package name */
    public static boolean f1105c = false;

    public static boolean a(int i, java.lang.String str, java.lang.Object... objArr) {
        if (!f1105c) {
            return false;
        }
        java.lang.String strF = f(str, objArr);
        if (i == 0) {
            android.util.Log.i(b, strF);
            return true;
        }
        if (i == 1) {
            android.util.Log.d(b, strF);
            return true;
        }
        if (i == 2) {
            android.util.Log.w(b, strF);
            return true;
        }
        if (i == 3) {
            android.util.Log.e(b, strF);
            return true;
        }
        if (i != 5) {
            return false;
        }
        android.util.Log.i(a, strF);
        return true;
    }

    public static boolean a(int i, java.lang.Throwable th) {
        if (f1105c) {
            return a(i, com.tencent.bugly.proguard.ha.b(th), new java.lang.Object[0]);
        }
        return false;
    }

    public static boolean a(java.lang.Class cls, java.lang.String str, java.lang.Object... objArr) {
        return a(1, java.lang.String.format(java.util.Locale.US, "[%s] %s", cls.getSimpleName(), str), objArr);
    }

    public static boolean a(java.lang.String str, java.lang.Object... objArr) {
        return a(1, str, objArr);
    }

    public static boolean a(java.lang.Throwable th) {
        return a(3, th);
    }

    public static boolean b(java.lang.Class cls, java.lang.String str, java.lang.Object... objArr) {
        return a(3, java.lang.String.format(java.util.Locale.US, "[%s] %s", cls.getSimpleName(), str), objArr);
    }

    public static boolean b(java.lang.String str, java.lang.Object... objArr) {
        return a(3, str, objArr);
    }

    public static boolean b(java.lang.Throwable th) {
        return a(2, th);
    }

    public static boolean c(java.lang.Class cls, java.lang.String str, java.lang.Object... objArr) {
        return a(0, java.lang.String.format(java.util.Locale.US, "[%s] %s", cls.getSimpleName(), str), objArr);
    }

    public static boolean c(java.lang.String str, java.lang.Object... objArr) {
        return a(0, str, objArr);
    }

    public static boolean d(java.lang.String str, java.lang.Object... objArr) {
        return a(5, str, objArr);
    }

    public static boolean e(java.lang.String str, java.lang.Object... objArr) {
        return a(2, str, objArr);
    }

    public static java.lang.String f(java.lang.String str, java.lang.Object... objArr) {
        return str == null ? "null" : (objArr == null || objArr.length == 0) ? str : java.lang.String.format(java.util.Locale.US, str, objArr);
    }
}
