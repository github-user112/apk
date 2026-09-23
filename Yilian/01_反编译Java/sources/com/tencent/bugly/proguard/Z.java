package com.tencent.bugly.proguard;

/* loaded from: classes.dex */
public class Z {
    public static final java.util.concurrent.atomic.AtomicInteger a = new java.util.concurrent.atomic.AtomicInteger(1);
    public static com.tencent.bugly.proguard.Z b;

    /* renamed from: c, reason: collision with root package name */
    public java.util.concurrent.ScheduledExecutorService f1104c;

    public class a implements java.util.concurrent.ThreadFactory {
        public a(com.tencent.bugly.proguard.Z z) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public java.lang.Thread newThread(java.lang.Runnable runnable) {
            java.lang.Thread thread = new java.lang.Thread(runnable);
            java.lang.StringBuilder sbO = e.a.c.a.a.o("BuglyThread-");
            sbO.append(com.tencent.bugly.proguard.Z.a.getAndIncrement());
            thread.setName(sbO.toString());
            return thread;
        }
    }

    public Z() {
        this.f1104c = null;
        java.util.concurrent.ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = java.util.concurrent.Executors.newScheduledThreadPool(3, new com.tencent.bugly.proguard.Z.a(this));
        this.f1104c = scheduledExecutorServiceNewScheduledThreadPool;
        if (scheduledExecutorServiceNewScheduledThreadPool == null || scheduledExecutorServiceNewScheduledThreadPool.isShutdown()) {
            com.tencent.bugly.proguard.aa.e("[AsyncTaskHandler] ScheduledExecutorService is not valiable!", new java.lang.Object[0]);
        }
    }

    public static synchronized com.tencent.bugly.proguard.Z c() {
        if (b == null) {
            b = new com.tencent.bugly.proguard.Z();
        }
        return b;
    }

    public synchronized boolean a(java.lang.Runnable runnable) {
        if (!d()) {
            com.tencent.bugly.proguard.aa.e("[AsyncTaskHandler] Async handler was closed, should not post task.", new java.lang.Object[0]);
            return false;
        }
        if (runnable == null) {
            com.tencent.bugly.proguard.aa.e("[AsyncTaskHandler] Task input is null.", new java.lang.Object[0]);
            return false;
        }
        com.tencent.bugly.proguard.aa.a("[AsyncTaskHandler] Post a normal task: %s", runnable.getClass().getName());
        try {
            this.f1104c.execute(runnable);
            return true;
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.b.f893c) {
                th.printStackTrace();
            }
            return false;
        }
    }

    public synchronized boolean a(java.lang.Runnable runnable, long j) {
        if (!d()) {
            com.tencent.bugly.proguard.aa.e("[AsyncTaskHandler] Async handler was closed, should not post task.", new java.lang.Object[0]);
            return false;
        }
        if (runnable == null) {
            com.tencent.bugly.proguard.aa.e("[AsyncTaskHandler] Task input is null.", new java.lang.Object[0]);
            return false;
        }
        if (j <= 0) {
            j = 0;
        }
        com.tencent.bugly.proguard.aa.a("[AsyncTaskHandler] Post a delay(time: %dms) task: %s", java.lang.Long.valueOf(j), runnable.getClass().getName());
        try {
            this.f1104c.schedule(runnable, j, java.util.concurrent.TimeUnit.MILLISECONDS);
            return true;
        } catch (java.lang.Throwable th) {
            if (com.tencent.bugly.b.f893c) {
                th.printStackTrace();
            }
            return false;
        }
    }

    public synchronized void b() {
        java.util.concurrent.ScheduledExecutorService scheduledExecutorService = this.f1104c;
        if (scheduledExecutorService != null && !scheduledExecutorService.isShutdown()) {
            com.tencent.bugly.proguard.aa.a("[AsyncTaskHandler] Close async handler.", new java.lang.Object[0]);
            this.f1104c.shutdownNow();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized boolean d() {
        /*
            r1 = this;
            monitor-enter(r1)
            java.util.concurrent.ScheduledExecutorService r0 = r1.f1104c     // Catch: java.lang.Throwable -> L10
            if (r0 == 0) goto Ld
            boolean r0 = r0.isShutdown()     // Catch: java.lang.Throwable -> L10
            if (r0 != 0) goto Ld
            r0 = 1
            goto Le
        Ld:
            r0 = 0
        Le:
            monitor-exit(r1)
            return r0
        L10:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.tencent.bugly.proguard.Z.d():boolean");
    }
}
