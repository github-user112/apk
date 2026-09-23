package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class k {
    public static java.lang.String a;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1352c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1353d;

    /* renamed from: g, reason: collision with root package name */
    public com.umeng.analytics.vshelper.a f1354g;
    public android.app.Application.ActivityLifecycleCallbacks h;
    public final java.util.Map<java.lang.String, java.lang.Long> i;
    public boolean m;
    public int n;
    public int o;
    public static org.json.JSONArray j = new org.json.JSONArray();
    public static java.lang.Object k = new java.lang.Object();
    public static android.app.Application l = null;
    public static com.umeng.analytics.MobclickAgent.PageMode b = com.umeng.analytics.MobclickAgent.PageMode.AUTO;

    /* renamed from: e, reason: collision with root package name */
    public static java.lang.String f1350e = null;

    /* renamed from: f, reason: collision with root package name */
    public static int f1351f = -1;
    public static boolean p = true;
    public static java.lang.Object q = new java.lang.Object();

    public static class a {
        public static final com.umeng.analytics.pro.k a = new com.umeng.analytics.pro.k();
    }

    public k() {
        this.i = new java.util.HashMap();
        this.m = false;
        this.f1352c = false;
        this.f1353d = false;
        this.n = 0;
        this.o = 0;
        this.f1354g = com.umeng.analytics.vshelper.PageNameMonitor.getInstance();
        this.h = new android.app.Application.ActivityLifecycleCallbacks() { // from class: com.umeng.analytics.pro.k.1
            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityCreated(android.app.Activity activity, android.os.Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityDestroyed(android.app.Activity activity) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityPaused(android.app.Activity activity) {
                if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.F)) {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> onActivityPaused: FirstResumeTrigger enabled.");
                    synchronized (com.umeng.analytics.pro.k.q) {
                        if (com.umeng.analytics.pro.k.p) {
                            return;
                        }
                    }
                } else {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> onActivityPaused: FirstResumeTrigger disabled.");
                }
                if (com.umeng.analytics.pro.k.b != com.umeng.analytics.MobclickAgent.PageMode.AUTO) {
                    return;
                }
                com.umeng.analytics.pro.k.this.c(activity);
                com.umeng.analytics.b.a().i();
                com.umeng.analytics.pro.k.this.f1352c = false;
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityResumed(android.app.Activity activity) {
                if (com.umeng.commonsdk.config.FieldManager.allow(com.umeng.commonsdk.utils.b.F)) {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> onActivityResumed: FirstResumeTrigger enabled.");
                    synchronized (com.umeng.analytics.pro.k.q) {
                        if (com.umeng.analytics.pro.k.p) {
                            boolean unused = com.umeng.analytics.pro.k.p = false;
                        }
                    }
                } else {
                    com.umeng.commonsdk.debug.UMRTLog.i(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> onActivityResumed: FirstResumeTrigger disabled.");
                }
                com.umeng.analytics.pro.k.this.a(activity);
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivitySaveInstanceState(android.app.Activity activity, android.os.Bundle bundle) {
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStarted(android.app.Activity activity) {
                if (activity != null) {
                    if (com.umeng.analytics.pro.k.this.n <= 0) {
                        if (com.umeng.analytics.pro.k.f1350e == null) {
                            com.umeng.analytics.pro.k.f1350e = java.util.UUID.randomUUID().toString();
                        }
                        if (com.umeng.analytics.pro.k.f1351f == -1) {
                            com.umeng.analytics.pro.k.f1351f = activity.isTaskRoot() ? 1 : 0;
                        }
                        if (com.umeng.analytics.pro.k.f1351f == 0 && com.umeng.commonsdk.utils.UMUtils.isMainProgress(activity)) {
                            java.util.HashMap map = new java.util.HashMap();
                            map.put("activityName", activity.toString());
                            map.put("pid", java.lang.Integer.valueOf(android.os.Process.myPid()));
                            map.put("isMainProcess", java.lang.Integer.valueOf(com.umeng.commonsdk.utils.UMUtils.isMainProgress(activity) ? 1 : 0));
                            com.umeng.analytics.b bVarA = com.umeng.analytics.b.a();
                            if (bVarA != null) {
                                bVarA.a((android.content.Context) activity, "$$_onUMengEnterForegroundInitError", (java.util.Map<java.lang.String, java.lang.Object>) map);
                            }
                            com.umeng.analytics.pro.k.f1351f = -2;
                            if (com.umeng.commonsdk.UMConfigure.isDebugLog()) {
                                com.umeng.commonsdk.debug.UMLog.mutlInfo(2, com.umeng.analytics.pro.i.ar);
                            }
                        } else if (com.umeng.analytics.pro.k.f1351f == 1 || !com.umeng.commonsdk.utils.UMUtils.isMainProgress(activity)) {
                            java.util.HashMap map2 = new java.util.HashMap();
                            map2.put("pairUUID", com.umeng.analytics.pro.k.f1350e);
                            map2.put("pid", java.lang.Integer.valueOf(android.os.Process.myPid()));
                            map2.put("isMainProcess", java.lang.Integer.valueOf(com.umeng.commonsdk.utils.UMUtils.isMainProgress(activity) ? 1 : 0));
                            map2.put("activityName", activity.toString());
                            if (com.umeng.analytics.b.a() != null) {
                                com.umeng.analytics.b.a().a((android.content.Context) activity, "$$_onUMengEnterForeground", (java.util.Map<java.lang.String, java.lang.Object>) map2);
                            }
                        }
                    }
                    if (com.umeng.analytics.pro.k.this.o < 0) {
                        com.umeng.analytics.pro.k.e(com.umeng.analytics.pro.k.this);
                    } else {
                        com.umeng.analytics.pro.k.f(com.umeng.analytics.pro.k.this);
                    }
                }
            }

            @Override // android.app.Application.ActivityLifecycleCallbacks
            public void onActivityStopped(android.app.Activity activity) {
                com.umeng.analytics.MobclickAgent.PageMode pageMode = com.umeng.analytics.pro.k.b;
                com.umeng.analytics.MobclickAgent.PageMode pageMode2 = com.umeng.analytics.MobclickAgent.PageMode.AUTO;
                if (activity != null) {
                    if (activity.isChangingConfigurations()) {
                        com.umeng.analytics.pro.k.a(com.umeng.analytics.pro.k.this);
                        return;
                    }
                    com.umeng.analytics.pro.k.b(com.umeng.analytics.pro.k.this);
                    if (com.umeng.analytics.pro.k.this.n <= 0) {
                        if (com.umeng.analytics.pro.k.f1351f == 0 && com.umeng.commonsdk.utils.UMUtils.isMainProgress(activity)) {
                            return;
                        }
                        int i = com.umeng.analytics.pro.k.f1351f;
                        if (i == 1 || (i == 0 && !com.umeng.commonsdk.utils.UMUtils.isMainProgress(activity))) {
                            java.util.HashMap map = new java.util.HashMap();
                            map.put("pairUUID", com.umeng.analytics.pro.k.f1350e);
                            map.put("reason", "Normal");
                            map.put("pid", java.lang.Integer.valueOf(android.os.Process.myPid()));
                            map.put("isMainProcess", java.lang.Integer.valueOf(com.umeng.commonsdk.utils.UMUtils.isMainProgress(activity) ? 1 : 0));
                            map.put("activityName", activity.toString());
                            com.umeng.analytics.b bVarA = com.umeng.analytics.b.a();
                            if (bVarA != null) {
                                bVarA.a((android.content.Context) activity, "$$_onUMengEnterBackground", (java.util.Map<java.lang.String, java.lang.Object>) map);
                            }
                            if (com.umeng.analytics.pro.k.f1350e != null) {
                                com.umeng.analytics.pro.k.f1350e = null;
                            }
                        }
                    }
                }
            }
        };
        synchronized (this) {
            if (l != null) {
                f();
            }
        }
    }

    public static /* synthetic */ int a(com.umeng.analytics.pro.k kVar) {
        int i = kVar.o;
        kVar.o = i - 1;
        return i;
    }

    public static synchronized com.umeng.analytics.pro.k a(android.content.Context context) {
        android.app.Application application;
        if (l == null && context != null) {
            if (context instanceof android.app.Activity) {
                application = ((android.app.Activity) context).getApplication();
            } else if (context instanceof android.app.Application) {
                application = (android.app.Application) context;
            }
            l = application;
        }
        return com.umeng.analytics.pro.k.a.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(android.app.Activity activity) {
        if (b == com.umeng.analytics.MobclickAgent.PageMode.AUTO && activity != null) {
            java.lang.String str = activity.getPackageName() + "." + activity.getLocalClassName();
            this.f1354g.activityResume(str);
            if (!this.f1352c) {
                b(activity);
                synchronized (q) {
                    com.umeng.analytics.b.a().h();
                }
                return;
            }
            this.f1352c = false;
            if (android.text.TextUtils.isEmpty(a)) {
                a = str;
            } else {
                if (a.equals(str)) {
                    return;
                }
                b(activity);
                synchronized (q) {
                    com.umeng.analytics.b.a().h();
                }
            }
        }
    }

    public static void a(android.content.Context context, java.lang.String str) {
        if (f1351f == 1 && com.umeng.commonsdk.utils.UMUtils.isMainProgress(context)) {
            java.util.HashMap map = new java.util.HashMap();
            map.put("pairUUID", f1350e);
            map.put("reason", str);
            if (f1350e != null) {
                f1350e = null;
            }
            if (context != null) {
                map.put("pid", java.lang.Integer.valueOf(android.os.Process.myPid()));
                map.put("isMainProcess", java.lang.Integer.valueOf(com.umeng.commonsdk.utils.UMUtils.isMainProgress(context) ? 1 : 0));
                map.put("Context", context.toString());
                com.umeng.analytics.b.a().a(context, "$$_onUMengEnterBackground", (java.util.Map<java.lang.String, java.lang.Object>) map);
            }
        }
    }

    public static /* synthetic */ int b(com.umeng.analytics.pro.k kVar) {
        int i = kVar.n;
        kVar.n = i - 1;
        return i;
    }

    private void b(android.app.Activity activity) {
        a = activity.getPackageName() + "." + activity.getLocalClassName();
        synchronized (this.i) {
            this.i.put(a, java.lang.Long.valueOf(java.lang.System.currentTimeMillis()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(android.app.Activity activity) {
        long j2;
        long j3;
        try {
            synchronized (this.i) {
                if (a == null && activity != null) {
                    a = activity.getPackageName() + "." + activity.getLocalClassName();
                }
                j2 = 0;
                if (android.text.TextUtils.isEmpty(a) || !this.i.containsKey(a)) {
                    j3 = 0;
                } else {
                    long jLongValue = this.i.get(a).longValue();
                    long jCurrentTimeMillis = java.lang.System.currentTimeMillis() - jLongValue;
                    this.i.remove(a);
                    j2 = jCurrentTimeMillis;
                    j3 = jLongValue;
                }
            }
            synchronized (k) {
                try {
                    org.json.JSONObject jSONObject = new org.json.JSONObject();
                    jSONObject.put(com.umeng.analytics.pro.c.v, a);
                    jSONObject.put("duration", j2);
                    jSONObject.put(com.umeng.analytics.pro.c.x, j3);
                    jSONObject.put(com.umeng.analytics.pro.c.y, 0);
                    j.put(jSONObject);
                } catch (java.lang.Throwable unused) {
                }
            }
        } catch (java.lang.Throwable unused2) {
        }
    }

    public static void c(android.content.Context context) {
        java.lang.String string;
        if (context != null) {
            try {
                org.json.JSONObject jSONObject = new org.json.JSONObject();
                synchronized (k) {
                    string = j.toString();
                    j = new org.json.JSONArray();
                }
                if (string.length() > 0) {
                    jSONObject.put(com.umeng.analytics.pro.d.C0016d.a.f1323c, new org.json.JSONArray(string));
                    com.umeng.analytics.pro.h.a(context).a(com.umeng.analytics.pro.t.a().c(), jSONObject, com.umeng.analytics.pro.h.a.AUTOPAGE);
                }
            } catch (java.lang.Throwable unused) {
            }
        }
    }

    public static /* synthetic */ int e(com.umeng.analytics.pro.k kVar) {
        int i = kVar.o;
        kVar.o = i + 1;
        return i;
    }

    public static /* synthetic */ int f(com.umeng.analytics.pro.k kVar) {
        int i = kVar.n;
        kVar.n = i + 1;
        return i;
    }

    private void f() {
        if (this.m) {
            return;
        }
        this.m = true;
        if (l != null) {
            l.registerActivityLifecycleCallbacks(this.h);
        }
    }

    public boolean a() {
        return this.m;
    }

    public void b() {
        this.m = false;
        if (l != null) {
            l.unregisterActivityLifecycleCallbacks(this.h);
            l = null;
        }
    }

    public void b(android.content.Context context) {
        synchronized (q) {
            if (!p) {
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> init触发onResume: firstResumeCall = false，直接返回。");
                return;
            }
            p = false;
            android.app.Activity globleActivity = com.umeng.commonsdk.statistics.common.DeviceConfig.getGlobleActivity(context);
            if (globleActivity == null) {
                com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> init触发onResume: 无前台Activity，直接退出。");
                return;
            }
            com.umeng.commonsdk.debug.UMRTLog.e(com.umeng.commonsdk.debug.UMRTLog.RTLOG_TAG, "--->>> init触发onResume: 补救成功，前台Activity名：" + globleActivity.getLocalClassName());
            a(globleActivity);
        }
    }

    public void c() {
        c((android.app.Activity) null);
        b();
    }
}
