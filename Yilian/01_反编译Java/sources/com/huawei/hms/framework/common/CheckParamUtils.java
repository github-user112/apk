package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class CheckParamUtils {
    public static final java.lang.String TAG = "CheckParamUtils";

    public static <T> T checkNotNull(T t, java.lang.String str) {
        if (t != null) {
            return t;
        }
        throw new java.lang.NullPointerException(str);
    }

    public static int checkNumParam(int i, int i2, int i3, int i4, java.lang.String str) {
        if (i > i3 || i < i2) {
            return i4;
        }
        com.huawei.hms.framework.common.Logger.d(TAG, str);
        return i;
    }

    public static long checkNumParam(long j, long j2, long j3, long j4, java.lang.String str) {
        if (j > j3 || j < j2) {
            return j4;
        }
        com.huawei.hms.framework.common.Logger.d(TAG, str);
        return j;
    }

    public static void checkOffsetAndCount(long j, long j2, long j3) {
        if ((j2 | j3) < 0 || j2 > j || j - j2 < j3) {
            throw new java.lang.ArrayIndexOutOfBoundsException();
        }
    }
}
