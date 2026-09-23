package e.a.b.d.c;

/* loaded from: classes.dex */
public abstract class d extends e.a.b.d.c.r {

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.d.d.a f2509c;

    /* renamed from: d, reason: collision with root package name */
    public e.a.b.d.d.a f2510d;

    public d(e.a.b.d.c.w wVar, e.a.b.d.c.t tVar) {
        super(wVar, tVar);
        this.f2509c = e.a.b.d.d.a.c(this.b.b.a);
        this.f2510d = null;
    }

    @Override // e.a.b.d.c.r, e.a.b.d.c.a
    public final int d(e.a.b.d.c.a aVar) {
        int iD = super.d(aVar);
        return iD != 0 ? iD : this.f2509c.compareTo(((e.a.b.d.c.d) aVar).f2509c);
    }

    public final int f(boolean z) {
        e.a.b.d.d.a aVar;
        if (z) {
            aVar = this.f2509c;
        } else {
            if (this.f2510d == null) {
                e.a.b.d.d.c cVar = this.a.a;
                e.a.b.d.d.a aVar2 = this.f2509c;
                if (aVar2 == null) {
                    throw null;
                }
                java.lang.StringBuilder sbO = e.a.c.a.a.o("(");
                sbO.append(cVar.a);
                sbO.append(aVar2.a.substring(1));
                java.lang.String string = sbO.toString();
                e.a.b.d.d.b bVar = aVar2.f2517c;
                int length = bVar.b.length;
                e.a.b.d.d.b bVar2 = new e.a.b.d.d.b(length + 1);
                bVar2.g(0, cVar);
                int i = 0;
                while (i < length) {
                    int i2 = i + 1;
                    bVar2.g(i2, bVar.b[i]);
                    i = i2;
                }
                bVar2.a = false;
                this.f2510d = e.a.b.d.d.a.d(new e.a.b.d.d.a(string, aVar2.b, bVar2));
            }
            aVar = this.f2510d;
        }
        return aVar.f2517c.k();
    }

    @Override // e.a.b.d.d.d
    public final e.a.b.d.d.c getType() {
        return this.f2509c.b;
    }
}
