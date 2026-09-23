package com.google.android.exoplayer2.video;

/* loaded from: classes.dex */
public final class AvcConfig {
    public final java.lang.String codecs;
    public final int height;
    public final java.util.List<byte[]> initializationData;
    public final int nalUnitLengthFieldLength;
    public final float pixelWidthHeightRatio;
    public final int width;

    public AvcConfig(java.util.List<byte[]> list, int i, int i2, int i3, float f2, java.lang.String str) {
        this.initializationData = list;
        this.nalUnitLengthFieldLength = i;
        this.width = i2;
        this.height = i3;
        this.pixelWidthHeightRatio = f2;
        this.codecs = str;
    }

    public static byte[] buildNalUnitForChild(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) {
        int unsignedShort = parsableByteArray.readUnsignedShort();
        int position = parsableByteArray.getPosition();
        parsableByteArray.skipBytes(unsignedShort);
        return com.google.android.exoplayer2.util.CodecSpecificDataUtil.buildNalUnit(parsableByteArray.getData(), position, unsignedShort);
    }

    public static com.google.android.exoplayer2.video.AvcConfig parse(com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray) throws com.google.android.exoplayer2.ParserException {
        java.lang.String strBuildAvcCodecString;
        int i;
        float f2;
        try {
            parsableByteArray.skipBytes(4);
            int unsignedByte = (parsableByteArray.readUnsignedByte() & 3) + 1;
            if (unsignedByte == 3) {
                throw new java.lang.IllegalStateException();
            }
            java.util.ArrayList arrayList = new java.util.ArrayList();
            int unsignedByte2 = parsableByteArray.readUnsignedByte() & 31;
            for (int i2 = 0; i2 < unsignedByte2; i2++) {
                arrayList.add(buildNalUnitForChild(parsableByteArray));
            }
            int unsignedByte3 = parsableByteArray.readUnsignedByte();
            for (int i3 = 0; i3 < unsignedByte3; i3++) {
                arrayList.add(buildNalUnitForChild(parsableByteArray));
            }
            int i4 = -1;
            if (unsignedByte2 > 0) {
                com.google.android.exoplayer2.util.NalUnitUtil.SpsData spsNalUnit = com.google.android.exoplayer2.util.NalUnitUtil.parseSpsNalUnit((byte[]) arrayList.get(0), unsignedByte, ((byte[]) arrayList.get(0)).length);
                int i5 = spsNalUnit.width;
                int i6 = spsNalUnit.height;
                float f3 = spsNalUnit.pixelWidthHeightRatio;
                strBuildAvcCodecString = com.google.android.exoplayer2.util.CodecSpecificDataUtil.buildAvcCodecString(spsNalUnit.profileIdc, spsNalUnit.constraintsFlagsAndReservedZero2Bits, spsNalUnit.levelIdc);
                i4 = i5;
                i = i6;
                f2 = f3;
            } else {
                strBuildAvcCodecString = null;
                i = -1;
                f2 = 1.0f;
            }
            return new com.google.android.exoplayer2.video.AvcConfig(arrayList, unsignedByte, i4, i, f2, strBuildAvcCodecString);
        } catch (java.lang.ArrayIndexOutOfBoundsException e2) {
            throw com.google.android.exoplayer2.ParserException.createForMalformedContainer("Error parsing AVC config", e2);
        }
    }
}
