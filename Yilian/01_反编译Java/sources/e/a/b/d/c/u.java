package e.a.b.d.c;

/* loaded from: classes.dex */
public final class u extends e.a.b.d.c.n {
    public static final e.a.b.d.c.u b = new e.a.b.d.c.u(0);

    public u(short s) {
        super(s);
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        return java.lang.Integer.toString(this.a);
    }

    @Override // e.a.b.d.c.a
    public java.lang.String e() {
        return "short";
    }

    @Override // e.a.b.d.d.d
    public e.a.b.d.d.c getType() {
        return e.a.b.d.d.c.n;
    }

    public java.lang.String toString() {
        int i = this.a;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("short{0x");
        sbO.append(d.s.y.e0(i));
        sbO.append(" / ");
        sbO.append(i);
        sbO.append('}');
        return sbO.toString();
    }
}
