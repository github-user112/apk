package e.c.b.b;

/* JADX INFO: Add missing generic type declarations: [K] */
/* loaded from: classes.dex */
public class k<K> extends e.c.b.b.n<K, V>.b<K> {

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ e.c.b.b.n f2704e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public k(e.c.b.b.n nVar) {
        super(null);
        this.f2704e = nVar;
    }

    @Override // e.c.b.b.n.b
    public K a(int i) {
        return (K) this.f2704e.f2729c[i];
    }
}
