package e.a.b.b.c;

/* loaded from: classes.dex */
public class l extends e.a.b.b.c.h0 {

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.b.b.g f2433e;

    /* renamed from: f, reason: collision with root package name */
    public byte[] f2434f;

    /* renamed from: g, reason: collision with root package name */
    public final boolean f2435g;
    public final e.a.b.d.c.s h;

    public l(e.a.b.b.b.g gVar, boolean z, e.a.b.d.c.s sVar) {
        super(1, -1);
        if (gVar == null) {
            throw new java.lang.NullPointerException("code == null");
        }
        this.f2433e = gVar;
        this.f2435g = z;
        this.h = sVar;
    }

    @Override // e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_DEBUG_INFO_ITEM;
    }

    @Override // e.a.b.b.c.h0
    public void k(e.a.b.b.c.l0 l0Var, int i) {
        try {
            byte[] bArrN = n(l0Var.b, null, null, null, false);
            this.f2434f = bArrN;
            l(bArrN.length);
        } catch (java.lang.RuntimeException e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("...while placing debug info for ");
            sbO.append(this.h.a());
            throw e.a.a.c.b.b(e2, sbO.toString());
        }
    }

    @Override // e.a.b.b.c.h0
    public void m(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            cVar.c(i() + " debug info");
            n(mVar, null, null, cVar, true);
        }
        cVar.i(this.f2434f);
    }

    public final byte[] n(e.a.b.b.c.m mVar, java.lang.String str, java.io.PrintWriter printWriter, e.a.b.f.a aVar, boolean z) {
        e.a.b.b.b.g gVar = this.f2433e;
        gVar.a();
        e.a.b.b.b.t tVar = gVar.f2350e;
        e.a.b.b.b.g gVar2 = this.f2433e;
        gVar2.a();
        e.a.b.b.b.o oVar = gVar2.f2351f;
        e.a.b.b.b.g gVar3 = this.f2433e;
        gVar3.a();
        e.a.b.b.b.i iVar = gVar3.f2352g;
        e.a.b.b.c.k kVar = new e.a.b.b.c.k(tVar, oVar, mVar, iVar.i(), iVar.f2355c, this.f2435g, this.h);
        if (aVar == null) {
            try {
                return kVar.c();
            } catch (java.io.IOException e2) {
                throw e.a.a.c.b.b(e2, "...while encoding debug info");
            }
        }
        kVar.m = str;
        kVar.l = null;
        kVar.k = aVar;
        kVar.n = z;
        try {
            return kVar.c();
        } catch (java.io.IOException e3) {
            throw e.a.a.c.b.b(e3, "...while encoding debug info");
        }
    }
}
