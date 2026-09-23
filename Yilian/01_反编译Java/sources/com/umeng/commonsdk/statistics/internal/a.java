package com.umeng.commonsdk.statistics.internal;

/* loaded from: classes.dex */
public class a {
    public static android.content.Context a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f1542c;

    /* renamed from: com.umeng.commonsdk.statistics.internal.a$a, reason: collision with other inner class name */
    public static class C0022a {
        public static final com.umeng.commonsdk.statistics.internal.a a = new com.umeng.commonsdk.statistics.internal.a();
    }

    public a() {
        this.b = null;
        this.f1542c = null;
    }

    public static com.umeng.commonsdk.statistics.internal.a a(android.content.Context context) {
        if (a == null && context != null) {
            a = context.getApplicationContext();
        }
        return com.umeng.commonsdk.statistics.internal.a.C0022a.a;
    }

    private void e(java.lang.String str) {
        try {
            this.b = str.replaceAll("&=", " ").replaceAll("&&", " ").replaceAll("==", com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR) + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + "Android" + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + android.os.Build.DISPLAY + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + android.os.Build.MODEL + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + android.os.Build.VERSION.RELEASE + " " + com.umeng.commonsdk.statistics.common.HelperUtils.getUmengMD5(com.umeng.commonsdk.utils.UMUtils.getAppkey(a));
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(a, th);
        }
    }

    private void f(java.lang.String str) {
        try {
            java.lang.String str2 = str.split("&&")[0];
            if (android.text.TextUtils.isEmpty(str2)) {
                return;
            }
            java.lang.String[] strArrSplit = str2.split("&=");
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(com.umeng.analytics.pro.ai.aN);
            for (java.lang.String str3 : strArrSplit) {
                if (!android.text.TextUtils.isEmpty(str3)) {
                    java.lang.String strSubstring = str3.substring(0, 2);
                    if (strSubstring.endsWith("=")) {
                        strSubstring = strSubstring.replace("=", "");
                    }
                    sb.append(strSubstring);
                }
            }
            this.f1542c = sb.toString();
        } catch (java.lang.Throwable th) {
            com.umeng.commonsdk.internal.crash.UMCrashManager.reportCrash(a, th);
        }
    }

    public java.lang.String a() {
        return this.f1542c;
    }

    public boolean a(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(com.umeng.analytics.pro.ai.at);
    }

    public java.lang.String b() {
        return this.b;
    }

    public boolean b(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith("t");
    }

    public boolean c(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            return false;
        }
        return str.startsWith(com.umeng.analytics.pro.ai.aB);
    }

    public void d(java.lang.String str) {
        java.lang.String strSubstring = str.substring(0, str.indexOf(95));
        f(strSubstring);
        e(strSubstring);
    }
}
