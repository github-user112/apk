package e.a.b.b.b;

/* loaded from: classes.dex */
public final class o extends e.a.b.f.d {

    /* renamed from: c, reason: collision with root package name */
    public static final e.a.b.b.b.o f2365c = new e.a.b.b.b.o(0);

    public enum a {
        START,
        END_SIMPLY,
        END_REPLACED,
        END_MOVED,
        END_CLOBBERED_BY_PREV,
        END_CLOBBERED_BY_NEXT
    }

    public static class b implements java.lang.Comparable<e.a.b.b.b.o.b> {
        public final int a;
        public final e.a.b.b.b.o.a b;

        /* renamed from: c, reason: collision with root package name */
        public final e.a.b.d.b.k f2371c;

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(e.a.b.b.b.o.b bVar) {
            int i = this.a;
            int i2 = bVar.a;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            boolean zD = d();
            return zD != bVar.d() ? zD ? 1 : -1 : this.f2371c.compareTo(bVar.f2371c);
        }

        public e.a.b.d.c.v b() {
            if (this.f2371c != null) {
                throw null;
            }
            throw null;
        }

        public e.a.b.d.c.v c() {
            if (this.f2371c != null) {
                throw null;
            }
            throw null;
        }

        public boolean d() {
            return this.b == e.a.b.b.b.o.a.START;
        }

        public boolean e(e.a.b.d.b.k kVar) {
            return this.f2371c.g(kVar);
        }

        public boolean equals(java.lang.Object obj) {
            return (obj instanceof e.a.b.b.b.o.b) && compareTo((e.a.b.b.b.o.b) obj) == 0;
        }

        public e.a.b.b.b.o.b f(e.a.b.b.b.o.a aVar) {
            if (aVar == this.b) {
                return this;
            }
            int i = this.a;
            e.a.b.d.b.k kVar = this.f2371c;
            if (i < 0) {
                throw new java.lang.IllegalArgumentException("address < 0");
            }
            if (aVar == null) {
                throw new java.lang.NullPointerException("disposition == null");
            }
            try {
                if (kVar != null) {
                    throw new java.lang.NullPointerException("spec.getLocalItem() == null");
                }
                throw null;
            } catch (java.lang.NullPointerException unused) {
                throw new java.lang.NullPointerException("spec == null");
            }
        }

        public java.lang.String toString() {
            return java.lang.Integer.toHexString(this.a) + " " + this.b + " " + this.f2371c;
        }
    }

    public static class c {
        public final java.util.ArrayList<e.a.b.b.b.o.b> a;
        public int b = 0;

        /* renamed from: c, reason: collision with root package name */
        public e.a.b.d.b.m f2372c = null;

        /* renamed from: d, reason: collision with root package name */
        public int[] f2373d = null;

        /* renamed from: e, reason: collision with root package name */
        public int f2374e = 0;

        public c(int i) {
            this.a = new java.util.ArrayList<>(i);
        }

        public static e.a.b.d.b.k e(e.a.b.d.b.k kVar) {
            if (kVar == null || kVar.getType() != e.a.b.d.d.c.p) {
                return kVar;
            }
            return e.a.b.d.b.k.i(kVar.a, e.a.b.d.d.c.s);
        }

        public final void a(int i, int i2) {
            boolean z = this.f2373d == null;
            if (i != this.f2374e || z) {
                if (i < this.f2374e) {
                    throw new java.lang.RuntimeException("shouldn't happen");
                }
                if (z || i2 >= this.f2373d.length) {
                    int i3 = i2 + 1;
                    e.a.b.d.b.m mVar = new e.a.b.d.b.m(i3);
                    int[] iArr = new int[i3];
                    java.util.Arrays.fill(iArr, -1);
                    if (!z) {
                        e.a.b.d.b.m mVar2 = this.f2372c;
                        int length = mVar2.b.length;
                        for (int i4 = 0; i4 < length; i4++) {
                            e.a.b.d.b.k kVarF = mVar2.f(i4);
                            if (kVarF != null) {
                                mVar.g(kVarF);
                            }
                        }
                        int[] iArr2 = this.f2373d;
                        java.lang.System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
                    }
                    this.f2372c = mVar;
                    this.f2373d = iArr;
                }
            }
        }

        public final void b(int i, e.a.b.b.b.o.a aVar, e.a.b.d.b.k kVar) {
            int i2 = kVar.a;
            if (i < 0) {
                throw new java.lang.IllegalArgumentException("address < 0");
            }
            if (aVar == null) {
                throw new java.lang.NullPointerException("disposition == null");
            }
            try {
                throw new java.lang.NullPointerException("spec.getLocalItem() == null");
            } catch (java.lang.NullPointerException unused) {
                throw new java.lang.NullPointerException("spec == null");
            }
        }

        public final void c(int i, e.a.b.b.b.o.a aVar, e.a.b.d.b.k kVar) {
            if (aVar == e.a.b.b.b.o.a.START) {
                throw new java.lang.RuntimeException("shouldn't happen");
            }
            int i2 = this.f2373d[kVar.a];
            if (i2 >= 0) {
                e.a.b.b.b.o.b bVar = this.a.get(i2);
                if (bVar.a == i && bVar.f2371c.equals(kVar)) {
                    java.util.ArrayList<e.a.b.b.b.o.b> arrayList = this.a;
                    bVar.f(aVar);
                    arrayList.set(i2, bVar);
                    this.f2372c.h(kVar);
                    return;
                }
            }
            d(i, kVar, aVar);
        }

        public void d(int i, e.a.b.d.b.k kVar, e.a.b.b.b.o.a aVar) {
            boolean z;
            int i2 = kVar.a;
            e.a.b.d.b.k kVarE = e(kVar);
            a(i, i2);
            if (this.f2373d[i2] >= 0) {
                return;
            }
            boolean z2 = true;
            int size = this.a.size() - 1;
            while (true) {
                z = false;
                if (size < 0) {
                    break;
                }
                e.a.b.b.b.o.b bVar = this.a.get(size);
                if (bVar != null) {
                    if (bVar.a != i) {
                        z2 = false;
                        break;
                    } else if (bVar.f2371c.g(kVarE)) {
                        break;
                    }
                }
                size--;
            }
            this.f2372c.h(kVarE);
            this.a.set(size, null);
            this.b++;
            int i3 = kVarE.a;
            e.a.b.b.b.o.b bVar2 = null;
            while (true) {
                size--;
                if (size < 0) {
                    break;
                }
                bVar2 = this.a.get(size);
                if (bVar2 != null && bVar2.f2371c.a == i3) {
                    z = true;
                    break;
                }
            }
            if (z) {
                this.f2373d[i3] = size;
                if (bVar2.a == i) {
                    java.util.ArrayList<e.a.b.b.b.o.b> arrayList = this.a;
                    bVar2.f(e.a.b.b.b.o.a.END_SIMPLY);
                    arrayList.set(size, bVar2);
                }
            }
            if (z2) {
                return;
            }
            b(i, aVar, kVarE);
            throw null;
        }

        public void f(int i, e.a.b.d.b.k kVar) {
            e.a.b.d.b.k kVar2;
            e.a.b.d.b.k kVarF;
            e.a.b.d.b.k kVarF2;
            int i2 = kVar.a;
            e.a.b.d.b.k kVarE = e(kVar);
            a(i, i2);
            e.a.b.d.b.k kVarF3 = this.f2372c.f(i2);
            if (kVarE.g(kVarF3)) {
                return;
            }
            e.a.b.d.b.m mVar = this.f2372c;
            int length = mVar.b.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    kVar2 = null;
                    break;
                }
                kVar2 = mVar.b[i3];
                if (kVar2 != null && kVarE.k(kVar2)) {
                    break;
                } else {
                    i3++;
                }
            }
            if (kVar2 != null) {
                c(i, e.a.b.b.b.o.a.END_MOVED, kVar2);
            }
            int i4 = this.f2373d[i2];
            if (kVarF3 != null) {
                int i5 = kVarF3.a;
                if (i < 0) {
                    throw new java.lang.IllegalArgumentException("address < 0");
                }
                try {
                    throw new java.lang.NullPointerException("spec.getLocalItem() == null");
                } catch (java.lang.NullPointerException unused) {
                    throw new java.lang.NullPointerException("spec == null");
                }
            }
            if (i4 >= 0) {
                e.a.b.b.b.o.b bVar = this.a.get(i4);
                if (bVar.a == i) {
                    if (bVar.f2371c.g(kVarE)) {
                        this.a.set(i4, null);
                        this.b++;
                        this.f2372c.g(kVarE);
                        this.f2373d[i2] = -1;
                        return;
                    }
                    bVar.f(e.a.b.b.b.o.a.END_REPLACED);
                    this.a.set(i4, bVar);
                }
            }
            if (i2 > 0 && (kVarF2 = this.f2372c.f(i2 - 1)) != null && kVarF2.j()) {
                c(i, e.a.b.b.b.o.a.END_CLOBBERED_BY_NEXT, kVarF2);
            }
            if (kVarE.j() && (kVarF = this.f2372c.f(i2 + 1)) != null) {
                c(i, e.a.b.b.b.o.a.END_CLOBBERED_BY_PREV, kVarF);
            }
            int i6 = kVarE.a;
            if (i < 0) {
                throw new java.lang.IllegalArgumentException("address < 0");
            }
            try {
                throw new java.lang.NullPointerException("spec.getLocalItem() == null");
            } catch (java.lang.NullPointerException unused2) {
                throw new java.lang.NullPointerException("spec == null");
            }
        }
    }

    public o(int i) {
        super(i);
    }

    public static e.a.b.b.b.o j(e.a.b.b.b.i iVar) {
        int length = iVar.b.length;
        e.a.b.b.b.o.c cVar = new e.a.b.b.b.o.c(length);
        for (int i = 0; i < length; i++) {
            e.a.b.b.b.h hVarJ = iVar.j(i);
            if (hVarJ instanceof e.a.b.b.b.p) {
                e.a.b.d.b.m mVar = ((e.a.b.b.b.p) hVarJ).f2375e;
                int iC = hVarJ.c();
                e.a.b.b.b.o.a aVar = e.a.b.b.b.o.a.END_SIMPLY;
                int length2 = mVar.b.length;
                cVar.a(iC, length2 - 1);
                for (int i2 = 0; i2 < length2; i2++) {
                    e.a.b.d.b.k kVarF = cVar.f2372c.f(i2);
                    e.a.b.d.b.k kVarE = e.a.b.b.b.o.c.e(mVar.f(i2));
                    if (kVarF == null) {
                        if (kVarE != null) {
                            cVar.f(iC, kVarE);
                        }
                    } else if (kVarE == null) {
                        cVar.d(iC, kVarF, aVar);
                    } else if (!kVarE.g(kVarF)) {
                        cVar.d(iC, kVarF, aVar);
                        cVar.f(iC, kVarE);
                    }
                }
            } else if (hVarJ instanceof e.a.b.b.b.q) {
                cVar.f(hVarJ.c(), ((e.a.b.b.b.q) hVarJ).f2376e);
            }
        }
        cVar.a(Integer.MAX_VALUE, 0);
        int size = cVar.a.size();
        int i3 = size - cVar.b;
        if (i3 == 0) {
            return f2365c;
        }
        e.a.b.b.b.o.b[] bVarArr = new e.a.b.b.b.o.b[i3];
        if (size == i3) {
            cVar.a.toArray(bVarArr);
        } else {
            java.util.Iterator<e.a.b.b.b.o.b> it = cVar.a.iterator();
            int i4 = 0;
            while (it.hasNext()) {
                e.a.b.b.b.o.b next = it.next();
                if (next != null) {
                    bVarArr[i4] = next;
                    i4++;
                }
            }
        }
        java.util.Arrays.sort(bVarArr);
        e.a.b.b.b.o oVar = new e.a.b.b.b.o(i3);
        for (int i5 = 0; i5 < i3; i5++) {
            oVar.g(i5, bVarArr[i5]);
        }
        oVar.a = false;
        return oVar;
    }

    public e.a.b.b.b.o.b i(int i) {
        return (e.a.b.b.b.o.b) f(i);
    }
}
