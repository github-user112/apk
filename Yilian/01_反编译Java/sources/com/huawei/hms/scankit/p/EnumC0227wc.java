package com.huawei.hms.scankit.p;

/* renamed from: com.huawei.hms.scankit.p.wc, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public enum EnumC0227wc {
    TERMINATOR(new int[]{0, 0, 0}, 0),
    NUMERIC(new int[]{10, 12, 14}, 1),
    ALPHANUMERIC(new int[]{9, 11, 13}, 2),
    STRUCTURED_APPEND(new int[]{0, 0, 0}, 3),
    BYTE(new int[]{8, 16, 16}, 4),
    ECI(new int[]{0, 0, 0}, 7),
    KANJI(new int[]{8, 10, 12}, 8),
    FNC1_FIRST_POSITION(new int[]{0, 0, 0}, 5),
    FNC1_SECOND_POSITION(new int[]{0, 0, 0}, 9),
    HANZI(new int[]{8, 10, 12}, 13);

    public final int[] l;
    public final int m;

    EnumC0227wc(int[] iArr, int i) {
        this.l = iArr;
        this.m = i;
    }

    public static com.huawei.hms.scankit.p.EnumC0227wc a(int i) throws java.lang.Exception {
        if (i == 0) {
            return TERMINATOR;
        }
        if (i == 1) {
            return NUMERIC;
        }
        if (i == 2) {
            return ALPHANUMERIC;
        }
        if (i == 3) {
            return STRUCTURED_APPEND;
        }
        if (i == 4) {
            return BYTE;
        }
        if (i == 5) {
            return FNC1_FIRST_POSITION;
        }
        if (i == 7) {
            return ECI;
        }
        if (i == 8) {
            return KANJI;
        }
        if (i == 9) {
            return FNC1_SECOND_POSITION;
        }
        if (i == 13) {
            return HANZI;
        }
        try {
            throw new java.lang.IllegalArgumentException();
        } catch (java.lang.Exception e2) {
            throw e2;
        }
    }

    public int a() {
        return this.m;
    }

    public int a(com.huawei.hms.scankit.p.C0242zc c0242zc) {
        int iE = c0242zc.e();
        return this.l[iE <= 9 ? (char) 0 : iE <= 26 ? (char) 1 : (char) 2];
    }
}
