package e.a.b.b.c;

/* loaded from: classes.dex */
public final class m {
    public e.a.b.b.a a;
    public final e.a.b.b.c.g0 b;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.b.c.g0 f2439c;

    /* renamed from: d, reason: collision with root package name */
    public final e.a.b.b.c.g0 f2440d;

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.b.c.g0 f2441e;

    /* renamed from: f, reason: collision with root package name */
    public final e.a.b.b.c.o0 f2442f;

    /* renamed from: g, reason: collision with root package name */
    public final e.a.b.b.c.q0 f2443g;
    public final e.a.b.b.c.k0 h;
    public final e.a.b.b.c.t i;
    public final e.a.b.b.c.f0 j;
    public final e.a.b.b.c.g k;
    public final e.a.b.b.c.g0 l;
    public final e.a.b.b.c.g0 m;
    public final e.a.b.b.c.v n;
    public final e.a.b.b.c.l0[] o;
    public int p;
    public int q;

    public m(e.a.b.b.a aVar) {
        e.a.b.b.c.g0.b bVar = e.a.b.b.c.g0.b.TYPE;
        e.a.b.b.c.g0.b bVar2 = e.a.b.b.c.g0.b.NONE;
        this.a = aVar;
        this.n = new e.a.b.b.c.v(this);
        this.f2439c = new e.a.b.b.c.g0(null, this, 4, bVar2);
        this.b = new e.a.b.b.c.g0("word_data", this, 4, bVar);
        this.f2441e = new e.a.b.b.c.g0("string_data", this, 1, e.a.b.b.c.g0.b.INSTANCE);
        this.l = new e.a.b.b.c.g0(null, this, 1, bVar2);
        this.m = new e.a.b.b.c.g0("byte_data", this, 1, bVar);
        this.f2442f = new e.a.b.b.c.o0(this);
        this.f2443g = new e.a.b.b.c.q0(this);
        this.h = new e.a.b.b.c.k0(this);
        this.i = new e.a.b.b.c.t(this);
        this.j = new e.a.b.b.c.f0(this);
        this.k = new e.a.b.b.c.g(this);
        e.a.b.b.c.g0 g0Var = new e.a.b.b.c.g0("map", this, 4, bVar2);
        this.f2440d = g0Var;
        this.o = new e.a.b.b.c.l0[]{this.n, this.f2442f, this.f2443g, this.h, this.i, this.j, this.k, this.b, this.f2439c, this.f2441e, this.m, this.l, g0Var};
        this.p = -1;
        this.q = 79;
    }

    public void a(e.a.b.d.c.a aVar) {
        e.a.b.b.c.t tVar;
        e.a.b.d.c.j jVar;
        if (aVar instanceof e.a.b.d.c.v) {
            this.f2442f.n((e.a.b.d.c.v) aVar);
            return;
        }
        if (aVar instanceof e.a.b.d.c.w) {
            this.f2443g.o((e.a.b.d.c.w) aVar);
            return;
        }
        if (aVar instanceof e.a.b.d.c.d) {
            this.j.n((e.a.b.d.c.d) aVar);
            return;
        }
        if (aVar instanceof e.a.b.d.c.j) {
            tVar = this.i;
            jVar = (e.a.b.d.c.j) aVar;
        } else if (!(aVar instanceof e.a.b.d.c.i)) {
            if (aVar == null) {
                throw new java.lang.NullPointerException("cst == null");
            }
            return;
        } else {
            tVar = this.i;
            e.a.b.d.c.i iVar = (e.a.b.d.c.i) aVar;
            if (iVar.f2512c == null) {
                iVar.f2512c = new e.a.b.d.c.j(iVar.a, iVar.b);
            }
            jVar = iVar.f2512c;
        }
        tVar.n(jVar);
    }

    public byte[] b(java.io.Writer writer, boolean z) throws java.security.NoSuchAlgorithmException, java.security.DigestException {
        this.k.e();
        this.l.e();
        this.b.e();
        this.m.e();
        this.j.e();
        this.i.e();
        this.h.e();
        this.f2439c.e();
        this.f2443g.e();
        this.f2442f.e();
        this.f2441e.e();
        this.n.e();
        int length = this.o.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            e.a.b.b.c.l0[] l0VarArr = this.o;
            e.a.b.b.c.l0 l0Var = l0VarArr[i2];
            if (l0Var == null) {
                throw null;
            }
            if (i < 0) {
                throw new java.lang.IllegalArgumentException("fileOffset < 0");
            }
            if (l0Var.f2437d >= 0) {
                throw new java.lang.RuntimeException("fileOffset already set");
            }
            int i3 = l0Var.f2436c - 1;
            int i4 = (i3 ^ (-1)) & (i + i3);
            l0Var.f2437d = i4;
            if (i4 < i) {
                throw new java.lang.RuntimeException(e.a.c.a.a.K("bogus placement for section ", i2));
            }
            try {
                if (l0Var == this.f2440d) {
                    e.a.b.b.c.a0.n(l0VarArr, this.f2440d);
                    this.f2440d.e();
                }
                if (l0Var instanceof e.a.b.b.c.g0) {
                    ((e.a.b.b.c.g0) l0Var).n();
                }
                i = l0Var.i() + i4;
            } catch (java.lang.RuntimeException e2) {
                throw e.a.a.c.b.b(e2, "...while writing section " + i2);
            }
        }
        this.p = i;
        byte[] bArr = new byte[i];
        e.a.b.f.c cVar = new e.a.b.f.c(bArr, false);
        for (int i5 = 0; i5 < length; i5++) {
            try {
                e.a.b.b.c.l0 l0Var2 = this.o[i5];
                int iC = l0Var2.c() - cVar.f2530c;
                if (iC < 0) {
                    throw new e.a.a.c.b("excess write of " + (-iC), null);
                }
                cVar.o(l0Var2.c() - cVar.f2530c);
                l0Var2.j(cVar);
            } catch (java.lang.RuntimeException e3) {
                e.a.a.c.b bVar = e3 instanceof e.a.a.c.b ? (e.a.a.c.b) e3 : new e.a.a.c.b(null, e3);
                bVar.a("...while writing section " + i5);
                throw bVar;
            }
        }
        if (cVar.f2530c != this.p) {
            throw new java.lang.RuntimeException("foreshortened write");
        }
        try {
            java.security.MessageDigest messageDigest = java.security.MessageDigest.getInstance("SHA-1");
            messageDigest.update(bArr, 32, i - 32);
            try {
                int iDigest = messageDigest.digest(bArr, 12, 20);
                if (iDigest != 20) {
                    throw new java.lang.RuntimeException("unexpected digest write: " + iDigest + " bytes");
                }
                java.util.zip.Adler32 adler32 = new java.util.zip.Adler32();
                adler32.update(bArr, 12, i - 12);
                int value = (int) adler32.getValue();
                bArr[8] = (byte) value;
                bArr[9] = (byte) (value >> 8);
                bArr[10] = (byte) (value >> 16);
                bArr[11] = (byte) (value >> 24);
                return cVar.b;
            } catch (java.security.DigestException e4) {
                throw new java.lang.RuntimeException(e4);
            }
        } catch (java.security.NoSuchAlgorithmException e5) {
            throw new java.lang.RuntimeException(e5);
        }
    }
}
