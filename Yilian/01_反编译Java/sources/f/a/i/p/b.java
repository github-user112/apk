package f.a.i.p;

/* loaded from: classes.dex */
public class b extends java.lang.Thread {
    public final /* synthetic */ java.lang.String[] a;
    public final /* synthetic */ java.io.File b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ f.a.i.p.c.a f2971c;

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ f.a.i.p.c f2972d;

    public b(f.a.i.p.c cVar, java.lang.String[] strArr, java.io.File file, f.a.i.p.c.a aVar) {
        this.f2972d = cVar;
        this.a = strArr;
        this.b = file;
        this.f2971c = aVar;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() throws java.lang.InterruptedException {
        e.e.a.g.a("GuardedProcess start begin");
        while (!this.f2972d.b && !java.lang.Thread.interrupted()) {
            try {
                this.f2972d.f2973c = new java.lang.ProcessBuilder(this.a).redirectErrorStream(true).directory(this.b).start();
                e.e.a.g.a("GuardedProcess start next");
                this.f2971c.onStart();
                this.f2972d.f2973c.waitFor();
                e.e.a.g.a("GuardedProcess start next1");
            } catch (java.lang.Exception e2) {
                android.util.Log.e("GuardedProcess", e2.toString());
            }
        }
        e.e.a.g.a("GuardedProcess start end");
    }
}
