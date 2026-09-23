package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public final class TrimmingAudioProcessor extends com.google.android.exoplayer2.audio.BaseAudioProcessor {
    public static final int OUTPUT_ENCODING = 2;
    public byte[] endBuffer = com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
    public int endBufferSize;
    public int pendingTrimStartBytes;
    public boolean reconfigurationPending;
    public int trimEndFrames;
    public int trimStartFrames;
    public long trimmedFrameCount;

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor, com.google.android.exoplayer2.audio.AudioProcessor
    public java.nio.ByteBuffer getOutput() {
        int i;
        if (super.isEnded() && (i = this.endBufferSize) > 0) {
            replaceOutputBuffer(i).put(this.endBuffer, 0, this.endBufferSize).flip();
            this.endBufferSize = 0;
        }
        return super.getOutput();
    }

    public long getTrimmedFrameCount() {
        return this.trimmedFrameCount;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor, com.google.android.exoplayer2.audio.AudioProcessor
    public boolean isEnded() {
        return super.isEnded() && this.endBufferSize == 0;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat onConfigure(com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat) throws com.google.android.exoplayer2.audio.AudioProcessor.UnhandledAudioFormatException {
        if (audioFormat.encoding != 2) {
            throw new com.google.android.exoplayer2.audio.AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        this.reconfigurationPending = true;
        return (this.trimStartFrames == 0 && this.trimEndFrames == 0) ? com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat.NOT_SET : audioFormat;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onFlush() {
        if (this.reconfigurationPending) {
            this.reconfigurationPending = false;
            int i = this.trimEndFrames;
            int i2 = this.inputAudioFormat.bytesPerFrame;
            this.endBuffer = new byte[i * i2];
            this.pendingTrimStartBytes = this.trimStartFrames * i2;
        }
        this.endBufferSize = 0;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onQueueEndOfStream() {
        if (this.reconfigurationPending) {
            if (this.endBufferSize > 0) {
                this.trimmedFrameCount += r0 / this.inputAudioFormat.bytesPerFrame;
            }
            this.endBufferSize = 0;
        }
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onReset() {
        this.endBuffer = com.google.android.exoplayer2.util.Util.EMPTY_BYTE_ARRAY;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(java.nio.ByteBuffer byteBuffer) {
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i = iLimit - iPosition;
        if (i == 0) {
            return;
        }
        int iMin = java.lang.Math.min(i, this.pendingTrimStartBytes);
        this.trimmedFrameCount += iMin / this.inputAudioFormat.bytesPerFrame;
        this.pendingTrimStartBytes -= iMin;
        byteBuffer.position(iPosition + iMin);
        if (this.pendingTrimStartBytes > 0) {
            return;
        }
        int i2 = i - iMin;
        int length = (this.endBufferSize + i2) - this.endBuffer.length;
        java.nio.ByteBuffer byteBufferReplaceOutputBuffer = replaceOutputBuffer(length);
        int iConstrainValue = com.google.android.exoplayer2.util.Util.constrainValue(length, 0, this.endBufferSize);
        byteBufferReplaceOutputBuffer.put(this.endBuffer, 0, iConstrainValue);
        int iConstrainValue2 = com.google.android.exoplayer2.util.Util.constrainValue(length - iConstrainValue, 0, i2);
        byteBuffer.limit(byteBuffer.position() + iConstrainValue2);
        byteBufferReplaceOutputBuffer.put(byteBuffer);
        byteBuffer.limit(iLimit);
        int i3 = i2 - iConstrainValue2;
        int i4 = this.endBufferSize - iConstrainValue;
        this.endBufferSize = i4;
        byte[] bArr = this.endBuffer;
        java.lang.System.arraycopy(bArr, iConstrainValue, bArr, 0, i4);
        byteBuffer.get(this.endBuffer, this.endBufferSize, i3);
        this.endBufferSize += i3;
        byteBufferReplaceOutputBuffer.flip();
    }

    public void resetTrimmedFrameCount() {
        this.trimmedFrameCount = 0L;
    }

    public void setTrimFrameCount(int i, int i2) {
        this.trimStartFrames = i;
        this.trimEndFrames = i2;
    }
}
