package e.a.b.b.b;

/* loaded from: classes.dex */
public final class z extends e.a.b.b.b.l {

    /* renamed from: e, reason: collision with root package name */
    public e.a.b.b.b.e f2392e;

    public z(e.a.b.b.b.j jVar, e.a.b.d.b.q qVar, e.a.b.d.b.l lVar, e.a.b.b.b.e eVar) {
        super(jVar, qVar, lVar);
        if (eVar == null) {
            throw new java.lang.NullPointerException("target == null");
        }
        this.f2392e = eVar;
    }

    @Override // e.a.b.b.b.h
    public java.lang.String a() {
        e.a.b.b.b.e eVar = this.f2392e;
        return eVar == null ? "????" : eVar.d();
    }

    @Override // e.a.b.b.b.h
    public e.a.b.b.b.h h(e.a.b.b.b.j jVar) {
        return new e.a.b.b.b.z(jVar, this.f2353c, this.f2354d, this.f2392e);
    }

    @Override // e.a.b.b.b.h
    public e.a.b.b.b.h j(e.a.b.d.b.l lVar) {
        return new e.a.b.b.b.z(this.b, this.f2353c, lVar, this.f2392e);
    }

    public int l() {
        return this.f2392e.c() - c();
    }

    public boolean m() {
        if (this.a >= 0) {
            return this.f2392e.a >= 0;
        }
        return false;
    }

    public e.a.b.b.b.z n(e.a.b.b.b.e eVar) {
        e.a.b.b.b.j jVar;
        e.a.b.b.b.j jVar2 = this.b;
        switch (jVar2.a) {
            case 50:
                jVar = e.a.b.b.b.k.b0;
                break;
            case 51:
                jVar = e.a.b.b.b.k.a0;
                break;
            case 52:
                jVar = e.a.b.b.b.k.d0;
                break;
            case 53:
                jVar = e.a.b.b.b.k.c0;
                break;
            case 54:
                jVar = e.a.b.b.b.k.f0;
                break;
            case 55:
                jVar = e.a.b.b.b.k.e0;
                break;
            case 56:
                jVar = e.a.b.b.b.k.h0;
                break;
            case 57:
                jVar = e.a.b.b.b.k.g0;
                break;
            case 58:
                jVar = e.a.b.b.b.k.j0;
                break;
            case 59:
                jVar = e.a.b.b.b.k.i0;
                break;
            case 60:
                jVar = e.a.b.b.b.k.l0;
                break;
            case 61:
                jVar = e.a.b.b.b.k.k0;
                break;
            default:
                throw new java.lang.IllegalArgumentException("bogus opcode: " + jVar2);
        }
        return new e.a.b.b.b.z(jVar, this.f2353c, this.f2354d, eVar);
    }
}
