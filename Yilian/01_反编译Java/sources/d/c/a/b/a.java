package d.c.a.b;

/* loaded from: classes.dex */
public class a<K, V> extends d.c.a.b.b<K, V> {

    /* renamed from: e, reason: collision with root package name */
    public java.util.HashMap<K, d.c.a.b.b.c<K, V>> f1869e = new java.util.HashMap<>();

    @Override // d.c.a.b.b
    public d.c.a.b.b.c<K, V> a(K k) {
        return this.f1869e.get(k);
    }

    public boolean contains(K k) {
        return this.f1869e.containsKey(k);
    }

    @Override // d.c.a.b.b
    public V d(K k, V v) {
        d.c.a.b.b.c<K, V> cVar = this.f1869e.get(k);
        if (cVar != null) {
            return cVar.b;
        }
        this.f1869e.put(k, c(k, v));
        return null;
    }

    @Override // d.c.a.b.b
    public V e(K k) {
        V v = (V) super.e(k);
        this.f1869e.remove(k);
        return v;
    }
}
