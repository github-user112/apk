package com.huawei.hms.framework.network.grs.a;

/* loaded from: classes.dex */
public class c {
    public static final java.lang.String a = "c";
    public com.huawei.hms.framework.common.PLSharedPreferences b;

    public c(android.content.Context context, java.lang.String str) {
        this.b = null;
        java.lang.String packageName = context.getPackageName();
        com.huawei.hms.framework.common.Logger.d(a, "get pkgname from context is{%s}", packageName);
        this.b = new com.huawei.hms.framework.common.PLSharedPreferences(context, e.a.c.a.a.e(str, packageName));
        a(context);
    }

    private void a(android.content.Context context) {
        try {
            java.lang.String string = java.lang.Long.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 16384).versionCode);
            java.lang.String strA = a(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION, "");
            if (string.equals(strA)) {
                return;
            }
            com.huawei.hms.framework.common.Logger.i(a, "app version changed! old version{%s} and new version{%s}", strA, string);
            c();
            b(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION, string);
        } catch (android.content.pm.PackageManager.NameNotFoundException unused) {
            com.huawei.hms.framework.common.Logger.w(a, "get app version failed and catch NameNotFoundException");
        }
    }

    public java.lang.String a(java.lang.String str, java.lang.String str2) {
        return this.b.getString(str, str2);
    }

    public java.util.Map<java.lang.String, ?> a() {
        return this.b.getAll();
    }

    public void a(java.lang.String str) {
        this.b.remove(str);
    }

    public java.lang.String b() {
        return a("cp", "");
    }

    public void b(java.lang.String str, java.lang.String str2) {
        this.b.putString(str, str2);
    }

    public void c() {
        this.b.clear();
    }
}
