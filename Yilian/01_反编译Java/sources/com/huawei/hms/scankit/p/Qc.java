package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public abstract class Qc {
    public static java.lang.String a = "FORMAT_UNKNOWN";
    public static java.lang.String b = "OTHER";

    /* renamed from: c, reason: collision with root package name */
    public static android.util.SparseArray<java.lang.String> f618c = new com.huawei.hms.scankit.p.Dc();

    /* renamed from: d, reason: collision with root package name */
    public static android.util.SparseArray<java.lang.String> f619d = new com.huawei.hms.scankit.p.Ec();

    /* renamed from: e, reason: collision with root package name */
    public android.content.Context f620e;

    /* renamed from: f, reason: collision with root package name */
    public java.util.LinkedHashMap<java.lang.String, java.lang.String> f621f = new java.util.LinkedHashMap<>();

    /* renamed from: g, reason: collision with root package name */
    public volatile long f622g;

    public Qc(android.os.Bundle bundle, android.content.Context context) throws android.content.pm.PackageManager.NameNotFoundException {
        this.f620e = context;
        b(bundle);
    }

    public static java.lang.String a(int i) {
        return f618c.get(i, a);
    }

    private java.lang.String a(android.os.Bundle bundle) {
        java.lang.String[] strArr = {"huawei_module_scankit_sdk_version", "com.huawei.hms.client.service.name:scan", "com.huawei.hms.client.service.name:scanplus", "com.huawei.hms.client.service.name:scankit"};
        if (bundle == null) {
            return "scankit:1.0.2.300";
        }
        for (int i = 0; i < 4; i++) {
            java.lang.String str = strArr[i];
            if (bundle.getString(str) != null) {
                return bundle.getString(str);
            }
        }
        return "scankit:1.0.2.300";
    }

    private java.lang.String b() {
        return android.os.Build.VERSION.SDK_INT == 24 ? "lite-noso" : "lite";
    }

    public static java.lang.String b(int i) {
        return f619d.get(i, b);
    }

    private void b(android.os.Bundle bundle) throws android.content.pm.PackageManager.NameNotFoundException {
        java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap;
        java.lang.String str;
        try {
            java.lang.String packageName = this.f620e.getPackageName();
            this.f621f.put(com.tencent.tinker.loader.hotplug.EnvConsts.PACKAGE_MANAGER_SRVNAME, packageName);
            if (bundle == null || !bundle.containsKey(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appid)) {
                this.f621f.put(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appid, packageName);
            } else {
                this.f621f.put(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appid, bundle.getString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appid));
            }
            android.content.pm.PackageManager packageManager = this.f620e.getPackageManager();
            android.content.pm.ApplicationInfo applicationInfo = packageManager.getApplicationInfo(packageName, 128);
            this.f621f.put(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appName, applicationInfo.loadLabel(packageManager).toString());
            this.f621f.put(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION, a(applicationInfo.metaData));
            this.f621f.put("hmscoreVersion", c());
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
            com.huawei.hms.scankit.util.a.b("HaLog", "PackageManager.NameNotFoundException");
        } catch (java.lang.Exception unused2) {
            com.huawei.hms.scankit.util.a.b("HaLog", "initValue Exception");
        }
        try {
            this.f621f.put("algopt", b());
            if (e()) {
                linkedHashMap = this.f621f;
                str = "unknown";
            } else {
                linkedHashMap = this.f621f;
                str = "1.0";
            }
            linkedHashMap.put("apkVersion", str);
            this.f621f.put("service", "com.huawei.hms.scankit");
            this.f621f.put("operator", com.huawei.hms.scankit.p.Uc.b(this.f620e));
            this.f621f.put("networkType", com.huawei.hms.scankit.p.Uc.a(this.f620e));
            this.f621f.put(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.countryCode, com.huawei.hms.scankit.p.Uc.a(this.f620e, false));
            this.f621f.put("deviceType", com.huawei.hms.scankit.p.Uc.c());
            this.f621f.put("emuiVersion", com.huawei.hms.scankit.p.Uc.d());
            this.f621f.put("androidVersion", com.huawei.hms.scankit.p.Uc.a());
            this.f621f.put("deviceCategory", com.huawei.hms.scankit.p.Uc.b());
        } catch (java.lang.RuntimeException unused3) {
            com.huawei.hms.scankit.util.a.b("HaLog", "initValue RuntimeException");
        } catch (java.lang.Exception unused4) {
            com.huawei.hms.scankit.util.a.b("HaLog", "initValue Exception");
        }
    }

    private java.lang.String c() {
        try {
            return this.f620e.getPackageManager().getPackageInfo("com.huawei.hwid", 0).versionName;
        } catch (android.content.pm.PackageManager.NameNotFoundException | java.lang.Exception unused) {
            return "unknown";
        }
    }

    private boolean d() {
        try {
            java.lang.String property = com.huawei.hms.framework.common.SystemPropUtils.getProperty("get", "ro.hw.country", "android.os.SystemProperties", "UNKNOWN");
            android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) this.f620e.getApplicationContext().getSystemService("phone");
            java.lang.String networkCountryIso = telephonyManager.getNetworkCountryIso();
            java.lang.String simCountryIso = telephonyManager.getSimCountryIso();
            if ("CN".equalsIgnoreCase(property) && "CN".equalsIgnoreCase(networkCountryIso)) {
                return "CN".equalsIgnoreCase(simCountryIso);
            }
            return false;
        } catch (java.lang.RuntimeException | java.lang.Exception unused) {
            return false;
        }
    }

    private boolean e() {
        return true;
    }

    public boolean a() {
        if (com.huawei.hms.scankit.util.b.c(this.f620e)) {
            android.util.Log.i("HaLog", "allowLog: forbidLog");
            return false;
        }
        try {
            if (!e() && !d()) {
                if (android.provider.Settings.Secure.getInt(this.f620e.getContentResolver(), "hw_app_analytics_state", 0) != 1) {
                    return false;
                }
            }
            return true;
        } catch (java.lang.RuntimeException | java.lang.Exception unused) {
            return false;
        }
    }
}
