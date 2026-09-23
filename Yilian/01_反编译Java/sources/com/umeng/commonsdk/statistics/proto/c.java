package com.umeng.commonsdk.statistics.proto;

/* loaded from: classes.dex */
public class c implements com.umeng.analytics.pro.aq<com.umeng.commonsdk.statistics.proto.c, com.umeng.commonsdk.statistics.proto.c.e>, java.io.Serializable, java.lang.Cloneable {

    /* renamed from: d, reason: collision with root package name */
    public static final java.util.Map<com.umeng.commonsdk.statistics.proto.c.e, com.umeng.analytics.pro.bc> f1573d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f1574e = -5764118265293965743L;

    /* renamed from: f, reason: collision with root package name */
    public static final com.umeng.analytics.pro.bu f1575f = new com.umeng.analytics.pro.bu("IdTracking");

    /* renamed from: g, reason: collision with root package name */
    public static final com.umeng.analytics.pro.bk f1576g = new com.umeng.analytics.pro.bk("snapshots", com.umeng.analytics.pro.bw.k, 1);
    public static final com.umeng.analytics.pro.bk h = new com.umeng.analytics.pro.bk("journals", com.umeng.analytics.pro.bw.m, 2);
    public static final com.umeng.analytics.pro.bk i = new com.umeng.analytics.pro.bk("checksum", (byte) 11, 3);
    public static final java.util.Map<java.lang.Class<? extends com.umeng.analytics.pro.bx>, com.umeng.analytics.pro.by> j;
    public java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.b> a;
    public java.util.List<com.umeng.commonsdk.statistics.proto.a> b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f1577c;
    public com.umeng.commonsdk.statistics.proto.c.e[] k;

    public static class a extends com.umeng.analytics.pro.bz<com.umeng.commonsdk.statistics.proto.c> {
        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x001e  */
        @Override // com.umeng.analytics.pro.bx
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(com.umeng.analytics.pro.bp r7, com.umeng.commonsdk.statistics.proto.c r8) throws com.umeng.analytics.pro.bq {
            /*
                r6 = this;
                r7.j()
            L3:
                com.umeng.analytics.pro.bk r0 = r7.l()
                byte r1 = r0.b
                if (r1 != 0) goto L12
                r7.k()
                r8.n()
                return
            L12:
                short r0 = r0.f1271c
                r2 = 0
                r3 = 2
                r4 = 1
                if (r0 == r4) goto L5c
                if (r0 == r3) goto L30
                r2 = 3
                if (r0 == r2) goto L22
            L1e:
                com.umeng.analytics.pro.bs.a(r7, r1)
                goto L8d
            L22:
                r0 = 11
                if (r1 != r0) goto L1e
                java.lang.String r0 = r7.z()
                r8.f1577c = r0
                r8.c(r4)
                goto L8d
            L30:
                r0 = 15
                if (r1 != r0) goto L1e
                com.umeng.analytics.pro.bl r0 = r7.p()
                java.util.ArrayList r1 = new java.util.ArrayList
                int r3 = r0.b
                r1.<init>(r3)
                r8.b = r1
            L41:
                int r1 = r0.b
                if (r2 >= r1) goto L55
                com.umeng.commonsdk.statistics.proto.a r1 = new com.umeng.commonsdk.statistics.proto.a
                r1.<init>()
                r1.read(r7)
                java.util.List<com.umeng.commonsdk.statistics.proto.a> r3 = r8.b
                r3.add(r1)
                int r2 = r2 + 1
                goto L41
            L55:
                r7.q()
                r8.b(r4)
                goto L8d
            L5c:
                r0 = 13
                if (r1 != r0) goto L1e
                com.umeng.analytics.pro.bm r0 = r7.n()
                java.util.HashMap r1 = new java.util.HashMap
                int r5 = r0.f1272c
                int r5 = r5 * 2
                r1.<init>(r5)
                r8.a = r1
            L6f:
                int r1 = r0.f1272c
                if (r2 >= r1) goto L87
                java.lang.String r1 = r7.z()
                com.umeng.commonsdk.statistics.proto.b r3 = new com.umeng.commonsdk.statistics.proto.b
                r3.<init>()
                r3.read(r7)
                java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.b> r5 = r8.a
                r5.put(r1, r3)
                int r2 = r2 + 1
                goto L6f
            L87:
                r7.o()
                r8.a(r4)
            L8d:
                r7.m()
                goto L3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.proto.c.a.b(com.umeng.analytics.pro.bp, com.umeng.commonsdk.statistics.proto.c):void");
        }

        @Override // com.umeng.analytics.pro.bx
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.c cVar) throws com.umeng.analytics.pro.bq {
            cVar.n();
            bpVar.a(com.umeng.commonsdk.statistics.proto.c.f1575f);
            if (cVar.a != null) {
                bpVar.a(com.umeng.commonsdk.statistics.proto.c.f1576g);
                bpVar.a(new com.umeng.analytics.pro.bm((byte) 11, (byte) 12, cVar.a.size()));
                for (java.util.Map.Entry<java.lang.String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.a.entrySet()) {
                    bpVar.a(entry.getKey());
                    entry.getValue().write(bpVar);
                }
                bpVar.e();
                bpVar.c();
            }
            if (cVar.b != null && cVar.j()) {
                bpVar.a(com.umeng.commonsdk.statistics.proto.c.h);
                bpVar.a(new com.umeng.analytics.pro.bl((byte) 12, cVar.b.size()));
                java.util.Iterator<com.umeng.commonsdk.statistics.proto.a> it = cVar.b.iterator();
                while (it.hasNext()) {
                    it.next().write(bpVar);
                }
                bpVar.f();
                bpVar.c();
            }
            if (cVar.f1577c != null && cVar.m()) {
                bpVar.a(com.umeng.commonsdk.statistics.proto.c.i);
                bpVar.a(cVar.f1577c);
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
        public com.umeng.commonsdk.statistics.proto.c.a b() {
            return new com.umeng.commonsdk.statistics.proto.c.a();
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.c$c, reason: collision with other inner class name */
    public static class C0025c extends com.umeng.analytics.pro.ca<com.umeng.commonsdk.statistics.proto.c> {
        public C0025c() {
        }

        @Override // com.umeng.analytics.pro.bx
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.c cVar) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            bvVar.a(cVar.a.size());
            for (java.util.Map.Entry<java.lang.String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.a.entrySet()) {
                bvVar.a(entry.getKey());
                entry.getValue().write(bvVar);
            }
            java.util.BitSet bitSet = new java.util.BitSet();
            if (cVar.j()) {
                bitSet.set(0);
            }
            if (cVar.m()) {
                bitSet.set(1);
            }
            bvVar.a(bitSet, 2);
            if (cVar.j()) {
                bvVar.a(cVar.b.size());
                java.util.Iterator<com.umeng.commonsdk.statistics.proto.a> it = cVar.b.iterator();
                while (it.hasNext()) {
                    it.next().write(bvVar);
                }
            }
            if (cVar.m()) {
                bvVar.a(cVar.f1577c);
            }
        }

        @Override // com.umeng.analytics.pro.bx
        public void b(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.c cVar) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            com.umeng.analytics.pro.bm bmVar = new com.umeng.analytics.pro.bm((byte) 11, (byte) 12, bvVar.w());
            cVar.a = new java.util.HashMap(bmVar.f1272c * 2);
            for (int i = 0; i < bmVar.f1272c; i++) {
                java.lang.String strZ = bvVar.z();
                com.umeng.commonsdk.statistics.proto.b bVar = new com.umeng.commonsdk.statistics.proto.b();
                bVar.read(bvVar);
                cVar.a.put(strZ, bVar);
            }
            cVar.a(true);
            java.util.BitSet bitSetB = bvVar.b(2);
            if (bitSetB.get(0)) {
                com.umeng.analytics.pro.bl blVar = new com.umeng.analytics.pro.bl((byte) 12, bvVar.w());
                cVar.b = new java.util.ArrayList(blVar.b);
                for (int i2 = 0; i2 < blVar.b; i2++) {
                    com.umeng.commonsdk.statistics.proto.a aVar = new com.umeng.commonsdk.statistics.proto.a();
                    aVar.read(bvVar);
                    cVar.b.add(aVar);
                }
                cVar.b(true);
            }
            if (bitSetB.get(1)) {
                cVar.f1577c = bvVar.z();
                cVar.c(true);
            }
        }
    }

    public static class d implements com.umeng.analytics.pro.by {
        public d() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.umeng.commonsdk.statistics.proto.c.C0025c b() {
            return new com.umeng.commonsdk.statistics.proto.c.C0025c();
        }
    }

    public enum e implements com.umeng.analytics.pro.ax {
        SNAPSHOTS(1, "snapshots"),
        JOURNALS(2, "journals"),
        CHECKSUM(3, "checksum");


        /* renamed from: d, reason: collision with root package name */
        public static final java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.c.e> f1579d = new java.util.HashMap();

        /* renamed from: e, reason: collision with root package name */
        public final short f1581e;

        /* renamed from: f, reason: collision with root package name */
        public final java.lang.String f1582f;

        static {
            java.util.Iterator it = java.util.EnumSet.allOf(com.umeng.commonsdk.statistics.proto.c.e.class).iterator();
            while (it.hasNext()) {
                com.umeng.commonsdk.statistics.proto.c.e eVar = (com.umeng.commonsdk.statistics.proto.c.e) it.next();
                f1579d.put(eVar.b(), eVar);
            }
        }

        e(short s, java.lang.String str) {
            this.f1581e = s;
            this.f1582f = str;
        }

        public static com.umeng.commonsdk.statistics.proto.c.e a(int i) {
            if (i == 1) {
                return SNAPSHOTS;
            }
            if (i == 2) {
                return JOURNALS;
            }
            if (i != 3) {
                return null;
            }
            return CHECKSUM;
        }

        public static com.umeng.commonsdk.statistics.proto.c.e a(java.lang.String str) {
            return f1579d.get(str);
        }

        public static com.umeng.commonsdk.statistics.proto.c.e b(int i) {
            com.umeng.commonsdk.statistics.proto.c.e eVarA = a(i);
            if (eVarA != null) {
                return eVarA;
            }
            throw new java.lang.IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.ax
        public short a() {
            return this.f1581e;
        }

        @Override // com.umeng.analytics.pro.ax
        public java.lang.String b() {
            return this.f1582f;
        }
    }

    static {
        java.util.HashMap map = new java.util.HashMap();
        j = map;
        map.put(com.umeng.analytics.pro.bz.class, new com.umeng.commonsdk.statistics.proto.c.b());
        j.put(com.umeng.analytics.pro.ca.class, new com.umeng.commonsdk.statistics.proto.c.d());
        java.util.EnumMap enumMap = new java.util.EnumMap(com.umeng.commonsdk.statistics.proto.c.e.class);
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.c.e.SNAPSHOTS, (com.umeng.commonsdk.statistics.proto.c.e) new com.umeng.analytics.pro.bc("snapshots", (byte) 1, new com.umeng.analytics.pro.bf(com.umeng.analytics.pro.bw.k, new com.umeng.analytics.pro.bd((byte) 11), new com.umeng.analytics.pro.bh((byte) 12, com.umeng.commonsdk.statistics.proto.b.class))));
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.c.e.JOURNALS, (com.umeng.commonsdk.statistics.proto.c.e) new com.umeng.analytics.pro.bc("journals", (byte) 2, new com.umeng.analytics.pro.be(com.umeng.analytics.pro.bw.m, new com.umeng.analytics.pro.bh((byte) 12, com.umeng.commonsdk.statistics.proto.a.class))));
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.c.e.CHECKSUM, (com.umeng.commonsdk.statistics.proto.c.e) new com.umeng.analytics.pro.bc("checksum", (byte) 2, new com.umeng.analytics.pro.bd((byte) 11)));
        java.util.Map<com.umeng.commonsdk.statistics.proto.c.e, com.umeng.analytics.pro.bc> mapUnmodifiableMap = java.util.Collections.unmodifiableMap(enumMap);
        f1573d = mapUnmodifiableMap;
        com.umeng.analytics.pro.bc.a(com.umeng.commonsdk.statistics.proto.c.class, mapUnmodifiableMap);
    }

    public c() {
        this.k = new com.umeng.commonsdk.statistics.proto.c.e[]{com.umeng.commonsdk.statistics.proto.c.e.JOURNALS, com.umeng.commonsdk.statistics.proto.c.e.CHECKSUM};
    }

    public c(com.umeng.commonsdk.statistics.proto.c cVar) {
        this.k = new com.umeng.commonsdk.statistics.proto.c.e[]{com.umeng.commonsdk.statistics.proto.c.e.JOURNALS, com.umeng.commonsdk.statistics.proto.c.e.CHECKSUM};
        if (cVar.e()) {
            java.util.HashMap map = new java.util.HashMap();
            for (java.util.Map.Entry<java.lang.String, com.umeng.commonsdk.statistics.proto.b> entry : cVar.a.entrySet()) {
                map.put(entry.getKey(), new com.umeng.commonsdk.statistics.proto.b(entry.getValue()));
            }
            this.a = map;
        }
        if (cVar.j()) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.util.Iterator<com.umeng.commonsdk.statistics.proto.a> it = cVar.b.iterator();
            while (it.hasNext()) {
                arrayList.add(new com.umeng.commonsdk.statistics.proto.a(it.next()));
            }
            this.b = arrayList;
        }
        if (cVar.m()) {
            this.f1577c = cVar.f1577c;
        }
    }

    public c(java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.b> map) {
        this();
        this.a = map;
    }

    private void a(java.io.ObjectInputStream objectInputStream) throws java.io.IOException {
        try {
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
    public com.umeng.commonsdk.statistics.proto.c.e fieldForId(int i2) {
        return com.umeng.commonsdk.statistics.proto.c.e.a(i2);
    }

    @Override // com.umeng.analytics.pro.aq
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.umeng.commonsdk.statistics.proto.c deepCopy() {
        return new com.umeng.commonsdk.statistics.proto.c(this);
    }

    public com.umeng.commonsdk.statistics.proto.c a(java.lang.String str) {
        this.f1577c = str;
        return this;
    }

    public com.umeng.commonsdk.statistics.proto.c a(java.util.List<com.umeng.commonsdk.statistics.proto.a> list) {
        this.b = list;
        return this;
    }

    public com.umeng.commonsdk.statistics.proto.c a(java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.b> map) {
        this.a = map;
        return this;
    }

    public void a(com.umeng.commonsdk.statistics.proto.a aVar) {
        if (this.b == null) {
            this.b = new java.util.ArrayList();
        }
        this.b.add(aVar);
    }

    public void a(java.lang.String str, com.umeng.commonsdk.statistics.proto.b bVar) {
        if (this.a == null) {
            this.a = new java.util.HashMap();
        }
        this.a.put(str, bVar);
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.a = null;
    }

    public int b() {
        java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.b> map = this.a;
        if (map == null) {
            return 0;
        }
        return map.size();
    }

    public void b(boolean z) {
        if (z) {
            return;
        }
        this.b = null;
    }

    public java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.b> c() {
        return this.a;
    }

    public void c(boolean z) {
        if (z) {
            return;
        }
        this.f1577c = null;
    }

    @Override // com.umeng.analytics.pro.aq
    public void clear() {
        this.a = null;
        this.b = null;
        this.f1577c = null;
    }

    public void d() {
        this.a = null;
    }

    public boolean e() {
        return this.a != null;
    }

    public int f() {
        java.util.List<com.umeng.commonsdk.statistics.proto.a> list = this.b;
        if (list == null) {
            return 0;
        }
        return list.size();
    }

    public java.util.Iterator<com.umeng.commonsdk.statistics.proto.a> g() {
        java.util.List<com.umeng.commonsdk.statistics.proto.a> list = this.b;
        if (list == null) {
            return null;
        }
        return list.iterator();
    }

    public java.util.List<com.umeng.commonsdk.statistics.proto.a> h() {
        return this.b;
    }

    public void i() {
        this.b = null;
    }

    public boolean j() {
        return this.b != null;
    }

    public java.lang.String k() {
        return this.f1577c;
    }

    public void l() {
        this.f1577c = null;
    }

    public boolean m() {
        return this.f1577c != null;
    }

    public void n() throws com.umeng.analytics.pro.bq {
        if (this.a != null) {
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Required field 'snapshots' was not present! Struct: ");
        sbO.append(toString());
        throw new com.umeng.analytics.pro.bq(sbO.toString());
    }

    @Override // com.umeng.analytics.pro.aq
    public void read(com.umeng.analytics.pro.bp bpVar) {
        j.get(bpVar.D()).b().b(bpVar, this);
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder("IdTracking(");
        sb.append("snapshots:");
        java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.b> map = this.a;
        if (map == null) {
            sb.append("null");
        } else {
            sb.append(map);
        }
        if (j()) {
            sb.append(", ");
            sb.append("journals:");
            java.util.List<com.umeng.commonsdk.statistics.proto.a> list = this.b;
            if (list == null) {
                sb.append("null");
            } else {
                sb.append(list);
            }
        }
        if (m()) {
            sb.append(", ");
            sb.append("checksum:");
            java.lang.String str = this.f1577c;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    @Override // com.umeng.analytics.pro.aq
    public void write(com.umeng.analytics.pro.bp bpVar) {
        j.get(bpVar.D()).b().a(bpVar, this);
    }
}
