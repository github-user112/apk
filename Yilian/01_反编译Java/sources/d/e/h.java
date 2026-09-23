package d.e;

/* loaded from: classes.dex */
public class h<K, V> {

    /* renamed from: d, reason: collision with root package name */
    public static java.lang.Object[] f1908d;

    /* renamed from: e, reason: collision with root package name */
    public static int f1909e;

    /* renamed from: f, reason: collision with root package name */
    public static java.lang.Object[] f1910f;

    /* renamed from: g, reason: collision with root package name */
    public static int f1911g;
    public int[] a;
    public java.lang.Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public int f1912c;

    public h() {
        this.a = d.e.d.a;
        this.b = d.e.d.f1893c;
        this.f1912c = 0;
    }

    public h(int i) {
        if (i == 0) {
            this.a = d.e.d.a;
            this.b = d.e.d.f1893c;
        } else {
            a(i);
        }
        this.f1912c = 0;
    }

    public static void c(int[] iArr, java.lang.Object[] objArr, int i) {
        if (iArr.length == 8) {
            synchronized (d.e.h.class) {
                if (f1911g < 10) {
                    objArr[0] = f1910f;
                    objArr[1] = iArr;
                    for (int i2 = (i << 1) - 1; i2 >= 2; i2--) {
                        objArr[i2] = null;
                    }
                    f1910f = objArr;
                    f1911g++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (d.e.h.class) {
                if (f1909e < 10) {
                    objArr[0] = f1908d;
                    objArr[1] = iArr;
                    for (int i3 = (i << 1) - 1; i3 >= 2; i3--) {
                        objArr[i3] = null;
                    }
                    f1908d = objArr;
                    f1909e++;
                }
            }
        }
    }

    public final void a(int i) {
        if (i == 8) {
            synchronized (d.e.h.class) {
                if (f1910f != null) {
                    java.lang.Object[] objArr = f1910f;
                    this.b = objArr;
                    f1910f = (java.lang.Object[]) objArr[0];
                    this.a = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f1911g--;
                    return;
                }
            }
        } else if (i == 4) {
            synchronized (d.e.h.class) {
                if (f1908d != null) {
                    java.lang.Object[] objArr2 = f1908d;
                    this.b = objArr2;
                    f1908d = (java.lang.Object[]) objArr2[0];
                    this.a = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f1909e--;
                    return;
                }
            }
        }
        this.a = new int[i];
        this.b = new java.lang.Object[i << 1];
    }

    public void b(int i) {
        int i2 = this.f1912c;
        int[] iArr = this.a;
        if (iArr.length < i) {
            java.lang.Object[] objArr = this.b;
            a(i);
            if (this.f1912c > 0) {
                java.lang.System.arraycopy(iArr, 0, this.a, 0, i2);
                java.lang.System.arraycopy(objArr, 0, this.b, 0, i2 << 1);
            }
            c(iArr, objArr, i2);
        }
        if (this.f1912c != i2) {
            throw new java.util.ConcurrentModificationException();
        }
    }

    public void clear() {
        int i = this.f1912c;
        if (i > 0) {
            int[] iArr = this.a;
            java.lang.Object[] objArr = this.b;
            this.a = d.e.d.a;
            this.b = d.e.d.f1893c;
            this.f1912c = 0;
            c(iArr, objArr, i);
        }
        if (this.f1912c > 0) {
            throw new java.util.ConcurrentModificationException();
        }
    }

    public boolean containsKey(java.lang.Object obj) {
        return e(obj) >= 0;
    }

    public boolean containsValue(java.lang.Object obj) {
        return g(obj) >= 0;
    }

    public int d(java.lang.Object obj, int i) {
        int i2 = this.f1912c;
        if (i2 == 0) {
            return -1;
        }
        try {
            int iA = d.e.d.a(this.a, i2, i);
            if (iA < 0 || obj.equals(this.b[iA << 1])) {
                return iA;
            }
            int i3 = iA + 1;
            while (i3 < i2 && this.a[i3] == i) {
                if (obj.equals(this.b[i3 << 1])) {
                    return i3;
                }
                i3++;
            }
            for (int i4 = iA - 1; i4 >= 0 && this.a[i4] == i; i4--) {
                if (obj.equals(this.b[i4 << 1])) {
                    return i4;
                }
            }
            return i3 ^ (-1);
        } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
            throw new java.util.ConcurrentModificationException();
        }
    }

    public int e(java.lang.Object obj) {
        return obj == null ? f() : d(obj, obj.hashCode());
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof d.e.h) {
            d.e.h hVar = (d.e.h) obj;
            if (this.f1912c != hVar.f1912c) {
                return false;
            }
            for (int i = 0; i < this.f1912c; i++) {
                try {
                    K kH = h(i);
                    V vK = k(i);
                    java.lang.Object obj2 = hVar.get(kH);
                    if (vK == null) {
                        if (obj2 != null || !hVar.containsKey(kH)) {
                            return false;
                        }
                    } else if (!vK.equals(obj2)) {
                        return false;
                    }
                } catch (java.lang.ClassCastException | java.lang.NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof java.util.Map) {
            java.util.Map map = (java.util.Map) obj;
            if (this.f1912c != map.size()) {
                return false;
            }
            for (int i2 = 0; i2 < this.f1912c; i2++) {
                try {
                    K kH2 = h(i2);
                    V vK2 = k(i2);
                    java.lang.Object obj3 = map.get(kH2);
                    if (vK2 == null) {
                        if (obj3 != null || !map.containsKey(kH2)) {
                            return false;
                        }
                    } else if (!vK2.equals(obj3)) {
                        return false;
                    }
                } catch (java.lang.ClassCastException | java.lang.NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public int f() {
        int i = this.f1912c;
        if (i == 0) {
            return -1;
        }
        try {
            int iA = d.e.d.a(this.a, i, 0);
            if (iA < 0 || this.b[iA << 1] == null) {
                return iA;
            }
            int i2 = iA + 1;
            while (i2 < i && this.a[i2] == 0) {
                if (this.b[i2 << 1] == null) {
                    return i2;
                }
                i2++;
            }
            for (int i3 = iA - 1; i3 >= 0 && this.a[i3] == 0; i3--) {
                if (this.b[i3 << 1] == null) {
                    return i3;
                }
            }
            return i2 ^ (-1);
        } catch (java.lang.ArrayIndexOutOfBoundsException unused) {
            throw new java.util.ConcurrentModificationException();
        }
    }

    public int g(java.lang.Object obj) {
        int i = this.f1912c * 2;
        java.lang.Object[] objArr = this.b;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public V get(java.lang.Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(java.lang.Object obj, V v) {
        int iE = e(obj);
        return iE >= 0 ? (V) this.b[(iE << 1) + 1] : v;
    }

    public K h(int i) {
        return (K) this.b[i << 1];
    }

    public int hashCode() {
        int[] iArr = this.a;
        java.lang.Object[] objArr = this.b;
        int i = this.f1912c;
        int i2 = 1;
        int i3 = 0;
        int iHashCode = 0;
        while (i3 < i) {
            java.lang.Object obj = objArr[i2];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i3];
            i3++;
            i2 += 2;
        }
        return iHashCode;
    }

    public V i(int i) {
        java.lang.Object[] objArr = this.b;
        int i2 = i << 1;
        V v = (V) objArr[i2 + 1];
        int i3 = this.f1912c;
        int i4 = 0;
        if (i3 <= 1) {
            c(this.a, objArr, i3);
            this.a = d.e.d.a;
            this.b = d.e.d.f1893c;
        } else {
            int i5 = i3 - 1;
            int[] iArr = this.a;
            if (iArr.length <= 8 || i3 >= iArr.length / 3) {
                if (i < i5) {
                    int[] iArr2 = this.a;
                    int i6 = i + 1;
                    int i7 = i5 - i;
                    java.lang.System.arraycopy(iArr2, i6, iArr2, i, i7);
                    java.lang.Object[] objArr2 = this.b;
                    java.lang.System.arraycopy(objArr2, i6 << 1, objArr2, i2, i7 << 1);
                }
                java.lang.Object[] objArr3 = this.b;
                int i8 = i5 << 1;
                objArr3[i8] = null;
                objArr3[i8 + 1] = null;
            } else {
                int i9 = i3 > 8 ? i3 + (i3 >> 1) : 8;
                int[] iArr3 = this.a;
                java.lang.Object[] objArr4 = this.b;
                a(i9);
                if (i3 != this.f1912c) {
                    throw new java.util.ConcurrentModificationException();
                }
                if (i > 0) {
                    java.lang.System.arraycopy(iArr3, 0, this.a, 0, i);
                    java.lang.System.arraycopy(objArr4, 0, this.b, 0, i2);
                }
                if (i < i5) {
                    int i10 = i + 1;
                    int i11 = i5 - i;
                    java.lang.System.arraycopy(iArr3, i10, this.a, i, i11);
                    java.lang.System.arraycopy(objArr4, i10 << 1, this.b, i2, i11 << 1);
                }
            }
            i4 = i5;
        }
        if (i3 != this.f1912c) {
            throw new java.util.ConcurrentModificationException();
        }
        this.f1912c = i4;
        return v;
    }

    public boolean isEmpty() {
        return this.f1912c <= 0;
    }

    public V j(int i, V v) {
        int i2 = (i << 1) + 1;
        java.lang.Object[] objArr = this.b;
        V v2 = (V) objArr[i2];
        objArr[i2] = v;
        return v2;
    }

    public V k(int i) {
        return (V) this.b[(i << 1) + 1];
    }

    public V put(K k, V v) {
        int i;
        int iD;
        int i2 = this.f1912c;
        if (k == null) {
            iD = f();
            i = 0;
        } else {
            int iHashCode = k.hashCode();
            i = iHashCode;
            iD = d(k, iHashCode);
        }
        if (iD >= 0) {
            int i3 = (iD << 1) + 1;
            java.lang.Object[] objArr = this.b;
            V v2 = (V) objArr[i3];
            objArr[i3] = v;
            return v2;
        }
        int i4 = iD ^ (-1);
        if (i2 >= this.a.length) {
            int i5 = 4;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 >= 4) {
                i5 = 8;
            }
            int[] iArr = this.a;
            java.lang.Object[] objArr2 = this.b;
            a(i5);
            if (i2 != this.f1912c) {
                throw new java.util.ConcurrentModificationException();
            }
            int[] iArr2 = this.a;
            if (iArr2.length > 0) {
                java.lang.System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                java.lang.System.arraycopy(objArr2, 0, this.b, 0, objArr2.length);
            }
            c(iArr, objArr2, i2);
        }
        if (i4 < i2) {
            int[] iArr3 = this.a;
            int i6 = i4 + 1;
            java.lang.System.arraycopy(iArr3, i4, iArr3, i6, i2 - i4);
            java.lang.Object[] objArr3 = this.b;
            java.lang.System.arraycopy(objArr3, i4 << 1, objArr3, i6 << 1, (this.f1912c - i4) << 1);
        }
        int i7 = this.f1912c;
        if (i2 == i7) {
            int[] iArr4 = this.a;
            if (i4 < iArr4.length) {
                iArr4[i4] = i;
                java.lang.Object[] objArr4 = this.b;
                int i8 = i4 << 1;
                objArr4[i8] = k;
                objArr4[i8 + 1] = v;
                this.f1912c = i7 + 1;
                return null;
            }
        }
        throw new java.util.ConcurrentModificationException();
    }

    public V putIfAbsent(K k, V v) {
        V orDefault = getOrDefault(k, null);
        return orDefault == null ? put(k, v) : orDefault;
    }

    public V remove(java.lang.Object obj) {
        int iE = e(obj);
        if (iE >= 0) {
            return i(iE);
        }
        return null;
    }

    public boolean remove(java.lang.Object obj, java.lang.Object obj2) {
        int iE = e(obj);
        if (iE < 0) {
            return false;
        }
        V vK = k(iE);
        if (obj2 != vK && (obj2 == null || !obj2.equals(vK))) {
            return false;
        }
        i(iE);
        return true;
    }

    public V replace(K k, V v) {
        int iE = e(k);
        if (iE >= 0) {
            return j(iE, v);
        }
        return null;
    }

    public boolean replace(K k, V v, V v2) {
        int iE = e(k);
        if (iE < 0) {
            return false;
        }
        V vK = k(iE);
        if (vK != v && (v == null || !v.equals(vK))) {
            return false;
        }
        j(iE, v2);
        return true;
    }

    public int size() {
        return this.f1912c;
    }

    public java.lang.String toString() {
        if (isEmpty()) {
            return "{}";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder(this.f1912c * 28);
        sb.append('{');
        for (int i = 0; i < this.f1912c; i++) {
            if (i > 0) {
                sb.append(", ");
            }
            K kH = h(i);
            if (kH != this) {
                sb.append(kH);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vK = k(i);
            if (vK != this) {
                sb.append(vK);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }
}
