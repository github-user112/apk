package e.a.b.b.b;

/* loaded from: classes.dex */
public final class y implements e.a.b.b.b.b {
    public final e.a.b.d.b.o a;
    public final int[] b;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.b.b.a f2391c;

    public y(e.a.b.d.b.o oVar, int[] iArr, e.a.b.b.b.a aVar) {
        if (oVar == null) {
            throw new java.lang.NullPointerException("method == null");
        }
        if (iArr == null) {
            throw new java.lang.NullPointerException("order == null");
        }
        if (aVar == null) {
            throw new java.lang.NullPointerException("addresses == null");
        }
        this.a = oVar;
        this.b = iArr;
        this.f2391c = aVar;
    }

    public static e.a.b.b.b.d.a a(e.a.b.d.b.a aVar, e.a.b.d.b.a aVar2, e.a.b.b.b.c cVar, e.a.b.b.b.a aVar3) {
        return new e.a.b.b.b.d.a(aVar3.b[aVar.a].c(), aVar3.f2340c[aVar2.a].c(), cVar);
    }
}
