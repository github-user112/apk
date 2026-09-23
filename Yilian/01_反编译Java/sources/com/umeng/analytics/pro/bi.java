package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class bi extends com.umeng.analytics.pro.bp {
    public static final int a = -65536;
    public static final int b = -2147418112;
    public static final com.umeng.analytics.pro.bu h = new com.umeng.analytics.pro.bu();

    /* renamed from: c, reason: collision with root package name */
    public boolean f1257c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f1258d;

    /* renamed from: e, reason: collision with root package name */
    public int f1259e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f1260f;
    public byte[] i;
    public byte[] j;
    public byte[] k;
    public byte[] l;
    public byte[] m;
    public byte[] n;
    public byte[] o;
    public byte[] p;

    public static class a implements com.umeng.analytics.pro.br {
        public boolean a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public int f1261c;

        public a() {
            this(false, true);
        }

        public a(boolean z, boolean z2) {
            this(z, z2, 0);
        }

        public a(boolean z, boolean z2, int i) {
            this.a = false;
            this.b = true;
            this.a = z;
            this.b = z2;
            this.f1261c = i;
        }

        @Override // com.umeng.analytics.pro.br
        public com.umeng.analytics.pro.bp a(com.umeng.analytics.pro.cd cdVar) {
            com.umeng.analytics.pro.bi biVar = new com.umeng.analytics.pro.bi(cdVar, this.a, this.b);
            int i = this.f1261c;
            if (i != 0) {
                biVar.c(i);
            }
            return biVar;
        }
    }

    public bi(com.umeng.analytics.pro.cd cdVar) {
        this(cdVar, false, true);
    }

    public bi(com.umeng.analytics.pro.cd cdVar, boolean z, boolean z2) {
        super(cdVar);
        this.f1257c = false;
        this.f1258d = true;
        this.f1260f = false;
        this.i = new byte[1];
        this.j = new byte[2];
        this.k = new byte[4];
        this.l = new byte[8];
        this.m = new byte[1];
        this.n = new byte[2];
        this.o = new byte[4];
        this.p = new byte[8];
        this.f1257c = z;
        this.f1258d = z2;
    }

    private int a(byte[] bArr, int i, int i2) throws com.umeng.analytics.pro.bq {
        d(i2);
        return this.f1276g.d(bArr, i, i2);
    }

    @Override // com.umeng.analytics.pro.bp
    public java.nio.ByteBuffer A() throws com.umeng.analytics.pro.bq, com.umeng.analytics.pro.ce {
        int iW = w();
        d(iW);
        if (this.f1276g.h() >= iW) {
            java.nio.ByteBuffer byteBufferWrap = java.nio.ByteBuffer.wrap(this.f1276g.f(), this.f1276g.g(), iW);
            this.f1276g.a(iW);
            return byteBufferWrap;
        }
        byte[] bArr = new byte[iW];
        this.f1276g.d(bArr, 0, iW);
        return java.nio.ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a() {
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(byte b2) {
        byte[] bArr = this.i;
        bArr[0] = b2;
        this.f1276g.b(bArr, 0, 1);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(double d2) {
        a(java.lang.Double.doubleToLongBits(d2));
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(int i) {
        byte[] bArr = this.k;
        bArr[0] = (byte) ((i >> 24) & 255);
        bArr[1] = (byte) ((i >> 16) & 255);
        bArr[2] = (byte) ((i >> 8) & 255);
        bArr[3] = (byte) (i & 255);
        this.f1276g.b(bArr, 0, 4);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(long j) {
        byte[] bArr = this.l;
        bArr[0] = (byte) ((j >> 56) & 255);
        bArr[1] = (byte) ((j >> 48) & 255);
        bArr[2] = (byte) ((j >> 40) & 255);
        bArr[3] = (byte) ((j >> 32) & 255);
        bArr[4] = (byte) ((j >> 24) & 255);
        bArr[5] = (byte) ((j >> 16) & 255);
        bArr[6] = (byte) ((j >> 8) & 255);
        bArr[7] = (byte) (j & 255);
        this.f1276g.b(bArr, 0, 8);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(com.umeng.analytics.pro.bk bkVar) {
        a(bkVar.b);
        a(bkVar.f1271c);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(com.umeng.analytics.pro.bl blVar) {
        a(blVar.a);
        a(blVar.b);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(com.umeng.analytics.pro.bm bmVar) {
        a(bmVar.a);
        a(bmVar.b);
        a(bmVar.f1272c);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(com.umeng.analytics.pro.bn bnVar) throws com.umeng.analytics.pro.aw, java.io.UnsupportedEncodingException {
        if (this.f1258d) {
            a((-2147418112) | bnVar.b);
            a(bnVar.a);
        } else {
            a(bnVar.a);
            a(bnVar.b);
        }
        a(bnVar.f1273c);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(com.umeng.analytics.pro.bt btVar) {
        a(btVar.a);
        a(btVar.b);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(com.umeng.analytics.pro.bu buVar) {
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(java.lang.String str) throws com.umeng.analytics.pro.aw, java.io.UnsupportedEncodingException {
        try {
            byte[] bytes = str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME);
            a(bytes.length);
            this.f1276g.b(bytes, 0, bytes.length);
        } catch (java.io.UnsupportedEncodingException unused) {
            throw new com.umeng.analytics.pro.aw("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(java.nio.ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit() - byteBuffer.position();
        a(iLimit);
        this.f1276g.b(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), iLimit);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(short s) {
        byte[] bArr = this.j;
        bArr[0] = (byte) ((s >> 8) & 255);
        bArr[1] = (byte) (s & 255);
        this.f1276g.b(bArr, 0, 2);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(boolean z) {
        a(z ? (byte) 1 : (byte) 0);
    }

    public java.lang.String b(int i) throws com.umeng.analytics.pro.aw {
        try {
            d(i);
            byte[] bArr = new byte[i];
            this.f1276g.d(bArr, 0, i);
            return new java.lang.String(bArr, com.google.android.exoplayer2.C.UTF8_NAME);
        } catch (java.io.UnsupportedEncodingException unused) {
            throw new com.umeng.analytics.pro.aw("JVM DOES NOT SUPPORT UTF-8");
        }
    }

    @Override // com.umeng.analytics.pro.bp
    public void b() {
    }

    @Override // com.umeng.analytics.pro.bp
    public void c() {
    }

    public void c(int i) {
        this.f1259e = i;
        this.f1260f = true;
    }

    @Override // com.umeng.analytics.pro.bp
    public void d() {
        a((byte) 0);
    }

    public void d(int i) throws com.umeng.analytics.pro.bq {
        if (i < 0) {
            throw new com.umeng.analytics.pro.bq(e.a.c.a.a.K("Negative length: ", i));
        }
        if (this.f1260f) {
            int i2 = this.f1259e - i;
            this.f1259e = i2;
            if (i2 < 0) {
                throw new com.umeng.analytics.pro.bq(e.a.c.a.a.K("Message length exceeded: ", i));
            }
        }
    }

    @Override // com.umeng.analytics.pro.bp
    public void e() {
    }

    @Override // com.umeng.analytics.pro.bp
    public void f() {
    }

    @Override // com.umeng.analytics.pro.bp
    public void g() {
    }

    @Override // com.umeng.analytics.pro.bp
    public com.umeng.analytics.pro.bn h() throws com.umeng.analytics.pro.bq {
        int iW = w();
        if (iW < 0) {
            if (((-65536) & iW) == -2147418112) {
                return new com.umeng.analytics.pro.bn(z(), (byte) (iW & 255), w());
            }
            throw new com.umeng.analytics.pro.bq(4, "Bad version in readMessageBegin");
        }
        if (this.f1257c) {
            throw new com.umeng.analytics.pro.bq(4, "Missing version in readMessageBegin, old client?");
        }
        return new com.umeng.analytics.pro.bn(b(iW), u(), w());
    }

    @Override // com.umeng.analytics.pro.bp
    public void i() {
    }

    @Override // com.umeng.analytics.pro.bp
    public com.umeng.analytics.pro.bu j() {
        return h;
    }

    @Override // com.umeng.analytics.pro.bp
    public void k() {
    }

    @Override // com.umeng.analytics.pro.bp
    public com.umeng.analytics.pro.bk l() throws com.umeng.analytics.pro.bq {
        byte bU = u();
        return new com.umeng.analytics.pro.bk("", bU, bU == 0 ? (short) 0 : v());
    }

    @Override // com.umeng.analytics.pro.bp
    public void m() {
    }

    @Override // com.umeng.analytics.pro.bp
    public com.umeng.analytics.pro.bm n() {
        return new com.umeng.analytics.pro.bm(u(), u(), w());
    }

    @Override // com.umeng.analytics.pro.bp
    public void o() {
    }

    @Override // com.umeng.analytics.pro.bp
    public com.umeng.analytics.pro.bl p() {
        return new com.umeng.analytics.pro.bl(u(), w());
    }

    @Override // com.umeng.analytics.pro.bp
    public void q() {
    }

    @Override // com.umeng.analytics.pro.bp
    public com.umeng.analytics.pro.bt r() {
        return new com.umeng.analytics.pro.bt(u(), w());
    }

    @Override // com.umeng.analytics.pro.bp
    public void s() {
    }

    @Override // com.umeng.analytics.pro.bp
    public boolean t() {
        return u() == 1;
    }

    @Override // com.umeng.analytics.pro.bp
    public byte u() throws com.umeng.analytics.pro.bq {
        if (this.f1276g.h() < 1) {
            a(this.m, 0, 1);
            return this.m[0];
        }
        byte b2 = this.f1276g.f()[this.f1276g.g()];
        this.f1276g.a(1);
        return b2;
    }

    @Override // com.umeng.analytics.pro.bp
    public short v() throws com.umeng.analytics.pro.bq {
        byte[] bArrF = this.n;
        int iG = 0;
        if (this.f1276g.h() >= 2) {
            bArrF = this.f1276g.f();
            iG = this.f1276g.g();
            this.f1276g.a(2);
        } else {
            a(this.n, 0, 2);
        }
        return (short) ((bArrF[iG + 1] & 255) | ((bArrF[iG] & 255) << 8));
    }

    @Override // com.umeng.analytics.pro.bp
    public int w() throws com.umeng.analytics.pro.bq {
        byte[] bArrF = this.o;
        int iG = 0;
        if (this.f1276g.h() >= 4) {
            bArrF = this.f1276g.f();
            iG = this.f1276g.g();
            this.f1276g.a(4);
        } else {
            a(this.o, 0, 4);
        }
        return (bArrF[iG + 3] & 255) | ((bArrF[iG] & 255) << 24) | ((bArrF[iG + 1] & 255) << 16) | ((bArrF[iG + 2] & 255) << 8);
    }

    @Override // com.umeng.analytics.pro.bp
    public long x() throws com.umeng.analytics.pro.bq {
        byte[] bArrF = this.p;
        int iG = 0;
        if (this.f1276g.h() >= 8) {
            bArrF = this.f1276g.f();
            iG = this.f1276g.g();
            this.f1276g.a(8);
        } else {
            a(this.p, 0, 8);
        }
        return (bArrF[iG + 7] & 255) | ((bArrF[iG] & 255) << 56) | ((bArrF[iG + 1] & 255) << 48) | ((bArrF[iG + 2] & 255) << 40) | ((bArrF[iG + 3] & 255) << 32) | ((bArrF[iG + 4] & 255) << 24) | ((bArrF[iG + 5] & 255) << 16) | ((bArrF[iG + 6] & 255) << 8);
    }

    @Override // com.umeng.analytics.pro.bp
    public double y() {
        return java.lang.Double.longBitsToDouble(x());
    }

    @Override // com.umeng.analytics.pro.bp
    public java.lang.String z() throws com.umeng.analytics.pro.aw {
        int iW = w();
        if (this.f1276g.h() < iW) {
            return b(iW);
        }
        try {
            java.lang.String str = new java.lang.String(this.f1276g.f(), this.f1276g.g(), iW, com.google.android.exoplayer2.C.UTF8_NAME);
            this.f1276g.a(iW);
            return str;
        } catch (java.io.UnsupportedEncodingException unused) {
            throw new com.umeng.analytics.pro.aw("JVM DOES NOT SUPPORT UTF-8");
        }
    }
}
