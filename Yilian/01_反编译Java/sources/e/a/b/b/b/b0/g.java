package e.a.b.b.b.b0;

/* loaded from: classes.dex */
public final class g extends e.a.b.b.b.n {
    public static final e.a.b.b.b.n a = new e.a.b.b.b.b0.g();

    @Override // e.a.b.b.b.n
    public int d() {
        return 2;
    }

    @Override // e.a.b.b.b.n
    public java.util.BitSet f(e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        int length = lVar.b.length;
        java.util.BitSet bitSet = new java.util.BitSet(length);
        boolean zQ = e.a.b.b.b.n.q(lVar.i(0).a);
        if (length == 1) {
            bitSet.set(0, zQ);
        } else if (lVar.i(0).a == lVar.i(1).a) {
            bitSet.set(0, zQ);
            bitSet.set(1, zQ);
        }
        return bitSet;
    }

    @Override // e.a.b.b.b.n
    public java.lang.String i(e.a.b.b.b.h hVar) {
        return hVar.f2354d.i(0).l() + ", " + e.a.b.b.b.n.h(hVar);
    }

    @Override // e.a.b.b.b.n
    public java.lang.String j(e.a.b.b.b.h hVar, boolean z) {
        return z ? e.a.b.b.b.n.g(hVar) : "";
    }

    @Override // e.a.b.b.b.n
    public boolean k(e.a.b.b.b.h hVar) {
        e.a.b.d.b.k kVarI;
        if (!(hVar instanceof e.a.b.b.b.f)) {
            return false;
        }
        e.a.b.d.b.l lVar = hVar.f2354d;
        int length = lVar.b.length;
        if (length == 1) {
            kVarI = lVar.i(0);
        } else {
            if (length != 2) {
                return false;
            }
            kVarI = lVar.i(0);
            if (kVarI.a != lVar.i(1).a) {
                return false;
            }
        }
        if (!e.a.b.b.b.n.q(kVarI.a)) {
            return false;
        }
        e.a.b.b.b.f fVar = (e.a.b.b.b.f) hVar;
        int iL = fVar.l();
        e.a.b.d.c.a aVar = fVar.f2345e;
        if (e.a.b.b.b.n.s(iL)) {
            return (aVar instanceof e.a.b.d.c.w) || (aVar instanceof e.a.b.d.c.j) || (aVar instanceof e.a.b.d.c.v);
        }
        return false;
    }

    @Override // e.a.b.b.b.n
    public void w(e.a.b.f.a aVar, e.a.b.b.b.h hVar) {
        e.a.b.b.b.n.u(aVar, e.a.b.b.b.n.o(hVar, hVar.f2354d.i(0).a), (short) ((e.a.b.b.b.f) hVar).l());
    }
}
