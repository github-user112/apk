package com.google.android.exoplayer2.mediacodec;

/* loaded from: classes.dex */
public abstract class MediaCodecRenderer extends com.google.android.exoplayer2.BaseRenderer {
    public static final byte[] ADAPTATION_WORKAROUND_BUFFER = {0, 0, 1, 103, 66, -64, 11, -38, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_ROLL_UP_CAPTIONS_2_ROWS, -112, 0, 0, 1, 104, -50, com.umeng.analytics.pro.bw.m, 19, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_RESUME_CAPTION_LOADING, 0, 0, 1, 101, -120, -124, com.umeng.analytics.pro.bw.k, -50, 113, 24, -96, 0, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_END_OF_CAPTION, -65, 28, 49, -61, com.google.android.exoplayer2.text.cea.Cea608Decoder.CTRL_ROLL_UP_CAPTIONS_4_ROWS, 93, com.google.android.exoplayer2.text.pgs.PgsDecoder.INFLATE_HEADER};
    public static final int ADAPTATION_WORKAROUND_MODE_ALWAYS = 2;
    public static final int ADAPTATION_WORKAROUND_MODE_NEVER = 0;
    public static final int ADAPTATION_WORKAROUND_MODE_SAME_RESOLUTION = 1;
    public static final int ADAPTATION_WORKAROUND_SLICE_WIDTH_HEIGHT = 32;
    public static final float CODEC_OPERATING_RATE_UNSET = -1.0f;
    public static final int DRAIN_ACTION_FLUSH = 1;
    public static final int DRAIN_ACTION_FLUSH_AND_UPDATE_DRM_SESSION = 2;
    public static final int DRAIN_ACTION_NONE = 0;
    public static final int DRAIN_ACTION_REINITIALIZE = 3;
    public static final int DRAIN_STATE_NONE = 0;
    public static final int DRAIN_STATE_SIGNAL_END_OF_STREAM = 1;
    public static final int DRAIN_STATE_WAIT_END_OF_STREAM = 2;
    public static final long MAX_CODEC_HOTSWAP_TIME_MS = 1000;
    public static final int MAX_PENDING_OUTPUT_STREAM_OFFSET_COUNT = 10;
    public static final int RECONFIGURATION_STATE_NONE = 0;
    public static final int RECONFIGURATION_STATE_QUEUE_PENDING = 2;
    public static final int RECONFIGURATION_STATE_WRITE_PENDING = 1;
    public static final java.lang.String TAG = "MediaCodecRenderer";
    public final float assumedMinimumCodecOperatingRate;
    public java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> availableCodecInfos;
    public final com.google.android.exoplayer2.decoder.DecoderInputBuffer buffer;
    public final com.google.android.exoplayer2.mediacodec.BatchBuffer bypassBatchBuffer;
    public boolean bypassDrainAndReinitialize;
    public boolean bypassEnabled;
    public final com.google.android.exoplayer2.decoder.DecoderInputBuffer bypassSampleBuffer;
    public boolean bypassSampleBufferPending;
    public com.google.android.exoplayer2.mediacodec.C2Mp3TimestampTracker c2Mp3TimestampTracker;
    public com.google.android.exoplayer2.mediacodec.MediaCodecAdapter codec;
    public int codecAdaptationWorkaroundMode;
    public final com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory codecAdapterFactory;
    public int codecDrainAction;
    public int codecDrainState;
    public com.google.android.exoplayer2.drm.DrmSession codecDrmSession;
    public boolean codecHasOutputMediaFormat;
    public long codecHotswapDeadlineMs;
    public com.google.android.exoplayer2.mediacodec.MediaCodecInfo codecInfo;
    public com.google.android.exoplayer2.Format codecInputFormat;
    public boolean codecNeedsAdaptationWorkaroundBuffer;
    public boolean codecNeedsDiscardToSpsWorkaround;
    public boolean codecNeedsEosBufferTimestampWorkaround;
    public boolean codecNeedsEosFlushWorkaround;
    public boolean codecNeedsEosOutputExceptionWorkaround;
    public boolean codecNeedsEosPropagation;
    public boolean codecNeedsFlushWorkaround;
    public boolean codecNeedsMonoChannelCountWorkaround;
    public boolean codecNeedsSosFlushWorkaround;
    public float codecOperatingRate;
    public android.media.MediaFormat codecOutputMediaFormat;
    public boolean codecOutputMediaFormatChanged;
    public boolean codecReceivedBuffers;
    public boolean codecReceivedEos;
    public int codecReconfigurationState;
    public boolean codecReconfigured;
    public float currentPlaybackSpeed;
    public final java.util.ArrayList<java.lang.Long> decodeOnlyPresentationTimestamps;
    public com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters;
    public final boolean enableDecoderFallback;
    public final com.google.android.exoplayer2.util.TimedValueQueue<com.google.android.exoplayer2.Format> formatQueue;
    public com.google.android.exoplayer2.Format inputFormat;
    public int inputIndex;
    public boolean inputStreamEnded;
    public boolean isDecodeOnlyOutputBuffer;
    public boolean isLastOutputBuffer;
    public long largestQueuedPresentationTimeUs;
    public long lastBufferInStreamPresentationTimeUs;
    public final com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector;
    public android.media.MediaCrypto mediaCrypto;
    public boolean mediaCryptoRequiresSecureDecoder;
    public final com.google.android.exoplayer2.decoder.DecoderInputBuffer noDataBuffer;
    public java.nio.ByteBuffer outputBuffer;
    public final android.media.MediaCodec.BufferInfo outputBufferInfo;
    public com.google.android.exoplayer2.Format outputFormat;
    public int outputIndex;
    public boolean outputStreamEnded;
    public long outputStreamOffsetUs;
    public long outputStreamStartPositionUs;
    public boolean pendingOutputEndOfStream;
    public int pendingOutputStreamOffsetCount;
    public final long[] pendingOutputStreamOffsetsUs;
    public final long[] pendingOutputStreamStartPositionsUs;
    public final long[] pendingOutputStreamSwitchTimesUs;
    public com.google.android.exoplayer2.ExoPlaybackException pendingPlaybackException;
    public com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException preferredDecoderInitializationException;
    public long renderTimeLimitMs;
    public boolean shouldSkipAdaptationWorkaroundOutputBuffer;
    public com.google.android.exoplayer2.drm.DrmSession sourceDrmSession;
    public float targetPlaybackSpeed;
    public boolean waitingForFirstSampleInFormat;

    public static class DecoderInitializationException extends java.lang.Exception {
        public static final int CUSTOM_ERROR_CODE_BASE = -50000;
        public static final int DECODER_QUERY_ERROR = -49998;
        public static final int NO_SUITABLE_DECODER_ERROR = -49999;
        public final com.google.android.exoplayer2.mediacodec.MediaCodecInfo codecInfo;
        public final java.lang.String diagnosticInfo;
        public final com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException fallbackDecoderInitializationException;
        public final java.lang.String mimeType;
        public final boolean secureDecoderRequired;

        public DecoderInitializationException(com.google.android.exoplayer2.Format format, java.lang.Throwable th, boolean z, int i) {
            java.lang.String strValueOf = java.lang.String.valueOf(format);
            java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 36);
            sb.append("Decoder init failed: [");
            sb.append(i);
            sb.append("], ");
            sb.append(strValueOf);
            this(sb.toString(), th, format.sampleMimeType, z, null, buildCustomDiagnosticInfo(i), null);
        }

        public DecoderInitializationException(com.google.android.exoplayer2.Format format, java.lang.Throwable th, boolean z, com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo) {
            java.lang.String str = mediaCodecInfo.name;
            java.lang.String strValueOf = java.lang.String.valueOf(format);
            java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + java.lang.String.valueOf(str).length() + 23);
            sb.append("Decoder init failed: ");
            sb.append(str);
            sb.append(", ");
            sb.append(strValueOf);
            this(sb.toString(), th, format.sampleMimeType, z, mediaCodecInfo, com.google.android.exoplayer2.util.Util.SDK_INT >= 21 ? getDiagnosticInfoV21(th) : null, null);
        }

        public DecoderInitializationException(java.lang.String str, java.lang.Throwable th, java.lang.String str2, boolean z, com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, java.lang.String str3, com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException decoderInitializationException) {
            super(str, th);
            this.mimeType = str2;
            this.secureDecoderRequired = z;
            this.codecInfo = mediaCodecInfo;
            this.diagnosticInfo = str3;
            this.fallbackDecoderInitializationException = decoderInitializationException;
        }

        public static java.lang.String buildCustomDiagnosticInfo(int i) {
            java.lang.String str = i < 0 ? "neg_" : "";
            int iAbs = java.lang.Math.abs(i);
            java.lang.StringBuilder sb = new java.lang.StringBuilder(str.length() + 71);
            sb.append("com.google.android.exoplayer2.mediacodec.MediaCodecRenderer_");
            sb.append(str);
            sb.append(iAbs);
            return sb.toString();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException copyWithFallbackException(com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException decoderInitializationException) {
            return new com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException(getMessage(), getCause(), this.mimeType, this.secureDecoderRequired, this.codecInfo, this.diagnosticInfo, decoderInitializationException);
        }

        public static java.lang.String getDiagnosticInfoV21(java.lang.Throwable th) {
            if (th instanceof android.media.MediaCodec.CodecException) {
                return ((android.media.MediaCodec.CodecException) th).getDiagnosticInfo();
            }
            return null;
        }
    }

    public MediaCodecRenderer(int i, com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory factory, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, boolean z, float f2) {
        super(i);
        this.codecAdapterFactory = factory;
        this.mediaCodecSelector = (com.google.android.exoplayer2.mediacodec.MediaCodecSelector) com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaCodecSelector);
        this.enableDecoderFallback = z;
        this.assumedMinimumCodecOperatingRate = f2;
        this.noDataBuffer = com.google.android.exoplayer2.decoder.DecoderInputBuffer.newNoDataInstance();
        this.buffer = new com.google.android.exoplayer2.decoder.DecoderInputBuffer(0);
        this.bypassSampleBuffer = new com.google.android.exoplayer2.decoder.DecoderInputBuffer(2);
        this.bypassBatchBuffer = new com.google.android.exoplayer2.mediacodec.BatchBuffer();
        this.formatQueue = new com.google.android.exoplayer2.util.TimedValueQueue<>();
        this.decodeOnlyPresentationTimestamps = new java.util.ArrayList<>();
        this.outputBufferInfo = new android.media.MediaCodec.BufferInfo();
        this.currentPlaybackSpeed = 1.0f;
        this.targetPlaybackSpeed = 1.0f;
        this.renderTimeLimitMs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.pendingOutputStreamStartPositionsUs = new long[10];
        this.pendingOutputStreamOffsetsUs = new long[10];
        this.pendingOutputStreamSwitchTimesUs = new long[10];
        this.outputStreamStartPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.outputStreamOffsetUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.bypassBatchBuffer.ensureSpaceForWrite(0);
        this.bypassBatchBuffer.data.order(java.nio.ByteOrder.nativeOrder());
        this.codecOperatingRate = -1.0f;
        this.codecAdaptationWorkaroundMode = 0;
        this.codecReconfigurationState = 0;
        this.inputIndex = -1;
        this.outputIndex = -1;
        this.codecHotswapDeadlineMs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.largestQueuedPresentationTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.lastBufferInStreamPresentationTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
    }

    private void bypassRead() throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.inputStreamEnded);
        com.google.android.exoplayer2.FormatHolder formatHolder = getFormatHolder();
        this.bypassSampleBuffer.clear();
        do {
            this.bypassSampleBuffer.clear();
            int source = readSource(formatHolder, this.bypassSampleBuffer, 0);
            if (source == -5) {
                onInputFormatChanged(formatHolder);
                return;
            }
            if (source != -4) {
                if (source != -3) {
                    throw new java.lang.IllegalStateException();
                }
                return;
            } else {
                if (this.bypassSampleBuffer.isEndOfStream()) {
                    this.inputStreamEnded = true;
                    return;
                }
                if (this.waitingForFirstSampleInFormat) {
                    com.google.android.exoplayer2.Format format = (com.google.android.exoplayer2.Format) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.inputFormat);
                    this.outputFormat = format;
                    onOutputFormatChanged(format, null);
                    this.waitingForFirstSampleInFormat = false;
                }
                this.bypassSampleBuffer.flip();
            }
        } while (this.bypassBatchBuffer.append(this.bypassSampleBuffer));
        this.bypassSampleBufferPending = true;
    }

    private boolean bypassRender(long j, long j2) throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.util.Assertions.checkState(!this.outputStreamEnded);
        if (this.bypassBatchBuffer.hasSamples()) {
            com.google.android.exoplayer2.mediacodec.BatchBuffer batchBuffer = this.bypassBatchBuffer;
            if (!processOutputBuffer(j, j2, null, batchBuffer.data, this.outputIndex, 0, batchBuffer.getSampleCount(), this.bypassBatchBuffer.getFirstSampleTimeUs(), this.bypassBatchBuffer.isDecodeOnly(), this.bypassBatchBuffer.isEndOfStream(), this.outputFormat)) {
                return false;
            }
            onProcessedOutputBuffer(this.bypassBatchBuffer.getLastSampleTimeUs());
            this.bypassBatchBuffer.clear();
        }
        if (this.inputStreamEnded) {
            this.outputStreamEnded = true;
            return false;
        }
        if (this.bypassSampleBufferPending) {
            com.google.android.exoplayer2.util.Assertions.checkState(this.bypassBatchBuffer.append(this.bypassSampleBuffer));
            this.bypassSampleBufferPending = false;
        }
        if (this.bypassDrainAndReinitialize) {
            if (this.bypassBatchBuffer.hasSamples()) {
                return true;
            }
            disableBypass();
            this.bypassDrainAndReinitialize = false;
            maybeInitCodecOrBypass();
            if (!this.bypassEnabled) {
                return false;
            }
        }
        bypassRead();
        if (this.bypassBatchBuffer.hasSamples()) {
            this.bypassBatchBuffer.flip();
        }
        return this.bypassBatchBuffer.hasSamples() || this.inputStreamEnded || this.bypassDrainAndReinitialize;
    }

    private int codecAdaptationWorkaroundMode(java.lang.String str) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT <= 25 && "OMX.Exynos.avc.dec.secure".equals(str) && (com.google.android.exoplayer2.util.Util.MODEL.startsWith("SM-T585") || com.google.android.exoplayer2.util.Util.MODEL.startsWith("SM-A510") || com.google.android.exoplayer2.util.Util.MODEL.startsWith("SM-A520") || com.google.android.exoplayer2.util.Util.MODEL.startsWith("SM-J700"))) {
            return 2;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 24) {
            return 0;
        }
        if ("OMX.Nvidia.h264.decode".equals(str) || "OMX.Nvidia.h264.decode.secure".equals(str)) {
            return ("flounder".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "flounder_lte".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "grouper".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "tilapia".equals(com.google.android.exoplayer2.util.Util.DEVICE)) ? 1 : 0;
        }
        return 0;
    }

    public static boolean codecNeedsDiscardToSpsWorkaround(java.lang.String str, com.google.android.exoplayer2.Format format) {
        return com.google.android.exoplayer2.util.Util.SDK_INT < 21 && format.initializationData.isEmpty() && "OMX.MTK.VIDEO.DECODER.AVC".equals(str);
    }

    public static boolean codecNeedsEosBufferTimestampWorkaround(java.lang.String str) {
        return com.google.android.exoplayer2.util.Util.SDK_INT < 21 && "OMX.SEC.mp3.dec".equals(str) && "samsung".equals(com.google.android.exoplayer2.util.Util.MANUFACTURER) && (com.google.android.exoplayer2.util.Util.DEVICE.startsWith("baffin") || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("grand") || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("fortuna") || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("gprimelte") || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("j2y18lte") || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("ms01"));
    }

    public static boolean codecNeedsEosFlushWorkaround(java.lang.String str) {
        return (com.google.android.exoplayer2.util.Util.SDK_INT <= 23 && "OMX.google.vorbis.decoder".equals(str)) || (com.google.android.exoplayer2.util.Util.SDK_INT <= 19 && (("hb2000".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "stvm8".equals(com.google.android.exoplayer2.util.Util.DEVICE)) && ("OMX.amlogic.avc.decoder.awesome".equals(str) || "OMX.amlogic.avc.decoder.awesome.secure".equals(str))));
    }

    public static boolean codecNeedsEosOutputExceptionWorkaround(java.lang.String str) {
        return com.google.android.exoplayer2.util.Util.SDK_INT == 21 && "OMX.google.aac.decoder".equals(str);
    }

    public static boolean codecNeedsEosPropagationWorkaround(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo) {
        java.lang.String str = mediaCodecInfo.name;
        return (com.google.android.exoplayer2.util.Util.SDK_INT <= 25 && "OMX.rk.video_decoder.avc".equals(str)) || (com.google.android.exoplayer2.util.Util.SDK_INT <= 17 && "OMX.allwinner.video.decoder.avc".equals(str)) || ((com.google.android.exoplayer2.util.Util.SDK_INT <= 29 && ("OMX.broadcom.video_decoder.tunnel".equals(str) || "OMX.broadcom.video_decoder.tunnel.secure".equals(str))) || ("Amazon".equals(com.google.android.exoplayer2.util.Util.MANUFACTURER) && "AFTS".equals(com.google.android.exoplayer2.util.Util.MODEL) && mediaCodecInfo.secure));
    }

    public static boolean codecNeedsFlushWorkaround(java.lang.String str) {
        int i = com.google.android.exoplayer2.util.Util.SDK_INT;
        return i < 18 || (i == 18 && ("OMX.SEC.avc.dec".equals(str) || "OMX.SEC.avc.dec.secure".equals(str))) || (com.google.android.exoplayer2.util.Util.SDK_INT == 19 && com.google.android.exoplayer2.util.Util.MODEL.startsWith("SM-G800") && ("OMX.Exynos.avc.dec".equals(str) || "OMX.Exynos.avc.dec.secure".equals(str)));
    }

    public static boolean codecNeedsMonoChannelCountWorkaround(java.lang.String str, com.google.android.exoplayer2.Format format) {
        return com.google.android.exoplayer2.util.Util.SDK_INT <= 18 && format.channelCount == 1 && "OMX.MTK.AUDIO.DECODER.MP3".equals(str);
    }

    public static boolean codecNeedsSosFlushWorkaround(java.lang.String str) {
        return com.google.android.exoplayer2.util.Util.SDK_INT == 29 && "c2.android.aac.decoder".equals(str);
    }

    private void disableBypass() {
        this.bypassDrainAndReinitialize = false;
        this.bypassBatchBuffer.clear();
        this.bypassSampleBuffer.clear();
        this.bypassSampleBufferPending = false;
        this.bypassEnabled = false;
    }

    private boolean drainAndFlushCodec() {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            if (this.codecNeedsFlushWorkaround || this.codecNeedsEosFlushWorkaround) {
                this.codecDrainAction = 3;
                return false;
            }
            this.codecDrainAction = 1;
        }
        return true;
    }

    private void drainAndReinitializeCodec() throws com.google.android.exoplayer2.ExoPlaybackException {
        if (!this.codecReceivedBuffers) {
            reinitializeCodec();
        } else {
            this.codecDrainState = 1;
            this.codecDrainAction = 3;
        }
    }

    @android.annotation.TargetApi(23)
    private boolean drainAndUpdateCodecDrmSessionV23() throws com.google.android.exoplayer2.ExoPlaybackException, android.media.MediaCryptoException {
        if (this.codecReceivedBuffers) {
            this.codecDrainState = 1;
            if (this.codecNeedsFlushWorkaround || this.codecNeedsEosFlushWorkaround) {
                this.codecDrainAction = 3;
                return false;
            }
            this.codecDrainAction = 2;
        } else {
            updateDrmSessionV23();
        }
        return true;
    }

    private boolean drainOutputBuffer(long j, long j2) throws com.google.android.exoplayer2.ExoPlaybackException, android.media.MediaCryptoException {
        boolean z;
        boolean zProcessOutputBuffer;
        int iDequeueOutputBufferIndex;
        if (!hasOutputBuffer()) {
            if (this.codecNeedsEosOutputExceptionWorkaround && this.codecReceivedEos) {
                try {
                    iDequeueOutputBufferIndex = this.codec.dequeueOutputBufferIndex(this.outputBufferInfo);
                } catch (java.lang.IllegalStateException unused) {
                    processEndOfStream();
                    if (this.outputStreamEnded) {
                        releaseCodec();
                    }
                    return false;
                }
            } else {
                iDequeueOutputBufferIndex = this.codec.dequeueOutputBufferIndex(this.outputBufferInfo);
            }
            if (iDequeueOutputBufferIndex < 0) {
                if (iDequeueOutputBufferIndex == -2) {
                    processOutputMediaFormatChanged();
                    return true;
                }
                if (this.codecNeedsEosPropagation && (this.inputStreamEnded || this.codecDrainState == 2)) {
                    processEndOfStream();
                }
                return false;
            }
            if (this.shouldSkipAdaptationWorkaroundOutputBuffer) {
                this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
                this.codec.releaseOutputBuffer(iDequeueOutputBufferIndex, false);
                return true;
            }
            android.media.MediaCodec.BufferInfo bufferInfo = this.outputBufferInfo;
            if (bufferInfo.size == 0 && (bufferInfo.flags & 4) != 0) {
                processEndOfStream();
                return false;
            }
            this.outputIndex = iDequeueOutputBufferIndex;
            java.nio.ByteBuffer outputBuffer = this.codec.getOutputBuffer(iDequeueOutputBufferIndex);
            this.outputBuffer = outputBuffer;
            if (outputBuffer != null) {
                outputBuffer.position(this.outputBufferInfo.offset);
                java.nio.ByteBuffer byteBuffer = this.outputBuffer;
                android.media.MediaCodec.BufferInfo bufferInfo2 = this.outputBufferInfo;
                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
            }
            if (this.codecNeedsEosBufferTimestampWorkaround) {
                android.media.MediaCodec.BufferInfo bufferInfo3 = this.outputBufferInfo;
                if (bufferInfo3.presentationTimeUs == 0 && (bufferInfo3.flags & 4) != 0) {
                    long j3 = this.largestQueuedPresentationTimeUs;
                    if (j3 != com.google.android.exoplayer2.C.TIME_UNSET) {
                        bufferInfo3.presentationTimeUs = j3;
                    }
                }
            }
            this.isDecodeOnlyOutputBuffer = isDecodeOnlyBuffer(this.outputBufferInfo.presentationTimeUs);
            this.isLastOutputBuffer = this.lastBufferInStreamPresentationTimeUs == this.outputBufferInfo.presentationTimeUs;
            updateOutputFormatForTime(this.outputBufferInfo.presentationTimeUs);
        }
        if (this.codecNeedsEosOutputExceptionWorkaround && this.codecReceivedEos) {
            try {
                z = false;
                try {
                    zProcessOutputBuffer = processOutputBuffer(j, j2, this.codec, this.outputBuffer, this.outputIndex, this.outputBufferInfo.flags, 1, this.outputBufferInfo.presentationTimeUs, this.isDecodeOnlyOutputBuffer, this.isLastOutputBuffer, this.outputFormat);
                } catch (java.lang.IllegalStateException unused2) {
                    processEndOfStream();
                    if (this.outputStreamEnded) {
                        releaseCodec();
                    }
                    return z;
                }
            } catch (java.lang.IllegalStateException unused3) {
                z = false;
            }
        } else {
            z = false;
            com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter = this.codec;
            java.nio.ByteBuffer byteBuffer2 = this.outputBuffer;
            int i = this.outputIndex;
            android.media.MediaCodec.BufferInfo bufferInfo4 = this.outputBufferInfo;
            zProcessOutputBuffer = processOutputBuffer(j, j2, mediaCodecAdapter, byteBuffer2, i, bufferInfo4.flags, 1, bufferInfo4.presentationTimeUs, this.isDecodeOnlyOutputBuffer, this.isLastOutputBuffer, this.outputFormat);
        }
        if (zProcessOutputBuffer) {
            onProcessedOutputBuffer(this.outputBufferInfo.presentationTimeUs);
            boolean z2 = (this.outputBufferInfo.flags & 4) != 0;
            resetOutputBuffer();
            if (!z2) {
                return true;
            }
            processEndOfStream();
        }
        return z;
    }

    private boolean drmNeedsCodecReinitialization(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.drm.DrmSession drmSession, com.google.android.exoplayer2.drm.DrmSession drmSession2) {
        com.google.android.exoplayer2.drm.FrameworkCryptoConfig frameworkCryptoConfig;
        if (drmSession == drmSession2) {
            return false;
        }
        if (drmSession2 == null || drmSession == null || com.google.android.exoplayer2.util.Util.SDK_INT < 23 || com.google.android.exoplayer2.C.PLAYREADY_UUID.equals(drmSession.getSchemeUuid()) || com.google.android.exoplayer2.C.PLAYREADY_UUID.equals(drmSession2.getSchemeUuid()) || (frameworkCryptoConfig = getFrameworkCryptoConfig(drmSession2)) == null) {
            return true;
        }
        return !mediaCodecInfo.secure && (frameworkCryptoConfig.forceAllowInsecureDecoderComponents ? false : drmSession2.requiresSecureDecoder(format.sampleMimeType));
    }

    private boolean feedInputBuffer() throws com.google.android.exoplayer2.ExoPlaybackException, android.media.MediaCryptoException {
        com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter = this.codec;
        if (mediaCodecAdapter == null || this.codecDrainState == 2 || this.inputStreamEnded) {
            return false;
        }
        if (this.inputIndex < 0) {
            int iDequeueInputBufferIndex = mediaCodecAdapter.dequeueInputBufferIndex();
            this.inputIndex = iDequeueInputBufferIndex;
            if (iDequeueInputBufferIndex < 0) {
                return false;
            }
            this.buffer.data = this.codec.getInputBuffer(iDequeueInputBufferIndex);
            this.buffer.clear();
        }
        if (this.codecDrainState == 1) {
            if (!this.codecNeedsEosPropagation) {
                this.codecReceivedEos = true;
                this.codec.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                resetInputBuffer();
            }
            this.codecDrainState = 2;
            return false;
        }
        if (this.codecNeedsAdaptationWorkaroundBuffer) {
            this.codecNeedsAdaptationWorkaroundBuffer = false;
            this.buffer.data.put(ADAPTATION_WORKAROUND_BUFFER);
            this.codec.queueInputBuffer(this.inputIndex, 0, ADAPTATION_WORKAROUND_BUFFER.length, 0L, 0);
            resetInputBuffer();
            this.codecReceivedBuffers = true;
            return true;
        }
        if (this.codecReconfigurationState == 1) {
            for (int i = 0; i < this.codecInputFormat.initializationData.size(); i++) {
                this.buffer.data.put(this.codecInputFormat.initializationData.get(i));
            }
            this.codecReconfigurationState = 2;
        }
        int iPosition = this.buffer.data.position();
        com.google.android.exoplayer2.FormatHolder formatHolder = getFormatHolder();
        try {
            int source = readSource(formatHolder, this.buffer, 0);
            if (hasReadStreamToEnd()) {
                this.lastBufferInStreamPresentationTimeUs = this.largestQueuedPresentationTimeUs;
            }
            if (source == -3) {
                return false;
            }
            if (source == -5) {
                if (this.codecReconfigurationState == 2) {
                    this.buffer.clear();
                    this.codecReconfigurationState = 1;
                }
                onInputFormatChanged(formatHolder);
                return true;
            }
            if (this.buffer.isEndOfStream()) {
                if (this.codecReconfigurationState == 2) {
                    this.buffer.clear();
                    this.codecReconfigurationState = 1;
                }
                this.inputStreamEnded = true;
                if (!this.codecReceivedBuffers) {
                    processEndOfStream();
                    return false;
                }
                try {
                    if (!this.codecNeedsEosPropagation) {
                        this.codecReceivedEos = true;
                        this.codec.queueInputBuffer(this.inputIndex, 0, 0, 0L, 4);
                        resetInputBuffer();
                    }
                    return false;
                } catch (android.media.MediaCodec.CryptoException e2) {
                    throw createRendererException(e2, this.inputFormat, com.google.android.exoplayer2.util.Util.getErrorCodeForMediaDrmErrorCode(e2.getErrorCode()));
                }
            }
            if (!this.codecReceivedBuffers && !this.buffer.isKeyFrame()) {
                this.buffer.clear();
                if (this.codecReconfigurationState == 2) {
                    this.codecReconfigurationState = 1;
                }
                return true;
            }
            boolean zIsEncrypted = this.buffer.isEncrypted();
            if (zIsEncrypted) {
                this.buffer.cryptoInfo.increaseClearDataFirstSubSampleBy(iPosition);
            }
            if (this.codecNeedsDiscardToSpsWorkaround && !zIsEncrypted) {
                com.google.android.exoplayer2.util.NalUnitUtil.discardToSps(this.buffer.data);
                if (this.buffer.data.position() == 0) {
                    return true;
                }
                this.codecNeedsDiscardToSpsWorkaround = false;
            }
            com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer = this.buffer;
            long jUpdateAndGetPresentationTimeUs = decoderInputBuffer.timeUs;
            com.google.android.exoplayer2.mediacodec.C2Mp3TimestampTracker c2Mp3TimestampTracker = this.c2Mp3TimestampTracker;
            if (c2Mp3TimestampTracker != null) {
                jUpdateAndGetPresentationTimeUs = c2Mp3TimestampTracker.updateAndGetPresentationTimeUs(this.inputFormat, decoderInputBuffer);
                this.largestQueuedPresentationTimeUs = java.lang.Math.max(this.largestQueuedPresentationTimeUs, this.c2Mp3TimestampTracker.getLastOutputBufferPresentationTimeUs(this.inputFormat));
            }
            long j = jUpdateAndGetPresentationTimeUs;
            if (this.buffer.isDecodeOnly()) {
                this.decodeOnlyPresentationTimestamps.add(java.lang.Long.valueOf(j));
            }
            if (this.waitingForFirstSampleInFormat) {
                this.formatQueue.add(j, this.inputFormat);
                this.waitingForFirstSampleInFormat = false;
            }
            this.largestQueuedPresentationTimeUs = java.lang.Math.max(this.largestQueuedPresentationTimeUs, j);
            this.buffer.flip();
            if (this.buffer.hasSupplementalData()) {
                handleInputBufferSupplementalData(this.buffer);
            }
            onQueueInputBuffer(this.buffer);
            try {
                if (zIsEncrypted) {
                    this.codec.queueSecureInputBuffer(this.inputIndex, 0, this.buffer.cryptoInfo, j, 0);
                } else {
                    this.codec.queueInputBuffer(this.inputIndex, 0, this.buffer.data.limit(), j, 0);
                }
                resetInputBuffer();
                this.codecReceivedBuffers = true;
                this.codecReconfigurationState = 0;
                this.decoderCounters.inputBufferCount++;
                return true;
            } catch (android.media.MediaCodec.CryptoException e3) {
                throw createRendererException(e3, this.inputFormat, com.google.android.exoplayer2.util.Util.getErrorCodeForMediaDrmErrorCode(e3.getErrorCode()));
            }
        } catch (com.google.android.exoplayer2.decoder.DecoderInputBuffer.InsufficientCapacityException e4) {
            onCodecError(e4);
            readSourceOmittingSampleData(0);
            flushCodec();
            return true;
        }
    }

    private void flushCodec() {
        try {
            this.codec.flush();
        } finally {
            resetCodecStateForFlush();
        }
    }

    private java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> getAvailableCodecInfos(boolean z) {
        java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> decoderInfos = getDecoderInfos(this.mediaCodecSelector, this.inputFormat, z);
        if (decoderInfos.isEmpty() && z) {
            decoderInfos = getDecoderInfos(this.mediaCodecSelector, this.inputFormat, false);
            if (!decoderInfos.isEmpty()) {
                java.lang.String str = this.inputFormat.sampleMimeType;
                java.lang.String strValueOf = java.lang.String.valueOf(decoderInfos);
                java.lang.StringBuilder sbL = e.a.c.a.a.l(strValueOf.length() + e.a.c.a.a.m(str, 99), "Drm session requires secure decoder for ", str, ", but no secure decoder available. Trying to proceed with ", strValueOf);
                sbL.append(".");
                com.google.android.exoplayer2.util.Log.w(TAG, sbL.toString());
            }
        }
        return decoderInfos;
    }

    private com.google.android.exoplayer2.drm.FrameworkCryptoConfig getFrameworkCryptoConfig(com.google.android.exoplayer2.drm.DrmSession drmSession) throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.decoder.CryptoConfig cryptoConfig = drmSession.getCryptoConfig();
        if (cryptoConfig == null || (cryptoConfig instanceof com.google.android.exoplayer2.drm.FrameworkCryptoConfig)) {
            return (com.google.android.exoplayer2.drm.FrameworkCryptoConfig) cryptoConfig;
        }
        java.lang.String strValueOf = java.lang.String.valueOf(cryptoConfig);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 43);
        sb.append("Expecting FrameworkCryptoConfig but found: ");
        sb.append(strValueOf);
        throw createRendererException(new java.lang.IllegalArgumentException(sb.toString()), this.inputFormat, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_SCHEME_UNSUPPORTED);
    }

    private boolean hasOutputBuffer() {
        return this.outputIndex >= 0;
    }

    private void initBypass(com.google.android.exoplayer2.Format format) {
        disableBypass();
        java.lang.String str = format.sampleMimeType;
        if (com.google.android.exoplayer2.util.MimeTypes.AUDIO_AAC.equals(str) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_MPEG.equals(str) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_OPUS.equals(str)) {
            this.bypassBatchBuffer.setMaxSampleCount(32);
        } else {
            this.bypassBatchBuffer.setMaxSampleCount(1);
        }
        this.bypassEnabled = true;
    }

    private void initCodec(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, android.media.MediaCrypto mediaCrypto) {
        java.lang.String str = mediaCodecInfo.name;
        float codecOperatingRateV23 = com.google.android.exoplayer2.util.Util.SDK_INT < 23 ? -1.0f : getCodecOperatingRateV23(this.targetPlaybackSpeed, this.inputFormat, getStreamFormats());
        float f2 = codecOperatingRateV23 > this.assumedMinimumCodecOperatingRate ? codecOperatingRateV23 : -1.0f;
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        java.lang.String strValueOf = java.lang.String.valueOf(str);
        com.google.android.exoplayer2.util.TraceUtil.beginSection(strValueOf.length() != 0 ? "createCodec:".concat(strValueOf) : new java.lang.String("createCodec:"));
        this.codec = this.codecAdapterFactory.createAdapter(getMediaCodecConfiguration(mediaCodecInfo, this.inputFormat, mediaCrypto, f2));
        long jElapsedRealtime2 = android.os.SystemClock.elapsedRealtime();
        this.codecInfo = mediaCodecInfo;
        this.codecOperatingRate = f2;
        this.codecInputFormat = this.inputFormat;
        this.codecAdaptationWorkaroundMode = codecAdaptationWorkaroundMode(str);
        this.codecNeedsDiscardToSpsWorkaround = codecNeedsDiscardToSpsWorkaround(str, this.codecInputFormat);
        this.codecNeedsFlushWorkaround = codecNeedsFlushWorkaround(str);
        this.codecNeedsSosFlushWorkaround = codecNeedsSosFlushWorkaround(str);
        this.codecNeedsEosFlushWorkaround = codecNeedsEosFlushWorkaround(str);
        this.codecNeedsEosOutputExceptionWorkaround = codecNeedsEosOutputExceptionWorkaround(str);
        this.codecNeedsEosBufferTimestampWorkaround = codecNeedsEosBufferTimestampWorkaround(str);
        this.codecNeedsMonoChannelCountWorkaround = codecNeedsMonoChannelCountWorkaround(str, this.codecInputFormat);
        this.codecNeedsEosPropagation = codecNeedsEosPropagationWorkaround(mediaCodecInfo) || getCodecNeedsEosPropagation();
        if (this.codec.needsReconfiguration()) {
            this.codecReconfigured = true;
            this.codecReconfigurationState = 1;
            this.codecNeedsAdaptationWorkaroundBuffer = this.codecAdaptationWorkaroundMode != 0;
        }
        if ("c2.android.mp3.decoder".equals(mediaCodecInfo.name)) {
            this.c2Mp3TimestampTracker = new com.google.android.exoplayer2.mediacodec.C2Mp3TimestampTracker();
        }
        if (getState() == 2) {
            this.codecHotswapDeadlineMs = android.os.SystemClock.elapsedRealtime() + 1000;
        }
        this.decoderCounters.decoderInitCount++;
        onCodecInitialized(str, jElapsedRealtime2, jElapsedRealtime2 - jElapsedRealtime);
    }

    private boolean isDecodeOnlyBuffer(long j) {
        int size = this.decodeOnlyPresentationTimestamps.size();
        for (int i = 0; i < size; i++) {
            if (this.decodeOnlyPresentationTimestamps.get(i).longValue() == j) {
                this.decodeOnlyPresentationTimestamps.remove(i);
                return true;
            }
        }
        return false;
    }

    public static boolean isMediaCodecException(java.lang.IllegalStateException illegalStateException) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 21 && isMediaCodecExceptionV21(illegalStateException)) {
            return true;
        }
        java.lang.StackTraceElement[] stackTrace = illegalStateException.getStackTrace();
        return stackTrace.length > 0 && stackTrace[0].getClassName().equals("android.media.MediaCodec");
    }

    public static boolean isMediaCodecExceptionV21(java.lang.IllegalStateException illegalStateException) {
        return illegalStateException instanceof android.media.MediaCodec.CodecException;
    }

    public static boolean isRecoverableMediaCodecExceptionV21(java.lang.IllegalStateException illegalStateException) {
        if (illegalStateException instanceof android.media.MediaCodec.CodecException) {
            return ((android.media.MediaCodec.CodecException) illegalStateException).isRecoverable();
        }
        return false;
    }

    private void maybeInitCodecWithFallback(android.media.MediaCrypto mediaCrypto, boolean z) throws com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException {
        if (this.availableCodecInfos == null) {
            try {
                java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> availableCodecInfos = getAvailableCodecInfos(z);
                java.util.ArrayDeque<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> arrayDeque = new java.util.ArrayDeque<>();
                this.availableCodecInfos = arrayDeque;
                if (this.enableDecoderFallback) {
                    arrayDeque.addAll(availableCodecInfos);
                } else if (!availableCodecInfos.isEmpty()) {
                    this.availableCodecInfos.add(availableCodecInfos.get(0));
                }
                this.preferredDecoderInitializationException = null;
            } catch (com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException e2) {
                throw new com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException(this.inputFormat, e2, z, com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException.DECODER_QUERY_ERROR);
            }
        }
        if (this.availableCodecInfos.isEmpty()) {
            throw new com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException(this.inputFormat, (java.lang.Throwable) null, z, com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException.NO_SUITABLE_DECODER_ERROR);
        }
        while (this.codec == null) {
            com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfoPeekFirst = this.availableCodecInfos.peekFirst();
            if (!shouldInitCodec(mediaCodecInfoPeekFirst)) {
                return;
            }
            try {
                initCodec(mediaCodecInfoPeekFirst, mediaCrypto);
            } catch (java.lang.Exception e3) {
                java.lang.String strValueOf = java.lang.String.valueOf(mediaCodecInfoPeekFirst);
                java.lang.StringBuilder sb = new java.lang.StringBuilder(strValueOf.length() + 30);
                sb.append("Failed to initialize decoder: ");
                sb.append(strValueOf);
                com.google.android.exoplayer2.util.Log.w(TAG, sb.toString(), e3);
                this.availableCodecInfos.removeFirst();
                com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException decoderInitializationException = new com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException(this.inputFormat, e3, z, mediaCodecInfoPeekFirst);
                onCodecError(decoderInitializationException);
                com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException decoderInitializationException2 = this.preferredDecoderInitializationException;
                if (decoderInitializationException2 == null) {
                    this.preferredDecoderInitializationException = decoderInitializationException;
                } else {
                    this.preferredDecoderInitializationException = decoderInitializationException2.copyWithFallbackException(decoderInitializationException);
                }
                if (this.availableCodecInfos.isEmpty()) {
                    throw this.preferredDecoderInitializationException;
                }
            }
        }
        this.availableCodecInfos = null;
    }

    @android.annotation.TargetApi(23)
    private void processEndOfStream() throws com.google.android.exoplayer2.ExoPlaybackException, android.media.MediaCryptoException {
        int i = this.codecDrainAction;
        if (i == 1) {
            flushCodec();
            return;
        }
        if (i == 2) {
            flushCodec();
            updateDrmSessionV23();
        } else if (i == 3) {
            reinitializeCodec();
        } else {
            this.outputStreamEnded = true;
            renderToEndOfStream();
        }
    }

    private void processOutputMediaFormatChanged() {
        this.codecHasOutputMediaFormat = true;
        android.media.MediaFormat outputFormat = this.codec.getOutputFormat();
        if (this.codecAdaptationWorkaroundMode != 0 && outputFormat.getInteger("width") == 32 && outputFormat.getInteger("height") == 32) {
            this.shouldSkipAdaptationWorkaroundOutputBuffer = true;
            return;
        }
        if (this.codecNeedsMonoChannelCountWorkaround) {
            outputFormat.setInteger("channel-count", 1);
        }
        this.codecOutputMediaFormat = outputFormat;
        this.codecOutputMediaFormatChanged = true;
    }

    private boolean readSourceOmittingSampleData(int i) throws com.google.android.exoplayer2.ExoPlaybackException, android.media.MediaCryptoException {
        com.google.android.exoplayer2.FormatHolder formatHolder = getFormatHolder();
        this.noDataBuffer.clear();
        int source = readSource(formatHolder, this.noDataBuffer, i | 4);
        if (source == -5) {
            onInputFormatChanged(formatHolder);
            return true;
        }
        if (source != -4 || !this.noDataBuffer.isEndOfStream()) {
            return false;
        }
        this.inputStreamEnded = true;
        processEndOfStream();
        return false;
    }

    private void reinitializeCodec() throws com.google.android.exoplayer2.ExoPlaybackException {
        releaseCodec();
        maybeInitCodecOrBypass();
    }

    private void resetInputBuffer() {
        this.inputIndex = -1;
        this.buffer.data = null;
    }

    private void resetOutputBuffer() {
        this.outputIndex = -1;
        this.outputBuffer = null;
    }

    private void setCodecDrmSession(com.google.android.exoplayer2.drm.DrmSession drmSession) {
        e.c.a.a.h2.t.a(this.codecDrmSession, drmSession);
        this.codecDrmSession = drmSession;
    }

    private void setSourceDrmSession(com.google.android.exoplayer2.drm.DrmSession drmSession) {
        e.c.a.a.h2.t.a(this.sourceDrmSession, drmSession);
        this.sourceDrmSession = drmSession;
    }

    private boolean shouldContinueRendering(long j) {
        return this.renderTimeLimitMs == com.google.android.exoplayer2.C.TIME_UNSET || android.os.SystemClock.elapsedRealtime() - j < this.renderTimeLimitMs;
    }

    public static boolean supportsFormatDrm(com.google.android.exoplayer2.Format format) {
        int i = format.cryptoType;
        return i == 0 || i == 2;
    }

    private boolean updateCodecOperatingRate(com.google.android.exoplayer2.Format format) throws com.google.android.exoplayer2.ExoPlaybackException {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 23 && this.codec != null && this.codecDrainAction != 3 && getState() != 0) {
            float codecOperatingRateV23 = getCodecOperatingRateV23(this.targetPlaybackSpeed, format, getStreamFormats());
            float f2 = this.codecOperatingRate;
            if (f2 == codecOperatingRateV23) {
                return true;
            }
            if (codecOperatingRateV23 == -1.0f) {
                drainAndReinitializeCodec();
                return false;
            }
            if (f2 == -1.0f && codecOperatingRateV23 <= this.assumedMinimumCodecOperatingRate) {
                return true;
            }
            android.os.Bundle bundle = new android.os.Bundle();
            bundle.putFloat("operating-rate", codecOperatingRateV23);
            this.codec.setParameters(bundle);
            this.codecOperatingRate = codecOperatingRateV23;
        }
        return true;
    }

    private void updateDrmSessionV23() throws com.google.android.exoplayer2.ExoPlaybackException, android.media.MediaCryptoException {
        try {
            this.mediaCrypto.setMediaDrmSession(getFrameworkCryptoConfig(this.sourceDrmSession).sessionId);
            setCodecDrmSession(this.sourceDrmSession);
            this.codecDrainState = 0;
            this.codecDrainAction = 0;
        } catch (android.media.MediaCryptoException e2) {
            throw createRendererException(e2, this.inputFormat, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
        }
    }

    public com.google.android.exoplayer2.decoder.DecoderReuseEvaluation canReuseCodec(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format format2) {
        return new com.google.android.exoplayer2.decoder.DecoderReuseEvaluation(mediaCodecInfo.name, format, format2, 0, 1);
    }

    public com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException createDecoderException(java.lang.Throwable th, com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo) {
        return new com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException(th, mediaCodecInfo);
    }

    public final boolean flushOrReinitializeCodec() throws com.google.android.exoplayer2.ExoPlaybackException {
        boolean zFlushOrReleaseCodec = flushOrReleaseCodec();
        if (zFlushOrReleaseCodec) {
            maybeInitCodecOrBypass();
        }
        return zFlushOrReleaseCodec;
    }

    public boolean flushOrReleaseCodec() {
        if (this.codec == null) {
            return false;
        }
        if (this.codecDrainAction == 3 || this.codecNeedsFlushWorkaround || ((this.codecNeedsSosFlushWorkaround && !this.codecHasOutputMediaFormat) || (this.codecNeedsEosFlushWorkaround && this.codecReceivedEos))) {
            releaseCodec();
            return true;
        }
        flushCodec();
        return false;
    }

    public final com.google.android.exoplayer2.mediacodec.MediaCodecAdapter getCodec() {
        return this.codec;
    }

    public final com.google.android.exoplayer2.mediacodec.MediaCodecInfo getCodecInfo() {
        return this.codecInfo;
    }

    public boolean getCodecNeedsEosPropagation() {
        return false;
    }

    public float getCodecOperatingRate() {
        return this.codecOperatingRate;
    }

    public float getCodecOperatingRateV23(float f2, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format[] formatArr) {
        return -1.0f;
    }

    public final android.media.MediaFormat getCodecOutputMediaFormat() {
        return this.codecOutputMediaFormat;
    }

    public abstract java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> getDecoderInfos(com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, com.google.android.exoplayer2.Format format, boolean z);

    public abstract com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Configuration getMediaCodecConfiguration(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, com.google.android.exoplayer2.Format format, android.media.MediaCrypto mediaCrypto, float f2);

    public final long getOutputStreamOffsetUs() {
        return this.outputStreamOffsetUs;
    }

    public float getPlaybackSpeed() {
        return this.currentPlaybackSpeed;
    }

    public void handleInputBufferSupplementalData(com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer) {
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isEnded() {
        return this.outputStreamEnded;
    }

    @Override // com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        return this.inputFormat != null && (isSourceReady() || hasOutputBuffer() || (this.codecHotswapDeadlineMs != com.google.android.exoplayer2.C.TIME_UNSET && android.os.SystemClock.elapsedRealtime() < this.codecHotswapDeadlineMs));
    }

    public final void maybeInitCodecOrBypass() throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.Format format;
        if (this.codec != null || this.bypassEnabled || (format = this.inputFormat) == null) {
            return;
        }
        if (this.sourceDrmSession == null && shouldUseBypass(format)) {
            initBypass(this.inputFormat);
            return;
        }
        setCodecDrmSession(this.sourceDrmSession);
        java.lang.String str = this.inputFormat.sampleMimeType;
        com.google.android.exoplayer2.drm.DrmSession drmSession = this.codecDrmSession;
        if (drmSession != null) {
            if (this.mediaCrypto == null) {
                com.google.android.exoplayer2.drm.FrameworkCryptoConfig frameworkCryptoConfig = getFrameworkCryptoConfig(drmSession);
                if (frameworkCryptoConfig != null) {
                    try {
                        android.media.MediaCrypto mediaCrypto = new android.media.MediaCrypto(frameworkCryptoConfig.uuid, frameworkCryptoConfig.sessionId);
                        this.mediaCrypto = mediaCrypto;
                        this.mediaCryptoRequiresSecureDecoder = !frameworkCryptoConfig.forceAllowInsecureDecoderComponents && mediaCrypto.requiresSecureDecoderComponent(str);
                    } catch (android.media.MediaCryptoException e2) {
                        throw createRendererException(e2, this.inputFormat, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DRM_SYSTEM_ERROR);
                    }
                } else if (this.codecDrmSession.getError() == null) {
                    return;
                }
            }
            if (com.google.android.exoplayer2.drm.FrameworkCryptoConfig.WORKAROUND_DEVICE_NEEDS_KEYS_TO_CONFIGURE_CODEC) {
                int state = this.codecDrmSession.getState();
                if (state == 1) {
                    com.google.android.exoplayer2.drm.DrmSession.DrmSessionException drmSessionException = (com.google.android.exoplayer2.drm.DrmSession.DrmSessionException) com.google.android.exoplayer2.util.Assertions.checkNotNull(this.codecDrmSession.getError());
                    throw createRendererException(drmSessionException, this.inputFormat, drmSessionException.errorCode);
                }
                if (state != 4) {
                    return;
                }
            }
        }
        try {
            maybeInitCodecWithFallback(this.mediaCrypto, this.mediaCryptoRequiresSecureDecoder);
        } catch (com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.DecoderInitializationException e3) {
            throw createRendererException(e3, this.inputFormat, 4001);
        }
    }

    public void onCodecError(java.lang.Exception exc) {
    }

    public void onCodecInitialized(java.lang.String str, long j, long j2) {
    }

    public void onCodecReleased(java.lang.String str) {
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        this.inputFormat = null;
        this.outputStreamStartPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.outputStreamOffsetUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.pendingOutputStreamOffsetCount = 0;
        flushOrReleaseCodec();
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onEnabled(boolean z, boolean z2) {
        this.decoderCounters = new com.google.android.exoplayer2.decoder.DecoderCounters();
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x00cf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.google.android.exoplayer2.decoder.DecoderReuseEvaluation onInputFormatChanged(com.google.android.exoplayer2.FormatHolder r12) throws com.google.android.exoplayer2.ExoPlaybackException {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.onInputFormatChanged(com.google.android.exoplayer2.FormatHolder):com.google.android.exoplayer2.decoder.DecoderReuseEvaluation");
    }

    public void onOutputFormatChanged(com.google.android.exoplayer2.Format format, android.media.MediaFormat mediaFormat) {
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) throws com.google.android.exoplayer2.ExoPlaybackException {
        this.inputStreamEnded = false;
        this.outputStreamEnded = false;
        this.pendingOutputEndOfStream = false;
        if (this.bypassEnabled) {
            this.bypassBatchBuffer.clear();
            this.bypassSampleBuffer.clear();
            this.bypassSampleBufferPending = false;
        } else {
            flushOrReinitializeCodec();
        }
        if (this.formatQueue.size() > 0) {
            this.waitingForFirstSampleInFormat = true;
        }
        this.formatQueue.clear();
        int i = this.pendingOutputStreamOffsetCount;
        if (i != 0) {
            this.outputStreamOffsetUs = this.pendingOutputStreamOffsetsUs[i - 1];
            this.outputStreamStartPositionUs = this.pendingOutputStreamStartPositionsUs[i - 1];
            this.pendingOutputStreamOffsetCount = 0;
        }
    }

    public void onProcessedOutputBuffer(long j) {
        while (true) {
            int i = this.pendingOutputStreamOffsetCount;
            if (i == 0 || j < this.pendingOutputStreamSwitchTimesUs[0]) {
                return;
            }
            long[] jArr = this.pendingOutputStreamStartPositionsUs;
            this.outputStreamStartPositionUs = jArr[0];
            this.outputStreamOffsetUs = this.pendingOutputStreamOffsetsUs[0];
            int i2 = i - 1;
            this.pendingOutputStreamOffsetCount = i2;
            java.lang.System.arraycopy(jArr, 1, jArr, 0, i2);
            long[] jArr2 = this.pendingOutputStreamOffsetsUs;
            java.lang.System.arraycopy(jArr2, 1, jArr2, 0, this.pendingOutputStreamOffsetCount);
            long[] jArr3 = this.pendingOutputStreamSwitchTimesUs;
            java.lang.System.arraycopy(jArr3, 1, jArr3, 0, this.pendingOutputStreamOffsetCount);
            onProcessedStreamChange();
        }
    }

    public void onProcessedStreamChange() {
    }

    public void onQueueInputBuffer(com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer) {
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onReset() {
        try {
            disableBypass();
            releaseCodec();
        } finally {
            setSourceDrmSession(null);
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStarted() {
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStopped() {
    }

    @Override // com.google.android.exoplayer2.BaseRenderer
    public void onStreamChanged(com.google.android.exoplayer2.Format[] formatArr, long j, long j2) {
        if (this.outputStreamOffsetUs == com.google.android.exoplayer2.C.TIME_UNSET) {
            com.google.android.exoplayer2.util.Assertions.checkState(this.outputStreamStartPositionUs == com.google.android.exoplayer2.C.TIME_UNSET);
            this.outputStreamStartPositionUs = j;
            this.outputStreamOffsetUs = j2;
            return;
        }
        int i = this.pendingOutputStreamOffsetCount;
        long[] jArr = this.pendingOutputStreamOffsetsUs;
        if (i == jArr.length) {
            long j3 = jArr[i - 1];
            java.lang.StringBuilder sb = new java.lang.StringBuilder(65);
            sb.append("Too many stream changes, so dropping offset: ");
            sb.append(j3);
            com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
        } else {
            this.pendingOutputStreamOffsetCount = i + 1;
        }
        long[] jArr2 = this.pendingOutputStreamStartPositionsUs;
        int i2 = this.pendingOutputStreamOffsetCount;
        jArr2[i2 - 1] = j;
        this.pendingOutputStreamOffsetsUs[i2 - 1] = j2;
        this.pendingOutputStreamSwitchTimesUs[i2 - 1] = this.largestQueuedPresentationTimeUs;
    }

    public abstract boolean processOutputBuffer(long j, long j2, com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter, java.nio.ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, com.google.android.exoplayer2.Format format);

    /* JADX WARN: Multi-variable type inference failed */
    public void releaseCodec() {
        try {
            if (this.codec != null) {
                this.codec.release();
                this.decoderCounters.decoderReleaseCount++;
                onCodecReleased(this.codecInfo.name);
            }
            this.codec = null;
            try {
                if (this.mediaCrypto != null) {
                    this.mediaCrypto.release();
                }
            } finally {
            }
        } catch (java.lang.Throwable th) {
            this.codec = null;
            try {
                if (this.mediaCrypto != null) {
                    this.mediaCrypto.release();
                }
                throw th;
            } finally {
            }
        }
    }

    @Override // com.google.android.exoplayer2.Renderer
    public void render(long j, long j2) throws com.google.android.exoplayer2.ExoPlaybackException, android.media.MediaCryptoException {
        boolean z = false;
        if (this.pendingOutputEndOfStream) {
            this.pendingOutputEndOfStream = false;
            processEndOfStream();
        }
        com.google.android.exoplayer2.ExoPlaybackException exoPlaybackException = this.pendingPlaybackException;
        if (exoPlaybackException != null) {
            this.pendingPlaybackException = null;
            throw exoPlaybackException;
        }
        try {
            if (this.outputStreamEnded) {
                renderToEndOfStream();
                return;
            }
            if (this.inputFormat != null || readSourceOmittingSampleData(2)) {
                maybeInitCodecOrBypass();
                if (this.bypassEnabled) {
                    com.google.android.exoplayer2.util.TraceUtil.beginSection("bypassRender");
                    while (bypassRender(j, j2)) {
                    }
                } else {
                    if (this.codec == null) {
                        this.decoderCounters.skippedInputBufferCount += skipSource(j);
                        readSourceOmittingSampleData(1);
                        this.decoderCounters.ensureUpdated();
                    }
                    long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
                    com.google.android.exoplayer2.util.TraceUtil.beginSection("drainAndFeed");
                    while (drainOutputBuffer(j, j2) && shouldContinueRendering(jElapsedRealtime)) {
                    }
                    while (feedInputBuffer() && shouldContinueRendering(jElapsedRealtime)) {
                    }
                }
                com.google.android.exoplayer2.util.TraceUtil.endSection();
                this.decoderCounters.ensureUpdated();
            }
        } catch (java.lang.IllegalStateException e2) {
            if (!isMediaCodecException(e2)) {
                throw e2;
            }
            onCodecError(e2);
            if (com.google.android.exoplayer2.util.Util.SDK_INT >= 21 && isRecoverableMediaCodecExceptionV21(e2)) {
                z = true;
            }
            if (z) {
                releaseCodec();
            }
            throw createRendererException(createDecoderException(e2, getCodecInfo()), this.inputFormat, z, com.google.android.exoplayer2.PlaybackException.ERROR_CODE_DECODING_FAILED);
        }
    }

    public void renderToEndOfStream() {
    }

    public void resetCodecStateForFlush() {
        resetInputBuffer();
        resetOutputBuffer();
        this.codecHotswapDeadlineMs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.codecReceivedEos = false;
        this.codecReceivedBuffers = false;
        this.codecNeedsAdaptationWorkaroundBuffer = false;
        this.shouldSkipAdaptationWorkaroundOutputBuffer = false;
        this.isDecodeOnlyOutputBuffer = false;
        this.isLastOutputBuffer = false;
        this.decodeOnlyPresentationTimestamps.clear();
        this.largestQueuedPresentationTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.lastBufferInStreamPresentationTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        com.google.android.exoplayer2.mediacodec.C2Mp3TimestampTracker c2Mp3TimestampTracker = this.c2Mp3TimestampTracker;
        if (c2Mp3TimestampTracker != null) {
            c2Mp3TimestampTracker.reset();
        }
        this.codecDrainState = 0;
        this.codecDrainAction = 0;
        this.codecReconfigurationState = this.codecReconfigured ? 1 : 0;
    }

    public void resetCodecStateForRelease() {
        resetCodecStateForFlush();
        this.pendingPlaybackException = null;
        this.c2Mp3TimestampTracker = null;
        this.availableCodecInfos = null;
        this.codecInfo = null;
        this.codecInputFormat = null;
        this.codecOutputMediaFormat = null;
        this.codecOutputMediaFormatChanged = false;
        this.codecHasOutputMediaFormat = false;
        this.codecOperatingRate = -1.0f;
        this.codecAdaptationWorkaroundMode = 0;
        this.codecNeedsDiscardToSpsWorkaround = false;
        this.codecNeedsFlushWorkaround = false;
        this.codecNeedsSosFlushWorkaround = false;
        this.codecNeedsEosFlushWorkaround = false;
        this.codecNeedsEosOutputExceptionWorkaround = false;
        this.codecNeedsEosBufferTimestampWorkaround = false;
        this.codecNeedsMonoChannelCountWorkaround = false;
        this.codecNeedsEosPropagation = false;
        this.codecReconfigured = false;
        this.codecReconfigurationState = 0;
        this.mediaCryptoRequiresSecureDecoder = false;
    }

    public final void setPendingOutputEndOfStream() {
        this.pendingOutputEndOfStream = true;
    }

    public final void setPendingPlaybackException(com.google.android.exoplayer2.ExoPlaybackException exoPlaybackException) {
        this.pendingPlaybackException = exoPlaybackException;
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.Renderer
    public void setPlaybackSpeed(float f2, float f3) throws com.google.android.exoplayer2.ExoPlaybackException {
        this.currentPlaybackSpeed = f2;
        this.targetPlaybackSpeed = f3;
        updateCodecOperatingRate(this.codecInputFormat);
    }

    public void setRenderTimeLimitMs(long j) {
        this.renderTimeLimitMs = j;
    }

    public boolean shouldInitCodec(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo) {
        return true;
    }

    public boolean shouldUseBypass(com.google.android.exoplayer2.Format format) {
        return false;
    }

    @Override // com.google.android.exoplayer2.RendererCapabilities
    public final int supportsFormat(com.google.android.exoplayer2.Format format) throws com.google.android.exoplayer2.ExoPlaybackException {
        try {
            return supportsFormat(this.mediaCodecSelector, format);
        } catch (com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException e2) {
            throw createRendererException(e2, format, 4002);
        }
    }

    public abstract int supportsFormat(com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, com.google.android.exoplayer2.Format format);

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.RendererCapabilities
    public final int supportsMixedMimeTypeAdaptation() {
        return 8;
    }

    public final boolean updateCodecOperatingRate() {
        return updateCodecOperatingRate(this.codecInputFormat);
    }

    public final void updateOutputFormatForTime(long j) {
        boolean z;
        com.google.android.exoplayer2.Format formatPollFloor = this.formatQueue.pollFloor(j);
        if (formatPollFloor == null && this.codecOutputMediaFormatChanged) {
            formatPollFloor = this.formatQueue.pollFirst();
        }
        if (formatPollFloor != null) {
            this.outputFormat = formatPollFloor;
            z = true;
        } else {
            z = false;
        }
        if (z || (this.codecOutputMediaFormatChanged && this.outputFormat != null)) {
            onOutputFormatChanged(this.outputFormat, this.codecOutputMediaFormat);
            this.codecOutputMediaFormatChanged = false;
        }
    }
}
