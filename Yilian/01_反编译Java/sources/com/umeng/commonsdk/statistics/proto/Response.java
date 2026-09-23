package com.umeng.commonsdk.statistics.proto;

/* loaded from: classes.dex */
public class Response implements com.umeng.analytics.pro.aq<com.umeng.commonsdk.statistics.proto.Response, com.umeng.commonsdk.statistics.proto.Response.e>, java.io.Serializable, java.lang.Cloneable {
    public static final int __RESP_CODE_ISSET_ID = 0;
    public static final java.util.Map<com.umeng.commonsdk.statistics.proto.Response.e, com.umeng.analytics.pro.bc> metaDataMap;
    public static final java.util.Map<java.lang.Class<? extends com.umeng.analytics.pro.bx>, com.umeng.analytics.pro.by> schemes;
    public static final long serialVersionUID = -4549277923241195391L;
    public byte __isset_bitfield;
    public com.umeng.commonsdk.statistics.proto.d imprint;
    public java.lang.String msg;
    public com.umeng.commonsdk.statistics.proto.Response.e[] optionals;
    public int resp_code;
    public static final com.umeng.analytics.pro.bu STRUCT_DESC = new com.umeng.analytics.pro.bu("Response");
    public static final com.umeng.analytics.pro.bk RESP_CODE_FIELD_DESC = new com.umeng.analytics.pro.bk("resp_code", (byte) 8, 1);
    public static final com.umeng.analytics.pro.bk MSG_FIELD_DESC = new com.umeng.analytics.pro.bk("msg", (byte) 11, 2);
    public static final com.umeng.analytics.pro.bk IMPRINT_FIELD_DESC = new com.umeng.analytics.pro.bk(com.umeng.analytics.pro.ai.X, (byte) 12, 3);

    public static class a extends com.umeng.analytics.pro.bz<com.umeng.commonsdk.statistics.proto.Response> {
        public a() {
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x0069  */
        @Override // com.umeng.analytics.pro.bx
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void b(com.umeng.analytics.pro.bp r5, com.umeng.commonsdk.statistics.proto.Response r6) throws com.umeng.analytics.pro.bq {
            /*
                r4 = this;
                r5.j()
            L3:
                com.umeng.analytics.pro.bk r0 = r5.l()
                byte r1 = r0.b
                if (r1 != 0) goto L2f
                r5.k()
                boolean r5 = r6.isSetResp_code()
                if (r5 == 0) goto L18
                r6.validate()
                return
            L18:
                com.umeng.analytics.pro.bq r5 = new com.umeng.analytics.pro.bq
                java.lang.String r6 = "Required field 'resp_code' was not found in serialized data! Struct: "
                java.lang.StringBuilder r6 = e.a.c.a.a.o(r6)
                java.lang.String r0 = r4.toString()
                r6.append(r0)
                java.lang.String r6 = r6.toString()
                r5.<init>(r6)
                throw r5
            L2f:
                short r0 = r0.f1271c
                r2 = 1
                if (r0 == r2) goto L5b
                r3 = 2
                if (r0 == r3) goto L4d
                r3 = 3
                if (r0 == r3) goto L3b
                goto L69
            L3b:
                r0 = 12
                if (r1 != r0) goto L69
                com.umeng.commonsdk.statistics.proto.d r0 = new com.umeng.commonsdk.statistics.proto.d
                r0.<init>()
                r6.imprint = r0
                r0.read(r5)
                r6.setImprintIsSet(r2)
                goto L6c
            L4d:
                r0 = 11
                if (r1 != r0) goto L69
                java.lang.String r0 = r5.z()
                r6.msg = r0
                r6.setMsgIsSet(r2)
                goto L6c
            L5b:
                r0 = 8
                if (r1 != r0) goto L69
                int r0 = r5.w()
                r6.resp_code = r0
                r6.setResp_codeIsSet(r2)
                goto L6c
            L69:
                com.umeng.analytics.pro.bs.a(r5, r1)
            L6c:
                r5.m()
                goto L3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.umeng.commonsdk.statistics.proto.Response.a.b(com.umeng.analytics.pro.bp, com.umeng.commonsdk.statistics.proto.Response):void");
        }

        @Override // com.umeng.analytics.pro.bx
        /* renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.Response response) throws com.umeng.analytics.pro.bq {
            response.validate();
            bpVar.a(com.umeng.commonsdk.statistics.proto.Response.STRUCT_DESC);
            bpVar.a(com.umeng.commonsdk.statistics.proto.Response.RESP_CODE_FIELD_DESC);
            bpVar.a(response.resp_code);
            bpVar.c();
            if (response.msg != null && response.isSetMsg()) {
                bpVar.a(com.umeng.commonsdk.statistics.proto.Response.MSG_FIELD_DESC);
                bpVar.a(response.msg);
                bpVar.c();
            }
            if (response.imprint != null && response.isSetImprint()) {
                bpVar.a(com.umeng.commonsdk.statistics.proto.Response.IMPRINT_FIELD_DESC);
                response.imprint.write(bpVar);
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
        public com.umeng.commonsdk.statistics.proto.Response.a b() {
            return new com.umeng.commonsdk.statistics.proto.Response.a();
        }
    }

    public static class c extends com.umeng.analytics.pro.ca<com.umeng.commonsdk.statistics.proto.Response> {
        public c() {
        }

        @Override // com.umeng.analytics.pro.bx
        public void a(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.Response response) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            bvVar.a(response.resp_code);
            java.util.BitSet bitSet = new java.util.BitSet();
            if (response.isSetMsg()) {
                bitSet.set(0);
            }
            if (response.isSetImprint()) {
                bitSet.set(1);
            }
            bvVar.a(bitSet, 2);
            if (response.isSetMsg()) {
                bvVar.a(response.msg);
            }
            if (response.isSetImprint()) {
                response.imprint.write(bvVar);
            }
        }

        @Override // com.umeng.analytics.pro.bx
        public void b(com.umeng.analytics.pro.bp bpVar, com.umeng.commonsdk.statistics.proto.Response response) {
            com.umeng.analytics.pro.bv bvVar = (com.umeng.analytics.pro.bv) bpVar;
            response.resp_code = bvVar.w();
            response.setResp_codeIsSet(true);
            java.util.BitSet bitSetB = bvVar.b(2);
            if (bitSetB.get(0)) {
                response.msg = bvVar.z();
                response.setMsgIsSet(true);
            }
            if (bitSetB.get(1)) {
                com.umeng.commonsdk.statistics.proto.d dVar = new com.umeng.commonsdk.statistics.proto.d();
                response.imprint = dVar;
                dVar.read(bvVar);
                response.setImprintIsSet(true);
            }
        }
    }

    public static class d implements com.umeng.analytics.pro.by {
        public d() {
        }

        @Override // com.umeng.analytics.pro.by
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public com.umeng.commonsdk.statistics.proto.Response.c b() {
            return new com.umeng.commonsdk.statistics.proto.Response.c();
        }
    }

    public enum e implements com.umeng.analytics.pro.ax {
        RESP_CODE(1, "resp_code"),
        MSG(2, "msg"),
        IMPRINT(3, com.umeng.analytics.pro.ai.X);


        /* renamed from: d, reason: collision with root package name */
        public static final java.util.Map<java.lang.String, com.umeng.commonsdk.statistics.proto.Response.e> f1549d = new java.util.HashMap();

        /* renamed from: e, reason: collision with root package name */
        public final short f1551e;

        /* renamed from: f, reason: collision with root package name */
        public final java.lang.String f1552f;

        static {
            java.util.Iterator it = java.util.EnumSet.allOf(com.umeng.commonsdk.statistics.proto.Response.e.class).iterator();
            while (it.hasNext()) {
                com.umeng.commonsdk.statistics.proto.Response.e eVar = (com.umeng.commonsdk.statistics.proto.Response.e) it.next();
                f1549d.put(eVar.b(), eVar);
            }
        }

        e(short s, java.lang.String str) {
            this.f1551e = s;
            this.f1552f = str;
        }

        public static com.umeng.commonsdk.statistics.proto.Response.e a(int i) {
            if (i == 1) {
                return RESP_CODE;
            }
            if (i == 2) {
                return MSG;
            }
            if (i != 3) {
                return null;
            }
            return IMPRINT;
        }

        public static com.umeng.commonsdk.statistics.proto.Response.e a(java.lang.String str) {
            return f1549d.get(str);
        }

        public static com.umeng.commonsdk.statistics.proto.Response.e b(int i) {
            com.umeng.commonsdk.statistics.proto.Response.e eVarA = a(i);
            if (eVarA != null) {
                return eVarA;
            }
            throw new java.lang.IllegalArgumentException("Field " + i + " doesn't exist!");
        }

        @Override // com.umeng.analytics.pro.ax
        public short a() {
            return this.f1551e;
        }

        @Override // com.umeng.analytics.pro.ax
        public java.lang.String b() {
            return this.f1552f;
        }
    }

    static {
        java.util.HashMap map = new java.util.HashMap();
        schemes = map;
        map.put(com.umeng.analytics.pro.bz.class, new com.umeng.commonsdk.statistics.proto.Response.b());
        schemes.put(com.umeng.analytics.pro.ca.class, new com.umeng.commonsdk.statistics.proto.Response.d());
        java.util.EnumMap enumMap = new java.util.EnumMap(com.umeng.commonsdk.statistics.proto.Response.e.class);
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.Response.e.RESP_CODE, (com.umeng.commonsdk.statistics.proto.Response.e) new com.umeng.analytics.pro.bc("resp_code", (byte) 1, new com.umeng.analytics.pro.bd((byte) 8)));
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.Response.e.MSG, (com.umeng.commonsdk.statistics.proto.Response.e) new com.umeng.analytics.pro.bc("msg", (byte) 2, new com.umeng.analytics.pro.bd((byte) 11)));
        enumMap.put((java.util.EnumMap) com.umeng.commonsdk.statistics.proto.Response.e.IMPRINT, (com.umeng.commonsdk.statistics.proto.Response.e) new com.umeng.analytics.pro.bc(com.umeng.analytics.pro.ai.X, (byte) 2, new com.umeng.analytics.pro.bh((byte) 12, com.umeng.commonsdk.statistics.proto.d.class)));
        java.util.Map<com.umeng.commonsdk.statistics.proto.Response.e, com.umeng.analytics.pro.bc> mapUnmodifiableMap = java.util.Collections.unmodifiableMap(enumMap);
        metaDataMap = mapUnmodifiableMap;
        com.umeng.analytics.pro.bc.a(com.umeng.commonsdk.statistics.proto.Response.class, mapUnmodifiableMap);
    }

    public Response() {
        this.__isset_bitfield = (byte) 0;
        this.optionals = new com.umeng.commonsdk.statistics.proto.Response.e[]{com.umeng.commonsdk.statistics.proto.Response.e.MSG, com.umeng.commonsdk.statistics.proto.Response.e.IMPRINT};
    }

    public Response(int i) {
        this();
        this.resp_code = i;
        setResp_codeIsSet(true);
    }

    public Response(com.umeng.commonsdk.statistics.proto.Response response) {
        this.__isset_bitfield = (byte) 0;
        this.optionals = new com.umeng.commonsdk.statistics.proto.Response.e[]{com.umeng.commonsdk.statistics.proto.Response.e.MSG, com.umeng.commonsdk.statistics.proto.Response.e.IMPRINT};
        this.__isset_bitfield = response.__isset_bitfield;
        this.resp_code = response.resp_code;
        if (response.isSetMsg()) {
            this.msg = response.msg;
        }
        if (response.isSetImprint()) {
            this.imprint = new com.umeng.commonsdk.statistics.proto.d(response.imprint);
        }
    }

    private void readObject(java.io.ObjectInputStream objectInputStream) throws java.io.IOException {
        try {
            this.__isset_bitfield = (byte) 0;
            read(new com.umeng.analytics.pro.bj(new com.umeng.analytics.pro.cb(objectInputStream)));
        } catch (com.umeng.analytics.pro.aw e2) {
            throw new java.io.IOException(e2.getMessage());
        }
    }

    private void writeObject(java.io.ObjectOutputStream objectOutputStream) throws java.io.IOException {
        try {
            write(new com.umeng.analytics.pro.bj(new com.umeng.analytics.pro.cb(objectOutputStream)));
        } catch (com.umeng.analytics.pro.aw e2) {
            throw new java.io.IOException(e2.getMessage());
        }
    }

    @Override // com.umeng.analytics.pro.aq
    public void clear() {
        setResp_codeIsSet(false);
        this.resp_code = 0;
        this.msg = null;
        this.imprint = null;
    }

    @Override // com.umeng.analytics.pro.aq
    public com.umeng.commonsdk.statistics.proto.Response deepCopy() {
        return new com.umeng.commonsdk.statistics.proto.Response(this);
    }

    @Override // com.umeng.analytics.pro.aq
    public com.umeng.commonsdk.statistics.proto.Response.e fieldForId(int i) {
        return com.umeng.commonsdk.statistics.proto.Response.e.a(i);
    }

    public com.umeng.commonsdk.statistics.proto.d getImprint() {
        return this.imprint;
    }

    public java.lang.String getMsg() {
        return this.msg;
    }

    public int getResp_code() {
        return this.resp_code;
    }

    public boolean isSetImprint() {
        return this.imprint != null;
    }

    public boolean isSetMsg() {
        return this.msg != null;
    }

    public boolean isSetResp_code() {
        return com.umeng.analytics.pro.an.a(this.__isset_bitfield, 0);
    }

    @Override // com.umeng.analytics.pro.aq
    public void read(com.umeng.analytics.pro.bp bpVar) {
        schemes.get(bpVar.D()).b().b(bpVar, this);
    }

    public com.umeng.commonsdk.statistics.proto.Response setImprint(com.umeng.commonsdk.statistics.proto.d dVar) {
        this.imprint = dVar;
        return this;
    }

    public void setImprintIsSet(boolean z) {
        if (z) {
            return;
        }
        this.imprint = null;
    }

    public com.umeng.commonsdk.statistics.proto.Response setMsg(java.lang.String str) {
        this.msg = str;
        return this;
    }

    public void setMsgIsSet(boolean z) {
        if (z) {
            return;
        }
        this.msg = null;
    }

    public com.umeng.commonsdk.statistics.proto.Response setResp_code(int i) {
        this.resp_code = i;
        setResp_codeIsSet(true);
        return this;
    }

    public void setResp_codeIsSet(boolean z) {
        this.__isset_bitfield = com.umeng.analytics.pro.an.a(this.__isset_bitfield, 0, z);
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder("Response(");
        sb.append("resp_code:");
        sb.append(this.resp_code);
        if (isSetMsg()) {
            sb.append(", ");
            sb.append("msg:");
            java.lang.String str = this.msg;
            if (str == null) {
                sb.append("null");
            } else {
                sb.append(str);
            }
        }
        if (isSetImprint()) {
            sb.append(", ");
            sb.append("imprint:");
            com.umeng.commonsdk.statistics.proto.d dVar = this.imprint;
            if (dVar == null) {
                sb.append("null");
            } else {
                sb.append(dVar);
            }
        }
        sb.append(")");
        return sb.toString();
    }

    public void unsetImprint() {
        this.imprint = null;
    }

    public void unsetMsg() {
        this.msg = null;
    }

    public void unsetResp_code() {
        this.__isset_bitfield = com.umeng.analytics.pro.an.b(this.__isset_bitfield, 0);
    }

    public void validate() throws com.umeng.analytics.pro.bq {
        com.umeng.commonsdk.statistics.proto.d dVar = this.imprint;
        if (dVar != null) {
            dVar.l();
        }
    }

    @Override // com.umeng.analytics.pro.aq
    public void write(com.umeng.analytics.pro.bp bpVar) {
        schemes.get(bpVar.D()).b().a(bpVar, this);
    }
}
