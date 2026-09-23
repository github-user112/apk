package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public final class SonicAudioProcessor implements com.google.android.exoplayer2.audio.AudioProcessor {
    public static final float CLOSE_THRESHOLD = 1.0E-4f;
    public static final int MIN_BYTES_FOR_DURATION_SCALING_CALCULATION = 1024;
    public static final int SAMPLE_RATE_NO_CHANGE = -1;
    public java.nio.ByteBuffer buffer;
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat inputAudioFormat;
    public long inputBytes;
    public boolean inputEnded;
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat outputAudioFormat;
    public java.nio.ByteBuffer outputBuffer;
    public long outputBytes;
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat pendingInputAudioFormat;
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat pendingOutputAudioFormat;
    public int pendingOutputSampleRate;
    public boolean pendingSonicRecreation;
    public java.nio.ShortBuffer shortBuffer;
    public com.google.android.exoplayer2.audio.Sonic sonic;
    public float speed = 1.0f;
    public float pitch = 1.0f;

    public SonicAudioProcessor() {
        com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat = com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat.NOT_SET;
        this.pendingInputAudioFormat = audioFormat;
        this.pendingOutputAudioFormat = audioFormat;
        this.inputAudioFormat = audioFormat;
        this.outputAudioFormat = audioFormat;
        java.nio.ByteBuffer byteBuffer = com.google.android.exoplayer2.audio.AudioProcessor.EMPTY_BUFFER;
        this.buffer = byteBuffer;
        this.shortBuffer = byteBuffer.asShortBuffer();
        this.outputBuffer = com.google.android.exoplayer2.audio.AudioProcessor.EMPTY_BUFFER;
        this.pendingOutputSampleRate = -1;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat configure(com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat) throws com.google.android.exoplayer2.audio.AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.encoding != 2) {
            throw new com.google.android.exoplayer2.audio.AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        int i = this.pendingOutputSampleRate;
        if (i == -1) {
            i = audioFormat.sampleRate;
        }
        this.pendingInputAudioFormat = audioFormat;
        com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat2 = new com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat(i, audioFormat.channelCount, 2);
        this.pendingOutputAudioFormat = audioFormat2;
        this.pendingSonicRecreation = true;
        return audioFormat2;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void flush() {
        if (isActive()) {
            com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat = this.pendingInputAudioFormat;
            this.inputAudioFormat = audioFormat;
            com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat2 = this.pendingOutputAudioFormat;
            this.outputAudioFormat = audioFormat2;
            if (this.pendingSonicRecreation) {
                this.sonic = new com.google.android.exoplayer2.audio.Sonic(audioFormat.sampleRate, audioFormat.channelCount, this.speed, this.pitch, audioFormat2.sampleRate);
            } else {
                com.google.android.exoplayer2.audio.Sonic sonic = this.sonic;
                if (sonic != null) {
                    sonic.flush();
                }
            }
        }
        this.outputBuffer = com.google.android.exoplayer2.audio.AudioProcessor.EMPTY_BUFFER;
        this.inputBytes = 0L;
        this.outputBytes = 0L;
        this.inputEnded = false;
    }

    public long getMediaDuration(long j) {
        if (this.outputBytes >= android.support.v4.media.session.PlaybackStateCompat.ACTION_PLAY_FROM_MEDIA_ID) {
            long pendingInputBytes = this.inputBytes - ((com.google.android.exoplayer2.audio.Sonic) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.sonic)).getPendingInputBytes();
            int i = this.outputAudioFormat.sampleRate;
            int i2 = this.inputAudioFormat.sampleRate;
            return i == i2 ? com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(j, pendingInputBytes, this.outputBytes) : com.google.android.exoplayer2.util.Util.scaleLargeTimestamp(j, pendingInputBytes * i, this.outputBytes * i2);
        }
        double d2 = this.speed;
        double d3 = j;
        java.lang.Double.isNaN(d2);
        java.lang.Double.isNaN(d3);
        return (long) (d2 * d3);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public java.nio.ByteBuffer getOutput() {
        int outputSize;
        com.google.android.exoplayer2.audio.Sonic sonic = this.sonic;
        if (sonic != null && (outputSize = sonic.getOutputSize()) > 0) {
            if (this.buffer.capacity() < outputSize) {
                java.nio.ByteBuffer byteBufferOrder = java.nio.ByteBuffer.allocateDirect(outputSize).order(java.nio.ByteOrder.nativeOrder());
                this.buffer = byteBufferOrder;
                this.shortBuffer = byteBufferOrder.asShortBuffer();
            } else {
                this.buffer.clear();
                this.shortBuffer.clear();
            }
            sonic.getOutput(this.shortBuffer);
            this.outputBytes += outputSize;
            this.buffer.limit(outputSize);
            this.outputBuffer = this.buffer;
        }
        java.nio.ByteBuffer byteBuffer = this.outputBuffer;
        this.outputBuffer = com.google.android.exoplayer2.audio.AudioProcessor.EMPTY_BUFFER;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.pendingOutputAudioFormat.sampleRate != -1 && (java.lang.Math.abs(this.speed - 1.0f) >= 1.0E-4f || java.lang.Math.abs(this.pitch - 1.0f) >= 1.0E-4f || this.pendingOutputAudioFormat.sampleRate != this.pendingInputAudioFormat.sampleRate);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isEnded() {
        com.google.android.exoplayer2.audio.Sonic sonic;
        return this.inputEnded && ((sonic = this.sonic) == null || sonic.getOutputSize() == 0);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueEndOfStream() {
        com.google.android.exoplayer2.audio.Sonic sonic = this.sonic;
        if (sonic != null) {
            sonic.queueEndOfStream();
        }
        this.inputEnded = true;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(java.nio.ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            com.google.android.exoplayer2.audio.Sonic sonic = (com.google.android.exoplayer2.audio.Sonic) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.sonic);
            java.nio.ShortBuffer shortBufferAsShortBuffer = byteBuffer.asShortBuffer();
            int iRemaining = byteBuffer.remaining();
            this.inputBytes += iRemaining;
            sonic.queueInput(shortBufferAsShortBuffer);
            byteBuffer.position(byteBuffer.position() + iRemaining);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void reset() {
        this.speed = 1.0f;
        this.pitch = 1.0f;
        com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat = com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat.NOT_SET;
        this.pendingInputAudioFormat = audioFormat;
        this.pendingOutputAudioFormat = audioFormat;
        this.inputAudioFormat = audioFormat;
        this.outputAudioFormat = audioFormat;
        java.nio.ByteBuffer byteBuffer = com.google.android.exoplayer2.audio.AudioProcessor.EMPTY_BUFFER;
        this.buffer = byteBuffer;
        this.shortBuffer = byteBuffer.asShortBuffer();
        this.outputBuffer = com.google.android.exoplayer2.audio.AudioProcessor.EMPTY_BUFFER;
        this.pendingOutputSampleRate = -1;
        this.pendingSonicRecreation = false;
        this.sonic = null;
        this.inputBytes = 0L;
        this.outputBytes = 0L;
        this.inputEnded = false;
    }

    public void setOutputSampleRateHz(int i) {
        this.pendingOutputSampleRate = i;
    }

    public void setPitch(float f2) {
        if (this.pitch != f2) {
            this.pitch = f2;
            this.pendingSonicRecreation = true;
        }
    }

    public void setSpeed(float f2) {
        if (this.speed != f2) {
            this.speed = f2;
            this.pendingSonicRecreation = true;
        }
    }
}
