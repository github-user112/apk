package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0125c {
    public static void a(java.lang.String str, java.lang.String str2, long j) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        if (dF != null) {
            dF.a(j);
        }
    }

    public static boolean a(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        if (dF != null) {
            return dF.f();
        }
        return false;
    }

    public static boolean b(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        if (dF != null) {
            return dF.d();
        }
        return true;
    }

    public static java.util.Map<java.lang.String, java.lang.String> c(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        if (dF != null) {
            return dF.i();
        }
        return null;
    }

    public static java.lang.String d(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        return dF != null ? dF.g() : "";
    }

    public static long e(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        if (dF != null) {
            return dF.h();
        }
        return 0L;
    }

    public static com.huawei.hms.scankit.p.D f(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.F fA = com.huawei.hms.scankit.p.B.a().a(str);
        if (fA == null) {
            return null;
        }
        if (!"alltype".equals(str2)) {
            return fA.a(str2);
        }
        com.huawei.hms.scankit.p.D dA = fA.a("oper");
        return dA == null ? fA.a("maint") : dA;
    }

    public static java.lang.String g(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        return dF != null ? dF.c() : "";
    }

    public static java.lang.String h(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        return dF != null ? dF.o() : "";
    }

    public static java.lang.String i(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        return dF != null ? dF.p() : "";
    }

    public static java.lang.String j(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        return dF != null ? dF.q() : "";
    }

    public static java.lang.String k(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        return dF != null ? dF.a() : "";
    }

    public static java.lang.String l(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        return dF != null ? dF.b() : "";
    }

    public static int m(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        if (dF != null) {
            return dF.k();
        }
        return 7;
    }

    public static int n(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        if (dF != null) {
            return dF.l();
        }
        return 10;
    }

    public static boolean o(java.lang.String str, java.lang.String str2) {
        com.huawei.hms.scankit.p.D dF = f(str, str2);
        if (dF != null) {
            return dF.e();
        }
        return true;
    }
}
