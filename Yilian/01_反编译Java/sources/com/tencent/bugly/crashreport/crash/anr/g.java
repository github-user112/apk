package com.tencent.bugly.crashreport.crash.anr;

/* loaded from: classes.dex */
public class g {
    public static com.tencent.bugly.crashreport.crash.anr.g a;

    /* renamed from: c, reason: collision with root package name */
    public final android.content.Context f995c;

    /* renamed from: d, reason: collision with root package name */
    public final android.app.ActivityManager f996d;

    /* renamed from: e, reason: collision with root package name */
    public final com.tencent.bugly.crashreport.common.info.a f997e;

    /* renamed from: f, reason: collision with root package name */
    public final com.tencent.bugly.proguard.Z f998f;

    /* renamed from: g, reason: collision with root package name */
    public final com.tencent.bugly.crashreport.common.strategy.c f999g;
    public final com.tencent.bugly.crashreport.crash.j h;
    public java.lang.String j;
    public android.os.FileObserver k;
    public com.tencent.bugly.proguard.ja m;
    public int n;
    public final java.util.concurrent.atomic.AtomicBoolean b = new java.util.concurrent.atomic.AtomicBoolean(false);
    public final java.lang.Object i = new java.lang.Object();
    public boolean l = true;
    public long o = 0;

    public class a extends android.os.FileObserver {

        /* renamed from: com.tencent.bugly.crashreport.crash.anr.g$a$a, reason: collision with other inner class name */
        public class RunnableC0009a implements java.lang.Runnable {
            public final /* synthetic */ java.lang.String a;

            public RunnableC0009a(java.lang.String str) {
                this.a = str;
            }

            @Override // java.lang.Runnable
            public void run() {
                com.tencent.bugly.crashreport.crash.anr.g.this.c(this.a);
            }
        }

        public a(java.lang.String str, int i) {
            super(str, i);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i, java.lang.String str) {
            if (str == null) {
                return;
            }
            java.lang.String strE = e.a.c.a.a.e("/data/anr/", str);
            com.tencent.bugly.proguard.aa.e("watching file %s", strE);
            if (strE.contains("trace")) {
                com.tencent.bugly.crashreport.crash.anr.g.this.f998f.a(new com.tencent.bugly.crashreport.crash.anr.g.a.RunnableC0009a(strE));
            } else {
                com.tencent.bugly.proguard.aa.e("not anr file %s", strE);
            }
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tencent.bugly.crashreport.crash.anr.g.this.i();
        }
    }

    public class c extends android.os.FileObserver {
        public c(java.lang.String str, int i) {
            super(str, i);
        }

        @Override // android.os.FileObserver
        public void onEvent(int i, java.lang.String str) {
            if (str == null) {
                return;
            }
            com.tencent.bugly.proguard.aa.e("observe file, dir:%s fileName:%s", com.tencent.bugly.crashreport.crash.anr.g.this.j, str);
            if (!com.tencent.bugly.crashreport.crash.anr.g.b(str)) {
                com.tencent.bugly.proguard.aa.a("not manual trace file, ignore.", new java.lang.Object[0]);
                return;
            }
            if (!com.tencent.bugly.crashreport.crash.anr.g.this.d()) {
                com.tencent.bugly.proguard.aa.a("proc is not in anr, just ignore", new java.lang.Object[0]);
                return;
            }
            if (com.tencent.bugly.crashreport.crash.anr.g.this.f997e.E()) {
                com.tencent.bugly.proguard.aa.a("Found foreground anr, resend sigquit immediately.", new java.lang.Object[0]);
                com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.getInstance().resendSigquit();
                long jA = com.tencent.bugly.proguard.ca.a(str, "manual_bugly_trace_", ".txt");
                com.tencent.bugly.crashreport.crash.anr.g.this.a(jA, com.tencent.bugly.crashreport.crash.anr.g.this.j + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + str);
                com.tencent.bugly.proguard.aa.a("Finish handling one anr.", new java.lang.Object[0]);
                return;
            }
            com.tencent.bugly.proguard.aa.a("Found background anr, resend sigquit later.", new java.lang.Object[0]);
            long jA2 = com.tencent.bugly.proguard.ca.a(str, "manual_bugly_trace_", ".txt");
            com.tencent.bugly.crashreport.crash.anr.g.this.a(jA2, com.tencent.bugly.crashreport.crash.anr.g.this.j + com.huawei.hms.framework.network.grs.GrsManager.SEPARATOR + str);
            com.tencent.bugly.proguard.aa.a("Finish handling one anr, now resend sigquit.", new java.lang.Object[0]);
            com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.getInstance().resendSigquit();
        }
    }

    public class d implements java.lang.Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            com.tencent.bugly.crashreport.crash.anr.g.this.i();
        }
    }

    public g(android.content.Context context, com.tencent.bugly.crashreport.common.strategy.c cVar, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.proguard.Z z, com.tencent.bugly.proguard.J j, com.tencent.bugly.crashreport.crash.j jVar, com.tencent.bugly.BuglyStrategy.a aVar2) {
        android.content.Context contextA = com.tencent.bugly.proguard.ha.a(context);
        this.f995c = contextA;
        this.f996d = (android.app.ActivityManager) contextA.getSystemService(com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME);
        this.j = context.getDir("bugly", 0).getAbsolutePath();
        this.f997e = aVar;
        this.f998f = z;
        this.f999g = cVar;
        this.h = jVar;
    }

    private com.tencent.bugly.crashreport.crash.anr.a a(android.app.ActivityManager.ProcessErrorStateInfo processErrorStateInfo, long j, java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map) {
        com.tencent.bugly.crashreport.crash.anr.a aVar = new com.tencent.bugly.crashreport.crash.anr.a();
        aVar.f990c = j;
        aVar.a = processErrorStateInfo != null ? processErrorStateInfo.processName : com.tencent.bugly.crashreport.common.info.AppInfo.a(android.os.Process.myPid());
        aVar.f993f = processErrorStateInfo != null ? processErrorStateInfo.shortMsg : "";
        aVar.f992e = processErrorStateInfo != null ? processErrorStateInfo.longMsg : "";
        aVar.b = map;
        aVar.f994g = str;
        if (android.text.TextUtils.isEmpty(str)) {
            aVar.f994g = "main stack is null , some error may be encountered.";
        }
        java.lang.Object[] objArr = new java.lang.Object[7];
        objArr[0] = java.lang.Long.valueOf(aVar.f990c);
        objArr[1] = aVar.f991d;
        objArr[2] = aVar.a;
        objArr[3] = aVar.f994g;
        objArr[4] = aVar.f993f;
        objArr[5] = aVar.f992e;
        java.util.Map<java.lang.String, java.lang.String> map2 = aVar.b;
        objArr[6] = java.lang.Integer.valueOf(map2 != null ? map2.size() : 0);
        com.tencent.bugly.proguard.aa.a("anr time:%d\ntrace file:%s\nproc:%s\nmain stack:%s\nshort msg:%s\nlong msg:%s\n threads:%d", objArr);
        return aVar;
    }

    public static com.tencent.bugly.crashreport.crash.anr.g a(android.content.Context context, com.tencent.bugly.crashreport.common.strategy.c cVar, com.tencent.bugly.crashreport.common.info.a aVar, com.tencent.bugly.proguard.Z z, com.tencent.bugly.proguard.J j, com.tencent.bugly.crashreport.crash.j jVar, com.tencent.bugly.BuglyStrategy.a aVar2) {
        if (a == null) {
            a = new com.tencent.bugly.crashreport.crash.anr.g(context, cVar, aVar, z, j, jVar, aVar2);
        }
        return a;
    }

    private java.lang.String a(java.util.List<com.tencent.bugly.crashreport.crash.anr.i> list, long j) {
        if (list == null || list.isEmpty()) {
            return "main thread stack not enable";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(4096);
        sb.append("\n>>>>> 以下为anr过程中主线程堆栈记录，可根据堆栈出现次数推测在该堆栈阻塞的时间，出现次数越多对anr贡献越大，越可能是造成anr的原因 >>>>>\n");
        sb.append("\n>>>>> Thread Stack Traces Records Start >>>>>\n");
        for (int i = 0; i < list.size(); i++) {
            com.tencent.bugly.crashreport.crash.anr.i iVar = list.get(i);
            sb.append("Thread name:");
            sb.append(iVar.c());
            sb.append("\n");
            long jA = iVar.a() - j;
            java.lang.String str = jA <= 0 ? "before " : "after ";
            sb.append("Got ");
            sb.append(str);
            sb.append("anr:");
            sb.append(java.lang.Math.abs(jA));
            sb.append("ms\n");
            sb.append(iVar.b());
            sb.append("\n");
            if (sb.length() * 2 >= 101376) {
                break;
            }
        }
        sb.append("\n<<<<< Thread Stack Traces Records End <<<<<\n");
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j, java.lang.String str) {
        java.lang.String strA;
        java.util.Map<java.lang.String, java.lang.String> mapA;
        android.app.ActivityManager activityManager;
        long j2;
        android.app.ActivityManager.ProcessErrorStateInfo processErrorStateInfoA;
        try {
            com.tencent.bugly.proguard.aa.a("anr time:%s", java.lang.Long.valueOf(j));
            synchronized (this.i) {
                if (this.m != null) {
                    com.tencent.bugly.proguard.aa.a("Disable record main stack trace.", new java.lang.Object[0]);
                    this.m.a();
                }
            }
            strA = com.tencent.bugly.proguard.ha.a(android.os.Looper.getMainLooper().getThread());
            mapA = com.tencent.bugly.proguard.ha.a(this.f997e.F(), com.tencent.bugly.crashreport.crash.m.f1032f, false);
            if (!this.f997e.E() || com.tencent.bugly.crashreport.crash.anr.h.a(this.f995c)) {
                activityManager = this.f996d;
                j2 = 0;
            } else {
                activityManager = this.f996d;
                j2 = 21000;
            }
            processErrorStateInfoA = com.tencent.bugly.crashreport.crash.anr.h.a(activityManager, j2);
        } finally {
            try {
            } finally {
            }
        }
        if (processErrorStateInfoA == null) {
            com.tencent.bugly.proguard.aa.a("proc state is invisible or not my proc!", new java.lang.Object[0]);
            return;
        }
        a(str, processErrorStateInfoA, j, strA, mapA);
        synchronized (this.i) {
            if (this.m != null) {
                com.tencent.bugly.proguard.aa.a("Finish anr process.", new java.lang.Object[0]);
                this.m.b(true);
            }
        }
    }

    private void a(java.lang.String str, long j, com.tencent.bugly.crashreport.crash.anr.a aVar) {
        java.util.List<com.tencent.bugly.crashreport.crash.anr.i> listB;
        if (aVar == null) {
            com.tencent.bugly.proguard.aa.b("AnrBean is null. Cannot set trace file for it.", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.proguard.aa.a("trace file:%s", str);
        if (android.text.TextUtils.isEmpty(str) || !new java.io.File(str).exists()) {
            com.tencent.bugly.proguard.aa.a("trace file is null or not exists, just ignore", new java.lang.Object[0]);
            return;
        }
        java.io.File file = new java.io.File(this.j, "bugly_trace_" + j + ".txt");
        com.tencent.bugly.proguard.aa.a("trace file exists", new java.lang.Object[0]);
        if (str.startsWith("/data/anr/")) {
            com.tencent.bugly.proguard.aa.c("backup trace isOK:%s", java.lang.Boolean.valueOf(a(str, file.getAbsolutePath(), aVar.a)));
        } else {
            com.tencent.bugly.proguard.aa.c("trace file rename :%s", java.lang.Boolean.valueOf(new java.io.File(str).renameTo(file)));
        }
        synchronized (this.i) {
            listB = this.m != null ? this.m.b() : null;
        }
        if (listB != null) {
            java.lang.String strA = a(listB, j);
            com.tencent.bugly.proguard.aa.a("save main stack trace", new java.lang.Object[0]);
            com.tencent.bugly.proguard.ca.a(file, strA, 2147483647L, true);
        }
        aVar.f991d = file.getAbsolutePath();
    }

    private void a(java.lang.String str, android.app.ActivityManager.ProcessErrorStateInfo processErrorStateInfo, long j, java.lang.String str2, java.util.Map<java.lang.String, java.lang.String> map) {
        com.tencent.bugly.crashreport.crash.anr.a aVarA = a(processErrorStateInfo, j, str2, map);
        com.tencent.bugly.proguard.aa.c("found visible anr , start to upload!", new java.lang.Object[0]);
        a(str, j, aVarA);
        com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBeanA = a(aVarA);
        if (crashDetailBeanA == null) {
            com.tencent.bugly.proguard.aa.b("pack anr fail!", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.crashreport.crash.m.g().a(crashDetailBeanA);
        java.lang.Object[] objArr = new java.lang.Object[0];
        if (crashDetailBeanA.a >= 0) {
            com.tencent.bugly.proguard.aa.c("backup anr record success!", objArr);
        } else {
            com.tencent.bugly.proguard.aa.e("backup anr record fail!", objArr);
        }
        com.tencent.bugly.crashreport.crash.j.a("ANR", com.tencent.bugly.proguard.ha.a(j), aVarA.a, "main", aVarA.f994g, crashDetailBeanA);
        if (!this.h.c(crashDetailBeanA)) {
            this.h.a(crashDetailBeanA, com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS, true);
        }
        this.h.e(crashDetailBeanA);
    }

    private boolean a(long j) {
        if (java.lang.Math.abs(j - this.o) < 10000) {
            com.tencent.bugly.proguard.aa.e("should not process ANR too Fre in %dms", 10000);
            return true;
        }
        this.o = j;
        return false;
    }

    public static synchronized com.tencent.bugly.crashreport.crash.anr.g b() {
        return a;
    }

    public static boolean b(java.lang.String str) {
        return str.startsWith("manual_bugly_trace_") && str.endsWith(".txt");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(java.lang.String str) {
        if (d(true)) {
            try {
                com.tencent.bugly.proguard.aa.a("read trace first dump for create time!", new java.lang.Object[0]);
                com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a firstDumpInfo = com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.readFirstDumpInfo(str, false);
                long jCurrentTimeMillis = firstDumpInfo != null ? firstDumpInfo.f987c : -1L;
                if (jCurrentTimeMillis == -1) {
                    com.tencent.bugly.proguard.aa.e("trace dump fail could not get time!", new java.lang.Object[0]);
                    jCurrentTimeMillis = java.lang.System.currentTimeMillis();
                }
                if (a(jCurrentTimeMillis)) {
                    return;
                }
                a(jCurrentTimeMillis, str);
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
                com.tencent.bugly.proguard.aa.b("handle anr error %s", th.getClass().toString());
            }
        }
    }

    private synchronized void c(boolean z) {
        if (this.l != z) {
            com.tencent.bugly.proguard.aa.c("user change anr %b", java.lang.Boolean.valueOf(z));
            this.l = z;
        }
    }

    private boolean d(boolean z) {
        boolean zCompareAndSet = this.b.compareAndSet(!z, z);
        com.tencent.bugly.proguard.aa.a("tryChangeAnrState to %s, success:%s", java.lang.Boolean.valueOf(z), java.lang.Boolean.valueOf(zCompareAndSet));
        return zCompareAndSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        long jCurrentTimeMillis = (java.lang.System.currentTimeMillis() + com.tencent.bugly.crashreport.crash.m.f1033g) - com.tencent.bugly.proguard.ha.b();
        com.tencent.bugly.proguard.ca.a(this.j, "bugly_trace_", ".txt", jCurrentTimeMillis);
        com.tencent.bugly.proguard.ca.a(this.j, "manual_bugly_trace_", ".txt", jCurrentTimeMillis);
        com.tencent.bugly.proguard.ca.a(this.j, "main_stack_record_", ".txt", jCurrentTimeMillis);
        com.tencent.bugly.proguard.ca.a(this.j, "main_stack_record_", ".txt.merged", jCurrentTimeMillis);
    }

    private void j() {
        synchronized (this.i) {
            if (this.m == null || !this.m.isAlive()) {
                com.tencent.bugly.proguard.ja jaVar = new com.tencent.bugly.proguard.ja();
                this.m = jaVar;
                jaVar.a(this.f997e.H());
                com.tencent.bugly.proguard.ja jaVar2 = this.m;
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append("Bugly-ThreadMonitor");
                int i = this.n;
                this.n = i + 1;
                sb.append(i);
                jaVar2.setName(sb.toString());
                this.m.c();
            }
        }
    }

    private synchronized void k() {
        if (c()) {
            com.tencent.bugly.proguard.aa.e("start when started!", new java.lang.Object[0]);
            return;
        }
        if (android.text.TextUtils.isEmpty(this.j)) {
            return;
        }
        j();
        com.tencent.bugly.crashreport.crash.anr.g.c cVar = new com.tencent.bugly.crashreport.crash.anr.g.c(this.j, 8);
        this.k = cVar;
        try {
            cVar.startWatching();
            com.tencent.bugly.proguard.aa.c("startWatchingPrivateAnrDir! dumFilePath is %s", this.j);
            this.f998f.a(new com.tencent.bugly.crashreport.crash.anr.g.d());
        } catch (java.lang.Throwable th) {
            this.k = null;
            com.tencent.bugly.proguard.aa.e("startWatchingPrivateAnrDir failed!", new java.lang.Object[0]);
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
        }
    }

    private void l() {
        synchronized (this.i) {
            if (this.m != null) {
                this.m.d();
                this.m = null;
            }
        }
    }

    private synchronized void m() {
        if (!c()) {
            com.tencent.bugly.proguard.aa.e("close when closed!", new java.lang.Object[0]);
            return;
        }
        l();
        com.tencent.bugly.proguard.aa.c("stopWatchingPrivateAnrDir", new java.lang.Object[0]);
        try {
            this.k.stopWatching();
            this.k = null;
            com.tencent.bugly.proguard.aa.e("close anr monitor!", new java.lang.Object[0]);
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.e("stop anr monitor failed!", new java.lang.Object[0]);
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
        }
    }

    public com.tencent.bugly.crashreport.crash.CrashDetailBean a(com.tencent.bugly.crashreport.crash.anr.a aVar) {
        com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean = new com.tencent.bugly.crashreport.crash.CrashDetailBean();
        try {
            crashDetailBean.C = com.tencent.bugly.crashreport.common.info.d.h();
            crashDetailBean.D = com.tencent.bugly.crashreport.common.info.d.j();
            crashDetailBean.E = com.tencent.bugly.crashreport.common.info.d.e();
            crashDetailBean.F = this.f997e.x();
            crashDetailBean.G = this.f997e.y();
            crashDetailBean.H = this.f997e.z();
            crashDetailBean.I = com.tencent.bugly.crashreport.common.info.d.g();
            crashDetailBean.J = com.tencent.bugly.crashreport.common.info.d.n();
            crashDetailBean.K = com.tencent.bugly.crashreport.common.info.d.f();
            if (!com.tencent.bugly.crashreport.common.info.d.f(this.f995c)) {
                crashDetailBean.w = com.tencent.bugly.proguard.ha.a(this.f995c, com.tencent.bugly.crashreport.crash.m.f1031e, com.tencent.bugly.crashreport.crash.m.h);
            }
            crashDetailBean.b = 3;
            crashDetailBean.f984e = this.f997e.k();
            crashDetailBean.f985f = this.f997e.F;
            crashDetailBean.f986g = this.f997e.i();
            crashDetailBean.m = this.f997e.A();
            crashDetailBean.n = "ANR_EXCEPTION";
            crashDetailBean.o = aVar.f993f;
            crashDetailBean.q = aVar.f994g;
            java.util.HashMap map = new java.util.HashMap();
            crashDetailBean.T = map;
            map.put("BUGLY_CR_01", aVar.f992e);
            int iIndexOf = crashDetailBean.q != null ? crashDetailBean.q.indexOf("\n") : -1;
            crashDetailBean.p = iIndexOf > 0 ? crashDetailBean.q.substring(0, iIndexOf) : "GET_FAIL";
            crashDetailBean.r = aVar.f990c;
            if (crashDetailBean.q != null) {
                crashDetailBean.u = com.tencent.bugly.proguard.ha.c(crashDetailBean.q.getBytes());
            }
            crashDetailBean.z = aVar.b;
            crashDetailBean.A = aVar.a;
            crashDetailBean.B = "main(1)";
            crashDetailBean.L = this.f997e.s();
            crashDetailBean.h = this.f997e.q();
            crashDetailBean.i = this.f997e.p();
            crashDetailBean.v = aVar.f991d;
            crashDetailBean.P = this.f997e.N;
            crashDetailBean.Q = this.f997e.f965e;
            crashDetailBean.R = this.f997e.E();
            if (!com.tencent.bugly.crashreport.common.info.d.f(this.f995c)) {
                this.h.d(crashDetailBean);
            }
            crashDetailBean.U = this.f997e.C();
            crashDetailBean.V = this.f997e.v();
            crashDetailBean.W = this.f997e.h();
            crashDetailBean.X = this.f997e.g();
            crashDetailBean.y = com.tencent.bugly.proguard.ga.b();
        } catch (java.lang.Throwable th) {
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
        }
        return crashDetailBean;
    }

    public synchronized void a(com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean) {
        com.tencent.bugly.proguard.aa.e("customer decides whether to open or close.", new java.lang.Object[0]);
    }

    public synchronized void a(boolean z) {
        if (android.os.Build.VERSION.SDK_INT <= 19) {
            if (z) {
                f();
            } else {
                g();
            }
        } else if (z) {
            k();
        } else {
            m();
        }
    }

    public boolean a() {
        if (d()) {
            com.tencent.bugly.proguard.aa.a("anr is processing, return", new java.lang.Object[0]);
            return false;
        }
        if (!com.tencent.bugly.crashreport.crash.anr.h.a(this.f996d)) {
            com.tencent.bugly.proguard.aa.a("proc is not in anr, wait next check", new java.lang.Object[0]);
            return false;
        }
        if (a(java.lang.System.currentTimeMillis())) {
            return false;
        }
        return d(true);
    }

    public boolean a(java.lang.String str, java.lang.String str2, java.lang.String str3) throws java.lang.Throwable {
        java.util.Map<java.lang.String, java.lang.String[]> map;
        com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.a targetDumpInfo = com.tencent.bugly.crashreport.crash.anr.TraceFileHelper.readTargetDumpInfo(str3, str, true);
        if (targetDumpInfo == null || (map = targetDumpInfo.f988d) == null || map.isEmpty()) {
            com.tencent.bugly.proguard.aa.b("not found trace dump for %s", str3);
            return false;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(1024);
        java.lang.String[] strArr = targetDumpInfo.f988d.get("main");
        if (strArr != null && strArr.length >= 3) {
            sb.append("\"main\" tid=");
            sb.append(strArr[2]);
            sb.append(" :\n");
            sb.append(strArr[0]);
            sb.append("\n");
            sb.append(strArr[1]);
            sb.append("\n\n");
        }
        for (java.util.Map.Entry<java.lang.String, java.lang.String[]> entry : targetDumpInfo.f988d.entrySet()) {
            if (!entry.getKey().equals("main") && entry.getValue() != null && entry.getValue().length >= 3) {
                sb.append("\"");
                sb.append(entry.getKey());
                sb.append("\" tid=");
                sb.append(entry.getValue()[2]);
                sb.append(" :\n");
                sb.append(entry.getValue()[0]);
                sb.append("\n");
                sb.append(entry.getValue()[1]);
                sb.append("\n\n");
            }
        }
        return com.tencent.bugly.proguard.ca.a(str2, sb.toString(), sb.length() * 2);
    }

    public void b(boolean z) {
        c(z);
        boolean zE = e();
        com.tencent.bugly.crashreport.common.strategy.c cVarB = com.tencent.bugly.crashreport.common.strategy.c.b();
        if (cVarB != null) {
            zE = zE && cVarB.c().f972f;
        }
        if (zE != c()) {
            com.tencent.bugly.proguard.aa.c("anr changed to %b", java.lang.Boolean.valueOf(zE));
            a(zE);
        }
    }

    public synchronized boolean c() {
        return this.k != null;
    }

    public boolean d() {
        return this.b.get();
    }

    public synchronized boolean e() {
        return this.l;
    }

    public synchronized void f() {
        if (c()) {
            com.tencent.bugly.proguard.aa.e("start when started!", new java.lang.Object[0]);
            return;
        }
        com.tencent.bugly.crashreport.crash.anr.g.a aVar = new com.tencent.bugly.crashreport.crash.anr.g.a("/data/anr/", 8);
        this.k = aVar;
        try {
            aVar.startWatching();
            com.tencent.bugly.proguard.aa.c("start anr monitor!", new java.lang.Object[0]);
            this.f998f.a(new com.tencent.bugly.crashreport.crash.anr.g.b());
        } catch (java.lang.Throwable th) {
            this.k = null;
            com.tencent.bugly.proguard.aa.e("start anr monitor failed!", new java.lang.Object[0]);
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
        }
    }

    public synchronized void g() {
        if (!c()) {
            com.tencent.bugly.proguard.aa.e("close when closed!", new java.lang.Object[0]);
            return;
        }
        try {
            this.k.stopWatching();
            this.k = null;
            com.tencent.bugly.proguard.aa.e("close anr monitor!", new java.lang.Object[0]);
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.e("stop anr monitor failed!", new java.lang.Object[0]);
            if (!com.tencent.bugly.proguard.aa.b(th)) {
                th.printStackTrace();
            }
        }
    }

    public void h() {
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i >= 30) {
                return;
            }
            try {
                com.tencent.bugly.proguard.aa.c("try main sleep for make a test anr! try:%d/30 , kill it if you don't want to wait!", java.lang.Integer.valueOf(i2));
                com.tencent.bugly.proguard.ha.c(5000L);
                i = i2;
            } catch (java.lang.Throwable th) {
                if (com.tencent.bugly.proguard.aa.b(th)) {
                    return;
                }
                th.printStackTrace();
                return;
            }
        }
    }
}
