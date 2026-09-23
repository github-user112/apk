package e.a.b.d.c;

/* loaded from: classes.dex */
public final class e extends e.a.b.d.c.n {
    public static final e.a.b.d.c.e b = new e.a.b.d.c.e(false);

    /* renamed from: c, reason: collision with root package name */
    public static final e.a.b.d.c.e f2511c = new e.a.b.d.c.e(true);

    public e(boolean z) {
        super(z ? 1 : 0);
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        return this.a != 0 ? "true" : "false";
    }

    @Override // e.a.b.d.c.a
    public java.lang.String e() {
        return "boolean";
    }

    @Override // e.a.b.d.d.d
    public e.a.b.d.d.c getType() {
        return e.a.b.d.d.c.f2525g;
    }

    public java.lang.String toString() {
        return this.a != 0 ? "boolean{true}" : "boolean{false}";
    }
}
