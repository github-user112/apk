package com.google.android.exoplayer2.mediacodec;

/* loaded from: classes.dex */
public class MediaCodecDecoderException extends com.google.android.exoplayer2.decoder.DecoderException {
    public final com.google.android.exoplayer2.mediacodec.MediaCodecInfo codecInfo;
    public final java.lang.String diagnosticInfo;

    /* JADX WARN: Illegal instructions before constructor call */
    public MediaCodecDecoderException(java.lang.Throwable th, com.google.android.exoplayer2.mediacodec.MediaCodecInfo mediaCodecInfo) {
        java.lang.String strValueOf = java.lang.String.valueOf(mediaCodecInfo == null ? null : mediaCodecInfo.name);
        super(strValueOf.length() != 0 ? "Decoder failed: ".concat(strValueOf) : new java.lang.String("Decoder failed: "), th);
        this.codecInfo = mediaCodecInfo;
        this.diagnosticInfo = com.google.android.exoplayer2.util.Util.SDK_INT >= 21 ? getDiagnosticInfoV21(th) : null;
    }

    public static java.lang.String getDiagnosticInfoV21(java.lang.Throwable th) {
        if (th instanceof android.media.MediaCodec.CodecException) {
            return ((android.media.MediaCodec.CodecException) th).getDiagnosticInfo();
        }
        return null;
    }
}
