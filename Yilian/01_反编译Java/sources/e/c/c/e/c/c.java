package e.c.c.e.c;

/* loaded from: classes.dex */
public final class c {
    public static final int[] a = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1};

    public static e.c.c.e.b.c a(int i, e.c.c.e.b.a aVar) throws e.c.c.c {
        for (int i2 = 1; i2 <= 40; i2++) {
            e.c.c.e.b.c cVarB = e.c.c.e.b.c.b(i2);
            if (c(i, cVarB, aVar)) {
                return cVarB;
            }
        }
        throw new e.c.c.c("Data too big");
    }

    public static int b(int i) {
        int[] iArr = a;
        if (i < iArr.length) {
            return iArr[i];
        }
        return -1;
    }

    public static boolean c(int i, e.c.c.e.b.c cVar, e.c.c.e.b.a aVar) {
        int i2 = cVar.f2800c;
        e.c.c.e.b.c.b bVar = cVar.b[aVar.ordinal()];
        return i2 - (bVar.a() * bVar.a) >= (i + 7) / 8;
    }
}
