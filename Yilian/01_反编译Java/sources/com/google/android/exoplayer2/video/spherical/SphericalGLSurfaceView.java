package com.google.android.exoplayer2.video.spherical;

/* loaded from: classes.dex */
public final class SphericalGLSurfaceView extends android.opengl.GLSurfaceView {
    public static final int FIELD_OF_VIEW_DEGREES = 90;
    public static final float PX_PER_DEGREES = 25.0f;
    public static final float UPRIGHT_ROLL = 3.1415927f;
    public static final float Z_FAR = 100.0f;
    public static final float Z_NEAR = 0.1f;
    public boolean isOrientationListenerRegistered;
    public boolean isStarted;
    public final android.os.Handler mainHandler;
    public final com.google.android.exoplayer2.video.spherical.OrientationListener orientationListener;
    public final android.hardware.Sensor orientationSensor;
    public final com.google.android.exoplayer2.video.spherical.SceneRenderer scene;
    public final android.hardware.SensorManager sensorManager;
    public android.view.Surface surface;
    public android.graphics.SurfaceTexture surfaceTexture;
    public final com.google.android.exoplayer2.video.spherical.TouchTracker touchTracker;
    public boolean useSensorRotation;
    public final java.util.concurrent.CopyOnWriteArrayList<com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener> videoSurfaceListeners;

    public final class Renderer implements android.opengl.GLSurfaceView.Renderer, com.google.android.exoplayer2.video.spherical.TouchTracker.Listener, com.google.android.exoplayer2.video.spherical.OrientationListener.Listener {
        public final float[] deviceOrientationMatrix;
        public float deviceRoll;
        public final com.google.android.exoplayer2.video.spherical.SceneRenderer scene;
        public float touchPitch;
        public final float[] projectionMatrix = new float[16];
        public final float[] viewProjectionMatrix = new float[16];
        public final float[] touchPitchMatrix = new float[16];
        public final float[] touchYawMatrix = new float[16];
        public final float[] viewMatrix = new float[16];
        public final float[] tempMatrix = new float[16];

        public Renderer(com.google.android.exoplayer2.video.spherical.SceneRenderer sceneRenderer) {
            float[] fArr = new float[16];
            this.deviceOrientationMatrix = fArr;
            this.scene = sceneRenderer;
            android.opengl.Matrix.setIdentityM(fArr, 0);
            android.opengl.Matrix.setIdentityM(this.touchPitchMatrix, 0);
            android.opengl.Matrix.setIdentityM(this.touchYawMatrix, 0);
            this.deviceRoll = 3.1415927f;
        }

        private float calculateFieldOfViewInYDirection(float f2) {
            if (!(f2 > 1.0f)) {
                return 90.0f;
            }
            double dTan = java.lang.Math.tan(java.lang.Math.toRadians(45.0d));
            double d2 = f2;
            java.lang.Double.isNaN(d2);
            return (float) (java.lang.Math.toDegrees(java.lang.Math.atan(dTan / d2)) * 2.0d);
        }

        private void updatePitchMatrix() {
            android.opengl.Matrix.setRotateM(this.touchPitchMatrix, 0, -this.touchPitch, (float) java.lang.Math.cos(this.deviceRoll), (float) java.lang.Math.sin(this.deviceRoll), 0.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onDrawFrame(javax.microedition.khronos.opengles.GL10 gl10) {
            synchronized (this) {
                android.opengl.Matrix.multiplyMM(this.tempMatrix, 0, this.deviceOrientationMatrix, 0, this.touchYawMatrix, 0);
                android.opengl.Matrix.multiplyMM(this.viewMatrix, 0, this.touchPitchMatrix, 0, this.tempMatrix, 0);
            }
            android.opengl.Matrix.multiplyMM(this.viewProjectionMatrix, 0, this.projectionMatrix, 0, this.viewMatrix, 0);
            this.scene.drawFrame(this.viewProjectionMatrix, false);
        }

        @Override // com.google.android.exoplayer2.video.spherical.OrientationListener.Listener
        public synchronized void onOrientationChange(float[] fArr, float f2) {
            java.lang.System.arraycopy(fArr, 0, this.deviceOrientationMatrix, 0, this.deviceOrientationMatrix.length);
            this.deviceRoll = -f2;
            updatePitchMatrix();
        }

        @Override // com.google.android.exoplayer2.video.spherical.TouchTracker.Listener
        public synchronized void onScrollChange(android.graphics.PointF pointF) {
            this.touchPitch = pointF.y;
            updatePitchMatrix();
            android.opengl.Matrix.setRotateM(this.touchYawMatrix, 0, -pointF.x, 0.0f, 1.0f, 0.0f);
        }

        @Override // com.google.android.exoplayer2.video.spherical.TouchTracker.Listener
        public boolean onSingleTapUp(android.view.MotionEvent motionEvent) {
            return com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.this.performClick();
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public void onSurfaceChanged(javax.microedition.khronos.opengles.GL10 gl10, int i, int i2) {
            android.opengl.GLES20.glViewport(0, 0, i, i2);
            float f2 = i / i2;
            android.opengl.Matrix.perspectiveM(this.projectionMatrix, 0, calculateFieldOfViewInYDirection(f2), f2, 0.1f, 100.0f);
        }

        @Override // android.opengl.GLSurfaceView.Renderer
        public synchronized void onSurfaceCreated(javax.microedition.khronos.opengles.GL10 gl10, javax.microedition.khronos.egl.EGLConfig eGLConfig) {
            com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.this.onSurfaceTextureAvailable(this.scene.init());
        }
    }

    public interface VideoSurfaceListener {
        void onVideoSurfaceCreated(android.view.Surface surface);

        void onVideoSurfaceDestroyed(android.view.Surface surface);
    }

    public SphericalGLSurfaceView(android.content.Context context) {
        this(context, null);
    }

    public SphericalGLSurfaceView(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.videoSurfaceListeners = new java.util.concurrent.CopyOnWriteArrayList<>();
        this.mainHandler = new android.os.Handler(android.os.Looper.getMainLooper());
        android.hardware.SensorManager sensorManager = (android.hardware.SensorManager) com.google.android.exoplayer2.util.Assertions.checkNotNull(context.getSystemService(com.umeng.analytics.pro.ai.ac));
        this.sensorManager = sensorManager;
        android.hardware.Sensor defaultSensor = com.google.android.exoplayer2.util.Util.SDK_INT >= 18 ? sensorManager.getDefaultSensor(15) : null;
        this.orientationSensor = defaultSensor == null ? this.sensorManager.getDefaultSensor(11) : defaultSensor;
        com.google.android.exoplayer2.video.spherical.SceneRenderer sceneRenderer = new com.google.android.exoplayer2.video.spherical.SceneRenderer();
        this.scene = sceneRenderer;
        com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.Renderer renderer = new com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.Renderer(sceneRenderer);
        this.touchTracker = new com.google.android.exoplayer2.video.spherical.TouchTracker(context, renderer, 25.0f);
        this.orientationListener = new com.google.android.exoplayer2.video.spherical.OrientationListener(((android.view.WindowManager) com.google.android.exoplayer2.util.Assertions.checkNotNull((android.view.WindowManager) context.getSystemService("window"))).getDefaultDisplay(), this.touchTracker, renderer);
        this.useSensorRotation = true;
        setEGLContextClientVersion(2);
        setRenderer(renderer);
        setOnTouchListener(this.touchTracker);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onSurfaceTextureAvailable(final android.graphics.SurfaceTexture surfaceTexture) {
        this.mainHandler.post(new java.lang.Runnable() { // from class: e.c.a.a.t2.o.b
            @Override // java.lang.Runnable
            public final void run() {
                this.a.b(surfaceTexture);
            }
        });
    }

    public static void releaseSurface(android.graphics.SurfaceTexture surfaceTexture, android.view.Surface surface) {
        if (surfaceTexture != null) {
            surfaceTexture.release();
        }
        if (surface != null) {
            surface.release();
        }
    }

    private void updateOrientationListenerRegistration() {
        boolean z = this.useSensorRotation && this.isStarted;
        android.hardware.Sensor sensor = this.orientationSensor;
        if (sensor == null || z == this.isOrientationListenerRegistered) {
            return;
        }
        if (z) {
            this.sensorManager.registerListener(this.orientationListener, sensor, 0);
        } else {
            this.sensorManager.unregisterListener(this.orientationListener);
        }
        this.isOrientationListenerRegistered = z;
    }

    public /* synthetic */ void a() {
        android.view.Surface surface = this.surface;
        if (surface != null) {
            java.util.Iterator<com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener> it = this.videoSurfaceListeners.iterator();
            while (it.hasNext()) {
                it.next().onVideoSurfaceDestroyed(surface);
            }
        }
        releaseSurface(this.surfaceTexture, surface);
        this.surfaceTexture = null;
        this.surface = null;
    }

    public void addVideoSurfaceListener(com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener videoSurfaceListener) {
        this.videoSurfaceListeners.add(videoSurfaceListener);
    }

    public /* synthetic */ void b(android.graphics.SurfaceTexture surfaceTexture) {
        android.graphics.SurfaceTexture surfaceTexture2 = this.surfaceTexture;
        android.view.Surface surface = this.surface;
        android.view.Surface surface2 = new android.view.Surface(surfaceTexture);
        this.surfaceTexture = surfaceTexture;
        this.surface = surface2;
        java.util.Iterator<com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener> it = this.videoSurfaceListeners.iterator();
        while (it.hasNext()) {
            it.next().onVideoSurfaceCreated(surface2);
        }
        releaseSurface(surfaceTexture2, surface);
    }

    public com.google.android.exoplayer2.video.spherical.CameraMotionListener getCameraMotionListener() {
        return this.scene;
    }

    public com.google.android.exoplayer2.video.VideoFrameMetadataListener getVideoFrameMetadataListener() {
        return this.scene;
    }

    public android.view.Surface getVideoSurface() {
        return this.surface;
    }

    @Override // android.opengl.GLSurfaceView, android.view.SurfaceView, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.mainHandler.post(new java.lang.Runnable() { // from class: e.c.a.a.t2.o.c
            @Override // java.lang.Runnable
            public final void run() {
                this.a.a();
            }
        });
    }

    @Override // android.opengl.GLSurfaceView
    public void onPause() {
        this.isStarted = false;
        updateOrientationListenerRegistration();
        super.onPause();
    }

    @Override // android.opengl.GLSurfaceView
    public void onResume() {
        super.onResume();
        this.isStarted = true;
        updateOrientationListenerRegistration();
    }

    public void removeVideoSurfaceListener(com.google.android.exoplayer2.video.spherical.SphericalGLSurfaceView.VideoSurfaceListener videoSurfaceListener) {
        this.videoSurfaceListeners.remove(videoSurfaceListener);
    }

    public void setDefaultStereoMode(int i) {
        this.scene.setDefaultStereoMode(i);
    }

    public void setUseSensorRotation(boolean z) {
        this.useSensorRotation = z;
        updateOrientationListenerRegistration();
    }
}
