package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class FileTypes {
    public static final int AC3 = 0;
    public static final int AC4 = 1;
    public static final int ADTS = 2;
    public static final int AMR = 3;
    public static final java.lang.String EXTENSION_AAC = ".aac";
    public static final java.lang.String EXTENSION_AC3 = ".ac3";
    public static final java.lang.String EXTENSION_AC4 = ".ac4";
    public static final java.lang.String EXTENSION_ADTS = ".adts";
    public static final java.lang.String EXTENSION_AMR = ".amr";
    public static final java.lang.String EXTENSION_EC3 = ".ec3";
    public static final java.lang.String EXTENSION_FLAC = ".flac";
    public static final java.lang.String EXTENSION_FLV = ".flv";
    public static final java.lang.String EXTENSION_JPEG = ".jpeg";
    public static final java.lang.String EXTENSION_JPG = ".jpg";
    public static final java.lang.String EXTENSION_M2P = ".m2p";
    public static final java.lang.String EXTENSION_MP3 = ".mp3";
    public static final java.lang.String EXTENSION_MP4 = ".mp4";
    public static final java.lang.String EXTENSION_MPEG = ".mpeg";
    public static final java.lang.String EXTENSION_MPG = ".mpg";
    public static final java.lang.String EXTENSION_OPUS = ".opus";
    public static final java.lang.String EXTENSION_PREFIX_CMF = ".cmf";
    public static final java.lang.String EXTENSION_PREFIX_M4 = ".m4";
    public static final java.lang.String EXTENSION_PREFIX_MK = ".mk";
    public static final java.lang.String EXTENSION_PREFIX_MP4 = ".mp4";
    public static final java.lang.String EXTENSION_PREFIX_OG = ".og";
    public static final java.lang.String EXTENSION_PREFIX_TS = ".ts";
    public static final java.lang.String EXTENSION_PS = ".ps";
    public static final java.lang.String EXTENSION_TS = ".ts";
    public static final java.lang.String EXTENSION_VTT = ".vtt";
    public static final java.lang.String EXTENSION_WAV = ".wav";
    public static final java.lang.String EXTENSION_WAVE = ".wave";
    public static final java.lang.String EXTENSION_WEBM = ".webm";
    public static final java.lang.String EXTENSION_WEBVTT = ".webvtt";
    public static final int FLAC = 4;
    public static final int FLV = 5;
    public static final java.lang.String HEADER_CONTENT_TYPE = "Content-Type";
    public static final int JPEG = 14;
    public static final int MATROSKA = 6;
    public static final int MP3 = 7;
    public static final int MP4 = 8;
    public static final int OGG = 9;
    public static final int PS = 10;
    public static final int TS = 11;
    public static final int UNKNOWN = -1;
    public static final int WAV = 12;
    public static final int WEBVTT = 13;

    @java.lang.annotation.Documented
    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.SOURCE)
    public @interface Type {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0136  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int inferFileTypeFromMimeType(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 480
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.util.FileTypes.inferFileTypeFromMimeType(java.lang.String):int");
    }

    public static int inferFileTypeFromResponseHeaders(java.util.Map<java.lang.String, java.util.List<java.lang.String>> map) {
        java.util.List<java.lang.String> list = map.get(HEADER_CONTENT_TYPE);
        return inferFileTypeFromMimeType((list == null || list.isEmpty()) ? null : list.get(0));
    }

    public static int inferFileTypeFromUri(android.net.Uri uri) {
        java.lang.String lastPathSegment = uri.getLastPathSegment();
        if (lastPathSegment == null) {
            return -1;
        }
        if (lastPathSegment.endsWith(EXTENSION_AC3) || lastPathSegment.endsWith(EXTENSION_EC3)) {
            return 0;
        }
        if (lastPathSegment.endsWith(EXTENSION_AC4)) {
            return 1;
        }
        if (lastPathSegment.endsWith(EXTENSION_ADTS) || lastPathSegment.endsWith(EXTENSION_AAC)) {
            return 2;
        }
        if (lastPathSegment.endsWith(EXTENSION_AMR)) {
            return 3;
        }
        if (lastPathSegment.endsWith(EXTENSION_FLAC)) {
            return 4;
        }
        if (lastPathSegment.endsWith(EXTENSION_FLV)) {
            return 5;
        }
        if (lastPathSegment.startsWith(EXTENSION_PREFIX_MK, lastPathSegment.length() - 4) || lastPathSegment.endsWith(EXTENSION_WEBM)) {
            return 6;
        }
        if (lastPathSegment.endsWith(EXTENSION_MP3)) {
            return 7;
        }
        if (lastPathSegment.endsWith(".mp4") || lastPathSegment.startsWith(EXTENSION_PREFIX_M4, lastPathSegment.length() - 4) || lastPathSegment.startsWith(".mp4", lastPathSegment.length() - 5) || lastPathSegment.startsWith(EXTENSION_PREFIX_CMF, lastPathSegment.length() - 5)) {
            return 8;
        }
        if (lastPathSegment.startsWith(EXTENSION_PREFIX_OG, lastPathSegment.length() - 4) || lastPathSegment.endsWith(EXTENSION_OPUS)) {
            return 9;
        }
        if (lastPathSegment.endsWith(EXTENSION_PS) || lastPathSegment.endsWith(EXTENSION_MPEG) || lastPathSegment.endsWith(EXTENSION_MPG) || lastPathSegment.endsWith(EXTENSION_M2P)) {
            return 10;
        }
        if (lastPathSegment.endsWith(".ts") || lastPathSegment.startsWith(".ts", lastPathSegment.length() - 4)) {
            return 11;
        }
        if (lastPathSegment.endsWith(EXTENSION_WAV) || lastPathSegment.endsWith(EXTENSION_WAVE)) {
            return 12;
        }
        if (lastPathSegment.endsWith(EXTENSION_VTT) || lastPathSegment.endsWith(EXTENSION_WEBVTT)) {
            return 13;
        }
        return (lastPathSegment.endsWith(EXTENSION_JPG) || lastPathSegment.endsWith(EXTENSION_JPEG)) ? 14 : -1;
    }
}
