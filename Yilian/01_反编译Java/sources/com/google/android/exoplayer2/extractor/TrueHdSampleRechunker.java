package com.google.android.exoplayer2.extractor;

/* loaded from: classes.dex */
public final class TrueHdSampleRechunker {
    public int chunkFlags;
    public int chunkOffset;
    public int chunkSampleCount;
    public int chunkSize;
    public long chunkTimeUs;
    public boolean foundSyncframe;
    public final byte[] syncframePrefix = new byte[10];

    public void outputPendingSampleMetadata(com.google.android.exoplayer2.extractor.TrackOutput trackOutput, com.google.android.exoplayer2.extractor.TrackOutput.CryptoData cryptoData) {
        if (this.chunkSampleCount > 0) {
            trackOutput.sampleMetadata(this.chunkTimeUs, this.chunkFlags, this.chunkSize, this.chunkOffset, cryptoData);
            this.chunkSampleCount = 0;
        }
    }

    public void reset() {
        this.foundSyncframe = false;
        this.chunkSampleCount = 0;
    }

    public void sampleMetadata(com.google.android.exoplayer2.extractor.TrackOutput trackOutput, long j, int i, int i2, int i3, com.google.android.exoplayer2.extractor.TrackOutput.CryptoData cryptoData) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.chunkOffset <= i2 + i3, "TrueHD chunk samples must be contiguous in the sample queue.");
        if (this.foundSyncframe) {
            int i4 = this.chunkSampleCount;
            this.chunkSampleCount = i4 + 1;
            if (i4 == 0) {
                this.chunkTimeUs = j;
                this.chunkFlags = i;
                this.chunkSize = 0;
            }
            this.chunkSize += i2;
            this.chunkOffset = i3;
            if (this.chunkSampleCount >= 16) {
                outputPendingSampleMetadata(trackOutput, cryptoData);
            }
        }
    }

    public void startSample(com.google.android.exoplayer2.extractor.ExtractorInput extractorInput) {
        if (this.foundSyncframe) {
            return;
        }
        extractorInput.peekFully(this.syncframePrefix, 0, 10);
        extractorInput.resetPeekPosition();
        if (com.google.android.exoplayer2.audio.Ac3Util.parseTrueHdSyncframeAudioSampleCount(this.syncframePrefix) == 0) {
            return;
        }
        this.foundSyncframe = true;
    }
}
