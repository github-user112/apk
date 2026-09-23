package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Uc {
    public static java.lang.String a() {
        return android.os.Build.VERSION.RELEASE;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static java.lang.String a(android.content.Context context) {
        android.net.NetworkInfo activeNetworkInfo = ((android.net.ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        if (activeNetworkInfo != null && activeNetworkInfo.getType() == 1) {
            return "wifi";
        }
        if (activeNetworkInfo == null || activeNetworkInfo.getType() != 0) {
            return "Unknown";
        }
        java.lang.String subtypeName = activeNetworkInfo.getSubtypeName();
        switch (((android.telephony.TelephonyManager) context.getSystemService("phone")).getNetworkType()) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
                return "2G";
            case 3:
            case 5:
            case 6:
            case 8:
            case 9:
            case 10:
            case 12:
            case 14:
            case 15:
                return "3G";
            case 13:
                return "4G";
            default:
                if (!subtypeName.equalsIgnoreCase("TD-SCDMA") && !subtypeName.equalsIgnoreCase("WCDMA") && !subtypeName.equalsIgnoreCase("CDMA2000")) {
                    return subtypeName;
                }
                return "3G";
        }
    }

    public static java.lang.String a(android.content.Context context, boolean z) {
        return new com.huawei.hms.scankit.p.Cc(context, z).a();
    }

    public static java.lang.String b() {
        return "";
    }

    public static java.lang.String b(android.content.Context context) {
        return ((android.telephony.TelephonyManager) context.getSystemService("phone")).getNetworkOperator();
    }

    public static java.lang.String c() {
        return android.os.Build.MODEL;
    }

    public static java.lang.String d() throws java.lang.NoSuchMethodException, java.lang.ClassNotFoundException, java.lang.SecurityException {
        try {
            try {
                java.lang.Class<?> cls = java.lang.Class.forName("android.os.SystemProperties");
                java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("get", java.lang.String.class);
                java.lang.Object[] objArr = new java.lang.Object[1];
                objArr[0] = "ro.build.version.emui";
                return (java.lang.String) declaredMethod.invoke(cls, objArr);
            } catch (java.lang.ClassNotFoundException | java.lang.NoSuchMethodException unused) {
                return null;
            }
        } catch (java.lang.RuntimeException | java.lang.reflect.InvocationTargetException | java.lang.Exception unused2) {
            return "";
        }
    }
}
