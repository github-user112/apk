package d.j.d;

/* loaded from: classes.dex */
public class s0 implements d.r.d {
    public d.l.i a = null;
    public d.r.c b = null;

    public void a(d.l.e.a aVar) {
        d.l.i iVar = this.a;
        iVar.d("handleLifecycleEvent");
        iVar.g(aVar.a());
    }

    @Override // d.l.h
    public d.l.e getLifecycle() {
        if (this.a == null) {
            this.a = new d.l.i(this);
            this.b = new d.r.c(this);
        }
        return this.a;
    }

    @Override // d.r.d
    public d.r.b getSavedStateRegistry() {
        return this.b.b;
    }
}
