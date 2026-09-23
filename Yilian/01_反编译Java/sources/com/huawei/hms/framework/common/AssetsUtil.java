package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class AssetsUtil {
    public static final java.lang.String TAG = "AssetsUtil";

    public static java.lang.String[] list(android.content.Context context, java.lang.String str) {
        if (context == null) {
            com.huawei.hms.framework.common.Logger.w(TAG, "context is null");
            return new java.lang.String[0];
        }
        try {
            return context.getAssets().list(str);
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.e(TAG, "AssetManager has been destroyed", e2);
            return null;
        }
    }

    public static java.io.InputStream open(android.content.Context context, java.lang.String str) {
        if (context == null) {
            com.huawei.hms.framework.common.Logger.w(TAG, "context is null");
            return null;
        }
        try {
            return context.getAssets().open(str);
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.e(TAG, "AssetManager has been destroyed", e2);
            return null;
        }
    }
}
