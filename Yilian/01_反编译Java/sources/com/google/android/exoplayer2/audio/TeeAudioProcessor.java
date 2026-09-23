package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public final class TeeAudioProcessor extends com.google.android.exoplayer2.audio.BaseAudioProcessor {
    public final com.google.android.exoplayer2.audio.TeeAudioProcessor.AudioBufferSink audioBufferSink;

    public interface AudioBufferSink {
        void flush(int i, int i2, int i3);

        void handleBuffer(java.nio.ByteBuffer byteBuffer);
    }

    public static final class WavFileAudioBufferSink implements com.google.android.exoplayer2.audio.TeeAudioProcessor.AudioBufferSink {
        public static final int FILE_SIZE_MINUS_44_OFFSET = 40;
        public static final int FILE_SIZE_MINUS_8_OFFSET = 4;
        public static final int HEADER_LENGTH = 44;
        public static final java.lang.String TAG = "WaveFileAudioBufferSink";
        public int bytesWritten;
        public int channelCount;
        public int counter;
        public int encoding;
        public final java.lang.String outputFileNamePrefix;
        public java.io.RandomAccessFile randomAccessFile;
        public int sampleRateHz;
        public final byte[] scratchBuffer;
        public final java.nio.ByteBuffer scratchByteBuffer;

        public WavFileAudioBufferSink(java.lang.String str) {
            this.outputFileNamePrefix = str;
            byte[] bArr = new byte[1024];
            this.scratchBuffer = bArr;
            this.scratchByteBuffer = java.nio.ByteBuffer.wrap(bArr).order(java.nio.ByteOrder.LITTLE_ENDIAN);
        }

        private java.lang.String getNextOutputFileName() {
            int i = this.counter;
            this.counter = i + 1;
            return com.google.android.exoplayer2.util.Util.formatInvariant("%s-%04d.wav", this.outputFileNamePrefix, java.lang.Integer.valueOf(i));
        }

        private void maybePrepareFile() throws java.io.IOException {
            if (this.randomAccessFile != null) {
                return;
            }
            java.io.RandomAccessFile randomAccessFile = new java.io.RandomAccessFile(getNextOutputFileName(), "rw");
            writeFileHeader(randomAccessFile);
            this.randomAccessFile = randomAccessFile;
            this.bytesWritten = 44;
        }

        private void reset() throws java.io.IOException {
            java.io.RandomAccessFile randomAccessFile = this.randomAccessFile;
            if (randomAccessFile == null) {
                return;
            }
            try {
                this.scratchByteBuffer.clear();
                this.scratchByteBuffer.putInt(this.bytesWritten - 8);
                randomAccessFile.seek(4L);
                randomAccessFile.write(this.scratchBuffer, 0, 4);
                this.scratchByteBuffer.clear();
                this.scratchByteBuffer.putInt(this.bytesWritten - 44);
                randomAccessFile.seek(40L);
                randomAccessFile.write(this.scratchBuffer, 0, 4);
            } catch (java.io.IOException e2) {
                com.google.android.exoplayer2.util.Log.w(TAG, "Error updating file size", e2);
            }
            try {
                randomAccessFile.close();
            } finally {
                this.randomAccessFile = null;
            }
        }

        private void writeBuffer(java.nio.ByteBuffer byteBuffer) throws java.io.IOException {
            java.io.RandomAccessFile randomAccessFile = (java.io.RandomAccessFile) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.randomAccessFile);
            while (byteBuffer.hasRemaining()) {
                int iMin = java.lang.Math.min(byteBuffer.remaining(), this.scratchBuffer.length);
                byteBuffer.get(this.scratchBuffer, 0, iMin);
                randomAccessFile.write(this.scratchBuffer, 0, iMin);
                this.bytesWritten += iMin;
            }
        }

        private void writeFileHeader(java.io.RandomAccessFile randomAccessFile) throws java.io.IOException {
            randomAccessFile.writeInt(com.google.android.exoplayer2.audio.WavUtil.RIFF_FOURCC);
            randomAccessFile.writeInt(-1);
            randomAccessFile.writeInt(com.google.android.exoplayer2.audio.WavUtil.WAVE_FOURCC);
            randomAccessFile.writeInt(com.google.android.exoplayer2.audio.WavUtil.FMT_FOURCC);
            this.scratchByteBuffer.clear();
            this.scratchByteBuffer.putInt(16);
            this.scratchByteBuffer.putShort((short) com.google.android.exoplayer2.audio.WavUtil.getTypeForPcmEncoding(this.encoding));
            this.scratchByteBuffer.putShort((short) this.channelCount);
            this.scratchByteBuffer.putInt(this.sampleRateHz);
            int pcmFrameSize = com.google.android.exoplayer2.util.Util.getPcmFrameSize(this.encoding, this.channelCount);
            this.scratchByteBuffer.putInt(this.sampleRateHz * pcmFrameSize);
            this.scratchByteBuffer.putShort((short) pcmFrameSize);
            this.scratchByteBuffer.putShort((short) ((pcmFrameSize * 8) / this.channelCount));
            randomAccessFile.write(this.scratchBuffer, 0, this.scratchByteBuffer.position());
            randomAccessFile.writeInt(1684108385);
            randomAccessFile.writeInt(-1);
        }

        @Override // com.google.android.exoplayer2.audio.TeeAudioProcessor.AudioBufferSink
        public void flush(int i, int i2, int i3) {
            try {
                reset();
            } catch (java.io.IOException e2) {
                com.google.android.exoplayer2.util.Log.e(TAG, "Error resetting", e2);
            }
            this.sampleRateHz = i;
            this.channelCount = i2;
            this.encoding = i3;
        }

        @Override // com.google.android.exoplayer2.audio.TeeAudioProcessor.AudioBufferSink
        public void handleBuffer(java.nio.ByteBuffer byteBuffer) {
            try {
                maybePrepareFile();
                writeBuffer(byteBuffer);
            } catch (java.io.IOException e2) {
                com.google.android.exoplayer2.util.Log.e(TAG, "Error writing data", e2);
            }
        }
    }

    public TeeAudioProcessor(com.google.android.exoplayer2.audio.TeeAudioProcessor.AudioBufferSink audioBufferSink) {
        this.audioBufferSink = (com.google.android.exoplayer2.audio.TeeAudioProcessor.AudioBufferSink) com.google.android.exoplayer2.util.Assertions.checkNotNull(audioBufferSink);
    }

    private void flushSinkIfActive() {
        if (isActive()) {
            com.google.android.exoplayer2.audio.TeeAudioProcessor.AudioBufferSink audioBufferSink = this.audioBufferSink;
            com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat = this.inputAudioFormat;
            audioBufferSink.flush(audioFormat.sampleRate, audioFormat.channelCount, audioFormat.encoding);
        }
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat onConfigure(com.google.android.exoplayer2.audio.AudioProcessor.AudioFormat audioFormat) {
        return audioFormat;
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onFlush() {
        flushSinkIfActive();
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onQueueEndOfStream() {
        flushSinkIfActive();
    }

    @Override // com.google.android.exoplayer2.audio.BaseAudioProcessor
    public void onReset() {
        flushSinkIfActive();
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void queueInput(java.nio.ByteBuffer byteBuffer) {
        int iRemaining = byteBuffer.remaining();
        if (iRemaining == 0) {
            return;
        }
        this.audioBufferSink.handleBuffer(byteBuffer.asReadOnlyBuffer());
        replaceOutputBuffer(iRemaining).put(byteBuffer).flip();
    }
}
