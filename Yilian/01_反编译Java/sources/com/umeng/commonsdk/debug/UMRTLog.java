package com.umeng.commonsdk.debug;

/* loaded from: classes.dex */
public class UMRTLog {
    public static final java.lang.String RTLOG_ENABLE = "1";
    public static final java.lang.String RTLOG_PROP = "debug.umeng.rtlog";
    public static final java.lang.String RTLOG_TAG = "MobclickRT";

    public static void d(java.lang.String str, java.lang.String str2) {
        if (shouldOutput()) {
            android.util.Log.d(str, warpperMsg(str2, false));
        }
    }

    public static void e(java.lang.String str, java.lang.String str2) {
        if (shouldOutput()) {
            android.util.Log.e(str, warpperMsg(str2, false));
        }
    }

    public static void i(java.lang.String str, java.lang.String str2) {
        if (shouldOutput()) {
            android.util.Log.i(str, warpperMsg(str2, false));
        }
    }

    public static void sd(java.lang.String str, java.lang.String str2) {
        if (shouldOutput()) {
            android.util.Log.d(str, warpperMsg(str2, true));
        }
    }

    public static void se(java.lang.String str, java.lang.String str2) {
        if (shouldOutput()) {
            android.util.Log.e(str, warpperMsg(str2, true));
        }
    }

    public static boolean shouldOutput() {
        return "1".equals(com.umeng.commonsdk.utils.UMUtils.getSystemProperty(RTLOG_PROP, "0"));
    }

    public static void si(java.lang.String str, java.lang.String str2) {
        if (shouldOutput()) {
            android.util.Log.i(str, warpperMsg(str2, true));
        }
    }

    public static void sv(java.lang.String str, java.lang.String str2) {
        if (shouldOutput()) {
            android.util.Log.v(str, warpperMsg(str2, true));
        }
    }

    public static void sw(java.lang.String str, java.lang.String str2) {
        if (shouldOutput()) {
            android.util.Log.w(str, warpperMsg(str2, true));
        }
    }

    public static void v(java.lang.String str, java.lang.String str2) {
        if (shouldOutput()) {
            android.util.Log.v(str, warpperMsg(str2, false));
        }
    }

    public static void w(java.lang.String str, java.lang.String str2) {
        if (shouldOutput()) {
            android.util.Log.w(str, warpperMsg(str2, false));
        }
    }

    public static java.lang.String warpperMsg(java.lang.String str, boolean z) {
        if (!z) {
            return str;
        }
        java.lang.StringBuffer stringBuffer = null;
        try {
            java.lang.StackTraceElement[] stackTrace = new java.lang.Throwable().getStackTrace();
            if (stackTrace.length >= 3) {
                java.lang.String fileName = stackTrace[2].getFileName();
                java.lang.String methodName = stackTrace[2].getMethodName();
                int lineNumber = stackTrace[2].getLineNumber();
                java.lang.StringBuffer stringBuffer2 = new java.lang.StringBuffer();
                stringBuffer2.append("<");
                stringBuffer2.append(fileName);
                stringBuffer2.append(":");
                stringBuffer2.append(methodName);
                stringBuffer2.append(":");
                stringBuffer2.append(lineNumber);
                stringBuffer2.append("> ");
                stringBuffer2.append(str);
                stringBuffer = stringBuffer2;
            }
            return stringBuffer.toString();
        } catch (java.lang.Throwable unused) {
            return str;
        }
    }
}
