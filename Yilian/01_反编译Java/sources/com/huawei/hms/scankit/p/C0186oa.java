package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.oa, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0186oa {
    public static com.huawei.hms.scankit.p.C0186oa b;

    /* renamed from: d, reason: collision with root package name */
    public android.content.Context f771d;
    public static final java.lang.String[] a = {"ABTesting", "_default_config_tag", "_openness_config_tag", "_hms_config_tag"};

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.Object f770c = new java.lang.Object();

    public static com.huawei.hms.scankit.p.C0186oa a() {
        if (b == null) {
            b();
        }
        return b;
    }

    public static synchronized void b() {
        if (b == null) {
            b = new com.huawei.hms.scankit.p.C0186oa();
        }
    }

    public void a(android.content.Context context) {
        synchronized (f770c) {
            if (this.f771d != null) {
                com.huawei.hms.scankit.p.T.c("HiAnalyticsDataManager", "DataManager already initialized.");
                return;
            }
            this.f771d = context;
            com.huawei.hms.scankit.p.B.a().c().a(this.f771d);
            com.huawei.hms.scankit.p.B.a().c().k(context.getPackageName());
            com.huawei.hms.scankit.p.C0146ga.a().a(context);
        }
    }

    public void a(java.lang.String str) {
        com.huawei.hms.scankit.p.T.b("hmsSdk", "HiAnalyticsDataManager.setAppid(String appid) is execute.");
        android.content.Context context = this.f771d;
        if (context == null) {
            com.huawei.hms.scankit.p.T.c("hmsSdk", "sdk is not init");
        } else {
            com.huawei.hms.scankit.p.B.a().c().l(com.huawei.hms.scankit.p.C0170l.a("appID", str, "[a-zA-Z0-9_][a-zA-Z0-9. _-]{0,255}", context.getPackageName()));
        }
    }
}
