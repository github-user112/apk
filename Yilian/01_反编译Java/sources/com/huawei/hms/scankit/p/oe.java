package com.huawei.hms.scankit.p;

/* loaded from: classes.dex */
public final class oe {
    public static final int[][] a = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};
    public static final int[][] b = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* renamed from: c, reason: collision with root package name */
    public static final int[][] f777c = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, com.tencent.tinker.android.dx.instruction.Opcodes.REM_FLOAT}};

    /* renamed from: d, reason: collision with root package name */
    public static final int[][] f778d = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    public static int a(int i) {
        return 32 - java.lang.Integer.numberOfLeadingZeros(i);
    }

    public static int a(int i, int i2) throws java.lang.Exception {
        if (i2 == 0) {
            try {
                throw new java.lang.IllegalArgumentException("0 polynomial");
            } catch (java.lang.Exception e2) {
                throw e2;
            }
        }
        int iA = a(i2);
        int iA2 = i << (iA - 1);
        while (a(iA2) >= iA) {
            iA2 ^= i2 << (a(iA2) - iA);
        }
        return iA2;
    }

    public static void a(int i, int i2, com.huawei.hms.scankit.p.je jeVar) throws com.huawei.hms.hmsscankit.WriterException {
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = i + i3;
            if (!b(jeVar.a(i4, i2))) {
                throw new com.huawei.hms.hmsscankit.WriterException();
            }
            jeVar.a(i4, i2, 0);
        }
    }

    public static void a(com.huawei.hms.scankit.p.C0117ab c0117ab, int i, com.huawei.hms.scankit.p.je jeVar) throws com.huawei.hms.hmsscankit.WriterException {
        boolean zA;
        int iC = jeVar.c() - 1;
        int iB = jeVar.b() - 1;
        int i2 = 0;
        int i3 = -1;
        while (iC > 0) {
            if (iC == 6) {
                iC--;
            }
            while (iB >= 0 && iB < jeVar.b()) {
                for (int i4 = 0; i4 < 2; i4++) {
                    int i5 = iC - i4;
                    if (b(jeVar.a(i5, iB))) {
                        if (i2 < c0117ab.d()) {
                            zA = c0117ab.a(i2);
                            i2++;
                        } else {
                            zA = false;
                        }
                        if (i != -1 && com.huawei.hms.scankit.p.ne.a(i, i5, iB)) {
                            zA = !zA;
                        }
                        jeVar.a(i5, iB, zA);
                    }
                }
                iB += i3;
            }
            i3 = -i3;
            iB += i3;
            iC -= 2;
        }
        if (i2 == c0117ab.d()) {
            return;
        }
        throw new com.huawei.hms.hmsscankit.WriterException("Not all bits consumed: " + i2 + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SLASH + c0117ab.d());
    }

    public static void a(com.huawei.hms.scankit.p.C0117ab c0117ab, com.huawei.hms.scankit.p.EnumC0198qc enumC0198qc, com.huawei.hms.scankit.p.C0242zc c0242zc, int i, com.huawei.hms.scankit.p.je jeVar) throws java.lang.Exception {
        a(jeVar);
        a(c0242zc, jeVar);
        a(enumC0198qc, i, jeVar);
        b(c0242zc, jeVar);
        a(c0117ab, i, jeVar);
    }

    public static void a(com.huawei.hms.scankit.p.je jeVar) {
        jeVar.a((byte) -1);
    }

    public static void a(com.huawei.hms.scankit.p.EnumC0198qc enumC0198qc, int i, com.huawei.hms.scankit.p.C0117ab c0117ab) throws java.lang.Exception {
        if (!com.huawei.hms.scankit.p.pe.a(i)) {
            throw new com.huawei.hms.hmsscankit.WriterException("Invalid mask pattern");
        }
        int iA = (enumC0198qc.a() << 3) | i;
        c0117ab.a(iA, 5);
        c0117ab.a(a(iA, 1335), 10);
        com.huawei.hms.scankit.p.C0117ab c0117ab2 = new com.huawei.hms.scankit.p.C0117ab();
        c0117ab2.a(21522, 15);
        c0117ab.b(c0117ab2);
        if (c0117ab.d() == 15) {
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("should not happen but we got: ");
        sbO.append(c0117ab.d());
        throw new com.huawei.hms.hmsscankit.WriterException(sbO.toString());
    }

    public static void a(com.huawei.hms.scankit.p.EnumC0198qc enumC0198qc, int i, com.huawei.hms.scankit.p.je jeVar) throws java.lang.Exception {
        com.huawei.hms.scankit.p.C0117ab c0117ab = new com.huawei.hms.scankit.p.C0117ab();
        a(enumC0198qc, i, c0117ab);
        for (int i2 = 0; i2 < c0117ab.d(); i2++) {
            boolean zA = c0117ab.a((c0117ab.d() - 1) - i2);
            int[] iArr = f778d[i2];
            jeVar.a(iArr[0], iArr[1], zA);
            if (i2 < 8) {
                jeVar.a((jeVar.c() - i2) - 1, 8, zA);
            } else {
                jeVar.a(8, (i2 - 8) + (jeVar.b() - 7), zA);
            }
        }
    }

    public static void a(com.huawei.hms.scankit.p.C0242zc c0242zc, com.huawei.hms.scankit.p.C0117ab c0117ab) throws java.lang.Exception {
        c0117ab.a(c0242zc.e(), 6);
        c0117ab.a(a(c0242zc.e(), 7973), 12);
        if (c0117ab.d() == 18) {
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("should not happen but we got: ");
        sbO.append(c0117ab.d());
        throw new com.huawei.hms.hmsscankit.WriterException(sbO.toString());
    }

    public static void a(com.huawei.hms.scankit.p.C0242zc c0242zc, com.huawei.hms.scankit.p.je jeVar) throws com.huawei.hms.hmsscankit.WriterException {
        c(jeVar);
        b(jeVar);
        c(c0242zc, jeVar);
        d(jeVar);
    }

    public static void b(int i, int i2, com.huawei.hms.scankit.p.je jeVar) {
        for (int i3 = 0; i3 < 5; i3++) {
            int[] iArr = b[i3];
            for (int i4 = 0; i4 < 5; i4++) {
                jeVar.a(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }

    public static void b(com.huawei.hms.scankit.p.je jeVar) throws com.huawei.hms.hmsscankit.WriterException {
        if (jeVar.a(8, jeVar.b() - 8) == 0) {
            throw new com.huawei.hms.hmsscankit.WriterException();
        }
        jeVar.a(8, jeVar.b() - 8, 1);
    }

    public static void b(com.huawei.hms.scankit.p.C0242zc c0242zc, com.huawei.hms.scankit.p.je jeVar) throws java.lang.Exception {
        if (c0242zc.e() < 7) {
            return;
        }
        com.huawei.hms.scankit.p.C0117ab c0117ab = new com.huawei.hms.scankit.p.C0117ab();
        a(c0242zc, c0117ab);
        int i = 17;
        for (int i2 = 0; i2 < 6; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                boolean zA = c0117ab.a(i);
                i--;
                jeVar.a(i2, (jeVar.b() - 11) + i3, zA);
                jeVar.a((jeVar.b() - 11) + i3, i2, zA);
            }
        }
    }

    public static boolean b(int i) {
        return i == -1;
    }

    public static void c(int i, int i2, com.huawei.hms.scankit.p.je jeVar) {
        for (int i3 = 0; i3 < 7; i3++) {
            int[] iArr = a[i3];
            for (int i4 = 0; i4 < 7; i4++) {
                jeVar.a(i + i4, i2 + i3, iArr[i4]);
            }
        }
    }

    public static void c(com.huawei.hms.scankit.p.je jeVar) throws com.huawei.hms.hmsscankit.WriterException {
        int length = a[0].length;
        c(0, 0, jeVar);
        c(jeVar.c() - length, 0, jeVar);
        c(0, jeVar.c() - length, jeVar);
        a(0, 7, jeVar);
        a(jeVar.c() - 8, 7, jeVar);
        a(0, jeVar.c() - 8, jeVar);
        d(7, 0, jeVar);
        d((jeVar.b() - 7) - 1, 0, jeVar);
        d(7, jeVar.b() - 7, jeVar);
    }

    public static void c(com.huawei.hms.scankit.p.C0242zc c0242zc, com.huawei.hms.scankit.p.je jeVar) {
        if (c0242zc.e() < 2) {
            return;
        }
        int iE = c0242zc.e() - 1;
        int[][] iArr = f777c;
        if (iE < iArr.length) {
            int[] iArr2 = iArr[iE];
            for (int i : iArr2) {
                if (i >= 0) {
                    for (int i2 : iArr2) {
                        if (i2 >= 0 && b(jeVar.a(i2, i))) {
                            b(i2 - 2, i - 2, jeVar);
                        }
                    }
                }
            }
        }
    }

    public static void d(int i, int i2, com.huawei.hms.scankit.p.je jeVar) throws com.huawei.hms.hmsscankit.WriterException {
        for (int i3 = 0; i3 < 7; i3++) {
            int i4 = i2 + i3;
            if (!b(jeVar.a(i, i4))) {
                throw new com.huawei.hms.hmsscankit.WriterException();
            }
            jeVar.a(i, i4, 0);
        }
    }

    public static void d(com.huawei.hms.scankit.p.je jeVar) {
        int i = 8;
        while (i < jeVar.c() - 8) {
            int i2 = i + 1;
            int i3 = i2 % 2;
            if (b(jeVar.a(i, 6))) {
                jeVar.a(i, 6, i3);
            }
            if (b(jeVar.a(6, i))) {
                jeVar.a(6, i, i3);
            }
            i = i2;
        }
    }
}
