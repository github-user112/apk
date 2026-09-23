package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class ExecutorsEnhance {

    public static class DelegatedExecutorService extends java.util.concurrent.AbstractExecutorService {

        /* renamed from: e, reason: collision with root package name */
        public final java.util.concurrent.ExecutorService f280e;

        public DelegatedExecutorService(java.util.concurrent.ExecutorService executorService) {
            this.f280e = executorService;
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean awaitTermination(long j, java.util.concurrent.TimeUnit timeUnit) {
            return this.f280e.awaitTermination(j, timeUnit);
        }

        @Override // java.util.concurrent.Executor
        public void execute(java.lang.Runnable runnable) {
            this.f280e.execute(runnable);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> java.util.List<java.util.concurrent.Future<T>> invokeAll(java.util.Collection<? extends java.util.concurrent.Callable<T>> collection) {
            return this.f280e.invokeAll(collection);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> java.util.List<java.util.concurrent.Future<T>> invokeAll(java.util.Collection<? extends java.util.concurrent.Callable<T>> collection, long j, java.util.concurrent.TimeUnit timeUnit) {
            return this.f280e.invokeAll(collection, j, timeUnit);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> T invokeAny(java.util.Collection<? extends java.util.concurrent.Callable<T>> collection) {
            return (T) this.f280e.invokeAny(collection);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> T invokeAny(java.util.Collection<? extends java.util.concurrent.Callable<T>> collection, long j, java.util.concurrent.TimeUnit timeUnit) {
            return (T) this.f280e.invokeAny(collection, j, timeUnit);
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isShutdown() {
            return this.f280e.isShutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public boolean isTerminated() {
            return this.f280e.isTerminated();
        }

        @Override // java.util.concurrent.ExecutorService
        public void shutdown() {
            this.f280e.shutdown();
        }

        @Override // java.util.concurrent.ExecutorService
        public java.util.List<java.lang.Runnable> shutdownNow() {
            return this.f280e.shutdownNow();
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public java.util.concurrent.Future<?> submit(java.lang.Runnable runnable) {
            return this.f280e.submit(runnable);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> java.util.concurrent.Future<T> submit(java.lang.Runnable runnable, T t) {
            return this.f280e.submit(runnable, t);
        }

        @Override // java.util.concurrent.AbstractExecutorService, java.util.concurrent.ExecutorService
        public <T> java.util.concurrent.Future<T> submit(java.util.concurrent.Callable<T> callable) {
            return this.f280e.submit(callable);
        }
    }

    public static class FinalizableDelegatedExecutorService extends com.huawei.hms.framework.common.ExecutorsEnhance.DelegatedExecutorService {
        public FinalizableDelegatedExecutorService(java.util.concurrent.ExecutorService executorService) {
            super(executorService);
        }

        public void finalize() {
            super.shutdown();
        }
    }

    public static java.util.concurrent.ExecutorService newSingleThreadExecutor(java.util.concurrent.ThreadFactory threadFactory) {
        return new com.huawei.hms.framework.common.ExecutorsEnhance.FinalizableDelegatedExecutorService(new com.huawei.hms.framework.common.ThreadPoolExcutorEnhance(1, 1, 0L, java.util.concurrent.TimeUnit.MILLISECONDS, new java.util.concurrent.LinkedBlockingQueue(), threadFactory));
    }
}
