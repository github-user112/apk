package e.a.b.b.b;

/* loaded from: classes.dex */
public final class p extends e.a.b.b.b.a0 {

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.d.b.m f2375e;

    public p(e.a.b.d.b.q qVar, e.a.b.d.b.m mVar) {
        super(qVar);
        if (mVar == null) {
            throw new java.lang.NullPointerException("locals == null");
        }
        this.f2375e = mVar;
    }

    @Override // e.a.b.b.b.h
    public java.lang.String a() {
        return this.f2375e.toString();
    }

    @Override // e.a.b.b.b.h
    public java.lang.String e(boolean z) {
        int i = this.f2375e.i();
        int length = this.f2375e.b.length;
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer((i * 40) + 100);
        stringBuffer.append("local-snapshot");
        for (int i2 = 0; i2 < length; i2++) {
            e.a.b.d.b.k kVarF = this.f2375e.f(i2);
            if (kVarF != null) {
                stringBuffer.append("\n  ");
                java.lang.StringBuilder sb = new java.lang.StringBuilder();
                sb.append(kVarF.l());
                sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
                throw null;
            }
        }
        return stringBuffer.toString();
    }

    @Override // e.a.b.b.b.h
    public e.a.b.b.b.h g(e.a.b.e.a aVar) {
        e.a.b.d.b.q qVar = this.f2353c;
        e.a.b.d.b.m mVar = this.f2375e;
        int length = mVar.b.length;
        e.a.b.d.b.m mVar2 = new e.a.b.d.b.m(aVar.b);
        for (int i = 0; i < length; i++) {
            e.a.b.d.b.k kVarF = mVar.f(i);
            if (kVarF != null) {
                mVar2.g(aVar.b(kVarF));
            }
        }
        mVar2.a = false;
        if (!mVar2.equals(mVar)) {
            mVar = mVar2;
        }
        return new e.a.b.b.b.p(qVar, mVar);
    }

    @Override // e.a.b.b.b.a0, e.a.b.b.b.h
    public e.a.b.b.b.h i(int i) {
        e.a.b.d.b.q qVar = this.f2353c;
        e.a.b.d.b.m mVar = this.f2375e;
        int length = mVar.b.length;
        e.a.b.d.b.m mVar2 = new e.a.b.d.b.m(length + i);
        for (int i2 = 0; i2 < length; i2++) {
            e.a.b.d.b.k kVar = mVar.b[i2];
            if (kVar != null) {
                mVar2.g(kVar.n(i));
            }
        }
        mVar2.f2492c = mVar.f2492c;
        if (!mVar.a) {
            mVar2.a = false;
        }
        return new e.a.b.b.b.p(qVar, mVar2);
    }

    @Override // e.a.b.b.b.h
    public e.a.b.b.b.h j(e.a.b.d.b.l lVar) {
        return new e.a.b.b.b.p(this.f2353c, this.f2375e);
    }
}
