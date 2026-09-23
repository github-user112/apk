package e.a.b.b.b;

/* loaded from: classes.dex */
public final class m extends e.a.b.b.b.h {

    /* renamed from: e, reason: collision with root package name */
    public e.a.b.b.b.x[] f2364e;

    public m(e.a.b.d.b.q qVar, e.a.b.d.b.l lVar) {
        super(e.a.b.b.b.k.b, qVar, lVar);
        if (lVar.b.length == 0) {
            throw new java.lang.IllegalArgumentException("registers.size() == 0");
        }
        this.f2364e = null;
    }

    @Override // e.a.b.b.b.h
    public java.lang.String a() {
        return null;
    }

    @Override // e.a.b.b.b.h
    public int b() {
        l();
        int iB = 0;
        for (e.a.b.b.b.x xVar : this.f2364e) {
            iB += xVar.b();
        }
        return iB;
    }

    @Override // e.a.b.b.b.h
    public java.lang.String e(boolean z) {
        e.a.b.d.b.l lVar = this.f2354d;
        int length = lVar.b.length;
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(100);
        int iH = 0;
        for (int i = 0; i < length; i++) {
            e.a.b.d.b.k kVarI = lVar.i(i);
            e.a.b.b.b.x xVarF = e.a.b.b.b.h.f(e.a.b.d.b.q.f2505d, e.a.b.d.b.k.i(iH, kVarI.getType()), kVarI);
            if (i != 0) {
                stringBuffer.append('\n');
            }
            stringBuffer.append(xVarF.e(z));
            iH += kVarI.h();
        }
        return stringBuffer.toString();
    }

    @Override // e.a.b.b.b.h
    public final e.a.b.b.b.h h(e.a.b.b.b.j jVar) {
        throw new java.lang.RuntimeException("unsupported");
    }

    @Override // e.a.b.b.b.h
    public final e.a.b.b.b.h i(int i) {
        return new e.a.b.b.b.m(this.f2353c, this.f2354d.n(i));
    }

    @Override // e.a.b.b.b.h
    public e.a.b.b.b.h j(e.a.b.d.b.l lVar) {
        return new e.a.b.b.b.m(this.f2353c, lVar);
    }

    @Override // e.a.b.b.b.h
    public void k(e.a.b.f.a aVar) {
        l();
        for (e.a.b.b.b.x xVar : this.f2364e) {
            xVar.b.f2357d.w(aVar, xVar);
        }
    }

    public final void l() {
        if (this.f2364e != null) {
            return;
        }
        e.a.b.d.b.l lVar = this.f2354d;
        int length = lVar.b.length;
        this.f2364e = new e.a.b.b.b.x[length];
        int iH = 0;
        for (int i = 0; i < length; i++) {
            e.a.b.d.b.k kVarI = lVar.i(i);
            this.f2364e[i] = e.a.b.b.b.h.f(e.a.b.d.b.q.f2505d, e.a.b.d.b.k.i(iH, kVarI.getType()), kVarI);
            iH += kVarI.h();
        }
    }
}
