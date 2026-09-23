package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.g, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0145g implements com.huawei.hms.scankit.p.InterfaceRunnableC0155i {
    public android.content.Context a = com.huawei.hms.scankit.p.AbstractC0120b.a();
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f719c;

    /* renamed from: d, reason: collision with root package name */
    public java.lang.String f720d;

    public C0145g(java.lang.String str, java.lang.String str2, java.lang.String str3) {
        this.b = str;
        this.f719c = str2;
        this.f720d = str3;
    }

    private void a(java.lang.String str, java.util.List<com.huawei.hms.scankit.p.J> list) {
        android.util.Pair<java.lang.String, java.lang.String> pairA = com.huawei.hms.scankit.p.AbstractC0180n.a(str);
        new com.huawei.hms.scankit.p.N(list, (java.lang.String) pairA.first, (java.lang.String) pairA.second, this.f720d).a();
    }

    @Override // java.lang.Runnable
    public void run() {
        com.huawei.hms.scankit.p.T.b("EventReportTask", "eventReportTask is running");
        boolean zA = com.huawei.hms.scankit.p.C0165k.a(this.a);
        if (zA) {
            com.huawei.hms.scankit.p.T.b("EventReportTask", "workKey is refresh,begin report all data");
            this.f719c = "alltype";
        }
        java.util.Map<java.lang.String, java.util.List<com.huawei.hms.scankit.p.J>> mapA = com.huawei.hms.scankit.p.Q.a(this.a, this.b, this.f719c);
        if (mapA.size() == 0) {
            com.huawei.hms.scankit.p.T.a("EventReportTask", "no have events to report: tag:%s : type:%s", this.b, this.f719c);
            return;
        }
        for (java.util.Map.Entry<java.lang.String, java.util.List<com.huawei.hms.scankit.p.J>> entry : mapA.entrySet()) {
            a(entry.getKey(), entry.getValue());
        }
        if ("alltype".equals(this.f719c)) {
            com.huawei.hms.scankit.p.C0131da.a(this.a, "stat_v2_1", new java.lang.String[0]);
            com.huawei.hms.scankit.p.C0131da.a(this.a, "cached_v2_1", new java.lang.String[0]);
        } else {
            java.lang.String strA = com.huawei.hms.scankit.p.AbstractC0180n.a(this.b, this.f719c);
            com.huawei.hms.scankit.p.C0131da.a(this.a, "stat_v2_1", strA);
            com.huawei.hms.scankit.p.C0131da.a(this.a, "cached_v2_1", strA);
        }
        if (zA) {
            com.huawei.hms.scankit.p.T.b("EventReportTask", "refresh local key");
            com.huawei.hms.scankit.p.C0116aa.a().b();
            com.huawei.hms.scankit.p.M.a.a(com.huawei.hms.scankit.p.M.a.a());
        }
    }
}
