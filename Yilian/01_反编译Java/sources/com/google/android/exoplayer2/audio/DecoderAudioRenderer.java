package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public abstract class DecoderAudioRenderer<T extends com.google.android.exoplayer2.decoder.Decoder<com.google.android.exoplayer2.decoder.DecoderInputBuffer, ? extends com.google.android.exoplayer2.decoder.SimpleDecoderOutputBuffer, ? extends com.google.android.exoplayer2.decoder.DecoderException>> extends com.google.android.exoplayer2.BaseRenderer implements com.google.android.exoplayer2.util.MediaClock {
    public static final int REINITIALIZATION_STATE_NONE = 0;
    public static final int REINITIALIZATION_STATE_SIGNAL_END_OF_STREAM = 1;
    public static final int REINITIALIZATION_STATE_WAIT_END_OF_STREAM = 2;
    public static final java.lang.String TAG = "DecoderAudioRenderer";
    public boolean allowFirstBufferPositionDiscontinuity;
    public boolean allowPositionDiscontinuity;
    public final com.google.android.exoplayer2.audio.AudioSink audioSink;
    public boolean audioTrackNeedsConfigure;
    public long currentPositionUs;
    public T decoder;
    public com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters;
    public com.google.android.exoplayer2.drm.DrmSession decoderDrmSession;
    public boolean decoderReceivedBuffers;
    public int decoderReinitializationState;
    public int encoderDelay;
    public int encoderPadding;
    public final com.google.android.exoplayer2.audio.AudioRendererEventListener.EventDispatcher eventDispatcher;
    public boolean experimentalKeepAudioTrackOnSeek;
    public final com.google.android.exoplayer2.decoder.DecoderInputBuffer flagsOnlyBuffer;
    public com.google.android.exoplayer2.decoder.DecoderInputBuffer inputBuffer;
    public com.google.android.exoplayer2.Format inputFormat;
    public boolean inputStreamEnded;
    public com.google.android.exoplayer2.decoder.SimpleDecoderOutputBuffer outputBuffer;
    public boolean outputStreamEnded;
    public com.google.android.exoplayer2.drm.DrmSession sourceDrmSession;

    public final class AudioSinkListener implements com.google.android.exoplayer2.audio.AudioSink.Listener {
        public AudioSinkListener() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onAudioSinkError(java.lang.Exception exc) {
            com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.audio.DecoderAudioRenderer.TAG, "Audio sink error", exc);
            com.google.android.exoplayer2.audio.DecoderAudioRenderer.this.eventDispatcher.audioSinkError(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public /* synthetic */ void onOffloadBufferEmptying() {
            e.c.a.a.g2.n.$default$onOffloadBufferEmptying(this);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public /* synthetic */ void onOffloadBufferFull(long j) {
            e.c.a.a.g2.n.$default$onOffloadBufferFull(this, j);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onPositionAdvancing(long j) {
            com.google.android.exoplayer2.audio.DecoderAudioRenderer.this.eventDispatcher.positionAdvancing(j);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onPositionDiscontinuity() {
            com.google.android.exoplayer2.audio.DecoderAudioRenderer.this.onPositionDiscontinuity();
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onSkipSilenceEnabledChanged(boolean z) {
            com.google.android.exoplayer2.audio.DecoderAudioRenderer.this.eventDispatcher.skipSilenceEnabledChanged(z);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onUnderrun(int i, long j, long j2) {
            com.google.android.exoplayer2.audio.DecoderAudioRenderer.this.eventDispatcher.underrun(i, j, j2);
        }
    }

    public DecoderAudioRenderer() {
        this((android.os.Handler) null, (com.google.android.exoplayer2.audio.AudioRendererEventListener) null, new com.google.android.exoplayer2.audio.AudioProcessor[0]);
    }

    public DecoderAudioRenderer(android.os.Handler handler, com.google.android.exoplayer2.audio.AudioRendererEventListener audioRendererEventListener, com.google.android.exoplayer2.audio.AudioCapabilities audioCapabilities, com.google.android.exoplayer2.audio.AudioProcessor... audioProcessorArr) {
        this(handler, audioRendererEventListener, new com.google.android.exoplayer2.audio.DefaultAudioSink(audioCapabilities, audioProcessorArr));
    }

    public DecoderAudioRenderer(android.os.Handler handler, com.google.android.exoplayer2.audio.AudioRendererEventListener audioRendererEventListener, com.google.android.exoplayer2.audio.AudioSink audioSink) {
        super(1);
        this.eventDispatcher = new com.google.android.exoplayer2.audio.AudioRendererEventListener.EventDispatcher(handler, audioRendererEventListener);
        this.audioSink = audioSink;
        audioSink.setListener(new com.google.android.exoplayer2.audio.DecoderAudioRenderer.AudioSinkListener());
        this.flagsOnlyBuffer = com.google.android.exoplayer2.decoder.DecoderInputBuffer.newNoDataInstance();
        this.decoderReinitializationState = 0;
        this.audioTrackNeedsConfigure = true;
    }

    public DecoderAudioRenderer(android.os.Handler handler, com.google.android.exoplayer2.audio.AudioRendererEventListener audioRendererEventListener, com.google.android.exoplayer2.audio.AudioProcessor... audioProcessorArr) {
        this(handler, audioRendererEventListener, null, audioProcessorArr);
    }

    private boolean drainOutputBuffer() throws com.google.android.exoplayer2.ExoPlaybackException {
        if (this.outputBuffer == null) {
            com.google.android.exoplayer2.decoder.SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = (com.google.android.exoplayer2.decoder.SimpleDecoderOutputBuffer) this.decoder.dequeueOutputBuffer();
            this.outputBuffer = simpleDecoderOutputBuffer;
            if (simpleDecoderOutputBuffer == null) {
                return false;
            }
            int i = simpleDecoderOutputBuffer.skippedOutputBufferCount;
            if (i > 0) {
                this.decoderCounters.skippedOutputBufferCount += i;
                this.audioSink.handleDiscontinuity();
            }
        }
        if (this.outputBuffer.isEndOfStream()) {
            if (this.decoderReinitializationState == 2) {
                releaseDecoder();
                maybeInitDecoder();
                this.audioTrackNeedsConfigure = true;
            } else {
                this.outputBuffer.release();
                this.outputBuffer = null;
                try {
                    processEndOfStream();
                } catch (com.google.android.exoplayer2.audio.AudioSink.WriteException e2) {
                    throw createRendererException(e2, e2.format, e2.isRecoverable, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_AUDIO_TRACK_WRITE_FAILED);
                }
            }
            return false;
        }
        if (this.audioTrackNeedsConfigure) {
            this.audioSink.configure(getOutputFormat(this.decoder).buildUpon().setEncoderDelay(this.encoderDelay).setEncoderPadding(this.encoderPadding).build(), 0, null);
            this.audioTrackNeedsConfigure = false;
        }
        com.google.android.exoplayer2.audio.AudioSink audioSink = this.audioSink;
        com.google.android.exoplayer2.decoder.SimpleDecoderOutputBuffer simpleDecoderOutputBuffer2 = this.outputBuffer;
        if (!audioSink.handleBuffer(simpleDecoderOutputBuffer2.data, simpleDecoderOutputBuffer2.timeUs, 1)) {
            return false;
        }
        this.decoderCounters.renderedOutputBufferCount++;
        this.outputBuffer.release();
        this.outputBuffer = null;
        return true;
    }

    private boolean feedInputBuffer() throws com.google.android.exoplayer2.ExoPlaybackException {
        T t = this.decoder;
        if (t == null || this.decoderReinitializationState == 2 || this.inputStreamEnded) {
            return false;
        }
        if (this.inputBuffer == null) {
            com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer = (com.google.android.exoplayer2.decoder.DecoderInputBuffer) t.dequeueInputBuffer();
            this.inputBuffer = decoderInputBuffer;
            if (decoderInputBuffer == null) {
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
        this.inputBuffer.flip();
        com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer2 = this.inputBuffer;
        decoderInputBuffer2.format = this.inputFormat;
        onQueueInputBuffer(decoderInputBuffer2);
        this.decoder.queueInputBuffer(this.inputBuffer);
        this.decoderReceivedBuffers = true;
        this.decoderCounters.inputBufferCount++;
        this.inputBuffer = null;
        return true;
    }

    private void flushDecoder() throws com.google.android.exoplayer2.ExoPlaybackException {
        if (this.decoderReinitializationState != 0) {
            releaseDecoder();
            maybeInitDecoder();
            return;
        }
        this.inputBuffer = null;
        com.google.android.exoplayer2.decoder.SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = this.outputBuffer;
        if (simpleDecoderOutputBuffer != null) {
            simpleDecoderOutputBuffer.release();
            this.outputBuffer = null;
        }
        this.decoder.flush();
        this.decoderReceivedBuffers = false;
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
            com.google.android.exoplayer2.util.TraceUtil.beginSection("createAudioDecoder");
            this.decoder = (T) createDecoder(this.inputFormat, cryptoConfig);
            com.google.android.exoplayer2.util.TraceUtil.endSection();
            long jElapsedRealtime2 = android.os.SystemClock.elapsedRealtime();
            this.eventDispatcher.decoderInitialized(this.decoder.getName(), jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
            this.decoderCounters.decoderInitCount++;
        } catch (com.google.android.exoplayer2.decoder.DecoderException e2) {
            com.google.android.exoplayer2.util.Log.e(TAG, "Audio codec error", e2);
            this.eventDispatcher.audioCodecError(e2);
            throw createRendererException(e2, this.inputFormat, 4001);
        } catch (java.lang.OutOfMemoryError e3) {
            throw createRendererException(e3, this.inputFormat, 4001);
        }
    }

    private void onInputFormatChanged(com.google.android.exoplayer2.FormatHolder formatHolder) throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.Format format = (com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkNotNull(formatHolder.format);
        setSourceDrmSession(formatHolder.drmSession);
        com.google.android.exoplayer2.Format format2 = this.inputFormat;
        this.inputFormat = format;
        this.encoderDelay = format.encoderDelay;
        this.encoderPadding = format.encoderPadding;
        T t = this.decoder;
        if (t == null) {
            maybeInitDecoder();
            this.eventDispatcher.inputFormatChanged(this.inputFormat, null);
            return;
        }
        com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluation = this.sourceDrmSession != this.decoderDrmSession ? new com.google.android.exoplayer2.decoder.DecoderReuseEvaluation(t.getName(), format2, format, 0, 128) : canReuseDecoder(t.getName(), format2, format);
        if (decoderReuseEvaluation.result == 0) {
            if (this.decoderReceivedBuffers) {
                this.decoderReinitializationState = 1;
            } else {
                releaseDecoder();
                maybeInitDecoder();
                this.audioTrackNeedsConfigure = true;
            }
        }
        this.eventDispatcher.inputFormatChanged(this.inputFormat, decoderReuseEvaluation);
    }

    private void processEndOfStream() {
        this.outputStreamEnded = true;
        this.audioSink.playToEndOfStream();
    }

    private void releaseDecoder() {
        this.inputBuffer = null;
        this.outputBuffer = null;
        this.decoderReinitializationState = 0;
        this.decoderReceivedBuffers = false;
        T t = this.decoder;
        if (t != null) {
            this.decoderCounters.decoderReleaseCount++;
            t.release();
            this.eventDispatcher.decoderReleased(this.decoder.getName());
            this.decoder = null;
        }
        setDecoderDrmSession(null);
    }

    private void setDecoderDrmSession(com.google.android.exoplayer2.drm.DrmSession drmSession) {
        e.c.a.a.h2.t.a(this.decoderDrmSession, drmSession);
        this.decoderDrmSession = drmSession;
    }

    private void setSourceDrmSession(com.google.android.exoplayer2.drm.DrmSession drmSession) {
        e.c.a.a.h2.t.a(this.sourceDrmSession, drmSession);
        this.sourceDrmSession = drmSession;
    }

    private void updateCurrentPosition() {
        long currentPositionUs = this.audioSink.getCurrentPositionUs(isEnded());
        if (currentPositionUs != Long.MIN_VALUE) {
            if (!this.allowPositionDiscontinuity) {
                currentPositionUs = java.lang.Math.max(this.currentPositionUs, currentPositionUs);
            }
            this.currentPositionUs = currentPositionUs;
            this.allowPositionDiscontinuity = false;
        }
    }

    public com.google.android.exoplayer2.decoder.DecoderReuseEvaluation canReuseDecoder(java.lang.String str, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format format2) {
        return new com.google.android.exoplayer2.decoder.DecoderReuseEvaluation(str, format, format2, 0, 1);
    }

    public abstract T createDecoder(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.decoder.CryptoConfig cryptoConfig);

    public void experimentalSetEnableKeepAudioTrackOnSeek(boolean z) {
        this.experimentalKeepAudioTrackOnSeek = z;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.Renderer
    public com.google.android.exoplayer2.util.MediaClock getMediaClock() {
        return this;
    }

    public abstract com.google.android.exoplayer2.Format getOutputFormat(T t);

    @Override // com.google.android.exoplayer2.util.MediaClock
    public com.google.android.exoplayer2.PlaybackParameters getPlaybackParameters() {
        return this.audioSink.getPlaybackParameters();
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public long getPositionUs() {
        if (getState() == 2) {
            updateCurrentPosition();
        }
        return this.currentPositionUs;
    }

    public final int getSinkFormatSupport(com.google.android.exoplayer2.Format format) {
        return this.audioSink.getFormatSupport(format);
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, java.lang.Object obj) {
        if (i == 2) {
            this.audioSink.setVolume(((java.lang.Float) obj).floatValue());
            return;
        }
        if (i == 3) {
            this.audioSink.setAudioAttributes((com.google.android.exoplayer2.audio.AudioAttributes) obj);
            return;
        }
        if (i == 6) {
            this.audioSink.setAuxEffectInfo((com.google.android.exoplayer2.audio.AuxEffectInfo) obj);
        } else if (i == 9) {
            this.audioSink.setSkipSilenceEnabled(((java.lang.Boolean) obj).booleanValue());
        } else if (i != 10) {
            super.handleMessage(i, obj);
        } else {
            this.audioSink.setAudioSessionId(((java.lang.Integer) obj).intValue());
        }
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded && this.audioSink.isEnded();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        return this.audioSink.hasPendingData() || (this.inputFormat != null && (isSourceReady() || this.outputBuffer != null));
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        this.inputFormat = null;
        this.audioTrackNeedsConfigure = true;
        try {
            setSourceDrmSession(null);
            releaseDecoder();
            this.audioSink.reset();
        } finally {
            this.eventDispatcher.disabled(this.decoderCounters);
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onEnabled(boolean z, boolean z2) {
        com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters = new com.google.android.exoplayer2.decoder.DecoderCounters();
        this.decoderCounters = decoderCounters;
        this.eventDispatcher.enabled(decoderCounters);
        if (getConfiguration().tunneling) {
            this.audioSink.enableTunnelingV21();
        } else {
            this.audioSink.disableTunneling();
        }
    }

    public void onPositionDiscontinuity() {
        this.allowPositionDiscontinuity = true;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) throws com.google.android.exoplayer2.ExoPlaybackException {
        if (this.experimentalKeepAudioTrackOnSeek) {
            this.audioSink.experimentalFlushWithoutAudioTrackRelease();
        } else {
            this.audioSink.flush();
        }
        this.currentPositionUs = j;
        this.allowFirstBufferPositionDiscontinuity = true;
        this.allowPositionDiscontinuity = true;
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        if (this.decoder != null) {
            flushDecoder();
        }
    }

    public void onQueueInputBuffer(com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer) {
        if (!this.allowFirstBufferPositionDiscontinuity || decoderInputBuffer.isDecodeOnly()) {
            return;
        }
        if (java.lang.Math.abs(decoderInputBuffer.timeUs - this.currentPositionUs) > 500000) {
            this.currentPositionUs = decoderInputBuffer.timeUs;
        }
        this.allowFirstBufferPositionDiscontinuity = false;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStarted() {
        this.audioSink.play();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStopped() {
        updateCurrentPosition();
        this.audioSink.pause();
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) throws com.google.android.exoplayer2.ExoPlaybackException {
        if (this.outputStreamEnded) {
            try {
                this.audioSink.playToEndOfStream();
                return;
            } catch (com.google.android.exoplayer2.audio.AudioSink.WriteException e2) {
                throw createRendererException(e2, e2.format, e2.isRecoverable, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_AUDIO_TRACK_WRITE_FAILED);
            }
        }
        if (this.inputFormat == null) {
            com.google.android.exoplayer2.FormatHolder formatHolder = getFormatHolder();
            this.flagsOnlyBuffer.clear();
            int source = readSource(formatHolder, this.flagsOnlyBuffer, 2);
            if (source != -5) {
                if (source == -4) {
                    com.google.android.exoplayer2.util.Assertions.checkState(this.flagsOnlyBuffer.isEndOfStream());
                    this.inputStreamEnded = true;
                    try {
                        processEndOfStream();
                        return;
                    } catch (com.google.android.exoplayer2.audio.AudioSink.WriteException e3) {
                        throw createRendererException(e3, null, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_AUDIO_TRACK_WRITE_FAILED);
                    }
                }
                return;
            }
            onInputFormatChanged(formatHolder);
        }
        maybeInitDecoder();
        if (this.decoder != null) {
            try {
                com.google.android.exoplayer2.util.TraceUtil.beginSection("drainAndFeed");
                while (drainOutputBuffer()) {
                }
                while (feedInputBuffer()) {
                }
                com.google.android.exoplayer2.util.TraceUtil.endSection();
                this.decoderCounters.ensureUpdated();
            } catch (com.google.android.exoplayer2.audio.AudioSink.ConfigurationException e4) {
                throw createRendererException(e4, e4.format, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_AUDIO_TRACK_INIT_FAILED);
            } catch (com.google.android.exoplayer2.audio.AudioSink.InitializationException e5) {
                throw createRendererException(e5, e5.format, e5.isRecoverable, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_AUDIO_TRACK_INIT_FAILED);
            } catch (com.google.android.exoplayer2.audio.AudioSink.WriteException e6) {
                throw createRendererException(e6, e6.format, e6.isRecoverable, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_AUDIO_TRACK_WRITE_FAILED);
            } catch (com.google.android.exoplayer2.decoder.DecoderException e7) {
                com.google.android.exoplayer2.util.Log.e(TAG, "Audio codec error", e7);
                this.eventDispatcher.audioCodecError(e7);
                throw createRendererException(e7, this.inputFormat, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DECODING_FAILED);
            }
        }
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public void setPlaybackParameters(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        this.audioSink.setPlaybackParameters(playbackParameters);
    }

    public final boolean sinkSupportsFormat(com.google.android.exoplayer2.Format format) {
        return this.audioSink.supportsFormat(format);
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public final int supportsFormat(com.google.android.exoplayer2.Format format) {
        if (!com.google.android.exoplayer2.util.MimeTypes.isAudio(format.sampleMimeType)) {
            return 0;
        }
        int iSupportsFormatInternal = supportsFormatInternal(format);
        if (iSupportsFormatInternal <= 2) {
            return iSupportsFormatInternal | 0 | 0;
        }
        return iSupportsFormatInternal | 8 | (com.google.android.exoplayer2.util.Util.SDK_INT >= 21 ? 32 : 0);
    }

    public abstract int supportsFormatInternal(com.google.android.exoplayer2.Format format);
}
