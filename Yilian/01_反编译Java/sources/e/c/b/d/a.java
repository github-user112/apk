package e.c.b.d;

/* loaded from: classes.dex */
public class a extends java.util.AbstractList<java.lang.Integer> implements java.util.RandomAccess, java.io.Serializable {
    public final int[] a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int f2750c;

    public a(int[] iArr) {
        int length = iArr.length;
        this.a = iArr;
        this.b = 0;
        this.f2750c = length;
    }

    public a(int[] iArr, int i, int i2) {
        this.a = iArr;
        this.b = i;
        this.f2750c = i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(java.lang.Object obj) {
        if (obj instanceof java.lang.Integer) {
            int[] iArr = this.a;
            int iIntValue = ((java.lang.Integer) obj).intValue();
            int i = this.b;
            int i2 = this.f2750c;
            while (true) {
                if (i >= i2) {
                    i = -1;
                    break;
                }
                if (iArr[i] == iIntValue) {
                    break;
                }
                i++;
            }
            if (i != -1) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(@org.checkerframework.checker.nullness.compatqual.NullableDecl java.lang.Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof e.c.b.d.a)) {
            return super.equals(obj);
        }
        e.c.b.d.a aVar = (e.c.b.d.a) obj;
        int size = size();
        if (aVar.size() != size) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (this.a[this.b + i] != aVar.a[aVar.b + i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public java.lang.Object get(int i) {
        e.c.b.a.f.c(i, size());
        return java.lang.Integer.valueOf(this.a[this.b + i]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i = 1;
        for (int i2 = this.b; i2 < this.f2750c; i2++) {
            i = (i * 31) + this.a[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(java.lang.Object obj) {
        if (obj instanceof java.lang.Integer) {
            int[] iArr = this.a;
            int iIntValue = ((java.lang.Integer) obj).intValue();
            int i = this.b;
            int i2 = this.f2750c;
            while (true) {
                if (i >= i2) {
                    i = -1;
                    break;
                }
                if (iArr[i] == iIntValue) {
                    break;
                }
                i++;
            }
            if (i >= 0) {
                return i - this.b;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(java.lang.Object obj) {
        if (obj instanceof java.lang.Integer) {
            int[] iArr = this.a;
            int iIntValue = ((java.lang.Integer) obj).intValue();
            int i = this.b;
            int i2 = this.f2750c - 1;
            while (true) {
                if (i2 < i) {
                    i2 = -1;
                    break;
                }
                if (iArr[i2] == iIntValue) {
                    break;
                }
                i2--;
            }
            if (i2 >= 0) {
                return i2 - this.b;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public java.lang.Object set(int i, java.lang.Object obj) {
        java.lang.Integer num = (java.lang.Integer) obj;
        e.c.b.a.f.c(i, size());
        int[] iArr = this.a;
        int i2 = this.b + i;
        int i3 = iArr[i2];
        if (num == null) {
            throw null;
        }
        iArr[i2] = num.intValue();
        return java.lang.Integer.valueOf(i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f2750c - this.b;
    }

    @Override // java.util.AbstractList, java.util.List
    public java.util.List<java.lang.Integer> subList(int i, int i2) {
        e.c.b.a.f.f(i, i2, size());
        if (i == i2) {
            return java.util.Collections.emptyList();
        }
        int[] iArr = this.a;
        int i3 = this.b;
        return new e.c.b.d.a(iArr, i + i3, i3 + i2);
    }

    @Override // java.util.AbstractCollection
    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(size() * 5);
        sb.append('[');
        sb.append(this.a[this.b]);
        int i = this.b;
        while (true) {
            i++;
            if (i >= this.f2750c) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            sb.append(this.a[i]);
        }
    }
}
