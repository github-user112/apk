package com.google.android.exoplayer2.source.dash;

/* loaded from: classes.dex */
public final class EventSampleStream implements com.google.android.exoplayer2.source.SampleStream {
    public int currentIndex;
    public com.google.android.exoplayer2.source.dash.manifest.EventStream eventStream;
    public boolean eventStreamAppendable;
    public long[] eventTimesUs;
    public boolean isFormatSentDownstream;
    public final com.google.android.exoplayer2.Format upstreamFormat;
    public final com.google.android.exoplayer2.metadata.emsg.EventMessageEncoder eventMessageEncoder = new com.google.android.exoplayer2.metadata.emsg.EventMessageEncoder();
    public long pendingSeekPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;

    public EventSampleStream(com.google.android.exoplayer2.source.dash.manifest.EventStream eventStream, com.google.android.exoplayer2.Format format, boolean z) {
        this.upstreamFormat = format;
        this.eventStream = eventStream;
        this.eventTimesUs = eventStream.presentationTimesUs;
        updateEventStream(eventStream, z);
    }

    public java.lang.String eventStreamId() {
        return this.eventStream.id();
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public void maybeThrowError() {
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int readData(com.google.android.exoplayer2.FormatHolder formatHolder, com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer, int i) throws java.io.IOException {
        boolean z = this.currentIndex == this.eventTimesUs.length;
        if (z && !this.eventStreamAppendable) {
            decoderInputBuffer.setFlags(4);
            return -4;
        }
        if ((i & 2) != 0 || !this.isFormatSentDownstream) {
            formatHolder.format = this.upstreamFormat;
            this.isFormatSentDownstream = true;
            return -5;
        }
        if (z) {
            return -3;
        }
        int i2 = this.currentIndex;
        this.currentIndex = i2 + 1;
        byte[] bArrEncode = this.eventMessageEncoder.encode(this.eventStream.events[i2]);
        decoderInputBuffer.ensureSpaceForWrite(bArrEncode.length);
        decoderInputBuffer.data.put(bArrEncode);
        decoderInputBuffer.timeUs = this.eventTimesUs[i2];
        decoderInputBuffer.setFlags(1);
        return -4;
    }

    public void seekToUs(long j) {
        int iBinarySearchCeil = com.google.android.exoplayer2.util.Util.binarySearchCeil(this.eventTimesUs, j, true, false);
        this.currentIndex = iBinarySearchCeil;
        if (!(this.eventStreamAppendable && iBinarySearchCeil == this.eventTimesUs.length)) {
            j = com.google.android.exoplayer2.C.TIME_UNSET;
        }
        this.pendingSeekPositionUs = j;
    }

    @Override // com.google.android.exoplayer2.source.SampleStream
    public int skipData(long j) {
        int iMax = java.lang.Math.max(this.currentIndex, com.google.android.exoplayer2.util.Util.binarySearchCeil(this.eventTimesUs, j, true, false));
        int i = iMax - this.currentIndex;
        this.currentIndex = iMax;
        return i;
    }

    public void updateEventStream(com.google.android.exoplayer2.source.dash.manifest.EventStream eventStream, boolean z) {
        int i = this.currentIndex;
        long j = i == 0 ? -9223372036854775807L : this.eventTimesUs[i - 1];
        this.eventStreamAppendable = z;
        this.eventStream = eventStream;
        long[] jArr = eventStream.presentationTimesUs;
        this.eventTimesUs = jArr;
        long j2 = this.pendingSeekPositionUs;
        if (j2 != com.google.android.exoplayer2.C.TIME_UNSET) {
            seekToUs(j2);
        } else if (j != com.google.android.exoplayer2.C.TIME_UNSET) {
            this.currentIndex = com.google.android.exoplayer2.util.Util.binarySearchCeil(jArr, j, false, false);
        }
    }
}
