package e.a.b.b.b;

/* loaded from: classes.dex */
public final class j {
    public final int a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2356c;

    /* renamed from: d, reason: collision with root package name */
    public final e.a.b.b.b.n f2357d;

    /* renamed from: e, reason: collision with root package name */
    public final boolean f2358e;

    public j(int i, int i2, int i3, e.a.b.b.b.n nVar, boolean z) {
        if (!d.s.y.R(i)) {
            throw new java.lang.IllegalArgumentException("bogus opcode");
        }
        if (!d.s.y.R(i2)) {
            throw new java.lang.IllegalArgumentException("bogus family");
        }
        if (!d.s.y.R(i3)) {
            throw new java.lang.IllegalArgumentException("bogus nextOpcode");
        }
        this.a = i;
        this.b = i2;
        this.f2356c = i3;
        this.f2357d = nVar;
        this.f2358e = z;
    }

    public java.lang.String a() {
        return e.a.b.c.b.a(this.a);
    }

    public java.lang.String toString() {
        return a();
    }
}
