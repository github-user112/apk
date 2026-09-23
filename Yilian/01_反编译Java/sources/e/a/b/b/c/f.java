package e.a.b.b.c;

/* loaded from: classes.dex */
public final class f extends e.a.b.b.c.x {
    public final e.a.b.d.c.w b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2408c;

    /* renamed from: d, reason: collision with root package name */
    public final e.a.b.d.c.w f2409d;

    /* renamed from: e, reason: collision with root package name */
    public e.a.b.b.c.r0 f2410e;

    /* renamed from: f, reason: collision with root package name */
    public final e.a.b.d.c.v f2411f;

    /* renamed from: g, reason: collision with root package name */
    public final e.a.b.b.c.e f2412g;
    public e.a.b.b.c.n h;
    public e.a.b.b.c.c i;

    /* JADX WARN: Multi-variable type inference failed */
    public f(e.a.b.d.c.w wVar, int i, e.a.b.d.c.w wVar2, e.a.b.d.d.e eVar, e.a.b.d.c.v vVar) {
        if (wVar == null) {
            throw new java.lang.NullPointerException("thisClass == null");
        }
        if (eVar == 0) {
            throw new java.lang.NullPointerException("interfaces == null");
        }
        this.b = wVar;
        this.f2408c = i;
        this.f2409d = wVar2;
        this.f2410e = ((e.a.b.f.d) eVar).b.length == 0 ? null : new e.a.b.b.c.r0(eVar);
        this.f2411f = vVar;
        this.f2412g = new e.a.b.b.c.e(wVar);
        this.h = null;
        this.i = new e.a.b.b.c.c();
    }

    @Override // e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
        e.a.b.b.c.q0 q0Var = mVar.f2443g;
        e.a.b.b.c.g0 g0Var = mVar.m;
        e.a.b.b.c.g0 g0Var2 = mVar.b;
        e.a.b.b.c.g0 g0Var3 = mVar.f2439c;
        e.a.b.b.c.o0 o0Var = mVar.f2442f;
        q0Var.o(this.b);
        if (!this.f2412g.r()) {
            mVar.l.l(this.f2412g);
            e.a.b.d.c.c cVarQ = this.f2412g.q();
            if (cVarQ != null) {
                this.h = (e.a.b.b.c.n) g0Var.m(new e.a.b.b.c.n(cVarQ));
            }
        }
        e.a.b.d.c.w wVar = this.f2409d;
        if (wVar != null) {
            q0Var.o(wVar);
        }
        e.a.b.b.c.r0 r0Var = this.f2410e;
        if (r0Var != null) {
            this.f2410e = (e.a.b.b.c.r0) g0Var3.m(r0Var);
        }
        e.a.b.d.c.v vVar = this.f2411f;
        if (vVar != null) {
            o0Var.n(vVar);
        }
        if (this.i.n()) {
            return;
        }
        if (this.i.o()) {
            this.i = (e.a.b.b.c.c) g0Var2.m(this.i);
        } else {
            g0Var2.l(this.i);
        }
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_CLASS_DEF_ITEM;
    }

    @Override // e.a.b.b.c.y
    public int c() {
        return 32;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // e.a.b.b.c.y
    public void d(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        boolean zD = cVar.d();
        e.a.b.b.c.q0 q0Var = mVar.f2443g;
        int iM = q0Var.m(this.b);
        e.a.b.d.c.w wVar = this.f2409d;
        int iM2 = wVar == null ? -1 : q0Var.m(wVar);
        int iH = e.a.b.b.c.h0.h(this.f2410e);
        int iG = this.i.n() ? 0 : this.i.g();
        e.a.b.d.c.v vVar = this.f2411f;
        int iM3 = vVar != null ? mVar.f2442f.m(vVar) : -1;
        int iG2 = this.f2412g.r() ? 0 : this.f2412g.g();
        int iH2 = e.a.b.b.c.h0.h(this.h);
        if (zD) {
            cVar.b(0, f() + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE + this.b.a());
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("  class_idx:           ");
            java.lang.StringBuilder sbN = e.a.c.a.a.n(iM, sb, cVar, 4, "  access_flags:        ");
            sbN.append(d.s.y.O(this.f2408c, 30257, 1));
            cVar.b(4, sbN.toString());
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append("  superclass_idx:      ");
            sb2.append(d.s.y.g0(iM2));
            sb2.append(" // ");
            e.a.b.d.c.w wVar2 = this.f2409d;
            sb2.append(wVar2 == null ? "<none>" : wVar2.a());
            cVar.b(4, sb2.toString());
            java.lang.StringBuilder sb3 = new java.lang.StringBuilder();
            sb3.append("  interfaces_off:      ");
            e.a.c.a.a.u(iH, sb3, cVar, 4);
            if (iH != 0) {
                e.a.b.d.d.e eVar = this.f2410e.f2451e;
                int length = ((e.a.b.f.d) eVar).b.length;
                for (int i = 0; i < length; i++) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("    ");
                    sbO.append(eVar.b(i).a());
                    cVar.b(0, sbO.toString());
                }
            }
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("  source_file_idx:     ");
            sbO2.append(d.s.y.g0(iM3));
            sbO2.append(" // ");
            e.a.b.d.c.v vVar2 = this.f2411f;
            sbO2.append(vVar2 != null ? vVar2.a() : "<none>");
            cVar.b(4, sbO2.toString());
            java.lang.StringBuilder sb4 = new java.lang.StringBuilder();
            sb4.append("  annotations_off:     ");
            e.a.c.a.a.u(iH2, e.a.c.a.a.n(iG2, e.a.c.a.a.n(iG, sb4, cVar, 4, "  class_data_off:      "), cVar, 4, "  static_values_off:   "), cVar, 4);
        }
        cVar.k(iM);
        cVar.k(this.f2408c);
        cVar.k(iM2);
        cVar.k(iH);
        cVar.k(iM3);
        cVar.k(iG);
        cVar.k(iG2);
        cVar.k(iH2);
    }
}
