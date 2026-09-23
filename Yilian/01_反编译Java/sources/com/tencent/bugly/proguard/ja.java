package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class ja extends java.lang.Thread {

    /* renamed from: e, reason: collision with root package name */
    public com.tencent.bugly.proguard.ia f1130e;

    /* renamed from: f, reason: collision with root package name */
    public com.tencent.bugly.proguard.ja.a f1131f;
    public boolean a = false;
    public boolean b = true;

    /* renamed from: c, reason: collision with root package name */
    public boolean f1128c = false;

    /* renamed from: d, reason: collision with root package name */
    public int f1129d = 1;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1132g = true;

    public interface a {
        void a(boolean z, long j);
    }

    private boolean a(com.tencent.bugly.proguard.ia iaVar) {
        if (this.f1132g && this.b) {
            long jB = iaVar.b();
            if (jB > 1510 && jB < 199990) {
                if (jB <= 5010) {
                    this.f1129d = 1;
                    com.tencent.bugly.proguard.aa.a("timeSinceMsgSent in [2s, 5s], record stack", new java.lang.Object[0]);
                    return true;
                }
                int i = this.f1129d + 1;
                this.f1129d = i;
                boolean z = (i & (i + (-1))) == 0;
                if (z) {
                    com.tencent.bugly.proguard.aa.a("timeSinceMsgSent in (5s, 200s), should record stack:true", new java.lang.Object[0]);
                }
                return z;
            }
        }
        return false;
    }

    private synchronized void b(com.tencent.bugly.proguard.ia iaVar) {
        if (this.b) {
            return;
        }
        if (this.f1128c && !iaVar.c()) {
            com.tencent.bugly.proguard.aa.a("Restart getting main stack trace.", new java.lang.Object[0]);
            this.b = true;
            this.f1128c = false;
        }
    }

    private void e() {
        com.tencent.bugly.proguard.aa.e("MainHandlerChecker is reset to null.", new java.lang.Object[0]);
        this.f1130e = null;
    }

    private void f() {
        android.os.Handler handler = new android.os.Handler(android.os.Looper.getMainLooper());
        com.tencent.bugly.proguard.ia iaVar = this.f1130e;
        if (iaVar != null) {
            iaVar.b(5000L);
        } else {
            this.f1130e = new com.tencent.bugly.proguard.ia(handler, handler.getLooper().getThread().getName(), 5000L);
        }
    }

    public synchronized void a() {
        this.b = false;
        com.tencent.bugly.proguard.aa.a("Record stack trace is disabled.", new java.lang.Object[0]);
    }

    public void a(boolean z) {
        this.f1132g = z;
        com.tencent.bugly.proguard.aa.a("set record stack trace enable:" + z, new java.lang.Object[0]);
    }

    public java.util.List<com.tencent.bugly.crashreport.crash.anr.i> b() {
        return this.f1130e.a(200000L);
    }

    public synchronized void b(boolean z) {
        this.f1128c = z;
    }

    public boolean c() {
        f();
        if (isAlive()) {
            return false;
        }
        try {
            start();
            return true;
        } catch (java.lang.Exception e2) {
            com.tencent.bugly.proguard.aa.a(e2);
            return false;
        }
    }

    public boolean d() {
        this.a = true;
        if (!isAlive()) {
            return false;
        }
        try {
            interrupt();
        } catch (java.lang.Exception e2) {
            com.tencent.bugly.proguard.aa.a(e2);
        }
        e();
        return true;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        while (!this.a) {
            try {
            } catch (java.lang.Exception | java.lang.OutOfMemoryError e2) {
                com.tencent.bugly.proguard.aa.a(e2);
            }
            if (this.f1130e == null) {
                com.tencent.bugly.proguard.aa.a("Main handler checker is null. Stop thread monitor.", new java.lang.Object[0]);
                return;
            }
            com.tencent.bugly.proguard.ia iaVar = this.f1130e;
            iaVar.f();
            b(iaVar);
            if (a(iaVar)) {
                iaVar.d();
            }
            if (this.f1131f != null && this.b) {
                this.f1131f.a(iaVar.c(), iaVar.b());
            }
            com.tencent.bugly.proguard.ha.c(500 - ((java.lang.System.currentTimeMillis() - jCurrentTimeMillis) % 500));
        }
    }
}
