package e.a.b.b.c;

/* loaded from: classes.dex */
public abstract class b0 extends e.a.b.b.c.w {

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.d.c.r f2398c;

    public b0(e.a.b.d.c.r rVar) {
        super(rVar.a);
        this.f2398c = rVar;
    }

    @Override // e.a.b.b.c.w, e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
        super.a(mVar);
        mVar.f2442f.n(this.f2398c.b.a);
    }

    @Override // e.a.b.b.c.y
    public int c() {
        return 8;
    }

    @Override // e.a.b.b.c.y
    public final void d(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        e.a.b.b.c.q0 q0Var = mVar.f2443g;
        e.a.b.b.c.o0 o0Var = mVar.f2442f;
        e.a.b.d.c.t tVar = this.f2398c.b;
        int iM = q0Var.m(this.b);
        int iM2 = o0Var.m(tVar.a);
        int iH = h(mVar);
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            cVar.b(0, f() + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE + this.f2398c.a());
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("  class_idx: ");
            sb.append(d.s.y.e0(iM));
            cVar.b(2, sb.toString());
            cVar.b(2, java.lang.String.format("  %-10s %s", i() + ':', d.s.y.e0(iH)));
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append("  name_idx:  ");
            e.a.c.a.a.u(iM2, sb2, cVar, 4);
        }
        cVar.l(iM);
        cVar.l(iH);
        cVar.k(iM2);
    }

    public abstract int h(e.a.b.b.c.m mVar);

    public abstract java.lang.String i();
}
