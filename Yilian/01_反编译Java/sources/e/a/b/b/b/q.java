package e.a.b.b.b;

/* loaded from: classes.dex */
public final class q extends e.a.b.b.b.a0 {

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.d.b.k f2376e;

    public q(e.a.b.d.b.q qVar, e.a.b.d.b.k kVar) {
        super(qVar);
        if (kVar == null) {
            throw new java.lang.NullPointerException("local == null");
        }
        this.f2376e = kVar;
    }

    @Override // e.a.b.b.b.h
    public java.lang.String a() {
        return this.f2376e.toString();
    }

    @Override // e.a.b.b.b.h
    public java.lang.String e(boolean z) {
        new java.lang.StringBuilder().append("local-start ");
        e.a.b.d.b.k kVar = this.f2376e;
        java.lang.StringBuilder sb = new java.lang.StringBuilder();
        sb.append(kVar.l());
        sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
        throw null;
    }

    @Override // e.a.b.b.b.h
    public e.a.b.b.b.h g(e.a.b.e.a aVar) {
        return new e.a.b.b.b.q(this.f2353c, aVar.b(this.f2376e));
    }

    @Override // e.a.b.b.b.a0, e.a.b.b.b.h
    public e.a.b.b.b.h i(int i) {
        return new e.a.b.b.b.q(this.f2353c, this.f2376e.n(i));
    }

    @Override // e.a.b.b.b.h
    public e.a.b.b.b.h j(e.a.b.d.b.l lVar) {
        return new e.a.b.b.b.q(this.f2353c, this.f2376e);
    }
}
