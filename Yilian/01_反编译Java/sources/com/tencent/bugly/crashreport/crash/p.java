package com.tencent.bugly.crashreport.crash;

/* loaded from: classes.dex */
public class p {
    public static com.tencent.bugly.crashreport.crash.p a;
    public com.tencent.bugly.crashreport.common.strategy.c b;

    /* renamed from: c, reason: collision with root package name */
    public com.tencent.bugly.crashreport.common.info.a f1039c;

    /* renamed from: d, reason: collision with root package name */
    public com.tencent.bugly.crashreport.crash.j f1040d;

    /* renamed from: e, reason: collision with root package name */
    public android.content.Context f1041e;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tencent.bugly.crashreport.crash.p.this.b();
        }
    }

    public static class b implements java.lang.Runnable {
        public final /* synthetic */ java.lang.Thread a;
        public final /* synthetic */ int b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f1042c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f1043d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f1044e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ java.util.Map f1045f;

        public b(java.lang.Thread thread, int i, java.lang.String str, java.lang.String str2, java.lang.String str3, java.util.Map map) {
            this.a = thread;
            this.b = i;
            this.f1042c = str;
            this.f1043d = str2;
            this.f1044e = str3;
            this.f1045f = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (com.tencent.bugly.crashreport.crash.p.a == null) {
                    com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] Extra crash manager has not been initialized.", new java.lang.Object[0]);
                } else {
                    com.tencent.bugly.crashreport.crash.p.a.b(this.a, this.b, this.f1042c, this.f1043d, this.f1044e, this.f1045f);
                }
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.a(th)) {
                    th.printStackTrace();
                }
                com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] Crash error %s %s %s", this.f1042c, this.f1043d, this.f1044e);
            }
        }
    }

    public p(android.content.Context context) {
        com.tencent.bugly.crashreport.crash.m mVarG = com.tencent.bugly.crashreport.crash.m.g();
        if (mVarG == null) {
            return;
        }
        this.b = com.tencent.bugly.crashreport.common.strategy.c.b();
        this.f1039c = com.tencent.bugly.crashreport.common.info.a.a(context);
        this.f1040d = mVarG.r;
        this.f1041e = context;
        com.tencent.bugly.proguard.Z.c().a(new com.tencent.bugly.crashreport.crash.p.a());
    }

    public static com.tencent.bugly.crashreport.crash.p a(android.content.Context context) {
        if (a == null) {
            a = new com.tencent.bugly.crashreport.crash.p(context);
        }
        return a;
    }

    public static void a(java.lang.Thread thread, int i, java.lang.String str, java.lang.String str2, java.lang.String str3, java.util.Map<java.lang.String, java.lang.String> map) {
        com.tencent.bugly.proguard.Z.c().a(new com.tencent.bugly.crashreport.crash.p.b(thread, i, str, str2, str3, map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        com.tencent.bugly.proguard.aa.a("[ExtraCrashManager] Trying to notify Bugly agents.", new java.lang.Object[0]);
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.tencent.bugly.proguard.o");
            this.f1039c.getClass();
            com.tencent.bugly.proguard.ha.a(cls, "sdkPackageName", "com.tencent.bugly", null);
            com.tencent.bugly.proguard.aa.a("[ExtraCrashManager] Bugly game agent has been notified.", new java.lang.Object[0]);
        } catch (java.lang.Throwable unused) {
            com.tencent.bugly.proguard.aa.c("[ExtraCrashManager] no game agent", new java.lang.Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(java.lang.Thread thread, int i, java.lang.String str, java.lang.String str2, java.lang.String str3, java.util.Map<java.lang.String, java.lang.String> map) {
        java.lang.String str4;
        java.lang.Thread threadCurrentThread = thread == null ? java.lang.Thread.currentThread() : thread;
        if (i == 4) {
            str4 = com.umeng.commonsdk.UMConfigure.WRAPER_TYPE_UNITY;
        } else if (i == 5 || i == 6) {
            str4 = "Cocos";
        } else {
            if (i != 8) {
                com.tencent.bugly.proguard.aa.e("[ExtraCrashManager] Unknown extra crash type: %d", java.lang.Integer.valueOf(i));
                return;
            }
            str4 = "H5";
        }
        java.lang.String str5 = str4;
        com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] %s Crash Happen", str5);
        try {
            if (!this.b.d()) {
                com.tencent.bugly.proguard.aa.e("[ExtraCrashManager] There is no remote strategy, but still store it.", new java.lang.Object[0]);
            }
            com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBeanC = this.b.c();
            if (!strategyBeanC.f972f && this.b.d()) {
                com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] Crash report was closed by remote. Will not upload to Bugly , print local for helpful!", new java.lang.Object[0]);
                com.tencent.bugly.crashreport.crash.j.a(str5, com.tencent.bugly.proguard.ha.a(), this.f1039c.h, threadCurrentThread.getName(), str + "\n" + str2 + "\n" + str3, (com.tencent.bugly.crashreport.crash.CrashDetailBean) null);
                com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] Successfully handled.", new java.lang.Object[0]);
                return;
            }
            if (i == 5 || i == 6) {
                if (!strategyBeanC.k) {
                    com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] %s report is disabled.", str5);
                    com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] Successfully handled.", new java.lang.Object[0]);
                    return;
                }
            } else if (i == 8 && !strategyBeanC.l) {
                com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] %s report is disabled.", str5);
                com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] Successfully handled.", new java.lang.Object[0]);
                return;
            }
            com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBeanC = c(threadCurrentThread, i == 8 ? 5 : i, str, str2, str3, map);
            if (crashDetailBeanC == null) {
                com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] Failed to package crash data.", new java.lang.Object[0]);
                com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] Successfully handled.", new java.lang.Object[0]);
                return;
            }
            com.tencent.bugly.crashreport.crash.j.a(str5, com.tencent.bugly.proguard.ha.a(), this.f1039c.h, threadCurrentThread.getName(), str + "\n" + str2 + "\n" + str3, crashDetailBeanC);
            if (!this.f1040d.c(crashDetailBeanC)) {
                this.f1040d.a(crashDetailBeanC, com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS, false);
            }
            com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] Successfully handled.", new java.lang.Object[0]);
        } catch (java.lang.Throwable th) {
            try {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] Successfully handled.", new java.lang.Object[0]);
            } catch (java.lang.Throwable th2) {
                com.tencent.bugly.proguard.aa.b("[ExtraCrashManager] Successfully handled.", new java.lang.Object[0]);
                throw th2;
            }
        }
    }

    private com.tencent.bugly.crashreport.crash.CrashDetailBean c(java.lang.Thread thread, int i, java.lang.String str, java.lang.String str2, java.lang.String str3, java.util.Map<java.lang.String, java.lang.String> map) {
        com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean = new com.tencent.bugly.crashreport.crash.CrashDetailBean();
        crashDetailBean.C = com.tencent.bugly.crashreport.common.info.d.h();
        crashDetailBean.D = com.tencent.bugly.crashreport.common.info.d.j();
        crashDetailBean.E = com.tencent.bugly.crashreport.common.info.d.e();
        crashDetailBean.F = this.f1039c.x();
        crashDetailBean.G = this.f1039c.y();
        crashDetailBean.H = this.f1039c.z();
        crashDetailBean.I = com.tencent.bugly.crashreport.common.info.d.g();
        crashDetailBean.J = com.tencent.bugly.crashreport.common.info.d.n();
        crashDetailBean.K = com.tencent.bugly.crashreport.common.info.d.f();
        crashDetailBean.w = com.tencent.bugly.proguard.ha.a(this.f1041e, com.tencent.bugly.crashreport.crash.m.f1031e, com.tencent.bugly.crashreport.crash.m.h);
        crashDetailBean.b = i;
        crashDetailBean.f984e = this.f1039c.k();
        com.tencent.bugly.crashreport.common.info.a aVar = this.f1039c;
        crashDetailBean.f985f = aVar.F;
        crashDetailBean.f986g = aVar.i();
        crashDetailBean.m = this.f1039c.A();
        java.lang.String str4 = "";
        crashDetailBean.n = e.a.c.a.a.e("", str);
        crashDetailBean.o = e.a.c.a.a.e("", str2);
        if (str3 != null) {
            java.lang.String[] strArrSplit = str3.split("\n");
            if (strArrSplit.length > 0) {
                str4 = strArrSplit[0];
            }
        } else {
            str3 = "";
        }
        crashDetailBean.p = str4;
        crashDetailBean.q = str3;
        crashDetailBean.r = java.lang.System.currentTimeMillis();
        crashDetailBean.u = com.tencent.bugly.proguard.ha.c(crashDetailBean.q.getBytes());
        crashDetailBean.z = com.tencent.bugly.proguard.ha.a(this.f1039c.G(), com.tencent.bugly.crashreport.crash.m.f1032f, false);
        crashDetailBean.A = this.f1039c.h;
        crashDetailBean.B = thread.getName() + "(" + thread.getId() + ")";
        crashDetailBean.L = this.f1039c.s();
        crashDetailBean.h = this.f1039c.q();
        com.tencent.bugly.crashreport.common.info.a aVar2 = this.f1039c;
        crashDetailBean.Q = aVar2.f965e;
        crashDetailBean.R = aVar2.E();
        if (!com.tencent.bugly.crashreport.crash.m.g().f()) {
            this.f1040d.d(crashDetailBean);
        }
        crashDetailBean.U = this.f1039c.C();
        crashDetailBean.V = this.f1039c.v();
        crashDetailBean.W = this.f1039c.h();
        crashDetailBean.X = this.f1039c.g();
        crashDetailBean.y = com.tencent.bugly.proguard.ga.b();
        if (crashDetailBean.S == null) {
            crashDetailBean.S = new java.util.LinkedHashMap();
        }
        if (map != null) {
            crashDetailBean.S.putAll(map);
        }
        return crashDetailBean;
    }
}
