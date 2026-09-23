package d.e;

/* loaded from: classes.dex */
public abstract class g<K, V> {
    public d.e.g<K, V>.b a;
    public d.e.g<K, V>.c b;

    /* renamed from: c, reason: collision with root package name */
    public d.e.g<K, V>.e f1902c;

    public final class a<T> implements java.util.Iterator<T> {
        public final int a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f1903c;

        /* renamed from: d, reason: collision with root package name */
        public boolean f1904d = false;

        public a(int i) {
            this.a = i;
            this.b = d.e.g.this.d();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1903c < this.b;
        }

        @Override // java.util.Iterator
        public T next() {
            if (!hasNext()) {
                throw new java.util.NoSuchElementException();
            }
            T t = (T) d.e.g.this.b(this.f1903c, this.a);
            this.f1903c++;
            this.f1904d = true;
            return t;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f1904d) {
                throw new java.lang.IllegalStateException();
            }
            int i = this.f1903c - 1;
            this.f1903c = i;
            this.b--;
            this.f1904d = false;
            d.e.g.this.h(i);
        }
    }

    public final class b implements java.util.Set<java.util.Map.Entry<K, V>> {
        public b() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(java.lang.Object obj) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(java.util.Collection<? extends java.util.Map.Entry<K, V>> collection) {
            int iD = d.e.g.this.d();
            for (java.util.Map.Entry<K, V> entry : collection) {
                d.e.g.this.g(entry.getKey(), entry.getValue());
            }
            return iD != d.e.g.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            d.e.g.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(java.lang.Object obj) {
            if (!(obj instanceof java.util.Map.Entry)) {
                return false;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry) obj;
            int iE = d.e.g.this.e(entry.getKey());
            if (iE < 0) {
                return false;
            }
            return d.e.d.c(d.e.g.this.b(iE, 1), entry.getValue());
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(java.util.Collection<?> collection) {
            java.util.Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(java.lang.Object obj) {
            return d.e.g.j(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iD = d.e.g.this.d() - 1; iD >= 0; iD--) {
                java.lang.Object objB = d.e.g.this.b(iD, 0);
                java.lang.Object objB2 = d.e.g.this.b(iD, 1);
                iHashCode += (objB == null ? 0 : objB.hashCode()) ^ (objB2 == null ? 0 : objB2.hashCode());
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return d.e.g.this.d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public java.util.Iterator<java.util.Map.Entry<K, V>> iterator() {
            return new d.e.g.d();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(java.lang.Object obj) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(java.util.Collection<?> collection) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(java.util.Collection<?> collection) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return d.e.g.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public java.lang.Object[] toArray() {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            throw new java.lang.UnsupportedOperationException();
        }
    }

    public final class c implements java.util.Set<K> {
        public c() {
        }

        @Override // java.util.Set, java.util.Collection
        public boolean add(K k) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean addAll(java.util.Collection<? extends K> collection) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public void clear() {
            d.e.g.this.a();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean contains(java.lang.Object obj) {
            return d.e.g.this.e(obj) >= 0;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean containsAll(java.util.Collection<?> collection) {
            java.util.Map<K, V> mapC = d.e.g.this.c();
            java.util.Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!mapC.containsKey(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean equals(java.lang.Object obj) {
            return d.e.g.j(this, obj);
        }

        @Override // java.util.Set, java.util.Collection
        public int hashCode() {
            int iHashCode = 0;
            for (int iD = d.e.g.this.d() - 1; iD >= 0; iD--) {
                java.lang.Object objB = d.e.g.this.b(iD, 0);
                iHashCode += objB == null ? 0 : objB.hashCode();
            }
            return iHashCode;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean isEmpty() {
            return d.e.g.this.d() == 0;
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public java.util.Iterator<K> iterator() {
            return new d.e.g.a(0);
        }

        @Override // java.util.Set, java.util.Collection
        public boolean remove(java.lang.Object obj) {
            int iE = d.e.g.this.e(obj);
            if (iE < 0) {
                return false;
            }
            d.e.g.this.h(iE);
            return true;
        }

        @Override // java.util.Set, java.util.Collection
        public boolean removeAll(java.util.Collection<?> collection) {
            java.util.Map<K, V> mapC = d.e.g.this.c();
            int size = mapC.size();
            java.util.Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                mapC.remove(it.next());
            }
            return size != mapC.size();
        }

        @Override // java.util.Set, java.util.Collection
        public boolean retainAll(java.util.Collection<?> collection) {
            return d.e.g.k(d.e.g.this.c(), collection);
        }

        @Override // java.util.Set, java.util.Collection
        public int size() {
            return d.e.g.this.d();
        }

        @Override // java.util.Set, java.util.Collection
        public java.lang.Object[] toArray() {
            return d.e.g.this.l(0);
        }

        @Override // java.util.Set, java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) d.e.g.this.m(tArr, 0);
        }
    }

    public final class d implements java.util.Iterator<java.util.Map.Entry<K, V>>, java.util.Map.Entry<K, V> {
        public int a;

        /* renamed from: c, reason: collision with root package name */
        public boolean f1906c = false;
        public int b = -1;

        public d() {
            this.a = d.e.g.this.d() - 1;
        }

        @Override // java.util.Map.Entry
        public boolean equals(java.lang.Object obj) {
            if (!this.f1906c) {
                throw new java.lang.IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            if (!(obj instanceof java.util.Map.Entry)) {
                return false;
            }
            java.util.Map.Entry entry = (java.util.Map.Entry) obj;
            return d.e.d.c(entry.getKey(), d.e.g.this.b(this.b, 0)) && d.e.d.c(entry.getValue(), d.e.g.this.b(this.b, 1));
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            if (this.f1906c) {
                return (K) d.e.g.this.b(this.b, 0);
            }
            throw new java.lang.IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            if (this.f1906c) {
                return (V) d.e.g.this.b(this.b, 1);
            }
            throw new java.lang.IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b < this.a;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            if (!this.f1906c) {
                throw new java.lang.IllegalStateException("This container does not support retaining Map.Entry objects");
            }
            java.lang.Object objB = d.e.g.this.b(this.b, 0);
            java.lang.Object objB2 = d.e.g.this.b(this.b, 1);
            return (objB == null ? 0 : objB.hashCode()) ^ (objB2 != null ? objB2.hashCode() : 0);
        }

        @Override // java.util.Iterator
        public java.lang.Object next() {
            if (!hasNext()) {
                throw new java.util.NoSuchElementException();
            }
            this.b++;
            this.f1906c = true;
            return this;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (!this.f1906c) {
                throw new java.lang.IllegalStateException();
            }
            d.e.g.this.h(this.b);
            this.b--;
            this.a--;
            this.f1906c = false;
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            if (this.f1906c) {
                return (V) d.e.g.this.i(this.b, v);
            }
            throw new java.lang.IllegalStateException("This container does not support retaining Map.Entry objects");
        }

        public java.lang.String toString() {
            return getKey() + "=" + getValue();
        }
    }

    public final class e implements java.util.Collection<V> {
        public e() {
        }

        @Override // java.util.Collection
        public boolean add(V v) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public boolean addAll(java.util.Collection<? extends V> collection) {
            throw new java.lang.UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public void clear() {
            d.e.g.this.a();
        }

        @Override // java.util.Collection
        public boolean contains(java.lang.Object obj) {
            return d.e.g.this.f(obj) >= 0;
        }

        @Override // java.util.Collection
        public boolean containsAll(java.util.Collection<?> collection) {
            java.util.Iterator<?> it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public boolean isEmpty() {
            return d.e.g.this.d() == 0;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public java.util.Iterator<V> iterator() {
            return new d.e.g.a(1);
        }

        @Override // java.util.Collection
        public boolean remove(java.lang.Object obj) {
            int iF = d.e.g.this.f(obj);
            if (iF < 0) {
                return false;
            }
            d.e.g.this.h(iF);
            return true;
        }

        @Override // java.util.Collection
        public boolean removeAll(java.util.Collection<?> collection) {
            int iD = d.e.g.this.d();
            int i = 0;
            boolean z = false;
            while (i < iD) {
                if (collection.contains(d.e.g.this.b(i, 1))) {
                    d.e.g.this.h(i);
                    i--;
                    iD--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public boolean retainAll(java.util.Collection<?> collection) {
            int iD = d.e.g.this.d();
            int i = 0;
            boolean z = false;
            while (i < iD) {
                if (!collection.contains(d.e.g.this.b(i, 1))) {
                    d.e.g.this.h(i);
                    i--;
                    iD--;
                    z = true;
                }
                i++;
            }
            return z;
        }

        @Override // java.util.Collection
        public int size() {
            return d.e.g.this.d();
        }

        @Override // java.util.Collection
        public java.lang.Object[] toArray() {
            return d.e.g.this.l(1);
        }

        @Override // java.util.Collection
        public <T> T[] toArray(T[] tArr) {
            return (T[]) d.e.g.this.m(tArr, 1);
        }
    }

    public static <T> boolean j(java.util.Set<T> set, java.lang.Object obj) {
        if (set == obj) {
            return true;
        }
        if (obj instanceof java.util.Set) {
            java.util.Set set2 = (java.util.Set) obj;
            try {
                if (set.size() == set2.size()) {
                    if (set.containsAll(set2)) {
                        return true;
                    }
                }
                return false;
            } catch (java.lang.ClassCastException | java.lang.NullPointerException unused) {
            }
        }
        return false;
    }

    public static <K, V> boolean k(java.util.Map<K, V> map, java.util.Collection<?> collection) {
        int size = map.size();
        java.util.Iterator<K> it = map.keySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(it.next())) {
                it.remove();
            }
        }
        return size != map.size();
    }

    public abstract void a();

    public abstract java.lang.Object b(int i, int i2);

    public abstract java.util.Map<K, V> c();

    public abstract int d();

    public abstract int e(java.lang.Object obj);

    public abstract int f(java.lang.Object obj);

    public abstract void g(K k, V v);

    public abstract void h(int i);

    public abstract V i(int i, V v);

    public java.lang.Object[] l(int i) {
        int iD = d();
        java.lang.Object[] objArr = new java.lang.Object[iD];
        for (int i2 = 0; i2 < iD; i2++) {
            objArr[i2] = b(i2, i);
        }
        return objArr;
    }

    public <T> T[] m(T[] tArr, int i) {
        int iD = d();
        if (tArr.length < iD) {
            tArr = (T[]) ((java.lang.Object[]) java.lang.reflect.Array.newInstance(tArr.getClass().getComponentType(), iD));
        }
        for (int i2 = 0; i2 < iD; i2++) {
            tArr[i2] = b(i2, i);
        }
        if (tArr.length > iD) {
            tArr[iD] = null;
        }
        return tArr;
    }
}
