package com.google.android.exoplayer2;

/* loaded from: classes.dex */
public final class Format implements com.google.android.exoplayer2.Bundleable {
    public static final int FIELD_ACCESSIBILITY_CHANNEL = 28;
    public static final int FIELD_AVERAGE_BITRATE = 5;
    public static final int FIELD_CHANNEL_COUNT = 23;
    public static final int FIELD_CODECS = 7;
    public static final int FIELD_COLOR_INFO = 22;
    public static final int FIELD_CONTAINER_MIME_TYPE = 9;
    public static final int FIELD_CRYPTO_TYPE = 29;
    public static final int FIELD_DRM_INIT_DATA = 13;
    public static final int FIELD_ENCODER_DELAY = 26;
    public static final int FIELD_ENCODER_PADDING = 27;
    public static final int FIELD_FRAME_RATE = 17;
    public static final int FIELD_HEIGHT = 16;
    public static final int FIELD_ID = 0;
    public static final int FIELD_INITIALIZATION_DATA = 12;
    public static final int FIELD_LABEL = 1;
    public static final int FIELD_LANGUAGE = 2;
    public static final int FIELD_MAX_INPUT_SIZE = 11;
    public static final int FIELD_METADATA = 8;
    public static final int FIELD_PCM_ENCODING = 25;
    public static final int FIELD_PEAK_BITRATE = 6;
    public static final int FIELD_PIXEL_WIDTH_HEIGHT_RATIO = 19;
    public static final int FIELD_PROJECTION_DATA = 20;
    public static final int FIELD_ROLE_FLAGS = 4;
    public static final int FIELD_ROTATION_DEGREES = 18;
    public static final int FIELD_SAMPLE_MIME_TYPE = 10;
    public static final int FIELD_SAMPLE_RATE = 24;
    public static final int FIELD_SELECTION_FLAGS = 3;
    public static final int FIELD_STEREO_MODE = 21;
    public static final int FIELD_SUBSAMPLE_OFFSET_US = 14;
    public static final int FIELD_WIDTH = 15;
    public static final int NO_VALUE = -1;
    public static final long OFFSET_SAMPLE_RELATIVE = Long.MAX_VALUE;
    public final int accessibilityChannel;
    public final int averageBitrate;
    public final int bitrate;
    public final int channelCount;
    public final java.lang.String codecs;
    public final com.google.android.exoplayer2.video.ColorInfo colorInfo;
    public final java.lang.String containerMimeType;
    public final int cryptoType;
    public final com.google.android.exoplayer2.drm.DrmInitData drmInitData;
    public final int encoderDelay;
    public final int encoderPadding;
    public final float frameRate;
    public int hashCode;
    public final int height;
    public final java.lang.String id;
    public final java.util.List<byte[]> initializationData;
    public final java.lang.String label;
    public final java.lang.String language;
    public final int maxInputSize;
    public final com.google.android.exoplayer2.metadata.Metadata metadata;
    public final int pcmEncoding;
    public final int peakBitrate;
    public final float pixelWidthHeightRatio;
    public final byte[] projectionData;
    public final int roleFlags;
    public final int rotationDegrees;
    public final java.lang.String sampleMimeType;
    public final int sampleRate;
    public final int selectionFlags;
    public final int stereoMode;
    public final long subsampleOffsetUs;
    public final int width;
    public static final com.google.android.exoplayer2.Format DEFAULT = new com.google.android.exoplayer2.Format.Builder().build();
    public static final com.google.android.exoplayer2.Bundleable.Creator<com.google.android.exoplayer2.Format> CREATOR = new com.google.android.exoplayer2.Bundleable.Creator() { // from class: e.c.a.a.t1
        @Override // com.google.android.exoplayer2.Bundleable.Creator
        public final com.google.android.exoplayer2.Bundleable fromBundle(android.os.Bundle bundle) {
            return com.google.android.exoplayer2.Format.fromBundle(bundle);
        }
    };

    public static final class Builder {
        public int accessibilityChannel;
        public int averageBitrate;
        public int channelCount;
        public java.lang.String codecs;
        public com.google.android.exoplayer2.video.ColorInfo colorInfo;
        public java.lang.String containerMimeType;
        public int cryptoType;
        public com.google.android.exoplayer2.drm.DrmInitData drmInitData;
        public int encoderDelay;
        public int encoderPadding;
        public float frameRate;
        public int height;
        public java.lang.String id;
        public java.util.List<byte[]> initializationData;
        public java.lang.String label;
        public java.lang.String language;
        public int maxInputSize;
        public com.google.android.exoplayer2.metadata.Metadata metadata;
        public int pcmEncoding;
        public int peakBitrate;
        public float pixelWidthHeightRatio;
        public byte[] projectionData;
        public int roleFlags;
        public int rotationDegrees;
        public java.lang.String sampleMimeType;
        public int sampleRate;
        public int selectionFlags;
        public int stereoMode;
        public long subsampleOffsetUs;
        public int width;

        public Builder() {
            this.averageBitrate = -1;
            this.peakBitrate = -1;
            this.maxInputSize = -1;
            this.subsampleOffsetUs = Long.MAX_VALUE;
            this.width = -1;
            this.height = -1;
            this.frameRate = -1.0f;
            this.pixelWidthHeightRatio = 1.0f;
            this.stereoMode = -1;
            this.channelCount = -1;
            this.sampleRate = -1;
            this.pcmEncoding = -1;
            this.accessibilityChannel = -1;
            this.cryptoType = 0;
        }

        public Builder(com.google.android.exoplayer2.Format format) {
            this.id = format.id;
            this.label = format.label;
            this.language = format.language;
            this.selectionFlags = format.selectionFlags;
            this.roleFlags = format.roleFlags;
            this.averageBitrate = format.averageBitrate;
            this.peakBitrate = format.peakBitrate;
            this.codecs = format.codecs;
            this.metadata = format.metadata;
            this.containerMimeType = format.containerMimeType;
            this.sampleMimeType = format.sampleMimeType;
            this.maxInputSize = format.maxInputSize;
            this.initializationData = format.initializationData;
            this.drmInitData = format.drmInitData;
            this.subsampleOffsetUs = format.subsampleOffsetUs;
            this.width = format.width;
            this.height = format.height;
            this.frameRate = format.frameRate;
            this.rotationDegrees = format.rotationDegrees;
            this.pixelWidthHeightRatio = format.pixelWidthHeightRatio;
            this.projectionData = format.projectionData;
            this.stereoMode = format.stereoMode;
            this.colorInfo = format.colorInfo;
            this.channelCount = format.channelCount;
            this.sampleRate = format.sampleRate;
            this.pcmEncoding = format.pcmEncoding;
            this.encoderDelay = format.encoderDelay;
            this.encoderPadding = format.encoderPadding;
            this.accessibilityChannel = format.accessibilityChannel;
            this.cryptoType = format.cryptoType;
        }

        public com.google.android.exoplayer2.Format build() {
            return new com.google.android.exoplayer2.Format(this);
        }

        public com.google.android.exoplayer2.Format.Builder setAccessibilityChannel(int i) {
            this.accessibilityChannel = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setAverageBitrate(int i) {
            this.averageBitrate = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setChannelCount(int i) {
            this.channelCount = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setCodecs(java.lang.String str) {
            this.codecs = str;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setColorInfo(com.google.android.exoplayer2.video.ColorInfo colorInfo) {
            this.colorInfo = colorInfo;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setContainerMimeType(java.lang.String str) {
            this.containerMimeType = str;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setCryptoType(int i) {
            this.cryptoType = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setDrmInitData(com.google.android.exoplayer2.drm.DrmInitData drmInitData) {
            this.drmInitData = drmInitData;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setEncoderDelay(int i) {
            this.encoderDelay = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setEncoderPadding(int i) {
            this.encoderPadding = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setFrameRate(float f2) {
            this.frameRate = f2;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setHeight(int i) {
            this.height = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setId(int i) {
            this.id = java.lang.Integer.toString(i);
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setId(java.lang.String str) {
            this.id = str;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setInitializationData(java.util.List<byte[]> list) {
            this.initializationData = list;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setLabel(java.lang.String str) {
            this.label = str;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setLanguage(java.lang.String str) {
            this.language = str;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setMaxInputSize(int i) {
            this.maxInputSize = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setMetadata(com.google.android.exoplayer2.metadata.Metadata metadata) {
            this.metadata = metadata;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setPcmEncoding(int i) {
            this.pcmEncoding = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setPeakBitrate(int i) {
            this.peakBitrate = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setPixelWidthHeightRatio(float f2) {
            this.pixelWidthHeightRatio = f2;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setProjectionData(byte[] bArr) {
            this.projectionData = bArr;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setRoleFlags(int i) {
            this.roleFlags = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setRotationDegrees(int i) {
            this.rotationDegrees = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setSampleMimeType(java.lang.String str) {
            this.sampleMimeType = str;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setSampleRate(int i) {
            this.sampleRate = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setSelectionFlags(int i) {
            this.selectionFlags = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setStereoMode(int i) {
            this.stereoMode = i;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setSubsampleOffsetUs(long j) {
            this.subsampleOffsetUs = j;
            return this;
        }

        public com.google.android.exoplayer2.Format.Builder setWidth(int i) {
            this.width = i;
            return this;
        }
    }

    public Format(com.google.android.exoplayer2.Format.Builder builder) {
        this.id = builder.id;
        this.label = builder.label;
        this.language = com.google.android.exoplayer2.util.Util.normalizeLanguageCode(builder.language);
        this.selectionFlags = builder.selectionFlags;
        this.roleFlags = builder.roleFlags;
        this.averageBitrate = builder.averageBitrate;
        int i = builder.peakBitrate;
        this.peakBitrate = i;
        this.bitrate = i == -1 ? this.averageBitrate : i;
        this.codecs = builder.codecs;
        this.metadata = builder.metadata;
        this.containerMimeType = builder.containerMimeType;
        this.sampleMimeType = builder.sampleMimeType;
        this.maxInputSize = builder.maxInputSize;
        this.initializationData = builder.initializationData == null ? java.util.Collections.emptyList() : builder.initializationData;
        this.drmInitData = builder.drmInitData;
        this.subsampleOffsetUs = builder.subsampleOffsetUs;
        this.width = builder.width;
        this.height = builder.height;
        this.frameRate = builder.frameRate;
        this.rotationDegrees = builder.rotationDegrees == -1 ? 0 : builder.rotationDegrees;
        this.pixelWidthHeightRatio = builder.pixelWidthHeightRatio == -1.0f ? 1.0f : builder.pixelWidthHeightRatio;
        this.projectionData = builder.projectionData;
        this.stereoMode = builder.stereoMode;
        this.colorInfo = builder.colorInfo;
        this.channelCount = builder.channelCount;
        this.sampleRate = builder.sampleRate;
        this.pcmEncoding = builder.pcmEncoding;
        this.encoderDelay = builder.encoderDelay == -1 ? 0 : builder.encoderDelay;
        this.encoderPadding = builder.encoderPadding != -1 ? builder.encoderPadding : 0;
        this.accessibilityChannel = builder.accessibilityChannel;
        this.cryptoType = (builder.cryptoType != 0 || this.drmInitData == null) ? builder.cryptoType : 1;
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.Format createAudioSampleFormat(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, int i4, int i5, java.util.List<byte[]> list, com.google.android.exoplayer2.drm.DrmInitData drmInitData, int i6, java.lang.String str4) {
        return new com.google.android.exoplayer2.Format.Builder().setId(str).setLanguage(str4).setSelectionFlags(i6).setAverageBitrate(i).setPeakBitrate(i).setCodecs(str3).setSampleMimeType(str2).setMaxInputSize(i2).setInitializationData(list).setDrmInitData(drmInitData).setChannelCount(i3).setSampleRate(i4).setPcmEncoding(i5).build();
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.Format createAudioSampleFormat(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, int i4, java.util.List<byte[]> list, com.google.android.exoplayer2.drm.DrmInitData drmInitData, int i5, java.lang.String str4) {
        return new com.google.android.exoplayer2.Format.Builder().setId(str).setLanguage(str4).setSelectionFlags(i5).setAverageBitrate(i).setPeakBitrate(i).setCodecs(str3).setSampleMimeType(str2).setMaxInputSize(i2).setInitializationData(list).setDrmInitData(drmInitData).setChannelCount(i3).setSampleRate(i4).build();
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.Format createContainerFormat(java.lang.String str, java.lang.String str2, java.lang.String str3, java.lang.String str4, java.lang.String str5, int i, int i2, int i3, java.lang.String str6) {
        return new com.google.android.exoplayer2.Format.Builder().setId(str).setLabel(str2).setLanguage(str6).setSelectionFlags(i2).setRoleFlags(i3).setAverageBitrate(i).setPeakBitrate(i).setCodecs(str5).setContainerMimeType(str3).setSampleMimeType(str4).build();
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.Format createSampleFormat(java.lang.String str, java.lang.String str2) {
        return new com.google.android.exoplayer2.Format.Builder().setId(str).setSampleMimeType(str2).build();
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.Format createVideoSampleFormat(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, int i4, float f2, java.util.List<byte[]> list, int i5, float f3, com.google.android.exoplayer2.drm.DrmInitData drmInitData) {
        return new com.google.android.exoplayer2.Format.Builder().setId(str).setAverageBitrate(i).setPeakBitrate(i).setCodecs(str3).setSampleMimeType(str2).setMaxInputSize(i2).setInitializationData(list).setDrmInitData(drmInitData).setWidth(i3).setHeight(i4).setFrameRate(f2).setRotationDegrees(i5).setPixelWidthHeightRatio(f3).build();
    }

    @java.lang.Deprecated
    public static com.google.android.exoplayer2.Format createVideoSampleFormat(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, int i4, float f2, java.util.List<byte[]> list, com.google.android.exoplayer2.drm.DrmInitData drmInitData) {
        return new com.google.android.exoplayer2.Format.Builder().setId(str).setAverageBitrate(i).setPeakBitrate(i).setCodecs(str3).setSampleMimeType(str2).setMaxInputSize(i2).setInitializationData(list).setDrmInitData(drmInitData).setWidth(i3).setHeight(i4).setFrameRate(f2).build();
    }

    public static <T> T defaultIfNull(T t, T t2) {
        return t != null ? t : t2;
    }

    public static com.google.android.exoplayer2.Format fromBundle(android.os.Bundle bundle) {
        com.google.android.exoplayer2.Format.Builder builder = new com.google.android.exoplayer2.Format.Builder();
        com.google.android.exoplayer2.util.BundleableUtil.ensureClassLoader(bundle);
        int i = 0;
        builder.setId((java.lang.String) defaultIfNull(bundle.getString(keyForField(0)), DEFAULT.id)).setLabel((java.lang.String) defaultIfNull(bundle.getString(keyForField(1)), DEFAULT.label)).setLanguage((java.lang.String) defaultIfNull(bundle.getString(keyForField(2)), DEFAULT.language)).setSelectionFlags(bundle.getInt(keyForField(3), DEFAULT.selectionFlags)).setRoleFlags(bundle.getInt(keyForField(4), DEFAULT.roleFlags)).setAverageBitrate(bundle.getInt(keyForField(5), DEFAULT.averageBitrate)).setPeakBitrate(bundle.getInt(keyForField(6), DEFAULT.peakBitrate)).setCodecs((java.lang.String) defaultIfNull(bundle.getString(keyForField(7)), DEFAULT.codecs)).setMetadata((com.google.android.exoplayer2.metadata.Metadata) defaultIfNull((com.google.android.exoplayer2.metadata.Metadata) bundle.getParcelable(keyForField(8)), DEFAULT.metadata)).setContainerMimeType((java.lang.String) defaultIfNull(bundle.getString(keyForField(9)), DEFAULT.containerMimeType)).setSampleMimeType((java.lang.String) defaultIfNull(bundle.getString(keyForField(10)), DEFAULT.sampleMimeType)).setMaxInputSize(bundle.getInt(keyForField(11), DEFAULT.maxInputSize));
        java.util.ArrayList arrayList = new java.util.ArrayList();
        while (true) {
            byte[] byteArray = bundle.getByteArray(keyForInitializationData(i));
            if (byteArray == null) {
                builder.setInitializationData(arrayList).setDrmInitData((com.google.android.exoplayer2.drm.DrmInitData) bundle.getParcelable(keyForField(13))).setSubsampleOffsetUs(bundle.getLong(keyForField(14), DEFAULT.subsampleOffsetUs)).setWidth(bundle.getInt(keyForField(15), DEFAULT.width)).setHeight(bundle.getInt(keyForField(16), DEFAULT.height)).setFrameRate(bundle.getFloat(keyForField(17), DEFAULT.frameRate)).setRotationDegrees(bundle.getInt(keyForField(18), DEFAULT.rotationDegrees)).setPixelWidthHeightRatio(bundle.getFloat(keyForField(19), DEFAULT.pixelWidthHeightRatio)).setProjectionData(bundle.getByteArray(keyForField(20))).setStereoMode(bundle.getInt(keyForField(21), DEFAULT.stereoMode)).setColorInfo((com.google.android.exoplayer2.video.ColorInfo) com.google.android.exoplayer2.util.BundleableUtil.fromNullableBundle(com.google.android.exoplayer2.video.ColorInfo.CREATOR, bundle.getBundle(keyForField(22)))).setChannelCount(bundle.getInt(keyForField(23), DEFAULT.channelCount)).setSampleRate(bundle.getInt(keyForField(24), DEFAULT.sampleRate)).setPcmEncoding(bundle.getInt(keyForField(25), DEFAULT.pcmEncoding)).setEncoderDelay(bundle.getInt(keyForField(26), DEFAULT.encoderDelay)).setEncoderPadding(bundle.getInt(keyForField(27), DEFAULT.encoderPadding)).setAccessibilityChannel(bundle.getInt(keyForField(28), DEFAULT.accessibilityChannel)).setCryptoType(bundle.getInt(keyForField(29), DEFAULT.cryptoType));
                return builder.build();
            }
            arrayList.add(byteArray);
            i++;
        }
    }

    public static java.lang.String keyForField(int i) {
        return java.lang.Integer.toString(i, 36);
    }

    public static java.lang.String keyForInitializationData(int i) {
        java.lang.String strKeyForField = keyForField(12);
        java.lang.String string = java.lang.Integer.toString(i, 36);
        return e.a.c.a.a.G(e.a.c.a.a.m(string, e.a.c.a.a.m(strKeyForField, 1)), strKeyForField, "_", string);
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x00db A[Catch: IOException -> 0x0104, TryCatch #0 {IOException -> 0x0104, blocks: (B:34:0x00b5, B:36:0x00bb, B:38:0x00c2, B:50:0x00ed, B:43:0x00d2, B:45:0x00db, B:47:0x00e6, B:42:0x00ce, B:51:0x00f3, B:53:0x00f6), top: B:83:0x00b5 }] */
    /* JADX WARN: Removed duplicated region for block: B:93:0x00f4 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x00ea -> B:50:0x00ed). Please report as a decompilation issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String toLogString(com.google.android.exoplayer2.Format r10) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 385
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.Format.toLogString(com.google.android.exoplayer2.Format):java.lang.String");
    }

    public com.google.android.exoplayer2.Format.Builder buildUpon() {
        return new com.google.android.exoplayer2.Format.Builder();
    }

    @java.lang.Deprecated
    public com.google.android.exoplayer2.Format copyWithBitrate(int i) {
        return buildUpon().setAverageBitrate(i).setPeakBitrate(i).build();
    }

    public com.google.android.exoplayer2.Format copyWithCryptoType(int i) {
        return buildUpon().setCryptoType(i).build();
    }

    @java.lang.Deprecated
    public com.google.android.exoplayer2.Format copyWithDrmInitData(com.google.android.exoplayer2.drm.DrmInitData drmInitData) {
        return buildUpon().setDrmInitData(drmInitData).build();
    }

    @java.lang.Deprecated
    public com.google.android.exoplayer2.Format copyWithFrameRate(float f2) {
        return buildUpon().setFrameRate(f2).build();
    }

    @java.lang.Deprecated
    public com.google.android.exoplayer2.Format copyWithGaplessInfo(int i, int i2) {
        return buildUpon().setEncoderDelay(i).setEncoderPadding(i2).build();
    }

    @java.lang.Deprecated
    public com.google.android.exoplayer2.Format copyWithLabel(java.lang.String str) {
        return buildUpon().setLabel(str).build();
    }

    @java.lang.Deprecated
    public com.google.android.exoplayer2.Format copyWithManifestFormatInfo(com.google.android.exoplayer2.Format format) {
        return withManifestFormatInfo(format);
    }

    @java.lang.Deprecated
    public com.google.android.exoplayer2.Format copyWithMaxInputSize(int i) {
        return buildUpon().setMaxInputSize(i).build();
    }

    @java.lang.Deprecated
    public com.google.android.exoplayer2.Format copyWithMetadata(com.google.android.exoplayer2.metadata.Metadata metadata) {
        return buildUpon().setMetadata(metadata).build();
    }

    @java.lang.Deprecated
    public com.google.android.exoplayer2.Format copyWithSubsampleOffsetUs(long j) {
        return buildUpon().setSubsampleOffsetUs(j).build();
    }

    @java.lang.Deprecated
    public com.google.android.exoplayer2.Format copyWithVideoSize(int i, int i2) {
        return buildUpon().setWidth(i).setHeight(i2).build();
    }

    public boolean equals(java.lang.Object obj) {
        int i;
        if (this == obj) {
            return true;
        }
        if (obj == null || com.google.android.exoplayer2.Format.class != obj.getClass()) {
            return false;
        }
        com.google.android.exoplayer2.Format format = (com.google.android.exoplayer2.Format) obj;
        int i2 = this.hashCode;
        return (i2 == 0 || (i = format.hashCode) == 0 || i2 == i) && this.selectionFlags == format.selectionFlags && this.roleFlags == format.roleFlags && this.averageBitrate == format.averageBitrate && this.peakBitrate == format.peakBitrate && this.maxInputSize == format.maxInputSize && this.subsampleOffsetUs == format.subsampleOffsetUs && this.width == format.width && this.height == format.height && this.rotationDegrees == format.rotationDegrees && this.stereoMode == format.stereoMode && this.channelCount == format.channelCount && this.sampleRate == format.sampleRate && this.pcmEncoding == format.pcmEncoding && this.encoderDelay == format.encoderDelay && this.encoderPadding == format.encoderPadding && this.accessibilityChannel == format.accessibilityChannel && this.cryptoType == format.cryptoType && java.lang.Float.compare(this.frameRate, format.frameRate) == 0 && java.lang.Float.compare(this.pixelWidthHeightRatio, format.pixelWidthHeightRatio) == 0 && com.google.android.exoplayer2.util.Util.areEqual(this.id, format.id) && com.google.android.exoplayer2.util.Util.areEqual(this.label, format.label) && com.google.android.exoplayer2.util.Util.areEqual(this.codecs, format.codecs) && com.google.android.exoplayer2.util.Util.areEqual(this.containerMimeType, format.containerMimeType) && com.google.android.exoplayer2.util.Util.areEqual(this.sampleMimeType, format.sampleMimeType) && com.google.android.exoplayer2.util.Util.areEqual(this.language, format.language) && java.util.Arrays.equals(this.projectionData, format.projectionData) && com.google.android.exoplayer2.util.Util.areEqual(this.metadata, format.metadata) && com.google.android.exoplayer2.util.Util.areEqual(this.colorInfo, format.colorInfo) && com.google.android.exoplayer2.util.Util.areEqual(this.drmInitData, format.drmInitData) && initializationDataEquals(format);
    }

    public int getPixelCount() {
        int i;
        int i2 = this.width;
        if (i2 == -1 || (i = this.height) == -1) {
            return -1;
        }
        return i2 * i;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            java.lang.String str = this.id;
            int iHashCode = (527 + (str == null ? 0 : str.hashCode())) * 31;
            java.lang.String str2 = this.label;
            int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
            java.lang.String str3 = this.language;
            int iHashCode3 = (((((((((iHashCode2 + (str3 == null ? 0 : str3.hashCode())) * 31) + this.selectionFlags) * 31) + this.roleFlags) * 31) + this.averageBitrate) * 31) + this.peakBitrate) * 31;
            java.lang.String str4 = this.codecs;
            int iHashCode4 = (iHashCode3 + (str4 == null ? 0 : str4.hashCode())) * 31;
            com.google.android.exoplayer2.metadata.Metadata metadata = this.metadata;
            int iHashCode5 = (iHashCode4 + (metadata == null ? 0 : metadata.hashCode())) * 31;
            java.lang.String str5 = this.containerMimeType;
            int iHashCode6 = (iHashCode5 + (str5 == null ? 0 : str5.hashCode())) * 31;
            java.lang.String str6 = this.sampleMimeType;
            this.hashCode = ((((((((((((((((java.lang.Float.floatToIntBits(this.pixelWidthHeightRatio) + ((((java.lang.Float.floatToIntBits(this.frameRate) + ((((((((((iHashCode6 + (str6 != null ? str6.hashCode() : 0)) * 31) + this.maxInputSize) * 31) + ((int) this.subsampleOffsetUs)) * 31) + this.width) * 31) + this.height) * 31)) * 31) + this.rotationDegrees) * 31)) * 31) + this.stereoMode) * 31) + this.channelCount) * 31) + this.sampleRate) * 31) + this.pcmEncoding) * 31) + this.encoderDelay) * 31) + this.encoderPadding) * 31) + this.accessibilityChannel) * 31) + this.cryptoType;
        }
        return this.hashCode;
    }

    public boolean initializationDataEquals(com.google.android.exoplayer2.Format format) {
        if (this.initializationData.size() != format.initializationData.size()) {
            return false;
        }
        for (int i = 0; i < this.initializationData.size(); i++) {
            if (!java.util.Arrays.equals(this.initializationData.get(i), format.initializationData.get(i))) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.exoplayer2.Bundleable
    public android.os.Bundle toBundle() {
        android.os.Bundle bundle = new android.os.Bundle();
        bundle.putString(keyForField(0), this.id);
        bundle.putString(keyForField(1), this.label);
        bundle.putString(keyForField(2), this.language);
        bundle.putInt(keyForField(3), this.selectionFlags);
        bundle.putInt(keyForField(4), this.roleFlags);
        bundle.putInt(keyForField(5), this.averageBitrate);
        bundle.putInt(keyForField(6), this.peakBitrate);
        bundle.putString(keyForField(7), this.codecs);
        bundle.putParcelable(keyForField(8), this.metadata);
        bundle.putString(keyForField(9), this.containerMimeType);
        bundle.putString(keyForField(10), this.sampleMimeType);
        bundle.putInt(keyForField(11), this.maxInputSize);
        for (int i = 0; i < this.initializationData.size(); i++) {
            bundle.putByteArray(keyForInitializationData(i), this.initializationData.get(i));
        }
        bundle.putParcelable(keyForField(13), this.drmInitData);
        bundle.putLong(keyForField(14), this.subsampleOffsetUs);
        bundle.putInt(keyForField(15), this.width);
        bundle.putInt(keyForField(16), this.height);
        bundle.putFloat(keyForField(17), this.frameRate);
        bundle.putInt(keyForField(18), this.rotationDegrees);
        bundle.putFloat(keyForField(19), this.pixelWidthHeightRatio);
        bundle.putByteArray(keyForField(20), this.projectionData);
        bundle.putInt(keyForField(21), this.stereoMode);
        bundle.putBundle(keyForField(22), com.google.android.exoplayer2.util.BundleableUtil.toNullableBundle(this.colorInfo));
        bundle.putInt(keyForField(23), this.channelCount);
        bundle.putInt(keyForField(24), this.sampleRate);
        bundle.putInt(keyForField(25), this.pcmEncoding);
        bundle.putInt(keyForField(26), this.encoderDelay);
        bundle.putInt(keyForField(27), this.encoderPadding);
        bundle.putInt(keyForField(28), this.accessibilityChannel);
        bundle.putInt(keyForField(29), this.cryptoType);
        return bundle;
    }

    public java.lang.String toString() {
        java.lang.String str = this.id;
        java.lang.String str2 = this.label;
        java.lang.String str3 = this.containerMimeType;
        java.lang.String str4 = this.sampleMimeType;
        java.lang.String str5 = this.codecs;
        int i = this.bitrate;
        java.lang.String str6 = this.language;
        int i2 = this.width;
        int i3 = this.height;
        float f2 = this.frameRate;
        int i4 = this.channelCount;
        int i5 = this.sampleRate;
        java.lang.StringBuilder sbL = e.a.c.a.a.l(e.a.c.a.a.m(str6, e.a.c.a.a.m(str5, e.a.c.a.a.m(str4, e.a.c.a.a.m(str3, e.a.c.a.a.m(str2, e.a.c.a.a.m(str, 104)))))), "Format(", str, ", ", str2);
        e.a.c.a.a.B(sbL, ", ", str3, ", ", str4);
        sbL.append(", ");
        sbL.append(str5);
        sbL.append(", ");
        sbL.append(i);
        sbL.append(", ");
        sbL.append(str6);
        sbL.append(", [");
        sbL.append(i2);
        sbL.append(", ");
        sbL.append(i3);
        sbL.append(", ");
        sbL.append(f2);
        sbL.append("], [");
        sbL.append(i4);
        sbL.append(", ");
        sbL.append(i5);
        sbL.append("])");
        return sbL.toString();
    }

    public com.google.android.exoplayer2.Format withManifestFormatInfo(com.google.android.exoplayer2.Format format) {
        java.lang.String str;
        if (this == format) {
            return this;
        }
        int trackType = com.google.android.exoplayer2.util.MimeTypes.getTrackType(this.sampleMimeType);
        java.lang.String str2 = format.id;
        java.lang.String str3 = format.label;
        if (str3 == null) {
            str3 = this.label;
        }
        java.lang.String str4 = this.language;
        if ((trackType == 3 || trackType == 1) && (str = format.language) != null) {
            str4 = str;
        }
        int i = this.averageBitrate;
        if (i == -1) {
            i = format.averageBitrate;
        }
        int i2 = this.peakBitrate;
        if (i2 == -1) {
            i2 = format.peakBitrate;
        }
        java.lang.String str5 = this.codecs;
        if (str5 == null) {
            java.lang.String codecsOfType = com.google.android.exoplayer2.util.Util.getCodecsOfType(format.codecs, trackType);
            if (com.google.android.exoplayer2.util.Util.splitCodecs(codecsOfType).length == 1) {
                str5 = codecsOfType;
            }
        }
        com.google.android.exoplayer2.metadata.Metadata metadata = this.metadata;
        com.google.android.exoplayer2.metadata.Metadata metadataCopyWithAppendedEntriesFrom = metadata == null ? format.metadata : metadata.copyWithAppendedEntriesFrom(format.metadata);
        float f2 = this.frameRate;
        if (f2 == -1.0f && trackType == 2) {
            f2 = format.frameRate;
        }
        return buildUpon().setId(str2).setLabel(str3).setLanguage(str4).setSelectionFlags(this.selectionFlags | format.selectionFlags).setRoleFlags(this.roleFlags | format.roleFlags).setAverageBitrate(i).setPeakBitrate(i2).setCodecs(str5).setMetadata(metadataCopyWithAppendedEntriesFrom).setDrmInitData(com.google.android.exoplayer2.drm.DrmInitData.createSessionCreationData(format.drmInitData, this.drmInitData)).setFrameRate(f2).build();
    }
}
