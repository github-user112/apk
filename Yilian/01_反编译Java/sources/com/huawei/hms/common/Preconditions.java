package com.huawei.hms.common;

/* loaded from: classes.dex */
public class Preconditions {
    public Preconditions() {
        throw new java.lang.AssertionError("illegal Argument");
    }

    public static void checkArgument(boolean z) {
        if (!z) {
            throw new java.lang.IllegalArgumentException();
        }
    }

    public static void checkArgument(boolean z, java.lang.Object obj) {
        if (!z) {
            throw new java.lang.IllegalArgumentException(java.lang.String.valueOf(obj));
        }
    }

    public static void checkArgument(boolean z, java.lang.String str, java.lang.Object... objArr) {
        if (!z) {
            throw new java.lang.IllegalArgumentException(java.lang.String.format(java.util.Locale.ROOT, str, objArr));
        }
    }

    public static void checkHandlerThread(android.os.Handler handler) {
        if (android.os.Looper.myLooper() != handler.getLooper()) {
            throw new java.lang.IllegalStateException("The given thread is not the current thread.");
        }
    }

    public static void checkMainThread(java.lang.String str) {
        if (!isMainThread()) {
            throw new java.lang.IllegalStateException(str);
        }
    }

    public static java.lang.String checkNotEmpty(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            throw new java.lang.IllegalArgumentException("The input parameter is empty.");
        }
        return str;
    }

    public static java.lang.String checkNotEmpty(java.lang.String str, java.lang.Object obj) {
        if (android.text.TextUtils.isEmpty(str)) {
            throw new java.lang.IllegalArgumentException(java.lang.String.valueOf(obj));
        }
        return str;
    }

    public static void checkNotMainThread() {
        checkNotMainThread("The given thread is main thread.");
    }

    public static void checkNotMainThread(java.lang.String str) {
        if (isMainThread()) {
            throw new java.lang.IllegalStateException(str);
        }
    }

    public static <T> T checkNotNull(T t) {
        if (t != null) {
            return t;
        }
        throw new java.lang.NullPointerException("The input parameter is null.");
    }

    public static <T> T checkNotNull(T t, java.lang.Object obj) {
        if (t != null) {
            return t;
        }
        throw new java.lang.NullPointerException(java.lang.String.valueOf(obj));
    }

    public static int checkNotZero(int i) {
        if (i != 0) {
            return i;
        }
        throw new java.lang.IllegalArgumentException("The input parameter is 0.");
    }

    public static int checkNotZero(int i, java.lang.Object obj) {
        if (i != 0) {
            return i;
        }
        throw new java.lang.IllegalArgumentException(java.lang.String.valueOf(obj));
    }

    public static long checkNotZero(long j) {
        if (j != 0) {
            return j;
        }
        throw new java.lang.IllegalArgumentException("The input parameter is 0.");
    }

    public static long checkNotZero(long j, java.lang.Object obj) {
        if (j != 0) {
            return j;
        }
        throw new java.lang.IllegalArgumentException(java.lang.String.valueOf(obj));
    }

    public static void checkState(boolean z) {
        if (!z) {
            throw new java.lang.IllegalStateException();
        }
    }

    public static void checkState(boolean z, java.lang.Object obj) {
        if (!z) {
            throw new java.lang.IllegalStateException(java.lang.String.valueOf(obj));
        }
    }

    public static void checkState(boolean z, java.lang.String str, java.lang.Object... objArr) {
        if (!z) {
            throw new java.lang.IllegalStateException(java.lang.String.format(java.util.Locale.ROOT, str, objArr));
        }
    }

    public static boolean isMainThread() {
        return android.os.Looper.getMainLooper() == android.os.Looper.myLooper();
    }
}
