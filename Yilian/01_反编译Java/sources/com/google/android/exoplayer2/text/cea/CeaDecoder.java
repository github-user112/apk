package com.google.android.exoplayer2.text.cea;

/* loaded from: classes.dex */
public abstract class CeaDecoder implements com.google.android.exoplayer2.text.SubtitleDecoder {
    public static final int NUM_INPUT_BUFFERS = 10;
    public static final int NUM_OUTPUT_BUFFERS = 2;
    public final java.util.ArrayDeque<com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer> availableInputBuffers = new java.util.ArrayDeque<>();
    public final java.util.ArrayDeque<com.google.android.exoplayer2.text.SubtitleOutputBuffer> availableOutputBuffers;
    public com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer dequeuedInputBuffer;
    public long playbackPositionUs;
    public long queuedInputBufferCount;
    public final java.util.PriorityQueue<com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer> queuedInputBuffers;

    public static final class CeaInputBuffer extends com.google.android.exoplayer2.text.SubtitleInputBuffer implements java.lang.Comparable<com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer> {
        public long queuedInputBufferCount;

        public CeaInputBuffer() {
        }

        @Override // java.lang.Comparable
        public int compareTo(com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer ceaInputBuffer) {
            if (isEndOfStream() != ceaInputBuffer.isEndOfStream()) {
                return isEndOfStream() ? 1 : -1;
            }
            long j = this.timeUs - ceaInputBuffer.timeUs;
            if (j == 0) {
                j = this.queuedInputBufferCount - ceaInputBuffer.queuedInputBufferCount;
                if (j == 0) {
                    return 0;
                }
            }
            return j > 0 ? 1 : -1;
        }
    }

    public static final class CeaOutputBuffer extends com.google.android.exoplayer2.text.SubtitleOutputBuffer {
        public com.google.android.exoplayer2.decoder.DecoderOutputBuffer.Owner<com.google.android.exoplayer2.text.cea.CeaDecoder.CeaOutputBuffer> owner;

        public CeaOutputBuffer(com.google.android.exoplayer2.decoder.DecoderOutputBuffer.Owner<com.google.android.exoplayer2.text.cea.CeaDecoder.CeaOutputBuffer> owner) {
            this.owner = owner;
        }

        @Override // com.google.android.exoplayer2.decoder.DecoderOutputBuffer
        public final void release() {
            this.owner.releaseOutputBuffer(this);
        }
    }

    public CeaDecoder() {
        for (int i = 0; i < 10; i++) {
            this.availableInputBuffers.add(new com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer());
        }
        this.availableOutputBuffers = new java.util.ArrayDeque<>();
        for (int i2 = 0; i2 < 2; i2++) {
            this.availableOutputBuffers.add(new com.google.android.exoplayer2.text.cea.CeaDecoder.CeaOutputBuffer(new com.google.android.exoplayer2.decoder.DecoderOutputBuffer.Owner() { // from class: e.c.a.a.o2.b.b
                @Override // com.google.android.exoplayer2.decoder.DecoderOutputBuffer.Owner
                public final void releaseOutputBuffer(com.google.android.exoplayer2.decoder.DecoderOutputBuffer decoderOutputBuffer) {
                    this.a.releaseOutputBuffer((com.google.android.exoplayer2.text.cea.CeaDecoder.CeaOutputBuffer) decoderOutputBuffer);
                }
            }));
        }
        this.queuedInputBuffers = new java.util.PriorityQueue<>();
    }

    private void releaseInputBuffer(com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer ceaInputBuffer) {
        ceaInputBuffer.clear();
        this.availableInputBuffers.add(ceaInputBuffer);
    }

    public abstract com.google.android.exoplayer2.text.Subtitle createSubtitle();

    public abstract void decode(com.google.android.exoplayer2.text.SubtitleInputBuffer subtitleInputBuffer);

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.decoder.Decoder
    public com.google.android.exoplayer2.text.SubtitleInputBuffer dequeueInputBuffer() {
        com.google.android.exoplayer2.util.Assertions.checkState(this.dequeuedInputBuffer == null);
        if (this.availableInputBuffers.isEmpty()) {
            return null;
        }
        com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer ceaInputBufferPollFirst = this.availableInputBuffers.pollFirst();
        this.dequeuedInputBuffer = ceaInputBufferPollFirst;
        return ceaInputBufferPollFirst;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.decoder.Decoder
    public com.google.android.exoplayer2.text.SubtitleOutputBuffer dequeueOutputBuffer() {
        com.google.android.exoplayer2.text.SubtitleOutputBuffer subtitleOutputBuffer;
        if (this.availableOutputBuffers.isEmpty()) {
            return null;
        }
        while (!this.queuedInputBuffers.isEmpty() && ((com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer) com.google.android.exoplayer2.util.Util.castNonNull(this.queuedInputBuffers.peek())).timeUs <= this.playbackPositionUs) {
            com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer ceaInputBuffer = (com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer) com.google.android.exoplayer2.util.Util.castNonNull(this.queuedInputBuffers.poll());
            if (ceaInputBuffer.isEndOfStream()) {
                subtitleOutputBuffer = (com.google.android.exoplayer2.text.SubtitleOutputBuffer) com.google.android.exoplayer2.util.Util.castNonNull(this.availableOutputBuffers.pollFirst());
                subtitleOutputBuffer.addFlag(4);
            } else {
                decode(ceaInputBuffer);
                if (isNewSubtitleDataAvailable()) {
                    com.google.android.exoplayer2.text.Subtitle subtitleCreateSubtitle = createSubtitle();
                    subtitleOutputBuffer = (com.google.android.exoplayer2.text.SubtitleOutputBuffer) com.google.android.exoplayer2.util.Util.castNonNull(this.availableOutputBuffers.pollFirst());
                    subtitleOutputBuffer.setContent(ceaInputBuffer.timeUs, subtitleCreateSubtitle, Long.MAX_VALUE);
                } else {
                    releaseInputBuffer(ceaInputBuffer);
                }
            }
            releaseInputBuffer(ceaInputBuffer);
            return subtitleOutputBuffer;
        }
        return null;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void flush() {
        this.queuedInputBufferCount = 0L;
        this.playbackPositionUs = 0L;
        while (!this.queuedInputBuffers.isEmpty()) {
            releaseInputBuffer((com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer) com.google.android.exoplayer2.util.Util.castNonNull(this.queuedInputBuffers.poll()));
        }
        com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer ceaInputBuffer = this.dequeuedInputBuffer;
        if (ceaInputBuffer != null) {
            releaseInputBuffer(ceaInputBuffer);
            this.dequeuedInputBuffer = null;
        }
    }

    public final com.google.android.exoplayer2.text.SubtitleOutputBuffer getAvailableOutputBuffer() {
        return this.availableOutputBuffers.pollFirst();
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public abstract java.lang.String getName();

    public final long getPositionUs() {
        return this.playbackPositionUs;
    }

    public abstract boolean isNewSubtitleDataAvailable();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void queueInputBuffer(com.google.android.exoplayer2.text.SubtitleInputBuffer subtitleInputBuffer) {
        com.google.android.exoplayer2.util.Assertions.checkArgument(subtitleInputBuffer == this.dequeuedInputBuffer);
        com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer ceaInputBuffer = (com.google.android.exoplayer2.text.cea.CeaDecoder.CeaInputBuffer) subtitleInputBuffer;
        if (ceaInputBuffer.isDecodeOnly()) {
            releaseInputBuffer(ceaInputBuffer);
        } else {
            long j = this.queuedInputBufferCount;
            this.queuedInputBufferCount = 1 + j;
            ceaInputBuffer.queuedInputBufferCount = j;
            this.queuedInputBuffers.add(ceaInputBuffer);
        }
        this.dequeuedInputBuffer = null;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void release() {
    }

    public void releaseOutputBuffer(com.google.android.exoplayer2.text.SubtitleOutputBuffer subtitleOutputBuffer) {
        subtitleOutputBuffer.clear();
        this.availableOutputBuffers.add(subtitleOutputBuffer);
    }

    @Override // com.google.android.exoplayer2.text.SubtitleDecoder
    public void setPositionUs(long j) {
        this.playbackPositionUs = j;
    }
}
