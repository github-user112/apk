package com.huawei.hms.framework.network.grs.d;

/* loaded from: classes.dex */
public class a {
    public static java.lang.String a() {
        return "4.0.20.301";
    }

    public static java.lang.String a(android.content.Context context) {
        if (context == null) {
            return "";
        }
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionName;
        } catch (android.content.pm.PackageManager.NameNotFoundException e2) {
            com.huawei.hms.framework.common.Logger.w("AgentUtil", "", e2);
            return "";
        }
    }

    public static java.lang.String a(android.content.Context context, java.lang.String str, java.lang.String str2) {
        if (context == null) {
            return java.lang.String.format(java.util.Locale.ROOT, e.a.c.a.a.e(str, "/%s"), a());
        }
        java.lang.String packageName = context.getPackageName();
        java.lang.String strA = a(context);
        java.lang.String str3 = android.os.Build.VERSION.RELEASE;
        java.lang.String str4 = android.os.Build.MODEL;
        java.util.Locale locale = java.util.Locale.ROOT;
        java.lang.String strF = e.a.c.a.a.f("%s/%s (Linux; Android %s; %s) ", str, "/%s %s");
        java.lang.Object[] objArr = new java.lang.Object[6];
        objArr[0] = packageName;
        objArr[1] = strA;
        objArr[2] = str3;
        objArr[3] = str4;
        objArr[4] = a();
        if (android.text.TextUtils.isEmpty(str2)) {
            str2 = "no_service_name";
        }
        objArr[5] = str2;
        return java.lang.String.format(locale, strF, objArr);
    }

    public static java.lang.String b(android.content.Context context, java.lang.String str, java.lang.String str2) {
        return a(context, str, str2);
    }
}
