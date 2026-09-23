package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.a, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0115a {
    public static boolean a(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.C cB = b(str, str2);
        return cB != null && cB.b();
    }

    public static com.huawei.hms.scankit.p.C b(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dA;
        com.huawei.hms.scankit.p.F fA = com.huawei.hms.scankit.p.B.a().a(str);
        if (fA == null || (dA = fA.a(str2)) == null) {
            return null;
        }
        return dA.j();
    }

    public static java.lang.String c(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.C cB = b(str, str2);
        return cB != null ? cB.e() : "";
    }

    public static java.lang.String d(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.C cB = b(str, str2);
        return cB != null ? cB.f() : "";
    }

    public static java.lang.String e(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.C cB = b(str, str2);
        return cB != null ? cB.g() : "";
    }

    public static java.lang.String f(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.C cB = b(str, str2);
        return cB != null ? cB.h() : "";
    }

    public static boolean g(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dA;
        com.huawei.hms.scankit.p.F fA = com.huawei.hms.scankit.p.B.a().a(str);
        if (fA == null || (dA = fA.a(str2)) == null) {
            return false;
        }
        return dA.m();
    }

    public static boolean h(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dA;
        com.huawei.hms.scankit.p.F fA = com.huawei.hms.scankit.p.B.a().a(str);
        if (fA == null || (dA = fA.a(str2)) == null) {
            return false;
        }
        return dA.n();
    }

    public static boolean i(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.C cB = b(str, str2);
        return cB != null && cB.a();
    }

    public static boolean j(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.C cB = b(str, str2);
        return cB != null && cB.c();
    }

    public static boolean k(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.C cB = b(str, str2);
        return cB != null && cB.d();
    }
}
