package com.huawei.hms.ml.common.utils;

/* loaded from: classes.dex */
public final class StreamUtils {
    public static void closeStreams(java.io.Closeable... closeableArr) throws java.io.IOException {
        java.lang.String str;
        if (closeableArr == null) {
            return;
        }
        for (java.io.Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (java.io.IOException unused) {
                    str = "IOException closeStreams";
                    com.huawei.hms.ml.common.utils.SmartLog.w("StreamUtils", str);
                } catch (java.lang.RuntimeException unused2) {
                    str = "RuntimeException closeStreams";
                    com.huawei.hms.ml.common.utils.SmartLog.w("StreamUtils", str);
                }
            }
        }
    }
}
