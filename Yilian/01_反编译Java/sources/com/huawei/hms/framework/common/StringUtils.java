package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class StringUtils {
    public static final int INIT_CAPACITY = 1024;
    public static boolean IS_AEGIS_STRING_LIBRARY_LOADED = false;
    public static final java.lang.String SAFE_STRING_PATH = "com.huawei.secure.android.common.util.SafeString";
    public static final java.lang.String TAG = "StringUtils";

    public static java.lang.String anonymizeMessage(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return str;
        }
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            if (i % 2 != 0) {
                charArray[i] = com.huawei.hms.ml.common.utils.SmartLog.STAR;
            }
        }
        return new java.lang.String(charArray);
    }

    public static java.lang.String byte2Str(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        try {
            return new java.lang.String(bArr, com.google.android.exoplayer2.C.UTF8_NAME);
        } catch (java.io.UnsupportedEncodingException e2) {
            com.huawei.hms.framework.common.Logger.w("StringUtils.byte2str error: UnsupportedEncodingException", e2);
            return "";
        }
    }

    public static boolean checkCompatible(java.lang.String str) throws java.lang.ClassNotFoundException {
        java.lang.ClassLoader classLoader = com.huawei.hms.framework.common.SecurityBase64Utils.class.getClassLoader();
        if (classLoader == null) {
            return false;
        }
        try {
            classLoader.loadClass(str);
            synchronized (com.huawei.hms.framework.common.StringUtils.class) {
                IS_AEGIS_STRING_LIBRARY_LOADED = true;
            }
            return true;
        } catch (java.lang.ClassNotFoundException unused) {
            return false;
        }
    }

    public static java.lang.String format(java.lang.String str, java.lang.Object... objArr) {
        return str == null ? "" : java.lang.String.format(java.util.Locale.ROOT, str, objArr);
    }

    public static byte[] getBytes(long j) {
        return getBytes(java.lang.String.valueOf(j));
    }

    public static byte[] getBytes(java.lang.String str) {
        byte[] bArr = new byte[0];
        if (str == null) {
            return bArr;
        }
        try {
            return str.getBytes("utf-8");
        } catch (java.io.UnsupportedEncodingException unused) {
            com.huawei.hms.framework.common.Logger.w(TAG, "the content has error while it is converted to bytes");
            return bArr;
        }
    }

    public static java.lang.String getTraceInfo(java.lang.Throwable th) {
        java.lang.StackTraceElement[] stackTrace = th.getStackTrace();
        java.lang.StringBuilder sb = new java.lang.StringBuilder(1024);
        for (java.lang.StackTraceElement stackTraceElement : stackTrace) {
            sb.append("at ");
            sb.append(stackTraceElement.toString());
            sb.append(";");
        }
        return sb.toString();
    }

    public static java.lang.String replace(java.lang.String str, java.lang.CharSequence charSequence, java.lang.CharSequence charSequence2) {
        if (IS_AEGIS_STRING_LIBRARY_LOADED || checkCompatible(SAFE_STRING_PATH)) {
            return com.huawei.secure.android.common.util.SafeString.replace(str, charSequence, charSequence2);
        }
        if (android.text.TextUtils.isEmpty(str) || android.text.TextUtils.isEmpty(charSequence)) {
            return str;
        }
        try {
            return str.replace(charSequence, charSequence2);
        } catch (java.lang.Exception unused) {
            return str;
        }
    }

    public static byte[] str2Byte(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return new byte[0];
        }
        try {
            return str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME);
        } catch (java.io.UnsupportedEncodingException e2) {
            com.huawei.hms.framework.common.Logger.w("StringUtils.str2Byte error: UnsupportedEncodingException", e2);
            return new byte[0];
        }
    }

    public static boolean strEquals(java.lang.String str, java.lang.String str2) {
        return str == str2 || (str != null && str.equals(str2));
    }

    public static int stringToInteger(java.lang.String str, int i) {
        if (android.text.TextUtils.isEmpty(str)) {
            return i;
        }
        try {
            return java.lang.Integer.parseInt(str);
        } catch (java.lang.NumberFormatException e2) {
            com.huawei.hms.framework.common.Logger.w(TAG, "String to Integer catch NumberFormatException.", e2);
            return i;
        }
    }

    public static long stringToLong(java.lang.String str, long j) {
        if (android.text.TextUtils.isEmpty(str)) {
            return j;
        }
        try {
            return java.lang.Long.parseLong(str);
        } catch (java.lang.NumberFormatException e2) {
            com.huawei.hms.framework.common.Logger.w(TAG, "String to Long catch NumberFormatException.", e2);
            return j;
        }
    }

    public static java.lang.String substring(java.lang.String str, int i) {
        if (checkCompatible(SAFE_STRING_PATH)) {
            return com.huawei.secure.android.common.util.SafeString.substring(str, i);
        }
        if (!android.text.TextUtils.isEmpty(str) && str.length() >= i && i >= 0) {
            try {
                return str.substring(i);
            } catch (java.lang.Exception unused) {
            }
        }
        return "";
    }

    public static java.lang.String substring(java.lang.String str, int i, int i2) {
        if (IS_AEGIS_STRING_LIBRARY_LOADED || checkCompatible(SAFE_STRING_PATH)) {
            return com.huawei.secure.android.common.util.SafeString.substring(str, i, i2);
        }
        if (!android.text.TextUtils.isEmpty(str) && i >= 0 && i2 <= str.length() && i2 >= i) {
            try {
                return str.substring(i, i2);
            } catch (java.lang.Exception unused) {
            }
        }
        return "";
    }

    public static java.lang.String toLowerCase(java.lang.String str) {
        return str == null ? str : str.toLowerCase(java.util.Locale.ROOT);
    }
}
