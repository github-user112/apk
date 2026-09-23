package e.c.c.d;

/* loaded from: classes.dex */
public enum c {
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

    public static final java.util.Map<java.lang.Integer, e.c.c.d.c> D = new java.util.HashMap();
    public static final java.util.Map<java.lang.String, e.c.c.d.c> F = new java.util.HashMap();
    public final int[] a;
    public final java.lang.String[] b;

    static {
        for (e.c.c.d.c cVar : values()) {
            for (int i : cVar.a) {
                D.put(java.lang.Integer.valueOf(i), cVar);
            }
            F.put(cVar.name(), cVar);
            for (java.lang.String str : cVar.b) {
                F.put(str, cVar);
            }
        }
    }

    c(int i) {
        this.a = new int[]{i};
        this.b = new java.lang.String[0];
    }

    c(int i, java.lang.String... strArr) {
        this.a = new int[]{i};
        this.b = strArr;
    }

    c(int[] iArr, java.lang.String... strArr) {
        this.a = iArr;
        this.b = strArr;
    }
}
