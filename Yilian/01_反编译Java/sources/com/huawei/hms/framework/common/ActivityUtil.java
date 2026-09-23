package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class ActivityUtil {
    public static final java.lang.String TAG = "ActivityUtil";

    public static android.app.PendingIntent getActivities(android.content.Context context, int i, android.content.Intent[] intentArr, int i2) {
        if (context == null) {
            com.huawei.hms.framework.common.Logger.w(TAG, "context is null");
            return null;
        }
        try {
            return android.app.PendingIntent.getActivities(context, i, intentArr, i2);
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.e(TAG, "dealType rethrowFromSystemServer:", e2);
            return null;
        }
    }

    public static boolean isForeground(android.content.Context context) {
        android.app.ActivityManager activityManager;
        if (context == null || (activityManager = (android.app.ActivityManager) com.huawei.hms.framework.common.ContextCompat.getSystemService(context, com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME)) == null) {
            return false;
        }
        java.util.List<android.app.ActivityManager.RunningAppProcessInfo> runningAppProcesses = null;
        try {
            runningAppProcesses = activityManager.getRunningAppProcesses();
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.w(TAG, "activityManager getRunningAppProcesses occur exception: ", e2);
        }
        if (runningAppProcesses == null) {
            return false;
        }
        for (android.app.ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
            java.lang.String str = runningAppProcessInfo.processName;
            if (str != null && str.equals(context.getPackageName()) && runningAppProcessInfo.importance == 100) {
                com.huawei.hms.framework.common.Logger.v(TAG, "isForeground true");
                return true;
            }
        }
        return false;
    }
}
