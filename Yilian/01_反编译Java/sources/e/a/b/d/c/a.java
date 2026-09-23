package e.a.b.d.c;

/* loaded from: classes.dex */
public abstract class a implements e.a.b.f.k, java.lang.Comparable<e.a.b.d.c.a> {
    @Override // java.lang.Comparable
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final int compareTo(e.a.b.d.c.a aVar) {
        java.lang.Class<?> cls = getClass();
        java.lang.Class<?> cls2 = aVar.getClass();
        return cls != cls2 ? cls.getName().compareTo(cls2.getName()) : d(aVar);
    }

    public abstract int d(e.a.b.d.c.a aVar);

    public abstract java.lang.String e();
}
