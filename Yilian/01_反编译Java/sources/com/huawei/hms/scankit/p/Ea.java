package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Ea {
    public static final java.lang.String a = "Ea";
    public java.lang.ref.WeakReference<android.content.Context> b;

    public Ea(android.content.Context context) {
        this.b = new java.lang.ref.WeakReference<>(context);
    }

    public static java.lang.String a(android.content.Context context) {
        try {
            android.content.pm.PackageManager packageManager = context.getPackageManager();
            return packageManager.getPackageInfo(context.getPackageName(), 0).applicationInfo.loadLabel(packageManager).toString();
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
            android.util.Log.e(a, "readManifest failed ");
            return "";
        }
    }

    public final android.os.Bundle a() {
        if (this.b.get() == null) {
            return null;
        }
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.packageName, this.b.get().getPackageName() == null ? "camera.cannot.get.package.name" : this.b.get().getPackageName());
        bundle.putString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appid, "com.huawei.hms.ml.camera");
        bundle.putString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.mlSdkVersion, "ml-computer-vision:".concat("1.0.2.300"));
        bundle.putString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appName, a(this.b.get()));
        bundle.putBoolean(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.openHa, android.provider.Settings.Secure.getInt(this.b.get().getContentResolver(), "hw_app_analytics_state", 0) == 1);
        bundle.putString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.countryCode, new com.huawei.hms.scankit.p.Da(this.b.get(), false).a());
        return bundle;
    }
}
