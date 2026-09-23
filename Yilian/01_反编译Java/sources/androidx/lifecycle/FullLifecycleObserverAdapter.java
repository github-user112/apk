package androidx.lifecycle;

/* loaded from: classes.dex */
public class FullLifecycleObserverAdapter implements d.l.f {
    public final d.l.c a;
    public final d.l.f b;

    public FullLifecycleObserverAdapter(d.l.c cVar, d.l.f fVar) {
        this.a = cVar;
        this.b = fVar;
    }

    @Override // d.l.f
    public void d(d.l.h hVar, d.l.e.a aVar) {
        switch (aVar) {
            case ON_CREATE:
                this.a.c(hVar);
                break;
            case ON_START:
                this.a.f(hVar);
                break;
            case ON_RESUME:
                this.a.a(hVar);
                break;
            case ON_PAUSE:
                this.a.e(hVar);
                break;
            case ON_STOP:
                this.a.g(hVar);
                break;
            case ON_DESTROY:
                this.a.b(hVar);
                break;
            case ON_ANY:
                throw new java.lang.IllegalArgumentException("ON_ANY must not been send by anybody");
        }
        d.l.f fVar = this.b;
        if (fVar != null) {
            fVar.d(hVar, aVar);
        }
    }
}
