package d.c.a.a;

/* loaded from: classes.dex */
public class b extends d.c.a.a.c {
    public final java.lang.Object a = new java.lang.Object();
    public final java.util.concurrent.ExecutorService b = java.util.concurrent.Executors.newFixedThreadPool(4, new d.c.a.a.b.a(this));

    public class a implements java.util.concurrent.ThreadFactory {
        public final java.util.concurrent.atomic.AtomicInteger a = new java.util.concurrent.atomic.AtomicInteger(0);

        public a(d.c.a.a.b bVar) {
        }

        @Override // java.util.concurrent.ThreadFactory
        public java.lang.Thread newThread(java.lang.Runnable runnable) {
            java.lang.Thread thread = new java.lang.Thread(runnable);
            thread.setName(java.lang.String.format("arch_disk_io_%d", java.lang.Integer.valueOf(this.a.getAndIncrement())));
            return thread;
        }
    }

    @Override // d.c.a.a.c
    public boolean a() {
        return android.os.Looper.getMainLooper().getThread() == java.lang.Thread.currentThread();
    }
}
