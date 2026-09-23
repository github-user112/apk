package e.a.b.b.b.b0;

/* loaded from: classes.dex */
public final class f extends e.a.b.b.b.n {
    public static final e.a.b.b.b.n a = new e.a.b.b.b.b0.f();

    @Override // e.a.b.b.b.n
    public boolean b(e.a.b.b.b.z zVar) {
        int iL = zVar.l();
        return iL != 0 && e.a.b.b.b.n.p(iL);
    }

    @Override // e.a.b.b.b.n
    public int d() {
        return 2;
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
        boolean z = false;
        if (!(hVar instanceof e.a.b.b.b.z) || hVar.f2354d.b.length != 0) {
            return false;
        }
        e.a.b.b.b.z zVar = (e.a.b.b.b.z) hVar;
        if (!zVar.m()) {
            return true;
        }
        int iL = zVar.l();
        if (iL != 0 && e.a.b.b.b.n.p(iL)) {
            z = true;
        }
        return z;
    }

    @Override // e.a.b.b.b.n
    public void w(e.a.b.f.a aVar, e.a.b.b.b.h hVar) {
        e.a.b.b.b.n.u(aVar, e.a.b.b.b.n.o(hVar, 0), (short) ((e.a.b.b.b.z) hVar).l());
    }
}
