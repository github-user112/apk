package d.j.d;

/* loaded from: classes.dex */
public abstract class v<E> extends d.j.d.r {
    public final android.app.Activity a;
    public final android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public final android.os.Handler f2145c;

    /* renamed from: d, reason: collision with root package name */
    public final d.j.d.y f2146d;

    public v(d.j.d.l lVar) {
        android.os.Handler handler = new android.os.Handler();
        this.f2146d = new d.j.d.z();
        this.a = lVar;
        d.b.k.r.f(lVar, "context == null");
        this.b = lVar;
        d.b.k.r.f(handler, "handler == null");
        this.f2145c = handler;
    }
}
