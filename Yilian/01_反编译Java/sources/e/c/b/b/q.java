package e.c.b.b;

/* loaded from: classes.dex */
public abstract class q<E> extends java.util.AbstractCollection<E> implements java.io.Serializable {
    public static final java.lang.Object[] a = new java.lang.Object[0];

    public static abstract class a<E> extends e.c.b.b.q.b<E> {
        public java.lang.Object[] a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2739c;

        public a(int i) {
            d.s.y.l(i, "initialCapacity");
            this.a = new java.lang.Object[i];
            this.b = 0;
        }
    }

    public static abstract class b<E> {
        public static int a(int i, int i2) {
            if (i2 < 0) {
                throw new java.lang.AssertionError("cannot store more than MAX_VALUE elements");
            }
            int iHighestOneBit = i + (i >> 1) + 1;
            if (iHighestOneBit < i2) {
                iHighestOneBit = java.lang.Integer.highestOneBit(i2 - 1) << 1;
            }
            if (iHighestOneBit < 0) {
                return Integer.MAX_VALUE;
            }
            return iHighestOneBit;
        }
    }

    public e.c.b.b.s<E> a() {
        return isEmpty() ? e.c.b.b.s.p() : e.c.b.b.s.h(toArray());
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    @java.lang.Deprecated
    public final boolean add(E e2) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    @java.lang.Deprecated
    public final boolean addAll(java.util.Collection<? extends E> collection) {
        throw new java.lang.UnsupportedOperationException();
    }

    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public int b(java.lang.Object[] objArr, int i) {
        e.c.b.b.w0<E> it = iterator();
        while (it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
        return i;
    }

    public java.lang.Object[] c() {
        return null;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @java.lang.Deprecated
    public final void clear() {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public abstract boolean contains(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj);

    public int d() {
        throw new java.lang.UnsupportedOperationException();
    }

    public int e() {
        throw new java.lang.UnsupportedOperationException();
    }

    public abstract boolean f();

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    /* renamed from: g, reason: merged with bridge method [inline-methods] */
    public abstract e.c.b.b.w0<E> iterator();

    @Override // java.util.AbstractCollection, java.util.Collection
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    @java.lang.Deprecated
    public final boolean remove(java.lang.Object obj) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    @java.lang.Deprecated
    public final boolean removeAll(java.util.Collection<?> collection) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    @java.lang.Deprecated
    public final boolean retainAll(java.util.Collection<?> collection) {
        throw new java.lang.UnsupportedOperationException();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final java.lang.Object[] toArray() {
        return toArray(a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    @com.google.errorprone.annotations.CanIgnoreReturnValue
    public final <T> T[] toArray(T[] tArr) {
        if (tArr == null) {
            throw null;
        }
        int size = size();
        if (tArr.length < size) {
            java.lang.Object[] objArrC = c();
            if (objArrC != null) {
                return (T[]) java.util.Arrays.copyOfRange(objArrC, e(), d(), tArr.getClass());
            }
            tArr = (T[]) ((java.lang.Object[]) java.lang.reflect.Array.newInstance(tArr.getClass().getComponentType(), size));
        } else if (tArr.length > size) {
            tArr[size] = null;
        }
        b(tArr, 0);
        return tArr;
    }
}
