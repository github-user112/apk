package e.d.b.a.f;

/* loaded from: classes.dex */
public final class c implements java.lang.Runnable {
    public final /* synthetic */ e.d.b.a.c a;
    public final /* synthetic */ java.util.concurrent.Callable b;

    public c(e.d.b.a.f.d dVar, e.d.b.a.c cVar, java.util.concurrent.Callable callable) {
        this.a = cVar;
        this.b = callable;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [TResult, java.lang.Object] */
    @Override // java.lang.Runnable
    public final void run() throws java.lang.Exception {
        try {
            e.d.b.a.c cVar = this.a;
            ?? Call = this.b.call();
            e.d.b.a.f.b<TResult> bVar = cVar.a;
            synchronized (bVar.a) {
                if (!bVar.b) {
                    bVar.b = true;
                    bVar.f2815c = Call;
                    bVar.a.notifyAll();
                    bVar.a();
                }
            }
        } catch (java.lang.Exception e2) {
            this.a.a(e2);
        }
    }
}
