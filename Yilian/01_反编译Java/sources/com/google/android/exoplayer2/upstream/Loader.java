package com.google.android.exoplayer2.upstream;

/* loaded from: classes.dex */
public final class Loader implements com.google.android.exoplayer2.upstream.LoaderErrorThrower {
    public static final int ACTION_TYPE_DONT_RETRY = 2;
    public static final int ACTION_TYPE_DONT_RETRY_FATAL = 3;
    public static final int ACTION_TYPE_RETRY = 0;
    public static final int ACTION_TYPE_RETRY_AND_RESET_ERROR_COUNT = 1;
    public static final com.google.android.exoplayer2.upstream.Loader.LoadErrorAction DONT_RETRY;
    public static final com.google.android.exoplayer2.upstream.Loader.LoadErrorAction DONT_RETRY_FATAL;
    public static final com.google.android.exoplayer2.upstream.Loader.LoadErrorAction RETRY;
    public static final com.google.android.exoplayer2.upstream.Loader.LoadErrorAction RETRY_RESET_ERROR_COUNT;
    public static final java.lang.String THREAD_NAME_PREFIX = "ExoPlayer:Loader:";
    public com.google.android.exoplayer2.upstream.Loader.LoadTask<? extends com.google.android.exoplayer2.upstream.Loader.Loadable> currentTask;
    public final java.util.concurrent.ExecutorService downloadExecutorService;
    public java.io.IOException fatalError;

    public interface Callback<T extends com.google.android.exoplayer2.upstream.Loader.Loadable> {
        void onLoadCanceled(T t, long j, long j2, boolean z);

        void onLoadCompleted(T t, long j, long j2);

        com.google.android.exoplayer2.upstream.Loader.LoadErrorAction onLoadError(T t, long j, long j2, java.io.IOException iOException, int i);
    }

    public static final class LoadErrorAction {
        public final long retryDelayMillis;
        public final int type;

        public LoadErrorAction(int i, long j) {
            this.type = i;
            this.retryDelayMillis = j;
        }

        public boolean isRetry() {
            int i = this.type;
            return i == 0 || i == 1;
        }
    }

    @android.annotation.SuppressLint({"HandlerLeak"})
    public final class LoadTask<T extends com.google.android.exoplayer2.upstream.Loader.Loadable> extends android.os.Handler implements java.lang.Runnable {
        public static final int MSG_FATAL_ERROR = 3;
        public static final int MSG_FINISH = 1;
        public static final int MSG_IO_EXCEPTION = 2;
        public static final int MSG_START = 0;
        public static final java.lang.String TAG = "LoadTask";
        public com.google.android.exoplayer2.upstream.Loader.Callback<T> callback;
        public boolean canceled;
        public java.io.IOException currentError;
        public final int defaultMinRetryCount;
        public int errorCount;
        public java.lang.Thread executorThread;
        public final T loadable;
        public volatile boolean released;
        public final long startTimeMs;

        public LoadTask(android.os.Looper looper, T t, com.google.android.exoplayer2.upstream.Loader.Callback<T> callback, int i, long j) {
            super(looper);
            this.loadable = t;
            this.callback = callback;
            this.defaultMinRetryCount = i;
            this.startTimeMs = j;
        }

        private void execute() {
            this.currentError = null;
            com.google.android.exoplayer2.upstream.Loader.this.downloadExecutorService.execute((java.lang.Runnable) com.google.android.exoplayer2.util.Assertions.checkNotNull(com.google.android.exoplayer2.upstream.Loader.this.currentTask));
        }

        private void finish() {
            com.google.android.exoplayer2.upstream.Loader.this.currentTask = null;
        }

        private long getRetryDelayMillis() {
            return java.lang.Math.min((this.errorCount - 1) * 1000, 5000);
        }

        public void cancel(boolean z) {
            this.released = z;
            this.currentError = null;
            if (hasMessages(0)) {
                this.canceled = true;
                removeMessages(0);
                if (!z) {
                    sendEmptyMessage(1);
                }
            } else {
                synchronized (this) {
                    this.canceled = true;
                    this.loadable.cancelLoad();
                    java.lang.Thread thread = this.executorThread;
                    if (thread != null) {
                        thread.interrupt();
                    }
                }
            }
            if (z) {
                finish();
                long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
                ((com.google.android.exoplayer2.upstream.Loader.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callback)).onLoadCanceled(this.loadable, jElapsedRealtime, jElapsedRealtime - this.startTimeMs, true);
                this.callback = null;
            }
        }

        @Override // android.os.Handler
        public void handleMessage(android.os.Message message) {
            if (this.released) {
                return;
            }
            int i = message.what;
            if (i == 0) {
                execute();
                return;
            }
            if (i == 3) {
                throw ((java.lang.Error) message.obj);
            }
            finish();
            long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
            long j = jElapsedRealtime - this.startTimeMs;
            com.google.android.exoplayer2.upstream.Loader.Callback callback = (com.google.android.exoplayer2.upstream.Loader.Callback) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.callback);
            if (this.canceled) {
                callback.onLoadCanceled(this.loadable, jElapsedRealtime, j, false);
                return;
            }
            int i2 = message.what;
            if (i2 == 1) {
                try {
                    callback.onLoadCompleted(this.loadable, jElapsedRealtime, j);
                    return;
                } catch (java.lang.RuntimeException e2) {
                    com.google.android.exoplayer2.util.Log.e(TAG, "Unexpected exception handling load completed", e2);
                    com.google.android.exoplayer2.upstream.Loader.this.fatalError = new com.google.android.exoplayer2.upstream.Loader.UnexpectedLoaderException(e2);
                    return;
                }
            }
            if (i2 != 2) {
                return;
            }
            java.io.IOException iOException = (java.io.IOException) message.obj;
            this.currentError = iOException;
            int i3 = this.errorCount + 1;
            this.errorCount = i3;
            com.google.android.exoplayer2.upstream.Loader.LoadErrorAction loadErrorActionOnLoadError = callback.onLoadError(this.loadable, jElapsedRealtime, j, iOException, i3);
            if (loadErrorActionOnLoadError.type == 3) {
                com.google.android.exoplayer2.upstream.Loader.this.fatalError = this.currentError;
            } else if (loadErrorActionOnLoadError.type != 2) {
                if (loadErrorActionOnLoadError.type == 1) {
                    this.errorCount = 1;
                }
                start(loadErrorActionOnLoadError.retryDelayMillis != com.google.android.exoplayer2.C.TIME_UNSET ? loadErrorActionOnLoadError.retryDelayMillis : getRetryDelayMillis());
            }
        }

        public void maybeThrowError(int i) throws java.io.IOException {
            java.io.IOException iOException = this.currentError;
            if (iOException != null && this.errorCount > i) {
                throw iOException;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            com.google.android.exoplayer2.upstream.Loader.UnexpectedLoaderException unexpectedLoaderException;
            android.os.Message messageObtainMessage;
            boolean z;
            try {
                synchronized (this) {
                    z = !this.canceled;
                    this.executorThread = java.lang.Thread.currentThread();
                }
                if (z) {
                    java.lang.String simpleName = this.loadable.getClass().getSimpleName();
                    com.google.android.exoplayer2.util.TraceUtil.beginSection(simpleName.length() != 0 ? "load:".concat(simpleName) : new java.lang.String("load:"));
                    try {
                        this.loadable.load();
                        com.google.android.exoplayer2.util.TraceUtil.endSection();
                    } catch (java.lang.Throwable th) {
                        com.google.android.exoplayer2.util.TraceUtil.endSection();
                        throw th;
                    }
                }
                synchronized (this) {
                    this.executorThread = null;
                    java.lang.Thread.interrupted();
                }
                if (this.released) {
                    return;
                }
                sendEmptyMessage(1);
            } catch (java.io.IOException e2) {
                if (this.released) {
                    return;
                }
                messageObtainMessage = obtainMessage(2, e2);
                messageObtainMessage.sendToTarget();
            } catch (java.lang.Error e3) {
                if (!this.released) {
                    com.google.android.exoplayer2.util.Log.e(TAG, "Unexpected error loading stream", e3);
                    obtainMessage(3, e3).sendToTarget();
                }
                throw e3;
            } catch (java.lang.Exception e4) {
                if (this.released) {
                    return;
                }
                com.google.android.exoplayer2.util.Log.e(TAG, "Unexpected exception loading stream", e4);
                unexpectedLoaderException = new com.google.android.exoplayer2.upstream.Loader.UnexpectedLoaderException(e4);
                messageObtainMessage = obtainMessage(2, unexpectedLoaderException);
                messageObtainMessage.sendToTarget();
            } catch (java.lang.OutOfMemoryError e5) {
                if (this.released) {
                    return;
                }
                com.google.android.exoplayer2.util.Log.e(TAG, "OutOfMemory error loading stream", e5);
                unexpectedLoaderException = new com.google.android.exoplayer2.upstream.Loader.UnexpectedLoaderException(e5);
                messageObtainMessage = obtainMessage(2, unexpectedLoaderException);
                messageObtainMessage.sendToTarget();
            }
        }

        public void start(long j) {
            com.google.android.exoplayer2.util.Assertions.checkState(com.google.android.exoplayer2.upstream.Loader.this.currentTask == null);
            com.google.android.exoplayer2.upstream.Loader.this.currentTask = this;
            if (j > 0) {
                sendEmptyMessageDelayed(0, j);
            } else {
                execute();
            }
        }
    }

    public interface Loadable {
        void cancelLoad();

        void load();
    }

    public interface ReleaseCallback {
        void onLoaderReleased();
    }

    public static final class ReleaseTask implements java.lang.Runnable {
        public final com.google.android.exoplayer2.upstream.Loader.ReleaseCallback callback;

        public ReleaseTask(com.google.android.exoplayer2.upstream.Loader.ReleaseCallback releaseCallback) {
            this.callback = releaseCallback;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.callback.onLoaderReleased();
        }
    }

    public static final class UnexpectedLoaderException extends java.io.IOException {
        public UnexpectedLoaderException(java.lang.Throwable th) {
            java.lang.String simpleName = th.getClass().getSimpleName();
            java.lang.String message = th.getMessage();
            java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(message).length() + simpleName.length() + 13);
            sb.append("Unexpected ");
            sb.append(simpleName);
            sb.append(": ");
            sb.append(message);
            super(sb.toString(), th);
        }
    }

    static {
        long j = com.google.android.exoplayer2.C.TIME_UNSET;
        RETRY = createRetryAction(false, com.google.android.exoplayer2.C.TIME_UNSET);
        RETRY_RESET_ERROR_COUNT = createRetryAction(true, com.google.android.exoplayer2.C.TIME_UNSET);
        DONT_RETRY = new com.google.android.exoplayer2.upstream.Loader.LoadErrorAction(2, j);
        DONT_RETRY_FATAL = new com.google.android.exoplayer2.upstream.Loader.LoadErrorAction(3, j);
    }

    public Loader(java.lang.String str) {
        java.lang.String strValueOf = java.lang.String.valueOf(str);
        this.downloadExecutorService = com.google.android.exoplayer2.util.Util.newSingleThreadExecutor(strValueOf.length() != 0 ? THREAD_NAME_PREFIX.concat(strValueOf) : new java.lang.String(THREAD_NAME_PREFIX));
    }

    public static com.google.android.exoplayer2.upstream.Loader.LoadErrorAction createRetryAction(boolean z, long j) {
        return new com.google.android.exoplayer2.upstream.Loader.LoadErrorAction(z ? 1 : 0, j);
    }

    public void cancelLoading() {
        ((com.google.android.exoplayer2.upstream.Loader.LoadTask) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.currentTask)).cancel(false);
    }

    public void clearFatalError() {
        this.fatalError = null;
    }

    public boolean hasFatalError() {
        return this.fatalError != null;
    }

    public boolean isLoading() {
        return this.currentTask != null;
    }

    @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
    public void maybeThrowError() throws java.io.IOException {
        maybeThrowError(Integer.MIN_VALUE);
    }

    @Override // com.google.android.exoplayer2.upstream.LoaderErrorThrower
    public void maybeThrowError(int i) throws java.io.IOException {
        java.io.IOException iOException = this.fatalError;
        if (iOException != null) {
            throw iOException;
        }
        com.google.android.exoplayer2.upstream.Loader.LoadTask<? extends com.google.android.exoplayer2.upstream.Loader.Loadable> loadTask = this.currentTask;
        if (loadTask != null) {
            if (i == Integer.MIN_VALUE) {
                i = loadTask.defaultMinRetryCount;
            }
            loadTask.maybeThrowError(i);
        }
    }

    public void release() {
        release(null);
    }

    public void release(com.google.android.exoplayer2.upstream.Loader.ReleaseCallback releaseCallback) {
        com.google.android.exoplayer2.upstream.Loader.LoadTask<? extends com.google.android.exoplayer2.upstream.Loader.Loadable> loadTask = this.currentTask;
        if (loadTask != null) {
            loadTask.cancel(true);
        }
        if (releaseCallback != null) {
            this.downloadExecutorService.execute(new com.google.android.exoplayer2.upstream.Loader.ReleaseTask(releaseCallback));
        }
        this.downloadExecutorService.shutdown();
    }

    public <T extends com.google.android.exoplayer2.upstream.Loader.Loadable> long startLoading(T t, com.google.android.exoplayer2.upstream.Loader.Callback<T> callback, int i) {
        android.os.Looper looper = (android.os.Looper) com.google.android.exoplayer2.util.Assertions.checkStateNotNull(android.os.Looper.myLooper());
        this.fatalError = null;
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        new com.google.android.exoplayer2.upstream.Loader.LoadTask(looper, t, callback, i, jElapsedRealtime).start(0L);
        return jElapsedRealtime;
    }
}
