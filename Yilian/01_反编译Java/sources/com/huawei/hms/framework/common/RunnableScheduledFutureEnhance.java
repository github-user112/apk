package com.huawei.hms.framework.common;

/* loaded from: classes.dex */
public class RunnableScheduledFutureEnhance<T> implements java.util.concurrent.RunnableScheduledFuture<T> {
    public java.lang.String parentName = java.lang.Thread.currentThread().getName();
    public java.util.concurrent.RunnableScheduledFuture<T> proxy;

    public RunnableScheduledFutureEnhance(java.util.concurrent.RunnableScheduledFuture<T> runnableScheduledFuture) {
        this.proxy = runnableScheduledFuture;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.proxy.cancel(z);
    }

    @Override // java.lang.Comparable
    public int compareTo(java.util.concurrent.Delayed delayed) {
        return this.proxy.compareTo(delayed);
    }

    public boolean equals(java.lang.Object obj) {
        return this.proxy.equals(obj);
    }

    @Override // java.util.concurrent.Future
    public T get() {
        return (T) this.proxy.get();
    }

    @Override // java.util.concurrent.Future
    public T get(long j, java.util.concurrent.TimeUnit timeUnit) {
        return (T) this.proxy.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Delayed
    public long getDelay(java.util.concurrent.TimeUnit timeUnit) {
        return this.proxy.getDelay(timeUnit);
    }

    public java.lang.String getParentName() {
        return this.parentName;
    }

    public int hashCode() {
        return this.proxy.hashCode();
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.proxy.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.proxy.isDone();
    }

    @Override // java.util.concurrent.RunnableScheduledFuture
    public boolean isPeriodic() {
        return this.proxy.isPeriodic();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public void run() {
        this.proxy.run();
    }
}
