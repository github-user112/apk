package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Sa {
    public static final java.lang.String a = "e";

    public static com.huawei.hms.scankit.p.Pa a(android.content.Context context, android.os.Bundle bundle) {
        if (bundle == null) {
            return new com.huawei.hms.scankit.p.Pa();
        }
        java.lang.String string = bundle.getString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.packageName);
        if (string == null || string.equals("")) {
            com.huawei.hms.scankit.p.Qa.c(a, "packageName from bundle is null.");
            string = context.getPackageName();
        }
        java.lang.String string2 = bundle.getString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appid);
        java.lang.String string3 = bundle.getString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.mlSdkVersion);
        java.lang.String string4 = bundle.getString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appName);
        java.lang.Boolean boolValueOf = java.lang.Boolean.valueOf(bundle.getBoolean(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.openHa));
        return new com.huawei.hms.scankit.p.Pa(string, string2, string3, string4, boolValueOf.booleanValue(), bundle.getString(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.countryCode));
    }

    public static java.lang.String a() {
        return android.os.Build.VERSION.RELEASE;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0076 A[ORIG_RETURN, RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r5) {
        /*
            java.lang.String r0 = "Unknown"
            if (r5 != 0) goto L5
            return r0
        L5:
            r1 = 0
            android.content.pm.PackageManager r2 = r5.getPackageManager()
            java.lang.String r3 = r5.getPackageName()
            java.lang.String r4 = "android.permission.ACCESS_NETWORK_STATE"
            int r2 = r2.checkPermission(r4, r3)
            r3 = 1
            if (r2 != 0) goto L19
            r2 = 1
            goto L1a
        L19:
            r2 = 0
        L1a:
            if (r2 != 0) goto L1d
            return r0
        L1d:
            java.lang.String r2 = "connectivity"
            java.lang.Object r2 = r5.getSystemService(r2)     // Catch: java.lang.SecurityException -> L2a
            android.net.ConnectivityManager r2 = (android.net.ConnectivityManager) r2     // Catch: java.lang.SecurityException -> L2a
            android.net.NetworkInfo r1 = r2.getActiveNetworkInfo()     // Catch: java.lang.SecurityException -> L2a
            goto L31
        L2a:
            java.lang.String r2 = com.huawei.hms.scankit.p.Sa.a
            java.lang.String r4 = "can not get android.permission.ACCESS_NETWORK_STATE."
            com.huawei.hms.scankit.p.Qa.c(r2, r4)
        L31:
            if (r1 == 0) goto L3c
            int r2 = r1.getType()
            if (r2 != r3) goto L3c
            java.lang.String r0 = "wifi"
            goto L78
        L3c:
            if (r1 == 0) goto L78
            int r2 = r1.getType()
            if (r2 != 0) goto L78
            java.lang.String r0 = r1.getSubtypeName()
            java.lang.String r1 = "phone"
            java.lang.Object r5 = r5.getSystemService(r1)
            android.telephony.TelephonyManager r5 = (android.telephony.TelephonyManager) r5
            int r5 = r5.getNetworkType()
            switch(r5) {
                case 1: goto L73;
                case 2: goto L73;
                case 3: goto L76;
                case 4: goto L73;
                case 5: goto L76;
                case 6: goto L76;
                case 7: goto L73;
                case 8: goto L76;
                case 9: goto L76;
                case 10: goto L76;
                case 11: goto L73;
                case 12: goto L76;
                case 13: goto L70;
                case 14: goto L76;
                case 15: goto L76;
                default: goto L57;
            }
        L57:
            java.lang.String r5 = "TD-SCDMA"
            boolean r5 = r0.equalsIgnoreCase(r5)
            if (r5 != 0) goto L76
            java.lang.String r5 = "WCDMA"
            boolean r5 = r0.equalsIgnoreCase(r5)
            if (r5 != 0) goto L76
            java.lang.String r5 = "CDMA2000"
            boolean r5 = r0.equalsIgnoreCase(r5)
            if (r5 == 0) goto L78
            goto L76
        L70:
            java.lang.String r0 = "4G"
            goto L78
        L73:
            java.lang.String r0 = "2G"
            goto L78
        L76:
            java.lang.String r0 = "3G"
        L78:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.Sa.a(android.content.Context):java.lang.String");
    }

    public static java.util.LinkedHashMap<java.lang.String, java.lang.String> a(com.huawei.hms.scankit.p.Ma ma) {
        java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap = new java.util.LinkedHashMap<>();
        linkedHashMap.put(com.tencent.tinker.loader.hotplug.EnvConsts.PACKAGE_MANAGER_SRVNAME, ma.p());
        linkedHashMap.put(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appid, ma.e());
        linkedHashMap.put(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION, ma.t());
        linkedHashMap.put("service", ma.r());
        linkedHashMap.put("apiName", ma.b());
        linkedHashMap.put("result", ma.q());
        linkedHashMap.put("costTime", ma.g());
        linkedHashMap.put("callTime", ma.f());
        linkedHashMap.put("transId", ma.s());
        linkedHashMap.put("operator", ma.o());
        linkedHashMap.put("networkType", ma.n());
        linkedHashMap.put("apkVersion", ma.c());
        linkedHashMap.put(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.appName, ma.d());
        linkedHashMap.put(com.huawei.hms.mlsdk.common.MLApplicationSetting.BundleKeyConstants.AppInfo.countryCode, ma.h());
        linkedHashMap.put("deviceType", ma.j());
        linkedHashMap.put("emuiVersion", ma.k());
        linkedHashMap.put("androidVersion", ma.a());
        linkedHashMap.put("moduleName", ma.l());
        linkedHashMap.put("moduleVersion", ma.m());
        linkedHashMap.put("deviceCategory", ma.i());
        return linkedHashMap;
    }

    public static java.lang.String b() {
        return "";
    }

    public static java.lang.String b(android.content.Context context) {
        return context == null ? "" : ((android.telephony.TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
    }

    public static java.lang.String c() {
        return android.os.Build.MODEL;
    }

    public static java.lang.String d() throws java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("android.os.SystemProperties");
            java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("get", java.lang.String.class);
            java.lang.Object[] objArr = new java.lang.Object[1];
            objArr[0] = "ro.build.version.emui";
            return (java.lang.String) declaredMethod.invoke(cls, objArr);
        } catch (java.lang.ClassNotFoundException | java.lang.NoSuchMethodException unused) {
            return null;
        } catch (java.lang.reflect.InvocationTargetException | java.lang.Exception unused2) {
            return "";
        }
    }

    public static java.lang.String e() {
        return "MLKit";
    }
}
