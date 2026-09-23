package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0130d {
    public static com.huawei.hms.scankit.p.C0130d a;
    public static java.util.Map<java.lang.String, java.lang.Long> b = new java.util.HashMap();

    /* renamed from: c, reason: collision with root package name */
    public android.content.Context f693c;

    public static synchronized com.huawei.hms.scankit.p.C0130d a() {
        if (a == null) {
            a = new com.huawei.hms.scankit.p.C0130d();
        }
        return a;
    }

    private void b(android.content.Context context) {
        java.lang.String str;
        java.lang.String strB = com.huawei.hms.scankit.p.AbstractC0234y.b(context);
        com.huawei.hms.scankit.p.AbstractC0120b.b(strB);
        if (com.huawei.hms.scankit.p.C0190p.a.a()) {
            java.lang.String strB2 = com.huawei.hms.scankit.p.C0131da.b(context, "global_v2", "app_ver", "");
            com.huawei.hms.scankit.p.C0131da.a(context, "global_v2", "app_ver", strB);
            com.huawei.hms.scankit.p.AbstractC0120b.c(strB2);
            if (!android.text.TextUtils.isEmpty(strB2)) {
                if (strB2.equals(strB)) {
                    return;
                }
                com.huawei.hms.scankit.p.T.b("HiAnalyticsEventServer", "the appVers are different!");
                a().a("", "alltype", strB2);
                return;
            }
            str = "app ver is first save!";
        } else {
            str = "userManager.isUserUnlocked() == false";
        }
        com.huawei.hms.scankit.p.T.b("HiAnalyticsEventServer", str);
    }

    public void a(android.content.Context context) {
        this.f693c = context;
        b(context);
        com.huawei.hms.scankit.p.B.a().c().g(com.huawei.hms.scankit.p.AbstractC0234y.a());
    }

    public void a(java.lang.String str, int i) {
        if (this.f693c == null) {
            com.huawei.hms.scankit.p.T.c("HiAnalyticsEventServer", "onReport() null context or SDK was not init.");
        } else {
            com.huawei.hms.scankit.p.T.b("hmsSdk", "onReport: Before calling runtaskhandler()");
            a(str, com.huawei.hms.scankit.p.AbstractC0180n.a(i), com.huawei.hms.scankit.p.AbstractC0120b.f());
        }
    }

    public void a(java.lang.String str, int i, java.lang.String str2, org.json.JSONObject jSONObject) {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        if (2 == i) {
            jCurrentTimeMillis = com.huawei.hms.scankit.p.AbstractC0180n.a("yyyy-MM-dd", jCurrentTimeMillis);
        }
        com.huawei.hms.scankit.p.C0160j.a.a(new com.huawei.hms.scankit.p.C0140f(str2, jSONObject, str, com.huawei.hms.scankit.p.AbstractC0180n.a(i), jCurrentTimeMillis));
    }

    public void a(java.lang.String str, java.lang.String str2) {
        if (!com.huawei.hms.scankit.p.AbstractC0125c.o(str, str2)) {
            com.huawei.hms.scankit.p.T.b("HiAnalyticsEventServer", "auto report is closed tag:" + str);
            return;
        }
        long jE = com.huawei.hms.scankit.p.AbstractC0125c.e(str, str2);
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        if (jCurrentTimeMillis - jE <= 30000) {
            com.huawei.hms.scankit.p.T.c("HiAnalyticsEventServer", "autoReport timeout. interval < 30s ");
            return;
        }
        com.huawei.hms.scankit.p.T.a("HiAnalyticsEventServer", "begin to call onReport!");
        com.huawei.hms.scankit.p.AbstractC0125c.a(str, str2, jCurrentTimeMillis);
        a(str, str2, com.huawei.hms.scankit.p.AbstractC0120b.f());
    }

    public void a(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if (com.huawei.hms.scankit.p.AbstractC0125c.a(str, str2)) {
            java.lang.String strA = com.huawei.hms.scankit.p.A.a(this.f693c);
            if (!"WIFI".equals(strA)) {
                com.huawei.hms.scankit.p.T.b("HiAnalyticsEventServer", "strNetworkType is :" + strA);
                return;
            }
        }
        com.huawei.hms.scankit.p.C0160j.a.a(new com.huawei.hms.scankit.p.C0145g(str, str2, str3));
    }
}
