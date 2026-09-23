package e.a.b.b.b.b0;

/* loaded from: classes.dex */
public final class v extends e.a.b.b.b.n {
    public static final e.a.b.b.b.n a = new e.a.b.b.b.b0.v();

    public static e.a.b.d.b.l x(e.a.b.d.b.l lVar) {
        int iY = y(lVar);
        int length = lVar.b.length;
        if (iY == length) {
            return lVar;
        }
        e.a.b.d.b.l lVar2 = new e.a.b.d.b.l(iY);
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            e.a.b.d.b.k kVarI = lVar.i(i2);
            lVar2.g(i, kVarI);
            if (kVarI.h() == 2) {
                lVar2.g(i + 1, e.a.b.d.b.k.i(kVarI.a + 1, e.a.b.d.d.c.o));
                i += 2;
            } else {
                i++;
            }
        }
        lVar2.a = false;
        return lVar2;
    }

    public static int y(e.a.b.d.b.l lVar) {
        int length = lVar.b.length;
        if (length > 5) {
            return -1;
        }
        int iH = 0;
        for (int i = 0; i < length; i++) {
            iH += lVar.i(i).h();
            if (!e.a.b.b.b.n.r((r5.h() + r5.a) - 1)) {
                return -1;
            }
        }
        if (iH <= 5) {
            return iH;
        }
        return -1;
    }

    @Override // e.a.b.b.b.n
    public int d() {
        return 3;
    }

    @Override // e.a.b.b.b.n
    public java.util.BitSet f(e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        int length = lVar.b.length;
        java.util.BitSet bitSet = new java.util.BitSet(length);
        for (int i = 0; i < length; i++) {
            e.a.b.d.b.k kVarI = lVar.i(i);
            bitSet.set(i, e.a.b.b.b.n.r((kVarI.h() + kVarI.a) - 1));
        }
        return bitSet;
    }

    @Override // e.a.b.b.b.n
    public java.lang.String i(e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVarX = x(hVar.f2354d);
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        int length = lVarX.b.length;
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer((length * 5) + 2);
        stringBuffer.append('{');
        for (int i = 0; i < length; i++) {
            if (i != 0) {
                stringBuffer.append(", ");
            }
            stringBuffer.append(lVarX.i(i).l());
        }
        stringBuffer.append('}');
        sb.append(stringBuffer.toString());
        sb.append(", ");
        sb.append(e.a.b.b.b.n.h(hVar));
        return sb.toString();
    }

    @Override // e.a.b.b.b.n
    public java.lang.String j(e.a.b.b.b.h hVar, boolean z) {
        return z ? e.a.b.b.b.n.g(hVar) : "";
    }

    @Override // e.a.b.b.b.n
    public boolean k(e.a.b.b.b.h hVar) {
        if (!(hVar instanceof e.a.b.b.b.f)) {
            return false;
        }
        e.a.b.b.b.f fVar = (e.a.b.b.b.f) hVar;
        if (!e.a.b.b.b.n.s(fVar.l())) {
            return false;
        }
        e.a.b.d.c.a aVar = fVar.f2345e;
        return ((aVar instanceof e.a.b.d.c.s) || (aVar instanceof e.a.b.d.c.w)) && y(fVar.f2354d) >= 0;
    }

    @Override // e.a.b.b.b.n
    public void w(e.a.b.f.a aVar, e.a.b.b.b.h hVar) {
        int iL = ((e.a.b.b.b.f) hVar).l();
        e.a.b.d.b.l lVarX = x(hVar.f2354d);
        int length = lVarX.b.length;
        int i = length > 0 ? lVarX.i(0).a : 0;
        int i2 = length > 1 ? lVarX.i(1).a : 0;
        int i3 = length > 2 ? lVarX.i(2).a : 0;
        int i4 = length > 3 ? lVarX.i(3).a : 0;
        short sO = e.a.b.b.b.n.o(hVar, e.a.b.b.b.n.n(length > 4 ? lVarX.i(4).a : 0, length));
        short s = (short) iL;
        if ((i & 15) != i) {
            throw new java.lang.IllegalArgumentException("n0 out of range 0..15");
        }
        if ((i2 & 15) != i2) {
            throw new java.lang.IllegalArgumentException("n1 out of range 0..15");
        }
        if ((i3 & 15) != i3) {
            throw new java.lang.IllegalArgumentException("n2 out of range 0..15");
        }
        if ((i4 & 15) != i4) {
            throw new java.lang.IllegalArgumentException("n3 out of range 0..15");
        }
        e.a.b.b.b.n.v(aVar, sO, s, (short) ((i2 << 4) | i | (i3 << 8) | (i4 << 12)));
    }
}
