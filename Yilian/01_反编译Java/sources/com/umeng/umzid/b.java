package com.umeng.umzid;

/* loaded from: classes.dex */
public class b {
    public static volatile java.util.concurrent.ScheduledThreadPoolExecutor a;
    public static java.util.concurrent.ThreadFactory b = new com.umeng.umzid.b.a();

    public static class a implements java.util.concurrent.ThreadFactory {
        public java.util.concurrent.atomic.AtomicInteger a = new java.util.concurrent.atomic.AtomicInteger(0);

        @Override // java.util.concurrent.ThreadFactory
        public java.lang.Thread newThread(java.lang.Runnable runnable) {
            java.lang.Thread thread = new java.lang.Thread(runnable);
            java.lang.StringBuilder sbO = e.a.c.a.a.o("ZIDThreadPoolExecutor");
            sbO.append(this.a.addAndGet(1));
            thread.setName(sbO.toString());
            return thread;
        }
    }

    public static java.util.concurrent.ScheduledThreadPoolExecutor a() {
        if (a == null) {
            synchronized (com.umeng.umzid.b.class) {
                if (a == null) {
                    a = new java.util.concurrent.ScheduledThreadPoolExecutor(java.lang.Runtime.getRuntime().availableProcessors() * 4, b);
                }
            }
        }
        return a;
    }

    public static void a(java.lang.Runnable runnable) {
        try {
            a().execute(runnable);
        } catch (java.lang.Throwable unused) {
            android.util.Log.e("com.umeng.umzid.b", "UmengThreadPoolExecutorFactory execute exception");
        }
    }
}
