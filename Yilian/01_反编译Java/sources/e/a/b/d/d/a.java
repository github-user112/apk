package e.a.b.d.d;

/* loaded from: classes.dex */
public final class a implements java.lang.Comparable<e.a.b.d.d.a> {

    /* renamed from: e, reason: collision with root package name */
    public static final java.util.HashMap<java.lang.String, e.a.b.d.d.a> f2516e = new java.util.HashMap<>(500);
    public final java.lang.String a;
    public final e.a.b.d.d.c b;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.d.d.b f2517c;

    /* renamed from: d, reason: collision with root package name */
    public e.a.b.d.d.b f2518d;

    public a(java.lang.String str, e.a.b.d.d.c cVar, e.a.b.d.d.b bVar) {
        if (str == null) {
            throw new java.lang.NullPointerException("descriptor == null");
        }
        if (cVar == null) {
            throw new java.lang.NullPointerException("returnType == null");
        }
        this.a = str;
        this.b = cVar;
        this.f2517c = bVar;
        this.f2518d = null;
    }

    public static e.a.b.d.d.a c(java.lang.String str) {
        e.a.b.d.d.a aVar;
        int i;
        if (str == null) {
            throw new java.lang.NullPointerException("descriptor == null");
        }
        synchronized (f2516e) {
            aVar = f2516e.get(str);
        }
        if (aVar != null) {
            return aVar;
        }
        int length = str.length();
        if (str.charAt(0) != '(') {
            throw new java.lang.IllegalArgumentException("bad descriptor");
        }
        int i2 = 1;
        int i3 = 0;
        while (true) {
            if (i2 >= length) {
                i2 = 0;
                break;
            }
            char cCharAt = str.charAt(i2);
            if (cCharAt == ')') {
                break;
            }
            if (cCharAt >= 'A' && cCharAt <= 'Z') {
                i3++;
            }
            i2++;
        }
        if (i2 == 0 || i2 == length - 1) {
            throw new java.lang.IllegalArgumentException("bad descriptor");
        }
        if (str.indexOf(41, i2 + 1) != -1) {
            throw new java.lang.IllegalArgumentException("bad descriptor");
        }
        e.a.b.d.d.c[] cVarArr = new e.a.b.d.d.c[i3];
        int i4 = 1;
        int i5 = 0;
        while (true) {
            char cCharAt2 = str.charAt(i4);
            if (cCharAt2 == ')') {
                e.a.b.d.d.c cVarI = e.a.b.d.d.c.i(str.substring(i4 + 1));
                e.a.b.d.d.b bVar = new e.a.b.d.d.b(i5);
                for (int i6 = 0; i6 < i5; i6++) {
                    bVar.g(i6, cVarArr[i6]);
                }
                return d(new e.a.b.d.d.a(str, cVarI, bVar));
            }
            int i7 = i4;
            while (cCharAt2 == '[') {
                i7++;
                cCharAt2 = str.charAt(i7);
            }
            if (cCharAt2 == 'L') {
                int iIndexOf = str.indexOf(59, i7);
                if (iIndexOf == -1) {
                    throw new java.lang.IllegalArgumentException("bad descriptor");
                }
                i = iIndexOf + 1;
            } else {
                i = i7 + 1;
            }
            cVarArr[i5] = e.a.b.d.d.c.h(str.substring(i4, i));
            i5++;
            i4 = i;
        }
    }

    public static e.a.b.d.d.a d(e.a.b.d.d.a aVar) {
        synchronized (f2516e) {
            java.lang.String str = aVar.a;
            e.a.b.d.d.a aVar2 = f2516e.get(str);
            if (aVar2 != null) {
                return aVar2;
            }
            f2516e.put(str, aVar);
            return aVar;
        }
    }

    @Override // java.lang.Comparable
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public int compareTo(e.a.b.d.d.a aVar) {
        if (this == aVar) {
            return 0;
        }
        int iCompareTo = this.b.compareTo(aVar.b);
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        int length = this.f2517c.b.length;
        int length2 = aVar.f2517c.b.length;
        int iMin = java.lang.Math.min(length, length2);
        for (int i = 0; i < iMin; i++) {
            int iCompareTo2 = this.f2517c.j(i).a.compareTo(aVar.f2517c.j(i).a);
            if (iCompareTo2 != 0) {
                return iCompareTo2;
            }
        }
        if (length < length2) {
            return -1;
        }
        return length > length2 ? 1 : 0;
    }

    public e.a.b.d.d.b b() {
        if (this.f2518d == null) {
            int length = this.f2517c.b.length;
            e.a.b.d.d.b bVar = new e.a.b.d.d.b(length);
            boolean z = false;
            for (int i = 0; i < length; i++) {
                e.a.b.d.d.c cVarJ = this.f2517c.j(i);
                int i2 = cVarJ.b;
                if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 6 || i2 == 8) {
                    cVarJ = e.a.b.d.d.c.l;
                    z = true;
                }
                bVar.g(i, cVarJ);
            }
            if (!z) {
                bVar = this.f2517c;
            }
            this.f2518d = bVar;
        }
        return this.f2518d;
    }

    public boolean equals(java.lang.Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof e.a.b.d.d.a) {
            return this.a.equals(((e.a.b.d.d.a) obj).a);
        }
        return false;
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public java.lang.String toString() {
        return this.a;
    }
}
