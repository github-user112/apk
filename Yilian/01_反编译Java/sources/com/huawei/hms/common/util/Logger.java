package com.huawei.hms.common.util;

/* loaded from: classes.dex */
public class Logger {
    public static final boolean a = false;
    public static final java.lang.String b = "Logger";

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String f251c = "|";

    /* renamed from: d, reason: collision with root package name */
    public static final int f252d = 8;

    /* renamed from: e, reason: collision with root package name */
    public static final int f253e = 20;

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.String f254f = "dynamic-api_";

    public static class a extends java.lang.Throwable {
        public static final long b = 7129050843360571879L;
        public java.lang.String a;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.Throwable f255c;

        /* renamed from: d, reason: collision with root package name */
        public java.lang.Throwable f256d;

        public a(java.lang.Throwable th) {
            this.f256d = th;
        }

        public /* synthetic */ a(java.lang.Throwable th, byte b2) {
            this(th);
        }

        private void a(java.lang.String str) {
            this.a = str;
        }

        private void a(java.lang.Throwable th) {
            this.f255c = th;
        }

        @Override // java.lang.Throwable
        public final java.lang.Throwable getCause() {
            java.lang.Throwable th = this.f255c;
            if (th == this) {
                return null;
            }
            return th;
        }

        @Override // java.lang.Throwable
        public final java.lang.String getMessage() {
            return this.a;
        }

        @Override // java.lang.Throwable
        public final java.lang.String toString() {
            java.lang.Throwable th = this.f256d;
            if (th == null) {
                return "";
            }
            java.lang.String name = th.getClass().getName();
            if (this.a == null) {
                return name;
            }
            java.lang.String strE = e.a.c.a.a.e(name, ": ");
            if (this.a.startsWith(strE)) {
                return this.a;
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o(strE);
            sbO.append(this.a);
            return sbO.toString();
        }
    }

    public static int a(int i, java.lang.String str, java.lang.String str2) {
        return android.util.Log.println(i, a(str), a(str2, 7));
    }

    public static java.lang.String a(int i) {
        java.lang.StackTraceElement[] stackTrace = java.lang.Thread.currentThread().getStackTrace();
        if (stackTrace.length <= i) {
            return "";
        }
        java.lang.StackTraceElement stackTraceElement = stackTrace[i];
        return android.os.Process.myPid() + "-" + android.os.Process.myTid() + "|" + stackTraceElement.getFileName() + "|" + stackTraceElement.getClassName() + "|" + stackTraceElement.getMethodName() + "|" + stackTraceElement.getLineNumber();
    }

    public static java.lang.String a(java.lang.String str) {
        return f254f.concat(java.lang.String.valueOf(str));
    }

    public static java.lang.String a(java.lang.String str, int i) {
        if (android.text.TextUtils.isEmpty(str)) {
            return a(i);
        }
        return a(i) + "|" + str;
    }

    public static java.lang.Throwable a(java.lang.Throwable th) {
        if (isLoggable(3)) {
            return th;
        }
        if (th == null) {
            return null;
        }
        int i = ((th instanceof java.io.IOException) || (th instanceof org.json.JSONException)) ? 8 : 20;
        byte b2 = 0;
        com.huawei.hms.common.util.Logger.a aVar = new com.huawei.hms.common.util.Logger.a(th, b2);
        java.lang.StackTraceElement[] stackTrace = aVar.getStackTrace();
        if (stackTrace.length > i) {
            aVar.setStackTrace((java.lang.StackTraceElement[]) java.util.Arrays.copyOf(stackTrace, i));
        } else {
            aVar.setStackTrace(stackTrace);
        }
        aVar.a = anonymizeMessage(th.getMessage());
        java.lang.Throwable cause = th.getCause();
        com.huawei.hms.common.util.Logger.a aVar2 = aVar;
        while (cause != null) {
            com.huawei.hms.common.util.Logger.a aVar3 = new com.huawei.hms.common.util.Logger.a(cause, b2);
            aVar3.a = anonymizeMessage(cause.getMessage());
            aVar2.f255c = aVar3;
            cause = cause.getCause();
            aVar2 = aVar3;
        }
        return aVar;
    }

    public static java.lang.String anonymizeMessage(java.lang.String str) {
        if (str == null || str.length() == 0) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (i % 2 == 1) {
                charArray[i] = com.huawei.hms.ml.common.utils.SmartLog.STAR;
            }
        }
        return new java.lang.String(charArray);
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
        android.util.Log.e(a(str), a(str2, 5), a(th));
    }

    public static void e(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        println(6, str, str2, objArr);
    }

    public static java.lang.String format(java.lang.String str, java.lang.Object... objArr) {
        return str == null ? "" : java.lang.String.format(java.util.Locale.ROOT, str, objArr);
    }

    @android.annotation.SuppressLint({"LogTagMismatch"})
    public static void i(java.lang.String str, java.lang.Object obj) {
        println(4, str, obj);
    }

    @android.annotation.SuppressLint({"LogTagMismatch"})
    public static void i(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        println(4, str, str2, objArr);
    }

    public static boolean isLoggable(int i) {
        return android.util.Log.isLoggable(f254f, i);
    }

    public static void println(int i, java.lang.String str, java.lang.Object obj) {
        if (i >= 3 && isLoggable(i)) {
            a(i, str, obj == null ? "null" : obj.toString());
        }
    }

    public static void println(int i, java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        if (i < 3) {
            return;
        }
        if (str2 == null) {
            android.util.Log.w(b, "format is null, not log");
            return;
        }
        try {
            if (isLoggable(i)) {
                a(i, str, format(str2, objArr));
            }
        } catch (java.util.IllegalFormatException e2) {
            w(b, "log format error".concat(str2), e2);
        }
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
        android.util.Log.w(a(str), a(str2, 5), a(th));
    }

    public static void w(java.lang.String str, java.lang.String str2, java.lang.Object... objArr) {
        println(5, str, str2, objArr);
    }
}
