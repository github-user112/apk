package e.a.b.b.b;

/* loaded from: classes.dex */
public final class c extends e.a.b.f.d implements java.lang.Comparable<e.a.b.b.b.c> {

    /* renamed from: c, reason: collision with root package name */
    public static final e.a.b.b.b.c f2341c = new e.a.b.b.b.c(0);

    public static class a implements java.lang.Comparable<e.a.b.b.b.c.a> {
        public final e.a.b.d.c.w a;
        public final int b;

        public a(e.a.b.d.c.w wVar, int i) {
            if (i < 0) {
                throw new java.lang.IllegalArgumentException("handler < 0");
            }
            if (wVar == null) {
                throw new java.lang.NullPointerException("exceptionType == null");
            }
            this.b = i;
            this.a = wVar;
        }

        @Override // java.lang.Comparable
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compareTo(e.a.b.b.b.c.a aVar) {
            int i = this.b;
            int i2 = aVar.b;
            if (i < i2) {
                return -1;
            }
            if (i > i2) {
                return 1;
            }
            return this.a.compareTo(aVar.a);
        }

        public boolean equals(java.lang.Object obj) {
            return (obj instanceof e.a.b.b.b.c.a) && compareTo((e.a.b.b.b.c.a) obj) == 0;
        }

        public int hashCode() {
            return this.a.hashCode() + (this.b * 31);
        }
    }

    public c(int i) {
        super(i);
    }

    @Override // e.a.b.f.d, e.a.b.f.k
    public java.lang.String a() {
        return l("", "");
    }

    public boolean i() {
        int length = this.b.length;
        if (length == 0) {
            return false;
        }
        return k(length - 1).a.equals(e.a.b.d.c.w.f2515d);
    }

    @Override // java.lang.Comparable
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public int compareTo(e.a.b.b.b.c cVar) {
        if (this == cVar) {
            return 0;
        }
        int length = this.b.length;
        int length2 = cVar.b.length;
        int iMin = java.lang.Math.min(length, length2);
        for (int i = 0; i < iMin; i++) {
            int iCompareTo = k(i).compareTo(cVar.k(i));
            if (iCompareTo != 0) {
                return iCompareTo;
            }
        }
        if (length < length2) {
            return -1;
        }
        return length > length2 ? 1 : 0;
    }

    public e.a.b.b.b.c.a k(int i) {
        return (e.a.b.b.b.c.a) f(i);
    }

    public java.lang.String l(java.lang.String str, java.lang.String str2) {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(100);
        int length = this.b.length;
        sb.append(str);
        sb.append(str2);
        sb.append("catch ");
        int i = 0;
        while (i < length) {
            e.a.b.b.b.c.a aVarK = k(i);
            if (i != 0) {
                sb.append(",\n");
                sb.append(str);
                sb.append("  ");
            }
            sb.append((i == length + (-1) && i()) ? "<any>" : aVarK.a.a());
            sb.append(" -> ");
            sb.append(d.s.y.f0(aVarK.b));
            i++;
        }
        return sb.toString();
    }
}
