package d.g.j;

/* loaded from: classes.dex */
public class k<T> implements java.lang.Runnable {
    public java.util.concurrent.Callable<T> a;
    public d.g.l.a<T> b;

    /* renamed from: c, reason: collision with root package name */
    public android.os.Handler f1980c;

    public class a implements java.lang.Runnable {
        public final /* synthetic */ d.g.l.a a;
        public final /* synthetic */ java.lang.Object b;

        public a(d.g.j.k kVar, d.g.l.a aVar, java.lang.Object obj) {
            this.a = aVar;
            this.b = obj;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            this.a.accept(this.b);
        }
    }

    public k(android.os.Handler handler, java.util.concurrent.Callable<T> callable, d.g.l.a<T> aVar) {
        this.a = callable;
        this.b = aVar;
        this.f1980c = handler;
    }

    @Override // java.lang.Runnable
    public void run() throws java.lang.Exception {
        T tCall;
        try {
            tCall = this.a.call();
        } catch (java.lang.Exception unused) {
            tCall = null;
        }
        this.f1980c.post(new d.g.j.k.a(this, this.b, tCall));
    }
}
