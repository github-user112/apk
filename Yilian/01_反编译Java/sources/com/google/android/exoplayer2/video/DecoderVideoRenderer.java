package com.google.android.exoplayer2.video;

/* loaded from: classes.dex */
public abstract class DecoderVideoRenderer extends com.google.android.exoplayer2.BaseRenderer {
    public static final int REINITIALIZATION_STATE_NONE = 0;
    public static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM = 1;
    public static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 2;
    public static final java.lang.String TAG = "DecoderVideoRenderer";
    public final long allowedJoiningTimeMs;
    public int buffersInCodecCount;
    public int consecutiveDroppedFrameCount;
    public com.google.android.exoplayer2.decoder.Decoder<com.google.android.exoplayer2.decoder.DecoderInputBuffer, ? extends com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer, ? extends com.google.android.exoplayer2.decoder.DecoderException> decoder;
    public com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters;
    public com.google.android.exoplayer2.drm.DrmSession decoderDrmSession;
    public boolean decoderReceivedBuffers;
    public int decoderReinitializationState;
    public long droppedFrameAccumulationStartTimeMs;
    public int droppedFrames;
    public final com.google.android.exoplayer2.video.VideoRendererEventListener.EventDispatcher eventDispatcher;
    public final com.google.android.exoplayer2.decoder.DecoderInputBuffer flagsOnlyBuffer;
    public final com.google.android.exoplayer2.util.TimedValueQueue<com.google.android.exoplayer2.Format> formatQueue;
    public com.google.android.exoplayer2.video.VideoFrameMetadataListener frameMetadataListener;
    public long initialPositionUs;
    public com.google.android.exoplayer2.decoder.DecoderInputBuffer inputBuffer;
    public com.google.android.exoplayer2.Format inputFormat;
    public boolean inputStreamEnded;
    public long joiningDeadlineMs;
    public long lastRenderTimeUs;
    public final int maxDroppedFramesToNotify;
    public boolean mayRenderFirstFrameAfterEnableIfNotStarted;
    public java.lang.Object output;
    public com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer outputBuffer;
    public com.google.android.exoplayer2.video.VideoDecoderOutputBufferRenderer outputBufferRenderer;
    public com.google.android.exoplayer2.Format outputFormat;
    public int outputMode;
    public boolean outputStreamEnded;
    public long outputStreamOffsetUs;
    public android.view.Surface outputSurface;
    public boolean renderedFirstFrameAfterEnable;
    public boolean renderedFirstFrameAfterReset;
    public com.google.android.exoplayer2.video.VideoSize reportedVideoSize;
    public com.google.android.exoplayer2.drm.DrmSession sourceDrmSession;
    public boolean waitingForFirstSampleInFormat;

    public DecoderVideoRenderer(long j, android.os.Handler handler, com.google.android.exoplayer2.video.VideoRendererEventListener videoRendererEventListener, int i) {
        super(2);
        this.allowedJoiningTimeMs = j;
        this.maxDroppedFramesToNotify = i;
        this.joiningDeadlineMs = com.google.android.exoplayer2.C.TIME_UNSET;
        clearReportedVideoSize();
        this.formatQueue = new com.google.android.exoplayer2.util.TimedValueQueue<>();
        this.flagsOnlyBuffer = com.google.android.exoplayer2.decoder.DecoderInputBuffer.newNoDataInstance();
        this.eventDispatcher = new com.google.android.exoplayer2.video.VideoRendererEventListener.EventDispatcher(handler, videoRendererEventListener);
        this.decoderReinitializationState = 0;
        this.outputMode = -1;
    }

    private void clearRenderedFirstFrame() {
        this.renderedFirstFrameAfterReset = false;
    }

    private void clearReportedVideoSize() {
        this.reportedVideoSize = null;
    }

    private boolean drainOutputBuffer(long j, long j2) throws com.google.android.exoplayer2.ExoPlaybackException {
        if (this.outputBuffer == null) {
            com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer videoDecoderOutputBufferDequeueOutputBuffer = this.decoder.dequeueOutputBuffer();
            this.outputBuffer = videoDecoderOutputBufferDequeueOutputBuffer;
            if (videoDecoderOutputBufferDequeueOutputBuffer == null) {
                return false;
            }
            com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters = this.decoderCounters;
            int i = decoderCounters.skippedOutputBufferCount;
            int i2 = videoDecoderOutputBufferDequeueOutputBuffer.skippedOutputBufferCount;
            decoderCounters.skippedOutputBufferCount = i + i2;
            this.buffersInCodecCount -= i2;
        }
        if (!this.outputBuffer.isEndOfStream()) {
            boolean zProcessOutputBuffer = processOutputBuffer(j, j2);
            if (zProcessOutputBuffer) {
                onProcessedOutputBuffer(this.outputBuffer.timeUs);
                this.outputBuffer = null;
            }
            return zProcessOutputBuffer;
        }
        if (this.decoderReinitializationState == 2) {
            releaseDecoder();
            maybeInitDecoder();
        } else {
            this.outputBuffer.release();
            this.outputBuffer = null;
            this.outputStreamEnded = true;
        }
        return false;
    }

    private boolean feedInputBuffer() throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.decoder.Decoder<com.google.android.exoplayer2.decoder.DecoderInputBuffer, ? extends com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer, ? extends com.google.android.exoplayer2.decoder.DecoderException> decoder = this.decoder;
        if (decoder == null || this.decoderReinitializationState == 2 || this.inputStreamEnded) {
            return false;
        }
        if (this.inputBuffer == null) {
            com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBufferDequeueInputBuffer = decoder.dequeueInputBuffer();
            this.inputBuffer = decoderInputBufferDequeueInputBuffer;
            if (decoderInputBufferDequeueInputBuffer == null) {
                return false;
            }
        }
        if (this.decoderReinitializationState == 1) {
            this.inputBuffer.setFlags(4);
            this.decoder.queueInputBuffer(this.inputBuffer);
            this.inputBuffer = null;
            this.decoderReinitializationState = 2;
            return false;
        }
        com.google.android.exoplayer2.FormatHolder formatHolder = getFormatHolder();
        int source = readSource(formatHolder, this.inputBuffer, 0);
        if (source == -5) {
            onInputFormatChanged(formatHolder);
            return true;
        }
        if (source != -4) {
            if (source == -3) {
                return false;
            }
            throw new java.lang.IllegalStateException();
        }
        if (this.inputBuffer.isEndOfStream()) {
            this.inputStreamEnded = true;
            this.decoder.queueInputBuffer(this.inputBuffer);
            this.inputBuffer = null;
            return false;
        }
        if (this.waitingForFirstSampleInFormat) {
            this.formatQueue.add(this.inputBuffer.timeUs, this.inputFormat);
            this.waitingForFirstSampleInFormat = false;
        }
        this.inputBuffer.flip();
        com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer = this.inputBuffer;
        decoderInputBuffer.format = this.inputFormat;
        onQueueInputBuffer(decoderInputBuffer);
        this.decoder.queueInputBuffer(this.inputBuffer);
        this.buffersInCodecCount++;
        this.decoderReceivedBuffers = true;
        this.decoderCounters.inputBufferCount++;
        this.inputBuffer = null;
        return true;
    }

    private boolean hasOutput() {
        return this.outputMode != -1;
    }

    public static boolean isBufferLate(long j) {
        return j < -30000;
    }

    public static boolean isBufferVeryLate(long j) {
        return j < -500000;
    }

    private void maybeInitDecoder() throws com.google.android.exoplayer2.ExoPlaybackException {
        if (this.decoder != null) {
            return;
        }
        setDecoderDrmSession(this.sourceDrmSession);
        com.google.android.exoplayer2.decoder.CryptoConfig cryptoConfig = null;
        com.google.android.exoplayer2.drm.DrmSession drmSession = this.decoderDrmSession;
        if (drmSession != null && (cryptoConfig = drmSession.getCryptoConfig()) == null && this.decoderDrmSession.getError() == null) {
            return;
        }
        try {
            long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
            this.decoder = createDecoder(this.inputFormat, cryptoConfig);
            setDecoderOutputMode(this.outputMode);
            long jElapsedRealtime2 = android.os.SystemClock.elapsedRealtime();
            this.eventDispatcher.decoderInitialized(this.decoder.getName(), jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
            this.decoderCounters.decoderInitCount++;
        } catch (com.google.android.exoplayer2.decoder.DecoderException e2) {
            com.google.android.exoplayer2.util.Log.e(TAG, "Video codec error", e2);
            this.eventDispatcher.videoCodecError(e2);
            throw createRendererException(e2, this.inputFormat, 4001);
        } catch (java.lang.OutOfMemoryError e3) {
            throw createRendererException(e3, this.inputFormat, 4001);
        }
    }

    private void maybeNotifyDroppedFrames() {
        if (this.droppedFrames > 0) {
            long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
            this.eventDispatcher.droppedFrames(this.droppedFrames, jElapsedRealtime - this.droppedFrameAccumulationStartTimeMs);
            this.droppedFrames = 0;
            this.droppedFrameAccumulationStartTimeMs = jElapsedRealtime;
        }
    }

    private void maybeNotifyRenderedFirstFrame() {
        this.renderedFirstFrameAfterEnable = true;
        if (this.renderedFirstFrameAfterReset) {
            return;
        }
        this.renderedFirstFrameAfterReset = true;
        this.eventDispatcher.renderedFirstFrame(this.output);
    }

    private void maybeNotifyVideoSizeChanged(int i, int i2) {
        com.google.android.exoplayer2.video.VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null && videoSize.width == i && videoSize.height == i2) {
            return;
        }
        com.google.android.exoplayer2.video.VideoSize videoSize2 = new com.google.android.exoplayer2.video.VideoSize(i, i2);
        this.reportedVideoSize = videoSize2;
        this.eventDispatcher.videoSizeChanged(videoSize2);
    }

    private void maybeRenotifyRenderedFirstFrame() {
        if (this.renderedFirstFrameAfterReset) {
            this.eventDispatcher.renderedFirstFrame(this.output);
        }
    }

    private void maybeRenotifyVideoSizeChanged() {
        com.google.android.exoplayer2.video.VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null) {
            this.eventDispatcher.videoSizeChanged(videoSize);
        }
    }

    private void onOutputChanged() {
        maybeRenotifyVideoSizeChanged();
        clearRenderedFirstFrame();
        if (getState() == 2) {
            setJoiningDeadlineMs();
        }
    }

    private void onOutputRemoved() {
        clearReportedVideoSize();
        clearRenderedFirstFrame();
    }

    private void onOutputReset() {
        maybeRenotifyVideoSizeChanged();
        maybeRenotifyRenderedFirstFrame();
    }

    private boolean processOutputBuffer(long j, long j2) {
        if (this.initialPositionUs == com.google.android.exoplayer2.C.TIME_UNSET) {
            this.initialPositionUs = j;
        }
        long j3 = this.outputBuffer.timeUs - j;
        if (!hasOutput()) {
            if (!isBufferLate(j3)) {
                return false;
            }
            skipOutputBuffer(this.outputBuffer);
            return true;
        }
        long j4 = this.outputBuffer.timeUs - this.outputStreamOffsetUs;
        com.google.android.exoplayer2.Format formatPollFloor = this.formatQueue.pollFloor(j4);
        if (formatPollFloor != null) {
            this.outputFormat = formatPollFloor;
        }
        long jElapsedRealtime = (android.os.SystemClock.elapsedRealtime() * 1000) - this.lastRenderTimeUs;
        boolean z = getState() == 2;
        if ((this.renderedFirstFrameAfterEnable ? !this.renderedFirstFrameAfterReset : z || this.mayRenderFirstFrameAfterEnableIfNotStarted) || (z && shouldForceRenderOutputBuffer(j3, jElapsedRealtime))) {
            renderOutputBuffer(this.outputBuffer, j4, this.outputFormat);
            return true;
        }
        if (!z || j == this.initialPositionUs || (shouldDropBuffersToKeyframe(j3, j2) && maybeDropBuffersToKeyframe(j))) {
            return false;
        }
        if (shouldDropOutputBuffer(j3, j2)) {
            dropOutputBuffer(this.outputBuffer);
            return true;
        }
        if (j3 < 30000) {
            renderOutputBuffer(this.outputBuffer, j4, this.outputFormat);
            return true;
        }
        return false;
    }

    private void setDecoderDrmSession(com.google.android.exoplayer2.drm.DrmSession drmSession) {
        e.c.a.a.h2.t.a(this.decoderDrmSession, drmSession);
        this.decoderDrmSession = drmSession;
    }

    private void setJoiningDeadlineMs() {
        this.joiningDeadlineMs = this.allowedJoiningTimeMs > 0 ? android.os.SystemClock.elapsedRealtime() + this.allowedJoiningTimeMs : com.google.android.exoplayer2.C.TIME_UNSET;
    }

    private void setSourceDrmSession(com.google.android.exoplayer2.drm.DrmSession drmSession) {
        e.c.a.a.h2.t.a(this.sourceDrmSession, drmSession);
        this.sourceDrmSession = drmSession;
    }

    public com.google.android.exoplayer2.decoder.DecoderReuseEvaluation canReuseDecoder(java.lang.String str, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format format2) {
        return new com.google.android.exoplayer2.decoder.DecoderReuseEvaluation(str, format, format2, 0, 1);
    }

    public abstract com.google.android.exoplayer2.decoder.Decoder<com.google.android.exoplayer2.decoder.DecoderInputBuffer, ? extends com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer, ? extends com.google.android.exoplayer2.decoder.DecoderException> createDecoder(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.CryptoConfig cryptoConfig);

    public void dropOutputBuffer(com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        updateDroppedBufferCounters(1);
        videoDecoderOutputBuffer.release();
    }

    public void flushDecoder() throws com.google.android.exoplayer2.ExoPlaybackException {
        this.buffersInCodecCount = 0;
        if (this.decoderReinitializationState != 0) {
            releaseDecoder();
            maybeInitDecoder();
            return;
        }
        this.inputBuffer = null;
        com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer videoDecoderOutputBuffer = this.outputBuffer;
        if (videoDecoderOutputBuffer != null) {
            videoDecoderOutputBuffer.release();
            this.outputBuffer = null;
        }
        this.decoder.flush();
        this.decoderReceivedBuffers = false;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, java.lang.Object obj) {
        if (i == 1) {
            setOutput(obj);
        } else if (i == 7) {
            this.frameMetadataListener = (com.google.android.exoplayer2.video.VideoFrameMetadataListener) obj;
        } else {
            super.handleMessage(i, obj);
        }
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        if (this.inputFormat != null && ((isSourceReady() || this.outputBuffer != null) && (this.renderedFirstFrameAfterReset || !hasOutput()))) {
            this.joiningDeadlineMs = com.google.android.exoplayer2.C.TIME_UNSET;
            return true;
        }
        if (this.joiningDeadlineMs == com.google.android.exoplayer2.C.TIME_UNSET) {
            return false;
        }
        if (android.os.SystemClock.elapsedRealtime() < this.joiningDeadlineMs) {
            return true;
        }
        this.joiningDeadlineMs = com.google.android.exoplayer2.C.TIME_UNSET;
        return false;
    }

    public boolean maybeDropBuffersToKeyframe(long j) throws com.google.android.exoplayer2.ExoPlaybackException {
        int iSkipSource = skipSource(j);
        if (iSkipSource == 0) {
            return false;
        }
        this.decoderCounters.droppedToKeyframeCount++;
        updateDroppedBufferCounters(this.buffersInCodecCount + iSkipSource);
        flushDecoder();
        return true;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        this.inputFormat = null;
        clearReportedVideoSize();
        clearRenderedFirstFrame();
        try {
            setSourceDrmSession(null);
            releaseDecoder();
        } finally {
            this.eventDispatcher.disabled(this.decoderCounters);
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onEnabled(boolean z, boolean z2) {
        com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters = new com.google.android.exoplayer2.decoder.DecoderCounters();
        this.decoderCounters = decoderCounters;
        this.eventDispatcher.enabled(decoderCounters);
        this.mayRenderFirstFrameAfterEnableIfNotStarted = z2;
        this.renderedFirstFrameAfterEnable = false;
    }

    public void onInputFormatChanged(com.google.android.exoplayer2.FormatHolder formatHolder) throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation;
        com.google.android.exoplayer2.video.VideoRendererEventListener.EventDispatcher eventDispatcher;
        com.google.android.exoplayer2.Format format;
        this.waitingForFirstSampleInFormat = true;
        com.google.android.exoplayer2.Format format2 = (com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkNotNull(formatHolder.format);
        setSourceDrmSession(formatHolder.drmSession);
        com.google.android.exoplayer2.Format format3 = this.inputFormat;
        this.inputFormat = format2;
        com.google.android.exoplayer2.decoder.Decoder<com.google.android.exoplayer2.decoder.DecoderInputBuffer, ? extends com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer, ? extends com.google.android.exoplayer2.decoder.DecoderException> decoder = this.decoder;
        if (decoder == null) {
            maybeInitDecoder();
            eventDispatcher = this.eventDispatcher;
            format = this.inputFormat;
            decoderReuseEvaluation = null;
        } else {
            decoderReuseEvaluation = this.sourceDrmSession != this.decoderDrmSession ? new com.google.android.exoplayer2.decoder.DecoderReuseEvaluation(decoder.getName(), format3, format2, 0, 128) : canReuseDecoder(decoder.getName(), format3, format2);
            if (decoderReuseEvaluation.result == 0) {
                if (this.decoderReceivedBuffers) {
                    this.decoderReinitializationState = 1;
                } else {
                    releaseDecoder();
                    maybeInitDecoder();
                }
            }
            eventDispatcher = this.eventDispatcher;
            format = this.inputFormat;
        }
        eventDispatcher.inputFormatChanged(format, decoderReuseEvaluation);
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) throws com.google.android.exoplayer2.ExoPlaybackException {
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        clearRenderedFirstFrame();
        this.initialPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.consecutiveDroppedFrameCount = 0;
        if (this.decoder != null) {
            flushDecoder();
        }
        if (z) {
            setJoiningDeadlineMs();
        } else {
            this.joiningDeadlineMs = com.google.android.exoplayer2.C.TIME_UNSET;
        }
        this.formatQueue.clear();
    }

    public void onProcessedOutputBuffer(long j) {
        this.buffersInCodecCount--;
    }

    public void onQueueInputBuffer(com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer) {
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStarted() {
        this.droppedFrames = 0;
        this.droppedFrameAccumulationStartTimeMs = android.os.SystemClock.elapsedRealtime();
        this.lastRenderTimeUs = android.os.SystemClock.elapsedRealtime() * 1000;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStopped() {
        this.joiningDeadlineMs = com.google.android.exoplayer2.C.TIME_UNSET;
        maybeNotifyDroppedFrames();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStreamChanged(com.google.android.exoplayer2.Format[] formatArr, long j, long j2) {
        this.outputStreamOffsetUs = j2;
        super.onStreamChanged(formatArr, j, j2);
    }

    public void releaseDecoder() {
        this.inputBuffer = null;
        this.outputBuffer = null;
        this.decoderReinitializationState = 0;
        this.decoderReceivedBuffers = false;
        this.buffersInCodecCount = 0;
        com.google.android.exoplayer2.decoder.Decoder<com.google.android.exoplayer2.decoder.DecoderInputBuffer, ? extends com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer, ? extends com.google.android.exoplayer2.decoder.DecoderException> decoder = this.decoder;
        if (decoder != null) {
            this.decoderCounters.decoderReleaseCount++;
            decoder.release();
            this.eventDispatcher.decoderReleased(this.decoder.getName());
            this.decoder = null;
        }
        setDecoderDrmSession(null);
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) throws com.google.android.exoplayer2.ExoPlaybackException {
        if (this.outputStreamEnded) {
            return;
        }
        if (this.inputFormat == null) {
            com.google.android.exoplayer2.FormatHolder formatHolder = getFormatHolder();
            this.flagsOnlyBuffer.clear();
            int source = readSource(formatHolder, this.flagsOnlyBuffer, 2);
            if (source != -5) {
                if (source == -4) {
                    com.google.android.exoplayer2.util.Assertions.checkState(this.flagsOnlyBuffer.isEndOfStream());
                    this.inputStreamEnded = true;
                    this.outputStreamEnded = true;
                    return;
                }
                return;
            }
            onInputFormatChanged(formatHolder);
        }
        maybeInitDecoder();
        if (this.decoder != null) {
            try {
                com.google.android.exoplayer2.util.TraceUtil.beginSection("drainAndFeed");
                while (drainOutputBuffer(j, j2)) {
                }
                while (feedInputBuffer()) {
                }
                com.google.android.exoplayer2.util.TraceUtil.endSection();
                this.decoderCounters.ensureUpdated();
            } catch (com.google.android.exoplayer2.decoder.DecoderException e2) {
                com.google.android.exoplayer2.util.Log.e(TAG, "Video codec error", e2);
                this.eventDispatcher.videoCodecError(e2);
                throw createRendererException(e2, this.inputFormat, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DECODING_FAILED);
            }
        }
    }

    public void renderOutputBuffer(com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer videoDecoderOutputBuffer, long j, com.google.android.exoplayer2.Format format) {
        com.google.android.exoplayer2.video.VideoFrameMetadataListener videoFrameMetadataListener = this.frameMetadataListener;
        if (videoFrameMetadataListener != null) {
            videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j, java.lang.System.nanoTime(), format, null);
        }
        this.lastRenderTimeUs = com.google.android.exoplayer2.util.Util.msToUs(android.os.SystemClock.elapsedRealtime() * 1000);
        int i = videoDecoderOutputBuffer.mode;
        boolean z = i == 1 && this.outputSurface != null;
        boolean z2 = i == 0 && this.outputBufferRenderer != null;
        if (!z2 && !z) {
            dropOutputBuffer(videoDecoderOutputBuffer);
            return;
        }
        maybeNotifyVideoSizeChanged(videoDecoderOutputBuffer.width, videoDecoderOutputBuffer.height);
        if (z2) {
            this.outputBufferRenderer.setOutputBuffer(videoDecoderOutputBuffer);
        } else {
            renderOutputBufferToSurface(videoDecoderOutputBuffer, this.outputSurface);
        }
        this.consecutiveDroppedFrameCount = 0;
        this.decoderCounters.renderedOutputBufferCount++;
        maybeNotifyRenderedFirstFrame();
    }

    public abstract void renderOutputBufferToSurface(com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer videoDecoderOutputBuffer, android.view.Surface surface);

    public abstract void setDecoderOutputMode(int i);

    /* JADX WARN: Removed duplicated region for block: B:12:0x0027  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void setOutput(java.lang.Object r3) {
        /*
            r2 = this;
            boolean r0 = r3 instanceof android.view.Surface
            r1 = 0
            if (r0 == 0) goto L10
            r0 = r3
            android.view.Surface r0 = (android.view.Surface) r0
            r2.outputSurface = r0
            r2.outputBufferRenderer = r1
            r0 = 1
        Ld:
            r2.outputMode = r0
            goto L23
        L10:
            boolean r0 = r3 instanceof com.google.android.exoplayer2.video.VideoDecoderOutputBufferRenderer
            r2.outputSurface = r1
            if (r0 == 0) goto L1d
            r0 = r3
            com.google.android.exoplayer2.video.VideoDecoderOutputBufferRenderer r0 = (com.google.android.exoplayer2.video.VideoDecoderOutputBufferRenderer) r0
            r2.outputBufferRenderer = r0
            r0 = 0
            goto Ld
        L1d:
            r2.outputBufferRenderer = r1
            r3 = -1
            r2.outputMode = r3
            r3 = r1
        L23:
            java.lang.Object r0 = r2.output
            if (r0 == r3) goto L3c
            r2.output = r3
            if (r3 == 0) goto L38
            com.google.android.exoplayer2.decoder.Decoder<com.google.android.exoplayer2.decoder.DecoderInputBuffer, ? extends com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer, ? extends com.google.android.exoplayer2.decoder.DecoderException> r3 = r2.decoder
            if (r3 == 0) goto L34
            int r3 = r2.outputMode
            r2.setDecoderOutputMode(r3)
        L34:
            r2.onOutputChanged()
            goto L41
        L38:
            r2.onOutputRemoved()
            goto L41
        L3c:
            if (r3 == 0) goto L41
            r2.onOutputReset()
        L41:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.DecoderVideoRenderer.setOutput(java.lang.Object):void");
    }

    public boolean shouldDropBuffersToKeyframe(long j, long j2) {
        return isBufferVeryLate(j);
    }

    public boolean shouldDropOutputBuffer(long j, long j2) {
        return isBufferLate(j);
    }

    public boolean shouldForceRenderOutputBuffer(long j, long j2) {
        return isBufferLate(j) && j2 > 100000;
    }

    public void skipOutputBuffer(com.google.android.exoplayer2.decoder.VideoDecoderOutputBuffer videoDecoderOutputBuffer) {
        this.decoderCounters.skippedOutputBufferCount++;
        videoDecoderOutputBuffer.release();
    }

    public void updateDroppedBufferCounters(int i) {
        com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters = this.decoderCounters;
        decoderCounters.droppedBufferCount += i;
        this.droppedFrames += i;
        int i2 = this.consecutiveDroppedFrameCount + i;
        this.consecutiveDroppedFrameCount = i2;
        decoderCounters.maxConsecutiveDroppedBufferCount = java.lang.Math.max(i2, decoderCounters.maxConsecutiveDroppedBufferCount);
        int i3 = this.maxDroppedFramesToNotify;
        if (i3 <= 0 || this.droppedFrames < i3) {
            return;
        }
        maybeNotifyDroppedFrames();
    }
}
