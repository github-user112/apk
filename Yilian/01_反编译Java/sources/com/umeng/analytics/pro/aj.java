package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class aj implements com.umeng.analytics.pro.aq<com.umeng.analytics.pro.aj, com.umeng.analytics.pro.aj.e>, java.io.Serializable, java.lang.Cloneable {
    public static final int A = 2;
    public static final int B = 3;
    public static final java.util.Map<com.umeng.analytics.pro.aj.e, com.umeng.analytics.pro.bc> k;
    public static final long l = 420342210744516016L;
    public static final com.umeng.analytics.pro.bu m = new com.umeng.analytics.pro.bu("UMEnvelope");
    public static final com.umeng.analytics.pro.bk n = new com.umeng.analytics.pro.bk(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION, (byte) 11, 1);
    public static final com.umeng.analytics.pro.bk o = new com.umeng.analytics.pro.bk("address", (byte) 11, 2);
    public static final com.umeng.analytics.pro.bk p = new com.umeng.analytics.pro.bk("signature", (byte) 11, 3);
    public static final com.umeng.analytics.pro.bk q = new com.umeng.analytics.pro.bk("serial_num", (byte) 8, 4);
    public static final com.umeng.analytics.pro.bk r = new com.umeng.analytics.pro.bk("ts_secs", (byte) 8, 5);
    public static final com.umeng.analytics.pro.bk s = new com.umeng.analytics.pro.bk(com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex.COLUMN_LENGTH, (byte) 8, 6);
    public static final com.umeng.analytics.pro.bk t = new com.umeng.analytics.pro.bk("entity", (byte) 11, 7);
    public static final com.umeng.analytics.pro.bk u = new com.umeng.analytics.pro.bk("guid", (byte) 11, 8);
    public static final com.umeng.analytics.pro.bk v = new com.umeng.analytics.pro.bk("checksum", (byte) 11, 9);
    public static final com.umeng.analytics.pro.bk w = new com.umeng.analytics.pro.bk("codex", (byte) 8, 10);
    public static final java.util.Map<java.lang.Class<? extends com.umeng.analytics.pro.bx>, com.umeng.analytics.pro.by> x;
    public static final int y = 0;
    public static final int z = 1;
    public byte C;
    public com.umeng.analytics.pro.aj.e[] D;
    public java.lang.String a;
    public java.lang.String b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.String f1221c;

    /* renamed from: d, reason: collision with root package name */
    public int f1222d;

    /* renamed from: e, reason: collision with root package name */
    public int f1223e;

    /* renamed from: f, reason: collision with root package name */
    public int f1224f;

    /* renamed from: g, reason: collision with root package name */
    public java.nio.ByteBuffer f1225g;
    public java.lang.String h;
    public java.lang.String i;
    public int j;

    public static class a extends com.umeng.analytics.pro.bz<com.umeng.analytics.pro.aj> {
        public a() {
        }

        @Override // com.umeng.analytics.pro.bx
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void b(com.umeng.analytics.pro.bp bpVar, com.umeng.analytics.pro.aj ajVar) throws com.umeng.analytics.pro.bq {
            bpVar.j();
            while (true) {
                com.umeng.analytics.pro.bk bkVarL = bpVar.l();
                byte b = bkVarL.b;
                if (b == 0) {
                    bpVar.k();
                    if (!ajVar.m()) {
                        java.lang.StringBuilder sbO = e.a.c.a.a.o("Required field 'serial_num' was not found in serialized data! Struct: ");
                        sbO.append(toString());
                        throw new com.umeng.analytics.pro.bq(sbO.toString());
                    }
                    if (!ajVar.p()) {
                        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Required field 'ts_secs' was not found in serialized data! Struct: ");
                        sbO2.append(toString());
                        throw new com.umeng.analytics.pro.bq(sbO2.toString());
                    }
                    if (ajVar.s()) {
                        ajVar.G();
                        return;
                    } else {
                        java.lang.StringBuilder sbO3 = e.a.c.a.a.o("Required field 'length' was not found in serialized data! Struct: ");
                        sbO3.append(toString());
                        throw new com.umeng.analytics.pro.bq(sbO3.toString());
                    }
                }
                switch (bkVarL.f1271c) {
                    case 1:
                        if (b == 11) {
                            ajVar.a = bpVar.z();
                            ajVar.a(true);
                            continue;
                        }
                        bpVar.m();
                        break;
                    case 2:
                        if (b == 11) {
                            ajVar.b = bpVar.z();
                            ajVar.b(true);
                            continue;
                        }
                        bpVar.m();
                        break;
                    case 3:
                        if (b == 11) {
                            ajVar.f1221c = bpVar.z();
                            ajVar.c(true);
                            continue;
                        }
                        bpVar.m();
                        break;
                    case 4:
                        if (b == 8) {
                            ajVar.f1222d = bpVar.w();
                            ajVar.d(true);
                            continue;
                        }
                        bpVar.m();
                        break;
                    case 5:
                        if (b == 8) {
                            ajVar.f1223e = bpVar.w();
                            ajVar.e(true);
                            continue;
                        }
                        bpVar.m();
                        break;
                    case 6:
                        if (b == 8) {
                            ajVar.f1224f = bpVar.w();
                            ajVar.f(true);
                            continue;
                        }
                        bpVar.m();
                        break;
                    case 7:
                        if (b == 11) {
                            ajVar.f1225g = bpVar.A();
                            ajVar.g(true);
                            continue;
                        }
                        bpVar.m();
                        break;
                    case 8:
                        if (b == 11) {
                            ajVar.h = bpVar.z();
                            ajVar.h(true);
                            continue;
                        }
                        bpVar.m();
                        break;
                    case 9:
                        if (b == 11) {
                            ajVar.i = bpVar.z();
                            ajVar.i(true);
                            continue;
                        }
                        bpVar.m();
                        break;
                    case 10:
                        if (b == 8) {
                            ajVar.j = bpVar.w();
                            ajVar.j(true);
                            continue;
                        }
                        bpVar.m();
                        break;
                }
                com.umeng.analytics.pro.bs.a(bpVar, b);
                bpVar.m();
            }
        }

        @Override // com.umeng.analytics.pro.bx
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.analytics.pro.aj ajVar) throws com.umeng.analytics.pro.bq {
            ajVar.G();
            bpVar.a(com.umeng.analytics.pro.aj.m);
            if (ajVar.a != null) {
                bpVar.a(com.umeng.analytics.pro.aj.n);
                bpVar.a(ajVar.a);
                bpVar.c();
            }
            if (ajVar.b != null) {
                bpVar.a(com.umeng.analytics.pro.aj.o);
                bpVar.a(ajVar.b);
                bpVar.c();
            }
            if (ajVar.f1221c != null) {
                bpVar.a(com.umeng.analytics.pro.aj.p);
                bpVar.a(ajVar.f1221c);
                bpVar.c();
            }
            bpVar.a(com.umeng.analytics.pro.aj.q);
            bpVar.a(ajVar.f1222d);
            bpVar.c();
            bpVar.a(com.umeng.analytics.pro.aj.r);
            bpVar.a(ajVar.f1223e);
            bpVar.c();
            bpVar.a(com.umeng.analytics.pro.aj.s);
            bpVar.a(ajVar.f1224f);
            bpVar.c();
            if (ajVar.f1225g != null) {
                bpVar.a(com.umeng.analytics.pro.aj.t);
                bpVar.a(ajVar.f1225g);
                bpVar.c();
            }
            if (ajVar.h != null) {
                bpVar.a(com.umeng.analytics.pro.aj.u);
                bpVar.a(ajVar.h);
                bpVar.c();
            }
            if (ajVar.i != null) {
                bpVar.a(com.umeng.analytics.pro.aj.v);
                bpVar.a(ajVar.i);
                bpVar.c();
            }
            if (ajVar.F()) {
                bpVar.a(com.umeng.analytics.pro.aj.w);
                bpVar.a(ajVar.j);
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
        public com.umeng.analytics.pro.aj.a b() {
            return new com.umeng.analytics.pro.aj.a();
        }
    }

    public static class c extends com.umeng.analytics.pro.ca<com.umeng.analytics.pro.aj> {
        public c() {
        }

        @Override // com.umeng.analytics.pro.bx
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.analytics.pro.aj ajVar) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            bvVar.a(ajVar.a);
            bvVar.a(ajVar.b);
            bvVar.a(ajVar.f1221c);
            bvVar.a(ajVar.f1222d);
            bvVar.a(ajVar.f1223e);
            bvVar.a(ajVar.f1224f);
            bvVar.a(ajVar.f1225g);
            bvVar.a(ajVar.h);
            bvVar.a(ajVar.i);
            java.util.BitSet bitSet = new java.util.BitSet();
            if (ajVar.F()) {
                bitSet.set(0);
            }
            bvVar.a(bitSet, 1);
            if (ajVar.F()) {
                bvVar.a(ajVar.j);
            }
        }

        @Override // com.umeng.analytics.pro.bx
        public void b(com.umeng.analytics.pro.bp bpVar, com.umeng.analytics.pro.aj ajVar) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            ajVar.a = bvVar.z();
            ajVar.a(true);
            ajVar.b = bvVar.z();
            ajVar.b(true);
            ajVar.f1221c = bvVar.z();
            ajVar.c(true);
            ajVar.f1222d = bvVar.w();
            ajVar.d(true);
            ajVar.f1223e = bvVar.w();
            ajVar.e(true);
            ajVar.f1224f = bvVar.w();
            ajVar.f(true);
            ajVar.f1225g = bvVar.A();
            ajVar.g(true);
            ajVar.h = bvVar.z();
            ajVar.h(true);
            ajVar.i = bvVar.z();
            ajVar.i(true);
            if (bvVar.b(1).get(0)) {
                ajVar.j = bvVar.w();
                ajVar.j(true);
            }
        }
    }

    public static class d implements com.umeng.analytics.pro.by {
        public d() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.umeng.analytics.pro.aj.c b() {
            return new com.umeng.analytics.pro.aj.c();
        }
    }

    public enum e implements com.umeng.analytics.pro.ax {
        VERSION(1, com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION),
        ADDRESS(2, "address"),
        SIGNATURE(3, "signature"),
        SERIAL_NUM(4, "serial_num"),
        TS_SECS(5, "ts_secs"),
        LENGTH(6, com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex.COLUMN_LENGTH),
        ENTITY(7, "entity"),
        GUID(8, "guid"),
        CHECKSUM(9, "checksum"),
        CODEX(10, "codex");

        public static final java.util.Map<java.lang.String, com.umeng.analytics.pro.aj.e> k = new java.util.HashMap();
        public final short l;
        public final java.lang.String m;

        static {
            java.util.Iterator it = java.util.EnumSet.allOf(com.umeng.analytics.pro.aj.e.class).iterator();
            while (it.hasNext()) {
                com.umeng.analytics.pro.aj.e eVar = (com.umeng.analytics.pro.aj.e) it.next();
                k.put(eVar.b(), eVar);
            }
        }

        e(short s, java.lang.String str) {
            this.l = s;
            this.m = str;
        }

        public static com.umeng.analytics.pro.aj.e a(int i) {
            switch (i) {
                case 1:
                    return VERSION;
                case 2:
                    return ADDRESS;
                case 3:
                    return SIGNATURE;
                case 4:
                    return SERIAL_NUM;
                case 5:
                    return TS_SECS;
                case 6:
                    return LENGTH;
                case 7:
                    return ENTITY;
                case 8:
                    return GUID;
                case 9:
                    return CHECKSUM;
                case 10:
                    return CODEX;
                default:
                    return null;
            }
        }

        public static com.umeng.analytics.pro.aj.e a(java.lang.String str) {
            return k.get(str);
        }

        public static com.umeng.analytics.pro.aj.e b(int i) {
            com.umeng.analytics.pro.aj.e eVarA = a(i);
            if (eVarA != null) {
                return eVarA;
            }
            throw new java.lang.IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.ax
        public short a() {
            return this.l;
        }

        @Override // com.umeng.analytics.pro.ax
        public java.lang.String b() {
            return this.m;
        }
    }

    static {
        java.util.HashMap map = new java.util.HashMap();
        x = map;
        map.put(com.umeng.analytics.pro.bz.class, new com.umeng.analytics.pro.aj.b());
        x.put(com.umeng.analytics.pro.ca.class, new com.umeng.analytics.pro.aj.d());
        java.util.EnumMap enumMap = new java.util.EnumMap(com.umeng.analytics.pro.aj.e.class);
        enumMap.put((java.util.EnumMap) com.umeng.analytics.pro.aj.e.VERSION, (com.umeng.analytics.pro.aj.e) new com.umeng.analytics.pro.bc(com.google.android.exoplayer2.database.VersionTable.COLUMN_VERSION, (byte) 1, new com.umeng.analytics.pro.bd((byte) 11)));
        enumMap.put((java.util.EnumMap) com.umeng.analytics.pro.aj.e.ADDRESS, (com.umeng.analytics.pro.aj.e) new com.umeng.analytics.pro.bc("address", (byte) 1, new com.umeng.analytics.pro.bd((byte) 11)));
        enumMap.put((java.util.EnumMap) com.umeng.analytics.pro.aj.e.SIGNATURE, (com.umeng.analytics.pro.aj.e) new com.umeng.analytics.pro.bc("signature", (byte) 1, new com.umeng.analytics.pro.bd((byte) 11)));
        enumMap.put((java.util.EnumMap) com.umeng.analytics.pro.aj.e.SERIAL_NUM, (com.umeng.analytics.pro.aj.e) new com.umeng.analytics.pro.bc("serial_num", (byte) 1, new com.umeng.analytics.pro.bd((byte) 8)));
        enumMap.put((java.util.EnumMap) com.umeng.analytics.pro.aj.e.TS_SECS, (com.umeng.analytics.pro.aj.e) new com.umeng.analytics.pro.bc("ts_secs", (byte) 1, new com.umeng.analytics.pro.bd((byte) 8)));
        enumMap.put((java.util.EnumMap) com.umeng.analytics.pro.aj.e.LENGTH, (com.umeng.analytics.pro.aj.e) new com.umeng.analytics.pro.bc(com.google.android.exoplayer2.upstream.cache.CacheFileMetadataIndex.COLUMN_LENGTH, (byte) 1, new com.umeng.analytics.pro.bd((byte) 8)));
        enumMap.put((java.util.EnumMap) com.umeng.analytics.pro.aj.e.ENTITY, (com.umeng.analytics.pro.aj.e) new com.umeng.analytics.pro.bc("entity", (byte) 1, new com.umeng.analytics.pro.bd((byte) 11, true)));
        enumMap.put((java.util.EnumMap) com.umeng.analytics.pro.aj.e.GUID, (com.umeng.analytics.pro.aj.e) new com.umeng.analytics.pro.bc("guid", (byte) 1, new com.umeng.analytics.pro.bd((byte) 11)));
        enumMap.put((java.util.EnumMap) com.umeng.analytics.pro.aj.e.CHECKSUM, (com.umeng.analytics.pro.aj.e) new com.umeng.analytics.pro.bc("checksum", (byte) 1, new com.umeng.analytics.pro.bd((byte) 11)));
        enumMap.put((java.util.EnumMap) com.umeng.analytics.pro.aj.e.CODEX, (com.umeng.analytics.pro.aj.e) new com.umeng.analytics.pro.bc("codex", (byte) 2, new com.umeng.analytics.pro.bd((byte) 8)));
        java.util.Map<com.umeng.analytics.pro.aj.e, com.umeng.analytics.pro.bc> mapUnmodifiableMap = java.util.Collections.unmodifiableMap(enumMap);
        k = mapUnmodifiableMap;
        com.umeng.analytics.pro.bc.a(com.umeng.analytics.pro.aj.class, mapUnmodifiableMap);
    }

    public aj() {
        this.C = (byte) 0;
        this.D = new com.umeng.analytics.pro.aj.e[]{com.umeng.analytics.pro.aj.e.CODEX};
    }

    public aj(com.umeng.analytics.pro.aj ajVar) {
        this.C = (byte) 0;
        this.D = new com.umeng.analytics.pro.aj.e[]{com.umeng.analytics.pro.aj.e.CODEX};
        this.C = ajVar.C;
        if (ajVar.d()) {
            this.a = ajVar.a;
        }
        if (ajVar.g()) {
            this.b = ajVar.b;
        }
        if (ajVar.j()) {
            this.f1221c = ajVar.f1221c;
        }
        this.f1222d = ajVar.f1222d;
        this.f1223e = ajVar.f1223e;
        this.f1224f = ajVar.f1224f;
        if (ajVar.w()) {
            this.f1225g = com.umeng.analytics.pro.ar.d(ajVar.f1225g);
        }
        if (ajVar.z()) {
            this.h = ajVar.h;
        }
        if (ajVar.C()) {
            this.i = ajVar.i;
        }
        this.j = ajVar.j;
    }

    public aj(java.lang.String str, java.lang.String str2, java.lang.String str3, int i, int i2, int i3, java.nio.ByteBuffer byteBuffer, java.lang.String str4, java.lang.String str5) {
        this();
        this.a = str;
        this.b = str2;
        this.f1221c = str3;
        this.f1222d = i;
        d(true);
        this.f1223e = i2;
        e(true);
        this.f1224f = i3;
        f(true);
        this.f1225g = byteBuffer;
        this.h = str4;
        this.i = str5;
    }

    private void a(java.io.ObjectInputStream objectInputStream) throws java.io.IOException {
        try {
            this.C = (byte) 0;
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

    public java.lang.String A() {
        return this.i;
    }

    public void B() {
        this.i = null;
    }

    public boolean C() {
        return this.i != null;
    }

    public int D() {
        return this.j;
    }

    public void E() {
        this.C = com.umeng.analytics.pro.an.b(this.C, 3);
    }

    public boolean F() {
        return com.umeng.analytics.pro.an.a(this.C, 3);
    }

    public void G() throws com.umeng.analytics.pro.bq {
        if (this.a == null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Required field 'version' was not present! Struct: ");
            sbO.append(toString());
            throw new com.umeng.analytics.pro.bq(sbO.toString());
        }
        if (this.b == null) {
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Required field 'address' was not present! Struct: ");
            sbO2.append(toString());
            throw new com.umeng.analytics.pro.bq(sbO2.toString());
        }
        if (this.f1221c == null) {
            java.lang.StringBuilder sbO3 = e.a.c.a.a.o("Required field 'signature' was not present! Struct: ");
            sbO3.append(toString());
            throw new com.umeng.analytics.pro.bq(sbO3.toString());
        }
        if (this.f1225g == null) {
            java.lang.StringBuilder sbO4 = e.a.c.a.a.o("Required field 'entity' was not present! Struct: ");
            sbO4.append(toString());
            throw new com.umeng.analytics.pro.bq(sbO4.toString());
        }
        if (this.h == null) {
            java.lang.StringBuilder sbO5 = e.a.c.a.a.o("Required field 'guid' was not present! Struct: ");
            sbO5.append(toString());
            throw new com.umeng.analytics.pro.bq(sbO5.toString());
        }
        if (this.i != null) {
            return;
        }
        java.lang.StringBuilder sbO6 = e.a.c.a.a.o("Required field 'checksum' was not present! Struct: ");
        sbO6.append(toString());
        throw new com.umeng.analytics.pro.bq(sbO6.toString());
    }

    @Override // com.umeng.analytics.pro.aq
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.umeng.analytics.pro.aj deepCopy() {
        return new com.umeng.analytics.pro.aj(this);
    }

    public com.umeng.analytics.pro.aj a(int i) {
        this.f1222d = i;
        d(true);
        return this;
    }

    public com.umeng.analytics.pro.aj a(java.lang.String str) {
        this.a = str;
        return this;
    }

    public com.umeng.analytics.pro.aj a(java.nio.ByteBuffer byteBuffer) {
        this.f1225g = byteBuffer;
        return this;
    }

    public com.umeng.analytics.pro.aj a(byte[] bArr) {
        a(bArr == null ? null : java.nio.ByteBuffer.wrap(bArr));
        return this;
    }

    public void a(boolean z2) {
        if (z2) {
            return;
        }
        this.a = null;
    }

    public com.umeng.analytics.pro.aj b(int i) {
        this.f1223e = i;
        e(true);
        return this;
    }

    public com.umeng.analytics.pro.aj b(java.lang.String str) {
        this.b = str;
        return this;
    }

    public java.lang.String b() {
        return this.a;
    }

    public void b(boolean z2) {
        if (z2) {
            return;
        }
        this.b = null;
    }

    public com.umeng.analytics.pro.aj c(int i) {
        this.f1224f = i;
        f(true);
        return this;
    }

    public com.umeng.analytics.pro.aj c(java.lang.String str) {
        this.f1221c = str;
        return this;
    }

    public void c() {
        this.a = null;
    }

    public void c(boolean z2) {
        if (z2) {
            return;
        }
        this.f1221c = null;
    }

    @Override // com.umeng.analytics.pro.aq
    public void clear() {
        this.a = null;
        this.b = null;
        this.f1221c = null;
        d(false);
        this.f1222d = 0;
        e(false);
        this.f1223e = 0;
        f(false);
        this.f1224f = 0;
        this.f1225g = null;
        this.h = null;
        this.i = null;
        j(false);
        this.j = 0;
    }

    public com.umeng.analytics.pro.aj d(int i) {
        this.j = i;
        j(true);
        return this;
    }

    public com.umeng.analytics.pro.aj d(java.lang.String str) {
        this.h = str;
        return this;
    }

    public void d(boolean z2) {
        this.C = com.umeng.analytics.pro.an.a(this.C, 0, z2);
    }

    public boolean d() {
        return this.a != null;
    }

    @Override // com.umeng.analytics.pro.aq
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public com.umeng.analytics.pro.aj.e fieldForId(int i) {
        return com.umeng.analytics.pro.aj.e.a(i);
    }

    public com.umeng.analytics.pro.aj e(java.lang.String str) {
        this.i = str;
        return this;
    }

    public java.lang.String e() {
        return this.b;
    }

    public void e(boolean z2) {
        this.C = com.umeng.analytics.pro.an.a(this.C, 1, z2);
    }

    public void f() {
        this.b = null;
    }

    public void f(boolean z2) {
        this.C = com.umeng.analytics.pro.an.a(this.C, 2, z2);
    }

    public void g(boolean z2) {
        if (z2) {
            return;
        }
        this.f1225g = null;
    }

    public boolean g() {
        return this.b != null;
    }

    public java.lang.String h() {
        return this.f1221c;
    }

    public void h(boolean z2) {
        if (z2) {
            return;
        }
        this.h = null;
    }

    public void i() {
        this.f1221c = null;
    }

    public void i(boolean z2) {
        if (z2) {
            return;
        }
        this.i = null;
    }

    public void j(boolean z2) {
        this.C = com.umeng.analytics.pro.an.a(this.C, 3, z2);
    }

    public boolean j() {
        return this.f1221c != null;
    }

    public int k() {
        return this.f1222d;
    }

    public void l() {
        this.C = com.umeng.analytics.pro.an.b(this.C, 0);
    }

    public boolean m() {
        return com.umeng.analytics.pro.an.a(this.C, 0);
    }

    public int n() {
        return this.f1223e;
    }

    public void o() {
        this.C = com.umeng.analytics.pro.an.b(this.C, 1);
    }

    public boolean p() {
        return com.umeng.analytics.pro.an.a(this.C, 1);
    }

    public int q() {
        return this.f1224f;
    }

    public void r() {
        this.C = com.umeng.analytics.pro.an.b(this.C, 2);
    }

    @Override // com.umeng.analytics.pro.aq
    public void read(com.umeng.analytics.pro.bp bpVar) {
        x.get(bpVar.D()).b().b(bpVar, this);
    }

    public boolean s() {
        return com.umeng.analytics.pro.an.a(this.C, 2);
    }

    public byte[] t() {
        a(com.umeng.analytics.pro.ar.c(this.f1225g));
        java.nio.ByteBuffer byteBuffer = this.f1225g;
        if (byteBuffer == null) {
            return null;
        }
        return byteBuffer.array();
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder("UMEnvelope(");
        sb.append("version:");
        java.lang.String str = this.a;
        if (str == null) {
            sb.append("null");
        } else {
            sb.append(str);
        }
        sb.append(", ");
        sb.append("address:");
        java.lang.String str2 = this.b;
        if (str2 == null) {
            sb.append("null");
        } else {
            sb.append(str2);
        }
        sb.append(", ");
        sb.append("signature:");
        java.lang.String str3 = this.f1221c;
        if (str3 == null) {
            sb.append("null");
        } else {
            sb.append(str3);
        }
        sb.append(", ");
        sb.append("serial_num:");
        sb.append(this.f1222d);
        sb.append(", ");
        sb.append("ts_secs:");
        sb.append(this.f1223e);
        sb.append(", ");
        sb.append("length:");
        sb.append(this.f1224f);
        sb.append(", ");
        sb.append("entity:");
        java.nio.ByteBuffer byteBuffer = this.f1225g;
        if (byteBuffer == null) {
            sb.append("null");
        } else {
            com.umeng.analytics.pro.ar.a(byteBuffer, sb);
        }
        sb.append(", ");
        sb.append("guid:");
        java.lang.String str4 = this.h;
        if (str4 == null) {
            sb.append("null");
        } else {
            sb.append(str4);
        }
        sb.append(", ");
        sb.append("checksum:");
        java.lang.String str5 = this.i;
        if (str5 == null) {
            sb.append("null");
        } else {
            sb.append(str5);
        }
        if (F()) {
            sb.append(", ");
            sb.append("codex:");
            sb.append(this.j);
        }
        sb.append(")");
        return sb.toString();
    }

    public java.nio.ByteBuffer u() {
        return this.f1225g;
    }

    public void v() {
        this.f1225g = null;
    }

    public boolean w() {
        return this.f1225g != null;
    }

    @Override // com.umeng.analytics.pro.aq
    public void write(com.umeng.analytics.pro.bp bpVar) {
        x.get(bpVar.D()).b().a(bpVar, this);
    }

    public java.lang.String x() {
        return this.h;
    }

    public void y() {
        this.h = null;
    }

    public boolean z() {
        return this.h != null;
    }
}
