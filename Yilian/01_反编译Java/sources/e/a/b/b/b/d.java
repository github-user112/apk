package e.a.b.b.b;

/* loaded from: classes.dex */
public final class d extends e.a.b.f.d implements java.lang.Comparable<e.a.b.b.b.d> {

    /* renamed from: c, reason: collision with root package name */
    public static final e.a.b.b.b.d f2342c = new e.a.b.b.b.d(0);

    public static class a implements java.lang.Comparable<e.a.b.b.b.d.a> {
        public final int a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final e.a.b.b.b.c f2343c;

        public a(int i, int i2, e.a.b.b.b.c cVar) {
            if (i < 0) {
                throw new java.lang.IllegalArgumentException("start < 0");
            }
            if (i2 <= i) {
                throw new java.lang.IllegalArgumentException("end <= start");
            }
            if (cVar.a) {
                throw new java.lang.IllegalArgumentException("handlers.isMutable()");
            }
            this.a = i;
            this.b = i2;
            this.f2343c = cVar;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(e.a.b.b.b.d.a aVar) {
            int i = this.a;
            int i2 = aVar.a;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            int i3 = this.b;
            int i4 = aVar.b;
            if (i3 < i4) {
                return -1;
            }
            if (i3 > i4) {
                return 1;
            }
            return this.f2343c.compareTo(aVar.f2343c);
        }

        public boolean equals(java.lang.Object obj) {
            return (obj instanceof e.a.b.b.b.d.a) && compareTo((e.a.b.b.b.d.a) obj) == 0;
        }

        public int hashCode() {
            return this.f2343c.hashCode() + (((this.a * 31) + this.b) * 31);
        }
    }

    public d(int i) {
        super(i);
    }

    @Override // java.lang.Comparable
    public int compareTo(e.a.b.b.b.d dVar) {
        e.a.b.b.b.d dVar2 = dVar;
        if (this == dVar2) {
            return 0;
        }
        int length = this.b.length;
        int length2 = dVar2.b.length;
        int iMin = java.lang.Math.min(length, length2);
        for (int i = 0; i < iMin; i++) {
            int iCompareTo = i(i).compareTo(dVar2.i(i));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        if (length < length2) {
            return -1;
        }
        return length > length2 ? 1 : 0;
    }

    public e.a.b.b.b.d.a i(int i) {
        return (e.a.b.b.b.d.a) f(i);
    }
}
