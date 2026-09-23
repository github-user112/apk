package com.huawei.hms.scankit.aiscan.common;

/* renamed from: com.huawei.hms.scankit.aiscan.common.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public enum EnumC0104c {
    Cp437(new int[]{0, 2}, new java.lang.String[0]),
    ISO8859_1(new int[]{1, 3}, com.google.android.exoplayer2.C.ISO88591_NAME),
    ISO8859_2(4, "ISO-8859-2"),
    ISO8859_3(5, "ISO-8859-3"),
    ISO8859_4(6, "ISO-8859-4"),
    ISO8859_5(7, "ISO-8859-5"),
    ISO8859_6(8, "ISO-8859-6"),
    ISO8859_7(9, "ISO-8859-7"),
    ISO8859_8(10, "ISO-8859-8"),
    ISO8859_9(11, "ISO-8859-9"),
    ISO8859_10(12, "ISO-8859-10"),
    ISO8859_11(13, "ISO-8859-11"),
    ISO8859_13(15, "ISO-8859-13"),
    ISO8859_14(16, "ISO-8859-14"),
    ISO8859_15(17, "ISO-8859-15"),
    ISO8859_16(18, "ISO-8859-16"),
    SJIS(20, "Shift_JIS"),
    Cp1250(21, "windows-1250"),
    Cp1251(22, "windows-1251"),
    Cp1252(23, "windows-1252"),
    Cp1256(24, "windows-1256"),
    UnicodeBigUnmarked(25, "UTF-16BE", "UnicodeBig"),
    UTF8(26, com.google.android.exoplayer2.C.UTF8_NAME),
    ASCII(new int[]{27, com.tencent.tinker.android.dx.instruction.Opcodes.REM_FLOAT}, com.google.android.exoplayer2.C.ASCII_NAME),
    Big5(28),
    GB18030(29, "GB2312", "EUC_CN", "GBK"),
    EUC_KR(30, "EUC-KR");

    public static final java.util.Map<java.lang.Integer, com.huawei.hms.scankit.aiscan.common.EnumC0104c> B = new java.util.HashMap();
    public static final java.util.Map<java.lang.String, com.huawei.hms.scankit.aiscan.common.EnumC0104c> C = new java.util.HashMap();
    public final int[] E;
    public final java.lang.String[] F;

    static {
        for (com.huawei.hms.scankit.aiscan.common.EnumC0104c enumC0104c : values()) {
            for (int i : enumC0104c.E) {
                B.put(java.lang.Integer.valueOf(i), enumC0104c);
            }
            C.put(enumC0104c.name(), enumC0104c);
            for (java.lang.String str : enumC0104c.F) {
                C.put(str, enumC0104c);
            }
        }
    }

    EnumC0104c(int i) {
        this(new int[]{i}, new java.lang.String[0]);
    }

    EnumC0104c(int i, java.lang.String... strArr) {
        this.E = new int[]{i};
        this.F = strArr;
    }

    EnumC0104c(int[] iArr, java.lang.String... strArr) {
        this.E = iArr;
        this.F = strArr;
    }

    public static com.huawei.hms.scankit.aiscan.common.EnumC0104c a(int i) throws com.huawei.hms.scankit.aiscan.common.C0102a {
        if (i < 0 || i >= 900) {
            throw com.huawei.hms.scankit.aiscan.common.C0102a.a();
        }
        return B.get(java.lang.Integer.valueOf(i));
    }

    public static com.huawei.hms.scankit.aiscan.common.EnumC0104c a(java.lang.String str) {
        return C.get(str);
    }

    public int a() {
        return this.E[0];
    }
}
