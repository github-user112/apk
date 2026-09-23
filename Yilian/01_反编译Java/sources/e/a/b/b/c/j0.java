package e.a.b.b.c;

/* loaded from: classes.dex */
public final class j0 extends e.a.b.b.c.x {
    public final e.a.b.d.d.a b;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.d.c.v f2425c;

    /* renamed from: d, reason: collision with root package name */
    public e.a.b.b.c.r0 f2426d;

    public j0(e.a.b.d.d.a aVar) {
        this.b = aVar;
        e.a.b.d.d.b bVar = aVar.f2517c;
        int length = bVar.b.length;
        java.lang.StringBuilder sb = new java.lang.StringBuilder(length + 1);
        char cCharAt = aVar.b.a.charAt(0);
        sb.append(cCharAt == '[' ? 'L' : cCharAt);
        for (int i = 0; i < length; i++) {
            char cCharAt2 = bVar.b(i).a.charAt(0);
            if (cCharAt2 == '[') {
                cCharAt2 = 'L';
            }
            sb.append(cCharAt2);
        }
        this.f2425c = new e.a.b.d.c.v(sb.toString());
        e.a.b.d.d.b bVar2 = aVar.f2517c;
        this.f2426d = bVar2.b.length == 0 ? null : new e.a.b.b.c.r0(bVar2);
    }

    @Override // e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
        e.a.b.b.c.o0 o0Var = mVar.f2442f;
        e.a.b.b.c.q0 q0Var = mVar.f2443g;
        e.a.b.b.c.g0 g0Var = mVar.f2439c;
        q0Var.p(this.b.b);
        o0Var.n(this.f2425c);
        e.a.b.b.c.r0 r0Var = this.f2426d;
        if (r0Var != null) {
            this.f2426d = (e.a.b.b.c.r0) g0Var.m(r0Var);
        }
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_PROTO_ID_ITEM;
    }

    @Override // e.a.b.b.c.y
    public int c() {
        return 12;
    }

    @Override // e.a.b.b.c.y
    public void d(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        int iM = mVar.f2442f.m(this.f2425c);
        int iN = mVar.f2443g.n(this.b.b);
        int iH = e.a.b.b.c.h0.h(this.f2426d);
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(this.b.b.a());
            sb.append(" proto(");
            e.a.b.d.d.b bVar = this.b.f2517c;
            int length = bVar.b.length;
            for (int i = 0; i < length; i++) {
                if (i != 0) {
                    sb.append(", ");
                }
                sb.append(bVar.b(i).a());
            }
            sb.append(")");
            cVar.b(0, f() + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE + sb.toString());
            cVar.b(4, "  shorty_idx:      " + d.s.y.g0(iM) + " // " + this.f2425c.f());
            cVar.b(4, "  return_type_idx: " + d.s.y.g0(iN) + " // " + this.b.b.a());
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append("  parameters_off:  ");
            e.a.c.a.a.u(iH, sb2, cVar, 4);
        }
        cVar.k(iM);
        cVar.k(iN);
        cVar.k(iH);
    }
}
