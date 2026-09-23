package com.umeng.commonsdk.statistics.proto;

/* loaded from: classes.dex */
public class a implements com.umeng.analytics.pro.aq<com.umeng.commonsdk.statistics.proto.a, com.umeng.commonsdk.statistics.proto.a.e>, java.io.Serializable, java.lang.Cloneable {

    /* renamed from: e, reason: collision with root package name */
    public static final java.util.Map<com.umeng.commonsdk.statistics.proto.a.e, com.umeng.analytics.pro.bc> f1553e;

    /* renamed from: f, reason: collision with root package name */
    public static final long f1554f = 9132678615281394583L;

    /* renamed from: g, reason: collision with root package name */
    public static final com.umeng.analytics.pro.bu f1555g = new com.umeng.analytics.pro.bu("IdJournal");
    public static final com.umeng.analytics.pro.bk h = new com.umeng.analytics.pro.bk("domain", (byte) 11, 1);
    public static final com.umeng.analytics.pro.bk i = new com.umeng.analytics.pro.bk("old_id", (byte) 11, 2);
    public static final com.umeng.analytics.pro.bk j = new com.umeng.analytics.pro.bk("new_id", (byte) 11, 3);
    public static final com.umeng.analytics.pro.bk k = new com.umeng.analytics.pro.bk("ts", (byte) 10, 4);
    public static final java.util.Map<java.lang.Class<? extends com.umeng.analytics.pro.bx>, com.umeng.analytics.pro.by> l;
    public static final int m = 0;
    public java.lang.String a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f1556c;

    /* renamed from: d, reason: collision with root package name */
    public long f1557d;
    public byte n;
    public com.umeng.commonsdk.statistics.proto.a.e[] o;

    /* renamed from: com.umeng.commonsdk.statistics.proto.a$a, reason: collision with other inner class name */
    public static class C0023a extends com.umeng.analytics.pro.bz<com.umeng.commonsdk.statistics.proto.a> {
        public C0023a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:29:0x0072  */
        @Override // com.umeng.analytics.pro.bx
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(com.umeng.analytics.pro.bp r6, com.umeng.commonsdk.statistics.proto.a r7) throws com.umeng.analytics.pro.bq {
            /*
                r5 = this;
                r6.j()
            L3:
                com.umeng.analytics.pro.bk r0 = r6.l()
                byte r1 = r0.b
                if (r1 != 0) goto L2f
                r6.k()
                boolean r6 = r7.m()
                if (r6 == 0) goto L18
                r7.n()
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
                if (r0 == r3) goto L66
                r4 = 2
                if (r0 == r4) goto L5a
                r4 = 3
                if (r0 == r4) goto L4e
                r2 = 4
                if (r0 == r2) goto L40
                goto L72
            L40:
                r0 = 10
                if (r1 != r0) goto L72
                long r0 = r6.x()
                r7.f1557d = r0
                r7.d(r3)
                goto L75
            L4e:
                if (r1 != r2) goto L72
                java.lang.String r0 = r6.z()
                r7.f1556c = r0
                r7.c(r3)
                goto L75
            L5a:
                if (r1 != r2) goto L72
                java.lang.String r0 = r6.z()
                r7.b = r0
                r7.b(r3)
                goto L75
            L66:
                if (r1 != r2) goto L72
                java.lang.String r0 = r6.z()
                r7.a = r0
                r7.a(r3)
                goto L75
            L72:
                com.umeng.analytics.pro.bs.a(r6, r1)
            L75:
                r6.m()
                goto L3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.proto.a.C0023a.b(com.umeng.analytics.pro.bp, com.umeng.commonsdk.statistics.proto.a):void");
        }

        @Override // com.umeng.analytics.pro.bx
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.a aVar) throws com.umeng.analytics.pro.bq {
            aVar.n();
            bpVar.a(com.umeng.commonsdk.statistics.proto.a.f1555g);
            if (aVar.a != null) {
                bpVar.a(com.umeng.commonsdk.statistics.proto.a.h);
                bpVar.a(aVar.a);
                bpVar.c();
            }
            if (aVar.b != null && aVar.g()) {
                bpVar.a(com.umeng.commonsdk.statistics.proto.a.i);
                bpVar.a(aVar.b);
                bpVar.c();
            }
            if (aVar.f1556c != null) {
                bpVar.a(com.umeng.commonsdk.statistics.proto.a.j);
                bpVar.a(aVar.f1556c);
                bpVar.c();
            }
            bpVar.a(com.umeng.commonsdk.statistics.proto.a.k);
            bpVar.a(aVar.f1557d);
            bpVar.c();
            bpVar.d();
            bpVar.b();
        }
    }

    public static class b implements com.umeng.analytics.pro.by {
        public b() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.umeng.commonsdk.statistics.proto.a.C0023a b() {
            return new com.umeng.commonsdk.statistics.proto.a.C0023a();
        }
    }

    public static class c extends com.umeng.analytics.pro.ca<com.umeng.commonsdk.statistics.proto.a> {
        public c() {
        }

        @Override // com.umeng.analytics.pro.bx
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.a aVar) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            bvVar.a(aVar.a);
            bvVar.a(aVar.f1556c);
            bvVar.a(aVar.f1557d);
            java.util.BitSet bitSet = new java.util.BitSet();
            if (aVar.g()) {
                bitSet.set(0);
            }
            bvVar.a(bitSet, 1);
            if (aVar.g()) {
                bvVar.a(aVar.b);
            }
        }

        @Override // com.umeng.analytics.pro.bx
        public void b(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.a aVar) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            aVar.a = bvVar.z();
            aVar.a(true);
            aVar.f1556c = bvVar.z();
            aVar.c(true);
            aVar.f1557d = bvVar.x();
            aVar.d(true);
            if (bvVar.b(1).get(0)) {
                aVar.b = bvVar.z();
                aVar.b(true);
            }
        }
    }

    public static class d implements com.umeng.analytics.pro.by {
        public d() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.umeng.commonsdk.statistics.proto.a.c b() {
            return new com.umeng.commonsdk.statistics.proto.a.c();
        }
    }

    public enum e implements com.umeng.analytics.pro.ax {
        DOMAIN(1, "domain"),
        OLD_ID(2, "old_id"),
        NEW_ID(3, "new_id"),
        TS(4, "ts");


        /* renamed from: e, reason: collision with root package name */
        public static final java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.a.e> f1560e = new java.util.HashMap();

        /* renamed from: f, reason: collision with root package name */
        public final short f1561f;

        /* renamed from: g, reason: collision with root package name */
        public final java.lang.String f1562g;

        static {
            java.util.Iterator it = java.util.EnumSet.allOf(com.umeng.commonsdk.statistics.proto.a.e.class).iterator();
            while (it.hasNext()) {
                com.umeng.commonsdk.statistics.proto.a.e eVar = (com.umeng.commonsdk.statistics.proto.a.e) it.next();
                f1560e.put(eVar.b(), eVar);
            }
        }

        e(short s, java.lang.String str) {
            this.f1561f = s;
            this.f1562g = str;
        }

        public static com.umeng.commonsdk.statistics.proto.a.e a(int i) {
            if (i == 1) {
                return DOMAIN;
            }
            if (i == 2) {
                return OLD_ID;
            }
            if (i == 3) {
                return NEW_ID;
            }
            if (i != 4) {
                return null;
            }
            return TS;
        }

        public static com.umeng.commonsdk.statistics.proto.a.e a(java.lang.String str) {
            return f1560e.get(str);
        }

        public static com.umeng.commonsdk.statistics.proto.a.e b(int i) {
            com.umeng.commonsdk.statistics.proto.a.e eVarA = a(i);
            if (eVarA != null) {
                return eVarA;
            }
            throw new java.lang.IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.ax
        public short a() {
            return this.f1561f;
        }

        @Override // com.umeng.analytics.pro.ax
        public java.lang.String b() {
            return this.f1562g;
        }
    }

    static {
        java.util.HashMap map = new java.util.HashMap();
        l = map;
        map.put(com.umeng.analytics.pro.bz.class, new com.umeng.commonsdk.statistics.proto.a.b());
        l.put(com.umeng.analytics.pro.ca.class, new com.umeng.commonsdk.statistics.proto.a.d());
        java.util.EnumMap enumMap = new java.util.EnumMap(com.umeng.commonsdk.statistics.proto.a.e.class);
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.a.e.DOMAIN, (com.umeng.commonsdk.statistics.proto.a.e) new com.umeng.analytics.pro.bc("domain", (byte) 1, new com.umeng.analytics.pro.bd((byte) 11)));
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.a.e.OLD_ID, (com.umeng.commonsdk.statistics.proto.a.e) new com.umeng.analytics.pro.bc("old_id", (byte) 2, new com.umeng.analytics.pro.bd((byte) 11)));
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.a.e.NEW_ID, (com.umeng.commonsdk.statistics.proto.a.e) new com.umeng.analytics.pro.bc("new_id", (byte) 1, new com.umeng.analytics.pro.bd((byte) 11)));
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.a.e.TS, (com.umeng.commonsdk.statistics.proto.a.e) new com.umeng.analytics.pro.bc("ts", (byte) 1, new com.umeng.analytics.pro.bd((byte) 10)));
        java.util.Map<com.umeng.commonsdk.statistics.proto.a.e, com.umeng.analytics.pro.bc> mapUnmodifiableMap = java.util.Collections.unmodifiableMap(enumMap);
        f1553e = mapUnmodifiableMap;
        com.umeng.analytics.pro.bc.a(com.umeng.commonsdk.statistics.proto.a.class, mapUnmodifiableMap);
    }

    public a() {
        this.n = (byte) 0;
        this.o = new com.umeng.commonsdk.statistics.proto.a.e[]{com.umeng.commonsdk.statistics.proto.a.e.OLD_ID};
    }

    public a(com.umeng.commonsdk.statistics.proto.a aVar) {
        this.n = (byte) 0;
        this.o = new com.umeng.commonsdk.statistics.proto.a.e[]{com.umeng.commonsdk.statistics.proto.a.e.OLD_ID};
        this.n = aVar.n;
        if (aVar.d()) {
            this.a = aVar.a;
        }
        if (aVar.g()) {
            this.b = aVar.b;
        }
        if (aVar.j()) {
            this.f1556c = aVar.f1556c;
        }
        this.f1557d = aVar.f1557d;
    }

    public a(java.lang.String str, java.lang.String str2, long j2) {
        this();
        this.a = str;
        this.f1556c = str2;
        this.f1557d = j2;
        d(true);
    }

    private void a(java.io.ObjectInputStream objectInputStream) throws java.io.IOException {
        try {
            this.n = (byte) 0;
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
    public com.umeng.commonsdk.statistics.proto.a.e fieldForId(int i2) {
        return com.umeng.commonsdk.statistics.proto.a.e.a(i2);
    }

    @Override // com.umeng.analytics.pro.aq
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.umeng.commonsdk.statistics.proto.a deepCopy() {
        return new com.umeng.commonsdk.statistics.proto.a(this);
    }

    public com.umeng.commonsdk.statistics.proto.a a(long j2) {
        this.f1557d = j2;
        d(true);
        return this;
    }

    public com.umeng.commonsdk.statistics.proto.a a(java.lang.String str) {
        this.a = str;
        return this;
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.a = null;
    }

    public com.umeng.commonsdk.statistics.proto.a b(java.lang.String str) {
        this.b = str;
        return this;
    }

    public java.lang.String b() {
        return this.a;
    }

    public void b(boolean z) {
        if (z) {
            return;
        }
        this.b = null;
    }

    public com.umeng.commonsdk.statistics.proto.a c(java.lang.String str) {
        this.f1556c = str;
        return this;
    }

    public void c() {
        this.a = null;
    }

    public void c(boolean z) {
        if (z) {
            return;
        }
        this.f1556c = null;
    }

    @Override // com.umeng.analytics.pro.aq
    public void clear() {
        this.a = null;
        this.b = null;
        this.f1556c = null;
        d(false);
        this.f1557d = 0L;
    }

    public void d(boolean z) {
        this.n = com.umeng.analytics.pro.an.a(this.n, 0, z);
    }

    public boolean d() {
        return this.a != null;
    }

    public java.lang.String e() {
        return this.b;
    }

    public void f() {
        this.b = null;
    }

    public boolean g() {
        return this.b != null;
    }

    public java.lang.String h() {
        return this.f1556c;
    }

    public void i() {
        this.f1556c = null;
    }

    public boolean j() {
        return this.f1556c != null;
    }

    public long k() {
        return this.f1557d;
    }

    public void l() {
        this.n = com.umeng.analytics.pro.an.b(this.n, 0);
    }

    public boolean m() {
        return com.umeng.analytics.pro.an.a(this.n, 0);
    }

    public void n() throws com.umeng.analytics.pro.bq {
        if (this.a == null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Required field 'domain' was not present! Struct: ");
            sbO.append(toString());
            throw new com.umeng.analytics.pro.bq(sbO.toString());
        }
        if (this.f1556c != null) {
            return;
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Required field 'new_id' was not present! Struct: ");
        sbO2.append(toString());
        throw new com.umeng.analytics.pro.bq(sbO2.toString());
    }

    @Override // com.umeng.analytics.pro.aq
    public void read(com.umeng.analytics.pro.bp bpVar) {
        l.get(bpVar.D()).b().b(bpVar, this);
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder("IdJournal(");
        sb.append("domain:");
        java.lang.String str = this.a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        if (g()) {
            sb.append(", ");
            sb.append("old_id:");
            java.lang.String str2 = this.b;
            if (str2 == null) {
                sb.append("null");
            } else {
                sb.append(str2);
            }
        }
        sb.append(", ");
        sb.append("new_id:");
        java.lang.String str3 = this.f1556c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.f1557d);
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.aq
    public void write(com.umeng.analytics.pro.bp bpVar) {
        l.get(bpVar.D()).b().a(bpVar, this);
    }
}
