package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public final class ChannelMappingAudioProcessor extends com.google.android.exoplayer2.audio.BaseAudioProcessor {
    public int[] outputChannels;
    public int[] pendingOutputChannels;

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat onConfigure(com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat) throws com.google.android.exoplayer2.audio.AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.pendingOutputChannels;
        if (iArr == null) {
            return com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat.NOT_SET;
        }
        if (audioFormat.encoding != 2) {
            throw new com.google.android.exoplayer2.audio.AudioProcessor.UnhandledAudioFormatException(audioFormat);
        }
        boolean z = audioFormat.channelCount != iArr.length;
        int i = 0;
        while (i < iArr.length) {
            int i2 = iArr[i];
            if (i2 >= audioFormat.channelCount) {
                throw new com.google.android.exoplayer2.audio.AudioProcessor.UnhandledAudioFormatException(audioFormat);
            }
            z |= i2 != i;
            i++;
        }
        return z ? new com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat(audioFormat.sampleRate, iArr.length, 2) : com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat.NOT_SET;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onFlush() {
        this.outputChannels = this.pendingOutputChannels;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onReset() {
        this.outputChannels = null;
        this.pendingOutputChannels = null;
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(java.nio.ByteBuffer byteBuffer) {
        int[] iArr = (int[]) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.outputChannels);
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        java.nio.ByteBuffer byteBufferReplaceOutputBuffer = replaceOutputBuffer(((iLimit - iPosition) / this.inputAudioFormat.bytesPerFrame) * this.outputAudioFormat.bytesPerFrame);
        while (iPosition < iLimit) {
            for (int i : iArr) {
                byteBufferReplaceOutputBuffer.putShort(byteBuffer.getShort((i * 2) + iPosition));
            }
            iPosition += this.inputAudioFormat.bytesPerFrame;
        }
        byteBuffer.position(iLimit);
        byteBufferReplaceOutputBuffer.flip();
    }

    public void setChannelMap(int[] iArr) {
        this.pendingOutputChannels = iArr;
    }
}
