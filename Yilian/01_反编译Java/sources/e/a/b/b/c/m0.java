package e.a.b.b.c;

/* loaded from: classes.dex */
public final class m0 extends e.a.b.b.c.h0 {

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.d.c.v f2444e;

    public m0(e.a.b.d.c.v vVar) {
        super(1, d.s.y.i0(vVar.a.length()) + vVar.b.f2529c + 1);
        this.f2444e = vVar;
    }

    @Override // e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_STRING_DATA_ITEM;
    }

    @Override // e.a.b.b.c.h0
    public int f(e.a.b.b.c.h0 h0Var) {
        return this.f2444e.compareTo(((e.a.b.b.c.m0) h0Var).f2444e);
    }

    @Override // e.a.b.b.c.h0
    public void m(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        e.a.b.d.c.v vVar = this.f2444e;
        e.a.b.f.b bVar = vVar.b;
        int length = vVar.a.length();
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            e.a.c.a.a.u(length, e.a.c.a.a.o("utf16_size: "), cVar, d.s.y.i0(length));
            cVar.b(bVar.f2529c + 1, this.f2444e.f());
        }
        cVar.n(length);
        int i = bVar.f2529c;
        int i2 = cVar.f2530c;
        int i3 = i + i2;
        if (cVar.a) {
            cVar.f(i3);
        } else if (i3 > cVar.b.length) {
            e.a.b.f.c.g();
            throw null;
        }
        byte[] bArr = cVar.b;
        int length2 = bArr.length - i2;
        int i4 = bVar.f2529c;
        if (length2 < i4) {
            throw new java.lang.IndexOutOfBoundsException("(out.length - offset) < size()");
        }
        java.lang.System.arraycopy(bVar.a, bVar.b, bArr, i2, i4);
        cVar.f2530c = i3;
        cVar.j(0);
    }
}
