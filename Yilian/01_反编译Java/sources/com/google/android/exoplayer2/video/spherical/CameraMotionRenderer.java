package com.google.android.exoplayer2.video.spherical;

/* loaded from: classes.dex */
public final class CameraMotionRenderer extends com.google.android.exoplayer2.BaseRenderer {
    public static final int SAMPLE_WINDOW_DURATION_US = 100000;
    public static final java.lang.String TAG = "CameraMotionRenderer";
    public final com.google.android.exoplayer2.decoder.DecoderInputBuffer buffer;
    public long lastTimestampUs;
    public com.google.android.exoplayer2.video.spherical.CameraMotionListener listener;
    public long offsetUs;
    public final com.google.android.exoplayer2.util.ParsableByteArray scratch;

    public CameraMotionRenderer() {
        super(6);
        this.buffer = new com.google.android.exoplayer2.decoder.DecoderInputBuffer(1);
        this.scratch = new com.google.android.exoplayer2.util.ParsableByteArray();
    }

    private float[] parseMetadata(java.nio.ByteBuffer byteBuffer) {
        if (byteBuffer.remaining() != 16) {
            return null;
        }
        this.scratch.reset(byteBuffer.array(), byteBuffer.limit());
        this.scratch.setPosition(byteBuffer.arrayOffset() + 4);
        float[] fArr = new float[3];
        for (int i = 0; i < 3; i++) {
            fArr[i] = java.lang.Float.intBitsToFloat(this.scratch.readLittleEndianInt());
        }
        return fArr;
    }

    private void resetListener() {
        com.google.android.exoplayer2.video.spherical.CameraMotionListener cameraMotionListener = this.listener;
        if (cameraMotionListener != null) {
            cameraMotionListener.onCameraMotionReset();
        }
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public java.lang.String getName() {
        return TAG;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, java.lang.Object obj) {
        if (i == 8) {
            this.listener = (com.google.android.exoplayer2.video.spherical.CameraMotionListener) obj;
        } else {
            super.handleMessage(i, obj);
        }
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return hasReadStreamToEnd();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        resetListener();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) {
        this.lastTimestampUs = Long.MIN_VALUE;
        resetListener();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStreamChanged(com.google.android.exoplayer2.Format[] formatArr, long j, long j2) {
        this.offsetUs = j2;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) {
        while (!hasReadStreamToEnd() && this.lastTimestampUs < 100000 + j) {
            this.buffer.clear();
            if (readSource(getFormatHolder(), this.buffer, 0) != -4 || this.buffer.isEndOfStream()) {
                return;
            }
            com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer = this.buffer;
            this.lastTimestampUs = decoderInputBuffer.timeUs;
            if (this.listener != null && !decoderInputBuffer.isDecodeOnly()) {
                this.buffer.flip();
                float[] metadata = parseMetadata((java.nio.ByteBuffer) com.google.android.exoplayer2.util.Util.castNonNull(this.buffer.data));
                if (metadata != null) {
                    ((com.google.android.exoplayer2.video.spherical.CameraMotionListener) com.google.android.exoplayer2.util.Util.castNonNull(this.listener)).onCameraMotion(this.lastTimestampUs - this.offsetUs, metadata);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public int supportsFormat(com.google.android.exoplayer2.Format format) {
        return com.google.android.exoplayer2.util.MimeTypes.APPLICATION_CAMERA_MOTION.equals(format.sampleMimeType) ? 4 : 0;
    }
}
