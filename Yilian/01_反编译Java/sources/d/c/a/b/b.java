package d.c.a.b;

/* loaded from: classes.dex */
public class b<K, V> implements java.lang.Iterable<java.util.Map.Entry<K, V>> {
    public d.c.a.b.b.c<K, V> a;
    public d.c.a.b.b.c<K, V> b;

    /* renamed from: c, reason: collision with root package name */
    public java.util.WeakHashMap<d.c.a.b.b.f<K, V>, java.lang.Boolean> f1870c = new java.util.WeakHashMap<>();

    /* renamed from: d, reason: collision with root package name */
    public int f1871d = 0;

    public static class a<K, V> extends d.c.a.b.b.e<K, V> {
        public a(d.c.a.b.b.c<K, V> cVar, d.c.a.b.b.c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // d.c.a.b.b.e
        public d.c.a.b.b.c<K, V> b(d.c.a.b.b.c<K, V> cVar) {
            return cVar.f1873d;
        }

        @Override // d.c.a.b.b.e
        public d.c.a.b.b.c<K, V> c(d.c.a.b.b.c<K, V> cVar) {
            return cVar.f1872c;
        }
    }

    /* renamed from: d.c.a.b.b$b, reason: collision with other inner class name */
    public static class C0041b<K, V> extends d.c.a.b.b.e<K, V> {
        public C0041b(d.c.a.b.b.c<K, V> cVar, d.c.a.b.b.c<K, V> cVar2) {
            super(cVar, cVar2);
        }

        @Override // d.c.a.b.b.e
        public d.c.a.b.b.c<K, V> b(d.c.a.b.b.c<K, V> cVar) {
            return cVar.f1872c;
        }

        @Override // d.c.a.b.b.e
        public d.c.a.b.b.c<K, V> c(d.c.a.b.b.c<K, V> cVar) {
            return cVar.f1873d;
        }
    }

    public static class c<K, V> implements java.util.Map.Entry<K, V> {
        public final K a;
        public final V b;

        /* renamed from: c, reason: collision with root package name */
        public d.c.a.b.b.c<K, V> f1872c;

        /* renamed from: d, reason: collision with root package name */
        public d.c.a.b.b.c<K, V> f1873d;

        public c(K k, V v) {
            this.a = k;
            this.b = v;
        }

        @Override // java.util.Map.Entry
        public boolean equals(java.lang.Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof d.c.a.b.b.c)) {
                return false;
            }
            d.c.a.b.b.c cVar = (d.c.a.b.b.c) obj;
            return this.a.equals(cVar.a) && this.b.equals(cVar.b);
        }

        @Override // java.util.Map.Entry
        public K getKey() {
            return this.a;
        }

        @Override // java.util.Map.Entry
        public V getValue() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.a.hashCode() ^ this.b.hashCode();
        }

        @Override // java.util.Map.Entry
        public V setValue(V v) {
            throw new java.lang.UnsupportedOperationException("An entry modification is not supported");
        }

        public java.lang.String toString() {
            return this.a + "=" + this.b;
        }
    }

    public class d implements java.util.Iterator<java.util.Map.Entry<K, V>>, d.c.a.b.b.f<K, V> {
        public d.c.a.b.b.c<K, V> a;
        public boolean b = true;

        public d() {
        }

        @Override // d.c.a.b.b.f
        public void a(d.c.a.b.b.c<K, V> cVar) {
            d.c.a.b.b.c<K, V> cVar2 = this.a;
            if (cVar == cVar2) {
                d.c.a.b.b.c<K, V> cVar3 = cVar2.f1873d;
                this.a = cVar3;
                this.b = cVar3 == null;
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.b) {
                return d.c.a.b.b.this.a != null;
            }
            d.c.a.b.b.c<K, V> cVar = this.a;
            return (cVar == null || cVar.f1872c == null) ? false : true;
        }

        @Override // java.util.Iterator
        public java.lang.Object next() {
            d.c.a.b.b.c<K, V> cVar;
            if (this.b) {
                this.b = false;
                cVar = d.c.a.b.b.this.a;
            } else {
                d.c.a.b.b.c<K, V> cVar2 = this.a;
                cVar = cVar2 != null ? cVar2.f1872c : null;
            }
            this.a = cVar;
            return cVar;
        }
    }

    public static abstract class e<K, V> implements java.util.Iterator<java.util.Map.Entry<K, V>>, d.c.a.b.b.f<K, V> {
        public d.c.a.b.b.c<K, V> a;
        public d.c.a.b.b.c<K, V> b;

        public e(d.c.a.b.b.c<K, V> cVar, d.c.a.b.b.c<K, V> cVar2) {
            this.a = cVar2;
            this.b = cVar;
        }

        @Override // d.c.a.b.b.f
        public void a(d.c.a.b.b.c<K, V> cVar) {
            d.c.a.b.b.c<K, V> cVarC = null;
            if (this.a == cVar && cVar == this.b) {
                this.b = null;
                this.a = null;
            }
            d.c.a.b.b.c<K, V> cVar2 = this.a;
            if (cVar2 == cVar) {
                this.a = b(cVar2);
            }
            d.c.a.b.b.c<K, V> cVar3 = this.b;
            if (cVar3 == cVar) {
                d.c.a.b.b.c<K, V> cVar4 = this.a;
                if (cVar3 != cVar4 && cVar4 != null) {
                    cVarC = c(cVar3);
                }
                this.b = cVarC;
            }
        }

        public abstract d.c.a.b.b.c<K, V> b(d.c.a.b.b.c<K, V> cVar);

        public abstract d.c.a.b.b.c<K, V> c(d.c.a.b.b.c<K, V> cVar);

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b != null;
        }

        @Override // java.util.Iterator
        public java.lang.Object next() {
            d.c.a.b.b.c<K, V> cVar = this.b;
            d.c.a.b.b.c<K, V> cVar2 = this.a;
            this.b = (cVar == cVar2 || cVar2 == null) ? null : c(cVar);
            return cVar;
        }
    }

    public interface f<K, V> {
        void a(d.c.a.b.b.c<K, V> cVar);
    }

    public d.c.a.b.b.c<K, V> a(K k) {
        d.c.a.b.b.c<K, V> cVar = this.a;
        while (cVar != null && !cVar.a.equals(k)) {
            cVar = cVar.f1872c;
        }
        return cVar;
    }

    public d.c.a.b.b<K, V>.d b() {
        d.c.a.b.b<K, V>.d dVar = new d.c.a.b.b.d();
        this.f1870c.put(dVar, java.lang.Boolean.FALSE);
        return dVar;
    }

    public d.c.a.b.b.c<K, V> c(K k, V v) {
        d.c.a.b.b.c<K, V> cVar = new d.c.a.b.b.c<>(k, v);
        this.f1871d++;
        d.c.a.b.b.c<K, V> cVar2 = this.b;
        if (cVar2 == null) {
            this.a = cVar;
        } else {
            cVar2.f1872c = cVar;
            cVar.f1873d = cVar2;
        }
        this.b = cVar;
        return cVar;
    }

    public V d(K k, V v) {
        d.c.a.b.b.c<K, V> cVarA = a(k);
        if (cVarA != null) {
            return cVarA.b;
        }
        c(k, v);
        return null;
    }

    public V e(K k) {
        d.c.a.b.b.c<K, V> cVarA = a(k);
        if (cVarA == null) {
            return null;
        }
        this.f1871d--;
        if (!this.f1870c.isEmpty()) {
            java.util.Iterator<d.c.a.b.b.f<K, V>> it = this.f1870c.keySet().iterator();
            while (it.hasNext()) {
                it.next().a(cVarA);
            }
        }
        d.c.a.b.b.c<K, V> cVar = cVarA.f1873d;
        if (cVar != null) {
            cVar.f1872c = cVarA.f1872c;
        } else {
            this.a = cVarA.f1872c;
        }
        d.c.a.b.b.c<K, V> cVar2 = cVarA.f1872c;
        if (cVar2 != null) {
            cVar2.f1873d = cVarA.f1873d;
        } else {
            this.b = cVarA.f1873d;
        }
        cVarA.f1872c = null;
        cVarA.f1873d = null;
        return cVarA.b;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0048, code lost:
    
        if (r3.hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0050, code lost:
    
        if (((d.c.a.b.b.e) r7).hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0053, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:?, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r7 != r6) goto L4
            return r0
        L4:
            boolean r1 = r7 instanceof d.c.a.b.b
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            d.c.a.b.b r7 = (d.c.a.b.b) r7
            int r1 = r6.f1871d
            int r3 = r7.f1871d
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r1 = r6.iterator()
            java.util.Iterator r7 = r7.iterator()
        L1b:
            r3 = r1
            d.c.a.b.b$e r3 = (d.c.a.b.b.e) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            r4 = r7
            d.c.a.b.b$e r4 = (d.c.a.b.b.e) r4
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L44
            java.lang.Object r3 = r3.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r4.next()
            if (r3 != 0) goto L3b
            if (r4 != 0) goto L43
        L3b:
            if (r3 == 0) goto L1b
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r1 = r3.hasNext()
            if (r1 != 0) goto L53
            d.c.a.b.b$e r7 = (d.c.a.b.b.e) r7
            boolean r7 = r7.hasNext()
            if (r7 != 0) goto L53
            goto L54
        L53:
            r0 = 0
        L54:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.c.a.b.b.equals(java.lang.Object):boolean");
    }

    public int hashCode() {
        java.util.Iterator<java.util.Map.Entry<K, V>> it = iterator();
        int iHashCode = 0;
        while (true) {
            d.c.a.b.b.e eVar = (d.c.a.b.b.e) it;
            if (!eVar.hasNext()) {
                return iHashCode;
            }
            iHashCode += ((java.util.Map.Entry) eVar.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public java.util.Iterator<java.util.Map.Entry<K, V>> iterator() {
        d.c.a.b.b.a aVar = new d.c.a.b.b.a(this.a, this.b);
        this.f1870c.put(aVar, java.lang.Boolean.FALSE);
        return aVar;
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("[");
        java.util.Iterator<java.util.Map.Entry<K, V>> it = iterator();
        while (true) {
            d.c.a.b.b.e eVar = (d.c.a.b.b.e) it;
            if (!eVar.hasNext()) {
                sbO.append("]");
                return sbO.toString();
            }
            sbO.append(((java.util.Map.Entry) eVar.next()).toString());
            if (eVar.hasNext()) {
                sbO.append(", ");
            }
        }
    }
}
