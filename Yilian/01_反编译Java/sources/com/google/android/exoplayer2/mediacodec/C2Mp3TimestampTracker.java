package com.google.android.exoplayer2.mediacodec;

/* loaded from: classes.dex */
public final class C2Mp3TimestampTracker {
    public static final long DECODER_DELAY_FRAMES = 529;
    public static final java.lang.String TAG = "C2Mp3TimestampTracker";
    public long anchorTimestampUs;
    public long processedFrames;
    public boolean seenInvalidMpegAudioHeader;

    private long getBufferTimestampUs(long j) {
        return java.lang.Math.max(0L, ((this.processedFrames - 529) * 1000000) / j) + this.anchorTimestampUs;
    }

    public long getLastOutputBufferPresentationTimeUs(com.google.android.exoplayer2.Format format) {
        return getBufferTimestampUs(format.sampleRate);
    }

    public void reset() {
        this.anchorTimestampUs = 0L;
        this.processedFrames = 0L;
        this.seenInvalidMpegAudioHeader = false;
    }

    public long updateAndGetPresentationTimeUs(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer) {
        if (this.processedFrames == 0) {
            this.anchorTimestampUs = decoderInputBuffer.timeUs;
        }
        if (this.seenInvalidMpegAudioHeader) {
            return decoderInputBuffer.timeUs;
        }
        java.nio.ByteBuffer byteBuffer = (java.nio.ByteBuffer) com.google.android.exoplayer2.util.Assertions.checkNotNull(decoderInputBuffer.data);
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            i = (i << 8) | (byteBuffer.get(i2) & 255);
        }
        int mpegAudioFrameSampleCount = com.google.android.exoplayer2.audio.MpegAudioUtil.parseMpegAudioFrameSampleCount(i);
        if (mpegAudioFrameSampleCount != -1) {
            long bufferTimestampUs = getBufferTimestampUs(format.sampleRate);
            this.processedFrames += mpegAudioFrameSampleCount;
            return bufferTimestampUs;
        }
        this.seenInvalidMpegAudioHeader = true;
        this.processedFrames = 0L;
        this.anchorTimestampUs = decoderInputBuffer.timeUs;
        com.google.android.exoplayer2.util.Log.w(TAG, "MPEG audio header is invalid.");
        return decoderInputBuffer.timeUs;
    }
}
