package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class Logger {
    public static final boolean DEBUG = false;
    public static final int MAX_STACK_DEEP_LENGTH = 20;
    public static final int MAX_STACK_DEEP_LENGTH_NORMAL = 8;
    public static final java.lang.String SPLIT = "|";
    public static final java.lang.String TAG = "NetworkKit_Logger";
    public static final java.lang.String TAG_NETWORKKIT_PRE = "NetworkKit_";
    public static final java.lang.String TAG_NETWORK_SDK_PRE = "NetworkSdk_";
    public static com.huawei.hms.framework.common.ExtLogger extLogger = null;
    public static boolean println = true;

    public static class ThrowableWrapper extends java.lang.Throwable {
        public static final long serialVersionUID = 7129050843360571879L;
        public java.lang.String message;
        public java.lang.Throwable ownerThrowable;
        public java.lang.Throwable thisCause;

        public ThrowableWrapper(java.lang.Throwable th) {
            this.ownerThrowable = th;
            java.lang.StackTraceElement[] stackTrace = th.getStackTrace();
            int i = ((th instanceof java.io.IOException) || (th instanceof org.json.JSONException)) ? 8 : 20;
            if (stackTrace.length > i) {
                setStackTrace((java.lang.StackTraceElement[]) java.util.Arrays.copyOf(stackTrace, i));
            } else {
                setStackTrace(stackTrace);
            }
            setMessage(com.huawei.hms.framework.common.StringUtils.anonymizeMessage(th.getMessage()));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setCause(java.lang.Throwable th) {
            this.thisCause = th;
        }

        @Override // java.lang.Throwable
        public java.lang.Throwable getCause() {
            java.lang.Throwable th = this.thisCause;
            if (th == this) {
                return null;
            }
            return th;
        }

        @Override // java.lang.Throwable
        public java.lang.String getMessage() {
            return this.message;
        }

        public void setMessage(java.lang.String str) {
            this.message = str;
        }

        @Override // java.lang.Throwable
        public java.lang.String toString() {
            java.lang.Throwable th = this.ownerThrowable;
            if (th == null) {
                return "";
            }
            java.lang.String name = th.getClass().getName();
            if (this.message == null) {
                return name;
            }
            java.lang.String strE = e.a.c.a.a.e(name, ": ");
            if (this.message.startsWith(strE)) {
                return this.message;
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o(strE);
            sbO.append(this.message);
            return sbO.toString();
        }
    }

    public static java.lang.String complexAppTag(java.lang.String str) {
        return e.a.c.a.a.e(TAG_NETWORK_SDK_PRE, str);
    }

    public static java.lang.String complexMsg(java.lang.String str, int i) {
        if (android.text.TextUtils.isEmpty(str)) {
            return getCallMethodInfo(i);
        }
        return getCallMethodInfo(i) + "|" + str;
    }

    public static java.lang.String complexTag(java.lang.String str) {
        return e.a.c.a.a.e("NetworkKit_", str);
    }

    @android.annotation.SuppressLint({"LogTagMismatch"})
    public static void d(java.lang.String str, java.lang.Object obj) {
        println(3, str, obj);
    }

    @android.annotation.SuppressLint({"LogTagMismatch"})
    public static void d(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        println(3, str, str2, objArr);
    }

    public static void e(java.lang.String str, java.lang.Object obj) {
        println(6, str, obj);
    }

    public static void e(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        if (isAPPLoggable(6)) {
            extLogger.e(complexAppTag(str), complexMsg(str2, 5), getNewThrowable(th));
        }
        if (println) {
            android.util.Log.e(complexTag(str), complexMsg(str2, 5), getNewThrowable(th));
        }
    }

    public static void e(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        println(6, str, str2, objArr);
    }

    public static void extLogPrintln(int i, java.lang.String str, java.lang.String str2) {
        if (i == 2) {
            extLogger.v(str, str2);
            return;
        }
        if (i == 3) {
            extLogger.d(str, str2);
            return;
        }
        if (i == 4) {
            extLogger.i(str, str2);
        } else if (i == 5) {
            extLogger.w(str, str2);
        } else {
            if (i != 6) {
                return;
            }
            extLogger.e(str, str2);
        }
    }

    public static java.lang.String getCallMethodInfo(int i) {
        java.lang.StackTraceElement[] stackTrace = java.lang.Thread.currentThread().getStackTrace();
        if (stackTrace.length <= i) {
            return "";
        }
        java.lang.StackTraceElement stackTraceElement = stackTrace[i];
        return java.lang.Thread.currentThread().getName() + "|" + stackTraceElement.getFileName() + "|" + stackTraceElement.getClassName() + "|" + stackTraceElement.getMethodName() + "|" + stackTraceElement.getLineNumber();
    }

    public static java.lang.Throwable getNewThrowable(java.lang.Throwable th) {
        if (isLoggable(3)) {
            return th;
        }
        if (th == null) {
            return null;
        }
        com.huawei.hms.framework.common.Logger.ThrowableWrapper throwableWrapper = new com.huawei.hms.framework.common.Logger.ThrowableWrapper(th);
        java.lang.Throwable cause = th.getCause();
        com.huawei.hms.framework.common.Logger.ThrowableWrapper throwableWrapper2 = throwableWrapper;
        while (cause != null) {
            com.huawei.hms.framework.common.Logger.ThrowableWrapper throwableWrapper3 = new com.huawei.hms.framework.common.Logger.ThrowableWrapper(cause);
            throwableWrapper2.setCause(throwableWrapper3);
            cause = cause.getCause();
            throwableWrapper2 = throwableWrapper3;
        }
        return throwableWrapper;
    }

    @android.annotation.SuppressLint({"LogTagMismatch"})
    public static void i(java.lang.String str, java.lang.Object obj) {
        println(4, str, obj);
    }

    @android.annotation.SuppressLint({"LogTagMismatch"})
    public static void i(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        println(4, str, str2, objArr);
    }

    public static boolean isAPPLoggable(int i) {
        if (extLogger != null) {
            return android.util.Log.isLoggable(TAG_NETWORK_SDK_PRE, i);
        }
        return false;
    }

    public static boolean isLoggable(int i) {
        return android.util.Log.isLoggable("NetworkKit_", i);
    }

    public static int logPrintln(int i, java.lang.String str, java.lang.String str2) {
        if (isAPPLoggable(i)) {
            extLogPrintln(i, complexAppTag(str), complexMsg(str2, 7));
        }
        if (println) {
            return android.util.Log.println(i, complexTag(str), complexMsg(str2, 7));
        }
        return 1;
    }

    public static void println(int i, java.lang.String str, java.lang.Object obj) {
        if (i >= 3 && isLoggable(i)) {
            logPrintln(i, str, obj == null ? "null" : obj.toString());
        }
    }

    public static void println(int i, java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        if (i < 3) {
            return;
        }
        if (str2 == null) {
            android.util.Log.w(TAG, "format is null, not log");
            return;
        }
        try {
            if (isLoggable(i)) {
                logPrintln(i, str, com.huawei.hms.framework.common.StringUtils.format(str2, objArr));
            }
        } catch (java.util.IllegalFormatException e2) {
            w(TAG, "log format error" + str2, e2);
        }
    }

    public static void setExtLogger(com.huawei.hms.framework.common.ExtLogger extLogger2, boolean z) {
        extLogger = extLogger2;
        println = z;
        i(TAG, "logger = " + extLogger2 + z);
    }

    public static void v(java.lang.String str, java.lang.Object obj) {
        println(2, str, obj);
    }

    public static void v(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        println(2, str, str2, objArr);
    }

    public static void w(java.lang.String str, java.lang.Object obj) {
        println(5, str, obj);
    }

    public static void w(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        if (isAPPLoggable(5)) {
            extLogger.w(complexAppTag(str), complexMsg(str2, 5), getNewThrowable(th));
        }
        if (println) {
            android.util.Log.w(complexTag(str), complexMsg(str2, 5), getNewThrowable(th));
        }
    }

    public static void w(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        println(5, str, str2, objArr);
    }
}
