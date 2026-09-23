package e.a.b.d.c;

/* loaded from: classes.dex */
public final class h extends e.a.b.d.c.o {
    public static final e.a.b.d.c.h b = new e.a.b.d.c.h(java.lang.Double.doubleToLongBits(0.0d));

    static {
        java.lang.Double.doubleToLongBits(1.0d);
    }

    public h(long j) {
        super(j);
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        return java.lang.Double.toString(java.lang.Double.longBitsToDouble(this.a));
    }

    @Override // e.a.b.d.c.a
    public java.lang.String e() {
        return "double";
    }

    @Override // e.a.b.d.d.d
    public e.a.b.d.d.c getType() {
        return e.a.b.d.d.c.j;
    }

    public java.lang.String toString() {
        long j = this.a;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("double{0x");
        sbO.append(d.s.y.h0(j));
        sbO.append(" / ");
        sbO.append(java.lang.Double.longBitsToDouble(j));
        sbO.append('}');
        return sbO.toString();
    }
}
