package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0160j {

    /* renamed from: e, reason: collision with root package name */
    public java.util.concurrent.ThreadPoolExecutor f734e = new java.util.concurrent.ThreadPoolExecutor(0, 1, 60000, java.util.concurrent.TimeUnit.MILLISECONDS, new java.util.concurrent.LinkedBlockingQueue(5000));

    /* renamed from: d, reason: collision with root package name */
    public static com.huawei.hms.scankit.p.C0160j f733d = new com.huawei.hms.scankit.p.C0160j();

    /* renamed from: c, reason: collision with root package name */
    public static com.huawei.hms.scankit.p.C0160j f732c = new com.huawei.hms.scankit.p.C0160j();
    public static com.huawei.hms.scankit.p.C0160j a = new com.huawei.hms.scankit.p.C0160j();
    public static com.huawei.hms.scankit.p.C0160j b = new com.huawei.hms.scankit.p.C0160j();

    /* renamed from: com.huawei.hms.scankit.p.j$a */
    public static class a implements java.lang.Runnable {
        public java.lang.Runnable a;

        public a(java.lang.Runnable runnable) {
            this.a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            java.lang.Runnable runnable = this.a;
            if (runnable != null) {
                try {
                    runnable.run();
                } catch (java.lang.Exception unused) {
                    com.huawei.hms.scankit.p.T.c("TaskThread", "InnerTask : Exception has happened,From internal operations!");
                }
            }
        }
    }

    public void a(com.huawei.hms.scankit.p.InterfaceRunnableC0155i interfaceRunnableC0155i) {
        try {
            this.f734e.execute(new com.huawei.hms.scankit.p.C0160j.a(interfaceRunnableC0155i));
        } catch (java.util.concurrent.RejectedExecutionException unused) {
            com.huawei.hms.scankit.p.T.c("TaskThread", "addToQueue() Exception has happened!Form rejected execution");
        }
    }
}
