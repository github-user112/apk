package com.google.android.exoplayer2.video;

/* loaded from: classes.dex */
public class MediaCodecVideoRenderer extends com.google.android.exoplayer2.mediacodec.MediaCodecRenderer {
    public static final float INITIAL_FORMAT_MAX_INPUT_SIZE_SCALE_FACTOR = 1.5f;
    public static final java.lang.String KEY_CROP_BOTTOM = "crop-bottom";
    public static final java.lang.String KEY_CROP_LEFT = "crop-left";
    public static final java.lang.String KEY_CROP_RIGHT = "crop-right";
    public static final java.lang.String KEY_CROP_TOP = "crop-top";
    public static final int[] STANDARD_LONG_EDGE_VIDEO_PX = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};
    public static final java.lang.String TAG = "MediaCodecVideoRenderer";
    public static final long TUNNELING_EOS_PRESENTATION_TIME_US = Long.MAX_VALUE;
    public static boolean deviceNeedsSetOutputSurfaceWorkaround;
    public static boolean evaluatedDeviceNeedsSetOutputSurfaceWorkaround;
    public final long allowedJoiningTimeMs;
    public int buffersInCodecCount;
    public boolean codecHandlesHdr10PlusOutOfBandMetadata;
    public com.google.android.exoplayer2.video.MediaCodecVideoRenderer.CodecMaxValues codecMaxValues;
    public boolean codecNeedsSetOutputSurfaceWorkaround;
    public int consecutiveDroppedFrameCount;
    public final android.content.Context context;
    public int currentHeight;
    public float currentPixelWidthHeightRatio;
    public int currentUnappliedRotationDegrees;
    public int currentWidth;
    public final boolean deviceNeedsNoPostProcessWorkaround;
    public long droppedFrameAccumulationStartTimeMs;
    public int droppedFrames;
    public com.google.android.exoplayer2.video.DummySurface dummySurface;
    public final com.google.android.exoplayer2.video.VideoRendererEventListener.EventDispatcher eventDispatcher;
    public com.google.android.exoplayer2.video.VideoFrameMetadataListener frameMetadataListener;
    public final com.google.android.exoplayer2.video.VideoFrameReleaseHelper frameReleaseHelper;
    public boolean haveReportedFirstFrameRenderedForCurrentSurface;
    public long initialPositionUs;
    public long joiningDeadlineMs;
    public long lastBufferPresentationTimeUs;
    public long lastRenderRealtimeUs;
    public final int maxDroppedFramesToNotify;
    public boolean mayRenderFirstFrameAfterEnableIfNotStarted;
    public boolean renderedFirstFrameAfterEnable;
    public boolean renderedFirstFrameAfterReset;
    public com.google.android.exoplayer2.video.VideoSize reportedVideoSize;
    public int scalingMode;
    public android.view.Surface surface;
    public long totalVideoFrameProcessingOffsetUs;
    public boolean tunneling;
    public int tunnelingAudioSessionId;
    public com.google.android.exoplayer2.video.MediaCodecVideoRenderer.OnFrameRenderedListenerV23 tunnelingOnFrameRenderedListener;
    public int videoFrameProcessingOffsetCount;

    public static final class CodecMaxValues {
        public final int height;
        public final int inputSize;
        public final int width;

        public CodecMaxValues(int i, int i2, int i3) {
            this.width = i;
            this.height = i2;
            this.inputSize = i3;
        }
    }

    public final class OnFrameRenderedListenerV23 implements com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.OnFrameRenderedListener, android.os.Handler.Callback {
        public static final int HANDLE_FRAME_RENDERED = 0;
        public final android.os.Handler handler;

        public OnFrameRenderedListenerV23(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter) {
            android.os.Handler handlerCreateHandlerForCurrentLooper = com.google.android.exoplayer2.util.Util.createHandlerForCurrentLooper(this);
            this.handler = handlerCreateHandlerForCurrentLooper;
            mediaCodecAdapter.setOnFrameRenderedListener(this, handlerCreateHandlerForCurrentLooper);
        }

        private void handleFrameRendered(long j) {
            com.google.android.exoplayer2.video.MediaCodecVideoRenderer mediaCodecVideoRenderer = com.google.android.exoplayer2.video.MediaCodecVideoRenderer.this;
            if (this != mediaCodecVideoRenderer.tunnelingOnFrameRenderedListener) {
                return;
            }
            if (j == Long.MAX_VALUE) {
                mediaCodecVideoRenderer.onProcessedTunneledEndOfStream();
                return;
            }
            try {
                mediaCodecVideoRenderer.onProcessedTunneledBuffer(j);
            } catch (com.google.android.exoplayer2.ExoPlaybackException e2) {
                com.google.android.exoplayer2.video.MediaCodecVideoRenderer.this.setPendingPlaybackException(e2);
            }
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(android.os.Message message) {
            if (message.what != 0) {
                return false;
            }
            handleFrameRendered(com.google.android.exoplayer2.util.Util.toLong(message.arg1, message.arg2));
            return true;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.OnFrameRenderedListener
        public void onFrameRendered(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter, long j, long j2) {
            if (com.google.android.exoplayer2.util.Util.SDK_INT >= 30) {
                handleFrameRendered(j);
            } else {
                this.handler.sendMessageAtFrontOfQueue(android.os.Message.obtain(this.handler, 0, (int) (j >> 32), (int) j));
            }
        }
    }

    public MediaCodecVideoRenderer(android.content.Context context, com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory factory, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, long j, boolean z, android.os.Handler handler, com.google.android.exoplayer2.video.VideoRendererEventListener videoRendererEventListener, int i) {
        this(context, factory, mediaCodecSelector, j, z, handler, videoRendererEventListener, i, 30.0f);
    }

    public MediaCodecVideoRenderer(android.content.Context context, com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory factory, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, long j, boolean z, android.os.Handler handler, com.google.android.exoplayer2.video.VideoRendererEventListener videoRendererEventListener, int i, float f2) {
        super(2, factory, mediaCodecSelector, z, f2);
        this.allowedJoiningTimeMs = j;
        this.maxDroppedFramesToNotify = i;
        android.content.Context applicationContext = context.getApplicationContext();
        this.context = applicationContext;
        this.frameReleaseHelper = new com.google.android.exoplayer2.video.VideoFrameReleaseHelper(applicationContext);
        this.eventDispatcher = new com.google.android.exoplayer2.video.VideoRendererEventListener.EventDispatcher(handler, videoRendererEventListener);
        this.deviceNeedsNoPostProcessWorkaround = deviceNeedsNoPostProcessWorkaround();
        this.joiningDeadlineMs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.currentWidth = -1;
        this.currentHeight = -1;
        this.currentPixelWidthHeightRatio = -1.0f;
        this.scalingMode = 1;
        this.tunnelingAudioSessionId = 0;
        clearReportedVideoSize();
    }

    public MediaCodecVideoRenderer(android.content.Context context, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector) {
        this(context, mediaCodecSelector, 0L);
    }

    public MediaCodecVideoRenderer(android.content.Context context, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, long j) {
        this(context, mediaCodecSelector, j, null, null, 0);
    }

    public MediaCodecVideoRenderer(android.content.Context context, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, long j, android.os.Handler handler, com.google.android.exoplayer2.video.VideoRendererEventListener videoRendererEventListener, int i) {
        this(context, com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, j, false, handler, videoRendererEventListener, i, 30.0f);
    }

    public MediaCodecVideoRenderer(android.content.Context context, com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, long j, boolean z, android.os.Handler handler, com.google.android.exoplayer2.video.VideoRendererEventListener videoRendererEventListener, int i) {
        this(context, com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Factory.DEFAULT, mediaCodecSelector, j, z, handler, videoRendererEventListener, i, 30.0f);
    }

    private void clearRenderedFirstFrame() {
        com.google.android.exoplayer2.mediacodec.MediaCodecAdapter codec;
        this.renderedFirstFrameAfterReset = false;
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 23 || !this.tunneling || (codec = getCodec()) == null) {
            return;
        }
        this.tunnelingOnFrameRenderedListener = new com.google.android.exoplayer2.video.MediaCodecVideoRenderer.OnFrameRenderedListenerV23(codec);
    }

    private void clearReportedVideoSize() {
        this.reportedVideoSize = null;
    }

    public static void configureTunnelingV21(android.media.MediaFormat mediaFormat, int i) {
        mediaFormat.setFeatureEnabled("tunneled-playback", true);
        mediaFormat.setInteger("audio-session-id", i);
    }

    public static boolean deviceNeedsNoPostProcessWorkaround() {
        return "NVIDIA".equals(com.google.android.exoplayer2.util.Util.MANUFACTURER);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:28:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:462:0x0704  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean evaluateDeviceNeedsSetOutputSurfaceWorkaround() {
        /*
            Method dump skipped, instructions count: 2756
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.MediaCodecVideoRenderer.evaluateDeviceNeedsSetOutputSurfaceWorkaround():boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0077  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int getCodecMaxInputSize(com.google.android.exoplayer2.mediacodec.MediaCodecInfo r11, com.google.android.exoplayer2.Format r12) {
        /*
            Method dump skipped, instructions count: 236
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.video.MediaCodecVideoRenderer.getCodecMaxInputSize(com.google.android.exoplayer2.mediacodec.MediaCodecInfo, com.google.android.exoplayer2.Format):int");
    }

    public static android.graphics.Point getCodecMaxSize(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, com.google.android.exoplayer2.Format format) {
        boolean z = format.height > format.width;
        int i = z ? format.height : format.width;
        int i2 = z ? format.width : format.height;
        float f2 = i2 / i;
        for (int i3 : STANDARD_LONG_EDGE_VIDEO_PX) {
            int i4 = (int) (i3 * f2);
            if (i3 <= i || i4 <= i2) {
                break;
            }
            if (com.google.android.exoplayer2.util.Util.SDK_INT >= 21) {
                int i5 = z ? i4 : i3;
                if (!z) {
                    i3 = i4;
                }
                android.graphics.Point pointAlignVideoSizeV21 = mediaCodecInfo.alignVideoSizeV21(i5, i3);
                if (mediaCodecInfo.isVideoSizeAndRateSupportedV21(pointAlignVideoSizeV21.x, pointAlignVideoSizeV21.y, format.frameRate)) {
                    return pointAlignVideoSizeV21;
                }
            } else {
                try {
                    int iCeilDivide = com.google.android.exoplayer2.util.Util.ceilDivide(i3, 16) * 16;
                    int iCeilDivide2 = com.google.android.exoplayer2.util.Util.ceilDivide(i4, 16) * 16;
                    if (iCeilDivide * iCeilDivide2 <= com.google.android.exoplayer2.mediacodec.MediaCodecUtil.maxH264DecodableFrameSize()) {
                        int i6 = z ? iCeilDivide2 : iCeilDivide;
                        if (!z) {
                            iCeilDivide = iCeilDivide2;
                        }
                        return new android.graphics.Point(i6, iCeilDivide);
                    }
                } catch (com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException unused) {
                }
            }
        }
        return null;
    }

    public static java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> getDecoderInfos(com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, com.google.android.exoplayer2.Format format, boolean z, boolean z2) {
        android.util.Pair<java.lang.Integer, java.lang.Integer> codecProfileAndLevel;
        java.lang.String str;
        java.lang.String str2 = format.sampleMimeType;
        if (str2 == null) {
            return java.util.Collections.emptyList();
        }
        java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> decoderInfosSortedByFormatSupport = com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getDecoderInfosSortedByFormatSupport(mediaCodecSelector.getDecoderInfos(str2, z, z2), format);
        if (com.google.android.exoplayer2.util.MimeTypes.VIDEO_DOLBY_VISION.equals(str2) && (codecProfileAndLevel = com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getCodecProfileAndLevel(format)) != null) {
            int iIntValue = ((java.lang.Integer) codecProfileAndLevel.first).intValue();
            if (iIntValue == 16 || iIntValue == 256) {
                str = com.google.android.exoplayer2.util.MimeTypes.VIDEO_H265;
            } else if (iIntValue == 512) {
                str = com.google.android.exoplayer2.util.MimeTypes.VIDEO_H264;
            }
            decoderInfosSortedByFormatSupport.addAll(mediaCodecSelector.getDecoderInfos(str, z, z2));
        }
        return java.util.Collections.unmodifiableList(decoderInfosSortedByFormatSupport);
    }

    public static int getMaxInputSize(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, com.google.android.exoplayer2.Format format) {
        if (format.maxInputSize == -1) {
            return getCodecMaxInputSize(mediaCodecInfo, format);
        }
        int size = format.initializationData.size();
        int length = 0;
        for (int i = 0; i < size; i++) {
            length += format.initializationData.get(i).length;
        }
        return format.maxInputSize + length;
    }

    public static boolean isBufferLate(long j) {
        return j < -30000;
    }

    public static boolean isBufferVeryLate(long j) {
        return j < -500000;
    }

    private void maybeNotifyDroppedFrames() {
        if (this.droppedFrames > 0) {
            long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
            this.eventDispatcher.droppedFrames(this.droppedFrames, jElapsedRealtime - this.droppedFrameAccumulationStartTimeMs);
            this.droppedFrames = 0;
            this.droppedFrameAccumulationStartTimeMs = jElapsedRealtime;
        }
    }

    private void maybeNotifyVideoFrameProcessingOffset() {
        int i = this.videoFrameProcessingOffsetCount;
        if (i != 0) {
            this.eventDispatcher.reportVideoFrameProcessingOffset(this.totalVideoFrameProcessingOffsetUs, i);
            this.totalVideoFrameProcessingOffsetUs = 0L;
            this.videoFrameProcessingOffsetCount = 0;
        }
    }

    private void maybeNotifyVideoSizeChanged() {
        if (this.currentWidth == -1 && this.currentHeight == -1) {
            return;
        }
        com.google.android.exoplayer2.video.VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null && videoSize.width == this.currentWidth && videoSize.height == this.currentHeight && videoSize.unappliedRotationDegrees == this.currentUnappliedRotationDegrees && videoSize.pixelWidthHeightRatio == this.currentPixelWidthHeightRatio) {
            return;
        }
        com.google.android.exoplayer2.video.VideoSize videoSize2 = new com.google.android.exoplayer2.video.VideoSize(this.currentWidth, this.currentHeight, this.currentUnappliedRotationDegrees, this.currentPixelWidthHeightRatio);
        this.reportedVideoSize = videoSize2;
        this.eventDispatcher.videoSizeChanged(videoSize2);
    }

    private void maybeRenotifyRenderedFirstFrame() {
        if (this.haveReportedFirstFrameRenderedForCurrentSurface) {
            this.eventDispatcher.renderedFirstFrame(this.surface);
        }
    }

    private void maybeRenotifyVideoSizeChanged() {
        com.google.android.exoplayer2.video.VideoSize videoSize = this.reportedVideoSize;
        if (videoSize != null) {
            this.eventDispatcher.videoSizeChanged(videoSize);
        }
    }

    private void notifyFrameMetadataListener(long j, long j2, com.google.android.exoplayer2.Format format) {
        com.google.android.exoplayer2.video.VideoFrameMetadataListener videoFrameMetadataListener = this.frameMetadataListener;
        if (videoFrameMetadataListener != null) {
            videoFrameMetadataListener.onVideoFrameAboutToBeRendered(j, j2, format, getCodecOutputMediaFormat());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onProcessedTunneledEndOfStream() {
        setPendingOutputEndOfStream();
    }

    private void releaseDummySurface() {
        if (this.surface == this.dummySurface) {
            this.surface = null;
        }
        this.dummySurface.release();
        this.dummySurface = null;
    }

    public static void setHdr10PlusInfoV29(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter, byte[] bArr) {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putByteArray("hdr10-plus-info", bArr);
        mediaCodecAdapter.setParameters(bundle);
    }

    private void setJoiningDeadlineMs() {
        this.joiningDeadlineMs = this.allowedJoiningTimeMs > 0 ? android.os.SystemClock.elapsedRealtime() + this.allowedJoiningTimeMs : com.google.android.exoplayer2.C.TIME_UNSET;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.video.MediaCodecVideoRenderer] */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.view.Surface] */
    private void setOutput(java.lang.Object obj) throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.video.DummySurface dummySurfaceNewInstanceV17 = obj instanceof android.view.Surface ? (android.view.Surface) obj : null;
        if (dummySurfaceNewInstanceV17 == null) {
            com.google.android.exoplayer2.video.DummySurface dummySurface = this.dummySurface;
            if (dummySurface != null) {
                dummySurfaceNewInstanceV17 = dummySurface;
            } else {
                com.google.android.exoplayer2.mediacodec.MediaCodecInfo codecInfo = getCodecInfo();
                if (codecInfo != null && shouldUseDummySurface(codecInfo)) {
                    dummySurfaceNewInstanceV17 = com.google.android.exoplayer2.video.DummySurface.newInstanceV17(this.context, codecInfo.secure);
                    this.dummySurface = dummySurfaceNewInstanceV17;
                }
            }
        }
        if (this.surface == dummySurfaceNewInstanceV17) {
            if (dummySurfaceNewInstanceV17 == null || dummySurfaceNewInstanceV17 == this.dummySurface) {
                return;
            }
            maybeRenotifyVideoSizeChanged();
            maybeRenotifyRenderedFirstFrame();
            return;
        }
        this.surface = dummySurfaceNewInstanceV17;
        this.frameReleaseHelper.onSurfaceChanged(dummySurfaceNewInstanceV17);
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        int state = getState();
        com.google.android.exoplayer2.mediacodec.MediaCodecAdapter codec = getCodec();
        if (codec != null) {
            if (com.google.android.exoplayer2.util.Util.SDK_INT < 23 || dummySurfaceNewInstanceV17 == null || this.codecNeedsSetOutputSurfaceWorkaround) {
                releaseCodec();
                maybeInitCodecOrBypass();
            } else {
                setOutputSurfaceV23(codec, dummySurfaceNewInstanceV17);
            }
        }
        if (dummySurfaceNewInstanceV17 == null || dummySurfaceNewInstanceV17 == this.dummySurface) {
            clearReportedVideoSize();
            clearRenderedFirstFrame();
            return;
        }
        maybeRenotifyVideoSizeChanged();
        clearRenderedFirstFrame();
        if (state == 2) {
            setJoiningDeadlineMs();
        }
    }

    private boolean shouldUseDummySurface(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo) {
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 23 && !this.tunneling && !codecNeedsSetOutputSurfaceWorkaround(mediaCodecInfo.name) && (!mediaCodecInfo.secure || com.google.android.exoplayer2.video.DummySurface.isSecureSupported(this.context));
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public com.google.android.exoplayer2.decoder.DecoderReuseEvaluation canReuseCodec(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format format2) {
        com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluationCanReuseCodec = mediaCodecInfo.canReuseCodec(format, format2);
        int i = decoderReuseEvaluationCanReuseCodec.discardReasons;
        int i2 = format2.width;
        com.google.android.exoplayer2.video.MediaCodecVideoRenderer.CodecMaxValues codecMaxValues = this.codecMaxValues;
        if (i2 > codecMaxValues.width || format2.height > codecMaxValues.height) {
            i |= 256;
        }
        if (getMaxInputSize(mediaCodecInfo, format2) > this.codecMaxValues.inputSize) {
            i |= 64;
        }
        int i3 = i;
        return new com.google.android.exoplayer2.decoder.DecoderReuseEvaluation(mediaCodecInfo.name, format, format2, i3 != 0 ? 0 : decoderReuseEvaluationCanReuseCodec.result, i3);
    }

    public boolean codecNeedsSetOutputSurfaceWorkaround(java.lang.String str) {
        if (str.startsWith("OMX.google")) {
            return false;
        }
        synchronized (com.google.android.exoplayer2.video.MediaCodecVideoRenderer.class) {
            if (!evaluatedDeviceNeedsSetOutputSurfaceWorkaround) {
                deviceNeedsSetOutputSurfaceWorkaround = evaluateDeviceNeedsSetOutputSurfaceWorkaround();
                evaluatedDeviceNeedsSetOutputSurfaceWorkaround = true;
            }
        }
        return deviceNeedsSetOutputSurfaceWorkaround;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public com.google.android.exoplayer2.mediacodec.MediaCodecDecoderException createDecoderException(java.lang.Throwable th, com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo) {
        return new com.google.android.exoplayer2.video.MediaCodecVideoDecoderException(th, mediaCodecInfo, this.surface);
    }

    public void dropOutputBuffer(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        com.google.android.exoplayer2.util.TraceUtil.beginSection("dropVideoBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, false);
        com.google.android.exoplayer2.util.TraceUtil.endSection();
        updateDroppedBufferCounters(1);
    }

    public com.google.android.exoplayer2.video.MediaCodecVideoRenderer.CodecMaxValues getCodecMaxValues(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format[] formatArr) {
        int codecMaxInputSize;
        int iMax = format.width;
        int iMax2 = format.height;
        int maxInputSize = getMaxInputSize(mediaCodecInfo, format);
        if (formatArr.length == 1) {
            if (maxInputSize != -1 && (codecMaxInputSize = getCodecMaxInputSize(mediaCodecInfo, format)) != -1) {
                maxInputSize = java.lang.Math.min((int) (maxInputSize * 1.5f), codecMaxInputSize);
            }
            return new com.google.android.exoplayer2.video.MediaCodecVideoRenderer.CodecMaxValues(iMax, iMax2, maxInputSize);
        }
        int length = formatArr.length;
        boolean z = false;
        for (int i = 0; i < length; i++) {
            com.google.android.exoplayer2.Format formatBuild = formatArr[i];
            if (format.colorInfo != null && formatBuild.colorInfo == null) {
                formatBuild = formatBuild.buildUpon().setColorInfo(format.colorInfo).build();
            }
            if (mediaCodecInfo.canReuseCodec(format, formatBuild).result != 0) {
                z |= formatBuild.width == -1 || formatBuild.height == -1;
                iMax = java.lang.Math.max(iMax, formatBuild.width);
                iMax2 = java.lang.Math.max(iMax2, formatBuild.height);
                maxInputSize = java.lang.Math.max(maxInputSize, getMaxInputSize(mediaCodecInfo, formatBuild));
            }
        }
        if (z) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder(66);
            sb.append("Resolutions unknown. Codec max resolution: ");
            sb.append(iMax);
            sb.append("x");
            sb.append(iMax2);
            com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
            android.graphics.Point codecMaxSize = getCodecMaxSize(mediaCodecInfo, format);
            if (codecMaxSize != null) {
                iMax = java.lang.Math.max(iMax, codecMaxSize.x);
                iMax2 = java.lang.Math.max(iMax2, codecMaxSize.y);
                maxInputSize = java.lang.Math.max(maxInputSize, getCodecMaxInputSize(mediaCodecInfo, format.buildUpon().setWidth(iMax).setHeight(iMax2).build()));
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder(57);
                sb2.append("Codec max resolution adjusted to: ");
                sb2.append(iMax);
                sb2.append("x");
                sb2.append(iMax2);
                com.google.android.exoplayer2.util.Log.w(TAG, sb2.toString());
            }
        }
        return new com.google.android.exoplayer2.video.MediaCodecVideoRenderer.CodecMaxValues(iMax, iMax2, maxInputSize);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public boolean getCodecNeedsEosPropagation() {
        return this.tunneling && com.google.android.exoplayer2.util.Util.SDK_INT < 23;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public float getCodecOperatingRateV23(float f2, com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format[] formatArr) {
        float fMax = -1.0f;
        for (com.google.android.exoplayer2.Format format2 : formatArr) {
            float f3 = format2.frameRate;
            if (f3 != -1.0f) {
                fMax = java.lang.Math.max(fMax, f3);
            }
        }
        if (fMax == -1.0f) {
            return -1.0f;
        }
        return fMax * f2;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> getDecoderInfos(com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, com.google.android.exoplayer2.Format format, boolean z) {
        return getDecoderInfos(mediaCodecSelector, format, z, this.tunneling);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @android.annotation.TargetApi(17)
    public com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Configuration getMediaCodecConfiguration(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo, com.google.android.exoplayer2.Format format, android.media.MediaCrypto mediaCrypto, float f2) {
        com.google.android.exoplayer2.video.DummySurface dummySurface = this.dummySurface;
        if (dummySurface != null && dummySurface.secure != mediaCodecInfo.secure) {
            releaseDummySurface();
        }
        java.lang.String str = mediaCodecInfo.codecMimeType;
        com.google.android.exoplayer2.video.MediaCodecVideoRenderer.CodecMaxValues codecMaxValues = getCodecMaxValues(mediaCodecInfo, format, getStreamFormats());
        this.codecMaxValues = codecMaxValues;
        android.media.MediaFormat mediaFormat = getMediaFormat(format, str, codecMaxValues, f2, this.deviceNeedsNoPostProcessWorkaround, this.tunneling ? this.tunnelingAudioSessionId : 0);
        if (this.surface == null) {
            if (!shouldUseDummySurface(mediaCodecInfo)) {
                throw new java.lang.IllegalStateException();
            }
            if (this.dummySurface == null) {
                this.dummySurface = com.google.android.exoplayer2.video.DummySurface.newInstanceV17(this.context, mediaCodecInfo.secure);
            }
            this.surface = this.dummySurface;
        }
        return com.google.android.exoplayer2.mediacodec.MediaCodecAdapter.Configuration.createForVideoDecoding(mediaCodecInfo, mediaFormat, format, this.surface, mediaCrypto);
    }

    @android.annotation.SuppressLint({"InlinedApi"})
    @android.annotation.TargetApi(21)
    public android.media.MediaFormat getMediaFormat(com.google.android.exoplayer2.Format format, java.lang.String str, com.google.android.exoplayer2.video.MediaCodecVideoRenderer.CodecMaxValues codecMaxValues, float f2, boolean z, int i) {
        android.util.Pair<java.lang.Integer, java.lang.Integer> codecProfileAndLevel;
        android.media.MediaFormat mediaFormat = new android.media.MediaFormat();
        mediaFormat.setString("mime", str);
        mediaFormat.setInteger("width", format.width);
        mediaFormat.setInteger("height", format.height);
        com.google.android.exoplayer2.util.MediaFormatUtil.setCsdBuffers(mediaFormat, format.initializationData);
        com.google.android.exoplayer2.util.MediaFormatUtil.maybeSetFloat(mediaFormat, "frame-rate", format.frameRate);
        com.google.android.exoplayer2.util.MediaFormatUtil.maybeSetInteger(mediaFormat, "rotation-degrees", format.rotationDegrees);
        com.google.android.exoplayer2.util.MediaFormatUtil.maybeSetColorInfo(mediaFormat, format.colorInfo);
        if (com.google.android.exoplayer2.util.MimeTypes.VIDEO_DOLBY_VISION.equals(format.sampleMimeType) && (codecProfileAndLevel = com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getCodecProfileAndLevel(format)) != null) {
            com.google.android.exoplayer2.util.MediaFormatUtil.maybeSetInteger(mediaFormat, "profile", ((java.lang.Integer) codecProfileAndLevel.first).intValue());
        }
        mediaFormat.setInteger("max-width", codecMaxValues.width);
        mediaFormat.setInteger("max-height", codecMaxValues.height);
        com.google.android.exoplayer2.util.MediaFormatUtil.maybeSetInteger(mediaFormat, "max-input-size", codecMaxValues.inputSize);
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 23) {
            mediaFormat.setInteger("priority", 0);
            if (f2 != -1.0f) {
                mediaFormat.setFloat("operating-rate", f2);
            }
        }
        if (z) {
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        }
        if (i != 0) {
            configureTunnelingV21(mediaFormat, i);
        }
        return mediaFormat;
    }

    @Override // com.google.android.exoplayer2.Renderer, com.google.android.exoplayer2.RendererCapabilities
    public java.lang.String getName() {
        return TAG;
    }

    public android.view.Surface getSurface() {
        return this.surface;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    @android.annotation.TargetApi(29)
    public void handleInputBufferSupplementalData(com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer) {
        if (this.codecHandlesHdr10PlusOutOfBandMetadata) {
            java.nio.ByteBuffer byteBuffer = (java.nio.ByteBuffer) com.google.android.exoplayer2.util.Assertions.checkNotNull(decoderInputBuffer.supplementalData);
            if (byteBuffer.remaining() >= 7) {
                byte b = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byteBuffer.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4 && b3 == 0) {
                    byte[] bArr = new byte[byteBuffer.remaining()];
                    byteBuffer.get(bArr);
                    byteBuffer.position(0);
                    setHdr10PlusInfoV29(getCodec(), bArr);
                }
            }
        }
    }

    @Override // com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.PlayerMessage.Target
    public void handleMessage(int i, java.lang.Object obj) throws com.google.android.exoplayer2.ExoPlaybackException {
        if (i == 1) {
            setOutput(obj);
            return;
        }
        if (i == 7) {
            this.frameMetadataListener = (com.google.android.exoplayer2.video.VideoFrameMetadataListener) obj;
            return;
        }
        if (i == 10) {
            int iIntValue = ((java.lang.Integer) obj).intValue();
            if (this.tunnelingAudioSessionId != iIntValue) {
                this.tunnelingAudioSessionId = iIntValue;
                if (this.tunneling) {
                    releaseCodec();
                    return;
                }
                return;
            }
            return;
        }
        if (i != 4) {
            if (i != 5) {
                super.handleMessage(i, obj);
                return;
            } else {
                this.frameReleaseHelper.setChangeFrameRateStrategy(((java.lang.Integer) obj).intValue());
                return;
            }
        }
        this.scalingMode = ((java.lang.Integer) obj).intValue();
        com.google.android.exoplayer2.mediacodec.MediaCodecAdapter codec = getCodec();
        if (codec != null) {
            codec.setVideoScalingMode(this.scalingMode);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.Renderer
    public boolean isReady() {
        com.google.android.exoplayer2.video.DummySurface dummySurface;
        if (super.isReady() && (this.renderedFirstFrameAfterReset || (((dummySurface = this.dummySurface) != null && this.surface == dummySurface) || getCodec() == null || this.tunneling))) {
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

    public boolean maybeDropBuffersToKeyframe(long j, boolean z) throws com.google.android.exoplayer2.ExoPlaybackException {
        int iSkipSource = skipSource(j);
        if (iSkipSource == 0) {
            return false;
        }
        com.google.android.exoplayer2.decoder.DecoderCounters decoderCounters = this.decoderCounters;
        decoderCounters.droppedToKeyframeCount++;
        int i = this.buffersInCodecCount + iSkipSource;
        if (z) {
            decoderCounters.skippedOutputBufferCount += i;
        } else {
            updateDroppedBufferCounters(i);
        }
        flushOrReinitializeCodec();
        return true;
    }

    public void maybeNotifyRenderedFirstFrame() {
        this.renderedFirstFrameAfterEnable = true;
        if (this.renderedFirstFrameAfterReset) {
            return;
        }
        this.renderedFirstFrameAfterReset = true;
        this.eventDispatcher.renderedFirstFrame(this.surface);
        this.haveReportedFirstFrameRenderedForCurrentSurface = true;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onCodecError(java.lang.Exception exc) {
        com.google.android.exoplayer2.util.Log.e(TAG, "Video codec error", exc);
        this.eventDispatcher.videoCodecError(exc);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onCodecInitialized(java.lang.String str, long j, long j2) {
        this.eventDispatcher.decoderInitialized(str, j, j2);
        this.codecNeedsSetOutputSurfaceWorkaround = codecNeedsSetOutputSurfaceWorkaround(str);
        this.codecHandlesHdr10PlusOutOfBandMetadata = ((com.google.android.exoplayer2.mediacodec.MediaCodecInfo) com.google.android.exoplayer2.util.Assertions.checkNotNull(getCodecInfo())).isHdr10PlusOutOfBandMetadataSupported();
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 23 || !this.tunneling) {
            return;
        }
        this.tunnelingOnFrameRenderedListener = new com.google.android.exoplayer2.video.MediaCodecVideoRenderer.OnFrameRenderedListenerV23((com.google.android.exoplayer2.mediacodec.MediaCodecAdapter) com.google.android.exoplayer2.util.Assertions.checkNotNull(getCodec()));
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onCodecReleased(java.lang.String str) {
        this.eventDispatcher.decoderReleased(str);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onDisabled() {
        clearReportedVideoSize();
        clearRenderedFirstFrame();
        this.haveReportedFirstFrameRenderedForCurrentSurface = false;
        this.frameReleaseHelper.onDisabled();
        this.tunnelingOnFrameRenderedListener = null;
        try {
            super.onDisabled();
        } finally {
            this.eventDispatcher.disabled(this.decoderCounters);
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onEnabled(boolean z, boolean z2) {
        super.onEnabled(z, z2);
        boolean z3 = getConfiguration().tunneling;
        com.google.android.exoplayer2.util.Assertions.checkState((z3 && this.tunnelingAudioSessionId == 0) ? false : true);
        if (this.tunneling != z3) {
            this.tunneling = z3;
            releaseCodec();
        }
        this.eventDispatcher.enabled(this.decoderCounters);
        this.frameReleaseHelper.onEnabled();
        this.mayRenderFirstFrameAfterEnableIfNotStarted = z2;
        this.renderedFirstFrameAfterEnable = false;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public com.google.android.exoplayer2.decoder.DecoderReuseEvaluation onInputFormatChanged(com.google.android.exoplayer2.FormatHolder formatHolder) throws com.google.android.exoplayer2.ExoPlaybackException {
        com.google.android.exoplayer2.decoder.DecoderReuseEvaluation decoderReuseEvaluationOnInputFormatChanged = super.onInputFormatChanged(formatHolder);
        this.eventDispatcher.inputFormatChanged(formatHolder.format, decoderReuseEvaluationOnInputFormatChanged);
        return decoderReuseEvaluationOnInputFormatChanged;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onOutputFormatChanged(com.google.android.exoplayer2.Format format, android.media.MediaFormat mediaFormat) {
        com.google.android.exoplayer2.mediacodec.MediaCodecAdapter codec = getCodec();
        if (codec != null) {
            codec.setVideoScalingMode(this.scalingMode);
        }
        if (this.tunneling) {
            this.currentWidth = format.width;
            this.currentHeight = format.height;
        } else {
            com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaFormat);
            boolean z = mediaFormat.containsKey(KEY_CROP_RIGHT) && mediaFormat.containsKey(KEY_CROP_LEFT) && mediaFormat.containsKey(KEY_CROP_BOTTOM) && mediaFormat.containsKey(KEY_CROP_TOP);
            this.currentWidth = z ? (mediaFormat.getInteger(KEY_CROP_RIGHT) - mediaFormat.getInteger(KEY_CROP_LEFT)) + 1 : mediaFormat.getInteger("width");
            this.currentHeight = z ? (mediaFormat.getInteger(KEY_CROP_BOTTOM) - mediaFormat.getInteger(KEY_CROP_TOP)) + 1 : mediaFormat.getInteger("height");
        }
        this.currentPixelWidthHeightRatio = format.pixelWidthHeightRatio;
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 21) {
            int i = format.rotationDegrees;
            if (i == 90 || i == 270) {
                int i2 = this.currentWidth;
                this.currentWidth = this.currentHeight;
                this.currentHeight = i2;
                this.currentPixelWidthHeightRatio = 1.0f / this.currentPixelWidthHeightRatio;
            }
        } else {
            this.currentUnappliedRotationDegrees = format.rotationDegrees;
        }
        this.frameReleaseHelper.onFormatChanged(format.frameRate);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onPositionReset(long j, boolean z) throws com.google.android.exoplayer2.ExoPlaybackException {
        super.onPositionReset(j, z);
        clearRenderedFirstFrame();
        this.frameReleaseHelper.onPositionReset();
        this.lastBufferPresentationTimeUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.initialPositionUs = com.google.android.exoplayer2.C.TIME_UNSET;
        this.consecutiveDroppedFrameCount = 0;
        if (z) {
            setJoiningDeadlineMs();
        } else {
            this.joiningDeadlineMs = com.google.android.exoplayer2.C.TIME_UNSET;
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onProcessedOutputBuffer(long j) {
        super.onProcessedOutputBuffer(j);
        if (this.tunneling) {
            return;
        }
        this.buffersInCodecCount--;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onProcessedStreamChange() {
        super.onProcessedStreamChange();
        clearRenderedFirstFrame();
    }

    public void onProcessedTunneledBuffer(long j) {
        updateOutputFormatForTime(j);
        maybeNotifyVideoSizeChanged();
        this.decoderCounters.renderedOutputBufferCount++;
        maybeNotifyRenderedFirstFrame();
        onProcessedOutputBuffer(j);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void onQueueInputBuffer(com.google.android.exoplayer2.decoder.DecoderInputBuffer decoderInputBuffer) {
        if (!this.tunneling) {
            this.buffersInCodecCount++;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 23 || !this.tunneling) {
            return;
        }
        onProcessedTunneledBuffer(decoderInputBuffer.timeUs);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    @android.annotation.TargetApi(17)
    public void onReset() {
        try {
            super.onReset();
        } finally {
            if (this.dummySurface != null) {
                releaseDummySurface();
            }
        }
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onStarted() {
        super.onStarted();
        this.droppedFrames = 0;
        this.droppedFrameAccumulationStartTimeMs = android.os.SystemClock.elapsedRealtime();
        this.lastRenderRealtimeUs = android.os.SystemClock.elapsedRealtime() * 1000;
        this.totalVideoFrameProcessingOffsetUs = 0L;
        this.videoFrameProcessingOffsetCount = 0;
        this.frameReleaseHelper.onStarted();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer
    public void onStopped() {
        this.joiningDeadlineMs = com.google.android.exoplayer2.C.TIME_UNSET;
        maybeNotifyDroppedFrames();
        maybeNotifyVideoFrameProcessingOffset();
        this.frameReleaseHelper.onStopped();
        super.onStopped();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public boolean processOutputBuffer(long j, long j2, com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter, java.nio.ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, com.google.android.exoplayer2.Format format) throws java.lang.InterruptedException {
        long j4;
        boolean z3;
        com.google.android.exoplayer2.video.MediaCodecVideoRenderer mediaCodecVideoRenderer;
        com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter2;
        int i4;
        long j5;
        long j6;
        com.google.android.exoplayer2.util.Assertions.checkNotNull(mediaCodecAdapter);
        if (this.initialPositionUs == com.google.android.exoplayer2.C.TIME_UNSET) {
            this.initialPositionUs = j;
        }
        if (j3 != this.lastBufferPresentationTimeUs) {
            this.frameReleaseHelper.onNextFrame(j3);
            this.lastBufferPresentationTimeUs = j3;
        }
        long outputStreamOffsetUs = getOutputStreamOffsetUs();
        long j7 = j3 - outputStreamOffsetUs;
        if (z && !z2) {
            skipOutputBuffer(mediaCodecAdapter, i, j7);
            return true;
        }
        double playbackSpeed = getPlaybackSpeed();
        boolean z4 = getState() == 2;
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime() * 1000;
        double d2 = j3 - j;
        java.lang.Double.isNaN(d2);
        java.lang.Double.isNaN(playbackSpeed);
        long j8 = (long) (d2 / playbackSpeed);
        if (z4) {
            j8 -= jElapsedRealtime - j2;
        }
        if (this.surface == this.dummySurface) {
            if (!isBufferLate(j8)) {
                return false;
            }
            skipOutputBuffer(mediaCodecAdapter, i, j7);
            updateVideoFrameProcessingOffsetCounters(j8);
            return true;
        }
        long j9 = jElapsedRealtime - this.lastRenderRealtimeUs;
        if (this.renderedFirstFrameAfterEnable ? this.renderedFirstFrameAfterReset : !(z4 || this.mayRenderFirstFrameAfterEnableIfNotStarted)) {
            j4 = j9;
            z3 = false;
        } else {
            j4 = j9;
            z3 = true;
        }
        if (!(this.joiningDeadlineMs == com.google.android.exoplayer2.C.TIME_UNSET && j >= outputStreamOffsetUs && (z3 || (z4 && shouldForceRenderOutputBuffer(j8, j4))))) {
            if (z4 && j != this.initialPositionUs) {
                long jNanoTime = java.lang.System.nanoTime();
                long jAdjustReleaseTime = this.frameReleaseHelper.adjustReleaseTime((j8 * 1000) + jNanoTime);
                long j10 = (jAdjustReleaseTime - jNanoTime) / 1000;
                boolean z5 = this.joiningDeadlineMs != com.google.android.exoplayer2.C.TIME_UNSET;
                if (shouldDropBuffersToKeyframe(j10, j2, z2) && maybeDropBuffersToKeyframe(j, z5)) {
                    return false;
                }
                if (shouldDropOutputBuffer(j10, j2, z2)) {
                    if (z5) {
                        skipOutputBuffer(mediaCodecAdapter, i, j7);
                    } else {
                        dropOutputBuffer(mediaCodecAdapter, i, j7);
                    }
                    j8 = j10;
                } else {
                    j8 = j10;
                    if (com.google.android.exoplayer2.util.Util.SDK_INT >= 21) {
                        if (j8 < 50000) {
                            mediaCodecVideoRenderer = this;
                            mediaCodecVideoRenderer.notifyFrameMetadataListener(j7, jAdjustReleaseTime, format);
                            mediaCodecAdapter2 = mediaCodecAdapter;
                            i4 = i;
                            j5 = j7;
                            j6 = jAdjustReleaseTime;
                            mediaCodecVideoRenderer.renderOutputBufferV21(mediaCodecAdapter2, i4, j5, j6);
                        }
                    } else if (j8 < 30000) {
                        if (j8 > 11000) {
                            try {
                                java.lang.Thread.sleep((j8 - 10000) / 1000);
                            } catch (java.lang.InterruptedException unused) {
                                java.lang.Thread.currentThread().interrupt();
                                return false;
                            }
                        }
                        notifyFrameMetadataListener(j7, jAdjustReleaseTime, format);
                        renderOutputBuffer(mediaCodecAdapter, i, j7);
                    }
                }
            }
            return false;
        }
        long jNanoTime2 = java.lang.System.nanoTime();
        notifyFrameMetadataListener(j7, jNanoTime2, format);
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 21) {
            mediaCodecVideoRenderer = this;
            mediaCodecAdapter2 = mediaCodecAdapter;
            i4 = i;
            j5 = j7;
            j6 = jNanoTime2;
            mediaCodecVideoRenderer.renderOutputBufferV21(mediaCodecAdapter2, i4, j5, j6);
        }
        renderOutputBuffer(mediaCodecAdapter, i, j7);
        updateVideoFrameProcessingOffsetCounters(j8);
        return true;
    }

    public void renderOutputBuffer(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        maybeNotifyVideoSizeChanged();
        com.google.android.exoplayer2.util.TraceUtil.beginSection("releaseOutputBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, true);
        com.google.android.exoplayer2.util.TraceUtil.endSection();
        this.lastRenderRealtimeUs = android.os.SystemClock.elapsedRealtime() * 1000;
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        maybeNotifyRenderedFirstFrame();
    }

    public void renderOutputBufferV21(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter, int i, long j, long j2) {
        maybeNotifyVideoSizeChanged();
        com.google.android.exoplayer2.util.TraceUtil.beginSection("releaseOutputBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, j2);
        com.google.android.exoplayer2.util.TraceUtil.endSection();
        this.lastRenderRealtimeUs = android.os.SystemClock.elapsedRealtime() * 1000;
        this.decoderCounters.renderedOutputBufferCount++;
        this.consecutiveDroppedFrameCount = 0;
        maybeNotifyRenderedFirstFrame();
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public void resetCodecStateForFlush() {
        super.resetCodecStateForFlush();
        this.buffersInCodecCount = 0;
    }

    public void setOutputSurfaceV23(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter, android.view.Surface surface) {
        mediaCodecAdapter.setOutputSurface(surface);
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer, com.google.android.exoplayer2.BaseRenderer, com.google.android.exoplayer2.Renderer
    public void setPlaybackSpeed(float f2, float f3) throws com.google.android.exoplayer2.ExoPlaybackException {
        super.setPlaybackSpeed(f2, f3);
        this.frameReleaseHelper.onPlaybackSpeed(f2);
    }

    public boolean shouldDropBuffersToKeyframe(long j, long j2, boolean z) {
        return isBufferVeryLate(j) && !z;
    }

    public boolean shouldDropOutputBuffer(long j, long j2, boolean z) {
        return isBufferLate(j) && !z;
    }

    public boolean shouldForceRenderOutputBuffer(long j, long j2) {
        return isBufferLate(j) && j2 > 100000;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public boolean shouldInitCodec(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo) {
        return this.surface != null || shouldUseDummySurface(mediaCodecInfo);
    }

    public void skipOutputBuffer(com.google.android.exoplayer2.mediacodec.MediaCodecAdapter mediaCodecAdapter, int i, long j) {
        com.google.android.exoplayer2.util.TraceUtil.beginSection("skipVideoBuffer");
        mediaCodecAdapter.releaseOutputBuffer(i, false);
        com.google.android.exoplayer2.util.TraceUtil.endSection();
        this.decoderCounters.skippedOutputBufferCount++;
    }

    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecRenderer
    public int supportsFormat(com.google.android.exoplayer2.mediacodec.MediaCodecSelector mediaCodecSelector, com.google.android.exoplayer2.Format format) {
        int i = 0;
        if (!com.google.android.exoplayer2.util.MimeTypes.isVideo(format.sampleMimeType)) {
            return 0;
        }
        boolean z = format.drmInitData != null;
        java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> decoderInfos = getDecoderInfos(mediaCodecSelector, format, z, false);
        if (z && decoderInfos.isEmpty()) {
            decoderInfos = getDecoderInfos(mediaCodecSelector, format, false, false);
        }
        if (decoderInfos.isEmpty()) {
            return 1;
        }
        if (!com.google.android.exoplayer2.mediacodec.MediaCodecRenderer.supportsFormatDrm(format)) {
            return 2;
        }
        com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo = decoderInfos.get(0);
        boolean zIsFormatSupported = mediaCodecInfo.isFormatSupported(format);
        int i2 = mediaCodecInfo.isSeamlessAdaptationSupported(format) ? 16 : 8;
        if (zIsFormatSupported) {
            java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> decoderInfos2 = getDecoderInfos(mediaCodecSelector, format, z, true);
            if (!decoderInfos2.isEmpty()) {
                com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo2 = decoderInfos2.get(0);
                if (mediaCodecInfo2.isFormatSupported(format) && mediaCodecInfo2.isSeamlessAdaptationSupported(format)) {
                    i = 32;
                }
            }
        }
        return (zIsFormatSupported ? 4 : 3) | i2 | i;
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

    public void updateVideoFrameProcessingOffsetCounters(long j) {
        this.decoderCounters.addVideoFrameProcessingOffset(j);
        this.totalVideoFrameProcessingOffsetUs += j;
        this.videoFrameProcessingOffsetCount++;
    }
}
