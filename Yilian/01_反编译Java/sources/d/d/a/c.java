package d.d.a;

/* loaded from: classes.dex */
public class c implements d.d.a.f {
    @Override // d.d.a.f
    public float a(d.d.a.e eVar) {
        throw null;
    }

    @Override // d.d.a.f
    public android.content.res.ColorStateList b(d.d.a.e eVar) {
        throw null;
    }

    @Override // d.d.a.f
    public void c(d.d.a.e eVar, float f2) {
        throw null;
    }

    @Override // d.d.a.f
    public float d(d.d.a.e eVar) {
        throw null;
    }

    @Override // d.d.a.f
    public void e() {
    }

    @Override // d.d.a.f
    public float f(d.d.a.e eVar) {
        throw null;
    }

    @Override // d.d.a.f
    public float g(d.d.a.e eVar) {
        throw null;
    }

    @Override // d.d.a.f
    public float h(d.d.a.e eVar) {
        throw null;
    }

    @Override // d.d.a.f
    public void i(d.d.a.e eVar) {
        throw null;
    }

    @Override // d.d.a.f
    public void j(d.d.a.e eVar, float f2) {
        throw null;
    }

    @Override // d.d.a.f
    public void k(d.d.a.e eVar) {
        throw null;
    }

    @Override // d.d.a.f
    public void l(d.d.a.e eVar, android.content.res.ColorStateList colorStateList) {
        throw null;
    }

    @Override // d.d.a.f
    public void m(d.d.a.e eVar, float f2) {
        d.d.a.g gVarN = n(eVar);
        boolean zC = eVar.c();
        boolean zB = eVar.b();
        if (f2 != gVarN.b || gVarN.f1876c != zC || gVarN.f1877d != zB) {
            gVarN.b = f2;
            gVarN.f1876c = zC;
            gVarN.f1877d = zB;
            gVarN.b(null);
            throw null;
        }
        if (!eVar.c()) {
            eVar.a(0, 0, 0, 0);
            return;
        }
        float f3 = n(eVar).b;
        float f4 = n(eVar).a;
        int iCeil = (int) java.lang.Math.ceil(d.d.a.h.a(f3, f4, eVar.b()));
        int iCeil2 = (int) java.lang.Math.ceil(d.d.a.h.b(f3, f4, eVar.b()));
        eVar.a(iCeil, iCeil2, iCeil, iCeil2);
    }

    public final d.d.a.g n(d.d.a.e eVar) {
        return (d.d.a.g) eVar.d();
    }
}
