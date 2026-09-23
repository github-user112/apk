package com.google.android.exoplayer2.util;

/* loaded from: classes.dex */
public final class CodecSpecificDataUtil {
    public static final byte[] NAL_START_CODE = {0, 0, 0, 1};
    public static final java.lang.String[] HEVC_GENERAL_PROFILE_SPACE_STRINGS = {"", "A", "B", "C"};

    public static java.lang.String buildAvcCodecString(int i, int i2, int i3) {
        return java.lang.String.format("avc1.%02X%02X%02X", java.lang.Integer.valueOf(i), java.lang.Integer.valueOf(i2), java.lang.Integer.valueOf(i3));
    }

    public static java.util.List<byte[]> buildCea708InitializationData(boolean z) {
        return java.util.Collections.singletonList(z ? new byte[]{1} : new byte[]{0});
    }

    public static java.lang.String buildHevcCodecString(int i, boolean z, int i2, int i3, int[] iArr, int i4) {
        java.lang.Object[] objArr = new java.lang.Object[5];
        objArr[0] = HEVC_GENERAL_PROFILE_SPACE_STRINGS[i];
        objArr[1] = java.lang.Integer.valueOf(i2);
        objArr[2] = java.lang.Integer.valueOf(i3);
        objArr[3] = java.lang.Character.valueOf(z ? 'H' : 'L');
        objArr[4] = java.lang.Integer.valueOf(i4);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(com.google.android.exoplayer2.util.Util.formatInvariant("hvc1.%s%d.%X.%c%d", objArr));
        int length = iArr.length;
        while (length > 0 && iArr[length - 1] == 0) {
            length--;
        }
        for (int i5 = 0; i5 < length; i5++) {
            sb.append(java.lang.String.format(".%02X", java.lang.Integer.valueOf(iArr[i5])));
        }
        return sb.toString();
    }

    public static byte[] buildNalUnit(byte[] bArr, int i, int i2) {
        byte[] bArr2 = NAL_START_CODE;
        byte[] bArr3 = new byte[bArr2.length + i2];
        java.lang.System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        java.lang.System.arraycopy(bArr, i, bArr3, NAL_START_CODE.length, i2);
        return bArr3;
    }

    public static int findNalStartCode(byte[] bArr, int i) {
        int length = bArr.length - NAL_START_CODE.length;
        while (i <= length) {
            if (isNalStartCode(bArr, i)) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public static boolean isNalStartCode(byte[] bArr, int i) {
        if (bArr.length - i <= NAL_START_CODE.length) {
            return false;
        }
        int i2 = 0;
        while (true) {
            byte[] bArr2 = NAL_START_CODE;
            if (i2 >= bArr2.length) {
                return true;
            }
            if (bArr[i + i2] != bArr2[i2]) {
                return false;
            }
            i2++;
        }
    }

    public static android.util.Pair<java.lang.Integer, java.lang.Integer> parseAlacAudioSpecificConfig(byte[] bArr) {
        com.google.android.exoplayer2.util.ParsableByteArray parsableByteArray = new com.google.android.exoplayer2.util.ParsableByteArray(bArr);
        parsableByteArray.setPosition(9);
        int unsignedByte = parsableByteArray.readUnsignedByte();
        parsableByteArray.setPosition(20);
        return android.util.Pair.create(java.lang.Integer.valueOf(parsableByteArray.readUnsignedIntToInt()), java.lang.Integer.valueOf(unsignedByte));
    }

    public static boolean parseCea708InitializationData(java.util.List<byte[]> list) {
        return list.size() == 1 && list.get(0).length == 1 && list.get(0)[0] == 1;
    }

    public static byte[][] splitNalUnits(byte[] bArr) {
        if (!isNalStartCode(bArr, 0)) {
            return null;
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int iFindNalStartCode = 0;
        do {
            arrayList.add(java.lang.Integer.valueOf(iFindNalStartCode));
            iFindNalStartCode = findNalStartCode(bArr, iFindNalStartCode + NAL_START_CODE.length);
        } while (iFindNalStartCode != -1);
        byte[][] bArr2 = new byte[arrayList.size()][];
        int i = 0;
        while (i < arrayList.size()) {
            int iIntValue = ((java.lang.Integer) arrayList.get(i)).intValue();
            int iIntValue2 = (i < arrayList.size() + (-1) ? ((java.lang.Integer) arrayList.get(i + 1)).intValue() : bArr.length) - iIntValue;
            byte[] bArr3 = new byte[iIntValue2];
            java.lang.System.arraycopy(bArr, iIntValue, bArr3, 0, iIntValue2);
            bArr2[i] = bArr3;
            i++;
        }
        return bArr2;
    }
}
