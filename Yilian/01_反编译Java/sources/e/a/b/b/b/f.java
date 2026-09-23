package e.a.b.b.b;

/* loaded from: classes.dex */
public final class f extends e.a.b.b.b.l {

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.d.c.a f2345e;

    /* renamed from: f, reason: collision with root package name */
    public int f2346f;

    /* renamed from: g, reason: collision with root package name */
    public int f2347g;

    public f(e.a.b.b.b.j jVar, e.a.b.d.b.q qVar, e.a.b.d.b.l lVar, e.a.b.d.c.a aVar) {
        super(jVar, qVar, lVar);
        if (aVar == null) {
            throw new java.lang.NullPointerException("constant == null");
        }
        this.f2345e = aVar;
        this.f2346f = -1;
        this.f2347g = -1;
    }

    @Override // e.a.b.b.b.h
    public java.lang.String a() {
        return this.f2345e.a();
    }

    @Override // e.a.b.b.b.h
    public e.a.b.b.b.h h(e.a.b.b.b.j jVar) {
        e.a.b.b.b.f fVar = new e.a.b.b.b.f(jVar, this.f2353c, this.f2354d, this.f2345e);
        int i = this.f2346f;
        if (i >= 0) {
            fVar.n(i);
        }
        int i2 = this.f2347g;
        if (i2 >= 0) {
            fVar.m(i2);
        }
        return fVar;
    }

    @Override // e.a.b.b.b.h
    public e.a.b.b.b.h j(e.a.b.d.b.l lVar) {
        e.a.b.b.b.f fVar = new e.a.b.b.b.f(this.b, this.f2353c, lVar, this.f2345e);
        int i = this.f2346f;
        if (i >= 0) {
            fVar.n(i);
        }
        int i2 = this.f2347g;
        if (i2 >= 0) {
            fVar.m(i2);
        }
        return fVar;
    }

    public int l() {
        int i = this.f2346f;
        if (i >= 0) {
            return i;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("index not yet set for ");
        sbO.append(this.f2345e);
        throw new java.lang.RuntimeException(sbO.toString());
    }

    public void m(int i) {
        if (i < 0) {
            throw new java.lang.IllegalArgumentException("index < 0");
        }
        if (this.f2347g >= 0) {
            throw new java.lang.RuntimeException("class index already set");
        }
        this.f2347g = i;
    }

    public void n(int i) {
        if (i < 0) {
            throw new java.lang.IllegalArgumentException("index < 0");
        }
        if (this.f2346f >= 0) {
            throw new java.lang.RuntimeException("index already set");
        }
        this.f2346f = i;
    }
}
