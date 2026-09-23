package com.umeng.analytics.pro;

/* loaded from: classes.dex */
public class bj extends com.umeng.analytics.pro.bp {

    /* renamed from: d, reason: collision with root package name */
    public static final com.umeng.analytics.pro.bu f1262d = new com.umeng.analytics.pro.bu("");

    /* renamed from: e, reason: collision with root package name */
    public static final com.umeng.analytics.pro.bk f1263e = new com.umeng.analytics.pro.bk("", (byte) 0, 0);

    /* renamed from: f, reason: collision with root package name */
    public static final byte[] f1264f = {0, 0, 1, 3, 7, 0, 4, 0, 5, 0, 6, 8, 12, 11, 10, 9};
    public static final byte h = -126;
    public static final byte i = 1;
    public static final byte j = 31;
    public static final byte k = -32;
    public static final int l = 5;
    public byte[] a;
    public byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public byte[] f1265c;
    public com.umeng.analytics.pro.ao m;
    public short n;
    public com.umeng.analytics.pro.bk o;
    public java.lang.Boolean p;
    public final long q;
    public byte[] r;

    public static class a implements com.umeng.analytics.pro.br {
        public final long a;

        public a() {
            this.a = -1L;
        }

        public a(int i) {
            this.a = i;
        }

        @Override // com.umeng.analytics.pro.br
        public com.umeng.analytics.pro.bp a(com.umeng.analytics.pro.cd cdVar) {
            return new com.umeng.analytics.pro.bj(cdVar, this.a);
        }
    }

    public static class b {
        public static final byte a = 1;
        public static final byte b = 2;

        /* renamed from: c, reason: collision with root package name */
        public static final byte f1266c = 3;

        /* renamed from: d, reason: collision with root package name */
        public static final byte f1267d = 4;

        /* renamed from: e, reason: collision with root package name */
        public static final byte f1268e = 5;

        /* renamed from: f, reason: collision with root package name */
        public static final byte f1269f = 6;

        /* renamed from: g, reason: collision with root package name */
        public static final byte f1270g = 7;
        public static final byte h = 8;
        public static final byte i = 9;
        public static final byte j = 10;
        public static final byte k = 11;
        public static final byte l = 12;
    }

    public bj(com.umeng.analytics.pro.cd cdVar) {
        this(cdVar, -1L);
    }

    public bj(com.umeng.analytics.pro.cd cdVar, long j2) {
        super(cdVar);
        this.m = new com.umeng.analytics.pro.ao(15);
        this.n = (short) 0;
        this.o = null;
        this.p = null;
        this.a = new byte[5];
        this.b = new byte[10];
        this.r = new byte[1];
        this.f1265c = new byte[1];
        this.q = j2;
    }

    private int E() throws com.umeng.analytics.pro.ce {
        int i2 = 0;
        if (this.f1276g.h() >= 5) {
            byte[] bArrF = this.f1276g.f();
            int iG = this.f1276g.g();
            int i3 = 0;
            int i4 = 0;
            while (true) {
                byte b2 = bArrF[iG + i2];
                i3 |= (b2 & com.google.android.exoplayer2.audio.DtsUtil.FIRST_BYTE_BE) << i4;
                if ((b2 & 128) != 128) {
                    this.f1276g.a(i2 + 1);
                    return i3;
                }
                i4 += 7;
                i2++;
            }
        } else {
            int i5 = 0;
            while (true) {
                byte bU = u();
                i2 |= (bU & com.google.android.exoplayer2.audio.DtsUtil.FIRST_BYTE_BE) << i5;
                if ((bU & 128) != 128) {
                    return i2;
                }
                i5 += 7;
            }
        }
    }

    private long F() throws com.umeng.analytics.pro.ce {
        int i2 = 0;
        long j2 = 0;
        if (this.f1276g.h() >= 10) {
            byte[] bArrF = this.f1276g.f();
            int iG = this.f1276g.g();
            long j3 = 0;
            int i3 = 0;
            while (true) {
                j3 |= (r4 & com.google.android.exoplayer2.audio.DtsUtil.FIRST_BYTE_BE) << i3;
                if ((bArrF[iG + i2] & 128) != 128) {
                    this.f1276g.a(i2 + 1);
                    return j3;
                }
                i3 += 7;
                i2++;
            }
        } else {
            while (true) {
                j2 |= (r0 & com.google.android.exoplayer2.audio.DtsUtil.FIRST_BYTE_BE) << i2;
                if ((u() & 128) != 128) {
                    return j2;
                }
                i2 += 7;
            }
        }
    }

    private long a(byte[] bArr) {
        return ((bArr[7] & 255) << 56) | ((bArr[6] & 255) << 48) | ((bArr[5] & 255) << 40) | ((bArr[4] & 255) << 32) | ((bArr[3] & 255) << 24) | ((bArr[2] & 255) << 16) | ((bArr[1] & 255) << 8) | (255 & bArr[0]);
    }

    private void a(long j2, byte[] bArr, int i2) {
        bArr[i2 + 0] = (byte) (j2 & 255);
        bArr[i2 + 1] = (byte) ((j2 >> 8) & 255);
        bArr[i2 + 2] = (byte) ((j2 >> 16) & 255);
        bArr[i2 + 3] = (byte) ((j2 >> 24) & 255);
        bArr[i2 + 4] = (byte) ((j2 >> 32) & 255);
        bArr[i2 + 5] = (byte) ((j2 >> 40) & 255);
        bArr[i2 + 6] = (byte) ((j2 >> 48) & 255);
        bArr[i2 + 7] = (byte) ((j2 >> 56) & 255);
    }

    private void a(com.umeng.analytics.pro.bk bkVar, byte b2) {
        if (b2 == -1) {
            b2 = e(bkVar.b);
        }
        short s = bkVar.f1271c;
        short s2 = this.n;
        if (s <= s2 || s - s2 > 15) {
            b(b2);
            a(bkVar.f1271c);
        } else {
            d(b2 | ((s - s2) << 4));
        }
        this.n = bkVar.f1271c;
    }

    private void a(byte[] bArr, int i2, int i3) {
        b(i3);
        this.f1276g.b(bArr, i2, i3);
    }

    private void b(byte b2) {
        byte[] bArr = this.r;
        bArr[0] = b2;
        this.f1276g.b(bArr);
    }

    private void b(int i2) {
        int i3 = 0;
        while ((i2 & (-128)) != 0) {
            this.a[i3] = (byte) ((i2 & 127) | 128);
            i2 >>>= 7;
            i3++;
        }
        byte[] bArr = this.a;
        bArr[i3] = (byte) i2;
        this.f1276g.b(bArr, 0, i3 + 1);
    }

    private void b(long j2) {
        int i2 = 0;
        while (true) {
            long j3 = (-128) & j2;
            byte[] bArr = this.b;
            int i3 = i2 + 1;
            if (j3 == 0) {
                bArr[i2] = (byte) j2;
                this.f1276g.b(bArr, 0, i3);
                return;
            } else {
                bArr[i2] = (byte) ((127 & j2) | 128);
                j2 >>>= 7;
                i2 = i3;
            }
        }
    }

    private int c(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    private long c(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
    }

    private boolean c(byte b2) {
        int i2 = b2 & com.umeng.analytics.pro.bw.m;
        return i2 == 1 || i2 == 2;
    }

    private byte d(byte b2) throws com.umeng.analytics.pro.bq {
        byte b3 = (byte) (b2 & com.umeng.analytics.pro.bw.m);
        switch (b3) {
            case 0:
                return (byte) 0;
            case 1:
            case 2:
                return (byte) 2;
            case 3:
                return (byte) 3;
            case 4:
                return (byte) 6;
            case 5:
                return (byte) 8;
            case 6:
                return (byte) 10;
            case 7:
                return (byte) 4;
            case 8:
                return (byte) 11;
            case 9:
                return com.umeng.analytics.pro.bw.m;
            case 10:
                return com.umeng.analytics.pro.bw.l;
            case 11:
                return com.umeng.analytics.pro.bw.k;
            case 12:
                return (byte) 12;
            default:
                throw new com.umeng.analytics.pro.bq(e.a.c.a.a.K("don't know what type: ", b3));
        }
    }

    private long d(long j2) {
        return (-(j2 & 1)) ^ (j2 >>> 1);
    }

    private void d(int i2) {
        b((byte) i2);
    }

    private byte e(byte b2) {
        return f1264f[b2];
    }

    private byte[] e(int i2) throws com.umeng.analytics.pro.ce {
        if (i2 == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i2];
        this.f1276g.d(bArr, 0, i2);
        return bArr;
    }

    private void f(int i2) throws com.umeng.analytics.pro.bq {
        if (i2 < 0) {
            throw new com.umeng.analytics.pro.bq(e.a.c.a.a.K("Negative length: ", i2));
        }
        long j2 = this.q;
        if (j2 != -1 && i2 > j2) {
            throw new com.umeng.analytics.pro.bq(e.a.c.a.a.K("Length exceeded max allowed: ", i2));
        }
    }

    private int g(int i2) {
        return (-(i2 & 1)) ^ (i2 >>> 1);
    }

    @Override // com.umeng.analytics.pro.bp
    public java.nio.ByteBuffer A() throws com.umeng.analytics.pro.bq, com.umeng.analytics.pro.ce {
        int iE = E();
        f(iE);
        if (iE == 0) {
            return java.nio.ByteBuffer.wrap(new byte[0]);
        }
        byte[] bArr = new byte[iE];
        this.f1276g.d(bArr, 0, iE);
        return java.nio.ByteBuffer.wrap(bArr);
    }

    @Override // com.umeng.analytics.pro.bp
    public void B() {
        this.m.c();
        this.n = (short) 0;
    }

    @Override // com.umeng.analytics.pro.bp
    public void a() {
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(byte b2) {
        b(b2);
    }

    public void a(byte b2, int i2) {
        if (i2 <= 14) {
            d(e(b2) | (i2 << 4));
        } else {
            d(e(b2) | 240);
            b(i2);
        }
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(double d2) {
        byte[] bArr = {0, 0, 0, 0, 0, 0, 0, 0};
        a(java.lang.Double.doubleToLongBits(d2), bArr, 0);
        this.f1276g.b(bArr);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(int i2) {
        b(c(i2));
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(long j2) {
        b(c(j2));
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(com.umeng.analytics.pro.bk bkVar) {
        if (bkVar.b == 2) {
            this.o = bkVar;
        } else {
            a(bkVar, (byte) -1);
        }
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(com.umeng.analytics.pro.bl blVar) {
        a(blVar.a, blVar.b);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(com.umeng.analytics.pro.bm bmVar) {
        int iE;
        int i2 = bmVar.f1272c;
        if (i2 == 0) {
            iE = 0;
        } else {
            b(i2);
            iE = e(bmVar.b) | (e(bmVar.a) << 4);
        }
        d(iE);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(com.umeng.analytics.pro.bn bnVar) {
        b(h);
        d(((bnVar.b << 5) & (-32)) | 1);
        b(bnVar.f1273c);
        a(bnVar.a);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(com.umeng.analytics.pro.bt btVar) {
        a(btVar.a, btVar.b);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(com.umeng.analytics.pro.bu buVar) {
        this.m.a(this.n);
        this.n = (short) 0;
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(java.lang.String str) {
        try {
            byte[] bytes = str.getBytes(com.google.android.exoplayer2.C.UTF8_NAME);
            a(bytes, 0, bytes.length);
        } catch (java.io.UnsupportedEncodingException unused) {
            throw new com.umeng.analytics.pro.aw("UTF-8 not supported!");
        }
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(java.nio.ByteBuffer byteBuffer) {
        int iLimit = byteBuffer.limit() - byteBuffer.position();
        a(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), iLimit);
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(short s) {
        b(c((int) s));
    }

    @Override // com.umeng.analytics.pro.bp
    public void a(boolean z) {
        com.umeng.analytics.pro.bk bkVar = this.o;
        if (bkVar == null) {
            b(z ? (byte) 1 : (byte) 2);
        } else {
            a(bkVar, z ? (byte) 1 : (byte) 2);
            this.o = null;
        }
    }

    @Override // com.umeng.analytics.pro.bp
    public void b() {
        this.n = this.m.a();
    }

    @Override // com.umeng.analytics.pro.bp
    public void c() {
    }

    @Override // com.umeng.analytics.pro.bp
    public void d() {
        b((byte) 0);
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
    public com.umeng.analytics.pro.bn h() throws com.umeng.analytics.pro.bq, com.umeng.analytics.pro.ce {
        byte bU = u();
        if (bU != -126) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Expected protocol id ");
            sbO.append(java.lang.Integer.toHexString(-126));
            sbO.append(" but got ");
            sbO.append(java.lang.Integer.toHexString(bU));
            throw new com.umeng.analytics.pro.bq(sbO.toString());
        }
        byte bU2 = u();
        byte b2 = (byte) (bU2 & 31);
        if (b2 != 1) {
            throw new com.umeng.analytics.pro.bq(e.a.c.a.a.K("Expected version 1 but got ", b2));
        }
        int iE = E();
        return new com.umeng.analytics.pro.bn(z(), (byte) ((bU2 >> 5) & 3), iE);
    }

    @Override // com.umeng.analytics.pro.bp
    public void i() {
    }

    @Override // com.umeng.analytics.pro.bp
    public com.umeng.analytics.pro.bu j() {
        this.m.a(this.n);
        this.n = (short) 0;
        return f1262d;
    }

    @Override // com.umeng.analytics.pro.bp
    public void k() {
        this.n = this.m.a();
    }

    @Override // com.umeng.analytics.pro.bp
    public com.umeng.analytics.pro.bk l() throws com.umeng.analytics.pro.ce {
        byte bU = u();
        if (bU == 0) {
            return f1263e;
        }
        short s = (short) ((bU & 240) >> 4);
        short sV = s == 0 ? v() : (short) (this.n + s);
        byte b2 = (byte) (bU & com.umeng.analytics.pro.bw.m);
        com.umeng.analytics.pro.bk bkVar = new com.umeng.analytics.pro.bk("", d(b2), sV);
        if (c(bU)) {
            this.p = b2 == 1 ? java.lang.Boolean.TRUE : java.lang.Boolean.FALSE;
        }
        this.n = bkVar.f1271c;
        return bkVar;
    }

    @Override // com.umeng.analytics.pro.bp
    public void m() {
    }

    @Override // com.umeng.analytics.pro.bp
    public com.umeng.analytics.pro.bm n() throws com.umeng.analytics.pro.ce {
        int iE = E();
        byte bU = iE == 0 ? (byte) 0 : u();
        return new com.umeng.analytics.pro.bm(d((byte) (bU >> 4)), d((byte) (bU & com.umeng.analytics.pro.bw.m)), iE);
    }

    @Override // com.umeng.analytics.pro.bp
    public void o() {
    }

    @Override // com.umeng.analytics.pro.bp
    public com.umeng.analytics.pro.bl p() throws com.umeng.analytics.pro.ce {
        byte bU = u();
        int iE = (bU >> 4) & 15;
        if (iE == 15) {
            iE = E();
        }
        return new com.umeng.analytics.pro.bl(d(bU), iE);
    }

    @Override // com.umeng.analytics.pro.bp
    public void q() {
    }

    @Override // com.umeng.analytics.pro.bp
    public com.umeng.analytics.pro.bt r() {
        return new com.umeng.analytics.pro.bt(p());
    }

    @Override // com.umeng.analytics.pro.bp
    public void s() {
    }

    @Override // com.umeng.analytics.pro.bp
    public boolean t() {
        java.lang.Boolean bool = this.p;
        if (bool == null) {
            return u() == 1;
        }
        boolean zBooleanValue = bool.booleanValue();
        this.p = null;
        return zBooleanValue;
    }

    @Override // com.umeng.analytics.pro.bp
    public byte u() throws com.umeng.analytics.pro.ce {
        if (this.f1276g.h() <= 0) {
            this.f1276g.d(this.f1265c, 0, 1);
            return this.f1265c[0];
        }
        byte b2 = this.f1276g.f()[this.f1276g.g()];
        this.f1276g.a(1);
        return b2;
    }

    @Override // com.umeng.analytics.pro.bp
    public short v() {
        return (short) g(E());
    }

    @Override // com.umeng.analytics.pro.bp
    public int w() {
        return g(E());
    }

    @Override // com.umeng.analytics.pro.bp
    public long x() {
        return d(F());
    }

    @Override // com.umeng.analytics.pro.bp
    public double y() throws com.umeng.analytics.pro.ce {
        byte[] bArr = new byte[8];
        this.f1276g.d(bArr, 0, 8);
        return java.lang.Double.longBitsToDouble(a(bArr));
    }

    @Override // com.umeng.analytics.pro.bp
    public java.lang.String z() {
        int iE = E();
        f(iE);
        if (iE == 0) {
            return "";
        }
        try {
            if (this.f1276g.h() < iE) {
                return new java.lang.String(e(iE), com.google.android.exoplayer2.C.UTF8_NAME);
            }
            java.lang.String str = new java.lang.String(this.f1276g.f(), this.f1276g.g(), iE, com.google.android.exoplayer2.C.UTF8_NAME);
            this.f1276g.a(iE);
            return str;
        } catch (java.io.UnsupportedEncodingException unused) {
            throw new com.umeng.analytics.pro.aw("UTF-8 not supported!");
        }
    }
}
