package e.a.b.d.b;

/* loaded from: classes.dex */
public final class s extends e.a.b.d.b.e {

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.d.d.e f2508e;

    public s(e.a.b.d.b.n nVar, e.a.b.d.b.q qVar, e.a.b.d.b.l lVar, e.a.b.d.d.e eVar) {
        super(nVar, qVar, null, lVar);
        if (nVar.f2495e != 6) {
            throw new java.lang.IllegalArgumentException("bogus branchingness");
        }
        if (eVar == null) {
            throw new java.lang.NullPointerException("catches == null");
        }
        this.f2508e = eVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static java.lang.String f(e.a.b.d.d.e eVar) {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(100);
        stringBuffer.append("catch");
        int length = ((e.a.b.f.d) eVar).b.length;
        for (int i = 0; i < length; i++) {
            stringBuffer.append(" ");
            stringBuffer.append(eVar.b(i).a());
        }
        return stringBuffer.toString();
    }

    @Override // e.a.b.d.b.e
    public void b(e.a.b.d.b.e.b bVar) {
        bVar.c(this);
    }

    @Override // e.a.b.d.b.e
    public e.a.b.d.d.e d() {
        return this.f2508e;
    }

    @Override // e.a.b.d.b.e
    public java.lang.String e() {
        return f(this.f2508e);
    }
}
