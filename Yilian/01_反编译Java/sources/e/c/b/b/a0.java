package e.c.b.b;

/* loaded from: classes.dex */
public class a0<K, V> extends e.c.b.b.s0<K> {

    @com.google.j2objc.annotations.Weak
    public final java.util.Map<K, V> a;

    public a0(java.util.Map<K, V> map) {
        if (map == null) {
            throw null;
        }
        this.a = map;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(java.lang.Object obj) {
        return this.a.containsKey(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.a.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public int size() {
        return this.a.size();
    }
}
