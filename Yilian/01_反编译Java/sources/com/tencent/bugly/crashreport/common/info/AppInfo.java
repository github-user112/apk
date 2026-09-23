package com.tencent.bugly.crashreport.common.info;

/* loaded from: classes.dex */
public class AppInfo {
    public static final java.lang.String[] a = "@buglyAllChannel@".split(",");
    public static final java.lang.String[] b = "@buglyAllChannelPriority@".split(",");

    /* renamed from: c, reason: collision with root package name */
    public static android.app.ActivityManager f961c;

    public static java.lang.String a(int i) {
        java.lang.Throwable th;
        java.io.FileReader fileReader;
        try {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("/proc/");
            sb.append(i);
            sb.append("/cmdline");
            fileReader = new java.io.FileReader(sb.toString());
            try {
                char[] cArr = new char[512];
                fileReader.read(cArr);
                int i2 = 0;
                while (i2 < 512 && cArr[i2] != 0) {
                    i2++;
                }
                java.lang.String strSubstring = new java.lang.String(cArr).substring(0, i2);
                try {
                    fileReader.close();
                } catch (java.lang.Throwable unused) {
                }
                return strSubstring;
            } catch (java.lang.Throwable th2) {
                th = th2;
                try {
                    if (!com.tencent.bugly.proguard.aa.b(th)) {
                        th.printStackTrace();
                    }
                    java.lang.String strValueOf = java.lang.String.valueOf(i);
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (java.lang.Throwable unused2) {
                        }
                    }
                    return strValueOf;
                } catch (java.lang.Throwable th3) {
                    if (fileReader != null) {
                        try {
                            fileReader.close();
                        } catch (java.lang.Throwable unused3) {
                        }
                    }
                    throw th3;
                }
            }
        } catch (java.lang.Throwable th4) {
            th = th4;
            fileReader = null;
        }
    }

    public static java.lang.String a(android.content.Context context) {
        java.lang.CharSequence applicationLabel;
        if (context == null) {
            return null;
        }
        try {
            android.content.pm.PackageManager packageManager = context.getPackageManager();
            android.content.pm.ApplicationInfo applicationInfo = context.getApplicationInfo();
            if (packageManager != null && applicationInfo != null && (applicationLabel = packageManager.getApplicationLabel(applicationInfo)) != null) {
                return applicationLabel.toString();
            }
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
        }
        return null;
    }

    public static java.util.List<java.lang.String> a(java.util.Map<java.lang.String, java.lang.String> map) {
        if (map == null) {
            return null;
        }
        try {
            java.lang.String str = map.get("BUGLY_DISABLE");
            if (str == null || str.length() == 0) {
                return null;
            }
            java.lang.String[] strArrSplit = str.split(",");
            for (int i = 0; i < strArrSplit.length; i++) {
                strArrSplit[i] = strArrSplit[i].trim();
            }
            return java.util.Arrays.asList(strArrSplit);
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public static boolean a() {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("android.app.ActivityThread");
            java.lang.reflect.Field declaredField = cls.getDeclaredField("sCurrentActivityThread");
            declaredField.setAccessible(true);
            java.lang.Object obj = declaredField.get(cls);
            java.lang.reflect.Field declaredField2 = cls.getDeclaredField("mActivities");
            declaredField2.setAccessible(true);
            for (java.util.Map.Entry entry : ((java.util.Map) declaredField2.get(obj)).entrySet()) {
                java.lang.reflect.Field declaredField3 = java.lang.Class.forName("android.app.ActivityThread$ActivityClientRecord").getDeclaredField(com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME);
                declaredField3.setAccessible(true);
                android.app.Activity activity = (android.app.Activity) declaredField3.get(entry.getValue());
                java.lang.reflect.Field declaredField4 = android.app.Activity.class.getDeclaredField("mResumed");
                declaredField4.setAccessible(true);
                if (((java.lang.Boolean) declaredField4.get(activity)).booleanValue()) {
                    return true;
                }
            }
            return false;
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.a(th);
            return true;
        }
    }

    public static boolean a(android.app.ActivityManager activityManager) {
        if (activityManager == null) {
            com.tencent.bugly.proguard.aa.a("is proc running, ActivityManager is null", new java.lang.Object[0]);
            return true;
        }
        java.util.List<android.app.ActivityManager.RunningAppProcessInfo> runningAppProcesses = activityManager.getRunningAppProcesses();
        if (runningAppProcesses == null) {
            com.tencent.bugly.proguard.aa.a("running proc info list is empty, my proc not running.", new java.lang.Object[0]);
            return false;
        }
        int iMyPid = android.os.Process.myPid();
        java.util.Iterator<android.app.ActivityManager.RunningAppProcessInfo> it = runningAppProcesses.iterator();
        while (it.hasNext()) {
            if (it.next().pid == iMyPid) {
                com.tencent.bugly.proguard.aa.a("my proc is running.", new java.lang.Object[0]);
                return true;
            }
        }
        com.tencent.bugly.proguard.aa.a("proc not in running proc info list, my proc not running.", new java.lang.Object[0]);
        return false;
    }

    public static java.util.Map<java.lang.String, java.lang.String> b(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            android.content.pm.ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                return null;
            }
            java.util.HashMap map = new java.util.HashMap();
            java.lang.Object obj = applicationInfo.metaData.get("BUGLY_DISABLE");
            if (obj != null) {
                map.put("BUGLY_DISABLE", obj.toString());
            }
            java.lang.Object obj2 = applicationInfo.metaData.get("BUGLY_APPID");
            if (obj2 != null) {
                map.put("BUGLY_APPID", obj2.toString());
            }
            java.lang.Object obj3 = applicationInfo.metaData.get("BUGLY_APP_CHANNEL");
            if (obj3 != null) {
                map.put("BUGLY_APP_CHANNEL", obj3.toString());
            }
            java.lang.Object obj4 = applicationInfo.metaData.get("BUGLY_APP_VERSION");
            if (obj4 != null) {
                map.put("BUGLY_APP_VERSION", obj4.toString());
            }
            java.lang.Object obj5 = applicationInfo.metaData.get("BUGLY_ENABLE_DEBUG");
            if (obj5 != null) {
                map.put("BUGLY_ENABLE_DEBUG", obj5.toString());
            }
            java.lang.Object obj6 = applicationInfo.metaData.get("com.tencent.rdm.uuid");
            if (obj6 != null) {
                map.put("com.tencent.rdm.uuid", obj6.toString());
            }
            java.lang.Object obj7 = applicationInfo.metaData.get("BUGLY_APP_BUILD_NO");
            if (obj7 != null) {
                map.put("BUGLY_APP_BUILD_NO", obj7.toString());
            }
            java.lang.Object obj8 = applicationInfo.metaData.get("BUGLY_AREA");
            if (obj8 != null) {
                map.put("BUGLY_AREA", obj8.toString());
            }
            return map;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return null;
        }
    }

    public static android.content.pm.PackageInfo c(android.content.Context context) {
        try {
            return context.getPackageManager().getPackageInfo(d(context), 0);
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public static java.lang.String d(android.content.Context context) {
        if (context == null) {
            return null;
        }
        try {
            return context.getPackageName();
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.proguard.aa.b(th)) {
                return "fail";
            }
            th.printStackTrace();
            return "fail";
        }
    }

    public static boolean e(android.content.Context context) {
        if (context == null) {
            return false;
        }
        if (f961c == null) {
            f961c = (android.app.ActivityManager) context.getSystemService(com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME);
        }
        try {
            android.app.ActivityManager.MemoryInfo memoryInfo = new android.app.ActivityManager.MemoryInfo();
            f961c.getMemoryInfo(memoryInfo);
            if (!memoryInfo.lowMemory) {
                return false;
            }
            com.tencent.bugly.proguard.aa.a("Memory is low.", new java.lang.Object[0]);
            return true;
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
            return false;
        }
    }
}
