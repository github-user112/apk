package e.a.b.d.c;

/* loaded from: classes.dex */
public final class l extends e.a.b.d.c.n {
    public static final e.a.b.d.c.l[] b = new e.a.b.d.c.l[511];

    /* renamed from: c, reason: collision with root package name */
    public static final e.a.b.d.c.l f2513c;

    static {
        i(-1);
        f2513c = i(0);
        i(1);
        i(2);
        i(3);
        i(4);
        i(5);
    }

    public l(int i) {
        super(i);
    }

    public static e.a.b.d.c.l i(int i) {
        e.a.b.d.c.l[] lVarArr = b;
        int length = (Integer.MAX_VALUE & i) % lVarArr.length;
        e.a.b.d.c.l lVar = lVarArr[length];
        if (lVar != null && lVar.a == i) {
            return lVar;
        }
        e.a.b.d.c.l lVar2 = new e.a.b.d.c.l(i);
        b[length] = lVar2;
        return lVar2;
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        return java.lang.Integer.toString(this.a);
    }

    @Override // e.a.b.d.c.a
    public java.lang.String e() {
        return "int";
    }

    @Override // e.a.b.d.d.d
    public e.a.b.d.d.c getType() {
        return e.a.b.d.d.c.l;
    }

    public java.lang.String toString() {
        int i = this.a;
        java.lang.StringBuilder sbO = e.a.c.a.a.o("int{0x");
        sbO.append(d.s.y.g0(i));
        sbO.append(" / ");
        sbO.append(i);
        sbO.append('}');
        return sbO.toString();
    }
}
