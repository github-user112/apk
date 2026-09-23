package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class MediaFormatUtil {
    public static final java.lang.String KEY_PCM_ENCODING_EXTENDED = "exo-pcm-encoding-int";
    public static final java.lang.String KEY_PIXEL_WIDTH_HEIGHT_RATIO_FLOAT = "exo-pixel-width-height-ratio-float";
    public static final int MAX_POWER_OF_TWO_INT = 1073741824;

    @android.annotation.SuppressLint({"InlinedApi"})
    public static android.media.MediaFormat createMediaFormatFromFormat(com.google.android.exoplayer2.Format format) {
        android.media.MediaFormat mediaFormat = new android.media.MediaFormat();
        maybeSetInteger(mediaFormat, "bitrate", format.bitrate);
        maybeSetInteger(mediaFormat, "channel-count", format.channelCount);
        maybeSetColorInfo(mediaFormat, format.colorInfo);
        maybeSetString(mediaFormat, "mime", format.sampleMimeType);
        maybeSetString(mediaFormat, "codecs-string", format.codecs);
        maybeSetFloat(mediaFormat, "frame-rate", format.frameRate);
        maybeSetInteger(mediaFormat, "width", format.width);
        maybeSetInteger(mediaFormat, "height", format.height);
        setCsdBuffers(mediaFormat, format.initializationData);
        maybeSetPcmEncoding(mediaFormat, format.pcmEncoding);
        maybeSetString(mediaFormat, com.umeng.analytics.pro.ai.N, format.language);
        maybeSetInteger(mediaFormat, "max-input-size", format.maxInputSize);
        maybeSetInteger(mediaFormat, "sample-rate", format.sampleRate);
        maybeSetInteger(mediaFormat, "caption-service-number", format.accessibilityChannel);
        mediaFormat.setInteger("rotation-degrees", format.rotationDegrees);
        int i = format.selectionFlags;
        setBooleanAsInt(mediaFormat, "is-autoselect", i & 4);
        setBooleanAsInt(mediaFormat, "is-default", i & 1);
        setBooleanAsInt(mediaFormat, "is-forced-subtitle", i & 2);
        mediaFormat.setInteger("encoder-delay", format.encoderDelay);
        mediaFormat.setInteger("encoder-padding", format.encoderPadding);
        maybeSetPixelAspectRatio(mediaFormat, format.pixelWidthHeightRatio);
        return mediaFormat;
    }

    public static void maybeSetByteBuffer(android.media.MediaFormat mediaFormat, java.lang.String str, byte[] bArr) {
        if (bArr != null) {
            mediaFormat.setByteBuffer(str, java.nio.ByteBuffer.wrap(bArr));
        }
    }

    public static void maybeSetColorInfo(android.media.MediaFormat mediaFormat, com.google.android.exoplayer2.video.ColorInfo colorInfo) {
        if (colorInfo != null) {
            maybeSetInteger(mediaFormat, "color-transfer", colorInfo.colorTransfer);
            maybeSetInteger(mediaFormat, "color-standard", colorInfo.colorSpace);
            maybeSetInteger(mediaFormat, "color-range", colorInfo.colorRange);
            maybeSetByteBuffer(mediaFormat, "hdr-static-info", colorInfo.hdrStaticInfo);
        }
    }

    public static void maybeSetFloat(android.media.MediaFormat mediaFormat, java.lang.String str, float f2) {
        if (f2 != -1.0f) {
            mediaFormat.setFloat(str, f2);
        }
    }

    public static void maybeSetInteger(android.media.MediaFormat mediaFormat, java.lang.String str, int i) {
        if (i != -1) {
            mediaFormat.setInteger(str, i);
        }
    }

    @android.annotation.SuppressLint({"InlinedApi"})
    public static void maybeSetPcmEncoding(android.media.MediaFormat mediaFormat, int i) {
        if (i == -1) {
            return;
        }
        maybeSetInteger(mediaFormat, KEY_PCM_ENCODING_EXTENDED, i);
        int i2 = 4;
        if (i == 2) {
            i2 = 2;
        } else if (i == 3) {
            i2 = 3;
        } else if (i != 4) {
            return;
        }
        mediaFormat.setInteger("pcm-encoding", i2);
    }

    @android.annotation.SuppressLint({"InlinedApi"})
    public static void maybeSetPixelAspectRatio(android.media.MediaFormat mediaFormat, float f2) {
        int i;
        mediaFormat.setFloat(KEY_PIXEL_WIDTH_HEIGHT_RATIO_FLOAT, f2);
        int i2 = 1073741824;
        if (f2 < 1.0f) {
            i2 = (int) (f2 * 1073741824);
            i = 1073741824;
        } else if (f2 > 1.0f) {
            i = (int) (1073741824 / f2);
        } else {
            i = 1;
            i2 = 1;
        }
        mediaFormat.setInteger("sar-width", i2);
        mediaFormat.setInteger("sar-height", i);
    }

    public static void maybeSetString(android.media.MediaFormat mediaFormat, java.lang.String str, java.lang.String str2) {
        if (str2 != null) {
            mediaFormat.setString(str, str2);
        }
    }

    public static void setBooleanAsInt(android.media.MediaFormat mediaFormat, java.lang.String str, int i) {
        mediaFormat.setInteger(str, i != 0 ? 1 : 0);
    }

    public static void setCsdBuffers(android.media.MediaFormat mediaFormat, java.util.List<byte[]> list) {
        for (int i = 0; i < list.size(); i++) {
            mediaFormat.setByteBuffer(e.a.c.a.a.F(15, "csd-", i), java.nio.ByteBuffer.wrap(list.get(i)));
        }
    }
}
