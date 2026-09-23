package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public final class FloatResamplingAudioProcessor extends com.google.android.exoplayer2.audio.BaseAudioProcessor {
    public static final int FLOAT_NAN_AS_INT = java.lang.Float.floatToIntBits(Float.NaN);
    public static final double PCM_32_BIT_INT_TO_PCM_32_BIT_FLOAT_FACTOR = 4.656612875245797E-10d;

    public static void writePcm32BitFloat(int i, java.nio.ByteBuffer byteBuffer) {
        double d2 = i;
        java.lang.Double.isNaN(d2);
        int iFloatToIntBits = java.lang.Float.floatToIntBits((float) (d2 * 4.656612875245797E-10d));
        if (iFloatToIntBits == FLOAT_NAN_AS_INT) {
            iFloatToIntBits = java.lang.Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(iFloatToIntBits);
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat onConfigure(com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat) throws com.google.android.exoplayer2.audio.AudioProcessor.UnhandledAudioFormatException {
        int i = audioFormat.encoding;
        if (com.google.android.exoplayer2.util.Util.isEncodingHighResolutionPcm(i)) {
            return i != 4 ? new com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat(audioFormat.sampleRate, audioFormat.channelCount, 4) : com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat.NOT_SET;
        }
        throw new com.google.android.exoplayer2.audio.AudioProcessor.UnhandledAudioFormatException(audioFormat);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(java.nio.ByteBuffer byteBuffer) {
        java.nio.ByteBuffer byteBufferReplaceOutputBuffer;
        int iPosition = byteBuffer.position();
        int iLimit = byteBuffer.limit();
        int i = iLimit - iPosition;
        int i2 = this.inputAudioFormat.encoding;
        if (i2 == 536870912) {
            byteBufferReplaceOutputBuffer = replaceOutputBuffer((i / 3) * 4);
            while (iPosition < iLimit) {
                writePcm32BitFloat(((byteBuffer.get(iPosition) & 255) << 8) | ((byteBuffer.get(iPosition + 1) & 255) << 16) | ((byteBuffer.get(iPosition + 2) & 255) << 24), byteBufferReplaceOutputBuffer);
                iPosition += 3;
            }
        } else {
            if (i2 != 805306368) {
                throw new java.lang.IllegalStateException();
            }
            byteBufferReplaceOutputBuffer = replaceOutputBuffer(i);
            while (iPosition < iLimit) {
                writePcm32BitFloat((byteBuffer.get(iPosition) & 255) | ((byteBuffer.get(iPosition + 1) & 255) << 8) | ((byteBuffer.get(iPosition + 2) & 255) << 16) | ((byteBuffer.get(iPosition + 3) & 255) << 24), byteBufferReplaceOutputBuffer);
                iPosition += 4;
            }
        }
        byteBuffer.position(byteBuffer.limit());
        byteBufferReplaceOutputBuffer.flip();
    }
}
