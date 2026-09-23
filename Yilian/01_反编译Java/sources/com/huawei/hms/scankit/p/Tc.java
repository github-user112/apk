package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public class Tc {
    public static volatile com.huawei.hms.scankit.p.Tc a = new com.huawei.hms.scankit.p.Tc();

    /* renamed from: d, reason: collision with root package name */
    public volatile boolean f631d;

    /* renamed from: e, reason: collision with root package name */
    public volatile long f632e;
    public java.util.Timer b = new java.util.Timer();

    /* renamed from: c, reason: collision with root package name */
    public volatile boolean f630c = true;

    /* renamed from: f, reason: collision with root package name */
    public final java.util.concurrent.locks.Lock f633f = new java.util.concurrent.locks.ReentrantLock();

    /* renamed from: g, reason: collision with root package name */
    public java.util.List<com.huawei.hms.scankit.p.Tc.a> f634g = new java.util.ArrayList(5);

    public class a {
        public java.lang.String a;
        public java.util.LinkedHashMap<java.lang.String, java.lang.String> b;

        public a(java.lang.String str, java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap) {
            this.a = str;
            this.b = linkedHashMap;
        }

        public /* synthetic */ a(com.huawei.hms.scankit.p.Tc tc, java.lang.String str, java.util.LinkedHashMap linkedHashMap, com.huawei.hms.scankit.p.Sc sc) {
            this(str, linkedHashMap);
        }
    }

    public class b extends java.util.TimerTask {
        public b() {
        }

        public /* synthetic */ b(com.huawei.hms.scankit.p.Tc tc, com.huawei.hms.scankit.p.Sc sc) {
            this();
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            try {
                com.huawei.hms.scankit.p.Tc.this.f630c = true;
                com.huawei.hms.scankit.p.AbstractC0205sa.b();
            } catch (java.lang.Exception e2) {
                com.huawei.hms.scankit.util.a.b("ScanHiAnalytics", e2.getMessage());
            }
        }
    }

    public static com.huawei.hms.scankit.p.Tc a() {
        return a;
    }

    private java.lang.String a(android.content.Context context) {
        try {
            com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo = new com.huawei.hms.framework.network.grs.GrsBaseInfo();
            java.lang.String strA = new com.huawei.hms.scankit.p.Cc(context, false).a();
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("getCollectURL:localCountryCode ");
            sb.append(strA);
            android.util.Log.i("ScanHiAnalytics", sb.toString());
            if (strA != null && !strA.isEmpty() && !"UNKNOWN".equals(strA)) {
                grsBaseInfo.setSerCountry(strA.toUpperCase(java.util.Locale.ENGLISH));
            }
            java.lang.String strSynGetGrsUrl = new com.huawei.hms.framework.network.grs.GrsClient(context, grsBaseInfo).synGetGrsUrl("com.huawei.cloud.mlkithianalytics", "ROOT");
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append("grs get url success: ");
            sb2.append(strSynGetGrsUrl);
            sb2.append("  countryCode = ");
            sb2.append(grsBaseInfo.getSerCountry());
            android.util.Log.i("ScanHiAnalytics", sb2.toString());
            return strSynGetGrsUrl;
        } catch (java.lang.RuntimeException | java.lang.Exception unused) {
            return null;
        }
    }

    private synchronized void b() {
        this.f631d = true;
        for (com.huawei.hms.scankit.p.Tc.a aVar : this.f634g) {
            c(aVar.a, aVar.b);
        }
        this.f634g = null;
    }

    private synchronized void b(java.lang.String str, java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap) {
        if (this.f631d) {
            c(str, linkedHashMap);
        } else {
            if (this.f634g.size() >= 100) {
                return;
            }
            this.f634g.add(new com.huawei.hms.scankit.p.Tc.a(this, str, linkedHashMap, null));
        }
    }

    private void c() {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f632e > 6000) {
            this.f632e = jCurrentTimeMillis;
            new com.huawei.hms.scankit.p.Sc(this, "ScanHiAnalytics").start();
        }
    }

    private void c(java.lang.String str, java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap) {
        com.huawei.hms.scankit.p.AbstractC0205sa.a(0, str, linkedHashMap);
        com.huawei.hms.scankit.p.AbstractC0205sa.a(1, str, linkedHashMap);
        if (this.f630c) {
            this.f630c = false;
            this.b.schedule(new com.huawei.hms.scankit.p.Tc.b(this, null), com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS);
        }
        com.huawei.hms.scankit.util.a.a("ScanHiAnalytics", linkedHashMap.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        java.lang.String strA;
        if (!this.f633f.tryLock() || this.f631d) {
            return;
        }
        try {
            android.content.Context context = com.huawei.hms.feature.DynamicModuleInitializer.getContext();
            if (context != null && (strA = a(context)) != null && !strA.isEmpty()) {
                com.huawei.hms.scankit.p.C0215ua.a();
                new com.huawei.hms.scankit.p.C0210ta(context).a(false).b(false).a(0, strA).a(1, strA).a();
                b();
            }
        } finally {
            this.f633f.unlock();
        }
    }

    public void a(java.lang.String str, java.util.LinkedHashMap<java.lang.String, java.lang.String> linkedHashMap) {
        if (this.f631d) {
            c(str, linkedHashMap);
        } else {
            b(str, linkedHashMap);
            c();
        }
    }
}
