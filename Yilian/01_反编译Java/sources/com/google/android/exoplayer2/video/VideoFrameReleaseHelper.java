package com.google.android.exoplayer2.video;

/* loaded from: classes.dex */
public final class VideoFrameReleaseHelper {
    public static final long MAX_ALLOWED_ADJUSTMENT_NS = 20000000;
    public static final int MINIMUM_FRAMES_WITHOUT_SYNC_TO_CLEAR_SURFACE_FRAME_RATE = 30;
    public static final long MINIMUM_MATCHING_FRAME_DURATION_FOR_HIGH_CONFIDENCE_NS = 5000000000L;
    public static final float MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_HIGH_CONFIDENCE = 0.02f;
    public static final float MINIMUM_MEDIA_FRAME_RATE_CHANGE_FOR_UPDATE_LOW_CONFIDENCE = 1.0f;
    public static final java.lang.String TAG = "VideoFrameReleaseHelper";
    public static final long VSYNC_OFFSET_PERCENTAGE = 80;
    public static final long VSYNC_SAMPLE_UPDATE_PERIOD_MS = 500;
    public int changeFrameRateStrategy;
    public final com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper displayHelper;
    public float formatFrameRate;
    public long frameIndex;
    public final com.google.android.exoplayer2.video.FixedFrameRateEstimator frameRateEstimator = new com.google.android.exoplayer2.video.FixedFrameRateEstimator();
    public long lastAdjustedFrameIndex;
    public long lastAdjustedReleaseTimeNs;
    public long pendingLastAdjustedFrameIndex;
    public long pendingLastAdjustedReleaseTimeNs;
    public float playbackSpeed;
    public boolean started;
    public android.view.Surface surface;
    public float surfaceMediaFrameRate;
    public float surfacePlaybackFrameRate;
    public long vsyncDurationNs;
    public long vsyncOffsetNs;
    public final com.google.android.exoplayer2.video.VideoFrameReleaseHelper.VSyncSampler vsyncSampler;

    public static final class Api30 {
        public static void setSurfaceFrameRate(android.view.Surface surface, float f2) {
            try {
                surface.setFrameRate(f2, f2 == 0.0f ? 0 : 1);
            } catch (java.lang.IllegalStateException e2) {
                com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.video.VideoFrameReleaseHelper.TAG, "Failed to call Surface.setFrameRate", e2);
            }
        }
    }

    public interface DisplayHelper {

        public interface Listener {
            void onDefaultDisplayChanged(android.view.Display display);
        }

        void register(com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper.Listener listener);

        void unregister();
    }

    public static final class DisplayHelperV16 implements com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper {
        public final android.view.WindowManager windowManager;

        public DisplayHelperV16(android.view.WindowManager windowManager) {
            this.windowManager = windowManager;
        }

        public static com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper maybeBuildNewInstance(android.content.Context context) {
            android.view.WindowManager windowManager = (android.view.WindowManager) context.getSystemService("window");
            if (windowManager != null) {
                return new com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelperV16(windowManager);
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper
        public void register(com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper.Listener listener) {
            listener.onDefaultDisplayChanged(this.windowManager.getDefaultDisplay());
        }

        @Override // com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper
        public void unregister() {
        }
    }

    public static final class DisplayHelperV17 implements com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper, android.hardware.display.DisplayManager.DisplayListener {
        public final android.hardware.display.DisplayManager displayManager;
        public com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper.Listener listener;

        public DisplayHelperV17(android.hardware.display.DisplayManager displayManager) {
            this.displayManager = displayManager;
        }

        private android.view.Display getDefaultDisplay() {
            return this.displayManager.getDisplay(0);
        }

        public static com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper maybeBuildNewInstance(android.content.Context context) {
            android.hardware.display.DisplayManager displayManager = (android.hardware.display.DisplayManager) context.getSystemService("display");
            if (displayManager != null) {
                return new com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelperV17(displayManager);
            }
            return null;
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayAdded(int i) {
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayChanged(int i) {
            com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper.Listener listener = this.listener;
            if (listener == null || i != 0) {
                return;
            }
            listener.onDefaultDisplayChanged(getDefaultDisplay());
        }

        @Override // android.hardware.display.DisplayManager.DisplayListener
        public void onDisplayRemoved(int i) {
        }

        @Override // com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper
        public void register(com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper.Listener listener) {
            this.listener = listener;
            this.displayManager.registerDisplayListener(this, com.google.android.exoplayer2.util.Util.createHandlerForCurrentLooper());
            listener.onDefaultDisplayChanged(getDefaultDisplay());
        }

        @Override // com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper
        public void unregister() {
            this.displayManager.unregisterDisplayListener(this);
            this.listener = null;
        }
    }

    public static final class VSyncSampler implements android.view.Choreographer.FrameCallback, android.os.Handler.Callback {
        public static final int CREATE_CHOREOGRAPHER = 0;
        public static final com.google.android.exoplayer2.video.VideoFrameReleaseHelper.VSyncSampler INSTANCE = new com.google.android.exoplayer2.video.VideoFrameReleaseHelper.VSyncSampler();
        public static final int MSG_ADD_OBSERVER = 1;
        public static final int MSG_REMOVE_OBSERVER = 2;
        public android.view.Choreographer choreographer;
        public final android.os.HandlerThread choreographerOwnerThread;
        public final android.os.Handler handler;
        public int observerCount;
        public volatile long sampledVsyncTimeNs = com.google.android.exoplayer2.C.TIME_UNSET;

        public VSyncSampler() {
            android.os.HandlerThread handlerThread = new android.os.HandlerThread("ExoPlayer:FrameReleaseChoreographer");
            this.choreographerOwnerThread = handlerThread;
            handlerThread.start();
            android.os.Handler handlerCreateHandler = com.google.android.exoplayer2.util.Util.createHandler(this.choreographerOwnerThread.getLooper(), this);
            this.handler = handlerCreateHandler;
            handlerCreateHandler.sendEmptyMessage(0);
        }

        private void addObserverInternal() {
            int i = this.observerCount + 1;
            this.observerCount = i;
            if (i == 1) {
                ((android.view.Choreographer) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.choreographer)).postFrameCallback(this);
            }
        }

        private void createChoreographerInstanceInternal() {
            this.choreographer = android.view.Choreographer.getInstance();
        }

        public static com.google.android.exoplayer2.video.VideoFrameReleaseHelper.VSyncSampler getInstance() {
            return INSTANCE;
        }

        private void removeObserverInternal() {
            int i = this.observerCount - 1;
            this.observerCount = i;
            if (i == 0) {
                ((android.view.Choreographer) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.choreographer)).removeFrameCallback(this);
                this.sampledVsyncTimeNs = com.google.android.exoplayer2.C.TIME_UNSET;
            }
        }

        public void addObserver() {
            this.handler.sendEmptyMessage(1);
        }

        @Override // android.view.Choreographer.FrameCallback
        public void doFrame(long j) {
            this.sampledVsyncTimeNs = j;
            ((android.view.Choreographer) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.choreographer)).postFrameCallbackDelayed(this, 500L);
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(android.os.Message message) {
            int i = message.what;
            if (i == 0) {
                createChoreographerInstanceInternal();
                return true;
            }
            if (i == 1) {
                addObserverInternal();
                return true;
            }
            if (i != 2) {
                return false;
            }
            removeObserverInternal();
            return true;
        }

        public void removeObserver() {
            this.handler.sendEmptyMessage(2);
        }
    }

    public VideoFrameReleaseHelper(android.content.Context context) {
        com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper displayHelperMaybeBuildDisplayHelper = maybeBuildDisplayHelper(context);
        this.displayHelper = displayHelperMaybeBuildDisplayHelper;
        this.vsyncSampler = displayHelperMaybeBuildDisplayHelper != null ? com.google.android.exoplayer2.video.VideoFrameReleaseHelper.VSyncSampler.getInstance() : null;
        this.vsyncDurationNs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.vsyncOffsetNs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.formatFrameRate = -1.0f;
        this.playbackSpeed = 1.0f;
        this.changeFrameRateStrategy = 0;
    }

    public static boolean adjustmentAllowed(long j, long j2) {
        return java.lang.Math.abs(j - j2) <= 20000000;
    }

    private void clearSurfaceFrameRate() {
        android.view.Surface surface;
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 30 || (surface = this.surface) == null || this.changeFrameRateStrategy == Integer.MIN_VALUE || this.surfacePlaybackFrameRate == 0.0f) {
            return;
        }
        this.surfacePlaybackFrameRate = 0.0f;
        com.google.android.exoplayer2.video.VideoFrameReleaseHelper.Api30.setSurfaceFrameRate(surface, 0.0f);
    }

    public static long closestVsync(long j, long j2, long j3) {
        long j4;
        long j5 = (((j - j2) / j3) * j3) + j2;
        if (j <= j5) {
            j4 = j5 - j3;
        } else {
            j4 = j5;
            j5 = j3 + j5;
        }
        return j5 - j < j - j4 ? j5 : j4;
    }

    public static com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper maybeBuildDisplayHelper(android.content.Context context) {
        if (context == null) {
            return null;
        }
        android.content.Context applicationContext = context.getApplicationContext();
        com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper displayHelperMaybeBuildNewInstance = com.google.android.exoplayer2.util.Util.SDK_INT >= 17 ? com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelperV17.maybeBuildNewInstance(applicationContext) : null;
        return displayHelperMaybeBuildNewInstance == null ? com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelperV16.maybeBuildNewInstance(applicationContext) : displayHelperMaybeBuildNewInstance;
    }

    private void resetAdjustment() {
        this.frameIndex = 0L;
        this.lastAdjustedFrameIndex = -1L;
        this.pendingLastAdjustedFrameIndex = -1L;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateDefaultDisplayRefreshRateParams(android.view.Display display) {
        long j;
        if (display != null) {
            double refreshRate = display.getRefreshRate();
            java.lang.Double.isNaN(refreshRate);
            long j2 = (long) (1.0E9d / refreshRate);
            this.vsyncDurationNs = j2;
            j = (j2 * 80) / 100;
        } else {
            com.google.android.exoplayer2.util.Log.w(TAG, "Unable to query display refresh rate");
            j = com.google.android.exoplayer2.C.TIME_UNSET;
            this.vsyncDurationNs = com.google.android.exoplayer2.C.TIME_UNSET;
        }
        this.vsyncOffsetNs = j;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x005f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void updateSurfaceMediaFrameRate() {
        /*
            r8 = this;
            int r0 = com.google.android.exoplayer2.util.Util.SDK_INT
            r1 = 30
            if (r0 < r1) goto L75
            android.view.Surface r0 = r8.surface
            if (r0 != 0) goto Lc
            goto L75
        Lc:
            com.google.android.exoplayer2.video.FixedFrameRateEstimator r0 = r8.frameRateEstimator
            boolean r0 = r0.isSynced()
            if (r0 == 0) goto L1b
            com.google.android.exoplayer2.video.FixedFrameRateEstimator r0 = r8.frameRateEstimator
            float r0 = r0.getFrameRate()
            goto L1d
        L1b:
            float r0 = r8.formatFrameRate
        L1d:
            float r2 = r8.surfaceMediaFrameRate
            int r3 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r3 != 0) goto L24
            return
        L24:
            r3 = -1082130432(0xffffffffbf800000, float:-1.0)
            r4 = 0
            r5 = 1
            int r6 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r6 == 0) goto L61
            int r2 = (r2 > r3 ? 1 : (r2 == r3 ? 0 : -1))
            if (r2 == 0) goto L61
            com.google.android.exoplayer2.video.FixedFrameRateEstimator r1 = r8.frameRateEstimator
            boolean r1 = r1.isSynced()
            if (r1 == 0) goto L49
            com.google.android.exoplayer2.video.FixedFrameRateEstimator r1 = r8.frameRateEstimator
            long r1 = r1.getMatchingFrameDurationSumNs()
            r6 = 5000000000(0x12a05f200, double:2.470328229E-314)
            int r3 = (r1 > r6 ? 1 : (r1 == r6 ? 0 : -1))
            if (r3 < 0) goto L49
            r1 = 1
            goto L4a
        L49:
            r1 = 0
        L4a:
            if (r1 == 0) goto L50
            r1 = 1017370378(0x3ca3d70a, float:0.02)
            goto L52
        L50:
            r1 = 1065353216(0x3f800000, float:1.0)
        L52:
            float r2 = r8.surfaceMediaFrameRate
            float r2 = r0 - r2
            float r2 = java.lang.Math.abs(r2)
            int r1 = (r2 > r1 ? 1 : (r2 == r1 ? 0 : -1))
            if (r1 < 0) goto L5f
            goto L6e
        L5f:
            r5 = 0
            goto L6e
        L61:
            int r2 = (r0 > r3 ? 1 : (r0 == r3 ? 0 : -1))
            if (r2 == 0) goto L66
            goto L6e
        L66:
            com.google.android.exoplayer2.video.FixedFrameRateEstimator r2 = r8.frameRateEstimator
            int r2 = r2.getFramesWithoutSyncCount()
            if (r2 < r1) goto L5f
        L6e:
            if (r5 == 0) goto L75
            r8.surfaceMediaFrameRate = r0
            r8.updateSurfacePlaybackFrameRate(r4)
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.VideoFrameReleaseHelper.updateSurfaceMediaFrameRate():void");
    }

    private void updateSurfacePlaybackFrameRate(boolean z) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 30 || this.surface == null || this.changeFrameRateStrategy == Integer.MIN_VALUE) {
            return;
        }
        float f2 = 0.0f;
        if (this.started) {
            float f3 = this.surfaceMediaFrameRate;
            if (f3 != -1.0f) {
                f2 = this.playbackSpeed * f3;
            }
        }
        if (z || this.surfacePlaybackFrameRate != f2) {
            this.surfacePlaybackFrameRate = f2;
            com.google.android.exoplayer2.video.VideoFrameReleaseHelper.Api30.setSurfaceFrameRate(this.surface, f2);
        }
    }

    public long adjustReleaseTime(long j) {
        long j2;
        if (this.lastAdjustedFrameIndex == -1 || !this.frameRateEstimator.isSynced()) {
            j2 = j;
        } else {
            long frameDurationNs = this.lastAdjustedReleaseTimeNs + ((long) (((this.frameIndex - this.lastAdjustedFrameIndex) * this.frameRateEstimator.getFrameDurationNs()) / this.playbackSpeed));
            if (adjustmentAllowed(j, frameDurationNs)) {
                j2 = frameDurationNs;
            } else {
                resetAdjustment();
                j2 = j;
            }
        }
        this.pendingLastAdjustedFrameIndex = this.frameIndex;
        this.pendingLastAdjustedReleaseTimeNs = j2;
        com.google.android.exoplayer2.video.VideoFrameReleaseHelper.VSyncSampler vSyncSampler = this.vsyncSampler;
        if (vSyncSampler == null || this.vsyncDurationNs == com.google.android.exoplayer2.C.TIME_UNSET) {
            return j2;
        }
        long j3 = vSyncSampler.sampledVsyncTimeNs;
        return j3 == com.google.android.exoplayer2.C.TIME_UNSET ? j2 : closestVsync(j2, j3, this.vsyncDurationNs) - this.vsyncOffsetNs;
    }

    public void onDisabled() {
        com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper displayHelper = this.displayHelper;
        if (displayHelper != null) {
            displayHelper.unregister();
            ((com.google.android.exoplayer2.video.VideoFrameReleaseHelper.VSyncSampler) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.vsyncSampler)).removeObserver();
        }
    }

    public void onEnabled() {
        if (this.displayHelper != null) {
            ((com.google.android.exoplayer2.video.VideoFrameReleaseHelper.VSyncSampler) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.vsyncSampler)).addObserver();
            this.displayHelper.register(new com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper.Listener() { // from class: e.c.a.a.t2.b
                @Override // com.google.android.exoplayer2.video.VideoFrameReleaseHelper.DisplayHelper.Listener
                public final void onDefaultDisplayChanged(android.view.Display display) {
                    this.a.updateDefaultDisplayRefreshRateParams(display);
                }
            });
        }
    }

    public void onFormatChanged(float f2) {
        this.formatFrameRate = f2;
        this.frameRateEstimator.reset();
        updateSurfaceMediaFrameRate();
    }

    public void onNextFrame(long j) {
        long j2 = this.pendingLastAdjustedFrameIndex;
        if (j2 != -1) {
            this.lastAdjustedFrameIndex = j2;
            this.lastAdjustedReleaseTimeNs = this.pendingLastAdjustedReleaseTimeNs;
        }
        this.frameIndex++;
        this.frameRateEstimator.onNextFrame(j * 1000);
        updateSurfaceMediaFrameRate();
    }

    public void onPlaybackSpeed(float f2) {
        this.playbackSpeed = f2;
        resetAdjustment();
        updateSurfacePlaybackFrameRate(false);
    }

    public void onPositionReset() {
        resetAdjustment();
    }

    public void onStarted() {
        this.started = true;
        resetAdjustment();
        updateSurfacePlaybackFrameRate(false);
    }

    public void onStopped() {
        this.started = false;
        clearSurfaceFrameRate();
    }

    public void onSurfaceChanged(android.view.Surface surface) {
        if (surface instanceof com.google.android.exoplayer2.video.DummySurface) {
            surface = null;
        }
        if (this.surface == surface) {
            return;
        }
        clearSurfaceFrameRate();
        this.surface = surface;
        updateSurfacePlaybackFrameRate(true);
    }

    public void setChangeFrameRateStrategy(int i) {
        if (this.changeFrameRateStrategy == i) {
            return;
        }
        this.changeFrameRateStrategy = i;
        updateSurfacePlaybackFrameRate(true);
    }
}
