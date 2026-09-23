package com.umeng.commonsdk.statistics.proto;

/* loaded from: classes.dex */
public class d implements com.umeng.analytics.pro.aq<com.umeng.commonsdk.statistics.proto.d, com.umeng.commonsdk.statistics.proto.d.e>, java.io.Serializable, java.lang.Cloneable {

    /* renamed from: d, reason: collision with root package name */
    public static final java.util.Map<com.umeng.commonsdk.statistics.proto.d.e, com.umeng.analytics.pro.bc> f1583d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f1584e = 2846460275012375038L;

    /* renamed from: f, reason: collision with root package name */
    public static final com.umeng.analytics.pro.bu f1585f = new com.umeng.analytics.pro.bu("Imprint");

    /* renamed from: g, reason: collision with root package name */
    public static final com.umeng.analytics.pro.bk f1586g = new com.umeng.analytics.pro.bk("property", com.umeng.analytics.pro.bw.k, 1);
    public static final com.umeng.analytics.pro.bk h = new com.umeng.analytics.pro.bk(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION, (byte) 8, 2);
    public static final com.umeng.analytics.pro.bk i = new com.umeng.analytics.pro.bk("checksum", (byte) 11, 3);
    public static final java.util.Map<java.lang.Class<? extends com.umeng.analytics.pro.bx>, com.umeng.analytics.pro.by> j;
    public static final int k = 0;
    public java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.e> a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f1587c;
    public byte l;

    public static class a extends com.umeng.analytics.pro.bz<com.umeng.commonsdk.statistics.proto.d> {
        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:30:0x008a  */
        @Override // com.umeng.analytics.pro.bx
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(com.umeng.analytics.pro.bp r7, com.umeng.commonsdk.statistics.proto.d r8) throws com.umeng.analytics.pro.bq {
            /*
                r6 = this;
                r7.j()
            L3:
                com.umeng.analytics.pro.bk r0 = r7.l()
                byte r1 = r0.b
                if (r1 != 0) goto L2f
                r7.k()
                boolean r7 = r8.h()
                if (r7 == 0) goto L18
                r8.l()
                return
            L18:
                com.umeng.analytics.pro.bq r7 = new com.umeng.analytics.pro.bq
                java.lang.String r8 = "Required field 'version' was not found in serialized data! Struct: "
                java.lang.StringBuilder r8 = e.a.c.a.a.o(r8)
                java.lang.String r0 = r6.toString()
                r8.append(r0)
                java.lang.String r8 = r8.toString()
                r7.<init>(r8)
                throw r7
            L2f:
                short r0 = r0.f1271c
                r2 = 2
                r3 = 1
                if (r0 == r3) goto L57
                if (r0 == r2) goto L49
                r2 = 3
                if (r0 == r2) goto L3b
                goto L8a
            L3b:
                r0 = 11
                if (r1 != r0) goto L8a
                java.lang.String r0 = r7.z()
                r8.f1587c = r0
                r8.c(r3)
                goto L8d
            L49:
                r0 = 8
                if (r1 != r0) goto L8a
                int r0 = r7.w()
                r8.b = r0
                r8.b(r3)
                goto L8d
            L57:
                r0 = 13
                if (r1 != r0) goto L8a
                com.umeng.analytics.pro.bm r0 = r7.n()
                java.util.HashMap r1 = new java.util.HashMap
                int r2 = r0.f1272c
                int r2 = r2 * 2
                r1.<init>(r2)
                r8.a = r1
                r1 = 0
            L6b:
                int r2 = r0.f1272c
                if (r1 >= r2) goto L83
                java.lang.String r2 = r7.z()
                com.umeng.commonsdk.statistics.proto.e r4 = new com.umeng.commonsdk.statistics.proto.e
                r4.<init>()
                r4.read(r7)
                java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.e> r5 = r8.a
                r5.put(r2, r4)
                int r1 = r1 + 1
                goto L6b
            L83:
                r7.o()
                r8.a(r3)
                goto L8d
            L8a:
                com.umeng.analytics.pro.bs.a(r7, r1)
            L8d:
                r7.m()
                goto L3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.proto.d.a.b(com.umeng.analytics.pro.bp, com.umeng.commonsdk.statistics.proto.d):void");
        }

        @Override // com.umeng.analytics.pro.bx
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.d dVar) throws com.umeng.analytics.pro.bq {
            dVar.l();
            bpVar.a(com.umeng.commonsdk.statistics.proto.d.f1585f);
            if (dVar.a != null) {
                bpVar.a(com.umeng.commonsdk.statistics.proto.d.f1586g);
                bpVar.a(new com.umeng.analytics.pro.bm((byte) 11, (byte) 12, dVar.a.size()));
                for (java.util.Map.Entry<java.lang.String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.a.entrySet()) {
                    bpVar.a(entry.getKey());
                    entry.getValue().write(bpVar);
                }
                bpVar.e();
                bpVar.c();
            }
            bpVar.a(com.umeng.commonsdk.statistics.proto.d.h);
            bpVar.a(dVar.b);
            bpVar.c();
            if (dVar.f1587c != null) {
                bpVar.a(com.umeng.commonsdk.statistics.proto.d.i);
                bpVar.a(dVar.f1587c);
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
        public com.umeng.commonsdk.statistics.proto.d.a b() {
            return new com.umeng.commonsdk.statistics.proto.d.a();
        }
    }

    public static class c extends com.umeng.analytics.pro.ca<com.umeng.commonsdk.statistics.proto.d> {
        public c() {
        }

        @Override // com.umeng.analytics.pro.bx
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.d dVar) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            bvVar.a(dVar.a.size());
            for (java.util.Map.Entry<java.lang.String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.a.entrySet()) {
                bvVar.a(entry.getKey());
                entry.getValue().write(bvVar);
            }
            bvVar.a(dVar.b);
            bvVar.a(dVar.f1587c);
        }

        @Override // com.umeng.analytics.pro.bx
        public void b(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.d dVar) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            com.umeng.analytics.pro.bm bmVar = new com.umeng.analytics.pro.bm((byte) 11, (byte) 12, bvVar.w());
            dVar.a = new java.util.HashMap(bmVar.f1272c * 2);
            for (int i = 0; i < bmVar.f1272c; i++) {
                java.lang.String strZ = bvVar.z();
                com.umeng.commonsdk.statistics.proto.e eVar = new com.umeng.commonsdk.statistics.proto.e();
                eVar.read(bvVar);
                dVar.a.put(strZ, eVar);
            }
            dVar.a(true);
            dVar.b = bvVar.w();
            dVar.b(true);
            dVar.f1587c = bvVar.z();
            dVar.c(true);
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.d$d, reason: collision with other inner class name */
    public static class C0026d implements com.umeng.analytics.pro.by {
        public C0026d() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.umeng.commonsdk.statistics.proto.d.c b() {
            return new com.umeng.commonsdk.statistics.proto.d.c();
        }
    }

    public enum e implements com.umeng.analytics.pro.ax {
        PROPERTY(1, "property"),
        VERSION(2, com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION),
        CHECKSUM(3, "checksum");


        /* renamed from: d, reason: collision with root package name */
        public static final java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.d.e> f1589d = new java.util.HashMap();

        /* renamed from: e, reason: collision with root package name */
        public final short f1591e;

        /* renamed from: f, reason: collision with root package name */
        public final java.lang.String f1592f;

        static {
            java.util.Iterator it = java.util.EnumSet.allOf(com.umeng.commonsdk.statistics.proto.d.e.class).iterator();
            while (it.hasNext()) {
                com.umeng.commonsdk.statistics.proto.d.e eVar = (com.umeng.commonsdk.statistics.proto.d.e) it.next();
                f1589d.put(eVar.b(), eVar);
            }
        }

        e(short s, java.lang.String str) {
            this.f1591e = s;
            this.f1592f = str;
        }

        public static com.umeng.commonsdk.statistics.proto.d.e a(int i) {
            if (i == 1) {
                return PROPERTY;
            }
            if (i == 2) {
                return VERSION;
            }
            if (i != 3) {
                return null;
            }
            return CHECKSUM;
        }

        public static com.umeng.commonsdk.statistics.proto.d.e a(java.lang.String str) {
            return f1589d.get(str);
        }

        public static com.umeng.commonsdk.statistics.proto.d.e b(int i) {
            com.umeng.commonsdk.statistics.proto.d.e eVarA = a(i);
            if (eVarA != null) {
                return eVarA;
            }
            throw new java.lang.IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.ax
        public short a() {
            return this.f1591e;
        }

        @Override // com.umeng.analytics.pro.ax
        public java.lang.String b() {
            return this.f1592f;
        }
    }

    static {
        java.util.HashMap map = new java.util.HashMap();
        j = map;
        map.put(com.umeng.analytics.pro.bz.class, new com.umeng.commonsdk.statistics.proto.d.b());
        j.put(com.umeng.analytics.pro.ca.class, new com.umeng.commonsdk.statistics.proto.d.C0026d());
        java.util.EnumMap enumMap = new java.util.EnumMap(com.umeng.commonsdk.statistics.proto.d.e.class);
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.d.e.PROPERTY, (com.umeng.commonsdk.statistics.proto.d.e) new com.umeng.analytics.pro.bc("property", (byte) 1, new com.umeng.analytics.pro.bf(com.umeng.analytics.pro.bw.k, new com.umeng.analytics.pro.bd((byte) 11), new com.umeng.analytics.pro.bh((byte) 12, com.umeng.commonsdk.statistics.proto.e.class))));
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.d.e.VERSION, (com.umeng.commonsdk.statistics.proto.d.e) new com.umeng.analytics.pro.bc(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION, (byte) 1, new com.umeng.analytics.pro.bd((byte) 8)));
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.d.e.CHECKSUM, (com.umeng.commonsdk.statistics.proto.d.e) new com.umeng.analytics.pro.bc("checksum", (byte) 1, new com.umeng.analytics.pro.bd((byte) 11)));
        java.util.Map<com.umeng.commonsdk.statistics.proto.d.e, com.umeng.analytics.pro.bc> mapUnmodifiableMap = java.util.Collections.unmodifiableMap(enumMap);
        f1583d = mapUnmodifiableMap;
        com.umeng.analytics.pro.bc.a(com.umeng.commonsdk.statistics.proto.d.class, mapUnmodifiableMap);
    }

    public d() {
        this.l = (byte) 0;
    }

    public d(com.umeng.commonsdk.statistics.proto.d dVar) {
        this.l = (byte) 0;
        this.l = dVar.l;
        if (dVar.e()) {
            java.util.HashMap map = new java.util.HashMap();
            for (java.util.Map.Entry<java.lang.String, com.umeng.commonsdk.statistics.proto.e> entry : dVar.a.entrySet()) {
                map.put(entry.getKey(), new com.umeng.commonsdk.statistics.proto.e(entry.getValue()));
            }
            this.a = map;
        }
        this.b = dVar.b;
        if (dVar.k()) {
            this.f1587c = dVar.f1587c;
        }
    }

    public d(java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.e> map, int i2, java.lang.String str) {
        this();
        this.a = map;
        this.b = i2;
        b(true);
        this.f1587c = str;
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
    public com.umeng.commonsdk.statistics.proto.d deepCopy() {
        return new com.umeng.commonsdk.statistics.proto.d(this);
    }

    public com.umeng.commonsdk.statistics.proto.d a(int i2) {
        this.b = i2;
        b(true);
        return this;
    }

    public com.umeng.commonsdk.statistics.proto.d a(java.lang.String str) {
        this.f1587c = str;
        return this;
    }

    public com.umeng.commonsdk.statistics.proto.d a(java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.e> map) {
        this.a = map;
        return this;
    }

    public void a(java.lang.String str, com.umeng.commonsdk.statistics.proto.e eVar) {
        if (this.a == null) {
            this.a = new java.util.HashMap();
        }
        this.a.put(str, eVar);
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.a = null;
    }

    public int b() {
        java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.e> map = this.a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    @Override // com.umeng.analytics.pro.aq
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.umeng.commonsdk.statistics.proto.d.e fieldForId(int i2) {
        return com.umeng.commonsdk.statistics.proto.d.e.a(i2);
    }

    public void b(boolean z) {
        this.l = com.umeng.analytics.pro.an.a(this.l, 0, z);
    }

    public java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.e> c() {
        return this.a;
    }

    public void c(boolean z) {
        if (z) {
            return;
        }
        this.f1587c = null;
    }

    @Override // com.umeng.analytics.pro.aq
    public void clear() {
        this.a = null;
        b(false);
        this.b = 0;
        this.f1587c = null;
    }

    public void d() {
        this.a = null;
    }

    public boolean e() {
        return this.a != null;
    }

    public int f() {
        return this.b;
    }

    public void g() {
        this.l = com.umeng.analytics.pro.an.b(this.l, 0);
    }

    public boolean h() {
        return com.umeng.analytics.pro.an.a(this.l, 0);
    }

    public java.lang.String i() {
        return this.f1587c;
    }

    public void j() {
        this.f1587c = null;
    }

    public boolean k() {
        return this.f1587c != null;
    }

    public void l() throws com.umeng.analytics.pro.bq {
        if (this.a == null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Required field 'property' was not present! Struct: ");
            sbO.append(toString());
            throw new com.umeng.analytics.pro.bq(sbO.toString());
        }
        if (this.f1587c != null) {
            return;
        }
        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Required field 'checksum' was not present! Struct: ");
        sbO2.append(toString());
        throw new com.umeng.analytics.pro.bq(sbO2.toString());
    }

    @Override // com.umeng.analytics.pro.aq
    public void read(com.umeng.analytics.pro.bp bpVar) {
        j.get(bpVar.D()).b().b(bpVar, this);
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder("Imprint(");
        sb.append("property:");
        java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.e> map = this.a;
        if (map == null) {
            sb.append("null");
        } else {
            sb.append(map);
        }
        sb.append(", ");
        sb.append("version:");
        sb.append(this.b);
        sb.append(", ");
        sb.append("checksum:");
        java.lang.String str = this.f1587c;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.aq
    public void write(com.umeng.analytics.pro.bp bpVar) {
        j.get(bpVar.D()).b().a(bpVar, this);
    }
}
