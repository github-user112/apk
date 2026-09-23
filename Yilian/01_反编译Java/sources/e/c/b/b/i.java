package e.c.b.b;

/* JADX WARN: Incorrect class signature: super class is equals to this class */
/* loaded from: classes.dex */
public final class i<K, V> extends e.c.b.b.c {

    /* renamed from: g, reason: collision with root package name */
    public transient int f2703g;

    public i() {
        super(new e.c.b.b.n(12));
        d.s.y.l(3, "expectedValuesPerKey");
        this.f2703g = 3;
    }

    @Override // e.c.b.b.f
    public java.util.Collection h() {
        return new java.util.ArrayList(this.f2703g);
    }
}
