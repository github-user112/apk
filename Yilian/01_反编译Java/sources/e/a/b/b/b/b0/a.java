package e.a.b.b.b.b0;

/* loaded from: classes.dex */
public final class a extends e.a.b.b.b.n {
    public static final e.a.b.b.b.n a = new e.a.b.b.b.b0.a();

    @Override // e.a.b.b.b.n
    public boolean b(e.a.b.b.b.z zVar) {
        int iL = zVar.l();
        if (iL != 0) {
            return ((byte) iL) == iL;
        }
        return false;
    }

    @Override // e.a.b.b.b.n
    public int d() {
        return 1;
    }

    @Override // e.a.b.b.b.n
    public java.lang.String i(e.a.b.b.b.h hVar) {
        return e.a.b.b.b.n.c(hVar);
    }

    @Override // e.a.b.b.b.n
    public java.lang.String j(e.a.b.b.b.h hVar, boolean z) {
        return e.a.b.b.b.n.a(hVar);
    }

    @Override // e.a.b.b.b.n
    public boolean k(e.a.b.b.b.h hVar) {
        if (!(hVar instanceof e.a.b.b.b.z) || hVar.f2354d.b.length != 0) {
            return false;
        }
        e.a.b.b.b.z zVar = (e.a.b.b.b.z) hVar;
        if (zVar.m()) {
            return b(zVar);
        }
        return true;
    }

    @Override // e.a.b.b.b.n
    public void w(e.a.b.f.a aVar, e.a.b.b.b.h hVar) {
        ((e.a.b.f.c) aVar).l(e.a.b.b.b.n.o(hVar, ((e.a.b.b.b.z) hVar).l() & 255));
    }
}
