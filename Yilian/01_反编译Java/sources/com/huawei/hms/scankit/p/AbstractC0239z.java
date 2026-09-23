package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.z, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0239z {
    public static java.lang.String a(android.content.Context context, java.lang.String str, java.lang.String str2) {
        if (!android.text.TextUtils.isEmpty(com.huawei.hms.scankit.p.AbstractC0115a.e(str, str2))) {
            return com.huawei.hms.scankit.p.AbstractC0115a.e(str, str2);
        }
        com.huawei.hms.scankit.p.T.b("hmsSdk", "getAndroidId(): to getConfigByType()");
        return c(context, str, str2);
    }

    public static java.lang.String b(android.content.Context context, java.lang.String str, java.lang.String str2) {
        if (!str2.equals("oper") && !str2.equals("maint") && !str2.equals("diffprivacy") && !str2.equals("preins")) {
            com.huawei.hms.scankit.p.T.c("hmsSdk", "getChannel(): Invalid type: " + str2);
            return "";
        }
        return d(context, str, str2);
    }

    public static java.lang.String c(android.content.Context context, java.lang.String str, java.lang.String str2) {
        if (!com.huawei.hms.scankit.p.AbstractC0115a.k(str, str2)) {
            return "";
        }
        if (android.text.TextUtils.isEmpty(com.huawei.hms.scankit.p.AbstractC0120b.c())) {
            com.huawei.hms.scankit.p.B.a().c().j(com.huawei.hms.scankit.p.AbstractC0234y.c(context));
        }
        return com.huawei.hms.scankit.p.AbstractC0120b.c();
    }

    public static java.lang.String d(android.content.Context context, java.lang.String str, java.lang.String str2) throws android.content.pm.PackageManager.NameNotFoundException {
        if (!android.text.TextUtils.isEmpty(com.huawei.hms.scankit.p.AbstractC0125c.h(str, str2))) {
            return com.huawei.hms.scankit.p.AbstractC0125c.h(str, str2);
        }
        com.huawei.hms.scankit.p.E eC = com.huawei.hms.scankit.p.B.a().c();
        if (android.text.TextUtils.isEmpty(eC.k())) {
            java.lang.String strD = com.huawei.hms.scankit.p.AbstractC0234y.d(context);
            if (!com.huawei.hms.scankit.p.C0170l.a("channel", strD, 256)) {
                strD = "";
            }
            eC.f(strD);
        }
        return eC.k();
    }
}
