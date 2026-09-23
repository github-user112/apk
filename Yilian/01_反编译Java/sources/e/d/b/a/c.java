package e.d.b.a;

/* loaded from: classes.dex */
public class c<TResult> {
    public final e.d.b.a.f.b<TResult> a = new e.d.b.a.f.b<>();

    public void a(java.lang.Exception exc) {
        e.d.b.a.f.b<TResult> bVar = this.a;
        synchronized (bVar.a) {
            if (!bVar.b) {
                bVar.b = true;
                bVar.a.notifyAll();
                bVar.a();
            }
        }
    }
}
