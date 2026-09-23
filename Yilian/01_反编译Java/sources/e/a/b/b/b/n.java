package e.a.b.b.b;

/* loaded from: classes.dex */
public abstract class n {
    public static java.lang.String a(e.a.b.b.b.h hVar) {
        int iL = ((e.a.b.b.b.z) hVar).l();
        int i = 0;
        if (iL == ((short) iL)) {
            char[] cArr = new char[5];
            if (iL < 0) {
                cArr[0] = '-';
                iL = -iL;
            } else {
                cArr[0] = '+';
            }
            while (i < 4) {
                cArr[4 - i] = java.lang.Character.forDigit(iL & 15, 16);
                iL >>= 4;
                i++;
            }
            return new java.lang.String(cArr);
        }
        char[] cArr2 = new char[9];
        if (iL < 0) {
            cArr2[0] = '-';
            iL = -iL;
        } else {
            cArr2[0] = '+';
        }
        while (i < 8) {
            cArr2[8 - i] = java.lang.Character.forDigit(iL & 15, 16);
            iL >>= 4;
            i++;
        }
        return new java.lang.String(cArr2);
    }

    public static java.lang.String c(e.a.b.b.b.h hVar) {
        int iC = ((e.a.b.b.b.z) hVar).f2392e.c();
        return iC == ((char) iC) ? d.s.y.e0(iC) : d.s.y.g0(iC);
    }

    public static short e(int i, int i2) {
        if ((i & 255) != i) {
            throw new java.lang.IllegalArgumentException("low out of range 0..255");
        }
        if ((i2 & 255) == i2) {
            return (short) (i | (i2 << 8));
        }
        throw new java.lang.IllegalArgumentException("high out of range 0..255");
    }

    public static java.lang.String g(e.a.b.b.b.h hVar) {
        e.a.b.b.b.f fVar = (e.a.b.b.b.f) hVar;
        if (!(fVar.f2346f >= 0)) {
            return "";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(20);
        int iL = fVar.l();
        sb.append(fVar.f2345e.e());
        sb.append('@');
        sb.append(iL < 65536 ? d.s.y.e0(iL) : d.s.y.g0(iL));
        return sb.toString();
    }

    public static java.lang.String h(e.a.b.b.b.h hVar) {
        e.a.b.d.c.a aVar = ((e.a.b.b.b.f) hVar).f2345e;
        return aVar instanceof e.a.b.d.c.v ? ((e.a.b.d.c.v) aVar).f() : aVar.a();
    }

    public static java.lang.String l(e.a.b.d.c.p pVar, int i) {
        java.lang.String str;
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(20);
        stringBuffer.append("#");
        long jG = pVar instanceof e.a.b.d.c.o ? ((e.a.b.d.c.o) pVar).a : pVar.g();
        if (i == 4) {
            str = new java.lang.String(new char[]{java.lang.Character.forDigit(((int) jG) & 15, 16)});
        } else if (i == 8) {
            str = d.s.y.d0((int) jG);
        } else if (i == 16) {
            str = d.s.y.e0((int) jG);
        } else if (i == 32) {
            str = d.s.y.g0((int) jG);
        } else {
            if (i != 64) {
                throw new java.lang.RuntimeException("shouldn't happen");
            }
            str = d.s.y.h0(jG);
        }
        stringBuffer.append(str);
        return stringBuffer.toString();
    }

    public static java.lang.String m(e.a.b.d.c.p pVar) {
        java.lang.String strA;
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(100);
        stringBuffer.append('#');
        if (pVar instanceof e.a.b.d.c.m) {
            strA = "null";
        } else {
            stringBuffer.append(pVar.e());
            stringBuffer.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            strA = pVar.a();
        }
        stringBuffer.append(strA);
        return stringBuffer.toString();
    }

    public static int n(int i, int i2) {
        if ((i & 15) != i) {
            throw new java.lang.IllegalArgumentException("low out of range 0..15");
        }
        if ((i2 & 15) == i2) {
            return i | (i2 << 4);
        }
        throw new java.lang.IllegalArgumentException("high out of range 0..15");
    }

    public static short o(e.a.b.b.b.h hVar, int i) {
        if ((i & 255) != i) {
            throw new java.lang.IllegalArgumentException("arg out of range 0..255");
        }
        int i2 = hVar.b.a;
        if ((i2 & 255) == i2) {
            return (short) (i2 | (i << 8));
        }
        throw new java.lang.IllegalArgumentException("opcode out of range 0..255");
    }

    public static boolean p(int i) {
        return ((short) i) == i;
    }

    public static boolean q(int i) {
        return i == (i & 255);
    }

    public static boolean r(int i) {
        return i == (i & 15);
    }

    public static boolean s(int i) {
        return i == (65535 & i);
    }

    public static void t(e.a.b.f.a aVar, short s, int i) {
        v(aVar, s, (short) i, (short) (i >> 16));
    }

    public static void u(e.a.b.f.a aVar, short s, short s2) {
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        cVar.l(s);
        cVar.l(s2);
    }

    public static void v(e.a.b.f.a aVar, short s, short s2, short s3) {
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        cVar.l(s);
        cVar.l(s2);
        cVar.l(s3);
    }

    public boolean b(e.a.b.b.b.z zVar) {
        return false;
    }

    public abstract int d();

    public java.util.BitSet f(e.a.b.b.b.h hVar) {
        return new java.util.BitSet();
    }

    public abstract java.lang.String i(e.a.b.b.b.h hVar);

    public abstract java.lang.String j(e.a.b.b.b.h hVar, boolean z);

    public abstract boolean k(e.a.b.b.b.h hVar);

    public abstract void w(e.a.b.f.a aVar, e.a.b.b.b.h hVar);
}
