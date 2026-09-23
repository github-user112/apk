package com.google.android.exoplayer2.video;

/* loaded from: classes.dex */
public final class HevcConfig {
    public static final int SPS_NAL_UNIT_TYPE = 33;
    public final java.lang.String codecs;
    public final int height;
    public final java.util.List<byte[]> initializationData;
    public final int nalUnitLengthFieldLength;
    public final float pixelWidthHeightRatio;
    public final int width;

    public HevcConfig(java.util.List<byte[]> list, int i, int i2, int i3, float f2, java.lang.String str) {
        this.initializationData = list;
        this.nalUnitLengthFieldLength = i;
        this.width = i2;
        this.height = i3;
        this.pixelWidthHeightRatio = f2;
        this.codecs = str;
    }

    public static com.google.android.exoplayer2.video.HevcConfig parse(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) throws com.google.android.exoplayer2.ParserException {
        int i;
        int i2;
        try {
            parsableByteArray.skipBytes(21);
            int unsignedByte = parsableByteArray.readUnsignedByte() & 3;
            int unsignedByte2 = parsableByteArray.readUnsignedByte();
            int position = parsableByteArray.getPosition();
            int i3 = 0;
            for (int i4 = 0; i4 < unsignedByte2; i4++) {
                parsableByteArray.skipBytes(1);
                int unsignedShort = parsableByteArray.readUnsignedShort();
                for (int i5 = 0; i5 < unsignedShort; i5++) {
                    int unsignedShort2 = parsableByteArray.readUnsignedShort();
                    i3 += unsignedShort2 + 4;
                    parsableByteArray.skipBytes(unsignedShort2);
                }
            }
            parsableByteArray.setPosition(position);
            byte[] bArr = new byte[i3];
            java.lang.String strBuildHevcCodecString = null;
            int i6 = 0;
            int i7 = -1;
            int i8 = -1;
            float f2 = 1.0f;
            for (int i9 = 0; i9 < unsignedByte2; i9++) {
                int unsignedByte3 = parsableByteArray.readUnsignedByte() & 127;
                int unsignedShort3 = parsableByteArray.readUnsignedShort();
                int i10 = 0;
                while (i10 < unsignedShort3) {
                    int unsignedShort4 = parsableByteArray.readUnsignedShort();
                    int i11 = unsignedByte2;
                    java.lang.System.arraycopy(com.google.android.exoplayer2.util.NalUnitUtil.NAL_START_CODE, 0, bArr, i6, com.google.android.exoplayer2.util.NalUnitUtil.NAL_START_CODE.length);
                    int length = i6 + com.google.android.exoplayer2.util.NalUnitUtil.NAL_START_CODE.length;
                    java.lang.System.arraycopy(parsableByteArray.getData(), parsableByteArray.getPosition(), bArr, length, unsignedShort4);
                    if (unsignedByte3 == 33 && i10 == 0) {
                        com.google.android.exoplayer2.util.NalUnitUtil.H265SpsData h265SpsNalUnit = com.google.android.exoplayer2.util.NalUnitUtil.parseH265SpsNalUnit(bArr, length, length + unsignedShort4);
                        int i12 = h265SpsNalUnit.width;
                        i8 = h265SpsNalUnit.height;
                        f2 = h265SpsNalUnit.pixelWidthHeightRatio;
                        i = unsignedByte3;
                        i2 = unsignedShort3;
                        i7 = i12;
                        strBuildHevcCodecString = com.google.android.exoplayer2.util.CodecSpecificDataUtil.buildHevcCodecString(h265SpsNalUnit.generalProfileSpace, h265SpsNalUnit.generalTierFlag, h265SpsNalUnit.generalProfileIdc, h265SpsNalUnit.generalProfileCompatibilityFlags, h265SpsNalUnit.constraintBytes, h265SpsNalUnit.generalLevelIdc);
                    } else {
                        i = unsignedByte3;
                        i2 = unsignedShort3;
                    }
                    i6 = length + unsignedShort4;
                    parsableByteArray.skipBytes(unsignedShort4);
                    i10++;
                    unsignedByte2 = i11;
                    unsignedByte3 = i;
                    unsignedShort3 = i2;
                }
            }
            return new com.google.android.exoplayer2.video.HevcConfig(i3 == 0 ? java.util.Collections.emptyList() : java.util.Collections.singletonList(bArr), unsignedByte + 1, i7, i8, f2, strBuildHevcCodecString);
        } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Error parsing HEVC config", e2);
        }
    }
}
