package com.umeng.commonsdk.statistics.proto;

/* loaded from: classes.dex */
public class b implements com.umeng.analytics.pro.aq<com.umeng.commonsdk.statistics.proto.b, com.umeng.commonsdk.statistics.proto.b.e>, java.io.Serializable, java.lang.Cloneable {

    /* renamed from: d, reason: collision with root package name */
    public static final java.util.Map<com.umeng.commonsdk.statistics.proto.b.e, com.umeng.analytics.pro.bc> f1563d;

    /* renamed from: e, reason: collision with root package name */
    public static final long f1564e = -6496538196005191531L;

    /* renamed from: f, reason: collision with root package name */
    public static final com.umeng.analytics.pro.bu f1565f = new com.umeng.analytics.pro.bu("IdSnapshot");

    /* renamed from: g, reason: collision with root package name */
    public static final com.umeng.analytics.pro.bk f1566g = new com.umeng.analytics.pro.bk(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.KEYFORMAT_IDENTITY, (byte) 11, 1);
    public static final com.umeng.analytics.pro.bk h = new com.umeng.analytics.pro.bk("ts", (byte) 10, 2);
    public static final com.umeng.analytics.pro.bk i = new com.umeng.analytics.pro.bk(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION, (byte) 8, 3);
    public static final java.util.Map<java.lang.Class<? extends com.umeng.analytics.pro.bx>, com.umeng.analytics.pro.by> j;
    public static final int k = 0;
    public static final int l = 1;
    public java.lang.String a;
    public long b;

    /* renamed from: c, reason: collision with root package name */
    public int f1567c;
    public byte m;

    public static class a extends com.umeng.analytics.pro.bz<com.umeng.commonsdk.statistics.proto.b> {
        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0082  */
        @Override // com.umeng.analytics.pro.bx
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(com.umeng.analytics.pro.bp r5, com.umeng.commonsdk.statistics.proto.b r6) throws com.umeng.analytics.pro.bq {
            /*
                r4 = this;
                r5.j()
            L3:
                com.umeng.analytics.pro.bk r0 = r5.l()
                byte r1 = r0.b
                if (r1 != 0) goto L4c
                r5.k()
                boolean r5 = r6.g()
                if (r5 == 0) goto L35
                boolean r5 = r6.j()
                if (r5 == 0) goto L1e
                r6.k()
                return
            L1e:
                com.umeng.analytics.pro.bq r5 = new com.umeng.analytics.pro.bq
                java.lang.String r6 = "Required field 'version' was not found in serialized data! Struct: "
                java.lang.StringBuilder r6 = e.a.c.a.a.o(r6)
                java.lang.String r0 = r4.toString()
                r6.append(r0)
                java.lang.String r6 = r6.toString()
                r5.<init>(r6)
                throw r5
            L35:
                com.umeng.analytics.pro.bq r5 = new com.umeng.analytics.pro.bq
                java.lang.String r6 = "Required field 'ts' was not found in serialized data! Struct: "
                java.lang.StringBuilder r6 = e.a.c.a.a.o(r6)
                java.lang.String r0 = r4.toString()
                r6.append(r0)
                java.lang.String r6 = r6.toString()
                r5.<init>(r6)
                throw r5
            L4c:
                short r0 = r0.f1271c
                r2 = 1
                if (r0 == r2) goto L74
                r3 = 2
                if (r0 == r3) goto L66
                r3 = 3
                if (r0 == r3) goto L58
                goto L82
            L58:
                r0 = 8
                if (r1 != r0) goto L82
                int r0 = r5.w()
                r6.f1567c = r0
                r6.c(r2)
                goto L85
            L66:
                r0 = 10
                if (r1 != r0) goto L82
                long r0 = r5.x()
                r6.b = r0
                r6.b(r2)
                goto L85
            L74:
                r0 = 11
                if (r1 != r0) goto L82
                java.lang.String r0 = r5.z()
                r6.a = r0
                r6.a(r2)
                goto L85
            L82:
                com.umeng.analytics.pro.bs.a(r5, r1)
            L85:
                r5.m()
                goto L3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.proto.b.a.b(com.umeng.analytics.pro.bp, com.umeng.commonsdk.statistics.proto.b):void");
        }

        @Override // com.umeng.analytics.pro.bx
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.b bVar) throws com.umeng.analytics.pro.bq {
            bVar.k();
            bpVar.a(com.umeng.commonsdk.statistics.proto.b.f1565f);
            if (bVar.a != null) {
                bpVar.a(com.umeng.commonsdk.statistics.proto.b.f1566g);
                bpVar.a(bVar.a);
                bpVar.c();
            }
            bpVar.a(com.umeng.commonsdk.statistics.proto.b.h);
            bpVar.a(bVar.b);
            bpVar.c();
            bpVar.a(com.umeng.commonsdk.statistics.proto.b.i);
            bpVar.a(bVar.f1567c);
            bpVar.c();
            bpVar.d();
            bpVar.b();
        }
    }

    /* renamed from: com.umeng.commonsdk.statistics.proto.b$b, reason: collision with other inner class name */
    public static class C0024b implements com.umeng.analytics.pro.by {
        public C0024b() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.umeng.commonsdk.statistics.proto.b.a b() {
            return new com.umeng.commonsdk.statistics.proto.b.a();
        }
    }

    public static class c extends com.umeng.analytics.pro.ca<com.umeng.commonsdk.statistics.proto.b> {
        public c() {
        }

        @Override // com.umeng.analytics.pro.bx
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.b bVar) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            bvVar.a(bVar.a);
            bvVar.a(bVar.b);
            bvVar.a(bVar.f1567c);
        }

        @Override // com.umeng.analytics.pro.bx
        public void b(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.b bVar) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            bVar.a = bvVar.z();
            bVar.a(true);
            bVar.b = bvVar.x();
            bVar.b(true);
            bVar.f1567c = bvVar.w();
            bVar.c(true);
        }
    }

    public static class d implements com.umeng.analytics.pro.by {
        public d() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.umeng.commonsdk.statistics.proto.b.c b() {
            return new com.umeng.commonsdk.statistics.proto.b.c();
        }
    }

    public enum e implements com.umeng.analytics.pro.ax {
        IDENTITY(1, com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.KEYFORMAT_IDENTITY),
        TS(2, "ts"),
        VERSION(3, com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION);


        /* renamed from: d, reason: collision with root package name */
        public static final java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.b.e> f1569d = new java.util.HashMap();

        /* renamed from: e, reason: collision with root package name */
        public final short f1571e;

        /* renamed from: f, reason: collision with root package name */
        public final java.lang.String f1572f;

        static {
            java.util.Iterator it = java.util.EnumSet.allOf(com.umeng.commonsdk.statistics.proto.b.e.class).iterator();
            while (it.hasNext()) {
                com.umeng.commonsdk.statistics.proto.b.e eVar = (com.umeng.commonsdk.statistics.proto.b.e) it.next();
                f1569d.put(eVar.b(), eVar);
            }
        }

        e(short s, java.lang.String str) {
            this.f1571e = s;
            this.f1572f = str;
        }

        public static com.umeng.commonsdk.statistics.proto.b.e a(int i) {
            if (i == 1) {
                return IDENTITY;
            }
            if (i == 2) {
                return TS;
            }
            if (i != 3) {
                return null;
            }
            return VERSION;
        }

        public static com.umeng.commonsdk.statistics.proto.b.e a(java.lang.String str) {
            return f1569d.get(str);
        }

        public static com.umeng.commonsdk.statistics.proto.b.e b(int i) {
            com.umeng.commonsdk.statistics.proto.b.e eVarA = a(i);
            if (eVarA != null) {
                return eVarA;
            }
            throw new java.lang.IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.ax
        public short a() {
            return this.f1571e;
        }

        @Override // com.umeng.analytics.pro.ax
        public java.lang.String b() {
            return this.f1572f;
        }
    }

    static {
        java.util.HashMap map = new java.util.HashMap();
        j = map;
        map.put(com.umeng.analytics.pro.bz.class, new com.umeng.commonsdk.statistics.proto.b.C0024b());
        j.put(com.umeng.analytics.pro.ca.class, new com.umeng.commonsdk.statistics.proto.b.d());
        java.util.EnumMap enumMap = new java.util.EnumMap(com.umeng.commonsdk.statistics.proto.b.e.class);
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.b.e.IDENTITY, (com.umeng.commonsdk.statistics.proto.b.e) new com.umeng.analytics.pro.bc(com.google.android.exoplayer2.source.hls.playlist.HlsPlaylistParser.KEYFORMAT_IDENTITY, (byte) 1, new com.umeng.analytics.pro.bd((byte) 11)));
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.b.e.TS, (com.umeng.commonsdk.statistics.proto.b.e) new com.umeng.analytics.pro.bc("ts", (byte) 1, new com.umeng.analytics.pro.bd((byte) 10)));
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.b.e.VERSION, (com.umeng.commonsdk.statistics.proto.b.e) new com.umeng.analytics.pro.bc(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION, (byte) 1, new com.umeng.analytics.pro.bd((byte) 8)));
        java.util.Map<com.umeng.commonsdk.statistics.proto.b.e, com.umeng.analytics.pro.bc> mapUnmodifiableMap = java.util.Collections.unmodifiableMap(enumMap);
        f1563d = mapUnmodifiableMap;
        com.umeng.analytics.pro.bc.a(com.umeng.commonsdk.statistics.proto.b.class, mapUnmodifiableMap);
    }

    public b() {
        this.m = (byte) 0;
    }

    public b(com.umeng.commonsdk.statistics.proto.b bVar) {
        this.m = (byte) 0;
        this.m = bVar.m;
        if (bVar.d()) {
            this.a = bVar.a;
        }
        this.b = bVar.b;
        this.f1567c = bVar.f1567c;
    }

    public b(java.lang.String str, long j2, int i2) {
        this();
        this.a = str;
        this.b = j2;
        b(true);
        this.f1567c = i2;
        c(true);
    }

    private void a(java.io.ObjectInputStream objectInputStream) throws java.io.IOException {
        try {
            this.m = (byte) 0;
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
    public com.umeng.commonsdk.statistics.proto.b deepCopy() {
        return new com.umeng.commonsdk.statistics.proto.b(this);
    }

    public com.umeng.commonsdk.statistics.proto.b a(int i2) {
        this.f1567c = i2;
        c(true);
        return this;
    }

    public com.umeng.commonsdk.statistics.proto.b a(long j2) {
        this.b = j2;
        b(true);
        return this;
    }

    public com.umeng.commonsdk.statistics.proto.b a(java.lang.String str) {
        this.a = str;
        return this;
    }

    public void a(boolean z) {
        if (z) {
            return;
        }
        this.a = null;
    }

    @Override // com.umeng.analytics.pro.aq
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public com.umeng.commonsdk.statistics.proto.b.e fieldForId(int i2) {
        return com.umeng.commonsdk.statistics.proto.b.e.a(i2);
    }

    public java.lang.String b() {
        return this.a;
    }

    public void b(boolean z) {
        this.m = com.umeng.analytics.pro.an.a(this.m, 0, z);
    }

    public void c() {
        this.a = null;
    }

    public void c(boolean z) {
        this.m = com.umeng.analytics.pro.an.a(this.m, 1, z);
    }

    @Override // com.umeng.analytics.pro.aq
    public void clear() {
        this.a = null;
        b(false);
        this.b = 0L;
        c(false);
        this.f1567c = 0;
    }

    public boolean d() {
        return this.a != null;
    }

    public long e() {
        return this.b;
    }

    public void f() {
        this.m = com.umeng.analytics.pro.an.b(this.m, 0);
    }

    public boolean g() {
        return com.umeng.analytics.pro.an.a(this.m, 0);
    }

    public int h() {
        return this.f1567c;
    }

    public void i() {
        this.m = com.umeng.analytics.pro.an.b(this.m, 1);
    }

    public boolean j() {
        return com.umeng.analytics.pro.an.a(this.m, 1);
    }

    public void k() throws com.umeng.analytics.pro.bq {
        if (this.a != null) {
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("Required field 'identity' was not present! Struct: ");
        sbO.append(toString());
        throw new com.umeng.analytics.pro.bq(sbO.toString());
    }

    @Override // com.umeng.analytics.pro.aq
    public void read(com.umeng.analytics.pro.bp bpVar) {
        j.get(bpVar.D()).b().b(bpVar, this);
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder("IdSnapshot(");
        sb.append("identity:");
        java.lang.String str = this.a;
        if (str == null) {
            str = "null";
        }
        sb.append(str);
        sb.append(", ");
        sb.append("ts:");
        sb.append(this.b);
        sb.append(", ");
        sb.append("version:");
        return e.a.c.a.a.i(sb, this.f1567c, ")");
    }

    @Override // com.umeng.analytics.pro.aq
    public void write(com.umeng.analytics.pro.bp bpVar) {
        j.get(bpVar.D()).b().a(bpVar, this);
    }
}
