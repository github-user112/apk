package com.google.android.exoplayer2.mediacodec;

/* loaded from: classes.dex */
public final class MediaCodecInfo {
    public static final int MAX_SUPPORTED_INSTANCES_UNKNOWN = -1;
    public static final java.lang.String TAG = "MediaCodecInfo";
    public final boolean adaptive;
    public final android.media.MediaCodecInfo.CodecCapabilities capabilities;
    public final java.lang.String codecMimeType;
    public final boolean hardwareAccelerated;
    public final boolean isVideo;
    public final java.lang.String mimeType;
    public final java.lang.String name;
    public final boolean secure;
    public final boolean softwareOnly;
    public final boolean tunneling;
    public final boolean vendor;

    public MediaCodecInfo(java.lang.String str, java.lang.String str2, java.lang.String str3, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6) {
        this.name = (java.lang.String) com.google.android.exoplayer2.util.Assertions.checkNotNull(str);
        this.mimeType = str2;
        this.codecMimeType = str3;
        this.capabilities = codecCapabilities;
        this.hardwareAccelerated = z;
        this.softwareOnly = z2;
        this.vendor = z3;
        this.adaptive = z4;
        this.tunneling = z5;
        this.secure = z6;
        this.isVideo = com.google.android.exoplayer2.util.MimeTypes.isVideo(str2);
    }

    public static int adjustMaxInputChannelCount(java.lang.String str, java.lang.String str2, int i) {
        if (i > 1 || ((com.google.android.exoplayer2.util.Util.SDK_INT >= 26 && i > 0) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_MPEG.equals(str2) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_AMR_NB.equals(str2) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_AMR_WB.equals(str2) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_AAC.equals(str2) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_VORBIS.equals(str2) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_OPUS.equals(str2) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW.equals(str2) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_FLAC.equals(str2) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_ALAW.equals(str2) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_MLAW.equals(str2) || com.google.android.exoplayer2.util.MimeTypes.AUDIO_MSGSM.equals(str2))) {
            return i;
        }
        int i2 = com.google.android.exoplayer2.util.MimeTypes.AUDIO_AC3.equals(str2) ? 6 : com.google.android.exoplayer2.util.MimeTypes.AUDIO_E_AC3.equals(str2) ? 16 : 30;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str).length() + 59);
        sb.append("AssumedMaxChannelAdjustment: ");
        sb.append(str);
        sb.append(", [");
        sb.append(i);
        sb.append(" to ");
        sb.append(i2);
        sb.append("]");
        com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
        return i2;
    }

    public static android.graphics.Point alignVideoSizeV21(android.media.MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        return new android.graphics.Point(com.google.android.exoplayer2.util.Util.ceilDivide(i, widthAlignment) * widthAlignment, com.google.android.exoplayer2.util.Util.ceilDivide(i2, heightAlignment) * heightAlignment);
    }

    public static boolean areSizeAndRateSupportedV21(android.media.MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d2) {
        android.graphics.Point pointAlignVideoSizeV21 = alignVideoSizeV21(videoCapabilities, i, i2);
        int i3 = pointAlignVideoSizeV21.x;
        int i4 = pointAlignVideoSizeV21.y;
        return (d2 == -1.0d || d2 < 1.0d) ? videoCapabilities.isSizeSupported(i3, i4) : videoCapabilities.areSizeAndRateSupported(i3, i4, java.lang.Math.floor(d2));
    }

    public static android.media.MediaCodecInfo.CodecProfileLevel[] estimateLegacyVp9ProfileLevels(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        android.media.MediaCodecInfo.VideoCapabilities videoCapabilities;
        int iIntValue = (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) ? 0 : ((java.lang.Integer) videoCapabilities.getBitrateRange().getUpper()).intValue();
        int i = iIntValue >= 180000000 ? 1024 : iIntValue >= 120000000 ? 512 : iIntValue >= 60000000 ? 256 : iIntValue >= 30000000 ? 128 : iIntValue >= 18000000 ? 64 : iIntValue >= 12000000 ? 32 : iIntValue >= 7200000 ? 16 : iIntValue >= 3600000 ? 8 : iIntValue >= 1800000 ? 4 : iIntValue >= 800000 ? 2 : 1;
        android.media.MediaCodecInfo.CodecProfileLevel codecProfileLevel = new android.media.MediaCodecInfo.CodecProfileLevel();
        codecProfileLevel.profile = 1;
        codecProfileLevel.level = i;
        return new android.media.MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
    }

    public static int getMaxSupportedInstancesV23(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.getMaxSupportedInstances();
    }

    public static boolean isAdaptive(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 19 && isAdaptiveV19(codecCapabilities);
    }

    public static boolean isAdaptiveV19(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("adaptive-playback");
    }

    public static boolean isSecure(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 21 && isSecureV21(codecCapabilities);
    }

    public static boolean isSecureV21(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("secure-playback");
    }

    public static boolean isTunneling(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 21 && isTunnelingV21(codecCapabilities);
    }

    public static boolean isTunnelingV21(android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
        return codecCapabilities.isFeatureSupported("tunneled-playback");
    }

    private void logAssumedSupport(java.lang.String str) {
        java.lang.String str2 = this.name;
        java.lang.String str3 = this.mimeType;
        java.lang.String str4 = com.google.android.exoplayer2.util.Util.DEVICE_DEBUG_INFO;
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(str4, e.a.c.a.a.m(str3, e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 25)))), "AssumedSupport [", str, "] [", str2);
        e.a.c.a.a.B(sbL, ", ", str3, "] [", str4);
        sbL.append("]");
        com.google.android.exoplayer2.util.Log.d(TAG, sbL.toString());
    }

    private void logNoSupport(java.lang.String str) {
        java.lang.String str2 = this.name;
        java.lang.String str3 = this.mimeType;
        java.lang.String str4 = com.google.android.exoplayer2.util.Util.DEVICE_DEBUG_INFO;
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(str4, e.a.c.a.a.m(str3, e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 20)))), "NoSupport [", str, "] [", str2);
        e.a.c.a.a.B(sbL, ", ", str3, "] [", str4);
        sbL.append("]");
        com.google.android.exoplayer2.util.Log.d(TAG, sbL.toString());
    }

    public static boolean needsAdaptationFlushWorkaround(java.lang.String str) {
        return com.google.android.exoplayer2.util.MimeTypes.AUDIO_OPUS.equals(str);
    }

    public static boolean needsAdaptationReconfigureWorkaround(java.lang.String str) {
        return com.google.android.exoplayer2.util.Util.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str);
    }

    public static boolean needsDisableAdaptationWorkaround(java.lang.String str) {
        return com.google.android.exoplayer2.util.Util.SDK_INT <= 22 && ("ODROID-XU3".equals(com.google.android.exoplayer2.util.Util.MODEL) || "Nexus 10".equals(com.google.android.exoplayer2.util.Util.MODEL)) && ("OMX.Exynos.AVC.Decoder".equals(str) || "OMX.Exynos.AVC.Decoder.secure".equals(str));
    }

    public static final boolean needsRotatedVerticalResolutionWorkaround(java.lang.String str) {
        return ("OMX.MTK.VIDEO.DECODER.HEVC".equals(str) && "mcv5a".equals(com.google.android.exoplayer2.util.Util.DEVICE)) ? false : true;
    }

    public static com.google.android.exoplayer2.mediacodec.MediaCodecInfo newInstance(java.lang.String str, java.lang.String str2, java.lang.String str3, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        return new com.google.android.exoplayer2.mediacodec.MediaCodecInfo(str, str2, str3, codecCapabilities, z, z2, z3, (z4 || codecCapabilities == null || !isAdaptive(codecCapabilities) || needsDisableAdaptationWorkaround(str)) ? false : true, codecCapabilities != null && isTunneling(codecCapabilities), z5 || (codecCapabilities != null && isSecure(codecCapabilities)));
    }

    public android.graphics.Point alignVideoSizeV21(int i, int i2) {
        android.media.MediaCodecInfo.VideoCapabilities videoCapabilities;
        android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
            return null;
        }
        return alignVideoSizeV21(videoCapabilities, i, i2);
    }

    public com.google.android.exoplayer2.decoder.DecoderReuseEvaluation canReuseCodec(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format format2) {
        int i = !com.google.android.exoplayer2.util.Util.areEqual(format.sampleMimeType, format2.sampleMimeType) ? 8 : 0;
        if (this.isVideo) {
            if (format.rotationDegrees != format2.rotationDegrees) {
                i |= 1024;
            }
            if (!this.adaptive && (format.width != format2.width || format.height != format2.height)) {
                i |= 512;
            }
            if (!com.google.android.exoplayer2.util.Util.areEqual(format.colorInfo, format2.colorInfo)) {
                i |= 2048;
            }
            if (needsAdaptationReconfigureWorkaround(this.name) && !format.initializationDataEquals(format2)) {
                i |= 2;
            }
            if (i == 0) {
                return new com.google.android.exoplayer2.decoder.DecoderReuseEvaluation(this.name, format, format2, format.initializationDataEquals(format2) ? 3 : 2, 0);
            }
        } else {
            if (format.channelCount != format2.channelCount) {
                i |= 4096;
            }
            if (format.sampleRate != format2.sampleRate) {
                i |= 8192;
            }
            if (format.pcmEncoding != format2.pcmEncoding) {
                i |= 16384;
            }
            if (i == 0 && com.google.android.exoplayer2.util.MimeTypes.AUDIO_AAC.equals(this.mimeType)) {
                android.util.Pair<java.lang.Integer, java.lang.Integer> codecProfileAndLevel = com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getCodecProfileAndLevel(format);
                android.util.Pair<java.lang.Integer, java.lang.Integer> codecProfileAndLevel2 = com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getCodecProfileAndLevel(format2);
                if (codecProfileAndLevel != null && codecProfileAndLevel2 != null) {
                    int iIntValue = ((java.lang.Integer) codecProfileAndLevel.first).intValue();
                    int iIntValue2 = ((java.lang.Integer) codecProfileAndLevel2.first).intValue();
                    if (iIntValue == 42 && iIntValue2 == 42) {
                        return new com.google.android.exoplayer2.decoder.DecoderReuseEvaluation(this.name, format, format2, 3, 0);
                    }
                }
            }
            if (!format.initializationDataEquals(format2)) {
                i |= 32;
            }
            if (needsAdaptationFlushWorkaround(this.mimeType)) {
                i |= 2;
            }
            if (i == 0) {
                return new com.google.android.exoplayer2.decoder.DecoderReuseEvaluation(this.name, format, format2, 1, 0);
            }
        }
        return new com.google.android.exoplayer2.decoder.DecoderReuseEvaluation(this.name, format, format2, 0, i);
    }

    public int getMaxSupportedInstances() {
        android.media.MediaCodecInfo.CodecCapabilities codecCapabilities;
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 23 || (codecCapabilities = this.capabilities) == null) {
            return -1;
        }
        return getMaxSupportedInstancesV23(codecCapabilities);
    }

    public android.media.MediaCodecInfo.CodecProfileLevel[] getProfileLevels() {
        android.media.MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        return (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) ? new android.media.MediaCodecInfo.CodecProfileLevel[0] : codecProfileLevelArr;
    }

    public boolean isAudioChannelCountSupportedV21(int i) {
        java.lang.String strF;
        android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            strF = "channelCount.caps";
        } else {
            android.media.MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                strF = "channelCount.aCaps";
            } else {
                if (adjustMaxInputChannelCount(this.name, this.mimeType, audioCapabilities.getMaxInputChannelCount()) >= i) {
                    return true;
                }
                strF = e.a.c.a.a.F(33, "channelCount.support, ", i);
            }
        }
        logNoSupport(strF);
        return false;
    }

    public boolean isAudioSampleRateSupportedV21(int i) {
        java.lang.String strF;
        android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            strF = "sampleRate.caps";
        } else {
            android.media.MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                strF = "sampleRate.aCaps";
            } else {
                if (audioCapabilities.isSampleRateSupported(i)) {
                    return true;
                }
                strF = e.a.c.a.a.F(31, "sampleRate.support, ", i);
            }
        }
        logNoSupport(strF);
        return false;
    }

    public boolean isCodecSupported(com.google.android.exoplayer2.Format format) {
        java.lang.String mediaMimeType;
        java.lang.String str;
        java.lang.StringBuilder sb;
        java.lang.String str2;
        java.lang.String str3 = format.codecs;
        if (str3 == null || this.mimeType == null || (mediaMimeType = com.google.android.exoplayer2.util.MimeTypes.getMediaMimeType(str3)) == null) {
            return true;
        }
        if (this.mimeType.equals(mediaMimeType)) {
            android.util.Pair<java.lang.Integer, java.lang.Integer> codecProfileAndLevel = com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getCodecProfileAndLevel(format);
            if (codecProfileAndLevel == null) {
                return true;
            }
            int iIntValue = ((java.lang.Integer) codecProfileAndLevel.first).intValue();
            int iIntValue2 = ((java.lang.Integer) codecProfileAndLevel.second).intValue();
            if (!this.isVideo && iIntValue != 42) {
                return true;
            }
            android.media.MediaCodecInfo.CodecProfileLevel[] profileLevels = getProfileLevels();
            if (com.google.android.exoplayer2.util.Util.SDK_INT <= 23 && com.google.android.exoplayer2.util.MimeTypes.VIDEO_VP9.equals(this.mimeType) && profileLevels.length == 0) {
                profileLevels = estimateLegacyVp9ProfileLevels(this.capabilities);
            }
            for (android.media.MediaCodecInfo.CodecProfileLevel codecProfileLevel : profileLevels) {
                if (codecProfileLevel.profile == iIntValue && codecProfileLevel.level >= iIntValue2) {
                    return true;
                }
            }
            str = format.codecs;
            sb = new java.lang.StringBuilder(mediaMimeType.length() + java.lang.String.valueOf(str).length() + 22);
            str2 = "codec.profileLevel, ";
        } else {
            str = format.codecs;
            sb = new java.lang.StringBuilder(mediaMimeType.length() + java.lang.String.valueOf(str).length() + 13);
            str2 = "codec.mime ";
        }
        sb.append(str2);
        sb.append(str);
        sb.append(", ");
        sb.append(mediaMimeType);
        logNoSupport(sb.toString());
        return false;
    }

    public boolean isFormatSupported(com.google.android.exoplayer2.Format format) {
        int i;
        if (!isCodecSupported(format)) {
            return false;
        }
        if (!this.isVideo) {
            if (com.google.android.exoplayer2.util.Util.SDK_INT >= 21) {
                int i2 = format.sampleRate;
                if (i2 != -1 && !isAudioSampleRateSupportedV21(i2)) {
                    return false;
                }
                int i3 = format.channelCount;
                if (i3 != -1 && !isAudioChannelCountSupportedV21(i3)) {
                    return false;
                }
            }
            return true;
        }
        int i4 = format.width;
        if (i4 <= 0 || (i = format.height) <= 0) {
            return true;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 21) {
            return isVideoSizeAndRateSupportedV21(i4, i, format.frameRate);
        }
        boolean z = i4 * i <= com.google.android.exoplayer2.mediacodec.MediaCodecUtil.maxH264DecodableFrameSize();
        if (!z) {
            int i5 = format.width;
            int i6 = format.height;
            java.lang.StringBuilder sb = new java.lang.StringBuilder(40);
            sb.append("legacyFrameSize, ");
            sb.append(i5);
            sb.append("x");
            sb.append(i6);
            logNoSupport(sb.toString());
        }
        return z;
    }

    public boolean isHdr10PlusOutOfBandMetadataSupported() {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 29 && com.google.android.exoplayer2.util.MimeTypes.VIDEO_VP9.equals(this.mimeType)) {
            for (android.media.MediaCodecInfo.CodecProfileLevel codecProfileLevel : getProfileLevels()) {
                if (codecProfileLevel.profile == 16384) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean isSeamlessAdaptationSupported(com.google.android.exoplayer2.Format format) {
        if (this.isVideo) {
            return this.adaptive;
        }
        android.util.Pair<java.lang.Integer, java.lang.Integer> codecProfileAndLevel = com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getCodecProfileAndLevel(format);
        return codecProfileAndLevel != null && ((java.lang.Integer) codecProfileAndLevel.first).intValue() == 42;
    }

    @java.lang.Deprecated
    public boolean isSeamlessAdaptationSupported(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.Format format2, boolean z) {
        if (!z && format.colorInfo != null && format2.colorInfo == null) {
            format2 = format2.buildUpon().setColorInfo(format.colorInfo).build();
        }
        int i = canReuseCodec(format, format2).result;
        return i == 2 || i == 3;
    }

    public boolean isVideoSizeAndRateSupportedV21(int i, int i2, double d2) {
        java.lang.String string;
        android.media.MediaCodecInfo.CodecCapabilities codecCapabilities = this.capabilities;
        if (codecCapabilities == null) {
            string = "sizeAndRate.caps";
        } else {
            android.media.MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
            if (videoCapabilities == null) {
                string = "sizeAndRate.vCaps";
            } else {
                if (areSizeAndRateSupportedV21(videoCapabilities, i, i2, d2)) {
                    return true;
                }
                if (i < i2 && needsRotatedVerticalResolutionWorkaround(this.name) && areSizeAndRateSupportedV21(videoCapabilities, i2, i, d2)) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder(69);
                    sb.append("sizeAndRate.rotated, ");
                    sb.append(i);
                    sb.append("x");
                    sb.append(i2);
                    sb.append("x");
                    sb.append(d2);
                    logAssumedSupport(sb.toString());
                    return true;
                }
                java.lang.StringBuilder sb2 = new java.lang.StringBuilder(69);
                sb2.append("sizeAndRate.support, ");
                sb2.append(i);
                sb2.append("x");
                sb2.append(i2);
                sb2.append("x");
                sb2.append(d2);
                string = sb2.toString();
            }
        }
        logNoSupport(string);
        return false;
    }

    public java.lang.String toString() {
        return this.name;
    }
}
