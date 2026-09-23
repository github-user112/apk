package com.huawei.hms.ml.common.utils;

/* loaded from: classes.dex */
public class SmartLog {
    public static final int LEN_CONST = 2;
    public static final java.util.regex.Pattern M_PATTERN = java.util.regex.Pattern.compile("[0-9]*[a-z|A-Z]*[一-龥]*");
    public static final char STAR = '*';

    public static class ThrowableWrapper extends java.lang.Throwable {
        public static final long serialVersionUID = 7129050843360571879L;
        public java.lang.String message;
        public java.lang.Throwable ownerThrowable;
        public java.lang.Throwable thisCause;

        public ThrowableWrapper(java.lang.Throwable th) {
            this.ownerThrowable = th;
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

        public void setCause(java.lang.Throwable th) {
            this.thisCause = th;
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

    public static void d(java.lang.String str, java.lang.String str2) {
    }

    public static void d(java.lang.String str, java.lang.String str2, java.lang.String str3) {
    }

    public static void d(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.Throwable th) {
    }

    public static void d(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
    }

    public static void d(java.lang.String str, java.lang.String str2, java.lang.Throwable th, boolean z) {
    }

    public static void d(java.lang.String str, java.lang.String str2, boolean z) {
    }

    public static void e(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str2)) {
            return;
        }
        android.util.Log.e(str, getLogMsg(str2, false));
    }

    public static void e(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if (android.text.TextUtils.isEmpty(str2) && android.text.TextUtils.isEmpty(str3)) {
            return;
        }
        android.util.Log.e(str, getLogMsg(str2, str3));
    }

    public static void e(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.Throwable th) {
        if (android.text.TextUtils.isEmpty(str2) && android.text.TextUtils.isEmpty(str3)) {
            return;
        }
        android.util.Log.e(str, getLogMsg(str2, str3), getNewThrowable(th));
    }

    public static void e(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        if (android.text.TextUtils.isEmpty(str2) && th == null) {
            return;
        }
        android.util.Log.e(str, getLogMsg(str2, false), getNewThrowable(th));
    }

    public static void e(java.lang.String str, java.lang.String str2, java.lang.Throwable th, boolean z) {
        if (android.text.TextUtils.isEmpty(str2) && th == null) {
            return;
        }
        android.util.Log.e(str, getLogMsg(str2, z), getNewThrowable(th));
    }

    public static void e(java.lang.String str, java.lang.String str2, boolean z) {
        if (android.text.TextUtils.isEmpty(str2)) {
            return;
        }
        android.util.Log.e(str, getLogMsg(str2, z));
    }

    public static java.lang.String formatLogWithStar(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i = 1;
        if (1 == length) {
            return java.lang.String.valueOf(STAR);
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(length);
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (M_PATTERN.matcher(java.lang.String.valueOf(cCharAt)).matches()) {
                if (i % 2 == 0) {
                    cCharAt = STAR;
                }
                i++;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static java.lang.String getLogMsg(java.lang.String str, java.lang.String str2) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(512);
        if (!android.text.TextUtils.isEmpty(str)) {
            sb.append(str);
        }
        if (!android.text.TextUtils.isEmpty(str2)) {
            sb.append(formatLogWithStar(str2));
        }
        return sb.toString();
    }

    public static java.lang.String getLogMsg(java.lang.String str, boolean z) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(512);
        if (!android.text.TextUtils.isEmpty(str)) {
            if (z) {
                str = formatLogWithStar(str);
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public static java.lang.Throwable getNewThrowable(java.lang.Throwable th) {
        if (th == null) {
            return null;
        }
        com.huawei.hms.ml.common.utils.SmartLog.ThrowableWrapper throwableWrapper = new com.huawei.hms.ml.common.utils.SmartLog.ThrowableWrapper(th);
        throwableWrapper.setStackTrace(th.getStackTrace());
        throwableWrapper.setMessage(modifyExceptionMessage(th.getMessage()));
        java.lang.Throwable cause = th.getCause();
        com.huawei.hms.ml.common.utils.SmartLog.ThrowableWrapper throwableWrapper2 = throwableWrapper;
        while (cause != null) {
            com.huawei.hms.ml.common.utils.SmartLog.ThrowableWrapper throwableWrapper3 = new com.huawei.hms.ml.common.utils.SmartLog.ThrowableWrapper(cause);
            throwableWrapper3.setStackTrace(cause.getStackTrace());
            throwableWrapper3.setMessage(modifyExceptionMessage(cause.getMessage()));
            throwableWrapper2.setCause(throwableWrapper3);
            cause = cause.getCause();
            throwableWrapper2 = throwableWrapper3;
        }
        return throwableWrapper;
    }

    public static void i(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str2)) {
            return;
        }
        android.util.Log.i(str, getLogMsg(str2, false));
    }

    public static void i(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if (android.text.TextUtils.isEmpty(str2) && android.text.TextUtils.isEmpty(str3)) {
            return;
        }
        android.util.Log.i(str, getLogMsg(str2, str3));
    }

    public static void i(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.Throwable th) {
        if (android.text.TextUtils.isEmpty(str2) && android.text.TextUtils.isEmpty(str3)) {
            return;
        }
        android.util.Log.i(str, getLogMsg(str2, str3), getNewThrowable(th));
    }

    public static void i(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        if (android.text.TextUtils.isEmpty(str2) && th == null) {
            return;
        }
        android.util.Log.i(str, getLogMsg(str2, false), getNewThrowable(th));
    }

    public static void i(java.lang.String str, java.lang.String str2, java.lang.Throwable th, boolean z) {
        if (android.text.TextUtils.isEmpty(str2) && th == null) {
            return;
        }
        android.util.Log.i(str, getLogMsg(str2, z), getNewThrowable(th));
    }

    public static void i(java.lang.String str, java.lang.String str2, boolean z) {
        if (android.text.TextUtils.isEmpty(str2)) {
            return;
        }
        android.util.Log.i(str, getLogMsg(str2, z));
    }

    public static java.lang.String modifyExceptionMessage(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (i % 2 == 0) {
                charArray[i] = STAR;
            }
        }
        return new java.lang.String(charArray);
    }

    public static void w(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str2)) {
            return;
        }
        android.util.Log.w(str, getLogMsg(str2, false));
    }

    public static void w(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if (android.text.TextUtils.isEmpty(str2) && android.text.TextUtils.isEmpty(str3)) {
            return;
        }
        android.util.Log.w(str, getLogMsg(str2, str3));
    }

    public static void w(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.Throwable th) {
        if (android.text.TextUtils.isEmpty(str2) && android.text.TextUtils.isEmpty(str3)) {
            return;
        }
        android.util.Log.w(str, getLogMsg(str2, str3), getNewThrowable(th));
    }

    public static void w(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        if (android.text.TextUtils.isEmpty(str2) && th == null) {
            return;
        }
        android.util.Log.w(str, getLogMsg(str2, false), getNewThrowable(th));
    }

    public static void w(java.lang.String str, java.lang.String str2, java.lang.Throwable th, boolean z) {
        if (android.text.TextUtils.isEmpty(str2) && th == null) {
            return;
        }
        android.util.Log.w(str, getLogMsg(str2, z), getNewThrowable(th));
    }

    public static void w(java.lang.String str, java.lang.String str2, boolean z) {
        if (android.text.TextUtils.isEmpty(str2)) {
            return;
        }
        android.util.Log.w(str, getLogMsg(str2, z));
    }
}
