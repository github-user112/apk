package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public final class SilenceSkippingAudioProcessor extends com.google.android.exoplayer2.audio.BaseAudioProcessor {
    public static final long DEFAULT_MINIMUM_SILENCE_DURATION_US = 150000;
    public static final long DEFAULT_PADDING_SILENCE_US = 20000;
    public static final short DEFAULT_SILENCE_THRESHOLD_LEVEL = 1024;
    public static final int STATE_MAYBE_SILENT = 1;
    public static final int STATE_NOISY = 0;
    public static final int STATE_SILENT = 2;
    public int bytesPerFrame;
    public boolean enabled;
    public boolean hasOutputNoise;
    public byte[] maybeSilenceBuffer;
    public int maybeSilenceBufferSize;
    public final long minimumSilenceDurationUs;
    public byte[] paddingBuffer;
    public final long paddingSilenceUs;
    public int paddingSize;
    public final short silenceThresholdLevel;
    public long skippedFrames;
    public int state;

    public SilenceSkippingAudioProcessor() {
        this(DEFAULT_MINIMUM_SILENCE_DURATION_US, DEFAULT_PADDING_SILENCE_US, DEFAULT_SILENCE_THRESHOLD_LEVEL);
    }

    public SilenceSkippingAudioProcessor(long j, long j2, short s) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(j2 <= j);
        this.minimumSilenceDurationUs = j;
        this.paddingSilenceUs = j2;
        this.silenceThresholdLevel = s;
        byte[] bArr = com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
        this.maybeSilenceBuffer = bArr;
        this.paddingBuffer = bArr;
    }

    private int durationUsToFrames(long j) {
        return (int) ((j * this.inputAudioFormat.sampleRate) / 1000000);
    }

    private int findNoiseLimit(java.nio.ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        do {
            iLimit -= 2;
            if (iLimit < byteBuffer.position()) {
                return byteBuffer.position();
            }
        } while (java.lang.Math.abs((int) byteBuffer.getShort(iLimit)) <= this.silenceThresholdLevel);
        int i = this.bytesPerFrame;
        return ((iLimit / i) * i) + i;
    }

    private int findNoisePosition(java.nio.ByteBuffer byteBuffer) {
        for (int iPosition = byteBuffer.position(); iPosition < byteBuffer.limit(); iPosition += 2) {
            if (java.lang.Math.abs((int) byteBuffer.getShort(iPosition)) > this.silenceThresholdLevel) {
                int i = this.bytesPerFrame;
                return (iPosition / i) * i;
            }
        }
        return byteBuffer.limit();
    }

    private void output(java.nio.ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        replaceOutputBuffer(iRemaining).put(byteBuffer).flip();
        if (iRemaining > 0) {
            this.hasOutputNoise = true;
        }
    }

    private void output(byte[] bArr, int i) {
        replaceOutputBuffer(i).put(bArr, 0, i).flip();
        if (i > 0) {
            this.hasOutputNoise = true;
        }
    }

    private void processMaybeSilence(java.nio.ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        int iFindNoisePosition = findNoisePosition(byteBuffer);
        int iPosition = iFindNoisePosition - byteBuffer.position();
        byte[] bArr = this.maybeSilenceBuffer;
        int length = bArr.length;
        int i = this.maybeSilenceBufferSize;
        int i2 = length - i;
        if (iFindNoisePosition < iLimit && iPosition < i2) {
            output(bArr, i);
            this.maybeSilenceBufferSize = 0;
            this.state = 0;
            return;
        }
        int iMin = java.lang.Math.min(iPosition, i2);
        byteBuffer.limit(byteBuffer.position() + iMin);
        byteBuffer.get(this.maybeSilenceBuffer, this.maybeSilenceBufferSize, iMin);
        int i3 = this.maybeSilenceBufferSize + iMin;
        this.maybeSilenceBufferSize = i3;
        byte[] bArr2 = this.maybeSilenceBuffer;
        if (i3 == bArr2.length) {
            if (this.hasOutputNoise) {
                output(bArr2, this.paddingSize);
                this.skippedFrames += (this.maybeSilenceBufferSize - (this.paddingSize * 2)) / this.bytesPerFrame;
            } else {
                this.skippedFrames += (i3 - this.paddingSize) / this.bytesPerFrame;
            }
            updatePaddingBuffer(byteBuffer, this.maybeSilenceBuffer, this.maybeSilenceBufferSize);
            this.maybeSilenceBufferSize = 0;
            this.state = 2;
        }
        byteBuffer.limit(iLimit);
    }

    private void processNoisy(java.nio.ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        byteBuffer.limit(java.lang.Math.min(iLimit, byteBuffer.position() + this.maybeSilenceBuffer.length));
        int iFindNoiseLimit = findNoiseLimit(byteBuffer);
        if (iFindNoiseLimit == byteBuffer.position()) {
            this.state = 1;
        } else {
            byteBuffer.limit(iFindNoiseLimit);
            output(byteBuffer);
        }
        byteBuffer.limit(iLimit);
    }

    private void processSilence(java.nio.ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit();
        int iFindNoisePosition = findNoisePosition(byteBuffer);
        byteBuffer.limit(iFindNoisePosition);
        this.skippedFrames += byteBuffer.remaining() / this.bytesPerFrame;
        updatePaddingBuffer(byteBuffer, this.paddingBuffer, this.paddingSize);
        if (iFindNoisePosition < iLimit) {
            output(this.paddingBuffer, this.paddingSize);
            this.state = 0;
            byteBuffer.limit(iLimit);
        }
    }

    private void updatePaddingBuffer(java.nio.ByteBuffer byteBuffer, byte[] bArr, int i) {
        int iMin = java.lang.Math.min(byteBuffer.remaining(), this.paddingSize);
        int i2 = this.paddingSize - iMin;
        java.lang.System.arraycopy(bArr, i - i2, this.paddingBuffer, 0, i2);
        byteBuffer.position(byteBuffer.limit() - iMin);
        byteBuffer.get(this.paddingBuffer, i2, iMin);
    }

    public long getSkippedFrames() {
        return this.skippedFrames;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor, com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.enabled;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat onConfigure(com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat) throws com.google.android.exoplayer2.audio.AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.encoding == 2) {
            return this.enabled ? audioFormat : com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat.NOT_SET;
        }
        throw new com.google.android.exoplayer2.audio.AudioProcessor.UnhandledAudioFormatException(audioFormat);
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onFlush() {
        if (this.enabled) {
            this.bytesPerFrame = this.inputAudioFormat.bytesPerFrame;
            int iDurationUsToFrames = durationUsToFrames(this.minimumSilenceDurationUs) * this.bytesPerFrame;
            if (this.maybeSilenceBuffer.length != iDurationUsToFrames) {
                this.maybeSilenceBuffer = new byte[iDurationUsToFrames];
            }
            int iDurationUsToFrames2 = durationUsToFrames(this.paddingSilenceUs) * this.bytesPerFrame;
            this.paddingSize = iDurationUsToFrames2;
            if (this.paddingBuffer.length != iDurationUsToFrames2) {
                this.paddingBuffer = new byte[iDurationUsToFrames2];
            }
        }
        this.state = 0;
        this.skippedFrames = 0L;
        this.maybeSilenceBufferSize = 0;
        this.hasOutputNoise = false;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onQueueEndOfStream() {
        int i = this.maybeSilenceBufferSize;
        if (i > 0) {
            output(this.maybeSilenceBuffer, i);
        }
        if (this.hasOutputNoise) {
            return;
        }
        this.skippedFrames += this.paddingSize / this.bytesPerFrame;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onReset() {
        this.enabled = false;
        this.paddingSize = 0;
        byte[] bArr = com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
        this.maybeSilenceBuffer = bArr;
        this.paddingBuffer = bArr;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(java.nio.ByteBuffer byteBuffer) {
        while (byteBuffer.hasRemaining() && !hasPendingOutput()) {
            int i = this.state;
            if (i == 0) {
                processNoisy(byteBuffer);
            } else if (i == 1) {
                processMaybeSilence(byteBuffer);
            } else {
                if (i != 2) {
                    throw new java.lang.IllegalStateException();
                }
                processSilence(byteBuffer);
            }
        }
    }

    public void setEnabled(boolean z) {
        this.enabled = z;
    }
}
