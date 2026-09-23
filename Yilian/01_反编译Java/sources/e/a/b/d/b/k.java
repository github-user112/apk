package e.a.b.d.b;

/* loaded from: classes.dex */
public final class k implements e.a.b.d.d.d, e.a.b.f.k, java.lang.Comparable<e.a.b.d.b.k> {

    /* renamed from: d, reason: collision with root package name */
    public static final java.util.HashMap<java.lang.Object, e.a.b.d.b.k> f2487d = new java.util.HashMap<>(1000);

    /* renamed from: e, reason: collision with root package name */
    public static final e.a.b.d.b.k.b f2488e = new e.a.b.d.b.k.b(null);
    public final int a;
    public final e.a.b.d.d.d b;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.d.b.g f2489c;

    public static class b {
        public int a;
        public e.a.b.d.d.d b;

        /* renamed from: c, reason: collision with root package name */
        public e.a.b.d.b.g f2490c;

        public b() {
        }

        public b(e.a.b.d.b.k.a aVar) {
        }

        public boolean equals(java.lang.Object obj) {
            if (obj instanceof e.a.b.d.b.k) {
                return e.a.b.d.b.k.b((e.a.b.d.b.k) obj, this.a, this.b);
            }
            return false;
        }

        public int hashCode() {
            return e.a.b.d.b.k.d(this.a, this.b);
        }
    }

    public k(int i, e.a.b.d.d.d dVar, e.a.b.d.b.g gVar, e.a.b.d.b.k.a aVar) {
        if (i < 0) {
            throw new java.lang.IllegalArgumentException("reg < 0");
        }
        if (dVar == null) {
            throw new java.lang.NullPointerException("type == null");
        }
        this.a = i;
        this.b = dVar;
        this.f2489c = null;
    }

    public static /* synthetic */ boolean b(e.a.b.d.b.k kVar, int i, e.a.b.d.d.d dVar) {
        return kVar.f(i, dVar, null);
    }

    public static int d(int i, e.a.b.d.d.d dVar) {
        return ((dVar.hashCode() + 0) * 31) + i;
    }

    public static e.a.b.d.b.k i(int i, e.a.b.d.d.d dVar) {
        synchronized (f2487d) {
            e.a.b.d.b.k.b bVar = f2488e;
            bVar.a = i;
            bVar.b = dVar;
            bVar.f2490c = null;
            e.a.b.d.b.k kVar = f2487d.get(f2488e);
            if (kVar != null) {
                return kVar;
            }
            e.a.b.d.b.k.b bVar2 = f2488e;
            if (bVar2 == null) {
                throw null;
            }
            e.a.b.d.b.k kVar2 = new e.a.b.d.b.k(bVar2.a, bVar2.b, null, null);
            f2487d.put(kVar2, kVar2);
            return kVar2;
        }
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        return m(true);
    }

    @Override // e.a.b.d.d.d
    public final int c() {
        return this.b.c();
    }

    @Override // java.lang.Comparable
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public int compareTo(e.a.b.d.b.k kVar) {
        int i = this.a;
        int i2 = kVar.a;
        if (i < i2) {
            return -1;
        }
        if (i > i2) {
            return 1;
        }
        int iCompareTo = this.b.getType().compareTo(kVar.b.getType());
        if (iCompareTo != 0) {
            return iCompareTo;
        }
        return 0;
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof e.a.b.d.b.k) {
            e.a.b.d.b.k kVar = (e.a.b.d.b.k) obj;
            return f(kVar.a, kVar.b, null);
        }
        if (!(obj instanceof e.a.b.d.b.k.b)) {
            return false;
        }
        e.a.b.d.b.k.b bVar = (e.a.b.d.b.k.b) obj;
        return f(bVar.a, bVar.b, null);
    }

    public final boolean f(int i, e.a.b.d.d.d dVar, e.a.b.d.b.g gVar) {
        return this.a == i && this.b.equals(dVar);
    }

    public boolean g(e.a.b.d.b.k kVar) {
        return k(kVar) && this.a == kVar.a;
    }

    @Override // e.a.b.d.d.d
    public e.a.b.d.d.c getType() {
        return this.b.getType();
    }

    public int h() {
        return this.b.getType().f();
    }

    public int hashCode() {
        return ((this.b.hashCode() + 0) * 31) + this.a;
    }

    public boolean j() {
        int i = this.b.getType().b;
        return i == 4 || i == 7;
    }

    public boolean k(e.a.b.d.b.k kVar) {
        if (kVar == null) {
            return false;
        }
        return this.b.getType().equals(kVar.b.getType());
    }

    public java.lang.String l() {
        return e.a.c.a.a.K("v", this.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0034  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m(boolean r4) {
        /*
            r3 = this;
            java.lang.StringBuffer r0 = new java.lang.StringBuffer
            r1 = 40
            r0.<init>(r1)
            java.lang.String r1 = r3.l()
            r0.append(r1)
            java.lang.String r1 = ":"
            r0.append(r1)
            e.a.b.d.d.d r1 = r3.b
            e.a.b.d.d.c r1 = r1.getType()
            r0.append(r1)
            e.a.b.d.d.d r2 = r3.b
            if (r1 == r2) goto L49
            java.lang.String r1 = "="
            r0.append(r1)
            if (r4 == 0) goto L34
            e.a.b.d.d.d r1 = r3.b
            boolean r2 = r1 instanceof e.a.b.d.c.v
            if (r2 == 0) goto L34
            e.a.b.d.c.v r1 = (e.a.b.d.c.v) r1
            java.lang.String r4 = r1.f()
            goto L40
        L34:
            if (r4 == 0) goto L44
            e.a.b.d.d.d r4 = r3.b
            boolean r1 = r4 instanceof e.a.b.d.c.a
            if (r1 == 0) goto L44
            java.lang.String r4 = r4.a()
        L40:
            r0.append(r4)
            goto L49
        L44:
            e.a.b.d.d.d r4 = r3.b
            r0.append(r4)
        L49:
            java.lang.String r4 = r0.toString()
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a.b.d.b.k.m(boolean):java.lang.String");
    }

    public e.a.b.d.b.k n(int i) {
        return i == 0 ? this : o(this.a + i);
    }

    public e.a.b.d.b.k o(int i) {
        return this.a == i ? this : i(i, this.b);
    }

    public java.lang.String toString() {
        return m(false);
    }
}
