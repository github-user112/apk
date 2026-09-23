package e.a.b.d.b;

/* loaded from: classes.dex */
public final class b extends e.a.b.f.h {

    /* renamed from: d, reason: collision with root package name */
    public int f2478d;

    public static class a implements e.a.b.d.b.e.b {
        public int a = 0;

        @Override // e.a.b.d.b.e.b
        public void a(e.a.b.d.b.j jVar) {
            e(jVar);
        }

        @Override // e.a.b.d.b.e.b
        public void b(e.a.b.d.b.i iVar) {
            e(iVar);
        }

        @Override // e.a.b.d.b.e.b
        public void c(e.a.b.d.b.s sVar) {
            e(sVar);
        }

        @Override // e.a.b.d.b.e.b
        public void d(e.a.b.d.b.r rVar) {
            e(rVar);
        }

        public final void e(e.a.b.d.b.e eVar) {
            e.a.b.d.b.k kVar = eVar.f2485c;
            if (kVar != null) {
                int iH = kVar.h() + kVar.a;
                if (iH > this.a) {
                    this.a = iH;
                }
            }
            e.a.b.d.b.l lVar = eVar.f2486d;
            int length = lVar.b.length;
            for (int i = 0; i < length; i++) {
                e.a.b.d.b.k kVarI = lVar.i(i);
                int iH2 = kVarI.h() + kVarI.a;
                if (iH2 > this.a) {
                    this.a = iH2;
                }
            }
        }
    }

    public b(int i) {
        super(i);
        this.f2478d = -1;
    }

    public void j(e.a.b.d.b.e.b bVar) {
        int length = this.b.length;
        for (int i = 0; i < length; i++) {
            e.a.b.d.b.f fVar = k(i).b;
            int length2 = fVar.b.length;
            for (int i2 = 0; i2 < length2; i2++) {
                fVar.i(i2).b(bVar);
            }
        }
    }

    public e.a.b.d.b.a k(int i) {
        return (e.a.b.d.b.a) f(i);
    }

    public e.a.b.d.b.a l(int i) {
        e.a.b.f.f fVar = this.f2543c;
        int iG = i >= fVar.f2541c ? -1 : fVar.g(i);
        if (iG >= 0) {
            return k(iG);
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("no such label: ");
        sbO.append(d.s.y.e0(i));
        throw new java.lang.IllegalArgumentException(sbO.toString());
    }
}
