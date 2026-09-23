package f.a.j;

/* loaded from: classes.dex */
public final class g<T> {
    public final f.a.j.b a;
    public final f.a.j.k<T> b;

    /* renamed from: c, reason: collision with root package name */
    public int f3010c = -1;

    /* renamed from: d, reason: collision with root package name */
    public e.a.b.d.b.k f3011d;

    public g(f.a.j.b bVar, f.a.j.k<T> kVar) {
        this.a = bVar;
        this.b = kVar;
    }

    public int a(int i) {
        this.f3010c = i;
        this.f3011d = e.a.b.d.b.k.i(i, this.b.b);
        return this.b.b.f();
    }

    public e.a.b.d.b.k b() {
        if (this.f3011d == null) {
            this.a.g();
            if (this.f3011d == null) {
                throw new java.lang.AssertionError();
            }
        }
        return this.f3011d;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("v");
        sbO.append(this.f3010c);
        sbO.append("(");
        sbO.append(this.b);
        sbO.append(")");
        return sbO.toString();
    }
}
