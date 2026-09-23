package com.huawei.hms.framework.network.grs;

/* loaded from: classes.dex */
public class d {
    public static final java.lang.String a = "d";
    public static java.util.concurrent.ExecutorService b = com.huawei.hms.framework.common.ExecutorsUtils.newCachedThreadPool("GRS_GrsClient-Init");

    /* renamed from: c, reason: collision with root package name */
    public com.huawei.hms.framework.network.grs.GrsBaseInfo f335c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f336d = false;

    /* renamed from: e, reason: collision with root package name */
    public final java.lang.Object f337e = new java.lang.Object();

    /* renamed from: f, reason: collision with root package name */
    public android.content.Context f338f;

    /* renamed from: g, reason: collision with root package name */
    public com.huawei.hms.framework.network.grs.c.m f339g;
    public com.huawei.hms.framework.network.grs.a.a h;
    public com.huawei.hms.framework.network.grs.a.c i;
    public com.huawei.hms.framework.network.grs.a.c j;
    public com.huawei.hms.framework.network.grs.a k;
    public java.util.concurrent.Future<java.lang.Boolean> l;

    public d(android.content.Context context, com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo) {
        this.f338f = context.getApplicationContext();
        a(grsBaseInfo);
        if (this.f336d) {
            return;
        }
        synchronized (this.f337e) {
            if (!this.f336d) {
                com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo2 = this.f335c;
                this.l = b.submit(new com.huawei.hms.framework.network.grs.c(this, this.f338f, grsBaseInfo2, context));
            }
        }
    }

    public d(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo) {
        a(grsBaseInfo);
    }

    private void a(com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo) {
        try {
            this.f335c = grsBaseInfo.m3clone();
        } catch (java.lang.CloneNotSupportedException e2) {
            com.huawei.hms.framework.common.Logger.w(a, "GrsClient catch CloneNotSupportedException", e2);
            this.f335c = grsBaseInfo.copy();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(java.util.Map<java.lang.String, ?> map) throws java.lang.NumberFormatException {
        if (map == null || map.isEmpty()) {
            com.huawei.hms.framework.common.Logger.v(a, "sp's content is empty.");
            return;
        }
        for (java.lang.String str : map.keySet()) {
            if (str.endsWith(com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.TIME)) {
                java.lang.String strA = this.i.a(str, "");
                long j = 0;
                if (!android.text.TextUtils.isEmpty(strA) && strA.matches("\\d+")) {
                    try {
                        j = java.lang.Long.parseLong(strA);
                    } catch (java.lang.NumberFormatException e2) {
                        com.huawei.hms.framework.common.Logger.w(a, "convert expire time from String to Long catch NumberFormatException.", e2);
                    }
                }
                if (!a(j)) {
                    com.huawei.hms.framework.common.Logger.i(a, "init interface auto clear some invalid sp's data.");
                    this.i.a(str.substring(0, str.length() - 4));
                    this.i.a(str);
                }
            }
        }
    }

    private boolean a(long j) {
        return java.lang.System.currentTimeMillis() - j <= 604800000;
    }

    private boolean d() {
        try {
            if (this.l != null) {
                return this.l.get(10L, java.util.concurrent.TimeUnit.SECONDS).booleanValue();
            }
            return false;
        } catch (java.lang.InterruptedException e2) {
            com.huawei.hms.framework.common.Logger.w(a, "init compute task interrupted.", e2);
            return false;
        } catch (java.util.concurrent.CancellationException unused) {
            com.huawei.hms.framework.common.Logger.i(a, "init compute task canceled.");
            return false;
        } catch (java.util.concurrent.ExecutionException e3) {
            com.huawei.hms.framework.common.Logger.w(a, "init compute task failed.", e3);
            return false;
        } catch (java.util.concurrent.TimeoutException unused2) {
            com.huawei.hms.framework.common.Logger.w(a, "init compute task timed out");
            return false;
        } catch (java.lang.Exception e4) {
            com.huawei.hms.framework.common.Logger.w(a, "init compute task occur unknown Exception", e4);
            return false;
        }
    }

    public java.lang.String a(java.lang.String str, java.lang.String str2) {
        if (this.f335c == null || str == null || str2 == null) {
            com.huawei.hms.framework.common.Logger.w(a, "invalid para!");
            return null;
        }
        if (d()) {
            return this.k.a(str, str2, this.f338f);
        }
        return null;
    }

    public java.util.Map<java.lang.String, java.lang.String> a(java.lang.String str) {
        if (this.f335c != null && str != null) {
            return d() ? this.k.a(str, this.f338f) : new java.util.HashMap();
        }
        com.huawei.hms.framework.common.Logger.w(a, "invalid para!");
        return new java.util.HashMap();
    }

    public void a(java.lang.String str, com.huawei.hms.framework.network.grs.IQueryUrlsCallBack iQueryUrlsCallBack) {
        if (iQueryUrlsCallBack == null) {
            com.huawei.hms.framework.common.Logger.w(a, "IQueryUrlsCallBack is must not null for process continue.");
            return;
        }
        if (this.f335c == null || str == null) {
            iQueryUrlsCallBack.onCallBackFail(-6);
        } else if (d()) {
            this.k.a(str, iQueryUrlsCallBack, this.f338f);
        }
    }

    public void a(java.lang.String str, java.lang.String str2, com.huawei.hms.framework.network.grs.IQueryUrlCallBack iQueryUrlCallBack) {
        if (iQueryUrlCallBack == null) {
            com.huawei.hms.framework.common.Logger.w(a, "IQueryUrlCallBack is must not null for process continue.");
            return;
        }
        if (this.f335c == null || str == null || str2 == null) {
            iQueryUrlCallBack.onCallBackFail(-6);
        } else if (d()) {
            this.k.a(str, str2, iQueryUrlCallBack, this.f338f);
        }
    }

    public boolean a(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && com.huawei.hms.framework.network.grs.d.class == obj.getClass() && (obj instanceof com.huawei.hms.framework.network.grs.d)) {
            return this.f335c.compare(((com.huawei.hms.framework.network.grs.d) obj).f335c);
        }
        return false;
    }

    public void b() {
        if (d()) {
            java.lang.String grsParasKey = this.f335c.getGrsParasKey(false, true, this.f338f);
            this.i.a(grsParasKey);
            this.i.a(grsParasKey + com.huawei.hms.framework.common.hianalytics.CrashHianalyticsData.TIME);
            this.f339g.a(grsParasKey);
        }
    }

    public boolean c() {
        com.huawei.hms.framework.network.grs.GrsBaseInfo grsBaseInfo;
        android.content.Context context;
        if (!d() || (grsBaseInfo = this.f335c) == null || (context = this.f338f) == null) {
            return false;
        }
        this.h.a(grsBaseInfo, context);
        return true;
    }
}
