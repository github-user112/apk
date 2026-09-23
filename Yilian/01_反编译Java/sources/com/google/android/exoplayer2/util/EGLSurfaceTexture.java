package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class EGLSurfaceTexture implements android.graphics.SurfaceTexture.OnFrameAvailableListener, java.lang.Runnable {
    public static final int[] EGL_CONFIG_ATTRIBUTES = {12352, 4, 12324, 8, 12323, 8, 12322, 8, 12321, 8, 12325, 0, 12327, 12344, 12339, 4, 12344};
    public static final int EGL_PROTECTED_CONTENT_EXT = 12992;
    public static final int EGL_SURFACE_HEIGHT = 1;
    public static final int EGL_SURFACE_WIDTH = 1;
    public static final int SECURE_MODE_NONE = 0;
    public static final int SECURE_MODE_PROTECTED_PBUFFER = 2;
    public static final int SECURE_MODE_SURFACELESS_CONTEXT = 1;
    public final com.google.android.exoplayer2.util.EGLSurfaceTexture.TextureImageListener callback;
    public android.opengl.EGLContext context;
    public android.opengl.EGLDisplay display;
    public final android.os.Handler handler;
    public android.opengl.EGLSurface surface;
    public android.graphics.SurfaceTexture texture;
    public final int[] textureIdHolder;

    public static final class GlException extends java.lang.RuntimeException {
        public GlException(java.lang.String str) {
            super(str);
        }
    }

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface SecureMode {
    }

    public interface TextureImageListener {
        void onFrameAvailable();
    }

    public EGLSurfaceTexture(android.os.Handler handler) {
        this(handler, null);
    }

    public EGLSurfaceTexture(android.os.Handler handler, com.google.android.exoplayer2.util.EGLSurfaceTexture.TextureImageListener textureImageListener) {
        this.handler = handler;
        this.callback = textureImageListener;
        this.textureIdHolder = new int[1];
    }

    public static android.opengl.EGLConfig chooseEGLConfig(android.opengl.EGLDisplay eGLDisplay) {
        android.opengl.EGLConfig[] eGLConfigArr = new android.opengl.EGLConfig[1];
        int[] iArr = new int[1];
        boolean zEglChooseConfig = android.opengl.EGL14.eglChooseConfig(eGLDisplay, EGL_CONFIG_ATTRIBUTES, 0, eGLConfigArr, 0, 1, iArr, 0);
        if (!zEglChooseConfig || iArr[0] <= 0 || eGLConfigArr[0] == null) {
            throw new com.google.android.exoplayer2.util.EGLSurfaceTexture.GlException(com.google.android.exoplayer2.util.Util.formatInvariant("eglChooseConfig failed: success=%b, numConfigs[0]=%d, configs[0]=%s", java.lang.Boolean.valueOf(zEglChooseConfig), java.lang.Integer.valueOf(iArr[0]), eGLConfigArr[0]));
        }
        return eGLConfigArr[0];
    }

    public static android.opengl.EGLContext createEGLContext(android.opengl.EGLDisplay eGLDisplay, android.opengl.EGLConfig eGLConfig, int i) {
        android.opengl.EGLContext eGLContextEglCreateContext = android.opengl.EGL14.eglCreateContext(eGLDisplay, eGLConfig, android.opengl.EGL14.EGL_NO_CONTEXT, i == 0 ? new int[]{12440, 2, 12344} : new int[]{12440, 2, EGL_PROTECTED_CONTENT_EXT, 1, 12344}, 0);
        if (eGLContextEglCreateContext != null) {
            return eGLContextEglCreateContext;
        }
        throw new com.google.android.exoplayer2.util.EGLSurfaceTexture.GlException("eglCreateContext failed");
    }

    public static android.opengl.EGLSurface createEGLSurface(android.opengl.EGLDisplay eGLDisplay, android.opengl.EGLConfig eGLConfig, android.opengl.EGLContext eGLContext, int i) {
        android.opengl.EGLSurface eGLSurfaceEglCreatePbufferSurface;
        if (i == 1) {
            eGLSurfaceEglCreatePbufferSurface = android.opengl.EGL14.EGL_NO_SURFACE;
        } else {
            eGLSurfaceEglCreatePbufferSurface = android.opengl.EGL14.eglCreatePbufferSurface(eGLDisplay, eGLConfig, i == 2 ? new int[]{12375, 1, 12374, 1, EGL_PROTECTED_CONTENT_EXT, 1, 12344} : new int[]{12375, 1, 12374, 1, 12344}, 0);
            if (eGLSurfaceEglCreatePbufferSurface == null) {
                throw new com.google.android.exoplayer2.util.EGLSurfaceTexture.GlException("eglCreatePbufferSurface failed");
            }
        }
        if (android.opengl.EGL14.eglMakeCurrent(eGLDisplay, eGLSurfaceEglCreatePbufferSurface, eGLSurfaceEglCreatePbufferSurface, eGLContext)) {
            return eGLSurfaceEglCreatePbufferSurface;
        }
        throw new com.google.android.exoplayer2.util.EGLSurfaceTexture.GlException("eglMakeCurrent failed");
    }

    private void dispatchOnFrameAvailable() {
        com.google.android.exoplayer2.util.EGLSurfaceTexture.TextureImageListener textureImageListener = this.callback;
        if (textureImageListener != null) {
            textureImageListener.onFrameAvailable();
        }
    }

    public static void generateTextureIds(int[] iArr) {
        android.opengl.GLES20.glGenTextures(1, iArr, 0);
        com.google.android.exoplayer2.util.GlUtil.checkGlError();
    }

    public static android.opengl.EGLDisplay getDefaultDisplay() {
        android.opengl.EGLDisplay eGLDisplayEglGetDisplay = android.opengl.EGL14.eglGetDisplay(0);
        if (eGLDisplayEglGetDisplay == null) {
            throw new com.google.android.exoplayer2.util.EGLSurfaceTexture.GlException("eglGetDisplay failed");
        }
        int[] iArr = new int[2];
        if (android.opengl.EGL14.eglInitialize(eGLDisplayEglGetDisplay, iArr, 0, iArr, 1)) {
            return eGLDisplayEglGetDisplay;
        }
        throw new com.google.android.exoplayer2.util.EGLSurfaceTexture.GlException("eglInitialize failed");
    }

    public android.graphics.SurfaceTexture getSurfaceTexture() {
        return (android.graphics.SurfaceTexture) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.texture);
    }

    public void init(int i) {
        android.opengl.EGLDisplay defaultDisplay = getDefaultDisplay();
        this.display = defaultDisplay;
        android.opengl.EGLConfig eGLConfigChooseEGLConfig = chooseEGLConfig(defaultDisplay);
        android.opengl.EGLContext eGLContextCreateEGLContext = createEGLContext(this.display, eGLConfigChooseEGLConfig, i);
        this.context = eGLContextCreateEGLContext;
        this.surface = createEGLSurface(this.display, eGLConfigChooseEGLConfig, eGLContextCreateEGLContext, i);
        generateTextureIds(this.textureIdHolder);
        android.graphics.SurfaceTexture surfaceTexture = new android.graphics.SurfaceTexture(this.textureIdHolder[0]);
        this.texture = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(this);
    }

    @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
    public void onFrameAvailable(android.graphics.SurfaceTexture surfaceTexture) {
        this.handler.post(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void release() {
        this.handler.removeCallbacks(this);
        try {
            if (this.texture != null) {
                this.texture.release();
                android.opengl.GLES20.glDeleteTextures(1, this.textureIdHolder, 0);
            }
        } finally {
            android.opengl.EGLDisplay eGLDisplay = this.display;
            if (eGLDisplay != null && !eGLDisplay.equals(android.opengl.EGL14.EGL_NO_DISPLAY)) {
                android.opengl.EGLDisplay eGLDisplay2 = this.display;
                android.opengl.EGLSurface eGLSurface = android.opengl.EGL14.EGL_NO_SURFACE;
                android.opengl.EGL14.eglMakeCurrent(eGLDisplay2, eGLSurface, eGLSurface, android.opengl.EGL14.EGL_NO_CONTEXT);
            }
            android.opengl.EGLSurface eGLSurface2 = this.surface;
            if (eGLSurface2 != null && !eGLSurface2.equals(android.opengl.EGL14.EGL_NO_SURFACE)) {
                android.opengl.EGL14.eglDestroySurface(this.display, this.surface);
            }
            android.opengl.EGLContext eGLContext = this.context;
            if (eGLContext != null) {
                android.opengl.EGL14.eglDestroyContext(this.display, eGLContext);
            }
            if (com.google.android.exoplayer2.util.Util.SDK_INT >= 19) {
                android.opengl.EGL14.eglReleaseThread();
            }
            android.opengl.EGLDisplay eGLDisplay3 = this.display;
            if (eGLDisplay3 != null && !eGLDisplay3.equals(android.opengl.EGL14.EGL_NO_DISPLAY)) {
                android.opengl.EGL14.eglTerminate(this.display);
            }
            this.display = null;
            this.context = null;
            this.surface = null;
            this.texture = null;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        dispatchOnFrameAvailable();
        android.graphics.SurfaceTexture surfaceTexture = this.texture;
        if (surfaceTexture != null) {
            try {
                surfaceTexture.updateTexImage();
            } catch (java.lang.RuntimeException unused) {
            }
        }
    }
}
