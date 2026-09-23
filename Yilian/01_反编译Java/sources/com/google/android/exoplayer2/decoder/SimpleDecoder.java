package com.google.android.exoplayer2.decoder;

/* loaded from: classes.dex */
public abstract class SimpleDecoder<I extends com.google.android.exoplayer2.decoder.DecoderInputBuffer, O extends com.google.android.exoplayer2.decoder.DecoderOutputBuffer, E extends com.google.android.exoplayer2.decoder.DecoderException> implements com.google.android.exoplayer2.decoder.Decoder<I, O, E> {
    public int availableInputBufferCount;
    public final I[] availableInputBuffers;
    public int availableOutputBufferCount;
    public final O[] availableOutputBuffers;
    public final java.lang.Thread decodeThread;
    public I dequeuedInputBuffer;
    public E exception;
    public boolean flushed;
    public final java.lang.Object lock = new java.lang.Object();
    public final java.util.ArrayDeque<I> queuedInputBuffers = new java.util.ArrayDeque<>();
    public final java.util.ArrayDeque<O> queuedOutputBuffers = new java.util.ArrayDeque<>();
    public boolean released;
    public int skippedOutputBufferCount;

    public SimpleDecoder(I[] iArr, O[] oArr) {
        this.availableInputBuffers = iArr;
        this.availableInputBufferCount = iArr.length;
        for (int i = 0; i < this.availableInputBufferCount; i++) {
            ((I[]) this.availableInputBuffers)[i] = createInputBuffer();
        }
        this.availableOutputBuffers = oArr;
        this.availableOutputBufferCount = oArr.length;
        for (int i2 = 0; i2 < this.availableOutputBufferCount; i2++) {
            ((O[]) this.availableOutputBuffers)[i2] = createOutputBuffer();
        }
        java.lang.Thread thread = new java.lang.Thread("ExoPlayer:SimpleDecoder") { // from class: com.google.android.exoplayer2.decoder.SimpleDecoder.1
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                com.google.android.exoplayer2.decoder.SimpleDecoder.this.run();
            }
        };
        this.decodeThread = thread;
        thread.start();
    }

    private boolean canDecodeBuffer() {
        return !this.queuedInputBuffers.isEmpty() && this.availableOutputBufferCount > 0;
    }

    private boolean decode() {
        E e2;
        synchronized (this.lock) {
            while (!this.released && !canDecodeBuffer()) {
                this.lock.wait();
            }
            if (this.released) {
                return false;
            }
            I iRemoveFirst = this.queuedInputBuffers.removeFirst();
            O[] oArr = this.availableOutputBuffers;
            int i = this.availableOutputBufferCount - 1;
            this.availableOutputBufferCount = i;
            O o = oArr[i];
            boolean z = this.flushed;
            this.flushed = false;
            if (iRemoveFirst.isEndOfStream()) {
                o.addFlag(4);
            } else {
                if (iRemoveFirst.isDecodeOnly()) {
                    o.addFlag(Integer.MIN_VALUE);
                }
                try {
                    e2 = (E) decode(iRemoveFirst, o, z);
                } catch (java.lang.OutOfMemoryError | java.lang.RuntimeException e3) {
                    e2 = (E) createUnexpectedDecodeException(e3);
                }
                if (e2 != null) {
                    synchronized (this.lock) {
                        this.exception = e2;
                    }
                    return false;
                }
            }
            synchronized (this.lock) {
                if (this.flushed) {
                    o.release();
                    releaseInputBufferInternal(iRemoveFirst);
                } else if (o.isDecodeOnly()) {
                    this.skippedOutputBufferCount++;
                    o.release();
                    releaseInputBufferInternal(iRemoveFirst);
                } else {
                    o.skippedOutputBufferCount = this.skippedOutputBufferCount;
                    this.skippedOutputBufferCount = 0;
                    this.queuedOutputBuffers.addLast(o);
                    releaseInputBufferInternal(iRemoveFirst);
                }
            }
            return true;
        }
    }

    private void maybeNotifyDecodeLoop() {
        if (canDecodeBuffer()) {
            this.lock.notify();
        }
    }

    /* JADX INFO: Thrown type has an unknown type hierarchy: E extends com.google.android.exoplayer2.decoder.DecoderException */
    private void maybeThrowException() throws E {
        E e2 = this.exception;
        if (e2 != null) {
            throw e2;
        }
    }

    private void releaseInputBufferInternal(I i) {
        i.clear();
        I[] iArr = this.availableInputBuffers;
        int i2 = this.availableInputBufferCount;
        this.availableInputBufferCount = i2 + 1;
        iArr[i2] = i;
    }

    private void releaseOutputBufferInternal(O o) {
        o.clear();
        O[] oArr = this.availableOutputBuffers;
        int i = this.availableOutputBufferCount;
        this.availableOutputBufferCount = i + 1;
        oArr[i] = o;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void run() {
        do {
            try {
            } catch (java.lang.InterruptedException e2) {
                throw new java.lang.IllegalStateException(e2);
            }
        } while (decode());
    }

    public abstract I createInputBuffer();

    public abstract O createOutputBuffer();

    public abstract E createUnexpectedDecodeException(java.lang.Throwable th);

    public abstract E decode(I i, O o, boolean z);

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public final I dequeueInputBuffer() {
        I i;
        synchronized (this.lock) {
            maybeThrowException();
            com.google.android.exoplayer2.util.Assertions.checkState(this.dequeuedInputBuffer == null);
            if (this.availableInputBufferCount == 0) {
                i = null;
            } else {
                I[] iArr = this.availableInputBuffers;
                int i2 = this.availableInputBufferCount - 1;
                this.availableInputBufferCount = i2;
                i = iArr[i2];
            }
            this.dequeuedInputBuffer = i;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public final O dequeueOutputBuffer() {
        synchronized (this.lock) {
            maybeThrowException();
            if (this.queuedOutputBuffers.isEmpty()) {
                return null;
            }
            return this.queuedOutputBuffers.removeFirst();
        }
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public final void flush() {
        synchronized (this.lock) {
            this.flushed = true;
            this.skippedOutputBufferCount = 0;
            if (this.dequeuedInputBuffer != null) {
                releaseInputBufferInternal(this.dequeuedInputBuffer);
                this.dequeuedInputBuffer = null;
            }
            while (!this.queuedInputBuffers.isEmpty()) {
                releaseInputBufferInternal(this.queuedInputBuffers.removeFirst());
            }
            while (!this.queuedOutputBuffers.isEmpty()) {
                this.queuedOutputBuffers.removeFirst().release();
            }
        }
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public final void queueInputBuffer(I i) {
        synchronized (this.lock) {
            maybeThrowException();
            com.google.android.exoplayer2.util.Assertions.checkArgument(i == this.dequeuedInputBuffer);
            this.queuedInputBuffers.addLast(i);
            maybeNotifyDecodeLoop();
            this.dequeuedInputBuffer = null;
        }
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void release() throws java.lang.InterruptedException {
        synchronized (this.lock) {
            this.released = true;
            this.lock.notify();
        }
        try {
            this.decodeThread.join();
        } catch (java.lang.InterruptedException unused) {
            java.lang.Thread.currentThread().interrupt();
        }
    }

    public void releaseOutputBuffer(O o) {
        synchronized (this.lock) {
            releaseOutputBufferInternal(o);
            maybeNotifyDecodeLoop();
        }
    }

    public final void setInitialInputBufferSize(int i) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.availableInputBufferCount == this.availableInputBuffers.length);
        for (I i2 : this.availableInputBuffers) {
            i2.ensureSpaceForWrite(i);
        }
    }
}
