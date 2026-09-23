package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.aa, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0116aa {
    public static com.huawei.hms.scankit.p.C0116aa a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f668c;

    public static com.huawei.hms.scankit.p.C0116aa a() {
        if (a == null) {
            d();
        }
        return a;
    }

    private boolean a(java.lang.String str) {
        com.huawei.hms.scankit.p.T.b("RootKeyManager", "refresh sp aes key");
        java.lang.String strB = com.huawei.hms.scankit.p.C0204s.a().a(com.huawei.hms.scankit.p.C0204s.a.AES).b(f(), str);
        if (android.text.TextUtils.isEmpty(strB)) {
            com.huawei.hms.scankit.p.T.b("RootKeyManager", "refreshLocalKey(): encrypted key is empty");
            return false;
        }
        com.huawei.hms.scankit.p.C0131da.a(com.huawei.hms.scankit.p.AbstractC0120b.a(), "Privacy_MY", "PrivacyData", strB);
        com.huawei.hms.scankit.p.C0131da.a(com.huawei.hms.scankit.p.AbstractC0120b.a(), "Privacy_MY", "flashKeyTime", java.lang.System.currentTimeMillis());
        return true;
    }

    public static synchronized void d() {
        if (a == null) {
            a = new com.huawei.hms.scankit.p.C0116aa();
        }
    }

    private java.lang.String e() {
        java.lang.String strB = com.huawei.hms.scankit.p.C0131da.b(com.huawei.hms.scankit.p.AbstractC0120b.a(), "Privacy_MY", "PrivacyData", "");
        com.huawei.hms.scankit.p.C0204s c0204sA = com.huawei.hms.scankit.p.C0204s.a();
        if (android.text.TextUtils.isEmpty(strB)) {
            java.lang.String strB2 = c0204sA.b(com.huawei.hms.scankit.p.C0204s.a.AES);
            a(strB2);
            return strB2;
        }
        java.lang.String strA = c0204sA.a(com.huawei.hms.scankit.p.C0204s.a.AES).a(f(), strB);
        if (!android.text.TextUtils.isEmpty(strA)) {
            return strA;
        }
        java.lang.String strB3 = c0204sA.b(com.huawei.hms.scankit.p.C0204s.a.AES);
        a(strB3);
        return strB3;
    }

    private java.lang.String f() {
        if (android.text.TextUtils.isEmpty(this.f668c)) {
            this.f668c = new com.huawei.hms.scankit.p.Z().a();
        }
        return this.f668c;
    }

    public void b() {
        java.lang.String strB = com.huawei.hms.scankit.p.C0204s.a().b(com.huawei.hms.scankit.p.C0204s.a.AES);
        if (a(strB)) {
            this.b = strB;
        }
    }

    public java.lang.String c() {
        if (android.text.TextUtils.isEmpty(this.b)) {
            this.b = e();
        }
        return this.b;
    }
}
