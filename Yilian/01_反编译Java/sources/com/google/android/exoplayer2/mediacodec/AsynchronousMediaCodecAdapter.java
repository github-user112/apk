package com.google.android.exoplayer2.mediacodec;

/* loaded from: classes.dex */
public final class AsynchronousMediaCodecAdapter implements com.google.android.exoplayer2.mediacodec.MediaCodecAdapter {
    public static final int STATE_CREATED = 0;
    public static final int STATE_INITIALIZED = 1;
    public static final int STATE_SHUT_DOWN = 2;
    public final com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecCallback asynchronousMediaCodecCallback;
    public final com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer bufferEnqueuer;
    public final android.media.MediaCodec codec;
    public boolean codecReleased;
    public android.view.Surface inputSurface;
    public int state;
    public final boolean synchronizeCodecInteractionsWithQueueing;

    public static final class Factory implements com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory {
        public final e.c.b.a.k<android.os.HandlerThread> callbackThreadSupplier;
        public final e.c.b.a.k<android.os.HandlerThread> queueingThreadSupplier;
        public final boolean synchronizeCodecInteractionsWithQueueing;

        public Factory(int i) {
            this(i, false);
        }

        public Factory(final int i, boolean z) {
            this(new e.c.b.a.k() { // from class: e.c.a.a.j2.a
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecAdapter.Factory.a(i);
                }
            }, new e.c.b.a.k() { // from class: e.c.a.a.j2.b
                @Override // e.c.b.a.k
                public final java.lang.Object get() {
                    return com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecAdapter.Factory.b(i);
                }
            }, z);
        }

        public Factory(e.c.b.a.k<android.os.HandlerThread> kVar, e.c.b.a.k<android.os.HandlerThread> kVar2, boolean z) {
            this.callbackThreadSupplier = kVar;
            this.queueingThreadSupplier = kVar2;
            this.synchronizeCodecInteractionsWithQueueing = z;
        }

        public static /* synthetic */ android.os.HandlerThread a(int i) {
            return new android.os.HandlerThread(com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecAdapter.createCallbackThreadLabel(i));
        }

        public static /* synthetic */ android.os.HandlerThread b(int i) {
            return new android.os.HandlerThread(com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecAdapter.createQueueingThreadLabel(i));
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory
        public com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecAdapter createAdapter(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Configuration configuration) throws java.lang.Exception {
            android.media.MediaCodec mediaCodecCreateByCodecName;
            com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter;
            java.lang.String str = configuration.codecInfo.name;
            com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecAdapter asynchronousMediaCodecAdapter2 = null;
            try {
                java.lang.String strValueOf = java.lang.String.valueOf(str);
                com.google.android.exoplayer2.util.TraceUtil.beginSection(strValueOf.length() != 0 ? "createCodec:".concat(strValueOf) : new java.lang.String("createCodec:"));
                mediaCodecCreateByCodecName = android.media.MediaCodec.createByCodecName(str);
                try {
                    asynchronousMediaCodecAdapter = new com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecAdapter(mediaCodecCreateByCodecName, this.callbackThreadSupplier.get(), this.queueingThreadSupplier.get(), this.synchronizeCodecInteractionsWithQueueing);
                } catch (java.lang.Exception e2) {
                    e = e2;
                }
            } catch (java.lang.Exception e3) {
                e = e3;
                mediaCodecCreateByCodecName = null;
            }
            try {
                com.google.android.exoplayer2.util.TraceUtil.endSection();
                asynchronousMediaCodecAdapter.initialize(configuration.mediaFormat, configuration.surface, configuration.crypto, configuration.flags, configuration.createInputSurface);
                return asynchronousMediaCodecAdapter;
            } catch (java.lang.Exception e4) {
                e = e4;
                asynchronousMediaCodecAdapter2 = asynchronousMediaCodecAdapter;
                if (asynchronousMediaCodecAdapter2 != null) {
                    asynchronousMediaCodecAdapter2.release();
                } else if (mediaCodecCreateByCodecName != null) {
                    mediaCodecCreateByCodecName.release();
                }
                throw e;
            }
        }
    }

    public AsynchronousMediaCodecAdapter(android.media.MediaCodec mediaCodec, android.os.HandlerThread handlerThread, android.os.HandlerThread handlerThread2, boolean z) {
        this.codec = mediaCodec;
        this.asynchronousMediaCodecCallback = new com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecCallback(handlerThread);
        this.bufferEnqueuer = new com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer(mediaCodec, handlerThread2);
        this.synchronizeCodecInteractionsWithQueueing = z;
        this.state = 0;
    }

    public static java.lang.String createCallbackThreadLabel(int i) {
        return createThreadLabel(i, "ExoPlayer:MediaCodecAsyncAdapter:");
    }

    public static java.lang.String createQueueingThreadLabel(int i) {
        return createThreadLabel(i, "ExoPlayer:MediaCodecQueueingThread:");
    }

    public static java.lang.String createThreadLabel(int i, java.lang.String str) {
        java.lang.String str2;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(str);
        if (i == 1) {
            str2 = "Audio";
        } else if (i == 2) {
            str2 = "Video";
        } else {
            sb.append("Unknown(");
            sb.append(i);
            str2 = ")";
        }
        sb.append(str2);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void initialize(android.media.MediaFormat mediaFormat, android.view.Surface surface, android.media.MediaCrypto mediaCrypto, int i, boolean z) {
        this.asynchronousMediaCodecCallback.initialize(this.codec);
        com.google.android.exoplayer2.util.TraceUtil.beginSection("configureCodec");
        this.codec.configure(mediaFormat, surface, mediaCrypto, i);
        com.google.android.exoplayer2.util.TraceUtil.endSection();
        if (z) {
            this.inputSurface = this.codec.createInputSurface();
        }
        this.bufferEnqueuer.start();
        com.google.android.exoplayer2.util.TraceUtil.beginSection("startCodec");
        this.codec.start();
        com.google.android.exoplayer2.util.TraceUtil.endSection();
        this.state = 1;
    }

    private void maybeBlockOnQueueing() {
        if (this.synchronizeCodecInteractionsWithQueueing) {
            try {
                this.bufferEnqueuer.waitUntilQueueingComplete();
            } catch (java.lang.InterruptedException e2) {
                java.lang.Thread.currentThread().interrupt();
                throw new java.lang.IllegalStateException(e2);
            }
        }
    }

    public /* synthetic */ void a(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.OnFrameRenderedListener onFrameRenderedListener, android.media.MediaCodec mediaCodec, long j, long j2) {
        onFrameRenderedListener.onFrameRendered(this, j, j2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public int dequeueInputBufferIndex() {
        return this.asynchronousMediaCodecCallback.dequeueInputBufferIndex();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public int dequeueOutputBufferIndex(android.media.MediaCodec.BufferInfo bufferInfo) {
        return this.asynchronousMediaCodecCallback.dequeueOutputBufferIndex(bufferInfo);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void flush() {
        this.bufferEnqueuer.flush();
        this.codec.flush();
        com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecCallback asynchronousMediaCodecCallback = this.asynchronousMediaCodecCallback;
        final android.media.MediaCodec mediaCodec = this.codec;
        mediaCodec.getClass();
        asynchronousMediaCodecCallback.flushAsync(new java.lang.Runnable() { // from class: e.c.a.a.j2.k
            @Override // java.lang.Runnable
            public final void run() {
                mediaCodec.start();
            }
        });
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public java.nio.ByteBuffer getInputBuffer(int i) {
        return this.codec.getInputBuffer(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public android.view.Surface getInputSurface() {
        return this.inputSurface;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public java.nio.ByteBuffer getOutputBuffer(int i) {
        return this.codec.getOutputBuffer(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public android.media.MediaFormat getOutputFormat() {
        return this.asynchronousMediaCodecCallback.getOutputFormat();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public boolean needsReconfiguration() {
        return false;
    }

    public void onError(android.media.MediaCodec.CodecException codecException) {
        this.asynchronousMediaCodecCallback.onError(this.codec, codecException);
    }

    public void onOutputFormatChanged(android.media.MediaFormat mediaFormat) {
        this.asynchronousMediaCodecCallback.onOutputFormatChanged(this.codec, mediaFormat);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void queueInputBuffer(int i, int i2, int i3, long j, int i4) {
        this.bufferEnqueuer.queueInputBuffer(i, i2, i3, j, i4);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void queueSecureInputBuffer(int i, int i2, com.google.android.exoplayer2.decoder.CryptoInfo cryptoInfo, long j, int i3) {
        this.bufferEnqueuer.queueSecureInputBuffer(i, i2, cryptoInfo, j, i3);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void release() {
        try {
            if (this.state == 1) {
                this.bufferEnqueuer.shutdown();
                this.asynchronousMediaCodecCallback.shutdown();
            }
            this.state = 2;
        } finally {
            android.view.Surface surface = this.inputSurface;
            if (surface != null) {
                surface.release();
            }
            if (!this.codecReleased) {
                this.codec.release();
                this.codecReleased = true;
            }
        }
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
        maybeBlockOnQueueing();
        this.codec.setOnFrameRenderedListener(new android.media.MediaCodec.OnFrameRenderedListener() { // from class: e.c.a.a.j2.c
            @Override // android.media.MediaCodec.OnFrameRenderedListener
            public final void onFrameRendered(android.media.MediaCodec mediaCodec, long j, long j2) {
                this.a.a(onFrameRenderedListener, mediaCodec, j, j2);
            }
        }, handler);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void setOutputSurface(android.view.Surface surface) {
        maybeBlockOnQueueing();
        this.codec.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void setParameters(android.os.Bundle bundle) {
        maybeBlockOnQueueing();
        this.codec.setParameters(bundle);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void setVideoScalingMode(int i) {
        maybeBlockOnQueueing();
        this.codec.setVideoScalingMode(i);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter
    public void signalEndOfInputStream() {
        this.codec.signalEndOfInputStream();
    }
}
