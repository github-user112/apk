package com.tencent.bugly.crashreport.biz;

/* loaded from: classes.dex */
public class e {
    public static boolean a = false;
    public static int b = 10;

    /* renamed from: c, reason: collision with root package name */
    public static long f956c = 300000;

    /* renamed from: d, reason: collision with root package name */
    public static long f957d = 30000;

    /* renamed from: e, reason: collision with root package name */
    public static long f958e = 0;

    /* renamed from: f, reason: collision with root package name */
    public static int f959f = 0;

    /* renamed from: g, reason: collision with root package name */
    public static long f960g = 0;
    public static long h = 0;
    public static com.tencent.bugly.crashreport.biz.c i = null;
    public static long j = 0;
    public static android.app.Application.ActivityLifecycleCallbacks k = null;
    public static java.lang.Class<?> l = null;
    public static boolean m = true;

    public static class a implements java.lang.Runnable {
        public final /* synthetic */ android.content.Context a;
        public final /* synthetic */ com.tencent.bugly.BuglyStrategy b;

        public a(android.content.Context context, com.tencent.bugly.BuglyStrategy buglyStrategy) {
            this.a = context;
            this.b = buglyStrategy;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tencent.bugly.crashreport.biz.e.c(this.a, this.b);
        }
    }

    public static class b implements android.app.Application.ActivityLifecycleCallbacks {
        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(android.app.Activity activity, android.os.Bundle bundle) {
            java.lang.String name = activity.getClass().getName();
            if (com.tencent.bugly.crashreport.biz.e.l == null || com.tencent.bugly.crashreport.biz.e.l.getName().equals(name)) {
                com.tencent.bugly.proguard.aa.a(">>> %s onCreated <<<", name);
                com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
                if (aVarN != null) {
                    aVarN.ja.add(com.tencent.bugly.crashreport.biz.e.b(name, "onCreated"));
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(android.app.Activity activity) {
            java.lang.String name = activity.getClass().getName();
            if (com.tencent.bugly.crashreport.biz.e.l == null || com.tencent.bugly.crashreport.biz.e.l.getName().equals(name)) {
                com.tencent.bugly.proguard.aa.a(">>> %s onDestroyed <<<", name);
                com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
                if (aVarN != null) {
                    aVarN.ja.add(com.tencent.bugly.crashreport.biz.e.b(name, "onDestroyed"));
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(android.app.Activity activity) {
            java.lang.String name = activity.getClass().getName();
            if (com.tencent.bugly.crashreport.biz.e.l == null || com.tencent.bugly.crashreport.biz.e.l.getName().equals(name)) {
                com.tencent.bugly.proguard.aa.a(">>> %s onPaused <<<", name);
                com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
                if (aVarN == null) {
                    return;
                }
                aVarN.ja.add(com.tencent.bugly.crashreport.biz.e.b(name, "onPaused"));
                long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                aVarN.Y = jCurrentTimeMillis;
                aVarN.Z = jCurrentTimeMillis - aVarN.X;
                long unused = com.tencent.bugly.crashreport.biz.e.f960g = jCurrentTimeMillis;
                if (aVarN.Z < 0) {
                    aVarN.Z = 0L;
                }
                aVarN.W = "background";
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(android.app.Activity activity) {
            java.lang.String name = activity.getClass().getName();
            if (com.tencent.bugly.crashreport.biz.e.l == null || com.tencent.bugly.crashreport.biz.e.l.getName().equals(name)) {
                com.tencent.bugly.proguard.aa.a(">>> %s onResumed <<<", name);
                com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
                if (aVarN == null) {
                    return;
                }
                aVarN.ja.add(com.tencent.bugly.crashreport.biz.e.b(name, "onResumed"));
                aVarN.W = name;
                long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                aVarN.X = jCurrentTimeMillis;
                aVarN.aa = jCurrentTimeMillis - com.tencent.bugly.crashreport.biz.e.h;
                long j = aVarN.X - com.tencent.bugly.crashreport.biz.e.f960g;
                if (j > (com.tencent.bugly.crashreport.biz.e.f958e > 0 ? com.tencent.bugly.crashreport.biz.e.f958e : com.tencent.bugly.crashreport.biz.e.f957d)) {
                    aVarN.K();
                    com.tencent.bugly.crashreport.biz.e.i();
                    com.tencent.bugly.proguard.aa.c("[session] launch app one times (app in background %d seconds and over %d seconds)", java.lang.Long.valueOf(j / 1000), java.lang.Long.valueOf(com.tencent.bugly.crashreport.biz.e.f957d / 1000));
                    if (com.tencent.bugly.crashreport.biz.e.f959f % com.tencent.bugly.crashreport.biz.e.b == 0) {
                        com.tencent.bugly.crashreport.biz.e.i.a(4, com.tencent.bugly.crashreport.biz.e.m, 0L);
                        return;
                    }
                    com.tencent.bugly.crashreport.biz.e.i.a(4, false, 0L);
                    long jCurrentTimeMillis2 = java.lang.System.currentTimeMillis();
                    if (jCurrentTimeMillis2 - com.tencent.bugly.crashreport.biz.e.j > com.tencent.bugly.crashreport.biz.e.f956c) {
                        long unused = com.tencent.bugly.crashreport.biz.e.j = jCurrentTimeMillis2;
                        com.tencent.bugly.proguard.aa.c("add a timer to upload hot start user info", new java.lang.Object[0]);
                        if (com.tencent.bugly.crashreport.biz.e.m) {
                            com.tencent.bugly.crashreport.biz.e.i.a(com.tencent.bugly.crashreport.biz.e.f956c);
                        }
                    }
                }
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(android.app.Activity activity, android.os.Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(android.app.Activity activity) {
            com.tencent.bugly.proguard.aa.a(">>> %s onStart <<<", activity.getClass().getName());
            com.tencent.bugly.crashreport.common.info.a.n().a(activity.hashCode(), true);
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(android.app.Activity activity) {
            com.tencent.bugly.proguard.aa.a(">>> %s onStop <<<", activity.getClass().getName());
            com.tencent.bugly.crashreport.common.info.a.n().a(activity.hashCode(), false);
        }
    }

    public static void a(android.content.Context context) {
        if (!a || context == null) {
            return;
        }
        e(context);
        a = false;
    }

    public static void a(com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean, boolean z) {
        com.tencent.bugly.crashreport.biz.c cVar = i;
        if (cVar != null && !z) {
            cVar.b();
        }
        if (strategyBean == null) {
            return;
        }
        long j2 = strategyBean.p;
        if (j2 > 0) {
            f957d = j2;
        }
        int i2 = strategyBean.u;
        if (i2 > 0) {
            b = i2;
        }
        long j3 = strategyBean.v;
        if (j3 > 0) {
            f956c = j3;
        }
    }

    public static java.lang.String b(java.lang.String str, java.lang.String str2) {
        return com.tencent.bugly.proguard.ha.a() + "  " + str + "  " + str2 + "\n";
    }

    public static void b(android.content.Context context, com.tencent.bugly.BuglyStrategy buglyStrategy) {
        long appReportDelay;
        if (a) {
            return;
        }
        boolean z = com.tencent.bugly.crashreport.common.info.a.a(context).j;
        m = z;
        i = new com.tencent.bugly.crashreport.biz.c(context, z);
        a = true;
        if (buglyStrategy != null) {
            l = buglyStrategy.getUserInfoActivity();
            appReportDelay = buglyStrategy.getAppReportDelay();
        } else {
            appReportDelay = 0;
        }
        if (appReportDelay <= 0) {
            c(context, buglyStrategy);
        } else {
            com.tencent.bugly.proguard.Z.c().a(new com.tencent.bugly.crashreport.biz.e.a(context, buglyStrategy), appReportDelay);
        }
    }

    public static boolean b(android.content.Context context) {
        com.tencent.bugly.crashreport.common.info.a aVarA = com.tencent.bugly.crashreport.common.info.a.a(context);
        java.util.List<com.tencent.bugly.crashreport.biz.UserInfoBean> listA = i.a(aVarA.h);
        if (listA == null) {
            return true;
        }
        for (int i2 = 0; i2 < listA.size(); i2++) {
            com.tencent.bugly.crashreport.biz.UserInfoBean userInfoBean = listA.get(i2);
            if (userInfoBean.n.equals(aVarA.F) && userInfoBean.b == 1) {
                long jB = com.tencent.bugly.proguard.ha.b();
                if (jB <= 0) {
                    return true;
                }
                if (userInfoBean.f950e >= jB) {
                    if (userInfoBean.f951f <= 0) {
                        i.b();
                    }
                    return false;
                }
            }
        }
        return true;
    }

    public static void c(long j2) {
        if (j2 < 0) {
            j2 = com.tencent.bugly.crashreport.common.strategy.c.b().c().p;
        }
        f958e = j2;
    }

    public static void c(android.content.Context context) {
        com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
        if (aVarN != null && com.tencent.bugly.crashreport.common.info.AppInfo.a()) {
            aVarN.a(0, true);
        }
    }

    public static void c(android.content.Context context, com.tencent.bugly.BuglyStrategy buglyStrategy) {
        boolean zIsEnableUserInfo;
        boolean zRecordUserInfoOnceADay;
        boolean z = false;
        if (buglyStrategy != null) {
            zRecordUserInfoOnceADay = buglyStrategy.recordUserInfoOnceADay();
            zIsEnableUserInfo = buglyStrategy.isEnableUserInfo();
        } else {
            zIsEnableUserInfo = true;
            zRecordUserInfoOnceADay = false;
        }
        if (!zRecordUserInfoOnceADay) {
            z = zIsEnableUserInfo;
        } else if (!b(context)) {
            return;
        }
        c(context);
        if (z) {
            d(context);
        }
        if (m) {
            m();
            i.a();
            i.b(21600000L);
        }
    }

    @android.annotation.TargetApi(14)
    public static void d(android.content.Context context) {
        android.app.Application application = context.getApplicationContext() instanceof android.app.Application ? (android.app.Application) context.getApplicationContext() : null;
        if (application == null) {
            return;
        }
        try {
            if (k == null) {
                k = new com.tencent.bugly.crashreport.biz.e.b();
            }
            application.registerActivityLifecycleCallbacks(k);
        } catch (java.lang.Exception e2) {
            if (com.tencent.bugly.proguard.aa.b(e2)) {
                return;
            }
            e2.printStackTrace();
        }
    }

    @android.annotation.TargetApi(14)
    public static void e(android.content.Context context) {
        android.app.Application application = context.getApplicationContext() instanceof android.app.Application ? (android.app.Application) context.getApplicationContext() : null;
        if (application == null) {
            return;
        }
        try {
            if (k != null) {
                application.unregisterActivityLifecycleCallbacks(k);
            }
        } catch (java.lang.Exception e2) {
            if (com.tencent.bugly.proguard.aa.b(e2)) {
                return;
            }
            e2.printStackTrace();
        }
    }

    public static /* synthetic */ int i() {
        int i2 = f959f;
        f959f = i2 + 1;
        return i2;
    }

    public static void l() {
        com.tencent.bugly.crashreport.biz.c cVar = i;
        if (cVar != null) {
            cVar.a(2, false, 0L);
        }
    }

    public static void m() {
        h = java.lang.System.currentTimeMillis();
        i.a(1, false, 0L);
        com.tencent.bugly.proguard.aa.c("[session] launch app, new start", new java.lang.Object[0]);
    }
}
