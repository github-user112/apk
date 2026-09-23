package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class aa {
    public static com.umeng.analytics.pro.y a(android.content.Context context) {
        java.lang.String str = android.os.Build.BRAND;
        com.umeng.analytics.pro.ah.a("Device", "Brand", str);
        if (android.text.TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.equalsIgnoreCase("huawei") || str.equalsIgnoreCase("honor") || str.equalsIgnoreCase("华为")) {
            return new com.umeng.analytics.pro.ab();
        }
        if (str.equalsIgnoreCase("xiaomi") || str.equalsIgnoreCase("redmi") || str.equalsIgnoreCase("meitu") || str.equalsIgnoreCase("小米")) {
            return new com.umeng.analytics.pro.ag();
        }
        if (str.equalsIgnoreCase("vivo")) {
            return new com.umeng.analytics.pro.af();
        }
        if (str.equalsIgnoreCase("oppo") || str.equalsIgnoreCase("oneplus")) {
            return new com.umeng.analytics.pro.ad();
        }
        if (str.equalsIgnoreCase("lenovo") || str.equalsIgnoreCase("zuk")) {
            return new com.umeng.analytics.pro.ac();
        }
        if (android.os.Build.MANUFACTURER.equalsIgnoreCase("SAMSUNG")) {
            return new com.umeng.analytics.pro.ae();
        }
        return null;
    }
}
