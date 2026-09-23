package com.umeng.commonsdk.statistics.proto;

/* loaded from: classes.dex */
public class e implements com.umeng.analytics.pro.aq<com.umeng.commonsdk.statistics.proto.e, com.umeng.commonsdk.statistics.proto.e.EnumC0027e>, java.io.Serializable, java.lang.Cloneable {

    /* renamed from: d, reason: collision with root package name */
    public static final java.util.Map<com.umeng.commonsdk.statistics.proto.e.EnumC0027e, com.umeng.analytics.pro.bc> f1593d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f1594e = 7501688097813630241L;

    /* renamed from: f, reason: collision with root package name */
    public static final com.umeng.analytics.pro.bu f1595f = new com.umeng.analytics.pro.bu("ImprintValue");

    /* renamed from: g, reason: collision with root package name */
    public static final com.umeng.analytics.pro.bk f1596g = new com.umeng.analytics.pro.bk("value", (byte) 11, 1);
    public static final com.umeng.analytics.pro.bk h = new com.umeng.analytics.pro.bk("ts", (byte) 10, 2);
    public static final com.umeng.analytics.pro.bk i = new com.umeng.analytics.pro.bk("guid", (byte) 11, 3);
    public static final java.util.Map<java.lang.Class<? extends com.umeng.analytics.pro.bx>, com.umeng.analytics.pro.by> j;
    public static final int k = 0;
    public java.lang.String a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f1597c;
    public byte l;
    public com.umeng.commonsdk.statistics.proto.e.EnumC0027e[] m;

    public static class a extends com.umeng.analytics.pro.bz<com.umeng.commonsdk.statistics.proto.e> {
        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:25:0x0063  */
        @Override // com.umeng.analytics.pro.bx
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(com.umeng.analytics.pro.bp r6, com.umeng.commonsdk.statistics.proto.e r7) throws com.umeng.analytics.pro.bq {
            /*
                r5 = this;
                r6.j()
            L3:
                com.umeng.analytics.pro.bk r0 = r6.l()
                byte r1 = r0.b
                if (r1 != 0) goto L2f
                r6.k()
                boolean r6 = r7.g()
                if (r6 == 0) goto L18
                r7.k()
                return
            L18:
                com.umeng.analytics.pro.bq r6 = new com.umeng.analytics.pro.bq
                java.lang.String r7 = "Required field 'ts' was not found in serialized data! Struct: "
                java.lang.StringBuilder r7 = e.a.c.a.a.o(r7)
                java.lang.String r0 = r5.toString()
                r7.append(r0)
                java.lang.String r7 = r7.toString()
                r6.<init>(r7)
                throw r6
            L2f:
                short r0 = r0.f1271c
                r2 = 11
                r3 = 1
                if (r0 == r3) goto L57
                r4 = 2
                if (r0 == r4) goto L49
                r4 = 3
                if (r0 == r4) goto L3d
                goto L63
            L3d:
                if (r1 != r2) goto L63
                java.lang.String r0 = r6.z()
                r7.f1597c = r0
                r7.c(r3)
                goto L66
            L49:
                r0 = 10
                if (r1 != r0) goto L63
                long r0 = r6.x()
                r7.b = r0
                r7.b(r3)
                goto L66
            L57:
                if (r1 != r2) goto L63
                java.lang.String r0 = r6.z()
                r7.a = r0
                r7.a(r3)
                goto L66
            L63:
                com.umeng.analytics.pro.bs.a(r6, r1)
            L66:
                r6.m()
                goto L3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.proto.e.a.b(com.umeng.analytics.pro.bp, com.umeng.commonsdk.statistics.proto.e):void");
        }

        @Override // com.umeng.analytics.pro.bx
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.e eVar) throws com.umeng.analytics.pro.bq {
            eVar.k();
            bpVar.a(com.umeng.commonsdk.statistics.proto.e.f1595f);
            if (eVar.a != null && eVar.d()) {
                bpVar.a(com.umeng.commonsdk.statistics.proto.e.f1596g);
                bpVar.a(eVar.a);
                bpVar.c();
            }
            bpVar.a(com.umeng.commonsdk.statistics.proto.e.h);
            bpVar.a(eVar.b);
            bpVar.c();
            if (eVar.f1597c != null) {
                bpVar.a(com.umeng.commonsdk.statistics.proto.e.i);
                bpVar.a(eVar.f1597c);
                bpVar.c();
            }
            bpVar.d();
            bpVar.b();
        }
    }

    public static class b implements com.umeng.analytics.pro.by {
        public b() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.umeng.commonsdk.statistics.proto.e.a b() {
            return new com.umeng.commonsdk.statistics.proto.e.a();
        }
    }

    public static class c extends com.umeng.analytics.pro.ca<com.umeng.commonsdk.statistics.proto.e> {
        public c() {
        }

        @Override // com.umeng.analytics.pro.bx
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.e eVar) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            bvVar.a(eVar.b);
            bvVar.a(eVar.f1597c);
            java.util.BitSet bitSet = new java.util.BitSet();
            if (eVar.d()) {
                bitSet.set(0);
            }
            bvVar.a(bitSet, 1);
            if (eVar.d()) {
                bvVar.a(eVar.a);
            }
        }

        @Override // com.umeng.analytics.pro.bx
        public void b(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.e eVar) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            eVar.b = bvVar.x();
            eVar.b(true);
            eVar.f1597c = bvVar.z();
            eVar.c(true);
            if (bvVar.b(1).get(0)) {
                eVar.a = bvVar.z();
                eVar.a(true);
            }
        }
    }

    public static class d implements com.umeng.analytics.pro.by {
        public d() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.umeng.commonsdk.statistics.proto.e.c b() {
            return new com.umeng.commonsdk.statistics.proto.e.c();
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.e$e, reason: collision with other inner class name */
    public enum EnumC0027e implements com.umeng.analytics.pro.ax {
        VALUE(1, "value"),
        TS(2, "ts"),
        GUID(3, "guid");


        /* renamed from: d, reason: collision with root package name */
        public static final java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.e.EnumC0027e> f1599d = new java.util.HashMap();

        /* renamed from: e, reason: collision with root package name */
        public final short f1601e;

        /* renamed from: f, reason: collision with root package name */
        public final java.lang.String f1602f;

        static {
            java.util.Iterator it = java.util.EnumSet.allOf(com.umeng.commonsdk.statistics.proto.e.EnumC0027e.class).iterator();
            while (it.hasNext()) {
                com.umeng.commonsdk.statistics.proto.e.EnumC0027e enumC0027e = (com.umeng.commonsdk.statistics.proto.e.EnumC0027e) it.next();
                f1599d.put(enumC0027e.b(), enumC0027e);
            }
        }

        EnumC0027e(short s, java.lang.String str) {
            this.f1601e = s;
            this.f1602f = str;
        }

        public static com.umeng.commonsdk.statistics.proto.e.EnumC0027e a(int i) {
            if (i == 1) {
                return VALUE;
            }
            if (i == 2) {
                return TS;
            }
            if (i != 3) {
                return null;
            }
            return GUID;
        }

        public static com.umeng.commonsdk.statistics.proto.e.EnumC0027e a(java.lang.String str) {
            return f1599d.get(str);
        }

        public static com.umeng.commonsdk.statistics.proto.e.EnumC0027e b(int i) {
            com.umeng.commonsdk.statistics.proto.e.EnumC0027e enumC0027eA = a(i);
            if (enumC0027eA != null) {
                return enumC0027eA;
            }
            throw new java.lang.IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.ax
        public short a() {
            return this.f1601e;
        }

        @Override // com.umeng.analytics.pro.ax
        public java.lang.String b() {
            return this.f1602f;
        }
    }

    static {
        java.util.HashMap map = new java.util.HashMap();
        j = map;
        map.put(com.umeng.analytics.pro.bz.class, new com.umeng.commonsdk.statistics.proto.e.b());
        j.put(com.umeng.analytics.pro.ca.class, new com.umeng.commonsdk.statistics.proto.e.d());
        java.util.EnumMap enumMap = new java.util.EnumMap(com.umeng.commonsdk.statistics.proto.e.EnumC0027e.class);
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.e.EnumC0027e.VALUE, (com.umeng.commonsdk.statistics.proto.e.EnumC0027e) new com.umeng.analytics.pro.bc("value", (byte) 2, new com.umeng.analytics.pro.bd((byte) 11)));
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.e.EnumC0027e.TS, (com.umeng.commonsdk.statistics.proto.e.EnumC0027e) new com.umeng.analytics.pro.bc("ts", (byte) 1, new com.umeng.analytics.pro.bd((byte) 10)));
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.e.EnumC0027e.GUID, (com.umeng.commonsdk.statistics.proto.e.EnumC0027e) new com.umeng.analytics.pro.bc("guid", (byte) 1, new com.umeng.analytics.pro.bd((byte) 11)));
        java.util.Map<com.umeng.commonsdk.statistics.proto.e.EnumC0027e, com.umeng.analytics.pro.bc> mapUnmodifiableMap = java.util.Collections.unmodifiableMap(enumMap);
        f1593d = mapUnmodifiableMap;
        com.umeng.analytics.pro.bc.a(com.umeng.commonsdk.statistics.proto.e.class, mapUnmodifiableMap);
    }

    public e() {
        this.l = (byte) 0;
        this.m = new com.umeng.commonsdk.statistics.proto.e.EnumC0027e[]{com.umeng.commonsdk.statistics.proto.e.EnumC0027e.VALUE};
    }

    public e(long j2, java.lang.String str) {
        this();
        this.b = j2;
        b(true);
        this.f1597c = str;
    }

    public e(com.umeng.commonsdk.statistics.proto.e eVar) {
        this.l = (byte) 0;
        this.m = new com.umeng.commonsdk.statistics.proto.e.EnumC0027e[]{com.umeng.commonsdk.statistics.proto.e.EnumC0027e.VALUE};
        this.l = eVar.l;
        if (eVar.d()) {
            this.a = eVar.a;
        }
        this.b = eVar.b;
        if (eVar.j()) {
            this.f1597c = eVar.f1597c;
        }
    }

    private void a(java.io.ObjectInputStream objectInputStream) throws java.io.IOException {
        try {
            this.l = (byte) 0;
            read(new com.umeng.analytics.pro.bj(new com.umeng.analytics.pro.cb(objectInputStream)));
        } catch (com.umeng.analytics.pro.aw e2) {
            throw new java.io.IOException(e2.getMessage());
        }
    }

    private void a(java.io.ObjectOutputStream objectOutputStream) throws java.io.IOException {
        try {
            write(new com.umeng.analytics.pro.bj(new com.umeng.analytics.pro.cb(objectOutputStream)));
        } catch (com.umeng.analytics.pro.aw e2) {
            throw new java.io.IOException(e2.getMessage());
        }
    }

    @Override // com.umeng.analytics.pro.aq
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.umeng.commonsdk.statistics.proto.e.EnumC0027e fieldForId(int i2) {
        return com.umeng.commonsdk.statistics.proto.e.EnumC0027e.a(i2);
    }

    @Override // com.umeng.analytics.pro.aq
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.umeng.commonsdk.statistics.proto.e deepCopy() {
        return new com.umeng.commonsdk.statistics.proto.e(this);
    }

    public com.umeng.commonsdk.statistics.proto.e a(long j2) {
        this.b = j2;
        b(true);
        return this;
    }

    public com.umeng.commonsdk.statistics.proto.e a(java.lang.String str) {
        this.a = str;
        return this;
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.a = null;
    }

    public com.umeng.commonsdk.statistics.proto.e b(java.lang.String str) {
        this.f1597c = str;
        return this;
    }

    public java.lang.String b() {
        return this.a;
    }

    public void b(boolean z) {
        this.l = com.umeng.analytics.pro.an.a(this.l, 0, z);
    }

    public void c() {
        this.a = null;
    }

    public void c(boolean z) {
        if (z) {
            return;
        }
        this.f1597c = null;
    }

    @Override // com.umeng.analytics.pro.aq
    public void clear() {
        this.a = null;
        b(false);
        this.b = 0L;
        this.f1597c = null;
    }

    public boolean d() {
        return this.a != null;
    }

    public long e() {
        return this.b;
    }

    public void f() {
        this.l = com.umeng.analytics.pro.an.b(this.l, 0);
    }

    public boolean g() {
        return com.umeng.analytics.pro.an.a(this.l, 0);
    }

    public java.lang.String h() {
        return this.f1597c;
    }

    public void i() {
        this.f1597c = null;
    }

    public boolean j() {
        return this.f1597c != null;
    }

    public void k() throws com.umeng.analytics.pro.bq {
        if (this.f1597c != null) {
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Required field 'guid' was not present! Struct: ");
        sbO.append(toString());
        throw new com.umeng.analytics.pro.bq(sbO.toString());
    }

    @Override // com.umeng.analytics.pro.aq
    public void read(com.umeng.analytics.pro.bp bpVar) {
        j.get(bpVar.D()).b().b(bpVar, this);
    }

    public java.lang.String toString() {
        boolean z;
        java.lang.StringBuilder sb = new java.lang.StringBuilder("ImprintValue(");
        if (d()) {
            sb.append("value:");
            java.lang.String str = this.a;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
            z = false;
        } else {
            z = true;
        }
        if (!z) {
            sb.append(", ");
        }
        sb.append("ts:");
        sb.append(this.b);
        sb.append(", ");
        sb.append("guid:");
        java.lang.String str2 = this.f1597c;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.aq
    public void write(com.umeng.analytics.pro.bp bpVar) {
        j.get(bpVar.D()).b().a(bpVar, this);
    }
}
