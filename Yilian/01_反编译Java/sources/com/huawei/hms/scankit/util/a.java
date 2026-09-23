package com.huawei.hms.scankit.util;

/* loaded from: classes.dex */
public class a {
    public static final java.util.regex.Pattern a = java.util.regex.Pattern.compile("[0-9]*[a-z|A-Z]*[一-龥]*");

    public static java.lang.String a(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return str;
        }
        int length = str.length();
        int i = 1;
        if (1 == length) {
            return java.lang.String.valueOf(com.huawei.hms.ml.common.utils.SmartLog.STAR);
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(length);
        for (int i2 = 0; i2 < length; i2++) {
            char cCharAt = str.charAt(i2);
            if (a.matcher(java.lang.String.valueOf(cCharAt)).matches()) {
                if (i % 2 == 0) {
                    cCharAt = com.huawei.hms.ml.common.utils.SmartLog.STAR;
                }
                i++;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    public static java.lang.String a(java.lang.String str, boolean z) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(512);
        if (!android.text.TextUtils.isEmpty(str)) {
            if (z) {
                str = a(str);
            }
            sb.append(str);
        }
        return sb.toString();
    }

    public static java.lang.Throwable a(java.lang.Throwable th) {
        return th;
    }

    public static void a(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str2)) {
            return;
        }
        android.util.Log.d(str, a(str2, false));
    }

    public static void a(java.lang.String str, java.lang.String str2, java.lang.Throwable th) {
        if (android.text.TextUtils.isEmpty(str2) && th == null) {
            return;
        }
        android.util.Log.w(str, a(str2, false), a(th));
    }

    public static void b(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str2)) {
            return;
        }
        android.util.Log.e(str, a(str2, false));
    }

    public static void c(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str2)) {
            return;
        }
        android.util.Log.i(str, a(str2, false));
    }

    public static void d(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str2)) {
            return;
        }
        android.util.Log.w(str, a(str2, false));
    }
}
