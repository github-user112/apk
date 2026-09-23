package e.c.b.b;

/* loaded from: classes.dex */
public abstract class t<K, V> implements java.util.Map<K, V>, java.io.Serializable {

    @com.google.errorprone.annotations.concurrent.LazyInit
    public transient e.c.b.b.u<java.util.Map.Entry<K, V>> a;

    @com.google.j2objc.annotations.RetainedWith
    @com.google.errorprone.annotations.concurrent.LazyInit
    public transient e.c.b.b.u<K> b;

    /* renamed from: c, reason: collision with root package name */
    @com.google.j2objc.annotations.RetainedWith
    @com.google.errorprone.annotations.concurrent.LazyInit
    public transient e.c.b.b.q<V> f2746c;

    public static class a<K, V> {
        public java.lang.Object[] a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2747c;

        public a() {
            this.a = new java.lang.Object[8];
            this.b = 0;
            this.f2747c = false;
        }

        public a(int i) {
            this.a = new java.lang.Object[i * 2];
            this.b = 0;
            this.f2747c = false;
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x0058, code lost:
        
            r5[r10] = r8;
            r4 = r4 + 1;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public e.c.b.b.t<K, V> a() {
            /*
                r13 = this;
                r0 = 1
                r13.f2747c = r0
                int r1 = r13.b
                java.lang.Object[] r2 = r13.a
                if (r1 != 0) goto Lf
                e.c.b.b.t<java.lang.Object, java.lang.Object> r0 = e.c.b.b.l0.f2709g
                e.c.b.b.l0 r0 = (e.c.b.b.l0) r0
                goto La0
            Lf:
                r3 = 0
                r4 = 0
                if (r1 != r0) goto L22
                r1 = r2[r4]
                r4 = r2[r0]
                d.s.y.k(r1, r4)
                e.c.b.b.l0 r1 = new e.c.b.b.l0
                r1.<init>(r3, r2, r0)
                r0 = r1
                goto La0
            L22:
                int r5 = r2.length
                int r5 = r5 >> r0
                e.c.b.a.f.e(r1, r5)
                int r5 = e.c.b.b.u.h(r1)
                if (r1 != r0) goto L35
                r4 = r2[r4]
                r0 = r2[r0]
                d.s.y.k(r4, r0)
                goto L9b
            L35:
                int r3 = r5 + (-1)
                int[] r5 = new int[r5]
                r6 = -1
                java.util.Arrays.fill(r5, r6)
            L3d:
                if (r4 >= r1) goto L9a
                int r7 = r4 * 2
                int r8 = r7 + 0
                r9 = r2[r8]
                int r7 = r7 + r0
                r7 = r2[r7]
                d.s.y.k(r9, r7)
                int r10 = r9.hashCode()
                int r10 = e.c.b.a.f.p(r10)
            L53:
                r10 = r10 & r3
                r11 = r5[r10]
                if (r11 != r6) goto L5d
                r5[r10] = r8
                int r4 = r4 + 1
                goto L3d
            L5d:
                r12 = r2[r11]
                boolean r12 = r12.equals(r9)
                if (r12 != 0) goto L68
                int r10 = r10 + 1
                goto L53
            L68:
                java.lang.IllegalArgumentException r1 = new java.lang.IllegalArgumentException
                java.lang.StringBuilder r3 = new java.lang.StringBuilder
                r3.<init>()
                java.lang.String r4 = "Multiple entries with same key: "
                r3.append(r4)
                r3.append(r9)
                java.lang.String r4 = "="
                r3.append(r4)
                r3.append(r7)
                java.lang.String r5 = " and "
                r3.append(r5)
                r5 = r2[r11]
                r3.append(r5)
                r3.append(r4)
                r0 = r0 ^ r11
                r0 = r2[r0]
                r3.append(r0)
                java.lang.String r0 = r3.toString()
                r1.<init>(r0)
                throw r1
            L9a:
                r3 = r5
            L9b:
                e.c.b.b.l0 r0 = new e.c.b.b.l0
                r0.<init>(r3, r2, r1)
            La0:
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: e.c.b.b.t.a.a():e.c.b.b.t");
        }

        public final void b(int i) {
            int i2 = i * 2;
            java.lang.Object[] objArr = this.a;
            if (i2 > objArr.length) {
                this.a = java.util.Arrays.copyOf(objArr, e.c.b.b.q.b.a(objArr.length, i2));
                this.f2747c = false;
            }
        }

        @com.google.errorprone.annotations.CanIgnoreReturnValue
        public e.c.b.b.t.a<K, V> c(K k, V v) {
            b(this.b + 1);
            d.s.y.k(k, v);
            java.lang.Object[] objArr = this.a;
            int i = this.b;
            objArr[i * 2] = k;
            objArr[(i * 2) + 1] = v;
            this.b = i + 1;
            return this;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <K, V> e.c.b.b.t<K, V> a(java.util.Map<? extends K, ? extends V> map) {
        if ((map instanceof e.c.b.b.t) && !(map instanceof java.util.SortedMap)) {
            e.c.b.b.t<K, V> tVar = (e.c.b.b.t) map;
            if (((e.c.b.b.l0) tVar) != null) {
                return tVar;
            }
            throw null;
        }
        java.util.Set<java.util.Map.Entry<? extends K, ? extends V>> setEntrySet = map.entrySet();
        boolean z = setEntrySet instanceof java.util.Collection;
        e.c.b.b.t.a aVar = new e.c.b.b.t.a(z ? setEntrySet.size() : 4);
        if (z) {
            aVar.b(setEntrySet.size() + aVar.b);
        }
        java.util.Iterator<T> it = setEntrySet.iterator();
        while (it.hasNext()) {
            java.util.Map.Entry entry = (java.util.Map.Entry) it.next();
            aVar.c(entry.getKey(), entry.getValue());
        }
        return aVar.a();
    }

    @Override // java.util.Map
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public e.c.b.b.u<java.util.Map.Entry<K, V>> entrySet() {
        e.c.b.b.u<java.util.Map.Entry<K, V>> uVar = this.a;
        if (uVar != null) {
            return uVar;
        }
        e.c.b.b.l0 l0Var = (e.c.b.b.l0) this;
        e.c.b.b.l0.a aVar = new e.c.b.b.l0.a(l0Var, l0Var.f2711e, 0, l0Var.f2712f);
        this.a = aVar;
        return aVar;
    }

    @Override // java.util.Map
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public e.c.b.b.q<V> values() {
        e.c.b.b.q<V> qVar = this.f2746c;
        if (qVar != null) {
            return qVar;
        }
        e.c.b.b.l0 l0Var = (e.c.b.b.l0) this;
        e.c.b.b.l0.c cVar = new e.c.b.b.l0.c(l0Var.f2711e, 1, l0Var.f2712f);
        this.f2746c = cVar;
        return cVar;
    }

    @Override // java.util.Map
    @java.lang.Deprecated
    public final void clear() {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    public boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof java.util.Map) {
            return entrySet().equals(((java.util.Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract V get(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj, @org.checkerframework.checker.nullness.compatqual.NullableDecl V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public int hashCode() {
        return e.c.b.b.j.b(entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public java.util.Set keySet() {
        e.c.b.b.u<K> uVar = this.b;
        if (uVar != null) {
            return uVar;
        }
        e.c.b.b.l0 l0Var = (e.c.b.b.l0) this;
        e.c.b.b.l0.b bVar = new e.c.b.b.l0.b(l0Var, new e.c.b.b.l0.c(l0Var.f2711e, 0, l0Var.f2712f));
        this.b = bVar;
        return bVar;
    }

    @Override // java.util.Map
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    @java.lang.Deprecated
    public final V put(K k, V v) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.Map
    @java.lang.Deprecated
    public final void putAll(java.util.Map<? extends K, ? extends V> map) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.Map
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    @java.lang.Deprecated
    public final V remove(java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException();
    }

    public java.lang.String toString() {
        int size = size();
        d.s.y.l(size, "size");
        java.lang.StringBuilder sb = new java.lang.StringBuilder((int) java.lang.Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (java.util.Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            z = false;
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
        }
        sb.append('}');
        return sb.toString();
    }
}
