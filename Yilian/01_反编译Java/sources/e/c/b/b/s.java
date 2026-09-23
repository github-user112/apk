package e.c.b.b;

/* loaded from: classes.dex */
public abstract class s<E> extends e.c.b.b.q<E> implements java.util.List<E>, java.util.RandomAccess {
    public static final e.c.b.b.a<java.lang.Object> b = new e.c.b.b.s.b(e.c.b.b.k0.f2705e, 0);

    public static final class a<E> extends e.c.b.b.q.a<E> {
        public a() {
            super(4);
        }

        @com.google.errorprone.annotations.CanIgnoreReturnValue
        public e.c.b.b.s.a<E> b(E e2) {
            if (e2 == null) {
                throw null;
            }
            int i = this.b + 1;
            java.lang.Object[] objArr = this.a;
            if (objArr.length >= i) {
                if (this.f2739c) {
                    this.a = (java.lang.Object[]) objArr.clone();
                }
                java.lang.Object[] objArr2 = this.a;
                int i2 = this.b;
                this.b = i2 + 1;
                objArr2[i2] = e2;
                return this;
            }
            this.a = java.util.Arrays.copyOf(objArr, e.c.b.b.q.b.a(objArr.length, i));
            this.f2739c = false;
            java.lang.Object[] objArr22 = this.a;
            int i22 = this.b;
            this.b = i22 + 1;
            objArr22[i22] = e2;
            return this;
        }

        public e.c.b.b.s<E> c() {
            this.f2739c = true;
            return e.c.b.b.s.i(this.a, this.b);
        }
    }

    public static class b<E> extends e.c.b.b.a<E> {

        /* renamed from: c, reason: collision with root package name */
        public final e.c.b.b.s<E> f2742c;

        public b(e.c.b.b.s<E> sVar, int i) {
            super(sVar.size(), i);
            this.f2742c = sVar;
        }
    }

    public class c extends e.c.b.b.s<E> {

        /* renamed from: c, reason: collision with root package name */
        public final transient int f2743c;

        /* renamed from: d, reason: collision with root package name */
        public final transient int f2744d;

        public c(int i, int i2) {
            this.f2743c = i;
            this.f2744d = i2;
        }

        @Override // e.c.b.b.q
        public java.lang.Object[] c() {
            return e.c.b.b.s.this.c();
        }

        @Override // e.c.b.b.q
        public int d() {
            return e.c.b.b.s.this.e() + this.f2743c + this.f2744d;
        }

        @Override // e.c.b.b.q
        public int e() {
            return e.c.b.b.s.this.e() + this.f2743c;
        }

        @Override // e.c.b.b.q
        public boolean f() {
            return true;
        }

        @Override // java.util.List
        public E get(int i) {
            e.c.b.a.f.c(i, this.f2744d);
            return e.c.b.b.s.this.get(i + this.f2743c);
        }

        @Override // e.c.b.b.s, e.c.b.b.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public java.util.Iterator iterator() {
            return listIterator();
        }

        @Override // e.c.b.b.s, java.util.List
        public /* bridge */ /* synthetic */ java.util.ListIterator listIterator() {
            return super.listIterator();
        }

        @Override // e.c.b.b.s, java.util.List
        public /* bridge */ /* synthetic */ java.util.ListIterator listIterator(int i) {
            return super.listIterator(i);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f2744d;
        }

        @Override // e.c.b.b.s, java.util.List
        /* renamed from: u, reason: merged with bridge method [inline-methods] */
        public e.c.b.b.s<E> subList(int i, int i2) {
            e.c.b.a.f.f(i, i2, this.f2744d);
            e.c.b.b.s sVar = e.c.b.b.s.this;
            int i3 = this.f2743c;
            return sVar.subList(i + i3, i2 + i3);
        }
    }

    public static <E> e.c.b.b.s<E> h(java.lang.Object[] objArr) {
        return i(objArr, objArr.length);
    }

    public static <E> e.c.b.b.s<E> i(java.lang.Object[] objArr, int i) {
        return i == 0 ? (e.c.b.b.s<E>) e.c.b.b.k0.f2705e : new e.c.b.b.k0(objArr, i);
    }

    public static <E> e.c.b.b.s.a<E> j() {
        return new e.c.b.b.s.a<>();
    }

    public static <E> e.c.b.b.s<E> k(java.lang.Object... objArr) {
        int length = objArr.length;
        for (int i = 0; i < length; i++) {
            d.s.y.j(objArr[i], i);
        }
        return i(objArr, objArr.length);
    }

    public static <E> e.c.b.b.s<E> l(java.util.Collection<? extends E> collection) {
        if (!(collection instanceof e.c.b.b.q)) {
            return k(collection.toArray());
        }
        e.c.b.b.s<E> sVarA = ((e.c.b.b.q) collection).a();
        return sVarA.f() ? h(sVarA.toArray()) : sVarA;
    }

    public static <E> e.c.b.b.s<E> m(E[] eArr) {
        return eArr.length == 0 ? (e.c.b.b.s<E>) e.c.b.b.k0.f2705e : k((java.lang.Object[]) eArr.clone());
    }

    public static <E> e.c.b.b.s<E> p() {
        return (e.c.b.b.s<E>) e.c.b.b.k0.f2705e;
    }

    public static <E> e.c.b.b.s<E> q(E e2) {
        return k(e2);
    }

    public static <E> e.c.b.b.s<E> r(E e2, E e3) {
        return k(e2, e3);
    }

    public static <E> e.c.b.b.s<E> s(E e2, E e3, E e4) {
        return k(e2, e3, e4);
    }

    public static <E> e.c.b.b.s<E> t(E e2, E e3, E e4, E e5, E e6) {
        return k(e2, e3, e4, e5, e6);
    }

    @Override // e.c.b.b.q
    public final e.c.b.b.s<E> a() {
        return this;
    }

    @Override // java.util.List
    @java.lang.Deprecated
    public final void add(int i, E e2) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.List
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    @java.lang.Deprecated
    public final boolean addAll(int i, java.util.Collection<? extends E> collection) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // e.c.b.b.q
    public int b(java.lang.Object[] objArr, int i) {
        int size = size();
        for (int i2 = 0; i2 < size; i2++) {
            objArr[i + i2] = get(i2);
        }
        return i + size;
    }

    @Override // e.c.b.b.q, java.util.AbstractCollection, java.util.Collection, java.util.Set
    public boolean contains(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (obj != this) {
            if (!(obj instanceof java.util.List)) {
                return false;
            }
            java.util.List list = (java.util.List) obj;
            int size = size();
            if (size != list.size()) {
                return false;
            }
            if (!(list instanceof java.util.RandomAccess)) {
                java.util.Iterator<E> it = iterator();
                java.util.Iterator<E> it2 = list.iterator();
                while (it.hasNext()) {
                    if (!it2.hasNext() || !e.c.b.a.f.h(it.next(), it2.next())) {
                        return false;
                    }
                }
                return !it2.hasNext();
            }
            for (int i = 0; i < size; i++) {
                if (!e.c.b.a.f.h(get(i), list.get(i))) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // e.c.b.b.q
    /* renamed from: g */
    public e.c.b.b.w0<E> iterator() {
        return listIterator();
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i = 0; i < size; i++) {
            iHashCode = ((get(i).hashCode() + (iHashCode * 31)) ^ (-1)) ^ (-1);
        }
        return iHashCode;
    }

    @Override // java.util.List
    public int indexOf(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i = 0; i < size; i++) {
            if (obj.equals(get(i))) {
                return i;
            }
        }
        return -1;
    }

    @Override // e.c.b.b.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public java.util.Iterator iterator() {
        return listIterator();
    }

    @Override // java.util.List
    public int lastIndexOf(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    /* renamed from: n, reason: merged with bridge method [inline-methods] */
    public e.c.b.b.a<E> listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* renamed from: o, reason: merged with bridge method [inline-methods] */
    public e.c.b.b.a<E> listIterator(int i) {
        e.c.b.a.f.e(i, size());
        return isEmpty() ? (e.c.b.b.a<E>) b : new e.c.b.b.s.b(this, i);
    }

    @Override // java.util.List
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    @java.lang.Deprecated
    public final E remove(int i) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.List
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    @java.lang.Deprecated
    public final E set(int i, E e2) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.List
    /* renamed from: u */
    public e.c.b.b.s<E> subList(int i, int i2) {
        e.c.b.a.f.f(i, i2, size());
        int i3 = i2 - i;
        return i3 == size() ? this : i3 == 0 ? (e.c.b.b.s<E>) e.c.b.b.k0.f2705e : new e.c.b.b.s.c(i, i3);
    }
}
