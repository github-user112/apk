package e.c.b.b;

/* loaded from: classes.dex */
public abstract class f<K, V> extends e.c.b.b.h<K, V> implements java.io.Serializable {

    /* renamed from: e, reason: collision with root package name */
    public transient java.util.Map<K, java.util.Collection<V>> f2680e;

    /* renamed from: f, reason: collision with root package name */
    public transient int f2681f;

    public class a extends e.c.b.b.c0<K, java.util.Collection<V>> {

        /* renamed from: c, reason: collision with root package name */
        public final transient java.util.Map<K, java.util.Collection<V>> f2682c;

        /* renamed from: e.c.b.b.f$a$a, reason: collision with other inner class name */
        public class C0070a extends e.c.b.b.z<K, java.util.Collection<V>> {
            public C0070a() {
            }

            @Override // e.c.b.b.z, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean contains(java.lang.Object obj) {
                java.util.Set<java.util.Map.Entry<K, java.util.Collection<V>>> setEntrySet = e.c.b.b.f.a.this.f2682c.entrySet();
                if (setEntrySet == null) {
                    throw null;
                }
                try {
                    return setEntrySet.contains(obj);
                } catch (java.lang.ClassCastException | java.lang.NullPointerException unused) {
                    return false;
                }
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public java.util.Iterator<java.util.Map.Entry<K, java.util.Collection<V>>> iterator() {
                return e.c.b.b.f.a.this.new b();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public boolean remove(java.lang.Object obj) {
                if (!contains(obj)) {
                    return false;
                }
                e.c.b.b.f fVar = e.c.b.b.f.this;
                java.lang.Object key = ((java.util.Map.Entry) obj).getKey();
                java.util.Map<K, java.util.Collection<V>> map = fVar.f2680e;
                java.util.Collection<V> collectionRemove = null;
                if (map == null) {
                    throw null;
                }
                try {
                    collectionRemove = map.remove(key);
                } catch (java.lang.ClassCastException | java.lang.NullPointerException unused) {
                }
                java.util.Collection<V> collection = collectionRemove;
                if (collection == null) {
                    return true;
                }
                int size = collection.size();
                collection.clear();
                fVar.f2681f -= size;
                return true;
            }
        }

        public class b implements java.util.Iterator<java.util.Map.Entry<K, java.util.Collection<V>>> {
            public final java.util.Iterator<java.util.Map.Entry<K, java.util.Collection<V>>> a;

            @org.checkerframework.checker.nullness.compatqual.NullableDecl
            public java.util.Collection<V> b;

            public b() {
                this.a = e.c.b.b.f.a.this.f2682c.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.a.hasNext();
            }

            @Override // java.util.Iterator
            public java.lang.Object next() {
                java.util.Map.Entry<K, java.util.Collection<V>> next = this.a.next();
                this.b = next.getValue();
                return e.c.b.b.f.a.this.a(next);
            }

            @Override // java.util.Iterator
            public void remove() {
                d.s.y.m(this.b != null);
                this.a.remove();
                e.c.b.b.f.this.f2681f -= this.b.size();
                this.b.clear();
                this.b = null;
            }
        }

        public a(java.util.Map<K, java.util.Collection<V>> map) {
            this.f2682c = map;
        }

        public java.util.Map.Entry<K, java.util.Collection<V>> a(java.util.Map.Entry<K, java.util.Collection<V>> entry) {
            K key = entry.getKey();
            return new e.c.b.b.r(key, e.c.b.b.f.this.i(key, entry.getValue()));
        }

        @Override // java.util.AbstractMap, java.util.Map
        public void clear() {
            java.util.Map<K, java.util.Collection<V>> map = this.f2682c;
            e.c.b.b.f fVar = e.c.b.b.f.this;
            if (map == fVar.f2680e) {
                fVar.clear();
                return;
            }
            e.c.b.b.f.a.b bVar = new e.c.b.b.f.a.b();
            while (bVar.hasNext()) {
                bVar.next();
                bVar.remove();
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean containsKey(java.lang.Object obj) {
            java.util.Map<K, java.util.Collection<V>> map = this.f2682c;
            if (map == null) {
                throw null;
            }
            try {
                return map.containsKey(obj);
            } catch (java.lang.ClassCastException | java.lang.NullPointerException unused) {
                return false;
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
            return this == obj || this.f2682c.equals(obj);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public java.lang.Object get(java.lang.Object obj) {
            java.util.Collection<V> collection;
            java.util.Map<K, java.util.Collection<V>> map = this.f2682c;
            if (map == null) {
                throw null;
            }
            try {
                collection = map.get(obj);
            } catch (java.lang.ClassCastException | java.lang.NullPointerException unused) {
                collection = null;
            }
            java.util.Collection<V> collection2 = collection;
            if (collection2 == null) {
                return null;
            }
            return e.c.b.b.f.this.i(obj, collection2);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int hashCode() {
            return this.f2682c.hashCode();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public java.util.Set<K> keySet() {
            e.c.b.b.f fVar = e.c.b.b.f.this;
            java.util.Set<K> set = fVar.b;
            if (set != null) {
                return set;
            }
            java.util.Set<K> setE = fVar.e();
            fVar.b = setE;
            return setE;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public java.lang.Object remove(java.lang.Object obj) {
            java.util.Collection<V> collectionRemove = this.f2682c.remove(obj);
            if (collectionRemove == null) {
                return null;
            }
            java.util.Collection<V> collectionH = e.c.b.b.f.this.h();
            collectionH.addAll(collectionRemove);
            e.c.b.b.f.this.f2681f -= collectionRemove.size();
            collectionRemove.clear();
            return collectionH;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public int size() {
            return this.f2682c.size();
        }

        @Override // java.util.AbstractMap
        public java.lang.String toString() {
            return this.f2682c.toString();
        }
    }

    public abstract class b<T> implements java.util.Iterator<T> {
        public final java.util.Iterator<java.util.Map.Entry<K, java.util.Collection<V>>> a;

        @org.checkerframework.checker.nullness.compatqual.NullableDecl
        public K b = null;

        /* renamed from: c, reason: collision with root package name */
        @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
        public java.util.Collection<V> f2685c = null;

        /* renamed from: d, reason: collision with root package name */
        public java.util.Iterator<V> f2686d = e.c.b.b.w.INSTANCE;

        public b() {
            this.a = e.c.b.b.f.this.f2680e.entrySet().iterator();
        }

        public abstract T a(K k, V v);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.a.hasNext() || this.f2686d.hasNext();
        }

        @Override // java.util.Iterator
        public T next() {
            if (!this.f2686d.hasNext()) {
                java.util.Map.Entry<K, java.util.Collection<V>> next = this.a.next();
                this.b = next.getKey();
                java.util.Collection<V> value = next.getValue();
                this.f2685c = value;
                this.f2686d = value.iterator();
            }
            return a(this.b, this.f2686d.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f2686d.remove();
            if (this.f2685c.isEmpty()) {
                this.a.remove();
            }
            e.c.b.b.f.g(e.c.b.b.f.this);
        }
    }

    public class c extends e.c.b.b.a0<K, java.util.Collection<V>> {

        public class a implements java.util.Iterator<K> {

            @org.checkerframework.checker.nullness.compatqual.NullableDecl
            public java.util.Map.Entry<K, java.util.Collection<V>> a;
            public final /* synthetic */ java.util.Iterator b;

            public a(java.util.Iterator it) {
                this.b = it;
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                return this.b.hasNext();
            }

            @Override // java.util.Iterator
            public K next() {
                java.util.Map.Entry<K, java.util.Collection<V>> entry = (java.util.Map.Entry) this.b.next();
                this.a = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public void remove() {
                d.s.y.m(this.a != null);
                java.util.Collection<V> value = this.a.getValue();
                this.b.remove();
                e.c.b.b.f.this.f2681f -= value.size();
                value.clear();
                this.a = null;
            }
        }

        public c(java.util.Map<K, java.util.Collection<V>> map) {
            super(map);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            e.c.b.a.f.g(iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean containsAll(java.util.Collection<?> collection) {
            return this.a.keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
            return this == obj || this.a.keySet().equals(obj);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public int hashCode() {
            return this.a.keySet().hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public java.util.Iterator<K> iterator() {
            return new e.c.b.b.f.c.a(this.a.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(java.lang.Object obj) {
            int size;
            java.util.Collection collection = (java.util.Collection) this.a.remove(obj);
            if (collection != null) {
                size = collection.size();
                collection.clear();
                e.c.b.b.f.this.f2681f -= size;
            } else {
                size = 0;
            }
            return size > 0;
        }
    }

    public class d extends e.c.b.b.f<K, V>.g implements java.util.NavigableMap<K, java.util.Collection<V>> {
        public d(java.util.NavigableMap<K, java.util.Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // e.c.b.b.f.g
        public java.util.SortedSet b() {
            return new e.c.b.b.f.e(d());
        }

        @Override // java.util.NavigableMap
        public java.util.Map.Entry<K, java.util.Collection<V>> ceilingEntry(K k) {
            java.util.Map.Entry<K, java.util.Collection<V>> entryCeilingEntry = d().ceilingEntry(k);
            if (entryCeilingEntry == null) {
                return null;
            }
            return a(entryCeilingEntry);
        }

        @Override // java.util.NavigableMap
        public K ceilingKey(K k) {
            return d().ceilingKey(k);
        }

        @Override // java.util.NavigableMap
        public java.util.NavigableSet<K> descendingKeySet() {
            return ((e.c.b.b.f.d) descendingMap()).navigableKeySet();
        }

        @Override // java.util.NavigableMap
        public java.util.NavigableMap<K, java.util.Collection<V>> descendingMap() {
            return new e.c.b.b.f.d(d().descendingMap());
        }

        @Override // e.c.b.b.f.g, e.c.b.b.f.a, java.util.AbstractMap, java.util.Map
        /* renamed from: e, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
        public java.util.NavigableSet<K> keySet() {
            java.util.SortedSet<K> sortedSetB = this.f2691e;
            if (sortedSetB == null) {
                sortedSetB = b();
                this.f2691e = sortedSetB;
            }
            return (java.util.NavigableSet) sortedSetB;
        }

        public java.util.Map.Entry<K, java.util.Collection<V>> f(java.util.Iterator<java.util.Map.Entry<K, java.util.Collection<V>>> it) {
            if (!it.hasNext()) {
                return null;
            }
            java.util.Map.Entry<K, java.util.Collection<V>> next = it.next();
            java.util.Collection<V> collectionH = e.c.b.b.f.this.h();
            collectionH.addAll(next.getValue());
            it.remove();
            K key = next.getKey();
            if (((e.c.b.b.c) e.c.b.b.f.this) != null) {
                return new e.c.b.b.r(key, java.util.Collections.unmodifiableList((java.util.List) collectionH));
            }
            throw null;
        }

        @Override // java.util.NavigableMap
        public java.util.Map.Entry<K, java.util.Collection<V>> firstEntry() {
            java.util.Map.Entry<K, java.util.Collection<V>> entryFirstEntry = d().firstEntry();
            if (entryFirstEntry == null) {
                return null;
            }
            return a(entryFirstEntry);
        }

        @Override // java.util.NavigableMap
        public java.util.Map.Entry<K, java.util.Collection<V>> floorEntry(K k) {
            java.util.Map.Entry<K, java.util.Collection<V>> entryFloorEntry = d().floorEntry(k);
            if (entryFloorEntry == null) {
                return null;
            }
            return a(entryFloorEntry);
        }

        @Override // java.util.NavigableMap
        public K floorKey(K k) {
            return d().floorKey(k);
        }

        @Override // e.c.b.b.f.g
        /* renamed from: g, reason: merged with bridge method [inline-methods] */
        public java.util.NavigableMap<K, java.util.Collection<V>> d() {
            return (java.util.NavigableMap) ((java.util.SortedMap) this.f2682c);
        }

        @Override // java.util.NavigableMap
        public java.util.NavigableMap<K, java.util.Collection<V>> headMap(K k, boolean z) {
            return new e.c.b.b.f.d(d().headMap(k, z));
        }

        @Override // e.c.b.b.f.g, java.util.SortedMap, java.util.NavigableMap
        public java.util.SortedMap headMap(java.lang.Object obj) {
            return headMap(obj, false);
        }

        @Override // java.util.NavigableMap
        public java.util.Map.Entry<K, java.util.Collection<V>> higherEntry(K k) {
            java.util.Map.Entry<K, java.util.Collection<V>> entryHigherEntry = d().higherEntry(k);
            if (entryHigherEntry == null) {
                return null;
            }
            return a(entryHigherEntry);
        }

        @Override // java.util.NavigableMap
        public K higherKey(K k) {
            return d().higherKey(k);
        }

        @Override // java.util.NavigableMap
        public java.util.Map.Entry<K, java.util.Collection<V>> lastEntry() {
            java.util.Map.Entry<K, java.util.Collection<V>> entryLastEntry = d().lastEntry();
            if (entryLastEntry == null) {
                return null;
            }
            return a(entryLastEntry);
        }

        @Override // java.util.NavigableMap
        public java.util.Map.Entry<K, java.util.Collection<V>> lowerEntry(K k) {
            java.util.Map.Entry<K, java.util.Collection<V>> entryLowerEntry = d().lowerEntry(k);
            if (entryLowerEntry == null) {
                return null;
            }
            return a(entryLowerEntry);
        }

        @Override // java.util.NavigableMap
        public K lowerKey(K k) {
            return d().lowerKey(k);
        }

        @Override // java.util.NavigableMap
        public java.util.NavigableSet<K> navigableKeySet() {
            return c();
        }

        @Override // java.util.NavigableMap
        public java.util.Map.Entry<K, java.util.Collection<V>> pollFirstEntry() {
            return f(entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public java.util.Map.Entry<K, java.util.Collection<V>> pollLastEntry() {
            return f(((e.c.b.b.c0) descendingMap()).entrySet().iterator());
        }

        @Override // java.util.NavigableMap
        public java.util.NavigableMap<K, java.util.Collection<V>> subMap(K k, boolean z, K k2, boolean z2) {
            return new e.c.b.b.f.d(d().subMap(k, z, k2, z2));
        }

        @Override // e.c.b.b.f.g, java.util.SortedMap, java.util.NavigableMap
        public java.util.SortedMap subMap(java.lang.Object obj, java.lang.Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // java.util.NavigableMap
        public java.util.NavigableMap<K, java.util.Collection<V>> tailMap(K k, boolean z) {
            return new e.c.b.b.f.d(d().tailMap(k, z));
        }

        @Override // e.c.b.b.f.g, java.util.SortedMap, java.util.NavigableMap
        public java.util.SortedMap tailMap(java.lang.Object obj) {
            return tailMap(obj, true);
        }
    }

    public class e extends e.c.b.b.f<K, V>.h implements java.util.NavigableSet<K> {
        public e(java.util.NavigableMap<K, java.util.Collection<V>> navigableMap) {
            super(navigableMap);
        }

        @Override // e.c.b.b.f.h
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public java.util.NavigableMap<K, java.util.Collection<V>> a() {
            return (java.util.NavigableMap) ((java.util.SortedMap) this.a);
        }

        @Override // java.util.NavigableSet
        public K ceiling(K k) {
            return a().ceilingKey(k);
        }

        @Override // java.util.NavigableSet
        public java.util.Iterator<K> descendingIterator() {
            return ((e.c.b.b.f.c) descendingSet()).iterator();
        }

        @Override // java.util.NavigableSet
        public java.util.NavigableSet<K> descendingSet() {
            return new e.c.b.b.f.e(a().descendingMap());
        }

        @Override // java.util.NavigableSet
        public K floor(K k) {
            return a().floorKey(k);
        }

        @Override // java.util.NavigableSet
        public java.util.NavigableSet<K> headSet(K k, boolean z) {
            return new e.c.b.b.f.e(a().headMap(k, z));
        }

        @Override // e.c.b.b.f.h, java.util.SortedSet, java.util.NavigableSet
        public java.util.SortedSet headSet(java.lang.Object obj) {
            return headSet(obj, false);
        }

        @Override // java.util.NavigableSet
        public K higher(K k) {
            return a().higherKey(k);
        }

        @Override // java.util.NavigableSet
        public K lower(K k) {
            return a().lowerKey(k);
        }

        @Override // java.util.NavigableSet
        public K pollFirst() {
            e.c.b.b.f.c.a aVar = (e.c.b.b.f.c.a) iterator();
            if (!aVar.hasNext()) {
                return null;
            }
            K k = (K) aVar.next();
            aVar.remove();
            return k;
        }

        @Override // java.util.NavigableSet
        public K pollLast() {
            e.c.b.b.f.c.a aVar = (e.c.b.b.f.c.a) descendingIterator();
            if (!aVar.hasNext()) {
                return null;
            }
            K k = (K) aVar.next();
            aVar.remove();
            return k;
        }

        @Override // java.util.NavigableSet
        public java.util.NavigableSet<K> subSet(K k, boolean z, K k2, boolean z2) {
            return new e.c.b.b.f.e(a().subMap(k, z, k2, z2));
        }

        @Override // e.c.b.b.f.h, java.util.SortedSet, java.util.NavigableSet
        public java.util.SortedSet subSet(java.lang.Object obj, java.lang.Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // java.util.NavigableSet
        public java.util.NavigableSet<K> tailSet(K k, boolean z) {
            return new e.c.b.b.f.e(a().tailMap(k, z));
        }

        @Override // e.c.b.b.f.h, java.util.SortedSet, java.util.NavigableSet
        public java.util.SortedSet tailSet(java.lang.Object obj) {
            return tailSet(obj, true);
        }
    }

    /* renamed from: e.c.b.b.f$f, reason: collision with other inner class name */
    public class C0071f extends e.c.b.b.f<K, V>.j implements java.util.RandomAccess {
        public C0071f(@org.checkerframework.checker.nullness.compatqual.NullableDecl e.c.b.b.f fVar, K k, @org.checkerframework.checker.nullness.compatqual.NullableDecl java.util.List<V> list, e.c.b.b.f<K, V>.i iVar) {
            super(k, list, iVar);
        }
    }

    public class g extends e.c.b.b.f<K, V>.a implements java.util.SortedMap<K, java.util.Collection<V>> {

        /* renamed from: e, reason: collision with root package name */
        @org.checkerframework.checker.nullness.compatqual.MonotonicNonNullDecl
        public java.util.SortedSet<K> f2691e;

        public g(java.util.SortedMap<K, java.util.Collection<V>> sortedMap) {
            super(sortedMap);
        }

        public java.util.SortedSet<K> b() {
            return new e.c.b.b.f.h(d());
        }

        @Override // e.c.b.b.f.a, java.util.AbstractMap, java.util.Map
        /* renamed from: c */
        public java.util.SortedSet<K> keySet() {
            java.util.SortedSet<K> sortedSet = this.f2691e;
            if (sortedSet != null) {
                return sortedSet;
            }
            java.util.SortedSet<K> sortedSetB = b();
            this.f2691e = sortedSetB;
            return sortedSetB;
        }

        @Override // java.util.SortedMap
        public java.util.Comparator<? super K> comparator() {
            return d().comparator();
        }

        public java.util.SortedMap<K, java.util.Collection<V>> d() {
            return (java.util.SortedMap) this.f2682c;
        }

        @Override // java.util.SortedMap
        public K firstKey() {
            return d().firstKey();
        }

        public java.util.SortedMap<K, java.util.Collection<V>> headMap(K k) {
            return new e.c.b.b.f.g(d().headMap(k));
        }

        @Override // java.util.SortedMap
        public K lastKey() {
            return d().lastKey();
        }

        public java.util.SortedMap<K, java.util.Collection<V>> subMap(K k, K k2) {
            return new e.c.b.b.f.g(d().subMap(k, k2));
        }

        public java.util.SortedMap<K, java.util.Collection<V>> tailMap(K k) {
            return new e.c.b.b.f.g(d().tailMap(k));
        }
    }

    public class h extends e.c.b.b.f<K, V>.c implements java.util.SortedSet<K> {
        public h(java.util.SortedMap<K, java.util.Collection<V>> sortedMap) {
            super(sortedMap);
        }

        public java.util.SortedMap<K, java.util.Collection<V>> a() {
            return (java.util.SortedMap) this.a;
        }

        @Override // java.util.SortedSet
        public java.util.Comparator<? super K> comparator() {
            return a().comparator();
        }

        @Override // java.util.SortedSet
        public K first() {
            return a().firstKey();
        }

        public java.util.SortedSet<K> headSet(K k) {
            return new e.c.b.b.f.h(a().headMap(k));
        }

        @Override // java.util.SortedSet
        public K last() {
            return a().lastKey();
        }

        public java.util.SortedSet<K> subSet(K k, K k2) {
            return new e.c.b.b.f.h(a().subMap(k, k2));
        }

        public java.util.SortedSet<K> tailSet(K k) {
            return new e.c.b.b.f.h(a().tailMap(k));
        }
    }

    public class i extends java.util.AbstractCollection<V> {

        @org.checkerframework.checker.nullness.compatqual.NullableDecl
        public final K a;
        public java.util.Collection<V> b;

        /* renamed from: c, reason: collision with root package name */
        @org.checkerframework.checker.nullness.compatqual.NullableDecl
        public final e.c.b.b.f<K, V>.i f2694c;

        /* renamed from: d, reason: collision with root package name */
        @org.checkerframework.checker.nullness.compatqual.NullableDecl
        public final java.util.Collection<V> f2695d;

        public class a implements java.util.Iterator<V> {
            public final java.util.Iterator<V> a;
            public final java.util.Collection<V> b;

            public a() {
                this.b = e.c.b.b.f.i.this.b;
                java.util.Collection<V> collection = e.c.b.b.f.i.this.b;
                this.a = collection instanceof java.util.List ? ((java.util.List) collection).listIterator() : collection.iterator();
            }

            public a(java.util.Iterator<V> it) {
                this.b = e.c.b.b.f.i.this.b;
                this.a = it;
            }

            public void a() {
                e.c.b.b.f.i.this.b();
                if (e.c.b.b.f.i.this.b != this.b) {
                    throw new java.util.ConcurrentModificationException();
                }
            }

            @Override // java.util.Iterator
            public boolean hasNext() {
                a();
                return this.a.hasNext();
            }

            @Override // java.util.Iterator
            public V next() {
                a();
                return this.a.next();
            }

            @Override // java.util.Iterator
            public void remove() {
                this.a.remove();
                e.c.b.b.f.g(e.c.b.b.f.this);
                e.c.b.b.f.i.this.c();
            }
        }

        public i(@org.checkerframework.checker.nullness.compatqual.NullableDecl K k, java.util.Collection<V> collection, @org.checkerframework.checker.nullness.compatqual.NullableDecl e.c.b.b.f<K, V>.i iVar) {
            this.a = k;
            this.b = collection;
            this.f2694c = iVar;
            this.f2695d = iVar == null ? null : iVar.b;
        }

        public void a() {
            e.c.b.b.f<K, V>.i iVar = this.f2694c;
            if (iVar != null) {
                iVar.a();
            } else {
                e.c.b.b.f.this.f2680e.put(this.a, this.b);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean add(V v) {
            b();
            boolean zIsEmpty = this.b.isEmpty();
            boolean zAdd = this.b.add(v);
            if (zAdd) {
                e.c.b.b.f.f(e.c.b.b.f.this);
                if (zIsEmpty) {
                    a();
                }
            }
            return zAdd;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean addAll(java.util.Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = this.b.addAll(collection);
            if (zAddAll) {
                int size2 = this.b.size();
                e.c.b.b.f fVar = e.c.b.b.f.this;
                fVar.f2681f = (size2 - size) + fVar.f2681f;
                if (size == 0) {
                    a();
                }
            }
            return zAddAll;
        }

        public void b() {
            java.util.Collection<V> collection;
            e.c.b.b.f<K, V>.i iVar = this.f2694c;
            if (iVar != null) {
                iVar.b();
                if (this.f2694c.b != this.f2695d) {
                    throw new java.util.ConcurrentModificationException();
                }
            } else {
                if (!this.b.isEmpty() || (collection = e.c.b.b.f.this.f2680e.get(this.a)) == null) {
                    return;
                }
                this.b = collection;
            }
        }

        public void c() {
            e.c.b.b.f<K, V>.i iVar = this.f2694c;
            if (iVar != null) {
                iVar.c();
            } else if (this.b.isEmpty()) {
                e.c.b.b.f.this.f2680e.remove(this.a);
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.b.clear();
            e.c.b.b.f.this.f2681f -= size;
            c();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(java.lang.Object obj) {
            b();
            return this.b.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean containsAll(java.util.Collection<?> collection) {
            b();
            return this.b.containsAll(collection);
        }

        @Override // java.util.Collection
        public boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
            if (obj == this) {
                return true;
            }
            b();
            return this.b.equals(obj);
        }

        @Override // java.util.Collection
        public int hashCode() {
            b();
            return this.b.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public java.util.Iterator<V> iterator() {
            b();
            return new e.c.b.b.f.i.a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean remove(java.lang.Object obj) {
            b();
            boolean zRemove = this.b.remove(obj);
            if (zRemove) {
                e.c.b.b.f.g(e.c.b.b.f.this);
                c();
            }
            return zRemove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean removeAll(java.util.Collection<?> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zRemoveAll = this.b.removeAll(collection);
            if (zRemoveAll) {
                int size2 = this.b.size();
                e.c.b.b.f fVar = e.c.b.b.f.this;
                fVar.f2681f = (size2 - size) + fVar.f2681f;
                c();
            }
            return zRemoveAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean retainAll(java.util.Collection<?> collection) {
            if (collection == null) {
                throw null;
            }
            int size = size();
            boolean zRetainAll = this.b.retainAll(collection);
            if (zRetainAll) {
                int size2 = this.b.size();
                e.c.b.b.f fVar = e.c.b.b.f.this;
                fVar.f2681f = (size2 - size) + fVar.f2681f;
                c();
            }
            return zRetainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            b();
            return this.b.size();
        }

        @Override // java.util.AbstractCollection
        public java.lang.String toString() {
            b();
            return this.b.toString();
        }
    }

    public class j extends e.c.b.b.f<K, V>.i implements java.util.List<V> {

        public class a extends e.c.b.b.f<K, V>.i.a implements java.util.ListIterator<V> {
            public a() {
                super();
            }

            public a(int i) {
                super(((java.util.List) e.c.b.b.f.j.this.b).listIterator(i));
            }

            @Override // java.util.ListIterator
            public void add(V v) {
                boolean zIsEmpty = e.c.b.b.f.j.this.isEmpty();
                b().add(v);
                e.c.b.b.f.f(e.c.b.b.f.this);
                if (zIsEmpty) {
                    e.c.b.b.f.j.this.a();
                }
            }

            public final java.util.ListIterator<V> b() {
                a();
                return (java.util.ListIterator) this.a;
            }

            @Override // java.util.ListIterator
            public boolean hasPrevious() {
                return b().hasPrevious();
            }

            @Override // java.util.ListIterator
            public int nextIndex() {
                return b().nextIndex();
            }

            @Override // java.util.ListIterator
            public V previous() {
                return b().previous();
            }

            @Override // java.util.ListIterator
            public int previousIndex() {
                return b().previousIndex();
            }

            @Override // java.util.ListIterator
            public void set(V v) {
                b().set(v);
            }
        }

        public j(@org.checkerframework.checker.nullness.compatqual.NullableDecl K k, java.util.List<V> list, @org.checkerframework.checker.nullness.compatqual.NullableDecl e.c.b.b.f<K, V>.i iVar) {
            super(k, list, iVar);
        }

        @Override // java.util.List
        public void add(int i, V v) {
            b();
            boolean zIsEmpty = this.b.isEmpty();
            ((java.util.List) this.b).add(i, v);
            e.c.b.b.f.f(e.c.b.b.f.this);
            if (zIsEmpty) {
                a();
            }
        }

        @Override // java.util.List
        public boolean addAll(int i, java.util.Collection<? extends V> collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean zAddAll = ((java.util.List) this.b).addAll(i, collection);
            if (zAddAll) {
                int size2 = this.b.size();
                e.c.b.b.f fVar = e.c.b.b.f.this;
                fVar.f2681f = (size2 - size) + fVar.f2681f;
                if (size == 0) {
                    a();
                }
            }
            return zAddAll;
        }

        @Override // java.util.List
        public V get(int i) {
            b();
            return (V) ((java.util.List) this.b).get(i);
        }

        @Override // java.util.List
        public int indexOf(java.lang.Object obj) {
            b();
            return ((java.util.List) this.b).indexOf(obj);
        }

        @Override // java.util.List
        public int lastIndexOf(java.lang.Object obj) {
            b();
            return ((java.util.List) this.b).lastIndexOf(obj);
        }

        @Override // java.util.List
        public java.util.ListIterator<V> listIterator() {
            b();
            return new e.c.b.b.f.j.a();
        }

        @Override // java.util.List
        public java.util.ListIterator<V> listIterator(int i) {
            b();
            return new e.c.b.b.f.j.a(i);
        }

        @Override // java.util.List
        public V remove(int i) {
            b();
            V v = (V) ((java.util.List) this.b).remove(i);
            e.c.b.b.f.g(e.c.b.b.f.this);
            c();
            return v;
        }

        @Override // java.util.List
        public V set(int i, V v) {
            b();
            return (V) ((java.util.List) this.b).set(i, v);
        }

        @Override // java.util.List
        public java.util.List<V> subList(int i, int i2) {
            b();
            e.c.b.b.f fVar = e.c.b.b.f.this;
            K k = this.a;
            java.util.List listSubList = ((java.util.List) this.b).subList(i, i2);
            e.c.b.b.f<K, V>.i iVar = this.f2694c;
            if (iVar == null) {
                iVar = this;
            }
            if (fVar != null) {
                return listSubList instanceof java.util.RandomAccess ? new e.c.b.b.f.C0071f(fVar, k, listSubList, iVar) : new e.c.b.b.f.j(k, listSubList, iVar);
            }
            throw null;
        }
    }

    public f(java.util.Map<K, java.util.Collection<V>> map) {
        if (!map.isEmpty()) {
            throw new java.lang.IllegalArgumentException();
        }
        this.f2680e = map;
    }

    public static /* synthetic */ int f(e.c.b.b.f fVar) {
        int i2 = fVar.f2681f;
        fVar.f2681f = i2 + 1;
        return i2;
    }

    public static /* synthetic */ int g(e.c.b.b.f fVar) {
        int i2 = fVar.f2681f;
        fVar.f2681f = i2 - 1;
        return i2;
    }

    @Override // e.c.b.b.d0
    public java.util.Collection<java.util.Map.Entry<K, V>> a() {
        java.util.Collection<java.util.Map.Entry<K, V>> collection = this.a;
        if (collection != null) {
            return collection;
        }
        e.c.b.b.h.a aVar = new e.c.b.b.h.a();
        this.a = aVar;
        return aVar;
    }

    @Override // e.c.b.b.d0
    public void clear() {
        java.util.Iterator<java.util.Collection<V>> it = this.f2680e.values().iterator();
        while (it.hasNext()) {
            it.next().clear();
        }
        this.f2680e.clear();
        this.f2681f = 0;
    }

    @Override // e.c.b.b.h
    public java.util.Map<K, java.util.Collection<V>> d() {
        return new e.c.b.b.f.a(this.f2680e);
    }

    @Override // e.c.b.b.h
    public java.util.Set<K> e() {
        return new e.c.b.b.f.c(this.f2680e);
    }

    @Override // e.c.b.b.d0
    public java.util.Collection<V> get(@org.checkerframework.checker.nullness.compatqual.NullableDecl K k) {
        java.util.Collection<V> collectionH = this.f2680e.get(k);
        if (collectionH == null) {
            collectionH = h();
        }
        return i(k, collectionH);
    }

    public abstract java.util.Collection<V> h();

    public abstract java.util.Collection<V> i(@org.checkerframework.checker.nullness.compatqual.NullableDecl K k, java.util.Collection<V> collection);

    @Override // e.c.b.b.d0
    public boolean put(@org.checkerframework.checker.nullness.compatqual.NullableDecl K k, @org.checkerframework.checker.nullness.compatqual.NullableDecl V v) {
        java.util.Collection<V> collection = this.f2680e.get(k);
        if (collection != null) {
            if (!collection.add(v)) {
                return false;
            }
            this.f2681f++;
            return true;
        }
        java.util.Collection<V> collectionH = h();
        if (!collectionH.add(v)) {
            throw new java.lang.AssertionError("New Collection violated the Collection spec");
        }
        this.f2681f++;
        this.f2680e.put(k, collectionH);
        return true;
    }

    @Override // e.c.b.b.d0
    public int size() {
        return this.f2681f;
    }

    @Override // e.c.b.b.h, e.c.b.b.d0
    public java.util.Collection<V> values() {
        return super.values();
    }
}
