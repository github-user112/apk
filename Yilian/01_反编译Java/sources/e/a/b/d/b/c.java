package e.a.b.d.b;

/* loaded from: classes.dex */
public abstract class c extends e.a.b.d.b.e {

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.d.c.a f2479e;

    public c(e.a.b.d.b.n nVar, e.a.b.d.b.q qVar, e.a.b.d.b.k kVar, e.a.b.d.b.l lVar, e.a.b.d.c.a aVar) {
        super(nVar, qVar, kVar, lVar);
        if (aVar == null) {
            throw new java.lang.NullPointerException("cst == null");
        }
        this.f2479e = aVar;
    }

    @Override // e.a.b.d.b.e
    public java.lang.String e() {
        return this.f2479e.a();
    }
}
