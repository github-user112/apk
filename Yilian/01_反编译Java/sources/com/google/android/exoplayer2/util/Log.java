package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class Log {
    public static final int LOG_LEVEL_ALL = 0;
    public static final int LOG_LEVEL_ERROR = 3;
    public static final int LOG_LEVEL_INFO = 1;
    public static final int LOG_LEVEL_OFF = Integer.MAX_VALUE;
    public static final int LOG_LEVEL_WARNING = 2;
    public static int logLevel = 0;
    public static boolean logStackTraces = true;

    @org.checkerframework.dataflow.qual.Pure
    public static java.lang.String appendThrowableString(java.lang.String str, java.lang.Throwable th) {
        java.lang.String throwableString = getThrowableString(th);
        if (android.text.TextUtils.isEmpty(throwableString)) {
            return str;
        }
        java.lang.String strValueOf = java.lang.String.valueOf(str);
        java.lang.String strReplace = throwableString.replace("\n", "\n  ");
        java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(strReplace).length() + strValueOf.length() + 4);
        sb.append(strValueOf);
        sb.append("\n  ");
        sb.append(strReplace);
        sb.append('\n');
        return sb.toString();
    }

    @org.checkerframework.dataflow.qual.Pure
    public static void d(java.lang.String str, java.lang.String str2) {
        if (logLevel == 0) {
            android.util.Log.d(str, str2);
        }
    }

    @org.checkerframework.dataflow.qual.Pure
    public static void d(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        d(str, appendThrowableString(str2, th));
    }

    @org.checkerframework.dataflow.qual.Pure
    public static void e(java.lang.String str, java.lang.String str2) {
        if (logLevel <= 3) {
            android.util.Log.e(str, str2);
        }
    }

    @org.checkerframework.dataflow.qual.Pure
    public static void e(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        e(str, appendThrowableString(str2, th));
    }

    @org.checkerframework.dataflow.qual.Pure
    public static int getLogLevel() {
        return logLevel;
    }

    @org.checkerframework.dataflow.qual.Pure
    public static java.lang.String getThrowableString(java.lang.Throwable th) {
        if (th == null) {
            return null;
        }
        return isCausedByUnknownHostException(th) ? "UnknownHostException (no network)" : !logStackTraces ? th.getMessage() : android.util.Log.getStackTraceString(th).trim().replace("\t", "    ");
    }

    @org.checkerframework.dataflow.qual.Pure
    public static void i(java.lang.String str, java.lang.String str2) {
        if (logLevel <= 1) {
            android.util.Log.i(str, str2);
        }
    }

    @org.checkerframework.dataflow.qual.Pure
    public static void i(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        i(str, appendThrowableString(str2, th));
    }

    @org.checkerframework.dataflow.qual.Pure
    public static boolean isCausedByUnknownHostException(java.lang.Throwable th) {
        while (th != null) {
            if (th instanceof java.net.UnknownHostException) {
                return true;
            }
            th = th.getCause();
        }
        return false;
    }

    public static void setLogLevel(int i) {
        logLevel = i;
    }

    public static void setLogStackTraces(boolean z) {
        logStackTraces = z;
    }

    @org.checkerframework.dataflow.qual.Pure
    public static void w(java.lang.String str, java.lang.String str2) {
        if (logLevel <= 2) {
            android.util.Log.w(str, str2);
        }
    }

    @org.checkerframework.dataflow.qual.Pure
    public static void w(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        w(str, appendThrowableString(str2, th));
    }
}
