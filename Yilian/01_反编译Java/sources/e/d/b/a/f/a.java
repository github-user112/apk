package e.d.b.a.f;

/* loaded from: classes.dex */
public final class a {
    public static final e.d.b.a.f.a b = new e.d.b.a.f.a();

    /* renamed from: c, reason: collision with root package name */
    public static final int f2812c;

    /* renamed from: d, reason: collision with root package name */
    public static final int f2813d;

    /* renamed from: e, reason: collision with root package name */
    public static final int f2814e;
    public final java.util.concurrent.Executor a = new e.d.b.a.f.a.ExecutorC0076a((byte) 0);

    /* renamed from: e.d.b.a.f.a$a, reason: collision with other inner class name */
    public static class ExecutorC0076a implements java.util.concurrent.Executor {
        public ExecutorC0076a(byte b) {
        }

        @Override // java.util.concurrent.Executor
        public final void execute(java.lang.Runnable runnable) {
            new android.os.Handler(android.os.Looper.getMainLooper()).post(runnable);
        }
    }

    static {
        int iAvailableProcessors = java.lang.Runtime.getRuntime().availableProcessors();
        f2812c = iAvailableProcessors;
        f2813d = iAvailableProcessors + 1;
        f2814e = (iAvailableProcessors * 2) + 1;
    }

    public static java.util.concurrent.ExecutorService a() {
        java.util.concurrent.ThreadPoolExecutor threadPoolExecutor = new java.util.concurrent.ThreadPoolExecutor(f2813d, f2814e, 1L, java.util.concurrent.TimeUnit.SECONDS, new java.util.concurrent.LinkedBlockingQueue());
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }
}
