package e.a.b.b.b.b0;

/* loaded from: classes.dex */
public final class e extends e.a.b.b.b.n {
    public static final e.a.b.b.b.n a = new e.a.b.b.b.b0.e();

    @Override // e.a.b.b.b.n
    public int d() {
        return 1;
    }

    @Override // e.a.b.b.b.n
    public java.util.BitSet f(e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        java.util.BitSet bitSet = new java.util.BitSet(2);
        int i = lVar.i(0).a;
        int i2 = lVar.i(1).a;
        int length = lVar.b.length;
        if (length == 2) {
            bitSet.set(0, e.a.b.b.b.n.r(i));
            bitSet.set(1, e.a.b.b.b.n.r(i2));
        } else {
            if (length != 3) {
                throw new java.lang.AssertionError();
            }
            if (i != i2) {
                bitSet.set(0, false);
                bitSet.set(1, false);
            } else {
                boolean zR = e.a.b.b.b.n.r(i2);
                bitSet.set(0, zR);
                bitSet.set(1, zR);
            }
            bitSet.set(2, e.a.b.b.b.n.r(lVar.i(2).a));
        }
        return bitSet;
    }

    @Override // e.a.b.b.b.n
    public java.lang.String i(e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        int length = lVar.b.length;
        return lVar.i(length - 2).l() + ", " + lVar.i(length - 1).l();
    }

    @Override // e.a.b.b.b.n
    public java.lang.String j(e.a.b.b.b.h hVar, boolean z) {
        return "";
    }

    @Override // e.a.b.b.b.n
    public boolean k(e.a.b.b.b.h hVar) {
        e.a.b.d.b.k kVarI;
        e.a.b.d.b.k kVarI2;
        if (!(hVar instanceof e.a.b.b.b.x)) {
            return false;
        }
        e.a.b.d.b.l lVar = hVar.f2354d;
        int length = lVar.b.length;
        if (length == 2) {
            kVarI = lVar.i(0);
            kVarI2 = lVar.i(1);
        } else {
            if (length != 3) {
                return false;
            }
            kVarI = lVar.i(1);
            kVarI2 = lVar.i(2);
            if (kVarI.a != lVar.i(0).a) {
                return false;
            }
        }
        return e.a.b.b.b.n.r(kVarI.a) && e.a.b.b.b.n.r(kVarI2.a);
    }

    @Override // e.a.b.b.b.n
    public void w(e.a.b.f.a aVar, e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        int length = lVar.b.length;
        ((e.a.b.f.c) aVar).l(e.a.b.b.b.n.o(hVar, e.a.b.b.b.n.n(lVar.i(length - 2).a, lVar.i(length - 1).a)));
    }
}
