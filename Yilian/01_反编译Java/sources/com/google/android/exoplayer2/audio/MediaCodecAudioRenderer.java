package com.google.android.exoplayer2.audio;

/* loaded from: classes.dex */
public class MediaCodecAudioRenderer extends com.google.android.exoplayer2.mediacodec.MediaCodecRenderer implements com.google.android.exoplayer2.util.MediaClock {
    public static final java.lang.String TAG = "MediaCodecAudioRenderer";
    public static final java.lang.String VIVO_BITS_PER_SAMPLE_KEY = "v-bits-per-sample";
    public boolean allowFirstBufferPositionDiscontinuity;
    public boolean allowPositionDiscontinuity;
    public final com.google.android.exoplayer2.audio.AudioSink audioSink;
    public boolean audioSinkNeedsReset;
    public int codecMaxInputSize;
    public boolean codecNeedsDiscardChannelsWorkaround;
    public final android.content.Context context;
    public long currentPositionUs;
    public com.google.android.exoplayer2.Format decryptOnlyCodecFormat;
    public final com.google.android.exoplayer2.audio.AudioRendererEventListener.EventDispatcher eventDispatcher;
    public boolean experimentalKeepAudioTrackOnSeek;
    public com.google.android.exoplayer2.Renderer.WakeupListener wakeupListener;

    public final class AudioSinkListener implements com.google.android.exoplayer2.audio.AudioSink.Listener {
        public AudioSinkListener() {
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onAudioSinkError(java.lang.Exception exc) {
            com.google.android.exoplayer2.util.Log.e(com.google.android.exoplayer2.audio.MediaCodecAudioRenderer.TAG, "Audio sink error", exc);
            com.google.android.exoplayer2.audio.MediaCodecAudioRenderer.this.eventDispatcher.audioSinkError(exc);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onOffloadBufferEmptying() {
            if (com.google.android.exoplayer2.audio.MediaCodecAudioRenderer.this.wakeupListener != null) {
                com.google.android.exoplayer2.audio.MediaCodecAudioRenderer.this.wakeupListener.onWakeup();
            }
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onOffloadBufferFull(long j) {
            if (com.google.android.exoplayer2.audio.MediaCodecAudioRenderer.this.wakeupListener != null) {
                com.google.android.exoplayer2.audio.MediaCodecAudioRenderer.this.wakeupListener.onSleep(j);
            }
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onPositionAdvancing(long j) {
            com.google.android.exoplayer2.audio.MediaCodecAudioRenderer.this.eventDispatcher.positionAdvancing(j);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onPositionDiscontinuity() {
            com.google.android.exoplayer2.audio.MediaCodecAudioRenderer.this.onPositionDiscontinuity();
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onSkipSilenceEnabledChanged(boolean z) {
            com.google.android.exoplayer2.audio.MediaCodecAudioRenderer.this.eventDispatcher.skipSilenceEnabledChanged(z);
        }

        @Override // com.google.android.exoplayer2.audio.AudioSink.Listener
        public void onUnderrun(int i, long j, long j2) {
            com.google.android.exoplayer2.audio.MediaCodecAudioRenderer.this.eventDispatcher.underrun(i, j, j2);
        }
    }

    public MediaCodecAudioRenderer(android.content.Context context, com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory factory, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, boolean z, android.os.Handler handler, com.google.android.exoplayer2.audio.AudioRendererEventListener audioRendererEventListener, com.google.android.exoplayer2.audio.AudioSink audioSink) {
        super(1, factory, mediaCodecSelector, z, 44100.0f);
        this.context = context.getApplicationContext();
        this.audioSink = audioSink;
        this.eventDispatcher = new com.google.android.exoplayer2.audio.AudioRendererEventListener.EventDispatcher(handler, audioRendererEventListener);
        audioSink.setListener(new com.google.android.exoplayer2.audio.MediaCodecAudioRenderer.AudioSinkListener());
    }

    public MediaCodecAudioRenderer(android.content.Context context, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector) {
        this(context, mediaCodecSelector, null, null);
    }

    public MediaCodecAudioRenderer(android.content.Context context, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, android.os.Handler handler, com.google.android.exoplayer2.audio.AudioRendererEventListener audioRendererEventListener) {
        this(context, mediaCodecSelector, handler, audioRendererEventListener, (com.google.android.exoplayer2.audio.AudioCapabilities) null, new com.google.android.exoplayer2.audio.AudioProcessor[0]);
    }

    public MediaCodecAudioRenderer(android.content.Context context, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, android.os.Handler handler, com.google.android.exoplayer2.audio.AudioRendererEventListener audioRendererEventListener, com.google.android.exoplayer2.audio.AudioCapabilities audioCapabilities, com.google.android.exoplayer2.audio.AudioProcessor... audioProcessorArr) {
        this(context, mediaCodecSelector, handler, audioRendererEventListener, new com.google.android.exoplayer2.audio.DefaultAudioSink(audioCapabilities, audioProcessorArr));
    }

    public MediaCodecAudioRenderer(android.content.Context context, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, android.os.Handler handler, com.google.android.exoplayer2.audio.AudioRendererEventListener audioRendererEventListener, com.google.android.exoplayer2.audio.AudioSink audioSink) {
        this(context, com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, false, handler, audioRendererEventListener, audioSink);
    }

    public MediaCodecAudioRenderer(android.content.Context context, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, boolean z, android.os.Handler handler, com.google.android.exoplayer2.audio.AudioRendererEventListener audioRendererEventListener, com.google.android.exoplayer2.audio.AudioSink audioSink) {
        this(context, com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, z, handler, audioRendererEventListener, audioSink);
    }

    public static boolean codecNeedsDiscardChannelsWorkaround(java.lang.String str) {
        return com.google.android.exoplayer2.util.Util.SDK_INT < 24 && "OMX.SEC.aac.dec".equals(str) && "samsung".equals(com.google.android.exoplayer2.util.Util.MANUFACTURER) && (com.google.android.exoplayer2.util.Util.DEVICE.startsWith("zeroflte") || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("herolte") || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("heroqlte"));
    }

    public static boolean deviceDoesntSupportOperatingRate() {
        return com.google.android.exoplayer2.util.Util.SDK_INT == 23 && ("ZTE B2017G".equals(com.google.android.exoplayer2.util.Util.MODEL) || "AXON 7 mini".equals(com.google.android.exoplayer2.util.Util.MODEL));
    }

    private int getCodecMaxInputSize(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, com.google.android.exoplayer2.Format format) {
        int i;
        if (!"OMX.google.raw.decoder".equals(mediaCodecInfo.name) || (i = com.google.android.exoplayer2.util.Util.SDK_INT) >= 24 || (i == 23 && com.google.android.exoplayer2.util.Util.isTv(this.context))) {
            return format.maxInputSize;
        }
        return -1;
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

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public com.google.android.exoplayer2.decoder.DecoderReuseEvaluation canReuseCodec(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format format2) {
        com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluationCanReuseCodec = mediaCodecInfo.canReuseCodec(format, format2);
        int i = decoderReuseEvaluationCanReuseCodec.discardReasons;
        if (getCodecMaxInputSize(mediaCodecInfo, format2) > this.codecMaxInputSize) {
            i |= 64;
        }
        int i2 = i;
        return new com.google.android.exoplayer2.decoder.DecoderReuseEvaluation(mediaCodecInfo.name, format, format2, i2 != 0 ? 0 : decoderReuseEvaluationCanReuseCodec.result, i2);
    }

    public void experimentalSetEnableKeepAudioTrackOnSeek(boolean z) {
        this.experimentalKeepAudioTrackOnSeek = z;
    }

    public int getCodecMaxInputSize(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format[] formatArr) {
        int codecMaxInputSize = getCodecMaxInputSize(mediaCodecInfo, format);
        if (formatArr.length == 1) {
            return codecMaxInputSize;
        }
        for (com.google.android.exoplayer2.Format format2 : formatArr) {
            if (mediaCodecInfo.canReuseCodec(format, format2).result != 0) {
                codecMaxInputSize = java.lang.Math.max(codecMaxInputSize, getCodecMaxInputSize(mediaCodecInfo, format2));
            }
        }
        return codecMaxInputSize;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public float getCodecOperatingRateV23(float f2, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format[] formatArr) {
        int iMax = -1;
        for (com.google.android.exoplayer2.Format format2 : formatArr) {
            int i = format2.sampleRate;
            if (i != -1) {
                iMax = java.lang.Math.max(iMax, i);
            }
        }
        if (iMax == -1) {
            return -1.0f;
        }
        return f2 * iMax;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> getDecoderInfos(com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, com.google.android.exoplayer2.Format format, boolean z) {
        com.google.android.exoplayer2.mediacodec.MediaCodecInfo decryptOnlyDecoderInfo;
        java.lang.String str = format.sampleMimeType;
        if (str == null) {
            return java.util.Collections.emptyList();
        }
        if (this.audioSink.supportsFormat(format) && (decryptOnlyDecoderInfo = com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getDecryptOnlyDecoderInfo()) != null) {
            return java.util.Collections.singletonList(decryptOnlyDecoderInfo);
        }
        java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> decoderInfosSortedByFormatSupport = com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getDecoderInfosSortedByFormatSupport(mediaCodecSelector.getDecoderInfos(str, z, false), format);
        if (com.google.android.exoplayer2.util.MimeTypes.AUDIO_E_AC3_JOC.equals(str)) {
            java.util.ArrayList arrayList = new java.util.ArrayList(decoderInfosSortedByFormatSupport);
            arrayList.addAll(mediaCodecSelector.getDecoderInfos(com.google.android.exoplayer2.util.MimeTypes.AUDIO_E_AC3, z, false));
            decoderInfosSortedByFormatSupport = arrayList;
        }
        return java.util.Collections.unmodifiableList(decoderInfosSortedByFormatSupport);
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.Renderer
    public com.google.android.exoplayer2.util.MediaClock getMediaClock() {
        return this;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Configuration getMediaCodecConfiguration(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, com.google.android.exoplayer2.Format format, android.media.MediaCrypto mediaCrypto, float f2) {
        this.codecMaxInputSize = getCodecMaxInputSize(mediaCodecInfo, format, getStreamFormats());
        this.codecNeedsDiscardChannelsWorkaround = codecNeedsDiscardChannelsWorkaround(mediaCodecInfo.name);
        android.media.MediaFormat mediaFormat = getMediaFormat(format, mediaCodecInfo.codecMimeType, this.codecMaxInputSize, f2);
        this.decryptOnlyCodecFormat = com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW.equals(mediaCodecInfo.mimeType) && !com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW.equals(format.sampleMimeType) ? format : null;
        return com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Configuration.createForAudioDecoding(mediaCodecInfo, mediaFormat, format, mediaCrypto);
    }

    @android.annotation.SuppressLint({"InlinedApi"})
    public android.media.MediaFormat getMediaFormat(com.google.android.exoplayer2.Format format, java.lang.String str, int i, float f2) {
        android.media.MediaFormat mediaFormat = new android.media.MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("channel-count", format.channelCount);
        mediaFormat.setInteger("sample-rate", format.sampleRate);
        com.google.android.exoplayer2.util.MediaFormatUtil.setCsdBuffers(mediaFormat, format.initializationData);
        com.google.android.exoplayer2.util.MediaFormatUtil.maybeSetInteger(mediaFormat, "max-input-size", i);
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f2 != -1.0f && !deviceDoesntSupportOperatingRate()) {
                mediaFormat.setFloat("operating-rate", f2);
            }
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT <= 28 && com.google.android.exoplayer2.util.MimeTypes.AUDIO_AC4.equals(format.sampleMimeType)) {
            mediaFormat.setInteger("ac4-is-sync", 1);
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 24 && this.audioSink.getFormatSupport(com.google.android.exoplayer2.util.Util.getPcmFormat(4, format.channelCount, format.sampleRate)) == 2) {
            mediaFormat.setInteger("pcm-encoding", 4);
        }
        return mediaFormat;
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public java.lang.String getName() {
        return TAG;
    }

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

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, java.lang.Object obj) {
        if (i == 2) {
            this.audioSink.setVolume(((java.lang.Float) obj).floatValue());
        }
        if (i == 3) {
            this.audioSink.setAudioAttributes((com.google.android.exoplayer2.audio.AudioAttributes) obj);
            return;
        }
        if (i == 6) {
            this.audioSink.setAuxEffectInfo((com.google.android.exoplayer2.audio.AuxEffectInfo) obj);
            return;
        }
        switch (i) {
            case 9:
                this.audioSink.setSkipSilenceEnabled(((java.lang.Boolean) obj).booleanValue());
                break;
            case 10:
                this.audioSink.setAudioSessionId(((java.lang.Integer) obj).intValue());
                break;
            case 11:
                this.wakeupListener = (com.google.android.exoplayer2.Renderer.WakeupListener) obj;
                break;
            default:
                super.handleMessage(i, obj);
                break;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return super.isEnded() && this.audioSink.isEnded();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        return this.audioSink.hasPendingData() || super.isReady();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onCodecError(java.lang.Exception exc) {
        com.google.android.exoplayer2.util.Log.e(TAG, "Audio codec error", exc);
        this.eventDispatcher.audioCodecError(exc);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onCodecInitialized(java.lang.String str, long j, long j2) {
        this.eventDispatcher.decoderInitialized(str, j, j2);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onCodecReleased(java.lang.String str) {
        this.eventDispatcher.decoderReleased(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        this.audioSinkNeedsReset = true;
        try {
            this.audioSink.flush();
            try {
                super.onDisabled();
            } finally {
            }
        } catch (java.lang.Throwable th) {
            try {
                super.onDisabled();
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onEnabled(boolean z, boolean z2) {
        super.onEnabled(z, z2);
        this.eventDispatcher.enabled(this.decoderCounters);
        if (getConfiguration().tunneling) {
            this.audioSink.enableTunnelingV21();
        } else {
            this.audioSink.disableTunneling();
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public com.google.android.exoplayer2.decoder.DecoderReuseEvaluation onInputFormatChanged(com.google.android.exoplayer2.FormatHolder formatHolder) throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluationOnInputFormatChanged = super.onInputFormatChanged(formatHolder);
        this.eventDispatcher.inputFormatChanged(formatHolder.format, decoderReuseEvaluationOnInputFormatChanged);
        return decoderReuseEvaluationOnInputFormatChanged;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001b  */
    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onOutputFormatChanged(com.google.android.exoplayer2.Format r6, android.media.MediaFormat r7) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            r5 = this;
            com.google.android.exoplayer2.Format r0 = r5.decryptOnlyCodecFormat
            r1 = 0
            r2 = 0
            if (r0 == 0) goto L9
            r6 = r0
            goto L97
        L9:
            com.google.android.exoplayer2.mediacodec.MediaCodecAdapter r0 = r5.getCodec()
            if (r0 != 0) goto L11
            goto L97
        L11:
            java.lang.String r0 = r6.sampleMimeType
            java.lang.String r3 = "audio/raw"
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L1e
        L1b:
            int r0 = r6.pcmEncoding
            goto L4c
        L1e:
            int r0 = com.google.android.exoplayer2.util.Util.SDK_INT
            r4 = 24
            if (r0 < r4) goto L31
            java.lang.String r0 = "pcm-encoding"
            boolean r4 = r7.containsKey(r0)
            if (r4 == 0) goto L31
            int r0 = r7.getInteger(r0)
            goto L4c
        L31:
            java.lang.String r0 = "v-bits-per-sample"
            boolean r4 = r7.containsKey(r0)
            if (r4 == 0) goto L42
            int r0 = r7.getInteger(r0)
            int r0 = com.google.android.exoplayer2.util.Util.getPcmEncoding(r0)
            goto L4c
        L42:
            java.lang.String r0 = r6.sampleMimeType
            boolean r0 = r3.equals(r0)
            if (r0 == 0) goto L4b
            goto L1b
        L4b:
            r0 = 2
        L4c:
            com.google.android.exoplayer2.Format$Builder r4 = new com.google.android.exoplayer2.Format$Builder
            r4.<init>()
            com.google.android.exoplayer2.Format$Builder r3 = r4.setSampleMimeType(r3)
            com.google.android.exoplayer2.Format$Builder r0 = r3.setPcmEncoding(r0)
            int r3 = r6.encoderDelay
            com.google.android.exoplayer2.Format$Builder r0 = r0.setEncoderDelay(r3)
            int r3 = r6.encoderPadding
            com.google.android.exoplayer2.Format$Builder r0 = r0.setEncoderPadding(r3)
            java.lang.String r3 = "channel-count"
            int r3 = r7.getInteger(r3)
            com.google.android.exoplayer2.Format$Builder r0 = r0.setChannelCount(r3)
            java.lang.String r3 = "sample-rate"
            int r7 = r7.getInteger(r3)
            com.google.android.exoplayer2.Format$Builder r7 = r0.setSampleRate(r7)
            com.google.android.exoplayer2.Format r7 = r7.build()
            boolean r0 = r5.codecNeedsDiscardChannelsWorkaround
            if (r0 == 0) goto L96
            int r0 = r7.channelCount
            r3 = 6
            if (r0 != r3) goto L96
            int r0 = r6.channelCount
            if (r0 >= r3) goto L96
            int[] r2 = new int[r0]
            r0 = 0
        L8d:
            int r3 = r6.channelCount
            if (r0 >= r3) goto L96
            r2[r0] = r0
            int r0 = r0 + 1
            goto L8d
        L96:
            r6 = r7
        L97:
            com.google.android.exoplayer2.audio.AudioSink r7 = r5.audioSink     // Catch: com.google.android.exoplayer2.audio.AudioSink.ConfigurationException -> L9d
            r7.configure(r6, r1, r2)     // Catch: com.google.android.exoplayer2.audio.AudioSink.ConfigurationException -> L9d
            return
        L9d:
            r6 = move-exception
            com.google.android.exoplayer2.Format r7 = r6.format
            r0 = 5001(0x1389, float:7.008E-42)
            com.google.android.exoplayer2.ExoPlaybackException r6 = r5.createRendererException(r6, r7, r0)
            goto La8
        La7:
            throw r6
        La8:
            goto La7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.MediaCodecAudioRenderer.onOutputFormatChanged(com.google.android.exoplayer2.Format, android.media.MediaFormat):void");
    }

    public void onPositionDiscontinuity() {
        this.allowPositionDiscontinuity = true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) throws com.google.android.exoplayer2.ExoPlaybackException {
        super.onPositionReset(j, z);
        if (this.experimentalKeepAudioTrackOnSeek) {
            this.audioSink.experimentalFlushWithoutAudioTrackRelease();
        } else {
            this.audioSink.flush();
        }
        this.currentPositionUs = j;
        this.allowFirstBufferPositionDiscontinuity = true;
        this.allowPositionDiscontinuity = true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onProcessedStreamChange() {
        super.onProcessedStreamChange();
        this.audioSink.handleDiscontinuity();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onQueueInputBuffer(com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer) {
        if (!this.allowFirstBufferPositionDiscontinuity || decoderInputBuffer.isDecodeOnly()) {
            return;
        }
        if (java.lang.Math.abs(decoderInputBuffer.timeUs - this.currentPositionUs) > 500000) {
            this.currentPositionUs = decoderInputBuffer.timeUs;
        }
        this.allowFirstBufferPositionDiscontinuity = false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onReset() {
        try {
            super.onReset();
        } finally {
            if (this.audioSinkNeedsReset) {
                this.audioSinkNeedsReset = false;
                this.audioSink.reset();
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onStarted() {
        super.onStarted();
        this.audioSink.play();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onStopped() {
        updateCurrentPosition();
        this.audioSink.pause();
        super.onStopped();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public boolean processOutputBuffer(long j, long j2, com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter, java.nio.ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, com.google.android.exoplayer2.Format format) throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.util.Assertions.checkNotNull(byteBuffer);
        if (this.decryptOnlyCodecFormat != null && (i2 & 2) != 0) {
            ((com.google.android.exoplayer2.mediacodec.MediaCodecAdapter) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaCodecAdapter)).releaseOutputBuffer(i, false);
            return true;
        }
        if (z) {
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.releaseOutputBuffer(i, false);
            }
            this.decoderCounters.skippedOutputBufferCount += i3;
            this.audioSink.handleDiscontinuity();
            return true;
        }
        try {
            if (!this.audioSink.handleBuffer(byteBuffer, j3, i3)) {
                return false;
            }
            if (mediaCodecAdapter != null) {
                mediaCodecAdapter.releaseOutputBuffer(i, false);
            }
            this.decoderCounters.renderedOutputBufferCount += i3;
            return true;
        } catch (com.google.android.exoplayer2.audio.AudioSink.InitializationException e2) {
            throw createRendererException(e2, e2.format, e2.isRecoverable, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_AUDIO_TRACK_INIT_FAILED);
        } catch (com.google.android.exoplayer2.audio.AudioSink.WriteException e3) {
            throw createRendererException(e3, format, e3.isRecoverable, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_AUDIO_TRACK_WRITE_FAILED);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void renderToEndOfStream() throws com.google.android.exoplayer2.ExoPlaybackException {
        try {
            this.audioSink.playToEndOfStream();
        } catch (com.google.android.exoplayer2.audio.AudioSink.WriteException e2) {
            throw createRendererException(e2, e2.format, e2.isRecoverable, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_AUDIO_TRACK_WRITE_FAILED);
        }
    }

    @Override // com.google.android.exoplayer2.util.MediaClock
    public void setPlaybackParameters(com.google.android.exoplayer2.PlaybackParameters playbackParameters) {
        this.audioSink.setPlaybackParameters(playbackParameters);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public boolean shouldUseBypass(com.google.android.exoplayer2.Format format) {
        return this.audioSink.supportsFormat(format);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public int supportsFormat(com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, com.google.android.exoplayer2.Format format) {
        if (!com.google.android.exoplayer2.util.MimeTypes.isAudio(format.sampleMimeType)) {
            return 0;
        }
        int i = com.google.android.exoplayer2.util.Util.SDK_INT >= 21 ? 32 : 0;
        boolean z = format.cryptoType != 0;
        boolean zSupportsFormatDrm = com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.supportsFormatDrm(format);
        if (zSupportsFormatDrm && this.audioSink.supportsFormat(format) && (!z || com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getDecryptOnlyDecoderInfo() != null)) {
            return 12 | i;
        }
        if ((com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW.equals(format.sampleMimeType) && !this.audioSink.supportsFormat(format)) || !this.audioSink.supportsFormat(com.google.android.exoplayer2.util.Util.getPcmFormat(2, format.channelCount, format.sampleRate))) {
            return 1;
        }
        java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> decoderInfos = getDecoderInfos(mediaCodecSelector, format, false);
        if (decoderInfos.isEmpty()) {
            return 1;
        }
        if (!zSupportsFormatDrm) {
            return 2;
        }
        com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo = decoderInfos.get(0);
        boolean zIsFormatSupported = mediaCodecInfo.isFormatSupported(format);
        return ((zIsFormatSupported && mediaCodecInfo.isSeamlessAdaptationSupported(format)) ? 16 : 8) | (zIsFormatSupported ? 4 : 3) | i;
    }
}
