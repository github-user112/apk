package e.a.b.d.c;

/* loaded from: classes.dex */
public final class q extends e.a.b.d.c.o {
    public static final e.a.b.d.c.q b = new e.a.b.d.c.q(0);

    public q(long j) {
        super(j);
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        return java.lang.Long.toString(this.a);
    }

    @Override // e.a.b.d.c.a
    public java.lang.String e() {
        return "long";
    }

    @Override // e.a.b.d.d.d
    public e.a.b.d.d.c getType() {
        return e.a.b.d.d.c.m;
    }

    public java.lang.String toString() {
        long j = this.a;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("long{0x");
        sbO.append(d.s.y.h0(j));
        sbO.append(" / ");
        sbO.append(j);
        sbO.append('}');
        return sbO.toString();
    }
}
