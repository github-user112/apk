package com.google.android.exoplayer2.video;

/* loaded from: classes.dex */
public final class DolbyVisionConfig {
    public final java.lang.String codecs;
    public final int level;
    public final int profile;

    public DolbyVisionConfig(int i, int i2, java.lang.String str) {
        this.profile = i;
        this.level = i2;
        this.codecs = str;
    }

    public static com.google.android.exoplayer2.video.DolbyVisionConfig parse(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        java.lang.String str;
        parsableByteArray.skipBytes(2);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        int i = unsignedByte >> 1;
        int unsignedByte2 = ((parsableByteArray.readUnsignedByte() >> 3) & 31) | ((unsignedByte & 1) << 5);
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = com.google.android.exoplayer2.mediacodec.MediaCodecUtil.CODEC_ID_HEV1;
        } else {
            if (i != 9) {
                return null;
            }
            str = "avc3";
        }
        java.lang.String str2 = unsignedByte2 < 10 ? ".0" : ".";
        java.lang.StringBuilder sb = new java.lang.StringBuilder(str2.length() + str.length() + 24);
        sb.append(str);
        sb.append(".0");
        sb.append(i);
        sb.append(str2);
        sb.append(unsignedByte2);
        return new com.google.android.exoplayer2.video.DolbyVisionConfig(i, unsignedByte2, sb.toString());
    }
}
