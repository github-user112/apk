package com.huawei.hms.framework.network.grs.a;

/* loaded from: classes.dex */
public class a {
    public static final java.lang.String a = "a";
    public java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.String>>> b = new java.util.concurrent.ConcurrentHashMap(16);

    /* renamed from: c, reason: collision with root package name */
    public java.util.Map<java.lang.String, java.lang.Long> f284c = new java.util.concurrent.ConcurrentHashMap(16);

    /* renamed from: d, reason: collision with root package name */
    public com.huawei.hms.framework.network.grs.a.c f285d;

    /* renamed from: e, reason: collision with root package name */
    public com.huawei.hms.framework.network.grs.a.c f286e;

    /* renamed from: f, reason: collision with root package name */
    public com.huawei.hms.framework.network.grs.c.m f287f;

    public a(com.huawei.hms.framework.network.grs.a.c cVar, com.huawei.hms.framework.network.grs.a.c cVar2, com.huawei.hms.framework.network.grs.c.m mVar) {
        this.f286e = cVar2;
        this.f285d = cVar;
        this.f287f = mVar;
        mVar.a(this);
    }

    private void a(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, com.huawei.hms.framework.network.grs.a.b bVar, android.content.Context context, java.lang.String str) {
        java.lang.Long l = this.f284c.get(grsBaseInfo.getGrsParasKey(false, true, context));
        if (com.huawei.hms.framework.network.grs.d.e.a(l)) {
            bVar.a(2);
            return;
        }
        if (com.huawei.hms.framework.network.grs.d.e.a(l, 300000L)) {
            this.f287f.a(new com.huawei.hms.framework.network.grs.c.b.c(grsBaseInfo, context), null, str, this.f286e);
        }
        bVar.a(1);
    }

    private void a(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, java.lang.String str, android.content.Context context) {
        if (com.huawei.hms.framework.network.grs.d.e.a(this.f284c.get(str), 300000L)) {
            this.f287f.a(new com.huawei.hms.framework.network.grs.c.b.c(grsBaseInfo, context), null, null, this.f286e);
        }
    }

    public com.huawei.hms.framework.network.grs.a.c a() {
        return this.f285d;
    }

    public java.lang.String a(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, java.lang.String str, java.lang.String str2, com.huawei.hms.framework.network.grs.a.b bVar, android.content.Context context) {
        java.util.Map<java.lang.String, java.lang.String> mapA = a(grsBaseInfo, str, bVar, context);
        if (mapA == null) {
            return null;
        }
        return mapA.get(str2);
    }

    public java.util.Map<java.lang.String, java.lang.String> a(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, java.lang.String str, com.huawei.hms.framework.network.grs.a.b bVar, android.content.Context context) {
        java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.String>> map = this.b.get(grsBaseInfo.getGrsParasKey(false, true, context));
        if (map == null || map.isEmpty()) {
            return new java.util.HashMap();
        }
        a(grsBaseInfo, bVar, context, str);
        return map.get(str);
    }

    public void a(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, android.content.Context context) {
        java.lang.String grsParasKey = grsBaseInfo.getGrsParasKey(false, true, context);
        this.f285d.b(grsParasKey + com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.TIME, "0");
        this.f284c.remove(grsParasKey + com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.TIME);
        this.b.remove(grsParasKey);
        this.f287f.a(grsParasKey);
    }

    public void a(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, com.huawei.hms.framework.network.grs.c.f fVar, android.content.Context context, com.huawei.hms.framework.network.grs.c.b.c cVar) {
        if (fVar.e() == 2) {
            com.huawei.hms.framework.common.Logger.w(a, "update cache from server failed");
            return;
        }
        if (cVar.d().size() != 0) {
            this.f285d.b("geoipCountryCode", fVar.i());
            this.f285d.b("geoipCountryCodetime", fVar.a());
            return;
        }
        java.lang.String grsParasKey = grsBaseInfo.getGrsParasKey(false, true, context);
        this.f285d.b(grsParasKey, fVar.i());
        this.f285d.b(e.a.c.a.a.e(grsParasKey, com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.TIME), fVar.a());
        this.b.put(grsParasKey, com.huawei.hms.framework.network.grs.a.a(fVar.i()));
        this.f284c.put(grsParasKey, java.lang.Long.valueOf(java.lang.Long.parseLong(fVar.a())));
    }

    public com.huawei.hms.framework.network.grs.c.m b() {
        return this.f287f;
    }

    public void b(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo, android.content.Context context) throws java.lang.NumberFormatException {
        java.lang.String grsParasKey = grsBaseInfo.getGrsParasKey(false, true, context);
        java.lang.String strA = this.f285d.a(grsParasKey, "");
        java.lang.String strA2 = this.f285d.a(grsParasKey + com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.TIME, "0");
        long j = 0;
        if (!android.text.TextUtils.isEmpty(strA2) && strA2.matches("\\d+")) {
            try {
                j = java.lang.Long.parseLong(strA2);
            } catch (java.lang.NumberFormatException e2) {
                com.huawei.hms.framework.common.Logger.w(a, "convert urlParamKey from String to Long catch NumberFormatException.", e2);
            }
        }
        this.b.put(grsParasKey, com.huawei.hms.framework.network.grs.a.a(strA));
        this.f284c.put(grsParasKey, java.lang.Long.valueOf(j));
        a(grsBaseInfo, grsParasKey, context);
    }

    public com.huawei.hms.framework.network.grs.a.c c() {
        return this.f286e;
    }
}
