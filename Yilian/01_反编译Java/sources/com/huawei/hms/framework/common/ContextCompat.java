package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class ContextCompat {
    public static final java.lang.String TAG = "ContextCompat";

    public static boolean checkSelfPermission(android.content.Context context, java.lang.String str) {
        if (context == null || str == null) {
            com.huawei.hms.framework.common.Logger.w(TAG, "param is null");
            return false;
        }
        try {
            return context.checkPermission(str, android.os.Process.myPid(), android.os.Process.myUid()) == 0;
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.e(TAG, "dealType rethrowFromSystemServer:", e2);
            return false;
        }
    }

    public static android.content.Context getProtectedStorageContext(android.content.Context context) {
        if (context != null) {
            return android.os.Build.VERSION.SDK_INT < 24 ? context : context.createDeviceProtectedStorageContext();
        }
        com.huawei.hms.framework.common.Logger.w(TAG, "context is null");
        return null;
    }

    public static java.lang.Object getSystemService(android.content.Context context, java.lang.String str) {
        if (context == null) {
            com.huawei.hms.framework.common.Logger.w(TAG, "context is null");
            return null;
        }
        try {
            return context.getSystemService(str);
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.e(TAG, "SystemServer error:", e2);
            return null;
        }
    }

    public static android.content.Intent registerReceiver(android.content.Context context, android.content.BroadcastReceiver broadcastReceiver, android.content.IntentFilter intentFilter) {
        if (context == null) {
            com.huawei.hms.framework.common.Logger.w(TAG, "context is null");
            return null;
        }
        try {
            return context.registerReceiver(broadcastReceiver, intentFilter);
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.e(TAG, "dealType rethrowFromSystemServer:", e2);
            return null;
        }
    }

    public static android.content.Intent registerReceiver(android.content.Context context, android.content.BroadcastReceiver broadcastReceiver, android.content.IntentFilter intentFilter, java.lang.String str, android.os.Handler handler) {
        if (context == null) {
            com.huawei.hms.framework.common.Logger.w(TAG, "context is null");
            return null;
        }
        try {
            return context.registerReceiver(broadcastReceiver, intentFilter, str, handler);
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.e(TAG, "dealType rethrowFromSystemServer:", e2);
            return null;
        }
    }

    public static android.content.ComponentName startService(android.content.Context context, android.content.Intent intent) {
        if (context == null) {
            com.huawei.hms.framework.common.Logger.w(TAG, "context is null");
            return null;
        }
        try {
            return context.startService(intent);
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.e(TAG, "SystemServer error:", e2);
            return null;
        }
    }

    public static void unregisterReceiver(android.content.Context context, android.content.BroadcastReceiver broadcastReceiver) {
        if (context == null) {
            com.huawei.hms.framework.common.Logger.w(TAG, "context is null");
            return;
        }
        try {
            context.unregisterReceiver(broadcastReceiver);
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.e(TAG, "SystemServer error:", e2);
        }
    }
}
