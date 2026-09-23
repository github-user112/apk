package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class Utils {
    public static long getCurrentTime(boolean z) {
        return z ? android.os.SystemClock.elapsedRealtime() : java.lang.System.currentTimeMillis();
    }
}
