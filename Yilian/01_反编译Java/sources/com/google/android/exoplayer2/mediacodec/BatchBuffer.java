package com.google.android.exoplayer2.mediacodec;

/* loaded from: classes.dex */
public final class BatchBuffer extends com.google.android.exoplayer2.decoder.DecoderInputBuffer {
    public static final int DEFAULT_MAX_SAMPLE_COUNT = 32;
    public static final int MAX_SIZE_BYTES = 3072000;
    public long lastSampleTimeUs;
    public int maxSampleCount;
    public int sampleCount;

    public BatchBuffer() {
        super(2);
        this.maxSampleCount = 32;
    }

    private boolean canAppendSampleBuffer(com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer) {
        java.nio.ByteBuffer byteBuffer;
        if (!hasSamples()) {
            return true;
        }
        if (this.sampleCount >= this.maxSampleCount || decoderInputBuffer.isDecodeOnly() != isDecodeOnly()) {
            return false;
        }
        java.nio.ByteBuffer byteBuffer2 = decoderInputBuffer.data;
        if (byteBuffer2 != null && (byteBuffer = this.data) != null) {
            if (byteBuffer2.remaining() + byteBuffer.position() > 3072000) {
                return false;
            }
        }
        return true;
    }

    public boolean append(com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(!decoderInputBuffer.isEncrypted());
        com.google.android.exoplayer2.util.Assertions.checkArgument(!decoderInputBuffer.hasSupplementalData());
        com.google.android.exoplayer2.util.Assertions.checkArgument(!decoderInputBuffer.isEndOfStream());
        if (!canAppendSampleBuffer(decoderInputBuffer)) {
            return false;
        }
        int i = this.sampleCount;
        this.sampleCount = i + 1;
        if (i == 0) {
            this.timeUs = decoderInputBuffer.timeUs;
            if (decoderInputBuffer.isKeyFrame()) {
                setFlags(1);
            }
        }
        if (decoderInputBuffer.isDecodeOnly()) {
            setFlags(Integer.MIN_VALUE);
        }
        java.nio.ByteBuffer byteBuffer = decoderInputBuffer.data;
        if (byteBuffer != null) {
            ensureSpaceForWrite(byteBuffer.remaining());
            this.data.put(byteBuffer);
        }
        this.lastSampleTimeUs = decoderInputBuffer.timeUs;
        return true;
    }

    @Override // com.google.android.exoplayer2.decoder.DecoderInputBuffer, com.google.android.exoplayer2.decoder.Buffer
    public void clear() {
        super.clear();
        this.sampleCount = 0;
    }

    public long getFirstSampleTimeUs() {
        return this.timeUs;
    }

    public long getLastSampleTimeUs() {
        return this.lastSampleTimeUs;
    }

    public int getSampleCount() {
        return this.sampleCount;
    }

    public boolean hasSamples() {
        return this.sampleCount > 0;
    }

    public void setMaxSampleCount(int i) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(i > 0);
        this.maxSampleCount = i;
    }
}
