package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public abstract class BaseAudioProcessor implements com.google.android.exoplayer2.audio.AudioProcessor {
    public java.nio.ByteBuffer buffer;
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat inputAudioFormat;
    public boolean inputEnded;
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat outputAudioFormat;
    public java.nio.ByteBuffer outputBuffer;
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat pendingInputAudioFormat;
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat pendingOutputAudioFormat;

    public BaseAudioProcessor() {
        java.nio.ByteBuffer byteBuffer = com.google.android.exoplayer2.audio.AudioProcessor.EMPTY_BUFFER;
        this.buffer = byteBuffer;
        this.outputBuffer = byteBuffer;
        com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat = com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat.NOT_SET;
        this.pendingInputAudioFormat = audioFormat;
        this.pendingOutputAudioFormat = audioFormat;
        this.inputAudioFormat = audioFormat;
        this.outputAudioFormat = audioFormat;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat configure(com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat) {
        this.pendingInputAudioFormat = audioFormat;
        this.pendingOutputAudioFormat = onConfigure(audioFormat);
        return isActive() ? this.pendingOutputAudioFormat : com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat.NOT_SET;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void flush() {
        this.outputBuffer = com.google.android.exoplayer2.audio.AudioProcessor.EMPTY_BUFFER;
        this.inputEnded = false;
        this.inputAudioFormat = this.pendingInputAudioFormat;
        this.outputAudioFormat = this.pendingOutputAudioFormat;
        onFlush();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public java.nio.ByteBuffer getOutput() {
        java.nio.ByteBuffer byteBuffer = this.outputBuffer;
        this.outputBuffer = com.google.android.exoplayer2.audio.AudioProcessor.EMPTY_BUFFER;
        return byteBuffer;
    }

    public final boolean hasPendingOutput() {
        return this.outputBuffer.hasRemaining();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isActive() {
        return this.pendingOutputAudioFormat != com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat.NOT_SET;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isEnded() {
        return this.inputEnded && this.outputBuffer == com.google.android.exoplayer2.audio.AudioProcessor.EMPTY_BUFFER;
    }

    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat onConfigure(com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat) {
        return com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat.NOT_SET;
    }

    public void onFlush() {
    }

    public void onQueueEndOfStream() {
    }

    public void onReset() {
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void queueEndOfStream() {
        this.inputEnded = true;
        onQueueEndOfStream();
    }

    public final java.nio.ByteBuffer replaceOutputBuffer(int i) {
        if (this.buffer.capacity() < i) {
            this.buffer = java.nio.ByteBuffer.allocateDirect(i).order(java.nio.ByteOrder.nativeOrder());
        } else {
            this.buffer.clear();
        }
        java.nio.ByteBuffer byteBuffer = this.buffer;
        this.outputBuffer = byteBuffer;
        return byteBuffer;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public final void reset() {
        flush();
        this.buffer = com.google.android.exoplayer2.audio.AudioProcessor.EMPTY_BUFFER;
        com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat = com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat.NOT_SET;
        this.pendingInputAudioFormat = audioFormat;
        this.pendingOutputAudioFormat = audioFormat;
        this.inputAudioFormat = audioFormat;
        this.outputAudioFormat = audioFormat;
        onReset();
    }
}
