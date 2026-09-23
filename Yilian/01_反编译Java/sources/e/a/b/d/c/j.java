package e.a.b.d.c;

/* loaded from: classes.dex */
public final class j extends e.a.b.d.c.r {
    public j(e.a.b.d.c.w wVar, e.a.b.d.c.t tVar) {
        super(wVar, tVar);
    }

    @Override // e.a.b.d.c.r, e.a.b.d.c.a
    public int d(e.a.b.d.c.a aVar) {
        int iD = super.d(aVar);
        return iD != 0 ? iD : this.b.b.compareTo(((e.a.b.d.c.j) aVar).b.b);
    }

    @Override // e.a.b.d.c.a
    public java.lang.String e() {
        return "field";
    }

    @Override // e.a.b.d.d.d
    public e.a.b.d.d.c getType() {
        return e.a.b.d.d.c.h(this.b.b.a);
    }
}
