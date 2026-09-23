package f.a.i.n;

/* loaded from: classes.dex */
public class d {
    public byte[] a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f2968c;

    public static boolean a(f.a.i.n.d dVar) {
        return dVar.b >= dVar.a.length;
    }

    public static int b(f.a.i.n.d dVar) {
        int iF = f(dVar);
        return (iF & 1) != 0 ? (iF + 1) / 2 : -(iF / 2);
    }

    public static int c(f.a.i.n.d dVar, int i) {
        int iD = 0;
        for (int i2 = 0; i2 < i; i2++) {
            iD |= d(dVar) << ((i - i2) - 1);
        }
        return iD;
    }

    public static int d(f.a.i.n.d dVar) {
        dVar.f2968c--;
        int i = !a(dVar) ? (dVar.a[dVar.b] >> dVar.f2968c) & 1 : 0;
        if (dVar.f2968c == 0) {
            dVar.b++;
            dVar.f2968c = 8;
        }
        return i;
    }

    public static int e(f.a.i.n.d dVar) {
        if (dVar.f2968c != 8 || a(dVar)) {
            return c(dVar, 8);
        }
        byte[] bArr = dVar.a;
        int i = dVar.b;
        byte b = bArr[i];
        dVar.b = i + 1;
        return b;
    }

    public static int f(f.a.i.n.d dVar) {
        int i = 0;
        while (d(dVar) == 0 && i < 32 && !a(dVar)) {
            i++;
        }
        return ((1 << i) - 1) + c(dVar, i);
    }

    public static void g(f.a.i.n.d dVar, int i) {
        int iB = 8;
        int i2 = 8;
        for (int i3 = 0; i3 < i; i3++) {
            if (iB != 0) {
                iB = ((b(dVar) + i2) + 256) % 256;
            }
            if (iB != 0) {
                i2 = iB;
            }
        }
    }

    public android.graphics.Point h(f.a.i.n.d dVar) {
        int iE = e(dVar);
        d(dVar);
        d(dVar);
        d(dVar);
        d(dVar);
        d(dVar);
        d(dVar);
        c(dVar, 2);
        e(dVar);
        f(dVar);
        if (iE == 100 || iE == 110 || iE == 122 || iE == 144) {
            if (f(dVar) == 3) {
                d(dVar);
            }
            f(dVar);
            f(dVar);
            d(dVar);
            if (d(dVar) != 0) {
                for (int i = 0; i < 8; i++) {
                    if (d(dVar) != 0) {
                        if (i < 6) {
                            g(dVar, 16);
                        } else {
                            g(dVar, 64);
                        }
                    }
                }
            }
        }
        f(dVar);
        int iF = f(dVar);
        if (iF == 0) {
            f(dVar);
        } else if (iF == 1) {
            d(dVar);
            b(dVar);
            b(dVar);
            int iF2 = f(dVar);
            for (int i2 = 0; i2 < iF2; i2++) {
                b(dVar);
            }
        }
        f(dVar);
        d(dVar);
        int iF3 = f(dVar);
        int iF4 = f(dVar);
        android.graphics.Point point = new android.graphics.Point();
        point.x = (iF3 + 1) * 16;
        point.y = (iF4 + 1) * 16;
        return point;
    }
}
