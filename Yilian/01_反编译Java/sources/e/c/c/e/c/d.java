package e.c.c.e.c;

/* loaded from: classes.dex */
public final class d {
    public static final int[][] a = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};
    public static final int[][] b = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};

    /* renamed from: c, reason: collision with root package name */
    public static final int[][] f2802c = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, 146, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, 158}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, 166}, new int[]{6, 30, 58, 86, 114, 142, com.tencent.tinker.android.dx.instruction.Opcodes.REM_FLOAT}};

    /* renamed from: d, reason: collision with root package name */
    public static final int[][] f2803d = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    /* JADX WARN: Removed duplicated region for block: B:107:0x023d  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0240  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x0244  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(e.c.c.d.a r19, e.c.c.e.b.a r20, e.c.c.e.b.c r21, int r22, e.c.c.e.c.b r23) throws e.c.c.c {
        /*
            Method dump skipped, instructions count: 728
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: e.c.c.e.c.d.a(e.c.c.d.a, e.c.c.e.b.a, e.c.c.e.b.c, int, e.c.c.e.c.b):void");
    }

    public static int b(int i, int i2) {
        if (i2 == 0) {
            throw new java.lang.IllegalArgumentException("0 polynomial");
        }
        int iF = f(i2);
        int iF2 = i << (iF - 1);
        while (f(iF2) >= iF) {
            iF2 ^= i2 << (f(iF2) - iF);
        }
        return iF2;
    }

    public static void c(int i, int i2, e.c.c.e.c.b bVar) throws e.c.c.c {
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = i + i3;
            if (!g(bVar.a(i4, i2))) {
                throw new e.c.c.c();
            }
            bVar.b(i4, i2, 0);
        }
    }

    public static void d(int i, int i2, e.c.c.e.c.b bVar) {
        for (int i3 = 0; i3 < 7; i3++) {
            for (int i4 = 0; i4 < 7; i4++) {
                bVar.b(i + i4, i2 + i3, a[i3][i4]);
            }
        }
    }

    public static void e(int i, int i2, e.c.c.e.c.b bVar) throws e.c.c.c {
        for (int i3 = 0; i3 < 7; i3++) {
            int i4 = i2 + i3;
            if (!g(bVar.a[i4][i])) {
                throw new e.c.c.c();
            }
            bVar.a[i4][i] = (byte) 0;
        }
    }

    public static int f(int i) {
        return 32 - java.lang.Integer.numberOfLeadingZeros(i);
    }

    public static boolean g(int i) {
        return i == -1;
    }
}
