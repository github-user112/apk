package com.tencent.tinker.android.dex;

/* loaded from: classes.dex */
public final class DexFormat {
    public static final int API_CURRENT = 14;
    public static final int API_NO_EXTENDED_OPCODES = 13;
    public static final java.lang.String DEX_IN_JAR_NAME = "classes.dex";
    public static final int ENDIAN_TAG = 305419896;
    public static final java.lang.String MAGIC_PREFIX = "dex\n";
    public static final java.lang.String MAGIC_SUFFIX = "\u0000";
    public static final int MAX_MEMBER_IDX = 65535;
    public static final int MAX_TYPE_IDX = 65535;
    public static final java.lang.String VERSION_CURRENT = "036";
    public static final java.lang.String VERSION_FOR_API_13 = "035";

    public static java.lang.String apiToMagic(int i) {
        return e.a.c.a.a.f(MAGIC_PREFIX, i >= 14 ? VERSION_CURRENT : VERSION_FOR_API_13, MAGIC_SUFFIX);
    }

    public static int magicToApi(byte[] bArr) {
        if (bArr.length == 8 && bArr[0] == 100 && bArr[1] == 101 && bArr[2] == 120 && bArr[3] == 10 && bArr[7] == 0) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("");
            sbO.append((char) bArr[4]);
            sbO.append((char) bArr[5]);
            sbO.append((char) bArr[6]);
            java.lang.String string = sbO.toString();
            if (string.equals(VERSION_CURRENT)) {
                return 14;
            }
            if (string.equals(VERSION_FOR_API_13)) {
                return 13;
            }
        }
        return -1;
    }
}
