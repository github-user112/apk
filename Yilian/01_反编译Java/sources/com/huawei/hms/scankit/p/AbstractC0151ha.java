package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ha, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0151ha {
    private com.huawei.hms.scankit.p.C0136ea a(int i, android.content.Context context) {
        java.lang.String strB;
        if ((i & 4) != 0 && (i & 1) != 0) {
            return new com.huawei.hms.scankit.p.C0136ea(com.huawei.hms.scankit.p.EnumC0141fa.UDID, a(b(context)));
        }
        if ((i & 1) != 0) {
            strB = b(context);
            if (!android.text.TextUtils.isEmpty(strB)) {
                return new com.huawei.hms.scankit.p.C0136ea(com.huawei.hms.scankit.p.EnumC0141fa.SN, strB);
            }
        } else {
            strB = "";
        }
        if ((i & 2) == 0) {
            return new com.huawei.hms.scankit.p.C0136ea(com.huawei.hms.scankit.p.EnumC0141fa.EMPTY, strB);
        }
        return new com.huawei.hms.scankit.p.C0136ea(com.huawei.hms.scankit.p.EnumC0141fa.IMEI, c(context));
    }

    private com.huawei.hms.scankit.p.C0136ea b(int i, android.content.Context context) {
        java.lang.String strC;
        if (i != 0) {
            strC = f();
            if (!android.text.TextUtils.isEmpty(strC)) {
                return new com.huawei.hms.scankit.p.C0136ea(com.huawei.hms.scankit.p.EnumC0141fa.UDID, strC);
            }
        } else {
            strC = "";
        }
        if ((i & 2) != 0) {
            strC = c(context);
            if (!android.text.TextUtils.isEmpty(strC)) {
                return new com.huawei.hms.scankit.p.C0136ea(com.huawei.hms.scankit.p.EnumC0141fa.IMEI, strC);
            }
        }
        if ((i & 1) == 0) {
            return new com.huawei.hms.scankit.p.C0136ea(com.huawei.hms.scankit.p.EnumC0141fa.EMPTY, strC);
        }
        return new com.huawei.hms.scankit.p.C0136ea(com.huawei.hms.scankit.p.EnumC0141fa.SN, b(context));
    }

    private java.lang.String b(android.content.Context context) {
        com.huawei.hms.scankit.p.E eC = com.huawei.hms.scankit.p.B.a().c();
        if (android.text.TextUtils.isEmpty(eC.j())) {
            eC.e(com.huawei.hms.scankit.p.C0156ia.f(context));
        }
        return eC.j();
    }

    private java.lang.String c(android.content.Context context) {
        com.huawei.hms.scankit.p.E eC = com.huawei.hms.scankit.p.B.a().c();
        if (android.text.TextUtils.isEmpty(eC.m())) {
            eC.h(com.huawei.hms.scankit.p.C0156ia.e(context));
        }
        return eC.m();
    }

    private boolean e() {
        com.huawei.hms.scankit.p.E eC = com.huawei.hms.scankit.p.B.a().c();
        if (android.text.TextUtils.isEmpty(eC.l())) {
            eC.g(com.huawei.hms.scankit.p.AbstractC0234y.a());
        }
        return !android.text.TextUtils.isEmpty(eC.l());
    }

    private java.lang.String f() {
        com.huawei.hms.scankit.p.E eC = com.huawei.hms.scankit.p.B.a().c();
        if (android.text.TextUtils.isEmpty(eC.n())) {
            eC.i(com.huawei.hms.scankit.p.C0156ia.c());
        }
        return eC.n();
    }

    public com.huawei.hms.scankit.p.C0136ea a(android.content.Context context) {
        java.lang.String strA = a();
        if (!android.text.TextUtils.isEmpty(strA)) {
            return new com.huawei.hms.scankit.p.C0136ea(com.huawei.hms.scankit.p.EnumC0141fa.UDID, strA);
        }
        java.lang.String strB = b();
        if (!android.text.TextUtils.isEmpty(strB)) {
            return new com.huawei.hms.scankit.p.C0136ea(com.huawei.hms.scankit.p.EnumC0141fa.IMEI, strB);
        }
        boolean zE = e();
        java.lang.String strC = c();
        return !android.text.TextUtils.isEmpty(strC) ? zE ? new com.huawei.hms.scankit.p.C0136ea(com.huawei.hms.scankit.p.EnumC0141fa.SN, strC) : new com.huawei.hms.scankit.p.C0136ea(com.huawei.hms.scankit.p.EnumC0141fa.UDID, a(strC)) : zE ? b(d(), context) : a(d(), context);
    }

    public abstract java.lang.String a();

    public abstract java.lang.String a(java.lang.String str);

    public abstract java.lang.String b();

    public abstract java.lang.String c();

    public abstract int d();
}
