package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0165k {
    public static boolean a(android.content.Context context) {
        return java.lang.System.currentTimeMillis() - com.huawei.hms.scankit.p.C0131da.b(context, "Privacy_MY", "flashKeyTime", -1L) > 43200000;
    }

    public static boolean a(android.content.Context context, java.lang.String str) {
        if (context == null) {
            return true;
        }
        if (android.os.Build.VERSION.SDK_INT < 23) {
            if (context.getPackageManager().checkPermission(str, context.getPackageName()) == 0) {
                return false;
            }
            com.huawei.hms.scankit.p.T.c("hmsSdk", "not have read phone permission!");
            return true;
        }
        if (context.checkSelfPermission(str) == 0) {
            return false;
        }
        com.huawei.hms.scankit.p.T.c("hmsSdk", "not have read phone permission!");
        return true;
    }

    @android.annotation.SuppressLint({"DefaultLocale"})
    public static boolean a(android.content.Context context, java.lang.String str, int i) {
        long length = new java.io.File(context.getFilesDir(), e.a.c.a.a.e("../shared_prefs/", com.huawei.hms.scankit.p.C0131da.a(context, str) + ".xml")).length();
        if (length <= i) {
            return false;
        }
        com.huawei.hms.scankit.p.T.b("hmsSdk", java.lang.String.format("reach local file limited size - file len: %d limitedSize: %d", java.lang.Long.valueOf(length), java.lang.Integer.valueOf(i)));
        return true;
    }

    public static boolean a(java.lang.String str, long j, long j2) {
        if (android.text.TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            return j - java.lang.Long.parseLong(str) > j2;
        } catch (java.lang.NumberFormatException unused) {
            com.huawei.hms.scankit.p.T.c("TaskAssistant", "isTimeExpired(): Data type conversion error : number format !");
            return true;
        }
    }
}
