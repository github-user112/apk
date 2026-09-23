package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.y, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0234y {

    /* renamed from: com.huawei.hms.scankit.p.y$a */
    public static class a extends java.lang.Exception {
        public a(java.lang.String str) {
            super(str);
        }
    }

    public static java.lang.Object a(java.lang.Class cls, java.lang.String str, java.lang.Class[] clsArr, java.lang.Object[] objArr) throws com.huawei.hms.scankit.p.AbstractC0234y.a {
        java.lang.String str2;
        if (cls == null) {
            throw new com.huawei.hms.scankit.p.AbstractC0234y.a("class is null in invokeStaticFun");
        }
        if (clsArr == null) {
            if (objArr != null) {
                throw new com.huawei.hms.scankit.p.AbstractC0234y.a("paramsType is null, but params is not null");
            }
        } else {
            if (objArr == null) {
                throw new com.huawei.hms.scankit.p.AbstractC0234y.a("paramsType or params should be same");
            }
            if (clsArr.length != objArr.length) {
                java.lang.StringBuilder sbA = com.huawei.hms.scankit.p.Oa.a("paramsType len:");
                sbA.append(clsArr.length);
                sbA.append(" should equal params.len:");
                sbA.append(objArr.length);
                throw new com.huawei.hms.scankit.p.AbstractC0234y.a(sbA.toString());
            }
        }
        try {
        } catch (java.lang.NoSuchMethodException unused) {
            com.huawei.hms.scankit.p.T.c("hmsSdk", "invokeStaticFun(): cls.getMethod(),No Such Method !");
        }
        try {
            return cls.getMethod(str, clsArr).invoke(null, objArr);
        } catch (java.lang.IllegalAccessException unused2) {
            str2 = "invokeStaticFun(): method invoke Exception!";
            com.huawei.hms.scankit.p.T.c("hmsSdk", str2);
            return null;
        } catch (java.lang.IllegalArgumentException unused3) {
            str2 = "invokeStaticFun(): Illegal Argument!";
            com.huawei.hms.scankit.p.T.c("hmsSdk", str2);
            return null;
        } catch (java.lang.reflect.InvocationTargetException unused4) {
            str2 = "invokeStaticFun(): Invocation Target Exception!";
            com.huawei.hms.scankit.p.T.c("hmsSdk", str2);
            return null;
        }
    }

    public static java.lang.Object a(java.lang.String str, java.lang.String str2, java.lang.Class[] clsArr, java.lang.Object[] objArr) {
        java.lang.String str3;
        try {
            return a(java.lang.Class.forName(str), str2, clsArr, objArr);
        } catch (com.huawei.hms.scankit.p.AbstractC0234y.a unused) {
            str3 = "invokeStaticFun(): Static function call Exception ";
            com.huawei.hms.scankit.p.T.c("hmsSdk", str3);
            return null;
        } catch (java.lang.ClassNotFoundException unused2) {
            str3 = "invokeStaticFun() Not found class!";
            com.huawei.hms.scankit.p.T.c("hmsSdk", str3);
            return null;
        }
    }

    public static java.lang.String a() {
        return a("ro.build.version.emui", "");
    }

    public static java.lang.String a(android.content.Context context) {
        return context == null ? "" : context.getPackageName();
    }

    public static java.lang.String a(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str)) {
            return str2;
        }
        java.lang.String strA = a("android.os.SystemProperties", str, str2);
        return android.text.TextUtils.isEmpty(strA) ? a("com.huawei.android.os.SystemPropertiesEx", str, str2) : strA;
    }

    public static java.lang.String a(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.lang.Object objA = a(str, "get", new java.lang.Class[]{java.lang.String.class, java.lang.String.class}, new java.lang.Object[]{str2, str3});
        return objA != null ? (java.lang.String) objA : str3;
    }

    public static java.lang.String b() {
        java.lang.String strA = a("com.huawei.android.os.SystemPropertiesEx", "ro.huawei.build.display.id", "");
        com.huawei.hms.scankit.p.T.b("hmsSdk", "SystemPropertiesEx: get rom_ver: " + strA);
        if (!android.text.TextUtils.isEmpty(strA)) {
            return strA;
        }
        java.lang.String str = android.os.Build.DISPLAY;
        com.huawei.hms.scankit.p.T.b("hmsSdk", "SystemProperties: get rom_ver: " + str);
        return str;
    }

    public static java.lang.String b(android.content.Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(a(context), 0).versionName;
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
            com.huawei.hms.scankit.p.T.c("hmsSdk", "getVersion(): The package name is not correct!");
            return "";
        }
    }

    @android.annotation.SuppressLint({"HardwareIds"})
    public static java.lang.String c(android.content.Context context) {
        return context == null ? "" : android.provider.Settings.Secure.getString(context.getContentResolver(), com.umeng.commonsdk.statistics.idtracking.b.a);
    }

    public static java.lang.String d(android.content.Context context) throws android.content.pm.PackageManager.NameNotFoundException {
        java.lang.Object obj;
        try {
            android.content.pm.ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null || (obj = applicationInfo.metaData.get("CHANNEL")) == null) {
                return "Unknown";
            }
            java.lang.String string = obj.toString();
            return string.length() > 256 ? "Unknown" : string;
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
            com.huawei.hms.scankit.p.T.c("hmsSdk", "getChannel(): The packageName is not correct!");
            return "Unknown";
        }
    }
}
