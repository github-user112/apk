package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public abstract class RunnableFutureTask<R, E extends java.lang.Exception> implements java.util.concurrent.RunnableFuture<R> {
    public boolean canceled;
    public java.lang.Exception exception;
    public R result;
    public java.lang.Thread workThread;
    public final com.google.android.exoplayer2.util.ConditionVariable started = new com.google.android.exoplayer2.util.ConditionVariable();
    public final com.google.android.exoplayer2.util.ConditionVariable finished = new com.google.android.exoplayer2.util.ConditionVariable();
    public final java.lang.Object cancelLock = new java.lang.Object();

    @com.google.android.exoplayer2.util.UnknownNull
    private R getResult() throws java.util.concurrent.ExecutionException {
        if (this.canceled) {
            throw new java.util.concurrent.CancellationException();
        }
        if (this.exception == null) {
            return this.result;
        }
        throw new java.util.concurrent.ExecutionException(this.exception);
    }

    public final void blockUntilFinished() {
        this.finished.blockUninterruptible();
    }

    public final void blockUntilStarted() {
        this.started.blockUninterruptible();
    }

    @Override // java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        synchronized (this.cancelLock) {
            if (!this.canceled && !this.finished.isOpen()) {
                this.canceled = true;
                cancelWork();
                java.lang.Thread thread = this.workThread;
                if (thread == null) {
                    this.started.open();
                    this.finished.open();
                } else if (z) {
                    thread.interrupt();
                }
                return true;
            }
            return false;
        }
    }

    public void cancelWork() {
    }

    @com.google.android.exoplayer2.util.UnknownNull
    public abstract R doWork();

    @Override // java.util.concurrent.Future
    @com.google.android.exoplayer2.util.UnknownNull
    public final R get() {
        this.finished.block();
        return getResult();
    }

    @Override // java.util.concurrent.Future
    @com.google.android.exoplayer2.util.UnknownNull
    public final R get(long j, java.util.concurrent.TimeUnit timeUnit) throws java.util.concurrent.TimeoutException {
        if (this.finished.block(java.util.concurrent.TimeUnit.MILLISECONDS.convert(j, timeUnit))) {
            return getResult();
        }
        throw new java.util.concurrent.TimeoutException();
    }

    @Override // java.util.concurrent.Future
    public final boolean isCancelled() {
        return this.canceled;
    }

    @Override // java.util.concurrent.Future
    public final boolean isDone() {
        return this.finished.isOpen();
    }

    @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
    public final void run() {
        synchronized (this.cancelLock) {
            if (this.canceled) {
                return;
            }
            this.workThread = java.lang.Thread.currentThread();
            this.started.open();
            try {
                try {
                    this.result = doWork();
                    synchronized (this.cancelLock) {
                        this.finished.open();
                        this.workThread = null;
                        java.lang.Thread.interrupted();
                    }
                } catch (java.lang.Exception e2) {
                    this.exception = e2;
                    synchronized (this.cancelLock) {
                        this.finished.open();
                        this.workThread = null;
                        java.lang.Thread.interrupted();
                    }
                }
            } catch (java.lang.Throwable th) {
                synchronized (this.cancelLock) {
                    this.finished.open();
                    this.workThread = null;
                    java.lang.Thread.interrupted();
                    throw th;
                }
            }
        }
    }
}
