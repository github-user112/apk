package d.g.l;

/* loaded from: classes.dex */
public class c<T> extends d.g.l.b<T> {

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.Object f1983c;

    public c(int i) {
        super(i);
        this.f1983c = new java.lang.Object();
    }

    @Override // d.g.l.b
    public T a() {
        T t;
        synchronized (this.f1983c) {
            t = (T) super.a();
        }
        return t;
    }

    @Override // d.g.l.b
    public boolean b(T t) {
        boolean zB;
        synchronized (this.f1983c) {
            zB = super.b(t);
        }
        return zB;
    }
}
