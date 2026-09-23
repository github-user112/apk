package com.tencent.bugly.crashreport.crash;

/* loaded from: classes.dex */
public class q implements java.lang.Thread.UncaughtExceptionHandler {
    public static java.lang.String a;
    public static final java.lang.Object b = new java.lang.Object();

    /* renamed from: c, reason: collision with root package name */
    public final android.content.Context f1046c;

    /* renamed from: d, reason: collision with root package name */
    public final com.tencent.bugly.crashreport.crash.j f1047d;

    /* renamed from: e, reason: collision with root package name */
    public final com.tencent.bugly.crashreport.common.strategy.c f1048e;

    /* renamed from: f, reason: collision with root package name */
    public final com.tencent.bugly.crashreport.common.info.a f1049f;

    /* renamed from: g, reason: collision with root package name */
    public java.lang.Thread.UncaughtExceptionHandler f1050g;
    public java.lang.Thread.UncaughtExceptionHandler h;
    public boolean i = false;
    public int j;

    public q(android.content.Context context, com.tencent.bugly.crashreport.crash.j jVar, com.tencent.bugly.crashreport.common.strategy.c cVar, com.tencent.bugly.crashreport.common.info.a aVar) {
        this.f1046c = context;
        this.f1047d = jVar;
        this.f1048e = cVar;
        this.f1049f = aVar;
    }

    public static java.lang.String a(java.lang.Throwable th, int i) {
        java.lang.String message = th.getMessage();
        if (message == null) {
            return "";
        }
        if (i < 0 || message.length() <= i) {
            return message;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(message.substring(0, i));
        sb.append("\n[Message over limit size:");
        return e.a.c.a.a.i(sb, i, ", has been cutted!]");
    }

    private void a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, java.lang.Throwable th, boolean z) {
        java.lang.String str;
        java.lang.String strB;
        java.lang.String name = th.getClass().getName();
        java.lang.String strA = a(th, 1000);
        java.lang.Object[] objArr = new java.lang.Object[2];
        objArr[0] = java.lang.Integer.valueOf(th.getStackTrace().length);
        objArr[1] = java.lang.Boolean.valueOf(th.getCause() != null);
        com.tencent.bugly.proguard.aa.b("stack frame :%d, has cause %b", objArr);
        java.lang.String string = th.getStackTrace().length > 0 ? th.getStackTrace()[0].toString() : "";
        java.lang.Throwable cause = th;
        while (cause != null && cause.getCause() != null) {
            cause = cause.getCause();
        }
        if (cause == null || cause == th) {
            crashDetailBean.n = name;
            if (com.tencent.bugly.crashreport.crash.m.g().i() && z) {
                com.tencent.bugly.proguard.aa.b("This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful!", new java.lang.Object[0]);
                str = " This Crash Caused By ANR , PLS To Fix ANR , This Trace May Be Not Useful![Bugly]";
            } else {
                str = "";
            }
            crashDetailBean.o = e.a.c.a.a.f(strA, "", str);
            crashDetailBean.p = string;
            strB = b(th, com.tencent.bugly.crashreport.crash.m.f1032f);
            crashDetailBean.q = strB;
        } else {
            crashDetailBean.n = cause.getClass().getName();
            crashDetailBean.o = a(cause, 1000);
            if (cause.getStackTrace().length > 0) {
                crashDetailBean.p = cause.getStackTrace()[0].toString();
            }
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(name);
            sb.append(":");
            sb.append(strA);
            sb.append("\n");
            sb.append(string);
            sb.append("\n......");
            sb.append("\nCaused by:\n");
            sb.append(crashDetailBean.n);
            sb.append(":");
            sb.append(crashDetailBean.o);
            sb.append("\n");
            strB = b(cause, com.tencent.bugly.crashreport.crash.m.f1032f);
            sb.append(strB);
            crashDetailBean.q = sb.toString();
        }
        crashDetailBean.u = com.tencent.bugly.proguard.ha.c(crashDetailBean.q.getBytes());
        crashDetailBean.z.put(crashDetailBean.B, strB);
    }

    private void a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, boolean z, java.lang.String str, byte[] bArr) {
        try {
            if (z) {
                this.f1047d.d(crashDetailBean);
            } else {
                boolean z2 = str != null && str.length() > 0;
                boolean z3 = bArr != null && bArr.length > 0;
                if (z2) {
                    java.util.HashMap map = new java.util.HashMap(1);
                    crashDetailBean.S = map;
                    map.put("UserData", str);
                }
                if (z3) {
                    crashDetailBean.Y = bArr;
                }
            }
            crashDetailBean.U = this.f1049f.C();
            crashDetailBean.V = this.f1049f.v();
            crashDetailBean.W = this.f1049f.h();
            crashDetailBean.X = this.f1049f.g();
        } catch (java.lang.Throwable th) {
            com.tencent.bugly.proguard.aa.b("handle crash error %s", th.toString());
        }
    }

    private void a(com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean, boolean z, java.lang.Thread thread, boolean z2) {
        crashDetailBean.r = java.lang.System.currentTimeMillis();
        crashDetailBean.C = com.tencent.bugly.crashreport.common.info.d.h();
        crashDetailBean.D = com.tencent.bugly.crashreport.common.info.d.j();
        crashDetailBean.E = com.tencent.bugly.crashreport.common.info.d.e();
        crashDetailBean.F = this.f1049f.x();
        crashDetailBean.G = this.f1049f.y();
        crashDetailBean.H = this.f1049f.z();
        crashDetailBean.I = com.tencent.bugly.crashreport.common.info.d.g();
        crashDetailBean.J = com.tencent.bugly.crashreport.common.info.d.n();
        crashDetailBean.K = com.tencent.bugly.crashreport.common.info.d.f();
        crashDetailBean.w = com.tencent.bugly.proguard.ha.a(this.f1046c, com.tencent.bugly.crashreport.crash.m.f1031e, com.tencent.bugly.crashreport.crash.m.h);
        byte[] bArrB = com.tencent.bugly.proguard.ga.b();
        crashDetailBean.y = bArrB;
        java.lang.Object[] objArr = new java.lang.Object[1];
        objArr[0] = java.lang.Integer.valueOf(bArrB == null ? 0 : bArrB.length);
        com.tencent.bugly.proguard.aa.c("user log size:%d", objArr);
        crashDetailBean.b = z ? 0 : 2;
        crashDetailBean.f984e = this.f1049f.k();
        com.tencent.bugly.crashreport.common.info.a aVar = this.f1049f;
        crashDetailBean.f985f = aVar.F;
        crashDetailBean.f986g = aVar.i();
        crashDetailBean.m = this.f1049f.A();
        crashDetailBean.z = com.tencent.bugly.proguard.ha.a(z2, com.tencent.bugly.crashreport.crash.m.f1032f, false);
        crashDetailBean.A = this.f1049f.h;
        crashDetailBean.B = thread.getName() + "(" + thread.getId() + ")";
        crashDetailBean.L = this.f1049f.s();
        crashDetailBean.h = this.f1049f.q();
        crashDetailBean.i = this.f1049f.p();
        com.tencent.bugly.crashreport.common.info.a aVar2 = this.f1049f;
        crashDetailBean.Q = aVar2.f965e;
        crashDetailBean.R = aVar2.E();
    }

    private boolean a(java.lang.Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
        if (uncaughtExceptionHandler == null) {
            return true;
        }
        java.lang.String name = uncaughtExceptionHandler.getClass().getName();
        for (java.lang.StackTraceElement stackTraceElement : java.lang.Thread.currentThread().getStackTrace()) {
            java.lang.String className = stackTraceElement.getClassName();
            java.lang.String methodName = stackTraceElement.getMethodName();
            if (name.equals(className) && "uncaughtException".equals(methodName)) {
                return false;
            }
        }
        return true;
    }

    private boolean a(java.lang.Thread thread) {
        synchronized (b) {
            if (a != null && thread.getName().equals(a)) {
                return true;
            }
            a = thread.getName();
            return false;
        }
    }

    public static java.lang.String b(java.lang.Throwable th, int i) {
        if (th == null) {
            return null;
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        try {
            if (th.getStackTrace() != null) {
                for (java.lang.StackTraceElement stackTraceElement : th.getStackTrace()) {
                    if (i > 0 && sb.length() >= i) {
                        java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                        sb2.append("\n[Stack over limit size :");
                        sb2.append(i);
                        sb2.append(" , has been cutted !]");
                        sb.append(sb2.toString());
                        return sb.toString();
                    }
                    sb.append(stackTraceElement.toString());
                    sb.append("\n");
                }
            }
        } catch (java.lang.Throwable th2) {
            com.tencent.bugly.proguard.aa.b("gen stack error %s", th2.toString());
        }
        return sb.toString();
    }

    public com.tencent.bugly.crashreport.crash.CrashDetailBean a(java.lang.Thread thread, java.lang.Throwable th, boolean z, java.lang.String str, byte[] bArr, boolean z2) {
        if (th == null) {
            com.tencent.bugly.proguard.aa.e("We can do nothing with a null throwable.", new java.lang.Object[0]);
            return null;
        }
        com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBean = new com.tencent.bugly.crashreport.crash.CrashDetailBean();
        a(crashDetailBean, z, thread, z2);
        a(crashDetailBean, th, z);
        a(crashDetailBean, z, str, bArr);
        return crashDetailBean;
    }

    public synchronized void a() {
        if (this.j >= 10) {
            com.tencent.bugly.proguard.aa.c("java crash handler over %d, no need set.", 10);
            return;
        }
        this.i = true;
        java.lang.Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler = java.lang.Thread.getDefaultUncaughtExceptionHandler();
        if (defaultUncaughtExceptionHandler != null) {
            if (com.tencent.bugly.crashreport.crash.q.class.getName().equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                return;
            }
            if ("com.android.internal.os.RuntimeInit$UncaughtHandler".equals(defaultUncaughtExceptionHandler.getClass().getName())) {
                com.tencent.bugly.proguard.aa.c("backup system java handler: %s", defaultUncaughtExceptionHandler.toString());
                this.h = defaultUncaughtExceptionHandler;
            } else {
                com.tencent.bugly.proguard.aa.c("backup java handler: %s", defaultUncaughtExceptionHandler.toString());
            }
            this.f1050g = defaultUncaughtExceptionHandler;
        }
        java.lang.Thread.setDefaultUncaughtExceptionHandler(this);
        this.j++;
        com.tencent.bugly.proguard.aa.c("registered java monitor: %s", toString());
    }

    public synchronized void a(com.tencent.bugly.crashreport.common.strategy.StrategyBean strategyBean) {
        if (strategyBean != null) {
            boolean z = strategyBean.f972f;
            if (z != this.i) {
                com.tencent.bugly.proguard.aa.c("java changed to %b", java.lang.Boolean.valueOf(z));
                if (strategyBean.f972f) {
                    a();
                } else {
                    b();
                }
            }
        }
    }

    public void a(java.lang.Thread thread, java.lang.Throwable th) {
        com.tencent.bugly.proguard.aa.b("current process die", new java.lang.Object[0]);
        android.os.Process.killProcess(android.os.Process.myPid());
        java.lang.System.exit(1);
    }

    public synchronized void b() {
        this.i = false;
        com.tencent.bugly.proguard.aa.c("close java monitor!", new java.lang.Object[0]);
        if ("bugly".equals(java.lang.Thread.getDefaultUncaughtExceptionHandler().getClass().getName())) {
            com.tencent.bugly.proguard.aa.c("Java monitor to unregister: %s", toString());
            java.lang.Thread.setDefaultUncaughtExceptionHandler(this.f1050g);
            this.j--;
        }
    }

    public void b(java.lang.Thread thread, java.lang.Throwable th, boolean z, java.lang.String str, byte[] bArr, boolean z2) {
        if (z) {
            com.tencent.bugly.proguard.aa.b("Java Crash Happen cause by %s(%d)", thread.getName(), java.lang.Long.valueOf(thread.getId()));
            if (a(thread)) {
                com.tencent.bugly.proguard.aa.c("this class has handled this exception", new java.lang.Object[0]);
                if (this.h != null) {
                    com.tencent.bugly.proguard.aa.c("call system handler", new java.lang.Object[0]);
                    this.h.uncaughtException(thread, th);
                } else {
                    a(thread, th);
                }
            }
        } else {
            com.tencent.bugly.proguard.aa.b("Java Catch Happen", new java.lang.Object[0]);
        }
        try {
            if (!this.i) {
                com.tencent.bugly.proguard.aa.a("Java crash handler is disable. Just return.", new java.lang.Object[0]);
                if (z) {
                    java.lang.Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f1050g;
                    if (uncaughtExceptionHandler != null && a(uncaughtExceptionHandler)) {
                        com.tencent.bugly.proguard.aa.b("sys default last handle start!", new java.lang.Object[0]);
                        this.f1050g.uncaughtException(thread, th);
                        com.tencent.bugly.proguard.aa.b("sys default last handle end!", new java.lang.Object[0]);
                        return;
                    } else if (this.h != null) {
                        com.tencent.bugly.proguard.aa.b("system handle start!", new java.lang.Object[0]);
                        this.h.uncaughtException(thread, th);
                        com.tencent.bugly.proguard.aa.b("system handle end!", new java.lang.Object[0]);
                        return;
                    } else {
                        com.tencent.bugly.proguard.aa.b("crashreport last handle start!", new java.lang.Object[0]);
                        a(thread, th);
                        com.tencent.bugly.proguard.aa.b("crashreport last handle end!", new java.lang.Object[0]);
                        return;
                    }
                }
                return;
            }
            if (!this.f1048e.d()) {
                com.tencent.bugly.proguard.aa.e("no remote but still store!", new java.lang.Object[0]);
            }
            if (!this.f1048e.c().f972f && this.f1048e.d()) {
                com.tencent.bugly.proguard.aa.b("crash report was closed by remote , will not upload to Bugly , print local for helpful!", new java.lang.Object[0]);
                com.tencent.bugly.crashreport.crash.j.a(z ? "JAVA_CRASH" : "JAVA_CATCH", com.tencent.bugly.proguard.ha.a(), this.f1049f.h, thread.getName(), com.tencent.bugly.proguard.ha.b(th), (com.tencent.bugly.crashreport.crash.CrashDetailBean) null);
                if (z) {
                    java.lang.Thread.UncaughtExceptionHandler uncaughtExceptionHandler2 = this.f1050g;
                    if (uncaughtExceptionHandler2 != null && a(uncaughtExceptionHandler2)) {
                        com.tencent.bugly.proguard.aa.b("sys default last handle start!", new java.lang.Object[0]);
                        this.f1050g.uncaughtException(thread, th);
                        com.tencent.bugly.proguard.aa.b("sys default last handle end!", new java.lang.Object[0]);
                        return;
                    } else if (this.h != null) {
                        com.tencent.bugly.proguard.aa.b("system handle start!", new java.lang.Object[0]);
                        this.h.uncaughtException(thread, th);
                        com.tencent.bugly.proguard.aa.b("system handle end!", new java.lang.Object[0]);
                        return;
                    } else {
                        com.tencent.bugly.proguard.aa.b("crashreport last handle start!", new java.lang.Object[0]);
                        a(thread, th);
                        com.tencent.bugly.proguard.aa.b("crashreport last handle end!", new java.lang.Object[0]);
                        return;
                    }
                }
                return;
            }
            com.tencent.bugly.crashreport.crash.CrashDetailBean crashDetailBeanA = a(thread, th, z, str, bArr, z2);
            if (crashDetailBeanA == null) {
                com.tencent.bugly.proguard.aa.b("pkg crash datas fail!", new java.lang.Object[0]);
                if (z) {
                    java.lang.Thread.UncaughtExceptionHandler uncaughtExceptionHandler3 = this.f1050g;
                    if (uncaughtExceptionHandler3 != null && a(uncaughtExceptionHandler3)) {
                        com.tencent.bugly.proguard.aa.b("sys default last handle start!", new java.lang.Object[0]);
                        this.f1050g.uncaughtException(thread, th);
                        com.tencent.bugly.proguard.aa.b("sys default last handle end!", new java.lang.Object[0]);
                        return;
                    } else if (this.h != null) {
                        com.tencent.bugly.proguard.aa.b("system handle start!", new java.lang.Object[0]);
                        this.h.uncaughtException(thread, th);
                        com.tencent.bugly.proguard.aa.b("system handle end!", new java.lang.Object[0]);
                        return;
                    } else {
                        com.tencent.bugly.proguard.aa.b("crashreport last handle start!", new java.lang.Object[0]);
                        a(thread, th);
                        com.tencent.bugly.proguard.aa.b("crashreport last handle end!", new java.lang.Object[0]);
                        return;
                    }
                }
                return;
            }
            com.tencent.bugly.crashreport.crash.j.a(z ? "JAVA_CRASH" : "JAVA_CATCH", com.tencent.bugly.proguard.ha.a(), this.f1049f.h, thread.getName(), com.tencent.bugly.proguard.ha.b(th), crashDetailBeanA);
            if (!this.f1047d.c(crashDetailBeanA)) {
                this.f1047d.a(crashDetailBeanA, com.google.android.exoplayer2.C.DEFAULT_MAX_SEEK_TO_PREVIOUS_POSITION_MS, z);
            }
            if (z) {
                this.f1047d.e(crashDetailBeanA);
            }
            if (z) {
                java.lang.Thread.UncaughtExceptionHandler uncaughtExceptionHandler4 = this.f1050g;
                if (uncaughtExceptionHandler4 != null && a(uncaughtExceptionHandler4)) {
                    com.tencent.bugly.proguard.aa.b("sys default last handle start!", new java.lang.Object[0]);
                    this.f1050g.uncaughtException(thread, th);
                    com.tencent.bugly.proguard.aa.b("sys default last handle end!", new java.lang.Object[0]);
                } else if (this.h != null) {
                    com.tencent.bugly.proguard.aa.b("system handle start!", new java.lang.Object[0]);
                    this.h.uncaughtException(thread, th);
                    com.tencent.bugly.proguard.aa.b("system handle end!", new java.lang.Object[0]);
                } else {
                    com.tencent.bugly.proguard.aa.b("crashreport last handle start!", new java.lang.Object[0]);
                    a(thread, th);
                    com.tencent.bugly.proguard.aa.b("crashreport last handle end!", new java.lang.Object[0]);
                }
            }
        } catch (java.lang.Throwable th2) {
            try {
                if (!com.tencent.bugly.proguard.aa.b(th2)) {
                    th2.printStackTrace();
                }
                if (z) {
                    java.lang.Thread.UncaughtExceptionHandler uncaughtExceptionHandler5 = this.f1050g;
                    if (uncaughtExceptionHandler5 != null && a(uncaughtExceptionHandler5)) {
                        com.tencent.bugly.proguard.aa.b("sys default last handle start!", new java.lang.Object[0]);
                        this.f1050g.uncaughtException(thread, th);
                        com.tencent.bugly.proguard.aa.b("sys default last handle end!", new java.lang.Object[0]);
                    } else if (this.h != null) {
                        com.tencent.bugly.proguard.aa.b("system handle start!", new java.lang.Object[0]);
                        this.h.uncaughtException(thread, th);
                        com.tencent.bugly.proguard.aa.b("system handle end!", new java.lang.Object[0]);
                    } else {
                        com.tencent.bugly.proguard.aa.b("crashreport last handle start!", new java.lang.Object[0]);
                        a(thread, th);
                        com.tencent.bugly.proguard.aa.b("crashreport last handle end!", new java.lang.Object[0]);
                    }
                }
            } catch (java.lang.Throwable th3) {
                if (z) {
                    java.lang.Thread.UncaughtExceptionHandler uncaughtExceptionHandler6 = this.f1050g;
                    if (uncaughtExceptionHandler6 != null && a(uncaughtExceptionHandler6)) {
                        com.tencent.bugly.proguard.aa.b("sys default last handle start!", new java.lang.Object[0]);
                        this.f1050g.uncaughtException(thread, th);
                        com.tencent.bugly.proguard.aa.b("sys default last handle end!", new java.lang.Object[0]);
                    } else if (this.h != null) {
                        com.tencent.bugly.proguard.aa.b("system handle start!", new java.lang.Object[0]);
                        this.h.uncaughtException(thread, th);
                        com.tencent.bugly.proguard.aa.b("system handle end!", new java.lang.Object[0]);
                    } else {
                        com.tencent.bugly.proguard.aa.b("crashreport last handle start!", new java.lang.Object[0]);
                        a(thread, th);
                        com.tencent.bugly.proguard.aa.b("crashreport last handle end!", new java.lang.Object[0]);
                    }
                }
                throw th3;
            }
        }
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public void uncaughtException(java.lang.Thread thread, java.lang.Throwable th) {
        synchronized (b) {
            b(thread, th, true, null, null, this.f1049f.G());
        }
    }
}
