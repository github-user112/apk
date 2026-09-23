package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Na {
    public static volatile java.util.Map<java.lang.String, java.lang.Long> a = new java.util.HashMap();
    public static java.util.Map<java.lang.String, java.util.Timer> b = new java.util.HashMap();

    /* renamed from: c, reason: collision with root package name */
    public static volatile com.huawei.hms.scankit.p.Na f595c = new com.huawei.hms.scankit.p.Na();

    /* renamed from: g, reason: collision with root package name */
    public android.content.Context f599g;
    public com.huawei.hms.scankit.p.Pa h;
    public com.huawei.hms.framework.network.grs.GrsBaseInfo i;

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f596d = false;

    /* renamed from: e, reason: collision with root package name */
    public volatile boolean f597e = true;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.String f598f = null;
    public java.util.Map<java.lang.String, java.util.Map<java.lang.String, java.lang.Long>> j = new java.util.HashMap();

    public static com.huawei.hms.scankit.p.Na b() {
        return f595c;
    }

    public com.huawei.hms.scankit.p.Ma a(android.content.Context context, android.os.Bundle bundle) {
        this.f599g = context.getApplicationContext();
        this.h = com.huawei.hms.scankit.p.Sa.a(context, bundle);
        com.huawei.hms.scankit.p.Ma ma = new com.huawei.hms.scankit.p.Ma();
        if (a() || !a(context)) {
            return ma;
        }
        ma.d(java.lang.String.valueOf(java.lang.System.currentTimeMillis()));
        return ma;
    }

    public final void a(com.huawei.hms.scankit.p.Ma ma) {
        java.lang.String strL = ma.l();
        java.util.Map<java.lang.String, java.lang.Long> map = this.j.get(strL);
        java.util.Map<java.lang.String, java.lang.Long> map2 = map;
        if (map == null) {
            java.util.HashMap map3 = new java.util.HashMap();
            map3.put("allCnt", 0L);
            map3.put("costTimeAll", 0L);
            this.j.put(strL, map3);
            map2 = map3;
        }
        map2.put("allCnt", java.lang.Long.valueOf((map2.get("allCnt") == null ? 0L : map2.get("allCnt").longValue()) + 1));
        long jLongValue = map2.get("failCnt") == null ? 0L : map2.get("failCnt").longValue();
        if (!ma.u()) {
            map2.put("failCnt", java.lang.Long.valueOf(jLongValue + 1));
        }
        map2.put("costTimeAll", java.lang.Long.valueOf((map2.get("costTimeAll") != null ? map2.get("costTimeAll").longValue() : 0L) + (java.lang.System.currentTimeMillis() - java.lang.Long.parseLong(ma.f()))));
        this.j.put(strL, map2);
    }

    public final void a(com.huawei.hms.scankit.p.Ma ma, long j) {
        ma.e(java.lang.String.valueOf(j));
        ma.m(this.h.a);
        ma.c(this.h.b);
        ma.p(this.h.f607c);
        ma.b(this.h.f608d);
        ma.l(com.huawei.hms.scankit.p.Sa.b(this.f599g));
        ma.h(com.huawei.hms.scankit.p.Sa.c());
        ma.i(com.huawei.hms.scankit.p.Sa.d());
        ma.a(com.huawei.hms.scankit.p.Sa.a());
        ma.g(com.huawei.hms.scankit.p.Sa.b());
        ma.n(com.huawei.hms.scankit.p.Sa.e());
        ma.f(this.h.f610f);
        ma.j("");
        ma.o(this.f598f);
        ma.k(com.huawei.hms.scankit.p.Sa.a(this.f599g));
    }

    public void a(java.lang.String str) {
        if (this.f598f == null) {
            this.f598f = java.util.UUID.randomUUID().toString();
        }
        if (b.get(str) == null) {
            java.util.Timer timer = new java.util.Timer();
            timer.schedule(new com.huawei.hms.scankit.p.Ta(), 0L, 5000L);
            b.put(str, timer);
            com.huawei.hms.scankit.p.Qa.b("HaLogProvider", "init timer, timer=" + timer + ",moduleName=" + str);
        }
        if (this.j.containsKey(str)) {
            this.j.remove(str);
        }
    }

    public final void a(java.lang.String str, java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap) {
        java.util.Map<java.lang.String, java.lang.Long> map = this.j.get(str);
        if (map != null) {
            long jLongValue = map.get("allCnt") == null ? 0L : map.get("allCnt").longValue();
            linkedHashMap.put("allCnt", java.lang.String.valueOf(jLongValue));
            long jLongValue2 = map.get("failCnt") == null ? 0L : map.get("failCnt").longValue();
            linkedHashMap.put("failCnt", java.lang.String.valueOf(jLongValue2));
            linkedHashMap.put("costTime", java.lang.String.valueOf(jLongValue != 0 ? (map.get("costTimeAll") == null ? 0L : map.get("costTimeAll").longValue()) / jLongValue : 0L));
            linkedHashMap.put("lastCallTime", java.lang.String.valueOf(java.lang.System.currentTimeMillis()));
            linkedHashMap.put("result", java.lang.String.format("{0:%s}", java.lang.String.valueOf(jLongValue - jLongValue2)));
        }
    }

    public final boolean a() throws java.lang.ClassNotFoundException {
        java.lang.String str = "UNKNOWN";
        java.lang.String property = com.huawei.hms.framework.common.SystemPropUtils.getProperty("get", "ro.hw.country", "android.os.SystemProperties", "UNKNOWN");
        if (!"eu".equalsIgnoreCase(property) && !"la".equalsIgnoreCase(property)) {
            str = property;
        }
        com.huawei.hms.scankit.p.Qa.a("HaLogProvider", "forbiddenHiLog.getVenderCountry=" + str);
        if ("CN".equalsIgnoreCase(str)) {
            return false;
        }
        if (this.h == null) {
            com.huawei.hms.scankit.p.Qa.a("HaLogProvider", "forbiddenHiLog openHa is empty, appInfo is null");
            return true;
        }
        java.lang.StringBuilder sbA = com.huawei.hms.scankit.p.Oa.a("forbiddenHiLog openHa = ");
        sbA.append(this.h.f609e);
        com.huawei.hms.scankit.p.Qa.a("HaLogProvider", sbA.toString());
        return !this.h.f609e;
    }

    public final boolean a(android.content.Context context) {
        if (a() || this.f596d) {
            return true;
        }
        com.huawei.hms.scankit.p.Qa.a("HaLogProvider", "initlizeHaSdk APK mode,BUILD_MODE=APK");
        if (this.i == null) {
            this.i = new com.huawei.hms.framework.network.grs.GrsBaseInfo();
            java.lang.String str = this.h.f610f;
            com.huawei.hms.scankit.p.Qa.b("HaLogProvider", "initGrsBaseInfo CountryCode = " + str);
            if (str != null && !str.isEmpty() && !"UNKNOWN".equals(str)) {
                this.i.setSerCountry(str.toUpperCase(java.util.Locale.ENGLISH));
            }
        }
        com.huawei.hms.framework.network.grs.GrsApi.grsSdkInit(context, this.i);
        java.lang.String strSynGetGrsUrl = com.huawei.hms.framework.network.grs.GrsApi.synGetGrsUrl("com.huawei.cloud.mlkithianalytics", "ROOT");
        com.huawei.hms.scankit.p.Qa.a("HaLogProvider", "GrsApi.synGetGrsUrl=" + strSynGetGrsUrl + ",BuildConfig.HIA_MODE=com.huawei.cloud.mlkithianalytics");
        this.f596d = true;
        if (strSynGetGrsUrl != null && !strSynGetGrsUrl.isEmpty()) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            arrayList.add(strSynGetGrsUrl);
            return com.huawei.hms.scankit.p.Ra.a.a(context, arrayList);
        }
        java.lang.StringBuilder sbA = com.huawei.hms.scankit.p.Oa.a("grs get url is empty, countryCode=");
        sbA.append(this.i.getSerCountry());
        com.huawei.hms.scankit.p.Qa.a("HaLogProvider", sbA.toString());
        return false;
    }

    public void b(com.huawei.hms.scankit.p.Ma ma) {
        try {
            if (a() || ma.f() == null) {
                return;
            }
            a(ma);
            long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
            java.lang.String strL = ma.l();
            if (a != null) {
                java.lang.Long l = a.get(strL);
                if (l == null) {
                    l = 0L;
                    a.put(strL, l);
                }
                if (this.f597e || jCurrentTimeMillis - l.longValue() > 1000) {
                    a(ma, jCurrentTimeMillis - java.lang.Long.parseLong(ma.f()));
                    java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMapA = com.huawei.hms.scankit.p.Sa.a(ma);
                    a(strL, linkedHashMapA);
                    com.huawei.hms.scankit.p.Ra.a.a(1, "60001", linkedHashMapA);
                    com.huawei.hms.scankit.p.Ra.a.a(0, "60001", linkedHashMapA);
                    this.f597e = false;
                    com.huawei.hms.scankit.p.Qa.a("HaLogProvider", linkedHashMapA.toString());
                    a.put(strL, java.lang.Long.valueOf(jCurrentTimeMillis));
                    if (this.j.containsKey(strL)) {
                        this.j.remove(strL);
                    }
                }
            }
        } catch (java.lang.Exception unused) {
            android.util.Log.e("HaLogProvider", "logEnd: GetNullException");
        }
    }

    public void b(java.lang.String str) {
        if (this.f598f != null) {
            this.f598f = null;
        }
        this.f597e = true;
        a.clear();
        java.util.Timer timer = b.get(str);
        if (timer != null) {
            if (!a()) {
                com.huawei.hms.scankit.p.Ra.a.a();
            }
            com.huawei.hms.scankit.p.Qa.b("HaLogProvider", "cancel timer, timer=" + timer + ",moduleName=" + str);
            timer.cancel();
            b.remove(str);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b(android.content.Context r5) {
        /*
            r4 = this;
            android.content.pm.PackageManager r0 = r5.getPackageManager()
            android.content.Intent r1 = new android.content.Intent
            java.lang.String r2 = "com.huawei.hms.core.aidlservice"
            r1.<init>(r2)
            r2 = 128(0x80, float:1.794E-43)
            java.util.List r0 = r0.queryIntentServices(r1, r2)
            int r1 = r0.size()
            r2 = 0
            if (r1 != 0) goto L19
            goto L34
        L19:
            java.util.Iterator r0 = r0.iterator()
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L34
            java.lang.Object r0 = r0.next()
            android.content.pm.ResolveInfo r0 = (android.content.pm.ResolveInfo) r0
            android.util.Pair r2 = new android.util.Pair
            android.content.pm.ServiceInfo r1 = r0.serviceInfo
            android.content.pm.ApplicationInfo r1 = r1.applicationInfo
            java.lang.String r1 = r1.packageName
            r2.<init>(r1, r0)
        L34:
            r0 = 1
            java.lang.String r1 = "HaLogProvider"
            r3 = 0
            if (r2 != 0) goto L3b
            goto L4f
        L3b:
            java.lang.Object r2 = r2.first
            java.lang.String r2 = (java.lang.String) r2
            android.content.pm.PackageManager r5 = r5.getPackageManager()     // Catch: java.lang.Exception -> L51
            android.content.pm.PackageInfo r5 = r5.getPackageInfo(r2, r3)     // Catch: java.lang.Exception -> L51
            android.content.pm.ApplicationInfo r5 = r5.applicationInfo     // Catch: java.lang.Exception -> L51
            int r5 = r5.flags     // Catch: java.lang.Exception -> L51
            r5 = r5 & r0
            if (r5 == 0) goto L4f
            goto L67
        L4f:
            r0 = 0
            goto L67
        L51:
            r5 = move-exception
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "isPackageInternal Exception e: "
            r0.append(r2)
            r0.append(r5)
            java.lang.String r5 = r0.toString()
            com.huawei.hms.scankit.p.Qa.c(r1, r5)
            goto L4f
        L67:
            if (r0 == 0) goto L86
            com.huawei.hms.scankit.p.Pa r5 = r4.h
            if (r5 == 0) goto L86
            java.lang.String r5 = "forbiddenHiLog openHa = "
            java.lang.StringBuilder r5 = com.huawei.hms.scankit.p.Oa.a(r5)
            com.huawei.hms.scankit.p.Pa r0 = r4.h
            boolean r0 = r0.f609e
            r5.append(r0)
            java.lang.String r5 = r5.toString()
            com.huawei.hms.scankit.p.Qa.a(r1, r5)
            boolean r5 = r4.a()
            return r5
        L86:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: com.huawei.hms.scankit.p.Na.b(android.content.Context):boolean");
    }
}
