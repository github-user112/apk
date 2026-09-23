package com.google.android.exoplayer2.mediacodec;

/* loaded from: classes.dex */
public class AsynchronousMediaCodecBufferEnqueuer {
    public static final int MSG_OPEN_CV = 2;
    public static final int MSG_QUEUE_INPUT_BUFFER = 0;
    public static final int MSG_QUEUE_SECURE_INPUT_BUFFER = 1;
    public final android.media.MediaCodec codec;
    public final com.google.android.exoplayer2.util.ConditionVariable conditionVariable;
    public android.os.Handler handler;
    public final android.os.HandlerThread handlerThread;
    public final java.util.concurrent.atomic.AtomicReference<java.lang.RuntimeException> pendingRuntimeException;
    public boolean started;
    public static final java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer.MessageParams> MESSAGE_PARAMS_INSTANCE_POOL = new java.util.ArrayDeque<>();
    public static final java.lang.Object QUEUE_SECURE_LOCK = new java.lang.Object();

    public static class MessageParams {
        public final android.media.MediaCodec.CryptoInfo cryptoInfo = new android.media.MediaCodec.CryptoInfo();
        public int flags;
        public int index;
        public int offset;
        public long presentationTimeUs;
        public int size;

        public void setQueueParams(int i, int i2, int i3, long j, int i4) {
            this.index = i;
            this.offset = i2;
            this.size = i3;
            this.presentationTimeUs = j;
            this.flags = i4;
        }
    }

    public AsynchronousMediaCodecBufferEnqueuer(android.media.MediaCodec mediaCodec, android.os.HandlerThread handlerThread) {
        this(mediaCodec, handlerThread, new com.google.android.exoplayer2.util.ConditionVariable());
    }

    public AsynchronousMediaCodecBufferEnqueuer(android.media.MediaCodec mediaCodec, android.os.HandlerThread handlerThread, com.google.android.exoplayer2.util.ConditionVariable conditionVariable) {
        this.codec = mediaCodec;
        this.handlerThread = handlerThread;
        this.conditionVariable = conditionVariable;
        this.pendingRuntimeException = new java.util.concurrent.atomic.AtomicReference<>();
    }

    private void blockUntilHandlerThreadIsIdle() {
        this.conditionVariable.close();
        ((android.os.Handler) com.google.android.exoplayer2.util.Util.castNonNull(this.handler)).obtainMessage(2).sendToTarget();
        this.conditionVariable.block();
    }

    public static void copy(com.google.android.exoplayer2.decoder.CryptoInfo cryptoInfo, android.media.MediaCodec.CryptoInfo cryptoInfo2) {
        cryptoInfo2.numSubSamples = cryptoInfo.numSubSamples;
        cryptoInfo2.numBytesOfClearData = copy(cryptoInfo.numBytesOfClearData, cryptoInfo2.numBytesOfClearData);
        cryptoInfo2.numBytesOfEncryptedData = copy(cryptoInfo.numBytesOfEncryptedData, cryptoInfo2.numBytesOfEncryptedData);
        cryptoInfo2.key = (byte[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(copy(cryptoInfo.key, cryptoInfo2.key));
        cryptoInfo2.iv = (byte[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(copy(cryptoInfo.iv, cryptoInfo2.iv));
        cryptoInfo2.mode = cryptoInfo.mode;
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 24) {
            cryptoInfo2.setPattern(new android.media.MediaCodec.CryptoInfo.Pattern(cryptoInfo.encryptedBlocks, cryptoInfo.clearBlocks));
        }
    }

    public static byte[] copy(byte[] bArr, byte[] bArr2) {
        if (bArr == null) {
            return bArr2;
        }
        if (bArr2 == null || bArr2.length < bArr.length) {
            return java.util.Arrays.copyOf(bArr, bArr.length);
        }
        java.lang.System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static int[] copy(int[] iArr, int[] iArr2) {
        if (iArr == null) {
            return iArr2;
        }
        if (iArr2 == null || iArr2.length < iArr.length) {
            return java.util.Arrays.copyOf(iArr, iArr.length);
        }
        java.lang.System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doHandleMessage(android.os.Message message) throws android.media.MediaCodec.CryptoException {
        com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer.MessageParams messageParams;
        int i = message.what;
        if (i == 0) {
            messageParams = (com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer.MessageParams) message.obj;
            doQueueInputBuffer(messageParams.index, messageParams.offset, messageParams.size, messageParams.presentationTimeUs, messageParams.flags);
        } else if (i != 1) {
            if (i != 2) {
                setPendingRuntimeException(new java.lang.IllegalStateException(java.lang.String.valueOf(message.what)));
            } else {
                this.conditionVariable.open();
            }
            messageParams = null;
        } else {
            messageParams = (com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer.MessageParams) message.obj;
            doQueueSecureInputBuffer(messageParams.index, messageParams.offset, messageParams.cryptoInfo, messageParams.presentationTimeUs, messageParams.flags);
        }
        if (messageParams != null) {
            recycleMessageParams(messageParams);
        }
    }

    private void doQueueInputBuffer(int i, int i2, int i3, long j, int i4) throws android.media.MediaCodec.CryptoException {
        try {
            this.codec.queueInputBuffer(i, i2, i3, j, i4);
        } catch (java.lang.RuntimeException e2) {
            setPendingRuntimeException(e2);
        }
    }

    private void doQueueSecureInputBuffer(int i, int i2, android.media.MediaCodec.CryptoInfo cryptoInfo, long j, int i3) {
        try {
            synchronized (QUEUE_SECURE_LOCK) {
                this.codec.queueSecureInputBuffer(i, i2, cryptoInfo, j, i3);
            }
        } catch (java.lang.RuntimeException e2) {
            setPendingRuntimeException(e2);
        }
    }

    private void flushHandlerThread() {
        ((android.os.Handler) com.google.android.exoplayer2.util.Util.castNonNull(this.handler)).removeCallbacksAndMessages(null);
        blockUntilHandlerThreadIsIdle();
        maybeThrowException();
    }

    public static com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer.MessageParams getMessageParams() {
        synchronized (MESSAGE_PARAMS_INSTANCE_POOL) {
            if (MESSAGE_PARAMS_INSTANCE_POOL.isEmpty()) {
                return new com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer.MessageParams();
            }
            return MESSAGE_PARAMS_INSTANCE_POOL.removeFirst();
        }
    }

    private void maybeThrowException() {
        java.lang.RuntimeException andSet = this.pendingRuntimeException.getAndSet(null);
        if (andSet != null) {
            throw andSet;
        }
    }

    public static void recycleMessageParams(com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer.MessageParams messageParams) {
        synchronized (MESSAGE_PARAMS_INSTANCE_POOL) {
            MESSAGE_PARAMS_INSTANCE_POOL.add(messageParams);
        }
    }

    public void flush() {
        if (this.started) {
            try {
                flushHandlerThread();
            } catch (java.lang.InterruptedException e2) {
                java.lang.Thread.currentThread().interrupt();
                throw new java.lang.IllegalStateException(e2);
            }
        }
    }

    public void queueInputBuffer(int i, int i2, int i3, long j, int i4) {
        maybeThrowException();
        com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer.MessageParams messageParams = getMessageParams();
        messageParams.setQueueParams(i, i2, i3, j, i4);
        ((android.os.Handler) com.google.android.exoplayer2.util.Util.castNonNull(this.handler)).obtainMessage(0, messageParams).sendToTarget();
    }

    public void queueSecureInputBuffer(int i, int i2, com.google.android.exoplayer2.decoder.CryptoInfo cryptoInfo, long j, int i3) {
        maybeThrowException();
        com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer.MessageParams messageParams = getMessageParams();
        messageParams.setQueueParams(i, i2, 0, j, i3);
        copy(cryptoInfo, messageParams.cryptoInfo);
        ((android.os.Handler) com.google.android.exoplayer2.util.Util.castNonNull(this.handler)).obtainMessage(1, messageParams).sendToTarget();
    }

    public void setPendingRuntimeException(java.lang.RuntimeException runtimeException) {
        this.pendingRuntimeException.set(runtimeException);
    }

    public void shutdown() {
        if (this.started) {
            flush();
            this.handlerThread.quit();
        }
        this.started = false;
    }

    public void start() {
        if (this.started) {
            return;
        }
        this.handlerThread.start();
        this.handler = new android.os.Handler(this.handlerThread.getLooper()) { // from class: com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer.1
            @Override // android.os.Handler
            public void handleMessage(android.os.Message message) throws android.media.MediaCodec.CryptoException {
                com.google.android.exoplayer2.mediacodec.AsynchronousMediaCodecBufferEnqueuer.this.doHandleMessage(message);
            }
        };
        this.started = true;
    }

    public void waitUntilQueueingComplete() {
        blockUntilHandlerThreadIsIdle();
    }
}
