package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class ia implements java.lang.Runnable {
    public final android.os.Handler a;
    public final java.lang.String b;

    /* renamed from: d, reason: collision with root package name */
    public long f1124d;

    /* renamed from: e, reason: collision with root package name */
    public final long f1125e;

    /* renamed from: g, reason: collision with root package name */
    public long f1127g;

    /* renamed from: c, reason: collision with root package name */
    public final java.util.List<com.tencent.bugly.crashreport.crash.anr.i> f1123c = new java.util.LinkedList();

    /* renamed from: f, reason: collision with root package name */
    public boolean f1126f = true;

    public ia(android.os.Handler handler, java.lang.String str, long j) {
        this.a = handler;
        this.b = str;
        this.f1124d = j;
        this.f1125e = j;
    }

    public java.lang.Thread a() {
        return this.a.getLooper().getThread();
    }

    public java.util.List<com.tencent.bugly.crashreport.crash.anr.i> a(long j) {
        java.util.ArrayList arrayList;
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        synchronized (this.f1123c) {
            arrayList = new java.util.ArrayList(this.f1123c.size());
            for (int i = 0; i < this.f1123c.size(); i++) {
                com.tencent.bugly.crashreport.crash.anr.i iVar = this.f1123c.get(i);
                if (!iVar.d() && jCurrentTimeMillis - iVar.a() < j) {
                    arrayList.add(iVar);
                    iVar.a(true);
                }
            }
        }
        return arrayList;
    }

    public long b() {
        return android.os.SystemClock.uptimeMillis() - this.f1127g;
    }

    public void b(long j) {
        this.f1124d = j;
    }

    public boolean c() {
        return !this.f1126f && android.os.SystemClock.uptimeMillis() >= this.f1127g + this.f1124d;
    }

    public void d() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(1024);
        long jNanoTime = java.lang.System.nanoTime();
        try {
            java.lang.StackTraceElement[] stackTrace = a().getStackTrace();
            if (stackTrace.length == 0) {
                sb.append("Thread does not have stack trace.\n");
            } else {
                for (java.lang.StackTraceElement stackTraceElement : stackTrace) {
                    sb.append(stackTraceElement);
                    sb.append("\n");
                }
            }
        } catch (java.lang.SecurityException e2) {
            sb.append("getStackTrace() encountered:\n");
            sb.append(e2.getMessage());
            sb.append("\n");
            com.tencent.bugly.proguard.aa.b(e2);
        }
        long jNanoTime2 = java.lang.System.nanoTime();
        com.tencent.bugly.crashreport.crash.anr.i iVar = new com.tencent.bugly.crashreport.crash.anr.i(sb.toString(), java.lang.System.currentTimeMillis());
        iVar.a(jNanoTime2 - jNanoTime);
        iVar.b(a().getName());
        synchronized (this.f1123c) {
            while (this.f1123c.size() >= 32) {
                this.f1123c.remove(0);
            }
            this.f1123c.add(iVar);
        }
    }

    public void e() {
        this.f1124d = this.f1125e;
    }

    public void f() {
        if (this.f1126f) {
            this.f1126f = false;
            this.f1127g = android.os.SystemClock.uptimeMillis();
            this.a.post(this);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f1126f = true;
        e();
    }
}
