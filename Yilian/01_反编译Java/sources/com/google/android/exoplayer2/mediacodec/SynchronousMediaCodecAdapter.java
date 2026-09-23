package com.google.android.exoplayer2.mediacodec;

/* loaded from: classes.dex */
public class SynchronousMediaCodecAdapter implements com.google.android.exoplayer2.mediacodec.MediaCodecAdapter {
    public final android.media.MediaCodec codec;
    public java.nio.ByteBuffer[] inputByteBuffers;
    public final android.view.Surface inputSurface;
    public java.nio.ByteBuffer[] outputByteBuffers;

    public static final class Api18 {
        public static android.view.Surface createCodecInputSurface(android.media.MediaCodec mediaCodec) {
            return mediaCodec.createInputSurface();
        }

        public static void signalEndOfInputStream(android.media.MediaCodec mediaCodec) {
            mediaCodec.signalEndOfInputStream();
        }
    }

    public static class Factory implements com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.exoplayer2.mediacodec.SynchronousMediaCodecAdapter$1] */
        /* JADX WARN: Type inference failed for: r0v1, types: [android.view.Surface] */
        /* JADX WARN: Type inference failed for: r0v3 */
        /* JADX WARN: Type inference failed for: r0v4 */
        /* JADX WARN: Type inference failed for: r0v5 */
        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory
        public com.google.android.exoplayer2.mediacodec.MediaCodecAdapter createAdapter(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Configuration configuration) throws java.lang.Throwable {
            android.media.MediaCodec mediaCodecCreateCodec;
            android.view.Surface surfaceCreateCodecInputSurface;
            ?? r0 = 0;
            r0 = 0;
            r0 = 0;
            try {
                mediaCodecCreateCodec = createCodec(configuration);
                try {
                    com.google.android.exoplayer2.util.TraceUtil.beginSection("configureCodec");
                    mediaCodecCreateCodec.configure(configuration.mediaFormat, configuration.surface, configuration.crypto, configuration.flags);
                    com.google.android.exoplayer2.util.TraceUtil.endSection();
                    if (!configuration.createInputSurface) {
                        surfaceCreateCodecInputSurface = null;
                    } else {
                        if (com.google.android.exoplayer2.util.Util.SDK_INT < 18) {
                            throw new java.lang.IllegalStateException("Encoding from a surface is only supported on API 18 and up.");
                        }
                        surfaceCreateCodecInputSurface = com.google.android.exoplayer2.mediacodec.SynchronousMediaCodecAdapter.Api18.createCodecInputSurface(mediaCodecCreateCodec);
                    }
                } catch (java.io.IOException e2) {
                    e = e2;
                } catch (java.lang.RuntimeException e3) {
                    e = e3;
                }
                try {
                    com.google.android.exoplayer2.util.TraceUtil.beginSection("startCodec");
                    mediaCodecCreateCodec.start();
                    com.google.android.exoplayer2.util.TraceUtil.endSection();
                    return new com.google.android.exoplayer2.mediacodec.SynchronousMediaCodecAdapter(mediaCodecCreateCodec, surfaceCreateCodecInputSurface);
                } catch (java.io.IOException | java.lang.RuntimeException e4) {
                    r0 = surfaceCreateCodecInputSurface;
                    e = e4;
                    if (r0 != 0) {
                        r0.release();
                    }
                    if (mediaCodecCreateCodec != null) {
                        mediaCodecCreateCodec.release();
                    }
                    throw e;
                }
            } catch (java.io.IOException | java.lang.RuntimeException e5) {
                e = e5;
                mediaCodecCreateCodec = null;
            }
        }

        public android.media.MediaCodec createCodec(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Configuration configuration) throws java.io.IOException {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(configuration.codecInfo);
            java.lang.String str = configuration.codecInfo.name;
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.TraceUtil.beginSection(strValueOf.length() != 0 ? "createCodec:".concat(strValueOf) : new java.lang.String("createCodec:"));
            android.media.MediaCodec mediaCodecCreateByCodecName = android.media.MediaCodec.createByCodecName(str);
            com.google.android.exoplayer2.util.TraceUtil.endSection();
            return mediaCodecCreateByCodecName;
        }
    }

    public SynchronousMediaCodecAdapter(android.media.MediaCodec mediaCodec, android.view.Surface surface) {
        this.codec = mediaCodec;
        this.inputSurface = surface;
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 21) {
            this.inputByteBuffers = mediaCodec.getInputBuffers();
            this.outputByteBuffers = this.codec.getOutputBuffers();
        }
    }

    public /* synthetic */ void a(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, android.media.MediaCodec mediaCodec, long j, long j2) {
        onFrameRenderedListener.onFrameRendered(this, j, j2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public int dequeueInputBufferIndex() {
        return this.codec.dequeueInputBuffer(0L);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public int dequeueOutputBufferIndex(android.media.MediaCodec.BufferInfo bufferInfo) {
        int iDequeueOutputBuffer;
        do {
            iDequeueOutputBuffer = this.codec.dequeueOutputBuffer(bufferInfo, 0L);
            if (iDequeueOutputBuffer == -3 && com.google.android.exoplayer2.util.Util.SDK_INT < 21) {
                this.outputByteBuffers = this.codec.getOutputBuffers();
            }
        } while (iDequeueOutputBuffer == -3);
        return iDequeueOutputBuffer;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void flush() {
        this.codec.flush();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public java.nio.ByteBuffer getInputBuffer(int i) {
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 21 ? this.codec.getInputBuffer(i) : ((java.nio.ByteBuffer[]) com.google.android.exoplayer2.util.Util.castNonNull(this.inputByteBuffers))[i];
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public android.view.Surface getInputSurface() {
        return this.inputSurface;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public java.nio.ByteBuffer getOutputBuffer(int i) {
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 21 ? this.codec.getOutputBuffer(i) : ((java.nio.ByteBuffer[]) com.google.android.exoplayer2.util.Util.castNonNull(this.outputByteBuffers))[i];
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public android.media.MediaFormat getOutputFormat() {
        return this.codec.getOutputFormat();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public boolean needsReconfiguration() {
        return false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void queueInputBuffer(int i, int i2, int i3, long j, int i4) throws android.media.MediaCodec.CryptoException {
        this.codec.queueInputBuffer(i, i2, i3, j, i4);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void queueSecureInputBuffer(int i, int i2, com.google.android.exoplayer2.decoder.CryptoInfo cryptoInfo, long j, int i3) throws android.media.MediaCodec.CryptoException {
        this.codec.queueSecureInputBuffer(i, i2, cryptoInfo.getFrameworkCryptoInfo(), j, i3);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void release() {
        this.inputByteBuffers = null;
        this.outputByteBuffers = null;
        android.view.Surface surface = this.inputSurface;
        if (surface != null) {
            surface.release();
        }
        this.codec.release();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void releaseOutputBuffer(int i, long j) {
        this.codec.releaseOutputBuffer(i, j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void releaseOutputBuffer(int i, boolean z) {
        this.codec.releaseOutputBuffer(i, z);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void setOnFrameRenderedListener(final com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, android.os.Handler handler) {
        this.codec.setOnFrameRenderedListener(new android.media.MediaCodec.OnFrameRenderedListener() { // from class: e.c.a.a.j2.i
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(android.media.MediaCodec mediaCodec, long j, long j2) {
                this.a.a(onFrameRenderedListener, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void setOutputSurface(android.view.Surface surface) {
        this.codec.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void setParameters(android.os.Bundle bundle) {
        this.codec.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void setVideoScalingMode(int i) {
        this.codec.setVideoScalingMode(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void signalEndOfInputStream() {
        com.google.android.exoplayer2.mediacodec.SynchronousMediaCodecAdapter.Api18.signalEndOfInputStream(this.codec);
    }
}
