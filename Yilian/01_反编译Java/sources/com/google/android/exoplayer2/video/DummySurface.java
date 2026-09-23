package com.google.android.exoplayer2.video;

/* loaded from: classes.dex */
public final class DummySurface extends android.view.Surface {
    public static final java.lang.String TAG = "DummySurface";
    public static int secureMode;
    public static boolean secureModeInitialized;
    public final boolean secure;
    public final com.google.android.exoplayer2.video.DummySurface.DummySurfaceThread thread;
    public boolean threadReleased;

    public static class DummySurfaceThread extends android.os.HandlerThread implements android.os.Handler.Callback {
        public static final int MSG_INIT = 1;
        public static final int MSG_RELEASE = 2;
        public com.google.android.exoplayer2.util.EGLSurfaceTexture eglSurfaceTexture;
        public android.os.Handler handler;
        public java.lang.Error initError;
        public java.lang.RuntimeException initException;
        public com.google.android.exoplayer2.video.DummySurface surface;

        public DummySurfaceThread() {
            super("ExoPlayer:DummySurface");
        }

        private void initInternal(int i) {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(this.eglSurfaceTexture);
            this.eglSurfaceTexture.init(i);
            this.surface = new com.google.android.exoplayer2.video.DummySurface(this, this.eglSurfaceTexture.getSurfaceTexture(), i != 0);
        }

        private void releaseInternal() {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(this.eglSurfaceTexture);
            this.eglSurfaceTexture.release();
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(android.os.Message message) {
            int i = message.what;
            try {
                if (i != 1) {
                    if (i != 2) {
                        return true;
                    }
                    try {
                        releaseInternal();
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    return true;
                }
                try {
                    initInternal(message.arg1);
                    synchronized (this) {
                        notify();
                    }
                } catch (java.lang.Error e2) {
                    com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.video.DummySurface.TAG, "Failed to initialize dummy surface", e2);
                    this.initError = e2;
                    synchronized (this) {
                        notify();
                    }
                } catch (java.lang.RuntimeException e3) {
                    com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.video.DummySurface.TAG, "Failed to initialize dummy surface", e3);
                    this.initException = e3;
                    synchronized (this) {
                        notify();
                    }
                }
                return true;
            } catch (java.lang.Throwable th) {
                synchronized (this) {
                    notify();
                    throw th;
                }
            }
        }

        public com.google.android.exoplayer2.video.DummySurface init(int i) {
            boolean z;
            start();
            android.os.Handler handler = new android.os.Handler(getLooper(), this);
            this.handler = handler;
            this.eglSurfaceTexture = new com.google.android.exoplayer2.util.EGLSurfaceTexture(handler);
            synchronized (this) {
                z = false;
                this.handler.obtainMessage(1, i, 0).sendToTarget();
                while (this.surface == null && this.initException == null && this.initError == null) {
                    try {
                        wait();
                    } catch (java.lang.InterruptedException unused) {
                        z = true;
                    }
                }
            }
            if (z) {
                java.lang.Thread.currentThread().interrupt();
            }
            java.lang.RuntimeException runtimeException = this.initException;
            if (runtimeException != null) {
                throw runtimeException;
            }
            java.lang.Error error = this.initError;
            if (error == null) {
                return (com.google.android.exoplayer2.video.DummySurface) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.surface);
            }
            throw error;
        }

        public void release() {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(this.handler);
            this.handler.sendEmptyMessage(2);
        }
    }

    public DummySurface(com.google.android.exoplayer2.video.DummySurface.DummySurfaceThread dummySurfaceThread, android.graphics.SurfaceTexture surfaceTexture, boolean z) {
        super(surfaceTexture);
        this.thread = dummySurfaceThread;
        this.secure = z;
    }

    public static int getSecureMode(android.content.Context context) {
        if (com.google.android.exoplayer2.util.GlUtil.isProtectedContentExtensionSupported(context)) {
            return com.google.android.exoplayer2.util.GlUtil.isSurfacelessContextExtensionSupported() ? 1 : 2;
        }
        return 0;
    }

    public static synchronized boolean isSecureSupported(android.content.Context context) {
        if (!secureModeInitialized) {
            secureMode = getSecureMode(context);
            secureModeInitialized = true;
        }
        return secureMode != 0;
    }

    public static com.google.android.exoplayer2.video.DummySurface newInstanceV17(android.content.Context context, boolean z) {
        com.google.android.exoplayer2.util.Assertions.checkState(!z || isSecureSupported(context));
        return new com.google.android.exoplayer2.video.DummySurface.DummySurfaceThread().init(z ? secureMode : 0);
    }

    @Override // android.view.Surface
    public void release() {
        super.release();
        synchronized (this.thread) {
            if (!this.threadReleased) {
                this.thread.release();
                this.threadReleased = true;
            }
        }
    }
}
