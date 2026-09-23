package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.ga, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0146ga {
    public static com.huawei.hms.scankit.p.C0146ga a;
    public android.content.Context b;

    /* renamed from: com.huawei.hms.scankit.p.ga$a */
    public static class a extends com.huawei.hms.scankit.p.AbstractC0151ha {
        public java.lang.String a;
        public java.lang.String b;

        public a(java.lang.String str, java.lang.String str2) {
            this.a = str;
            this.b = str2;
        }

        @Override // com.huawei.hms.scankit.p.AbstractC0151ha
        public java.lang.String a() {
            return com.huawei.hms.scankit.p.AbstractC0115a.d(this.a, this.b);
        }

        @Override // com.huawei.hms.scankit.p.AbstractC0151ha
        public java.lang.String a(java.lang.String str) {
            return com.huawei.hms.scankit.p.C0204s.a().a(str);
        }

        @Override // com.huawei.hms.scankit.p.AbstractC0151ha
        public java.lang.String b() {
            return com.huawei.hms.scankit.p.AbstractC0115a.c(this.a, this.b);
        }

        @Override // com.huawei.hms.scankit.p.AbstractC0151ha
        public java.lang.String c() {
            return com.huawei.hms.scankit.p.AbstractC0115a.f(this.a, this.b);
        }

        @Override // com.huawei.hms.scankit.p.AbstractC0151ha
        public int d() {
            return (com.huawei.hms.scankit.p.AbstractC0115a.j(this.a, this.b) ? 4 : 0) | 0 | (com.huawei.hms.scankit.p.AbstractC0115a.i(this.a, this.b) ? 2 : 0) | (com.huawei.hms.scankit.p.AbstractC0115a.a(this.a, this.b) ? 1 : 0);
        }
    }

    public static com.huawei.hms.scankit.p.C0146ga a() {
        com.huawei.hms.scankit.p.C0146ga c0146ga;
        synchronized (com.huawei.hms.scankit.p.C0146ga.class) {
            if (a == null) {
                a = new com.huawei.hms.scankit.p.C0146ga();
            }
            c0146ga = a;
        }
        return c0146ga;
    }

    public com.huawei.hms.scankit.p.C0136ea a(java.lang.String str, java.lang.String str2) {
        return new com.huawei.hms.scankit.p.C0146ga.a(str, str2).a(this.b);
    }

    public java.lang.String a(boolean z) {
        if (!z) {
            return "";
        }
        java.lang.String strG = com.huawei.hms.scankit.p.AbstractC0120b.g();
        if (android.text.TextUtils.isEmpty(strG)) {
            strG = com.huawei.hms.scankit.p.C0131da.b(this.b, "global_v2", "uuid", "");
            if (android.text.TextUtils.isEmpty(strG)) {
                strG = java.util.UUID.randomUUID().toString().replace("-", "");
                com.huawei.hms.scankit.p.C0131da.a(this.b, "global_v2", "uuid", strG);
            }
            com.huawei.hms.scankit.p.AbstractC0120b.a(strG);
        }
        return strG;
    }

    public void a(android.content.Context context) {
        if (this.b == null) {
            this.b = context;
        }
    }

    public android.util.Pair<java.lang.String, java.lang.String> b(java.lang.String str, java.lang.String str2) {
        if (!com.huawei.hms.scankit.p.AbstractC0115a.h(str, str2)) {
            return new android.util.Pair<>("", "");
        }
        java.lang.String strE = com.huawei.hms.scankit.p.B.a().c().e();
        java.lang.String strF = com.huawei.hms.scankit.p.B.a().c().f();
        if (!android.text.TextUtils.isEmpty(strE) && !android.text.TextUtils.isEmpty(strF)) {
            return new android.util.Pair<>(strE, strF);
        }
        android.util.Pair<java.lang.String, java.lang.String> pairG = com.huawei.hms.scankit.p.C0156ia.g(this.b);
        com.huawei.hms.scankit.p.B.a().c().c((java.lang.String) pairG.first);
        com.huawei.hms.scankit.p.B.a().c().d((java.lang.String) pairG.second);
        return pairG;
    }

    public java.lang.String c(java.lang.String str, java.lang.String str2) {
        return com.huawei.hms.scankit.p.AbstractC0125c.j(str, str2);
    }

    public java.lang.String d(java.lang.String str, java.lang.String str2) {
        return com.huawei.hms.scankit.p.AbstractC0239z.a(this.b, str, str2);
    }

    public java.lang.String e(java.lang.String str, java.lang.String str2) {
        return com.huawei.hms.scankit.p.AbstractC0239z.b(this.b, str, str2);
    }

    public java.lang.String f(java.lang.String str, java.lang.String str2) {
        return com.huawei.hms.scankit.p.AbstractC0125c.k(str, str2);
    }
}
