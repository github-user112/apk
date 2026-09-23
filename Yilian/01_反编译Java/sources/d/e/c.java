package d.e;

/* loaded from: classes.dex */
public final class c<E> implements java.util.Collection<E>, java.util.Set<E> {

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f1888e = new int[0];

    /* renamed from: f, reason: collision with root package name */
    public static final java.lang.Object[] f1889f = new java.lang.Object[0];

    /* renamed from: g, reason: collision with root package name */
    public static java.lang.Object[] f1890g;
    public static int h;
    public static java.lang.Object[] i;
    public static int j;
    public int[] a;
    public java.lang.Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public int f1891c;

    /* renamed from: d, reason: collision with root package name */
    public d.e.g<E, E> f1892d;

    public c() {
        this(0);
    }

    public c(int i2) {
        if (i2 == 0) {
            this.a = f1888e;
            this.b = f1889f;
        } else {
            a(i2);
        }
        this.f1891c = 0;
    }

    public static void b(int[] iArr, java.lang.Object[] objArr, int i2) {
        if (iArr.length == 8) {
            synchronized (d.e.c.class) {
                if (j < 10) {
                    objArr[0] = i;
                    objArr[1] = iArr;
                    for (int i3 = i2 - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    i = objArr;
                    j++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (d.e.c.class) {
                if (h < 10) {
                    objArr[0] = f1890g;
                    objArr[1] = iArr;
                    for (int i4 = i2 - 1; i4 >= 2; i4--) {
                        objArr[i4] = null;
                    }
                    f1890g = objArr;
                    h++;
                }
            }
        }
    }

    public final void a(int i2) {
        if (i2 == 8) {
            synchronized (d.e.c.class) {
                if (i != null) {
                    java.lang.Object[] objArr = i;
                    this.b = objArr;
                    i = (java.lang.Object[]) objArr[0];
                    this.a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    j--;
                    return;
                }
            }
        } else if (i2 == 4) {
            synchronized (d.e.c.class) {
                if (f1890g != null) {
                    java.lang.Object[] objArr2 = f1890g;
                    this.b = objArr2;
                    f1890g = (java.lang.Object[]) objArr2[0];
                    this.a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    h--;
                    return;
                }
            }
        }
        this.a = new int[i2];
        this.b = new java.lang.Object[i2];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e2) {
        int i2;
        int iC;
        if (e2 == null) {
            iC = d();
            i2 = 0;
        } else {
            int iHashCode = e2.hashCode();
            i2 = iHashCode;
            iC = c(e2, iHashCode);
        }
        if (iC >= 0) {
            return false;
        }
        int i3 = iC ^ (-1);
        int i4 = this.f1891c;
        if (i4 >= this.a.length) {
            int i5 = 4;
            if (i4 >= 8) {
                i5 = (i4 >> 1) + i4;
            } else if (i4 >= 4) {
                i5 = 8;
            }
            int[] iArr = this.a;
            java.lang.Object[] objArr = this.b;
            a(i5);
            int[] iArr2 = this.a;
            if (iArr2.length > 0) {
                java.lang.System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                java.lang.System.arraycopy(objArr, 0, this.b, 0, objArr.length);
            }
            b(iArr, objArr, this.f1891c);
        }
        int i6 = this.f1891c;
        if (i3 < i6) {
            int[] iArr3 = this.a;
            int i7 = i3 + 1;
            java.lang.System.arraycopy(iArr3, i3, iArr3, i7, i6 - i3);
            java.lang.Object[] objArr2 = this.b;
            java.lang.System.arraycopy(objArr2, i3, objArr2, i7, this.f1891c - i3);
        }
        this.a[i3] = i2;
        this.b[i3] = e2;
        this.f1891c++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(java.util.Collection<? extends E> collection) {
        int size = collection.size() + this.f1891c;
        int[] iArr = this.a;
        boolean zAdd = false;
        if (iArr.length < size) {
            java.lang.Object[] objArr = this.b;
            a(size);
            int i2 = this.f1891c;
            if (i2 > 0) {
                java.lang.System.arraycopy(iArr, 0, this.a, 0, i2);
                java.lang.System.arraycopy(objArr, 0, this.b, 0, this.f1891c);
            }
            b(iArr, objArr, this.f1891c);
        }
        java.util.Iterator<? extends E> it = collection.iterator();
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    public final int c(java.lang.Object obj, int i2) {
        int i3 = this.f1891c;
        if (i3 == 0) {
            return -1;
        }
        int iA = d.e.d.a(this.a, i3, i2);
        if (iA < 0 || obj.equals(this.b[iA])) {
            return iA;
        }
        int i4 = iA + 1;
        while (i4 < i3 && this.a[i4] == i2) {
            if (obj.equals(this.b[i4])) {
                return i4;
            }
            i4++;
        }
        for (int i5 = iA - 1; i5 >= 0 && this.a[i5] == i2; i5--) {
            if (obj.equals(this.b[i5])) {
                return i5;
            }
        }
        return i4 ^ (-1);
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i2 = this.f1891c;
        if (i2 != 0) {
            b(this.a, this.b, i2);
            this.a = f1888e;
            this.b = f1889f;
            this.f1891c = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(java.lang.Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(java.util.Collection<?> collection) {
        java.util.Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final int d() {
        int i2 = this.f1891c;
        if (i2 == 0) {
            return -1;
        }
        int iA = d.e.d.a(this.a, i2, 0);
        if (iA < 0 || this.b[iA] == null) {
            return iA;
        }
        int i3 = iA + 1;
        while (i3 < i2 && this.a[i3] == 0) {
            if (this.b[i3] == null) {
                return i3;
            }
            i3++;
        }
        for (int i4 = iA - 1; i4 >= 0 && this.a[i4] == 0; i4--) {
            if (this.b[i4] == null) {
                return i4;
            }
        }
        return i3 ^ (-1);
    }

    public E e(int i2) {
        java.lang.Object[] objArr = this.b;
        E e2 = (E) objArr[i2];
        int i3 = this.f1891c;
        if (i3 <= 1) {
            b(this.a, objArr, i3);
            this.a = f1888e;
            this.b = f1889f;
            this.f1891c = 0;
        } else {
            int[] iArr = this.a;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                int i4 = this.f1891c - 1;
                this.f1891c = i4;
                if (i2 < i4) {
                    int[] iArr2 = this.a;
                    int i5 = i2 + 1;
                    java.lang.System.arraycopy(iArr2, i5, iArr2, i2, i4 - i2);
                    java.lang.Object[] objArr2 = this.b;
                    java.lang.System.arraycopy(objArr2, i5, objArr2, i2, this.f1891c - i2);
                }
                this.b[this.f1891c] = null;
            } else {
                int i6 = i3 > 8 ? i3 + (i3 >> 1) : 8;
                int[] iArr3 = this.a;
                java.lang.Object[] objArr3 = this.b;
                a(i6);
                this.f1891c--;
                if (i2 > 0) {
                    java.lang.System.arraycopy(iArr3, 0, this.a, 0, i2);
                    java.lang.System.arraycopy(objArr3, 0, this.b, 0, i2);
                }
                int i7 = this.f1891c;
                if (i2 < i7) {
                    int i8 = i2 + 1;
                    java.lang.System.arraycopy(iArr3, i8, this.a, i2, i7 - i2);
                    java.lang.System.arraycopy(objArr3, i8, this.b, i2, this.f1891c - i2);
                }
            }
        }
        return e2;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof java.util.Set) {
            java.util.Set set = (java.util.Set) obj;
            if (this.f1891c != set.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f1891c; i2++) {
                try {
                    if (!set.contains(this.b[i2])) {
                        return false;
                    }
                } catch (java.lang.ClassCastException | java.lang.NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.a;
        int i2 = this.f1891c;
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            i3 += iArr[i4];
        }
        return i3;
    }

    public int indexOf(java.lang.Object obj) {
        return obj == null ? d() : c(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f1891c <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public java.util.Iterator<E> iterator() {
        if (this.f1892d == null) {
            this.f1892d = new d.e.b(this);
        }
        d.e.g<E, E> gVar = this.f1892d;
        if (gVar.b == null) {
            gVar.b = new d.e.g.c();
        }
        return gVar.b.iterator();
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(java.lang.Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        e(iIndexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(java.util.Collection<?> collection) {
        java.util.Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(java.util.Collection<?> collection) {
        boolean z = false;
        for (int i2 = this.f1891c - 1; i2 >= 0; i2--) {
            if (!collection.contains(this.b[i2])) {
                e(i2);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f1891c;
    }

    @Override // java.util.Collection, java.util.Set
    public java.lang.Object[] toArray() {
        int i2 = this.f1891c;
        java.lang.Object[] objArr = new java.lang.Object[i2];
        java.lang.System.arraycopy(this.b, 0, objArr, 0, i2);
        return objArr;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f1891c) {
            tArr = (T[]) ((java.lang.Object[]) java.lang.reflect.Array.newInstance(tArr.getClass().getComponentType(), this.f1891c));
        }
        java.lang.System.arraycopy(this.b, 0, tArr, 0, this.f1891c);
        int length = tArr.length;
        int i2 = this.f1891c;
        if (length > i2) {
            tArr[i2] = null;
        }
        return tArr;
    }

    public java.lang.String toString() {
        if (isEmpty()) {
            return "{}";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(this.f1891c * 14);
        sb.append('{');
        for (int i2 = 0; i2 < this.f1891c; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            java.lang.Object obj = this.b[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
