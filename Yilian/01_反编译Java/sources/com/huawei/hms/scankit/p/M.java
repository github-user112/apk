package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class M {
    public static com.huawei.hms.scankit.p.M a = new com.huawei.hms.scankit.p.M();
    public final java.lang.Object b = new java.lang.Object();

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f581c;

    private java.lang.String b() {
        return com.huawei.hms.scankit.p.C0204s.a().a(com.huawei.hms.scankit.p.C0204s.a.AES).a(com.huawei.hms.scankit.p.C0116aa.a().c(), com.huawei.hms.scankit.p.C0131da.b(com.huawei.hms.scankit.p.AbstractC0120b.a(), "global_v2", "common_prop", ""));
    }

    private void c() {
        com.huawei.hms.scankit.p.C0131da.a(com.huawei.hms.scankit.p.AbstractC0120b.a(), "global_v2", "common_prop", com.huawei.hms.scankit.p.C0204s.a().a(com.huawei.hms.scankit.p.C0204s.a.AES).b(com.huawei.hms.scankit.p.C0116aa.a().c(), this.f581c));
    }

    public java.lang.String a() {
        java.lang.String str;
        synchronized (this.b) {
            if (android.text.TextUtils.isEmpty(this.f581c)) {
                this.f581c = b();
            }
            str = this.f581c;
        }
        return str;
    }

    public void a(java.lang.String str) {
        synchronized (this.b) {
            this.f581c = str;
            c();
        }
    }
}
