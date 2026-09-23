package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class PackageManagerCompat {
    public static final java.lang.String TAG = "PackageUtils";
    public static final java.lang.String VERSION = "4.0.20.301";

    public static android.os.Bundle getMetaDataFromApp(android.content.Context context, java.lang.String str) throws android.content.pm.PackageManager.NameNotFoundException {
        android.content.pm.ApplicationInfo applicationInfo;
        android.content.pm.PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return null;
        }
        try {
            applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128);
        } catch (android.content.pm.PackageManager.NameNotFoundException | java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.w("PackageUtils", "NameNotFoundException:", e2);
            applicationInfo = null;
        }
        if (applicationInfo == null) {
            return null;
        }
        return applicationInfo.metaData;
    }

    public static java.lang.String getVersionName(android.content.Context context) {
        android.content.pm.PackageManager packageManager;
        if (context == null || (packageManager = context.getPackageManager()) == null) {
            return "";
        }
        try {
            return packageManager.getPackageInfo(context.getPackageName(), 16384).versionName;
        } catch (android.content.pm.PackageManager.NameNotFoundException | java.lang.RuntimeException e2) {
            com.huawei.hms.framework.common.Logger.w("PackageUtils", e2.getClass().getName());
            return "";
        }
    }

    public java.lang.String getPackageName(android.content.Context context) {
        android.content.pm.PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return "";
        }
        try {
            return packageManager.getPackageInfo(context.getPackageName(), 16384).packageName;
        } catch (android.content.pm.PackageManager.NameNotFoundException | java.lang.RuntimeException unused) {
            com.huawei.hms.framework.common.Logger.w("PackageUtils", "Failed to get Package managers Package Info");
            return "";
        }
    }

    public java.lang.String getVersion(android.content.Context context) {
        android.content.pm.PackageManager packageManager = context.getPackageManager();
        if (packageManager == null) {
            return "";
        }
        try {
            return java.lang.String.valueOf(packageManager.getPackageInfo(context.getPackageName(), 16384).versionCode);
        } catch (android.content.pm.PackageManager.NameNotFoundException | java.lang.RuntimeException unused) {
            com.huawei.hms.framework.common.Logger.w("PackageUtils", "Failed to get Package managers Package Info");
            return "";
        }
    }
}
