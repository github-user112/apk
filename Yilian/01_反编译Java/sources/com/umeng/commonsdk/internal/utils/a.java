package com.umeng.commonsdk.internal.utils;

/* loaded from: classes.dex */
public class a {

    /* renamed from: com.umeng.commonsdk.internal.utils.a$a, reason: collision with other inner class name */
    public static class C0020a {
        public java.lang.String a;
        public java.lang.String b;
    }

    public static class b {
        public int a;
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.String f1469c;

        /* renamed from: d, reason: collision with root package name */
        public int f1470d;

        /* renamed from: e, reason: collision with root package name */
        public int f1471e;

        /* renamed from: f, reason: collision with root package name */
        public int f1472f;

        /* renamed from: g, reason: collision with root package name */
        public int f1473g;
        public java.lang.String h;
        public int i;
        public int j;
        public int k;
        public long l;
    }

    public static float a(android.content.Context context) {
        if (context == null) {
            return 0.0f;
        }
        android.content.res.Configuration configuration = new android.content.res.Configuration();
        try {
            configuration.updateFrom(context.getResources().getConfiguration());
            return configuration.fontScale;
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getFontSize:");
            sbO.append(e2.getMessage());
            com.umeng.commonsdk.statistics.common.ULog.e(sbO.toString());
            return 0.0f;
        }
    }

    public static long a(android.content.Context context, java.lang.String str) {
        if (context == null) {
            return 0L;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).firstInstallTime;
        } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            com.umeng.commonsdk.statistics.common.ULog.e("getAppFirstInstallTime" + e2.getMessage());
            return 0L;
        }
    }

    public static boolean a() {
        return com.umeng.commonsdk.internal.utils.h.a();
    }

    public static long b(android.content.Context context, java.lang.String str) {
        if (context == null) {
            return 0L;
        }
        try {
            return context.getPackageManager().getPackageInfo(str, 0).lastUpdateTime;
        } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            com.umeng.commonsdk.statistics.common.ULog.e("getAppLastUpdateTime:" + e2.getMessage());
            return 0L;
        }
    }

    public static android.net.wifi.WifiInfo b(android.content.Context context) {
        android.net.wifi.WifiManager wifiManager;
        if (context == null || !com.umeng.commonsdk.statistics.common.DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (android.net.wifi.WifiManager) context.getSystemService("wifi")) == null) {
            return null;
        }
        return wifiManager.getConnectionInfo();
    }

    public static java.lang.String b() {
        return new java.text.SimpleDateFormat().format(new java.util.Date());
    }

    public static java.lang.String c() {
        return com.umeng.commonsdk.internal.utils.g.a("df");
    }

    public static java.lang.String c(android.content.Context context, java.lang.String str) {
        try {
            return context.getPackageManager().getInstallerPackageName(str);
        } catch (java.lang.Exception e2) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            com.umeng.commonsdk.statistics.common.ULog.e("getAppInstaller:" + e2.getMessage());
            return null;
        }
    }

    public static void c(android.content.Context context) {
        android.net.wifi.WifiInfo wifiInfoB;
        if (context == null || (wifiInfoB = b(context)) == null) {
            return;
        }
        com.umeng.commonsdk.internal.utils.a.b bVar = new com.umeng.commonsdk.internal.utils.a.b();
        bVar.a = wifiInfoB.describeContents();
        bVar.b = wifiInfoB.getBSSID();
        bVar.f1469c = wifiInfoB.getSSID();
        bVar.f1470d = android.os.Build.VERSION.SDK_INT >= 21 ? wifiInfoB.getFrequency() : -1;
        boolean z = true;
        if (wifiInfoB.getHiddenSSID()) {
            bVar.f1471e = 1;
        } else {
            bVar.f1471e = 0;
        }
        if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.H)) {
            bVar.f1472f = wifiInfoB.getIpAddress();
        }
        bVar.f1473g = wifiInfoB.getLinkSpeed();
        bVar.h = com.umeng.commonsdk.statistics.common.DeviceConfig.getMac(context);
        bVar.i = wifiInfoB.getNetworkId();
        bVar.j = wifiInfoB.getRssi();
        bVar.k = f(context);
        bVar.l = java.lang.System.currentTimeMillis();
        try {
            org.json.JSONArray jSONArrayA = com.umeng.commonsdk.internal.utils.f.a(context);
            if (jSONArrayA == null || jSONArrayA.length() <= 0) {
                z = false;
            } else {
                for (int i = 0; i < jSONArrayA.length(); i++) {
                    java.lang.String strOptString = jSONArrayA.optJSONObject(i).optString(com.umeng.commonsdk.internal.utils.f.f1486d, null);
                    if (strOptString != null && strOptString.equals(bVar.f1469c)) {
                        break;
                    }
                }
                z = false;
            }
            if (z) {
                return;
            }
            com.umeng.commonsdk.internal.utils.f.a(context, bVar);
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("wifiChange:");
            sbO.append(e2.getMessage());
            com.umeng.commonsdk.statistics.common.ULog.e(sbO.toString());
        }
    }

    public static int d(android.content.Context context, java.lang.String str) {
        if (context == null) {
            return 0;
        }
        try {
            android.content.pm.ApplicationInfo applicationInfo = context.getPackageManager().getPackageInfo(str, 0).applicationInfo;
            if (applicationInfo != null) {
                return applicationInfo.uid;
            }
            return 0;
        } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(context, e2);
            com.umeng.commonsdk.statistics.common.ULog.e("getAppUid:" + e2.getMessage());
            return 0;
        }
    }

    public static long d() {
        return java.lang.System.currentTimeMillis() - android.os.SystemClock.elapsedRealtime();
    }

    public static org.json.JSONArray d(android.content.Context context) {
        if (context == null) {
            return null;
        }
        return com.umeng.commonsdk.internal.utils.f.a(context);
    }

    public static java.lang.String e() throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        try {
            java.lang.reflect.Method declaredMethod = android.os.Build.class.getDeclaredMethod("getString", java.lang.String.class);
            declaredMethod.setAccessible(true);
            java.lang.String string = declaredMethod.invoke(null, "net.hostname").toString();
            return (string == null || string.equalsIgnoreCase("")) ? string : com.umeng.commonsdk.statistics.common.HelperUtils.getUmengMD5(string);
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getHostName:");
            sbO.append(e2.getMessage());
            com.umeng.commonsdk.statistics.common.ULog.e(sbO.toString());
            return null;
        }
    }

    public static java.lang.String e(android.content.Context context, java.lang.String str) throws android.content.pm.PackageManager.NameNotFoundException {
        if (context == null) {
            return null;
        }
        try {
            android.content.pm.ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(str, 128);
            if (applicationInfo != null) {
                return (java.lang.String) applicationInfo.loadLabel(context.getPackageManager());
            }
            return null;
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getLabel:");
            sbO.append(e2.getMessage());
            com.umeng.commonsdk.statistics.common.ULog.e(sbO.toString());
            return null;
        }
    }

    public static void e(android.content.Context context) {
        if (context == null) {
            return;
        }
        com.umeng.commonsdk.internal.utils.f.b(context);
    }

    public static int f(android.content.Context context) {
        android.net.wifi.WifiManager wifiManager;
        if (context == null || !com.umeng.commonsdk.statistics.common.DeviceConfig.checkPermission(context, "android.permission.ACCESS_WIFI_STATE") || (wifiManager = (android.net.wifi.WifiManager) context.getSystemService("wifi")) == null) {
            return -1;
        }
        return wifiManager.getWifiState();
    }

    public static int g(android.content.Context context) {
        if (context == null) {
            return 0;
        }
        android.content.res.Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"));
    }

    public static int h(android.content.Context context) {
        if (context == null) {
            return 0;
        }
        android.content.res.Resources resources = context.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
    }

    public static android.util.DisplayMetrics i(android.content.Context context) {
        if (context == null) {
            return null;
        }
        return context.getResources().getDisplayMetrics();
    }

    public static java.util.List<android.view.inputmethod.InputMethodInfo> j(android.content.Context context) {
        android.view.inputmethod.InputMethodManager inputMethodManager;
        if (context == null || (inputMethodManager = (android.view.inputmethod.InputMethodManager) context.getSystemService("input_method")) == null) {
            return null;
        }
        return inputMethodManager.getInputMethodList();
    }

    public static java.util.List<com.umeng.commonsdk.internal.utils.a.C0020a> k(android.content.Context context) {
        java.lang.String[] list;
        if (context == null) {
            return null;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        try {
            java.io.File file = new java.io.File(android.os.Environment.getExternalStorageDirectory() + "/Android/data/");
            if (file.isDirectory() && (list = file.list()) != null && list.length > 0) {
                for (java.lang.String str : list) {
                    if (str != null && !str.startsWith(".")) {
                        com.umeng.commonsdk.internal.utils.a.C0020a c0020a = new com.umeng.commonsdk.internal.utils.a.C0020a();
                        c0020a.a = str;
                        c0020a.b = e(context, str);
                        arrayList.add(c0020a);
                    }
                }
            }
        } catch (java.lang.Exception e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("getAppList:");
            sbO.append(e2.getMessage());
            com.umeng.commonsdk.statistics.common.ULog.e(sbO.toString());
        }
        return arrayList;
    }

    public static android.app.ActivityManager.MemoryInfo l(android.content.Context context) {
        android.app.ActivityManager activityManager;
        if (context == null || (activityManager = (android.app.ActivityManager) context.getSystemService(com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME)) == null) {
            return null;
        }
        android.app.ActivityManager.MemoryInfo memoryInfo = new android.app.ActivityManager.MemoryInfo();
        activityManager.getMemoryInfo(memoryInfo);
        return memoryInfo;
    }

    public static java.lang.String m(android.content.Context context) {
        return null;
    }

    public static java.lang.String n(android.content.Context context) {
        return null;
    }
}
