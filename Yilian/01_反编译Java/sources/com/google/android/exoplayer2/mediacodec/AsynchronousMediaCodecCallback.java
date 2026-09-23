package com.google.android.exoplayer2.mediacodec;

/* loaded from: classes.dex */
public final class AsynchronousMediaCodecCallback extends android.media.MediaCodec.Callback {
    public final android.os.HandlerThread callbackThread;
    public android.media.MediaFormat currentFormat;
    public android.os.Handler handler;
    public java.lang.IllegalStateException internalException;
    public android.media.MediaCodec.CodecException mediaCodecException;
    public long pendingFlushCount;
    public android.media.MediaFormat pendingOutputFormat;
    public boolean shutDown;
    public final java.lang.Object lock = new java.lang.Object();
    public final com.google.android.exoplayer2.mediacodec.IntArrayQueue availableInputBuffers = new com.google.android.exoplayer2.mediacodec.IntArrayQueue();
    public final com.google.android.exoplayer2.mediacodec.IntArrayQueue availableOutputBuffers = new com.google.android.exoplayer2.mediacodec.IntArrayQueue();
    public final java.util.ArrayDeque<android.media.MediaCodec.BufferInfo> bufferInfos = new java.util.ArrayDeque<>();
    public final java.util.ArrayDeque<android.media.MediaFormat> formats = new java.util.ArrayDeque<>();

    public AsynchronousMediaCodecCallback(android.os.HandlerThread handlerThread) {
        this.callbackThread = handlerThread;
    }

    private void addOutputFormat(android.media.MediaFormat mediaFormat) {
        this.availableOutputBuffers.add(-2);
        this.formats.add(mediaFormat);
    }

    private void flushInternal() {
        if (!this.formats.isEmpty()) {
            this.pendingOutputFormat = this.formats.getLast();
        }
        this.availableInputBuffers.clear();
        this.availableOutputBuffers.clear();
        this.bufferInfos.clear();
        this.formats.clear();
        this.mediaCodecException = null;
    }

    private boolean isFlushingOrShutdown() {
        return this.pendingFlushCount > 0 || this.shutDown;
    }

    private void maybeThrowException() {
        maybeThrowInternalException();
        maybeThrowMediaCodecException();
    }

    private void maybeThrowInternalException() {
        java.lang.IllegalStateException illegalStateException = this.internalException;
        if (illegalStateException == null) {
            return;
        }
        this.internalException = null;
        throw illegalStateException;
    }

    private void maybeThrowMediaCodecException() {
        android.media.MediaCodec.CodecException codecException = this.mediaCodecException;
        if (codecException == null) {
            return;
        }
        this.mediaCodecException = null;
        throw codecException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: onFlushCompleted, reason: merged with bridge method [inline-methods] */
    public void a(java.lang.Runnable runnable) {
        synchronized (this.lock) {
            onFlushCompletedSynchronized(runnable);
        }
    }

    private void onFlushCompletedSynchronized(java.lang.Runnable runnable) {
        if (this.shutDown) {
            return;
        }
        long j = this.pendingFlushCount - 1;
        this.pendingFlushCount = j;
        if (j > 0) {
            return;
        }
        if (j < 0) {
            setInternalException(new java.lang.IllegalStateException());
            return;
        }
        flushInternal();
        try {
            runnable.run();
        } catch (java.lang.IllegalStateException e2) {
            setInternalException(e2);
        } catch (java.lang.Exception e3) {
            setInternalException(new java.lang.IllegalStateException(e3));
        }
    }

    private void setInternalException(java.lang.IllegalStateException illegalStateException) {
        synchronized (this.lock) {
            this.internalException = illegalStateException;
        }
    }

    public int dequeueInputBufferIndex() {
        synchronized (this.lock) {
            int iRemove = -1;
            if (isFlushingOrShutdown()) {
                return -1;
            }
            maybeThrowException();
            if (!this.availableInputBuffers.isEmpty()) {
                iRemove = this.availableInputBuffers.remove();
            }
            return iRemove;
        }
    }

    public int dequeueOutputBufferIndex(android.media.MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.lock) {
            if (isFlushingOrShutdown()) {
                return -1;
            }
            maybeThrowException();
            if (this.availableOutputBuffers.isEmpty()) {
                return -1;
            }
            int iRemove = this.availableOutputBuffers.remove();
            if (iRemove >= 0) {
                com.google.android.exoplayer2.util.Assertions.checkStateNotNull(this.currentFormat);
                android.media.MediaCodec.BufferInfo bufferInfoRemove = this.bufferInfos.remove();
                bufferInfo.set(bufferInfoRemove.offset, bufferInfoRemove.size, bufferInfoRemove.presentationTimeUs, bufferInfoRemove.flags);
            } else if (iRemove == -2) {
                this.currentFormat = this.formats.remove();
            }
            return iRemove;
        }
    }

    public void flushAsync(final java.lang.Runnable runnable) {
        synchronized (this.lock) {
            this.pendingFlushCount++;
            ((android.os.Handler) com.google.android.exoplayer2.util.Util.castNonNull(this.handler)).post(new java.lang.Runnable() { // from class: e.c.a.a.j2.d
                @Override // java.lang.Runnable
                public final void run() {
                    this.a.a(runnable);
                }
            });
        }
    }

    public android.media.MediaFormat getOutputFormat() {
        android.media.MediaFormat mediaFormat;
        synchronized (this.lock) {
            if (this.currentFormat == null) {
                throw new java.lang.IllegalStateException();
            }
            mediaFormat = this.currentFormat;
        }
        return mediaFormat;
    }

    public void initialize(android.media.MediaCodec mediaCodec) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.handler == null);
        this.callbackThread.start();
        android.os.Handler handler = new android.os.Handler(this.callbackThread.getLooper());
        mediaCodec.setCallback(this, handler);
        this.handler = handler;
    }

    @Override // android.media.MediaCodec.Callback
    public void onError(android.media.MediaCodec mediaCodec, android.media.MediaCodec.CodecException codecException) {
        synchronized (this.lock) {
            this.mediaCodecException = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onInputBufferAvailable(android.media.MediaCodec mediaCodec, int i) {
        synchronized (this.lock) {
            this.availableInputBuffers.add(i);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputBufferAvailable(android.media.MediaCodec mediaCodec, int i, android.media.MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.lock) {
            if (this.pendingOutputFormat != null) {
                addOutputFormat(this.pendingOutputFormat);
                this.pendingOutputFormat = null;
            }
            this.availableOutputBuffers.add(i);
            this.bufferInfos.add(bufferInfo);
        }
    }

    @Override // android.media.MediaCodec.Callback
    public void onOutputFormatChanged(android.media.MediaCodec mediaCodec, android.media.MediaFormat mediaFormat) {
        synchronized (this.lock) {
            addOutputFormat(mediaFormat);
            this.pendingOutputFormat = null;
        }
    }

    public void shutdown() {
        synchronized (this.lock) {
            this.shutDown = true;
            this.callbackThread.quit();
            flushInternal();
        }
    }
}
