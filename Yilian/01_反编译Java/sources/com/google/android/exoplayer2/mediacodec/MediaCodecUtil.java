package com.google.android.exoplayer2.mediacodec;

@android.annotation.SuppressLint({"InlinedApi"})
/* loaded from: classes.dex */
public final class MediaCodecUtil {
    public static final java.lang.String CODEC_ID_AV01 = "av01";
    public static final java.lang.String CODEC_ID_AVC1 = "avc1";
    public static final java.lang.String CODEC_ID_AVC2 = "avc2";
    public static final java.lang.String CODEC_ID_HEV1 = "hev1";
    public static final java.lang.String CODEC_ID_HVC1 = "hvc1";
    public static final java.lang.String CODEC_ID_MP4A = "mp4a";
    public static final java.lang.String CODEC_ID_VP09 = "vp09";
    public static final java.lang.String TAG = "MediaCodecUtil";
    public static final java.util.regex.Pattern PROFILE_PATTERN = java.util.regex.Pattern.compile("^\\D?(\\d+)$");
    public static final java.util.HashMap<com.google.android.exoplayer2.mediacodec.MediaCodecUtil.CodecKey, java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo>> decoderInfosCache = new java.util.HashMap<>();
    public static int maxH264DecodableFrameSize = -1;

    public static final class CodecKey {
        public final java.lang.String mimeType;
        public final boolean secure;
        public final boolean tunneling;

        public CodecKey(java.lang.String str, boolean z, boolean z2) {
            this.mimeType = str;
            this.secure = z;
            this.tunneling = z2;
        }

        public boolean equals(java.lang.Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || obj.getClass() != com.google.android.exoplayer2.mediacodec.MediaCodecUtil.CodecKey.class) {
                return false;
            }
            com.google.android.exoplayer2.mediacodec.MediaCodecUtil.CodecKey codecKey = (com.google.android.exoplayer2.mediacodec.MediaCodecUtil.CodecKey) obj;
            return android.text.TextUtils.equals(this.mimeType, codecKey.mimeType) && this.secure == codecKey.secure && this.tunneling == codecKey.tunneling;
        }

        public int hashCode() {
            return ((((this.mimeType.hashCode() + 31) * 31) + (this.secure ? 1231 : 1237)) * 31) + (this.tunneling ? 1231 : 1237);
        }
    }

    public static class DecoderQueryException extends java.lang.Exception {
        public DecoderQueryException(java.lang.Throwable th) {
            super("Failed to query underlying media codecs", th);
        }
    }

    public interface MediaCodecListCompat {
        int getCodecCount();

        android.media.MediaCodecInfo getCodecInfoAt(int i);

        boolean isFeatureRequired(java.lang.String str, java.lang.String str2, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean isFeatureSupported(java.lang.String str, java.lang.String str2, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities);

        boolean secureDecodersExplicit();
    }

    public static final class MediaCodecListCompatV16 implements com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat {
        public MediaCodecListCompatV16() {
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            return android.media.MediaCodecList.getCodecCount();
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public android.media.MediaCodecInfo getCodecInfoAt(int i) {
            return android.media.MediaCodecList.getCodecInfoAt(i);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isFeatureRequired(java.lang.String str, java.lang.String str2, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return false;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isFeatureSupported(java.lang.String str, java.lang.String str2, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return "secure-playback".equals(str) && com.google.android.exoplayer2.util.MimeTypes.VIDEO_H264.equals(str2);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return false;
        }
    }

    public static final class MediaCodecListCompatV21 implements com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat {
        public final int codecKind;
        public android.media.MediaCodecInfo[] mediaCodecInfos;

        public MediaCodecListCompatV21(boolean z, boolean z2) {
            this.codecKind = (z || z2) ? 1 : 0;
        }

        @org.checkerframework.checker.nullness.qual.EnsuresNonNull({"mediaCodecInfos"})
        private void ensureMediaCodecInfosInitialized() {
            if (this.mediaCodecInfos == null) {
                this.mediaCodecInfos = new android.media.MediaCodecList(this.codecKind).getCodecInfos();
            }
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public int getCodecCount() {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos.length;
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public android.media.MediaCodecInfo getCodecInfoAt(int i) {
            ensureMediaCodecInfosInitialized();
            return this.mediaCodecInfos[i];
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isFeatureRequired(java.lang.String str, java.lang.String str2, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureRequired(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean isFeatureSupported(java.lang.String str, java.lang.String str2, android.media.MediaCodecInfo.CodecCapabilities codecCapabilities) {
            return codecCapabilities.isFeatureSupported(str);
        }

        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat
        public boolean secureDecodersExplicit() {
            return true;
        }
    }

    public interface ScoreProvider<T> {
        int getScore(T t);
    }

    public static /* synthetic */ int a(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo) {
        java.lang.String str = mediaCodecInfo.name;
        if (str.startsWith("OMX.google") || str.startsWith("c2.android")) {
            return 1;
        }
        return (com.google.android.exoplayer2.util.Util.SDK_INT >= 26 || !str.equals("OMX.MTK.AUDIO.DECODER.RAW")) ? 0 : -1;
    }

    public static void applyWorkarounds(java.lang.String str, java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> list) {
        if (com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW.equals(str)) {
            if (com.google.android.exoplayer2.util.Util.SDK_INT < 26 && com.google.android.exoplayer2.util.Util.DEVICE.equals("R9") && list.size() == 1 && list.get(0).name.equals("OMX.MTK.AUDIO.DECODER.RAW")) {
                list.add(com.google.android.exoplayer2.mediacodec.MediaCodecInfo.newInstance("OMX.google.raw.decoder", com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW, com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW, null, false, true, false, false, false));
            }
            sortByScore(list, new com.google.android.exoplayer2.mediacodec.MediaCodecUtil.ScoreProvider() { // from class: e.c.a.a.j2.g
                @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.ScoreProvider
                public final int getScore(java.lang.Object obj) {
                    return com.google.android.exoplayer2.mediacodec.MediaCodecUtil.a((com.google.android.exoplayer2.mediacodec.MediaCodecInfo) obj);
                }
            });
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 21 && list.size() > 1) {
            java.lang.String str2 = list.get(0).name;
            if ("OMX.SEC.mp3.dec".equals(str2) || "OMX.SEC.MP3.Decoder".equals(str2) || "OMX.brcm.audio.mp3.decoder".equals(str2)) {
                sortByScore(list, new com.google.android.exoplayer2.mediacodec.MediaCodecUtil.ScoreProvider() { // from class: e.c.a.a.j2.e
                    @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.ScoreProvider
                    public final int getScore(java.lang.Object obj) {
                        return com.google.android.exoplayer2.mediacodec.MediaCodecUtil.b((com.google.android.exoplayer2.mediacodec.MediaCodecInfo) obj);
                    }
                });
            }
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 32 || list.size() <= 1 || !"OMX.qti.audio.decoder.flac".equals(list.get(0).name)) {
            return;
        }
        list.add(list.remove(0));
    }

    public static int av1LevelNumberToConst(int i) {
        switch (i) {
            case 0:
                return 1;
            case 1:
                return 2;
            case 2:
                return 4;
            case 3:
                return 8;
            case 4:
                return 16;
            case 5:
                return 32;
            case 6:
                return 64;
            case 7:
                return 128;
            case 8:
                return 256;
            case 9:
                return 512;
            case 10:
                return 1024;
            case 11:
                return 2048;
            case 12:
                return 4096;
            case 13:
                return 8192;
            case 14:
                return 16384;
            case 15:
                return 32768;
            case 16:
                return 65536;
            case 17:
                return 131072;
            case 18:
                return net.easyconn.ecsdk.ECTypes.ECSupportFunction.EC_SUPPORT_FUNCTION_WEB_CAR_DVR;
            case 19:
                return 524288;
            case 20:
                return com.google.android.exoplayer2.source.ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
            case 21:
                return 2097152;
            case 22:
                return 4194304;
            case 23:
                return 8388608;
            default:
                return -1;
        }
    }

    public static int avcLevelNumberToConst(int i) {
        switch (i) {
            case 10:
                return 1;
            case 11:
                return 4;
            case 12:
                return 8;
            case 13:
                return 16;
            default:
                switch (i) {
                    case 20:
                        return 32;
                    case 21:
                        return 64;
                    case 22:
                        return 128;
                    default:
                        switch (i) {
                            case 30:
                                return 256;
                            case 31:
                                return 512;
                            case 32:
                                return 1024;
                            default:
                                switch (i) {
                                    case 40:
                                        return 2048;
                                    case 41:
                                        return 4096;
                                    case 42:
                                        return 8192;
                                    default:
                                        switch (i) {
                                            case 50:
                                                return 16384;
                                            case 51:
                                                return 32768;
                                            case 52:
                                                return 65536;
                                            default:
                                                return -1;
                                        }
                                }
                        }
                }
        }
    }

    public static int avcLevelToMaxFrameSize(int i) {
        if (i == 1 || i == 2) {
            return 25344;
        }
        switch (i) {
            case 8:
            case 16:
            case 32:
                return 101376;
            case 64:
                return 202752;
            case 128:
            case 256:
                return 414720;
            case 512:
                return 921600;
            case 1024:
                return 1310720;
            case 2048:
            case 4096:
                return 2097152;
            case 8192:
                return 2228224;
            case 16384:
                return 5652480;
            case 32768:
            case 65536:
                return 9437184;
            case 131072:
            case net.easyconn.ecsdk.ECTypes.ECSupportFunction.EC_SUPPORT_FUNCTION_WEB_CAR_DVR /* 262144 */:
            case 524288:
                return 35651584;
            default:
                return -1;
        }
    }

    public static int avcProfileNumberToConst(int i) {
        if (i == 66) {
            return 1;
        }
        if (i == 77) {
            return 2;
        }
        if (i == 88) {
            return 4;
        }
        if (i == 100) {
            return 8;
        }
        if (i == 110) {
            return 16;
        }
        if (i != 122) {
            return i != 244 ? -1 : 64;
        }
        return 32;
    }

    public static /* synthetic */ int b(com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.name.startsWith("OMX.google") ? 1 : 0;
    }

    public static /* synthetic */ int c(com.google.android.exoplayer2.Format format, com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo) {
        try {
            return mediaCodecInfo.isFormatSupported(format) ? 1 : 0;
        } catch (com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException unused) {
            return -1;
        }
    }

    public static synchronized void clearDecoderInfoCache() {
        decoderInfosCache.clear();
    }

    public static /* synthetic */ int d(com.google.android.exoplayer2.mediacodec.MediaCodecUtil.ScoreProvider scoreProvider, java.lang.Object obj, java.lang.Object obj2) {
        return scoreProvider.getScore(obj2) - scoreProvider.getScore(obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0011, code lost:
    
        switch(r2) {
            case 1567: goto L18;
            case 1568: goto L15;
            case 1569: goto L12;
            case 1570: goto L9;
            default: goto L48;
        };
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.Integer dolbyVisionStringToLevel(java.lang.String r7) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.dolbyVisionStringToLevel(java.lang.String):java.lang.Integer");
    }

    public static java.lang.Integer dolbyVisionStringToProfile(java.lang.String str) {
        int i;
        if (str == null) {
            return null;
        }
        switch (str) {
            case "00":
                return 1;
            case "01":
                return 2;
            case "02":
                return 4;
            case "03":
                return 8;
            case "04":
                i = 16;
                break;
            case "05":
                i = 32;
                break;
            case "06":
                i = 64;
                break;
            case "07":
                i = 128;
                break;
            case "08":
                i = 256;
                break;
            case "09":
                i = 512;
                break;
            default:
                return null;
        }
        return java.lang.Integer.valueOf(i);
    }

    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getAacCodecProfileAndLevel(java.lang.String str, java.lang.String[] strArr) {
        int iMp4aAudioObjectTypeToProfile;
        if (strArr.length != 3) {
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(strValueOf) : new java.lang.String("Ignoring malformed MP4A codec string: "));
            return null;
        }
        try {
            if (com.google.android.exoplayer2.util.MimeTypes.AUDIO_AAC.equals(com.google.android.exoplayer2.util.MimeTypes.getMimeTypeFromMp4ObjectType(java.lang.Integer.parseInt(strArr[1], 16))) && (iMp4aAudioObjectTypeToProfile = mp4aAudioObjectTypeToProfile(java.lang.Integer.parseInt(strArr[2]))) != -1) {
                return new android.util.Pair<>(java.lang.Integer.valueOf(iMp4aAudioObjectTypeToProfile), 0);
            }
        } catch (java.lang.NumberFormatException unused) {
            java.lang.String strValueOf2 = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf2.length() != 0 ? "Ignoring malformed MP4A codec string: ".concat(strValueOf2) : new java.lang.String("Ignoring malformed MP4A codec string: "));
        }
        return null;
    }

    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getAv1ProfileAndLevel(java.lang.String str, java.lang.String[] strArr, com.google.android.exoplayer2.video.ColorInfo colorInfo) throws java.lang.NumberFormatException {
        java.lang.StringBuilder sb;
        int i;
        java.lang.String strF;
        if (strArr.length < 4) {
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Ignoring malformed AV1 codec string: ".concat(strValueOf) : new java.lang.String("Ignoring malformed AV1 codec string: "));
            return null;
        }
        try {
            int i2 = java.lang.Integer.parseInt(strArr[1]);
            int i3 = java.lang.Integer.parseInt(strArr[2].substring(0, 2));
            int i4 = java.lang.Integer.parseInt(strArr[3]);
            if (i2 != 0) {
                sb = new java.lang.StringBuilder(32);
                sb.append("Unknown AV1 profile: ");
                sb.append(i2);
            } else {
                if (i4 != 8 && i4 != 10) {
                    strF = e.a.c.a.a.F(34, "Unknown AV1 bit depth: ", i4);
                    com.google.android.exoplayer2.util.Log.w(TAG, strF);
                    return null;
                }
                int i5 = i4 != 8 ? (colorInfo == null || !(colorInfo.hdrStaticInfo != null || (i = colorInfo.colorTransfer) == 7 || i == 6)) ? 2 : 4096 : 1;
                int iAv1LevelNumberToConst = av1LevelNumberToConst(i3);
                if (iAv1LevelNumberToConst != -1) {
                    return new android.util.Pair<>(java.lang.Integer.valueOf(i5), java.lang.Integer.valueOf(iAv1LevelNumberToConst));
                }
                sb = new java.lang.StringBuilder(30);
                sb.append("Unknown AV1 level: ");
                sb.append(i3);
            }
            strF = sb.toString();
            com.google.android.exoplayer2.util.Log.w(TAG, strF);
            return null;
        } catch (java.lang.NumberFormatException unused) {
            java.lang.String strValueOf2 = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf2.length() != 0 ? "Ignoring malformed AV1 codec string: ".concat(strValueOf2) : new java.lang.String("Ignoring malformed AV1 codec string: "));
            return null;
        }
    }

    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getAvcProfileAndLevel(java.lang.String str, java.lang.String[] strArr) throws java.lang.NumberFormatException {
        int i;
        int i2;
        java.lang.String strF;
        if (strArr.length < 2) {
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(strValueOf) : new java.lang.String("Ignoring malformed AVC codec string: "));
            return null;
        }
        try {
            if (strArr[1].length() == 6) {
                i2 = java.lang.Integer.parseInt(strArr[1].substring(0, 2), 16);
                i = java.lang.Integer.parseInt(strArr[1].substring(4), 16);
            } else {
                if (strArr.length < 3) {
                    java.lang.String strValueOf2 = java.lang.String.valueOf(str);
                    com.google.android.exoplayer2.util.Log.w(TAG, strValueOf2.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(strValueOf2) : new java.lang.String("Ignoring malformed AVC codec string: "));
                    return null;
                }
                int i3 = java.lang.Integer.parseInt(strArr[1]);
                i = java.lang.Integer.parseInt(strArr[2]);
                i2 = i3;
            }
            int iAvcProfileNumberToConst = avcProfileNumberToConst(i2);
            if (iAvcProfileNumberToConst == -1) {
                strF = e.a.c.a.a.F(32, "Unknown AVC profile: ", i2);
            } else {
                int iAvcLevelNumberToConst = avcLevelNumberToConst(i);
                if (iAvcLevelNumberToConst != -1) {
                    return new android.util.Pair<>(java.lang.Integer.valueOf(iAvcProfileNumberToConst), java.lang.Integer.valueOf(iAvcLevelNumberToConst));
                }
                strF = e.a.c.a.a.F(30, "Unknown AVC level: ", i);
            }
            com.google.android.exoplayer2.util.Log.w(TAG, strF);
            return null;
        } catch (java.lang.NumberFormatException unused) {
            java.lang.String strValueOf3 = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf3.length() != 0 ? "Ignoring malformed AVC codec string: ".concat(strValueOf3) : new java.lang.String("Ignoring malformed AVC codec string: "));
            return null;
        }
    }

    public static java.lang.String getCodecMimeType(android.media.MediaCodecInfo mediaCodecInfo, java.lang.String str, java.lang.String str2) {
        for (java.lang.String str3 : mediaCodecInfo.getSupportedTypes()) {
            if (str3.equalsIgnoreCase(str2)) {
                return str3;
            }
        }
        if (str2.equals(com.google.android.exoplayer2.util.MimeTypes.VIDEO_DOLBY_VISION)) {
            if ("OMX.MS.HEVCDV.Decoder".equals(str)) {
                return "video/hevcdv";
            }
            if ("OMX.RTK.video.decoder".equals(str) || "OMX.realtek.video.decoder.tunneled".equals(str)) {
                return "video/dv_hevc";
            }
            return null;
        }
        if (str2.equals(com.google.android.exoplayer2.util.MimeTypes.AUDIO_ALAC) && "OMX.lge.alac.decoder".equals(str)) {
            return "audio/x-lg-alac";
        }
        if (str2.equals(com.google.android.exoplayer2.util.MimeTypes.AUDIO_FLAC) && "OMX.lge.flac.decoder".equals(str)) {
            return "audio/x-lg-flac";
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getCodecProfileAndLevel(com.google.android.exoplayer2.Format r6) {
        /*
            java.lang.String r0 = r6.codecs
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            java.lang.String r2 = "\\."
            java.lang.String[] r0 = r0.split(r2)
            java.lang.String r2 = r6.sampleMimeType
            java.lang.String r3 = "video/dolby-vision"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L1d
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = getDolbyVisionProfileAndLevel(r6, r0)
            return r6
        L1d:
            r2 = 0
            r3 = r0[r2]
            r4 = -1
            int r5 = r3.hashCode()
            switch(r5) {
                case 3004662: goto L64;
                case 3006243: goto L5b;
                case 3006244: goto L51;
                case 3199032: goto L47;
                case 3214780: goto L3d;
                case 3356560: goto L33;
                case 3624515: goto L29;
                default: goto L28;
            }
        L28:
            goto L6e
        L29:
            java.lang.String r2 = "vp09"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L6e
            r2 = 2
            goto L6f
        L33:
            java.lang.String r2 = "mp4a"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L6e
            r2 = 6
            goto L6f
        L3d:
            java.lang.String r2 = "hvc1"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L6e
            r2 = 4
            goto L6f
        L47:
            java.lang.String r2 = "hev1"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L6e
            r2 = 3
            goto L6f
        L51:
            java.lang.String r2 = "avc2"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L6e
            r2 = 1
            goto L6f
        L5b:
            java.lang.String r5 = "avc1"
            boolean r3 = r3.equals(r5)
            if (r3 == 0) goto L6e
            goto L6f
        L64:
            java.lang.String r2 = "av01"
            boolean r2 = r3.equals(r2)
            if (r2 == 0) goto L6e
            r2 = 5
            goto L6f
        L6e:
            r2 = -1
        L6f:
            switch(r2) {
                case 0: goto L91;
                case 1: goto L91;
                case 2: goto L8a;
                case 3: goto L83;
                case 4: goto L83;
                case 5: goto L7a;
                case 6: goto L73;
                default: goto L72;
            }
        L72:
            return r1
        L73:
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = getAacCodecProfileAndLevel(r6, r0)
            return r6
        L7a:
            java.lang.String r1 = r6.codecs
            com.google.android.exoplayer2.video.ColorInfo r6 = r6.colorInfo
            android.util.Pair r6 = getAv1ProfileAndLevel(r1, r0, r6)
            return r6
        L83:
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = getHevcProfileAndLevel(r6, r0)
            return r6
        L8a:
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = getVp9ProfileAndLevel(r6, r0)
            return r6
        L91:
            java.lang.String r6 = r6.codecs
            android.util.Pair r6 = getAvcProfileAndLevel(r6, r0)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getCodecProfileAndLevel(com.google.android.exoplayer2.Format):android.util.Pair");
    }

    public static com.google.android.exoplayer2.mediacodec.MediaCodecInfo getDecoderInfo(java.lang.String str, boolean z, boolean z2) {
        java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> decoderInfos = getDecoderInfos(str, z, z2);
        if (decoderInfos.isEmpty()) {
            return null;
        }
        return decoderInfos.get(0);
    }

    public static synchronized java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> getDecoderInfos(java.lang.String str, boolean z, boolean z2) {
        com.google.android.exoplayer2.mediacodec.MediaCodecUtil.CodecKey codecKey = new com.google.android.exoplayer2.mediacodec.MediaCodecUtil.CodecKey(str, z, z2);
        java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> list = decoderInfosCache.get(codecKey);
        if (list != null) {
            return list;
        }
        java.util.ArrayList<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> decoderInfosInternal = getDecoderInfosInternal(codecKey, com.google.android.exoplayer2.util.Util.SDK_INT >= 21 ? new com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompatV21(z, z2) : new com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompatV16());
        if (z && decoderInfosInternal.isEmpty() && 21 <= com.google.android.exoplayer2.util.Util.SDK_INT && com.google.android.exoplayer2.util.Util.SDK_INT <= 23) {
            decoderInfosInternal = getDecoderInfosInternal(codecKey, new com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompatV16());
            if (!decoderInfosInternal.isEmpty()) {
                java.lang.String str2 = decoderInfosInternal.get(0).name;
                java.lang.StringBuilder sb = new java.lang.StringBuilder(java.lang.String.valueOf(str).length() + 63 + java.lang.String.valueOf(str2).length());
                sb.append("MediaCodecList API didn't list secure decoder for: ");
                sb.append(str);
                sb.append(". Assuming: ");
                sb.append(str2);
                com.google.android.exoplayer2.util.Log.w(TAG, sb.toString());
            }
        }
        applyWorkarounds(str, decoderInfosInternal);
        java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> listUnmodifiableList = java.util.Collections.unmodifiableList(decoderInfosInternal);
        decoderInfosCache.put(codecKey, listUnmodifiableList);
        return listUnmodifiableList;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.ArrayList<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> getDecoderInfosInternal(com.google.android.exoplayer2.mediacodec.MediaCodecUtil.CodecKey r24, com.google.android.exoplayer2.mediacodec.MediaCodecUtil.MediaCodecListCompat r25) throws java.lang.Exception {
        /*
            Method dump skipped, instructions count: 346
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getDecoderInfosInternal(com.google.android.exoplayer2.mediacodec.MediaCodecUtil$CodecKey, com.google.android.exoplayer2.mediacodec.MediaCodecUtil$MediaCodecListCompat):java.util.ArrayList");
    }

    public static java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> getDecoderInfosSortedByFormatSupport(java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> list, final com.google.android.exoplayer2.Format format) {
        java.util.ArrayList arrayList = new java.util.ArrayList(list);
        sortByScore(arrayList, new com.google.android.exoplayer2.mediacodec.MediaCodecUtil.ScoreProvider() { // from class: e.c.a.a.j2.f
            @Override // com.google.android.exoplayer2.mediacodec.MediaCodecUtil.ScoreProvider
            public final int getScore(java.lang.Object obj) {
                return com.google.android.exoplayer2.mediacodec.MediaCodecUtil.c(format, (com.google.android.exoplayer2.mediacodec.MediaCodecInfo) obj);
            }
        });
        return arrayList;
    }

    public static com.google.android.exoplayer2.mediacodec.MediaCodecInfo getDecryptOnlyDecoderInfo() {
        return getDecoderInfo(com.google.android.exoplayer2.util.MimeTypes.AUDIO_RAW, false, false);
    }

    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getDolbyVisionProfileAndLevel(java.lang.String str, java.lang.String[] strArr) {
        if (strArr.length < 3) {
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Ignoring malformed Dolby Vision codec string: ".concat(strValueOf) : new java.lang.String("Ignoring malformed Dolby Vision codec string: "));
            return null;
        }
        java.util.regex.Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
        if (!matcher.matches()) {
            java.lang.String strValueOf2 = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf2.length() != 0 ? "Ignoring malformed Dolby Vision codec string: ".concat(strValueOf2) : new java.lang.String("Ignoring malformed Dolby Vision codec string: "));
            return null;
        }
        java.lang.String strGroup = matcher.group(1);
        java.lang.Integer numDolbyVisionStringToProfile = dolbyVisionStringToProfile(strGroup);
        if (numDolbyVisionStringToProfile == null) {
            java.lang.String strValueOf3 = java.lang.String.valueOf(strGroup);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf3.length() != 0 ? "Unknown Dolby Vision profile string: ".concat(strValueOf3) : new java.lang.String("Unknown Dolby Vision profile string: "));
            return null;
        }
        java.lang.String str2 = strArr[2];
        java.lang.Integer numDolbyVisionStringToLevel = dolbyVisionStringToLevel(str2);
        if (numDolbyVisionStringToLevel != null) {
            return new android.util.Pair<>(numDolbyVisionStringToProfile, numDolbyVisionStringToLevel);
        }
        java.lang.String strValueOf4 = java.lang.String.valueOf(str2);
        com.google.android.exoplayer2.util.Log.w(TAG, strValueOf4.length() != 0 ? "Unknown Dolby Vision level string: ".concat(strValueOf4) : new java.lang.String("Unknown Dolby Vision level string: "));
        return null;
    }

    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getHevcProfileAndLevel(java.lang.String str, java.lang.String[] strArr) {
        if (strArr.length < 4) {
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(strValueOf) : new java.lang.String("Ignoring malformed HEVC codec string: "));
            return null;
        }
        int i = 1;
        java.util.regex.Matcher matcher = PROFILE_PATTERN.matcher(strArr[1]);
        if (!matcher.matches()) {
            java.lang.String strValueOf2 = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf2.length() != 0 ? "Ignoring malformed HEVC codec string: ".concat(strValueOf2) : new java.lang.String("Ignoring malformed HEVC codec string: "));
            return null;
        }
        java.lang.String strGroup = matcher.group(1);
        if (!"1".equals(strGroup)) {
            if (!"2".equals(strGroup)) {
                java.lang.String strValueOf3 = java.lang.String.valueOf(strGroup);
                com.google.android.exoplayer2.util.Log.w(TAG, strValueOf3.length() != 0 ? "Unknown HEVC profile string: ".concat(strValueOf3) : new java.lang.String("Unknown HEVC profile string: "));
                return null;
            }
            i = 2;
        }
        java.lang.String str2 = strArr[3];
        java.lang.Integer numHevcCodecStringToProfileLevel = hevcCodecStringToProfileLevel(str2);
        if (numHevcCodecStringToProfileLevel != null) {
            return new android.util.Pair<>(java.lang.Integer.valueOf(i), numHevcCodecStringToProfileLevel);
        }
        java.lang.String strValueOf4 = java.lang.String.valueOf(str2);
        com.google.android.exoplayer2.util.Log.w(TAG, strValueOf4.length() != 0 ? "Unknown HEVC level string: ".concat(strValueOf4) : new java.lang.String("Unknown HEVC level string: "));
        return null;
    }

    public static android.util.Pair<java.lang.Integer, java.lang.Integer> getVp9ProfileAndLevel(java.lang.String str, java.lang.String[] strArr) throws java.lang.NumberFormatException {
        java.lang.String strF;
        if (strArr.length < 3) {
            java.lang.String strValueOf = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(strValueOf) : new java.lang.String("Ignoring malformed VP9 codec string: "));
            return null;
        }
        try {
            int i = java.lang.Integer.parseInt(strArr[1]);
            int i2 = java.lang.Integer.parseInt(strArr[2]);
            int iVp9ProfileNumberToConst = vp9ProfileNumberToConst(i);
            if (iVp9ProfileNumberToConst == -1) {
                strF = e.a.c.a.a.F(32, "Unknown VP9 profile: ", i);
            } else {
                int iVp9LevelNumberToConst = vp9LevelNumberToConst(i2);
                if (iVp9LevelNumberToConst != -1) {
                    return new android.util.Pair<>(java.lang.Integer.valueOf(iVp9ProfileNumberToConst), java.lang.Integer.valueOf(iVp9LevelNumberToConst));
                }
                strF = e.a.c.a.a.F(30, "Unknown VP9 level: ", i2);
            }
            com.google.android.exoplayer2.util.Log.w(TAG, strF);
            return null;
        } catch (java.lang.NumberFormatException unused) {
            java.lang.String strValueOf2 = java.lang.String.valueOf(str);
            com.google.android.exoplayer2.util.Log.w(TAG, strValueOf2.length() != 0 ? "Ignoring malformed VP9 codec string: ".concat(strValueOf2) : new java.lang.String("Ignoring malformed VP9 codec string: "));
            return null;
        }
    }

    public static java.lang.Integer hevcCodecStringToProfileLevel(java.lang.String str) {
        int i;
        if (str == null) {
            return null;
        }
        switch (str) {
            case "L30":
                return 1;
            case "L60":
                return 4;
            case "L63":
                return 16;
            case "L90":
                i = 64;
                break;
            case "L93":
                i = 256;
                break;
            case "L120":
                i = 1024;
                break;
            case "L123":
                i = 4096;
                break;
            case "L150":
                i = 16384;
                break;
            case "L153":
                i = 65536;
                break;
            case "L156":
                i = net.easyconn.ecsdk.ECTypes.ECSupportFunction.EC_SUPPORT_FUNCTION_WEB_CAR_DVR;
                break;
            case "L180":
                i = com.google.android.exoplayer2.source.ProgressiveMediaSource.DEFAULT_LOADING_CHECK_INTERVAL_BYTES;
                break;
            case "L183":
                i = 4194304;
                break;
            case "L186":
                i = 16777216;
                break;
            case "H30":
                return 2;
            case "H60":
                return 8;
            case "H63":
                i = 32;
                break;
            case "H90":
                i = 128;
                break;
            case "H93":
                i = 512;
                break;
            case "H120":
                i = 2048;
                break;
            case "H123":
                i = 8192;
                break;
            case "H150":
                i = 32768;
                break;
            case "H153":
                i = 131072;
                break;
            case "H156":
                i = 524288;
                break;
            case "H180":
                i = 2097152;
                break;
            case "H183":
                i = 8388608;
                break;
            case "H186":
                i = net.easyconn.ecsdk.ECTypes.ECInputImeOptions.EC_INPUT_IME_FLAG_NO_FULL_SCREEN;
                break;
            default:
                return null;
        }
        return java.lang.Integer.valueOf(i);
    }

    public static boolean isAlias(android.media.MediaCodecInfo mediaCodecInfo) {
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 29 && isAliasV29(mediaCodecInfo);
    }

    public static boolean isAliasV29(android.media.MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isAlias();
    }

    public static boolean isCodecUsableDecoder(android.media.MediaCodecInfo mediaCodecInfo, java.lang.String str, boolean z, java.lang.String str2) {
        if (mediaCodecInfo.isEncoder() || (!z && str.endsWith(".secure"))) {
            return false;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 21 && ("CIPAACDecoder".equals(str) || "CIPMP3Decoder".equals(str) || "CIPVorbisDecoder".equals(str) || "CIPAMRNBDecoder".equals(str) || "AACDecoder".equals(str) || "MP3Decoder".equals(str))) {
            return false;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 18 && "OMX.MTK.AUDIO.DECODER.AAC".equals(str) && ("a70".equals(com.google.android.exoplayer2.util.Util.DEVICE) || ("Xiaomi".equals(com.google.android.exoplayer2.util.Util.MANUFACTURER) && com.google.android.exoplayer2.util.Util.DEVICE.startsWith("HM")))) {
            return false;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT == 16 && "OMX.qcom.audio.decoder.mp3".equals(str) && ("dlxu".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "protou".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "ville".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "villeplus".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "villec2".equals(com.google.android.exoplayer2.util.Util.DEVICE) || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("gee") || "C6602".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "C6603".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "C6606".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "C6616".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "L36h".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "SO-02E".equals(com.google.android.exoplayer2.util.Util.DEVICE))) {
            return false;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT == 16 && "OMX.qcom.audio.decoder.aac".equals(str) && ("C1504".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "C1505".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "C1604".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "C1605".equals(com.google.android.exoplayer2.util.Util.DEVICE))) {
            return false;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT < 24 && (("OMX.SEC.aac.dec".equals(str) || "OMX.Exynos.AAC.Decoder".equals(str)) && "samsung".equals(com.google.android.exoplayer2.util.Util.MANUFACTURER) && (com.google.android.exoplayer2.util.Util.DEVICE.startsWith("zeroflte") || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("zerolte") || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("zenlte") || "SC-05G".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "marinelteatt".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "404SC".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "SC-04G".equals(com.google.android.exoplayer2.util.Util.DEVICE) || "SCV31".equals(com.google.android.exoplayer2.util.Util.DEVICE)))) {
            return false;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT <= 19 && "OMX.SEC.vp8.dec".equals(str) && "samsung".equals(com.google.android.exoplayer2.util.Util.MANUFACTURER) && (com.google.android.exoplayer2.util.Util.DEVICE.startsWith("d2") || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("serrano") || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("jflte") || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("santos") || com.google.android.exoplayer2.util.Util.DEVICE.startsWith("t0"))) {
            return false;
        }
        if (com.google.android.exoplayer2.util.Util.SDK_INT <= 19 && com.google.android.exoplayer2.util.Util.DEVICE.startsWith("jflte") && "OMX.qcom.video.decoder.vp8".equals(str)) {
            return false;
        }
        return (com.google.android.exoplayer2.util.MimeTypes.AUDIO_E_AC3_JOC.equals(str2) && "OMX.MTK.AUDIO.DECODER.DSPAC3".equals(str)) ? false : true;
    }

    public static boolean isHardwareAccelerated(android.media.MediaCodecInfo mediaCodecInfo) {
        return com.google.android.exoplayer2.util.Util.SDK_INT >= 29 ? isHardwareAcceleratedV29(mediaCodecInfo) : !isSoftwareOnly(mediaCodecInfo);
    }

    public static boolean isHardwareAcceleratedV29(android.media.MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isHardwareAccelerated();
    }

    public static boolean isSoftwareOnly(android.media.MediaCodecInfo mediaCodecInfo) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 29) {
            return isSoftwareOnlyV29(mediaCodecInfo);
        }
        java.lang.String strB0 = d.s.y.b0(mediaCodecInfo.getName());
        if (strB0.startsWith("arc.")) {
            return false;
        }
        return strB0.startsWith("omx.google.") || strB0.startsWith("omx.ffmpeg.") || (strB0.startsWith("omx.sec.") && strB0.contains(".sw.")) || strB0.equals("omx.qcom.video.decoder.hevcswvdec") || strB0.startsWith("c2.android.") || strB0.startsWith("c2.google.") || !(strB0.startsWith("omx.") || strB0.startsWith("c2."));
    }

    public static boolean isSoftwareOnlyV29(android.media.MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isSoftwareOnly();
    }

    public static boolean isVendor(android.media.MediaCodecInfo mediaCodecInfo) {
        if (com.google.android.exoplayer2.util.Util.SDK_INT >= 29) {
            return isVendorV29(mediaCodecInfo);
        }
        java.lang.String strB0 = d.s.y.b0(mediaCodecInfo.getName());
        return (strB0.startsWith("omx.google.") || strB0.startsWith("c2.android.") || strB0.startsWith("c2.google.")) ? false : true;
    }

    public static boolean isVendorV29(android.media.MediaCodecInfo mediaCodecInfo) {
        return mediaCodecInfo.isVendor();
    }

    public static int maxH264DecodableFrameSize() {
        if (maxH264DecodableFrameSize == -1) {
            int iMax = 0;
            com.google.android.exoplayer2.mediacodec.MediaCodecInfo decoderInfo = getDecoderInfo(com.google.android.exoplayer2.util.MimeTypes.VIDEO_H264, false, false);
            if (decoderInfo != null) {
                android.media.MediaCodecInfo.CodecProfileLevel[] profileLevels = decoderInfo.getProfileLevels();
                int length = profileLevels.length;
                int iMax2 = 0;
                while (iMax < length) {
                    iMax2 = java.lang.Math.max(avcLevelToMaxFrameSize(profileLevels[iMax].level), iMax2);
                    iMax++;
                }
                iMax = java.lang.Math.max(iMax2, com.google.android.exoplayer2.util.Util.SDK_INT >= 21 ? 345600 : 172800);
            }
            maxH264DecodableFrameSize = iMax;
        }
        return maxH264DecodableFrameSize;
    }

    public static int mp4aAudioObjectTypeToProfile(int i) {
        int i2 = 17;
        if (i != 17) {
            i2 = 20;
            if (i != 20) {
                i2 = 23;
                if (i != 23) {
                    i2 = 29;
                    if (i != 29) {
                        i2 = 39;
                        if (i != 39) {
                            i2 = 42;
                            if (i != 42) {
                                switch (i) {
                                    case 1:
                                        return 1;
                                    case 2:
                                        return 2;
                                    case 3:
                                        return 3;
                                    case 4:
                                        return 4;
                                    case 5:
                                        return 5;
                                    case 6:
                                        return 6;
                                    default:
                                        return -1;
                                }
                            }
                        }
                    }
                }
            }
        }
        return i2;
    }

    public static <T> void sortByScore(java.util.List<T> list, final com.google.android.exoplayer2.mediacodec.MediaCodecUtil.ScoreProvider<T> scoreProvider) {
        java.util.Collections.sort(list, new java.util.Comparator() { // from class: e.c.a.a.j2.h
            @Override // java.util.Comparator
            public final int compare(java.lang.Object obj, java.lang.Object obj2) {
                return com.google.android.exoplayer2.mediacodec.MediaCodecUtil.d(scoreProvider, obj, obj2);
            }
        });
    }

    public static int vp9LevelNumberToConst(int i) {
        if (i == 10) {
            return 1;
        }
        if (i == 11) {
            return 2;
        }
        if (i == 20) {
            return 4;
        }
        if (i == 21) {
            return 8;
        }
        if (i == 30) {
            return 16;
        }
        if (i == 31) {
            return 32;
        }
        if (i == 40) {
            return 64;
        }
        if (i == 41) {
            return 128;
        }
        if (i == 50) {
            return 256;
        }
        if (i == 51) {
            return 512;
        }
        switch (i) {
            case 60:
                return 2048;
            case 61:
                return 4096;
            case 62:
                return 8192;
            default:
                return -1;
        }
    }

    public static int vp9ProfileNumberToConst(int i) {
        if (i == 0) {
            return 1;
        }
        if (i == 1) {
            return 2;
        }
        if (i != 2) {
            return i != 3 ? -1 : 8;
        }
        return 4;
    }

    public static void warmDecoderInfoCache(java.lang.String str, boolean z, boolean z2) {
        try {
            getDecoderInfos(str, z, z2);
        } catch (com.google.android.exoplayer2.mediacodec.MediaCodecUtil.DecoderQueryException e2) {
            com.google.android.exoplayer2.util.Log.e(TAG, "Codec warming failed", e2);
        }
    }
}
