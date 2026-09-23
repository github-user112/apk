package com.tencent.bugly.crashreport.crash;

/* loaded from: classes.dex */
public class m {
    public static int a = 0;
    public static boolean b = false;

    /* renamed from: c, reason: collision with root package name */
    public static int f1029c = 2;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f1030d = false;

    /* renamed from: e, reason: collision with root package name */
    public static int f1031e = 20480;

    /* renamed from: f, reason: collision with root package name */
    public static int f1032f = 20480;

    /* renamed from: g, reason: collision with root package name */
    public static long f1033g = 604800000;
    public static java.lang.String h = null;
    public static boolean i = false;
    public static java.lang.String j = null;
    public static int k = 5000;
    public static boolean l = true;
    public static boolean m = false;
    public static java.lang.String n;
    public static java.lang.String o;
    public static com.tencent.bugly.crashreport.crash.m p;
    public int A = 31;
    public boolean B = false;
    public final android.content.Context q;
    public final com.tencent.bugly.crashreport.crash.j r;
    public final com.tencent.bugly.crashreport.crash.q s;
    public final com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler t;
    public final com.tencent.bugly.crashreport.common.strategy.c u;
    public final com.tencent.bugly.proguard.Z v;
    public final com.tencent.bugly.crashreport.crash.anr.g w;
    public com.tencent.bugly.BuglyStrategy.a x;
    public com.tencent.bugly.crashreport.crash.r y;
    public java.lang.Boolean z;

    public class a implements java.lang.Runnable {
        public final /* synthetic */ boolean a;
        public final /* synthetic */ java.lang.Thread b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.lang.Throwable f1034c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ java.lang.String f1035d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ byte[] f1036e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ boolean f1037f;

        /* renamed from: g, reason: collision with root package name */
        public final /* synthetic */ boolean f1038g;

        public a(boolean z, java.lang.Thread thread, java.lang.Throwable th, java.lang.String str, byte[] bArr, boolean z2, boolean z3) {
            this.a = z;
            this.b = thread;
            this.f1034c = th;
            this.f1035d = str;
            this.f1036e = bArr;
            this.f1037f = z2;
            this.f1038g = z3;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                com.tencent.bugly.proguard.aa.a("post a throwable %b", java.lang.Boolean.valueOf(this.a));
                com.tencent.bugly.crashreport.crash.m.this.s.b(this.b, this.f1034c, false, this.f1035d, this.f1036e, this.f1037f);
                if (this.f1038g) {
                    com.tencent.bugly.proguard.aa.c("clear user datas", new java.lang.Object[0]);
                    com.tencent.bugly.crashreport.common.info.a.a(com.tencent.bugly.crashreport.crash.m.this.q).a();
                }
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.a(th)) {
                    th.printStackTrace();
                }
                com.tencent.bugly.proguard.aa.b("java catch error: %s", this.f1034c.toString());
            }
        }
    }

    public class b extends java.lang.Thread {
        public b() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> list;
            if (!com.tencent.bugly.proguard.ha.a(com.tencent.bugly.crashreport.crash.m.this.q, "local_crash_lock", 10000L)) {
                com.tencent.bugly.proguard.aa.a("Failed to lock file for uploading local crash.", new java.lang.Object[0]);
                return;
            }
            com.tencent.bugly.proguard.S.a().b();
            java.util.List<com.tencent.bugly.crashreport.crash.CrashDetailBean> listB = com.tencent.bugly.crashreport.crash.m.this.r.b();
            if (listB == null || listB.size() <= 0) {
                com.tencent.bugly.proguard.aa.a("no crash need to be uploaded at this start", new java.lang.Object[0]);
            } else {
                com.tencent.bugly.proguard.aa.a("Size of crash list: %s", java.lang.Integer.valueOf(listB.size()));
                int size = listB.size();
                if (size > 20) {
                    java.util.ArrayList arrayList = new java.util.ArrayList();
                    java.util.Collections.sort(listB);
                    for (int i = 0; i < 20; i++) {
                        arrayList.add(listB.get((size - 1) - i));
                    }
                    list = arrayList;
                } else {
                    list = listB;
                }
                com.tencent.bugly.crashreport.crash.m.this.r.a(list, 0L, false, false, false);
            }
            com.tencent.bugly.proguard.ha.b(com.tencent.bugly.crashreport.crash.m.this.q, "local_crash_lock");
        }
    }

    public m(int i2, android.content.Context context, com.tencent.bugly.proguard.Z z, boolean z2, com.tencent.bugly.BuglyStrategy.a aVar, com.tencent.bugly.crashreport.crash.r rVar, java.lang.String str) {
        a = i2;
        android.content.Context contextA = com.tencent.bugly.proguard.ha.a(context);
        this.q = contextA;
        this.u = com.tencent.bugly.crashreport.common.strategy.c.b();
        this.v = z;
        this.x = aVar;
        this.y = rVar;
        com.tencent.bugly.proguard.W wA = com.tencent.bugly.proguard.W.a();
        com.tencent.bugly.proguard.J jA = com.tencent.bugly.proguard.J.a();
        this.r = new com.tencent.bugly.crashreport.crash.j(i2, contextA, wA, jA, this.u, aVar, rVar);
        com.tencent.bugly.crashreport.common.info.a aVarA = com.tencent.bugly.crashreport.common.info.a.a(contextA);
        this.s = new com.tencent.bugly.crashreport.crash.q(contextA, this.r, this.u, aVarA);
        com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler nativeCrashHandler = com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.getInstance(contextA, aVarA, this.r, this.u, z, z2, str);
        this.t = nativeCrashHandler;
        aVarA.la = nativeCrashHandler;
        this.w = com.tencent.bugly.crashreport.crash.anr.g.a(contextA, this.u, aVarA, z, jA, this.r, aVar);
    }

    public static synchronized com.tencent.bugly.crashreport.crash.m a(int i2, android.content.Context context, boolean z, com.tencent.bugly.BuglyStrategy.a aVar, com.tencent.bugly.crashreport.crash.r rVar, java.lang.String str) {
        if (p == null) {
            p = new com.tencent.bugly.crashreport.crash.m(i2, context, com.tencent.bugly.proguard.Z.c(), z, aVar, rVar, str);
        }
        return p;
    }

    public static synchronized com.tencent.bugly.crashreport.crash.m g() {
        return p;
    }

    public void a() {
        if (com.tencent.bugly.crashreport.common.info.a.n().h.equals(com.tencent.bugly.crashreport.common.info.AppInfo.d(this.q))) {
            this.t.removeEmptyNativeRecordFiles();
        }
    }

    public void a(int i2) {
        this.A = i2;
    }

    public void a(long j2) {
        com.tencent.bugly.proguard.Z.c().a(new com.tencent.bugly.crashreport.crash.m.b(), j2);
    }

    public void a(com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean) {
        this.s.a(strategyBean);
        this.t.onStrategyChanged(strategyBean);
        this.w.a(strategyBean);
    }

    public void a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean) {
        this.r.f(crashDetailBean);
    }

    public void a(java.lang.Thread thread, java.lang.Throwable th, boolean z, java.lang.String str, byte[] bArr, boolean z2, boolean z3) {
        this.v.a(new com.tencent.bugly.crashreport.crash.m.a(z, thread, th, str, bArr, z3, z2));
    }

    public void a(boolean z) {
        this.B = z;
    }

    public synchronized void a(boolean z, boolean z2, boolean z3) {
        this.t.testNativeCrash(z, z2, z3);
    }

    public synchronized void b() {
        d();
        e();
        c();
    }

    public void c() {
        this.w.b(false);
    }

    public void d() {
        this.s.b();
    }

    public void e() {
        this.t.setUserOpened(false);
    }

    public boolean f() {
        return this.B;
    }

    public boolean h() {
        java.lang.Boolean bool = this.z;
        if (bool != null) {
            return bool.booleanValue();
        }
        java.lang.String str = com.tencent.bugly.crashreport.common.info.a.n().h;
        java.util.List<com.tencent.bugly.proguard.L> listA = com.tencent.bugly.proguard.J.a().a(1);
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (listA == null || listA.size() <= 0) {
            this.z = java.lang.Boolean.FALSE;
            return false;
        }
        for (com.tencent.bugly.proguard.L l2 : listA) {
            if (str.equals(l2.f1082c)) {
                this.z = java.lang.Boolean.TRUE;
                arrayList.add(l2);
            }
        }
        if (arrayList.size() > 0) {
            com.tencent.bugly.proguard.J.a().a(arrayList);
        }
        return true;
    }

    public boolean i() {
        return this.w.d();
    }

    public boolean j() {
        return (this.A & 8) > 0;
    }

    public boolean k() {
        return (this.A & 16) > 0;
    }

    public boolean l() {
        return (this.A & 2) > 0;
    }

    public boolean m() {
        return (this.A & 1) > 0;
    }

    public boolean n() {
        return (this.A & 4) > 0;
    }

    public synchronized void o() {
        r();
        s();
        p();
    }

    public void p() {
        this.w.b(true);
    }

    public void q() {
        this.t.enableCatchAnrTrace();
    }

    public void r() {
        this.s.a();
    }

    public void s() {
        this.t.setUserOpened(true);
    }

    public synchronized void t() {
        this.w.h();
    }

    public void u() {
        this.t.checkUploadRecordCrash();
    }
}
