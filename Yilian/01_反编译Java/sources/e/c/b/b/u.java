package e.c.b.b;

/* loaded from: classes.dex */
public abstract class u<E> extends e.c.b.b.q<E> implements java.util.Set<E> {

    @com.google.j2objc.annotations.RetainedWith
    @org.checkerframework.checker.nullness.compatqual.NullableDecl
    @com.google.errorprone.annotations.concurrent.LazyInit
    public transient e.c.b.b.s<E> b;

    public static int h(int i) {
        int iMax = java.lang.Math.max(i, 2);
        if (iMax >= 751619276) {
            e.c.b.a.f.b(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = java.lang.Integer.highestOneBit(iMax - 1) << 1;
        while (true) {
            double d2 = iHighestOneBit;
            java.lang.Double.isNaN(d2);
            if (d2 * 0.7d >= iMax) {
                return iHighestOneBit;
            }
            iHighestOneBit <<= 1;
        }
    }

    public static <E> e.c.b.b.u<E> i(int i, java.lang.Object... objArr) {
        if (i == 0) {
            return e.c.b.b.m0.h;
        }
        if (i == 1) {
            return new e.c.b.b.u0(objArr[0]);
        }
        int iH = h(i);
        java.lang.Object[] objArr2 = new java.lang.Object[iH];
        int i2 = iH - 1;
        int i3 = 0;
        int i4 = 0;
        for (int i5 = 0; i5 < i; i5++) {
            java.lang.Object obj = objArr[i5];
            d.s.y.j(obj, i5);
            int iHashCode = obj.hashCode();
            int iP = e.c.b.a.f.p(iHashCode);
            while (true) {
                int i6 = iP & i2;
                java.lang.Object obj2 = objArr2[i6];
                if (obj2 == null) {
                    objArr[i4] = obj;
                    objArr2[i6] = obj;
                    i3 += iHashCode;
                    i4++;
                    break;
                }
                if (obj2.equals(obj)) {
                    break;
                }
                iP++;
            }
        }
        java.util.Arrays.fill(objArr, i4, i, (java.lang.Object) null);
        if (i4 == 1) {
            return new e.c.b.b.u0(objArr[0], i3);
        }
        if (h(i4) < iH / 2) {
            return i(i4, objArr);
        }
        int length = objArr.length;
        if (i4 < (length >> 1) + (length >> 2)) {
            objArr = java.util.Arrays.copyOf(objArr, i4);
        }
        return new e.c.b.b.m0(objArr, i3, objArr2, i2, i4);
    }

    public static <E> e.c.b.b.u<E> j(java.util.Collection<? extends E> collection) {
        if ((collection instanceof e.c.b.b.u) && !(collection instanceof java.util.SortedSet)) {
            e.c.b.b.u<E> uVar = (e.c.b.b.u) collection;
            if (!uVar.f()) {
                return uVar;
            }
        }
        java.lang.Object[] array = collection.toArray();
        return i(array.length, array);
    }

    public static <E> e.c.b.b.u<E> m() {
        return e.c.b.b.m0.h;
    }

    public static <E> e.c.b.b.u<E> n(E e2, E e3, E e4) {
        return i(3, e2, e3, e4);
    }

    @Override // e.c.b.b.q
    public e.c.b.b.s<E> a() {
        e.c.b.b.s<E> sVar = this.b;
        if (sVar != null) {
            return sVar;
        }
        e.c.b.b.s<E> sVarK = k();
        this.b = sVarK;
        return sVarK;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof e.c.b.b.u) && l() && ((e.c.b.b.u) obj).l() && hashCode() != obj.hashCode()) {
            return false;
        }
        return e.c.b.b.j.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return e.c.b.b.j.b(this);
    }

    @Override // e.c.b.b.q, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public /* bridge */ /* synthetic */ java.util.Iterator iterator() {
        return iterator();
    }

    public e.c.b.b.s<E> k() {
        return e.c.b.b.s.h(toArray());
    }

    public boolean l() {
        return false;
    }
}
