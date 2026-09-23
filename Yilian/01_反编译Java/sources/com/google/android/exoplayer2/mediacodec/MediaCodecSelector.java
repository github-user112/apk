package com.google.android.exoplayer2.mediacodec;

/* loaded from: classes.dex */
public interface MediaCodecSelector {
    public static final com.google.android.exoplayer2.mediacodec.MediaCodecSelector DEFAULT = new com.google.android.exoplayer2.mediacodec.MediaCodecSelector() { // from class: e.c.a.a.j2.j
        @Override // com.google.android.exoplayer2.mediacodec.MediaCodecSelector
        public final java.util.List getDecoderInfos(java.lang.String str, boolean z, boolean z2) {
            return com.google.android.exoplayer2.mediacodec.MediaCodecUtil.getDecoderInfos(str, z, z2);
        }
    };

    java.util.List<com.google.android.exoplayer2.mediacodec.MediaCodecInfo> getDecoderInfos(java.lang.String str, boolean z, boolean z2);
}
