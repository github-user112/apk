package com.google.android.exoplayer2.text;

/* loaded from: classes.dex */
public final class ExoplayerCuesDecoder implements com.google.android.exoplayer2.text.SubtitleDecoder {
    public static final int INPUT_BUFFER_AVAILABLE = 0;
    public static final int INPUT_BUFFER_DEQUEUED = 1;
    public static final int INPUT_BUFFER_QUEUED = 2;
    public static final int OUTPUT_BUFFERS_COUNT = 2;
    public int inputBufferState;
    public boolean released;
    public final com.google.android.exoplayer2.text.CueDecoder cueDecoder = new com.google.android.exoplayer2.text.CueDecoder();
    public final com.google.android.exoplayer2.text.SubtitleInputBuffer inputBuffer = new com.google.android.exoplayer2.text.SubtitleInputBuffer();
    public final java.util.Deque<com.google.android.exoplayer2.text.SubtitleOutputBuffer> availableOutputBuffers = new java.util.ArrayDeque();

    public static final class SingleEventSubtitle implements com.google.android.exoplayer2.text.Subtitle {
        public final e.c.b.b.s<com.google.android.exoplayer2.text.Cue> cues;
        public final long timeUs;

        public SingleEventSubtitle(long j, e.c.b.b.s<com.google.android.exoplayer2.text.Cue> sVar) {
            this.timeUs = j;
            this.cues = sVar;
        }

        @Override // com.google.android.exoplayer2.text.Subtitle
        public java.util.List<com.google.android.exoplayer2.text.Cue> getCues(long j) {
            return j >= this.timeUs ? this.cues : e.c.b.b.s.p();
        }

        @Override // com.google.android.exoplayer2.text.Subtitle
        public long getEventTime(int i) {
            com.google.android.exoplayer2.util.Assertions.checkArgument(i == 0);
            return this.timeUs;
        }

        @Override // com.google.android.exoplayer2.text.Subtitle
        public int getEventTimeCount() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.text.Subtitle
        public int getNextEventTimeIndex(long j) {
            return this.timeUs > j ? 0 : -1;
        }
    }

    public ExoplayerCuesDecoder() {
        for (int i = 0; i < 2; i++) {
            this.availableOutputBuffers.addFirst(new com.google.android.exoplayer2.text.SubtitleOutputBuffer() { // from class: com.google.android.exoplayer2.text.ExoplayerCuesDecoder.1
                @Override // com.google.android.exoplayer2.decoder.DecoderOutputBuffer
                public void release() {
                    com.google.android.exoplayer2.text.ExoplayerCuesDecoder.this.releaseOutputBuffer(this);
                }
            });
        }
        this.inputBufferState = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void releaseOutputBuffer(com.google.android.exoplayer2.text.SubtitleOutputBuffer subtitleOutputBuffer) {
        com.google.android.exoplayer2.util.Assertions.checkState(this.availableOutputBuffers.size() < 2);
        com.google.android.exoplayer2.util.Assertions.checkArgument(!this.availableOutputBuffers.contains(subtitleOutputBuffer));
        subtitleOutputBuffer.clear();
        this.availableOutputBuffers.addFirst(subtitleOutputBuffer);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.decoder.Decoder
    public com.google.android.exoplayer2.text.SubtitleInputBuffer dequeueInputBuffer() {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        if (this.inputBufferState != 0) {
            return null;
        }
        this.inputBufferState = 1;
        return this.inputBuffer;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.decoder.Decoder
    public com.google.android.exoplayer2.text.SubtitleOutputBuffer dequeueOutputBuffer() {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        if (this.inputBufferState != 2 || this.availableOutputBuffers.isEmpty()) {
            return null;
        }
        com.google.android.exoplayer2.text.SubtitleOutputBuffer subtitleOutputBufferRemoveFirst = this.availableOutputBuffers.removeFirst();
        if (this.inputBuffer.isEndOfStream()) {
            subtitleOutputBufferRemoveFirst.addFlag(4);
        } else {
            com.google.android.exoplayer2.text.SubtitleInputBuffer subtitleInputBuffer = this.inputBuffer;
            subtitleOutputBufferRemoveFirst.setContent(this.inputBuffer.timeUs, new com.google.android.exoplayer2.text.ExoplayerCuesDecoder.SingleEventSubtitle(subtitleInputBuffer.timeUs, this.cueDecoder.decode(((java.nio.ByteBuffer) com.google.android.exoplayer2.util.Assertions.checkNotNull(subtitleInputBuffer.data)).array())), 0L);
        }
        this.inputBuffer.clear();
        this.inputBufferState = 0;
        return subtitleOutputBufferRemoveFirst;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void flush() {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        this.inputBuffer.clear();
        this.inputBufferState = 0;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public java.lang.String getName() {
        return "ExoplayerCuesDecoder";
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void queueInputBuffer(com.google.android.exoplayer2.text.SubtitleInputBuffer subtitleInputBuffer) {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.released);
        com.google.android.exoplayer2.util.Assertions.checkState(this.inputBufferState == 1);
        com.google.android.exoplayer2.util.Assertions.checkArgument(this.inputBuffer == subtitleInputBuffer);
        this.inputBufferState = 2;
    }

    @Override // com.google.android.exoplayer2.decoder.Decoder
    public void release() {
        this.released = true;
    }

    @Override // com.google.android.exoplayer2.text.SubtitleDecoder
    public void setPositionUs(long j) {
    }
}
