package e.a.b.d.c;

/* loaded from: classes.dex */
public final class f extends e.a.b.d.c.n {
    public static final e.a.b.d.c.f b = new e.a.b.d.c.f((byte) 0);

    public f(byte b2) {
        super(b2);
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        return java.lang.Integer.toString(this.a);
    }

    @Override // e.a.b.d.c.a
    public java.lang.String e() {
        return "byte";
    }

    @Override // e.a.b.d.d.d
    public e.a.b.d.d.c getType() {
        return e.a.b.d.d.c.h;
    }

    public java.lang.String toString() {
        int i = this.a;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("byte{0x");
        sbO.append(d.s.y.d0(i));
        sbO.append(" / ");
        sbO.append(i);
        sbO.append('}');
        return sbO.toString();
    }
}
