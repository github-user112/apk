package com.google.android.exoplayer2.text;

/* loaded from: classes.dex */
public final class TextRenderer extends com.google.android.exoplayer2.BaseRenderer implements android.os.Handler.Callback {
    public static final int MSG_UPDATE_OUTPUT = 0;
    public static final int REPLACEMENT_STATE_NONE = 0;
    public static final int REPLACEMENT_STATE_SIGNAL_END_OF_STREAM = 1;
    public static final int REPLACEMENT_STATE_WAIT_END_OF_STREAM = 2;
    public static final java.lang.String TAG = "TextRenderer";
    public com.google.android.exoplayer2.text.SubtitleDecoder decoder;
    public final com.google.android.exoplayer2.text.SubtitleDecoderFactory decoderFactory;
    public int decoderReplacementState;
    public long finalStreamEndPositionUs;
    public final com.google.android.exoplayer2.FormatHolder formatHolder;
    public boolean inputStreamEnded;
    public com.google.android.exoplayer2.text.SubtitleInputBuffer nextInputBuffer;
    public com.google.android.exoplayer2.text.SubtitleOutputBuffer nextSubtitle;
    public int nextSubtitleEventIndex;
    public final com.google.android.exoplayer2.text.TextOutput output;
    public final android.os.Handler outputHandler;
    public boolean outputStreamEnded;
    public com.google.android.exoplayer2.Format streamFormat;
    public com.google.android.exoplayer2.text.SubtitleOutputBuffer subtitle;
    public boolean waitingForKeyFrame;

    public TextRenderer(com.google.android.exoplayer2.text.TextOutput textOutput, android.os.Looper looper) {
        this(textOutput, looper, com.google.android.exoplayer2.text.SubtitleDecoderFactory.DEFAULT);
    }

    public TextRenderer(com.google.android.exoplayer2.text.TextOutput textOutput, android.os.Looper looper, com.google.android.exoplayer2.text.SubtitleDecoderFactory subtitleDecoderFactory) {
        super(3);
        this.output = (com.google.android.exoplayer2.text.TextOutput) com.google.android.exoplayer2.util.Assertions.checkNotNull(textOutput);
        this.outputHandler = looper == null ? null : com.google.android.exoplayer2.util.Util.createHandler(looper, this);
        this.decoderFactory = subtitleDecoderFactory;
        this.formatHolder = new com.google.android.exoplayer2.FormatHolder();
        this.finalStreamEndPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;
    }

    private void clearOutput() {
        updateOutput(java.util.Collections.emptyList());
    }

    private long getNextEventTime() {
        if (this.nextSubtitleEventIndex == -1) {
            return Long.MAX_VALUE;
        }
        com.google.android.exoplayer2.util.Assertions.checkNotNull(this.subtitle);
        if (this.nextSubtitleEventIndex >= this.subtitle.getEventTimeCount()) {
            return Long.MAX_VALUE;
        }
        return this.subtitle.getEventTime(this.nextSubtitleEventIndex);
    }

    private void handleDecoderError(com.google.android.exoplayer2.text.SubtitleDecoderException subtitleDecoderException) {
        java.lang.String strValueOf = java.lang.String.valueOf(this.streamFormat);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 39);
        sb.append("Subtitle decoding failed. streamFormat=");
        sb.append(strValueOf);
        com.google.android.exoplayer2.util.Log.e(TAG, sb.toString(), subtitleDecoderException);
        clearOutput();
        replaceDecoder();
    }

    private void initDecoder() {
        this.waitingForKeyFrame = true;
        this.decoder = this.decoderFactory.createDecoder((com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.streamFormat));
    }

    private void invokeUpdateOutputInternal(java.util.List<com.google.android.exoplayer2.text.Cue> list) {
        this.output.onCues(list);
    }

    private void releaseBuffers() {
        this.nextInputBuffer = null;
        this.nextSubtitleEventIndex = -1;
        com.google.android.exoplayer2.text.SubtitleOutputBuffer subtitleOutputBuffer = this.subtitle;
        if (subtitleOutputBuffer != null) {
            subtitleOutputBuffer.release();
            this.subtitle = null;
        }
        com.google.android.exoplayer2.text.SubtitleOutputBuffer subtitleOutputBuffer2 = this.nextSubtitle;
        if (subtitleOutputBuffer2 != null) {
            subtitleOutputBuffer2.release();
            this.nextSubtitle = null;
        }
    }

    private void releaseDecoder() {
        releaseBuffers();
        ((com.google.android.exoplayer2.text.SubtitleDecoder) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.decoder)).release();
        this.decoder = null;
        this.decoderReplacementState = 0;
    }

    private void replaceDecoder() {
        releaseDecoder();
        initDecoder();
    }

    private void updateOutput(java.util.List<com.google.android.exoplayer2.text.Cue> list) {
        android.os.Handler handler = this.outputHandler;
        if (handler != null) {
            handler.obtainMessage(0, list).sendToTarget();
        } else {
            invokeUpdateOutputInternal(list);
        }
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public java.lang.String getName() {
        return TAG;
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(android.os.Message message) {
        if (message.what != 0) {
            throw new java.lang.IllegalStateException();
        }
        invokeUpdateOutputInternal((java.util.List) message.obj);
        return true;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        return true;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        this.streamFormat = null;
        this.finalStreamEndPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;
        clearOutput();
        releaseDecoder();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) {
        clearOutput();
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        this.finalStreamEndPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;
        if (this.decoderReplacementState != 0) {
            replaceDecoder();
        } else {
            releaseBuffers();
            ((com.google.android.exoplayer2.text.SubtitleDecoder) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.decoder)).flush();
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStreamChanged(com.google.android.exoplayer2.Format[] formatArr, long j, long j2) {
        this.streamFormat = formatArr[0];
        if (this.decoder != null) {
            this.decoderReplacementState = 1;
        } else {
            initDecoder();
        }
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) {
        boolean z;
        if (isCurrentStreamFinal()) {
            long j3 = this.finalStreamEndPositionUs;
            if (j3 != com.google.android.exoplayer2.C.TIME_UNSET && j >= j3) {
                releaseBuffers();
                this.outputStreamEnded = true;
            }
        }
        if (this.outputStreamEnded) {
            return;
        }
        if (this.nextSubtitle == null) {
            ((com.google.android.exoplayer2.text.SubtitleDecoder) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.decoder)).setPositionUs(j);
            try {
                this.nextSubtitle = ((com.google.android.exoplayer2.text.SubtitleDecoder) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.decoder)).dequeueOutputBuffer();
            } catch (com.google.android.exoplayer2.text.SubtitleDecoderException e2) {
                handleDecoderError(e2);
                return;
            }
        }
        if (getState() != 2) {
            return;
        }
        if (this.subtitle != null) {
            long nextEventTime = getNextEventTime();
            z = false;
            while (nextEventTime <= j) {
                this.nextSubtitleEventIndex++;
                nextEventTime = getNextEventTime();
                z = true;
            }
        } else {
            z = false;
        }
        com.google.android.exoplayer2.text.SubtitleOutputBuffer subtitleOutputBuffer = this.nextSubtitle;
        if (subtitleOutputBuffer != null) {
            if (subtitleOutputBuffer.isEndOfStream()) {
                if (!z && getNextEventTime() == Long.MAX_VALUE) {
                    if (this.decoderReplacementState == 2) {
                        replaceDecoder();
                    } else {
                        releaseBuffers();
                        this.outputStreamEnded = true;
                    }
                }
            } else if (subtitleOutputBuffer.timeUs <= j) {
                com.google.android.exoplayer2.text.SubtitleOutputBuffer subtitleOutputBuffer2 = this.subtitle;
                if (subtitleOutputBuffer2 != null) {
                    subtitleOutputBuffer2.release();
                }
                this.nextSubtitleEventIndex = subtitleOutputBuffer.getNextEventTimeIndex(j);
                this.subtitle = subtitleOutputBuffer;
                this.nextSubtitle = null;
                z = true;
            }
        }
        if (z) {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(this.subtitle);
            updateOutput(this.subtitle.getCues(j));
        }
        if (this.decoderReplacementState == 2) {
            return;
        }
        while (!this.inputStreamEnded) {
            try {
                com.google.android.exoplayer2.text.SubtitleInputBuffer subtitleInputBufferDequeueInputBuffer = this.nextInputBuffer;
                if (subtitleInputBufferDequeueInputBuffer == null) {
                    subtitleInputBufferDequeueInputBuffer = ((com.google.android.exoplayer2.text.SubtitleDecoder) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.decoder)).dequeueInputBuffer();
                    if (subtitleInputBufferDequeueInputBuffer == null) {
                        return;
                    } else {
                        this.nextInputBuffer = subtitleInputBufferDequeueInputBuffer;
                    }
                }
                if (this.decoderReplacementState == 1) {
                    subtitleInputBufferDequeueInputBuffer.setFlags(4);
                    ((com.google.android.exoplayer2.text.SubtitleDecoder) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.decoder)).queueInputBuffer(subtitleInputBufferDequeueInputBuffer);
                    this.nextInputBuffer = null;
                    this.decoderReplacementState = 2;
                    return;
                }
                int source = readSource(this.formatHolder, subtitleInputBufferDequeueInputBuffer, 0);
                if (source == -4) {
                    if (subtitleInputBufferDequeueInputBuffer.isEndOfStream()) {
                        this.inputStreamEnded = true;
                        this.waitingForKeyFrame = false;
                    } else {
                        com.google.android.exoplayer2.Format format = this.formatHolder.format;
                        if (format == null) {
                            return;
                        }
                        subtitleInputBufferDequeueInputBuffer.subsampleOffsetUs = format.subsampleOffsetUs;
                        subtitleInputBufferDequeueInputBuffer.flip();
                        this.waitingForKeyFrame &= !subtitleInputBufferDequeueInputBuffer.isKeyFrame();
                    }
                    if (!this.waitingForKeyFrame) {
                        ((com.google.android.exoplayer2.text.SubtitleDecoder) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.decoder)).queueInputBuffer(subtitleInputBufferDequeueInputBuffer);
                        this.nextInputBuffer = null;
                    }
                } else if (source == -3) {
                    return;
                }
            } catch (com.google.android.exoplayer2.text.SubtitleDecoderException e3) {
                handleDecoderError(e3);
                return;
            }
        }
    }

    public void setFinalStreamEndPositionUs(long j) {
        com.google.android.exoplayer2.util.Assertions.checkState(isCurrentStreamFinal());
        this.finalStreamEndPositionUs = j;
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public int supportsFormat(com.google.android.exoplayer2.Format format) {
        if (this.decoderFactory.supportsFormat(format)) {
            return (format.cryptoType == 0 ? 4 : 2) | 0 | 0;
        }
        return com.google.android.exoplayer2.util.MimeTypes.isText(format.sampleMimeType) ? 1 : 0;
    }
}
