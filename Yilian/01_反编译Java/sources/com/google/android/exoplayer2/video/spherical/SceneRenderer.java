package com.google.android.exoplayer2.video.spherical;

/* loaded from: classes.dex */
public final class SceneRenderer implements com.google.android.exoplayer2.video.VideoFrameMetadataListener, com.google.android.exoplayer2.video.spherical.CameraMotionListener {
    public byte[] lastProjectionData;
    public android.graphics.SurfaceTexture surfaceTexture;
    public int textureId;
    public final java.util.concurrent.atomic.AtomicBoolean frameAvailable = new java.util.concurrent.atomic.AtomicBoolean();
    public final java.util.concurrent.atomic.AtomicBoolean resetRotationAtNextFrame = new java.util.concurrent.atomic.AtomicBoolean(true);
    public final com.google.android.exoplayer2.video.spherical.ProjectionRenderer projectionRenderer = new com.google.android.exoplayer2.video.spherical.ProjectionRenderer();
    public final com.google.android.exoplayer2.video.spherical.FrameRotationQueue frameRotationQueue = new com.google.android.exoplayer2.video.spherical.FrameRotationQueue();
    public final com.google.android.exoplayer2.util.TimedValueQueue<java.lang.Long> sampleTimestampQueue = new com.google.android.exoplayer2.util.TimedValueQueue<>();
    public final com.google.android.exoplayer2.util.TimedValueQueue<com.google.android.exoplayer2.video.spherical.Projection> projectionQueue = new com.google.android.exoplayer2.util.TimedValueQueue<>();
    public final float[] rotationMatrix = new float[16];
    public final float[] tempMatrix = new float[16];
    public volatile int defaultStereoMode = 0;
    public int lastStereoMode = -1;

    private void setProjection(byte[] bArr, int i, long j) {
        byte[] bArr2 = this.lastProjectionData;
        int i2 = this.lastStereoMode;
        this.lastProjectionData = bArr;
        if (i == -1) {
            i = this.defaultStereoMode;
        }
        this.lastStereoMode = i;
        if (i2 == i && java.util.Arrays.equals(bArr2, this.lastProjectionData)) {
            return;
        }
        byte[] bArr3 = this.lastProjectionData;
        com.google.android.exoplayer2.video.spherical.Projection projectionDecode = bArr3 != null ? com.google.android.exoplayer2.video.spherical.ProjectionDecoder.decode(bArr3, this.lastStereoMode) : null;
        if (projectionDecode == null || !com.google.android.exoplayer2.video.spherical.ProjectionRenderer.isSupported(projectionDecode)) {
            projectionDecode = com.google.android.exoplayer2.video.spherical.Projection.createEquirectangular(this.lastStereoMode);
        }
        this.projectionQueue.add(j, projectionDecode);
    }

    public /* synthetic */ void a(android.graphics.SurfaceTexture surfaceTexture) {
        this.frameAvailable.set(true);
    }

    public void drawFrame(float[] fArr, boolean z) {
        android.opengl.GLES20.glClear(16384);
        com.google.android.exoplayer2.util.GlUtil.checkGlError();
        if (this.frameAvailable.compareAndSet(true, false)) {
            ((android.graphics.SurfaceTexture) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.surfaceTexture)).updateTexImage();
            com.google.android.exoplayer2.util.GlUtil.checkGlError();
            if (this.resetRotationAtNextFrame.compareAndSet(true, false)) {
                android.opengl.Matrix.setIdentityM(this.rotationMatrix, 0);
            }
            long timestamp = this.surfaceTexture.getTimestamp();
            java.lang.Long lPoll = this.sampleTimestampQueue.poll(timestamp);
            if (lPoll != null) {
                this.frameRotationQueue.pollRotationMatrix(this.rotationMatrix, lPoll.longValue());
            }
            com.google.android.exoplayer2.video.spherical.Projection projectionPollFloor = this.projectionQueue.pollFloor(timestamp);
            if (projectionPollFloor != null) {
                this.projectionRenderer.setProjection(projectionPollFloor);
            }
        }
        android.opengl.Matrix.multiplyMM(this.tempMatrix, 0, fArr, 0, this.rotationMatrix, 0);
        this.projectionRenderer.draw(this.textureId, this.tempMatrix, z);
    }

    public android.graphics.SurfaceTexture init() {
        android.opengl.GLES20.glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
        com.google.android.exoplayer2.util.GlUtil.checkGlError();
        this.projectionRenderer.init();
        com.google.android.exoplayer2.util.GlUtil.checkGlError();
        this.textureId = com.google.android.exoplayer2.util.GlUtil.createExternalTexture();
        android.graphics.SurfaceTexture surfaceTexture = new android.graphics.SurfaceTexture(this.textureId);
        this.surfaceTexture = surfaceTexture;
        surfaceTexture.setOnFrameAvailableListener(new android.graphics.SurfaceTexture.OnFrameAvailableListener() { // from class: e.c.a.a.t2.o.a
            @Override // android.graphics.SurfaceTexture.OnFrameAvailableListener
            public final void onFrameAvailable(android.graphics.SurfaceTexture surfaceTexture2) {
                this.a.a(surfaceTexture2);
            }
        });
        return this.surfaceTexture;
    }

    @Override // com.google.android.exoplayer2.video.spherical.CameraMotionListener
    public void onCameraMotion(long j, float[] fArr) {
        this.frameRotationQueue.setRotation(j, fArr);
    }

    @Override // com.google.android.exoplayer2.video.spherical.CameraMotionListener
    public void onCameraMotionReset() {
        this.sampleTimestampQueue.clear();
        this.frameRotationQueue.reset();
        this.resetRotationAtNextFrame.set(true);
    }

    @Override // com.google.android.exoplayer2.video.VideoFrameMetadataListener
    public void onVideoFrameAboutToBeRendered(long j, long j2, com.google.android.exoplayer2.Format format, android.media.MediaFormat mediaFormat) {
        this.sampleTimestampQueue.add(j2, java.lang.Long.valueOf(j));
        setProjection(format.projectionData, format.stereoMode, j2);
    }

    public void setDefaultStereoMode(int i) {
        this.defaultStereoMode = i;
    }

    public void shutdown() {
        this.projectionRenderer.shutdown();
    }
}
