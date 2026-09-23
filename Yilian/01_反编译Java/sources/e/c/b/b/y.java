package e.c.b.b;

/* JADX INFO: Add missing generic type declarations: [V, K] */
/* loaded from: classes.dex */
public final class y<K, V> extends e.c.b.b.v0<java.util.Map.Entry<K, V>, V> {
    public y(java.util.Iterator it) {
        super(it);
    }

    @Override // e.c.b.b.v0
    public java.lang.Object a(java.lang.Object obj) {
        return ((java.util.Map.Entry) obj).getValue();
    }
}
