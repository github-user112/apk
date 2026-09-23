package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class PowerUtils {
    public static final java.lang.String TAG = "PowerUtils";

    public static final class PowerMode {
        public static int POWER_MODE_DEFAULT_RETURN_VALUE = 0;
        public static int POWER_SAVER_MODE = 4;
        public static java.lang.String SMART_MODE_STATUS = "SmartModeStatus";
    }

    public static boolean isDozeIdleMode(android.content.Context context) {
        java.lang.String str;
        if (context == null) {
            com.huawei.hms.framework.common.Logger.i(TAG, "isDozeIdleMode Context is null!");
            return false;
        }
        java.lang.Object systemService = com.huawei.hms.framework.common.ContextCompat.getSystemService(context, "power");
        android.os.PowerManager powerManager = systemService instanceof android.os.PowerManager ? (android.os.PowerManager) systemService : null;
        if (powerManager == null) {
            str = "isDozeIdleMode powerManager is null!";
        } else {
            if (android.os.Build.VERSION.SDK_INT >= 23) {
                try {
                    return powerManager.isDeviceIdleMode();
                } catch (java.lang.RuntimeException e2) {
                    com.huawei.hms.framework.common.Logger.e(TAG, "dealType rethrowFromSystemServer:", e2);
                    return false;
                }
            }
            str = "isDozeIdleMode is version control state!";
        }
        com.huawei.hms.framework.common.Logger.i(TAG, str);
        return false;
    }

    public static boolean isInteractive(android.content.Context context) {
        if (context != null) {
            java.lang.Object systemService = com.huawei.hms.framework.common.ContextCompat.getSystemService(context, "power");
            if (systemService instanceof android.os.PowerManager) {
                android.os.PowerManager powerManager = (android.os.PowerManager) systemService;
                if (android.os.Build.VERSION.SDK_INT >= 20) {
                    try {
                        return powerManager.isInteractive();
                    } catch (java.lang.RuntimeException e2) {
                        java.lang.StringBuilder sbO = e.a.c.a.a.o("getActiveNetworkInfo failed, exception:");
                        sbO.append(e2.getClass().getSimpleName());
                        sbO.append(e2.getMessage());
                        com.huawei.hms.framework.common.Logger.i(TAG, sbO.toString());
                    }
                }
            }
        }
        return false;
    }

    public static boolean isWhilteList(android.content.Context context) {
        if (context != null) {
            java.lang.Object systemService = com.huawei.hms.framework.common.ContextCompat.getSystemService(context, "power");
            android.os.PowerManager powerManager = systemService instanceof android.os.PowerManager ? (android.os.PowerManager) systemService : null;
            java.lang.String packageName = context.getPackageName();
            if (powerManager != null && android.os.Build.VERSION.SDK_INT >= 23) {
                try {
                    return powerManager.isIgnoringBatteryOptimizations(packageName);
                } catch (java.lang.RuntimeException e2) {
                    com.huawei.hms.framework.common.Logger.e(TAG, "dealType rethrowFromSystemServer:", e2);
                }
            }
        }
        return false;
    }

    public static int readPowerSaverMode(android.content.Context context) {
        if (context == null) {
            com.huawei.hms.framework.common.Logger.i(TAG, "readPowerSaverMode Context is null!");
            return 0;
        }
        int systemInt = com.huawei.hms.framework.common.SettingUtil.getSystemInt(context.getContentResolver(), com.huawei.hms.framework.common.PowerUtils.PowerMode.SMART_MODE_STATUS, com.huawei.hms.framework.common.PowerUtils.PowerMode.POWER_MODE_DEFAULT_RETURN_VALUE);
        if (systemInt != com.huawei.hms.framework.common.PowerUtils.PowerMode.POWER_MODE_DEFAULT_RETURN_VALUE) {
            return systemInt;
        }
        java.lang.Object systemService = com.huawei.hms.framework.common.ContextCompat.getSystemService(context, "power");
        android.os.PowerManager powerManager = systemService instanceof android.os.PowerManager ? (android.os.PowerManager) systemService : null;
        if (powerManager == null) {
            return systemInt;
        }
        if (android.os.Build.VERSION.SDK_INT < 21) {
            com.huawei.hms.framework.common.Logger.i(TAG, "readPowerSaverMode is control by version!");
            return systemInt;
        }
        try {
            return powerManager.isPowerSaveMode() ? com.huawei.hms.framework.common.PowerUtils.PowerMode.POWER_SAVER_MODE : com.huawei.hms.framework.common.PowerUtils.PowerMode.POWER_MODE_DEFAULT_RETURN_VALUE;
        } catch (java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.e(TAG, "dealType rethrowFromSystemServer:", e2);
            return systemInt;
        }
    }
}
