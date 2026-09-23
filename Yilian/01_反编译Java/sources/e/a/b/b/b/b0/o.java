package e.a.b.b.b.b0;

/* loaded from: classes.dex */
public final class o extends e.a.b.b.b.n {
    public static final e.a.b.b.b.n a = new e.a.b.b.b.b0.o();

    @Override // e.a.b.b.b.n
    public int d() {
        return 2;
    }

    @Override // e.a.b.b.b.n
    public java.util.BitSet f(e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        java.util.BitSet bitSet = new java.util.BitSet(2);
        bitSet.set(0, e.a.b.b.b.n.q(lVar.i(0).a));
        bitSet.set(1, e.a.b.b.b.n.s(lVar.i(1).a));
        return bitSet;
    }

    @Override // e.a.b.b.b.n
    public java.lang.String i(e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        return lVar.i(0).l() + ", " + lVar.i(1).l();
    }

    @Override // e.a.b.b.b.n
    public java.lang.String j(e.a.b.b.b.h hVar, boolean z) {
        return "";
    }

    @Override // e.a.b.b.b.n
    public boolean k(e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        return (hVar instanceof e.a.b.b.b.x) && lVar.b.length == 2 && e.a.b.b.b.n.q(lVar.i(0).a) && e.a.b.b.b.n.s(lVar.i(1).a);
    }

    @Override // e.a.b.b.b.n
    public void w(e.a.b.f.a aVar, e.a.b.b.b.h hVar) {
        e.a.b.d.b.l lVar = hVar.f2354d;
        e.a.b.b.b.n.u(aVar, e.a.b.b.b.n.o(hVar, lVar.i(0).a), (short) lVar.i(1).a);
    }
}
