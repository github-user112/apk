package e.a.b.b.b;

/* loaded from: classes.dex */
public final class a {
    public final e.a.b.b.b.e[] a;
    public final e.a.b.b.b.e[] b;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.b.b.e[] f2340c;

    public a(e.a.b.d.b.o oVar) {
        int i = oVar.a.i();
        this.a = new e.a.b.b.b.e[i];
        this.b = new e.a.b.b.b.e[i];
        this.f2340c = new e.a.b.b.b.e[i];
        e.a.b.d.b.b bVar = oVar.a;
        int length = bVar.b.length;
        for (int i2 = 0; i2 < length; i2++) {
            e.a.b.d.b.a aVarK = bVar.k(i2);
            int i3 = aVarK.a;
            this.a[i3] = new e.a.b.b.b.e(aVarK.b.i(0).b);
            e.a.b.d.b.q qVar = aVarK.b().b;
            this.b[i3] = new e.a.b.b.b.e(qVar);
            this.f2340c[i3] = new e.a.b.b.b.e(qVar);
        }
    }
}
