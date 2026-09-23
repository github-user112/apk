package d.f.d;

/* loaded from: classes.dex */
public final class a<T> {
    public final d.g.l.b<java.util.ArrayList<T>> a = new d.g.l.b<>(10);
    public final d.e.h<T, java.util.ArrayList<T>> b = new d.e.h<>();

    /* renamed from: c, reason: collision with root package name */
    public final java.util.ArrayList<T> f1916c = new java.util.ArrayList<>();

    /* renamed from: d, reason: collision with root package name */
    public final java.util.HashSet<T> f1917d = new java.util.HashSet<>();

    public void a(T t) {
        if (this.b.e(t) >= 0) {
            return;
        }
        this.b.put(t, null);
    }

    public final void b(T t, java.util.ArrayList<T> arrayList, java.util.HashSet<T> hashSet) {
        if (arrayList.contains(t)) {
            return;
        }
        if (hashSet.contains(t)) {
            throw new java.lang.RuntimeException("This graph contains cyclic dependencies");
        }
        hashSet.add(t);
        java.util.ArrayList<T> orDefault = this.b.getOrDefault(t, null);
        if (orDefault != null) {
            int size = orDefault.size();
            for (int i = 0; i < size; i++) {
                b(orDefault.get(i), arrayList, hashSet);
            }
        }
        hashSet.remove(t);
        arrayList.add(t);
    }
}
