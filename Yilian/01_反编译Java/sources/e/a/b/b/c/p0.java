package e.a.b.b.c;

/* loaded from: classes.dex */
public final class p0 extends e.a.b.b.c.w {
    public p0(e.a.b.d.c.w wVar) {
        super(wVar);
    }

    @Override // e.a.b.b.c.w, e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
        mVar.f2442f.n(this.b.f());
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_TYPE_ID_ITEM;
    }

    @Override // e.a.b.b.c.y
    public int c() {
        return 4;
    }

    @Override // e.a.b.b.c.y
    public void d(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        e.a.b.d.c.v vVarF = this.b.f();
        int iM = mVar.f2442f.m(vVarF);
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            cVar.b(0, f() + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE + vVarF.a());
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("  descriptor_idx: ");
            e.a.c.a.a.u(iM, sb, cVar, 4);
        }
        cVar.k(iM);
    }
}
