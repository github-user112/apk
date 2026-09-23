package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ka, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0166ka extends com.huawei.hms.scankit.p.P {
    public static com.huawei.hms.scankit.p.K a(java.util.List<com.huawei.hms.scankit.p.J> list, java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        com.huawei.hms.scankit.p.T.b("hmsSdk", "generate UploadData");
        com.huawei.hms.scankit.p.K kA = com.huawei.hms.scankit.p.P.a();
        if (kA == null) {
            return null;
        }
        kA.a(b(com.huawei.hms.scankit.p.S.a.c(), str, str2, str3));
        kA.a(c(str, str2));
        kA.a(b(str2, str, str4));
        kA.a(com.huawei.hms.scankit.p.AbstractC0125c.l(str, str2));
        kA.a(list);
        return kA;
    }

    public static com.huawei.hms.scankit.p.C0176ma b(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4) {
        com.huawei.hms.scankit.p.C0176ma c0176maA = com.huawei.hms.scankit.p.P.a(str, str2, str3, str4);
        java.lang.String strA = com.huawei.hms.scankit.p.C0146ga.a().a(com.huawei.hms.scankit.p.AbstractC0125c.b(str2, str3));
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        java.lang.String strA2 = com.huawei.hms.scankit.p.C0204s.a().a(com.huawei.hms.scankit.p.AbstractC0120b.e() + strA + jCurrentTimeMillis);
        c0176maA.b(java.lang.String.valueOf(jCurrentTimeMillis));
        c0176maA.g(strA2);
        return c0176maA;
    }

    public static com.huawei.hms.scankit.p.C0181na b(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        com.huawei.hms.scankit.p.C0181na c0181naA = com.huawei.hms.scankit.p.P.a(str, str2, str3);
        android.util.Pair<java.lang.String, java.lang.String> pairB = com.huawei.hms.scankit.p.C0146ga.a().b(str2, str);
        c0181naA.f((java.lang.String) pairB.first);
        c0181naA.g((java.lang.String) pairB.second);
        c0181naA.h(com.huawei.hms.scankit.p.AbstractC0234y.b());
        c0181naA.e(com.huawei.hms.scankit.p.C0146ga.a().f(str2, str));
        return c0181naA;
    }

    public static com.huawei.hms.scankit.p.C0171la c(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.C0171la c0171laA = com.huawei.hms.scankit.p.P.a(str, str2);
        com.huawei.hms.scankit.p.C0136ea c0136eaA = com.huawei.hms.scankit.p.C0146ga.a().a(str, str2);
        c0171laA.f(com.huawei.hms.scankit.p.C0146ga.a().a(com.huawei.hms.scankit.p.AbstractC0125c.b(str, str2)));
        c0171laA.d(com.huawei.hms.scankit.p.AbstractC0125c.g(str, str2));
        c0171laA.g(com.huawei.hms.scankit.p.C0146ga.a().c(str, str2));
        int i = com.huawei.hms.scankit.p.C0161ja.a[c0136eaA.a().ordinal()];
        if (i == 1) {
            c0171laA.c(c0136eaA.b());
        } else if (i == 2) {
            c0171laA.b(c0136eaA.b());
        } else if (i == 3) {
            c0171laA.e(c0136eaA.b());
        }
        return c0171laA;
    }

    public static java.util.Map<java.lang.String, java.lang.String> c(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        java.util.Map<java.lang.String, java.lang.String> mapB = com.huawei.hms.scankit.p.P.b(str, str3);
        java.util.Map<java.lang.String, java.lang.String> mapC = com.huawei.hms.scankit.p.AbstractC0125c.c(str, str2);
        if (mapC == null) {
            return mapB;
        }
        mapB.putAll(mapC);
        return mapB;
    }
}
