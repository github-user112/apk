package androidx.lifecycle;

/* loaded from: classes.dex */
public class CompositeGeneratedAdaptersObserver implements d.l.f {
    public final d.l.d[] a;

    public CompositeGeneratedAdaptersObserver(d.l.d[] dVarArr) {
        this.a = dVarArr;
    }

    @Override // d.l.f
    public void d(d.l.h hVar, d.l.e.a aVar) {
        d.l.l lVar = new d.l.l();
        for (d.l.d dVar : this.a) {
            dVar.a(hVar, aVar, false, lVar);
        }
        for (d.l.d dVar2 : this.a) {
            dVar2.a(hVar, aVar, true, lVar);
        }
    }
}
