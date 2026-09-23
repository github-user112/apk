package e.a.b.d.c;

/* loaded from: classes.dex */
public final class k extends e.a.b.d.c.n {
    public static final e.a.b.d.c.k b = new e.a.b.d.c.k(java.lang.Float.floatToIntBits(0.0f));

    static {
        java.lang.Float.floatToIntBits(1.0f);
        java.lang.Float.floatToIntBits(2.0f);
    }

    public k(int i) {
        super(i);
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        return java.lang.Float.toString(java.lang.Float.intBitsToFloat(this.a));
    }

    @Override // e.a.b.d.c.a
    public java.lang.String e() {
        return "float";
    }

    @Override // e.a.b.d.d.d
    public e.a.b.d.d.c getType() {
        return e.a.b.d.d.c.k;
    }

    public java.lang.String toString() {
        int i = this.a;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("float{0x");
        sbO.append(d.s.y.g0(i));
        sbO.append(" / ");
        sbO.append(java.lang.Float.intBitsToFloat(i));
        sbO.append('}');
        return sbO.toString();
    }
}
