package d.e;

/* JADX INFO: Add missing generic type declarations: [E] */
/* loaded from: classes.dex */
public class b<E> extends d.e.g<E, E> {

    /* renamed from: d, reason: collision with root package name */
    public final /* synthetic */ d.e.c f1887d;

    public b(d.e.c cVar) {
        this.f1887d = cVar;
    }

    @Override // d.e.g
    public void a() {
        this.f1887d.clear();
    }

    @Override // d.e.g
    public java.lang.Object b(int i, int i2) {
        return this.f1887d.b[i];
    }

    @Override // d.e.g
    public java.util.Map<E, E> c() {
        throw new java.lang.UnsupportedOperationException("not a map");
    }

    @Override // d.e.g
    public int d() {
        return this.f1887d.f1891c;
    }

    @Override // d.e.g
    public int e(java.lang.Object obj) {
        return this.f1887d.indexOf(obj);
    }

    @Override // d.e.g
    public int f(java.lang.Object obj) {
        return this.f1887d.indexOf(obj);
    }

    @Override // d.e.g
    public void g(E e2, E e3) {
        this.f1887d.add(e2);
    }

    @Override // d.e.g
    public void h(int i) {
        this.f1887d.e(i);
    }

    @Override // d.e.g
    public E i(int i, E e2) {
        throw new java.lang.UnsupportedOperationException("not a map");
    }
}
