package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ia, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0156ia extends com.huawei.hms.scankit.p.AbstractC0234y {
    public static java.lang.String c() {
        java.lang.String str;
        java.lang.String str2 = "";
        try {
            java.lang.String str3 = (java.lang.String) java.lang.Class.forName(com.huawei.hms.framework.common.EmuiUtil.BUILDEX_NAME).getMethod("getUDID", new java.lang.Class[0]).invoke(null, new java.lang.Object[0]);
            try {
                com.huawei.hms.scankit.p.T.b("hmsSdk", "getUDID success");
                return str3;
            } catch (android.util.AndroidRuntimeException unused) {
                str2 = str3;
                str = "getUDID getudid failed, RuntimeException is AndroidRuntimeException";
                com.huawei.hms.scankit.p.T.c("hmsSdk", str);
                return str2;
            } catch (java.lang.ClassNotFoundException unused2) {
                str2 = str3;
                str = "getUDID method invoke failed";
                com.huawei.hms.scankit.p.T.c("hmsSdk", str);
                return str2;
            } catch (java.lang.IllegalAccessException unused3) {
                str2 = str3;
                str = "getUDID method invoke failed : Illegal AccessException";
                com.huawei.hms.scankit.p.T.c("hmsSdk", str);
                return str2;
            } catch (java.lang.IllegalArgumentException unused4) {
                str2 = str3;
                str = "getUDID method invoke failed : Illegal ArgumentException";
                com.huawei.hms.scankit.p.T.c("hmsSdk", str);
                return str2;
            } catch (java.lang.NoSuchMethodException unused5) {
                str2 = str3;
                str = "getUDID method invoke failed : NoSuchMethodException";
                com.huawei.hms.scankit.p.T.c("hmsSdk", str);
                return str2;
            } catch (java.lang.reflect.InvocationTargetException unused6) {
                str2 = str3;
                str = "getUDID method invoke failed : InvocationTargetException";
                com.huawei.hms.scankit.p.T.c("hmsSdk", str);
                return str2;
            }
        } catch (android.util.AndroidRuntimeException unused7) {
        } catch (java.lang.ClassNotFoundException unused8) {
        } catch (java.lang.IllegalAccessException unused9) {
        } catch (java.lang.IllegalArgumentException unused10) {
        } catch (java.lang.NoSuchMethodException unused11) {
        } catch (java.lang.reflect.InvocationTargetException unused12) {
        }
    }

    @android.annotation.SuppressLint({"HardwareIds", "MissingPermission"})
    public static java.lang.String e(android.content.Context context) {
        if (com.huawei.hms.scankit.p.C0165k.a(context, "android.permission.READ_PHONE_STATE")) {
            return "";
        }
        try {
            android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone");
            return telephonyManager != null ? telephonyManager.getDeviceId() : "";
        } catch (java.lang.SecurityException unused) {
            com.huawei.hms.scankit.p.T.d("hmsSdk", "getDeviceID Incorrect permissions!");
            return "";
        }
    }

    public static java.lang.String f(android.content.Context context) {
        java.lang.String str = android.os.Build.SERIAL;
        return (android.text.TextUtils.isEmpty(str) || str.equalsIgnoreCase("unknown")) ? h(context) : str;
    }

    public static android.util.Pair<java.lang.String, java.lang.String> g(android.content.Context context) {
        if (com.huawei.hms.scankit.p.C0165k.a(context, "android.permission.READ_PHONE_STATE")) {
            com.huawei.hms.scankit.p.T.c("hmsSdk", "getMccAndMnc() Pair value is empty");
            return new android.util.Pair<>("", "");
        }
        android.telephony.TelephonyManager telephonyManager = (android.telephony.TelephonyManager) context.getSystemService("phone");
        if (telephonyManager != null && telephonyManager.getSimState() == 5) {
            java.lang.String networkOperator = telephonyManager.getNetworkOperator();
            return (android.text.TextUtils.isEmpty(networkOperator) || android.text.TextUtils.equals(networkOperator, "null")) ? new android.util.Pair<>("", "") : networkOperator.length() > 3 ? new android.util.Pair<>(networkOperator.substring(0, 3), networkOperator.substring(3)) : new android.util.Pair<>("", "");
        }
        return new android.util.Pair<>("", "");
    }

    public static java.lang.String h(android.content.Context context) {
        com.huawei.hms.scankit.p.T.a("hmsSdk", "getSerial : is executed.");
        if (context == null || com.huawei.hms.scankit.p.C0165k.a(context, "android.permission.READ_PHONE_STATE")) {
            return "";
        }
        try {
            return android.os.Build.VERSION.SDK_INT >= 26 ? android.os.Build.getSerial() : "";
        } catch (java.lang.SecurityException unused) {
            com.huawei.hms.scankit.p.T.c("hmsSdk", "getSerial() Incorrect permissions!");
            return "";
        }
    }
}
