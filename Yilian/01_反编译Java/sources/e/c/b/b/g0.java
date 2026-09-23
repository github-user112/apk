package e.c.b.b;

/* loaded from: classes.dex */
public abstract class g0<K, V> extends java.util.AbstractCollection<java.util.Map.Entry<K, V>> {
    @Override // java.util.AbstractCollection, java.util.Collection
    public void clear() {
        e.c.b.b.h.this.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean contains(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (!(obj instanceof java.util.Map.Entry)) {
            return false;
        }
        java.util.Map.Entry entry = (java.util.Map.Entry) obj;
        return e.c.b.b.h.this.c(entry.getKey(), entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public boolean remove(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (!(obj instanceof java.util.Map.Entry)) {
            return false;
        }
        java.util.Map.Entry entry = (java.util.Map.Entry) obj;
        return e.c.b.b.h.this.remove(entry.getKey(), entry.getValue());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public int size() {
        return e.c.b.b.h.this.size();
    }
}
