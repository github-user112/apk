package e.a.b.b.b;

/* loaded from: classes.dex */
public abstract class l extends e.a.b.b.b.h {
    public l(e.a.b.b.b.j jVar, e.a.b.d.b.q qVar, e.a.b.d.b.l lVar) {
        super(jVar, qVar, lVar);
    }

    @Override // e.a.b.b.b.h
    public final int b() {
        return this.b.f2357d.d();
    }

    @Override // e.a.b.b.b.h
    public final java.lang.String e(boolean z) {
        e.a.b.b.b.j jVar = this.b;
        e.a.b.b.b.n nVar = jVar.f2357d;
        if (nVar == null) {
            throw null;
        }
        java.lang.String strA = jVar.a();
        java.lang.String strI = nVar.i(this);
        java.lang.String strJ = nVar.j(this, z);
        java.lang.StringBuilder sb = new java.lang.StringBuilder(100);
        sb.append(strA);
        if (strI.length() != 0) {
            sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            sb.append(strI);
        }
        if (strJ.length() != 0) {
            sb.append(" // ");
            sb.append(strJ);
        }
        return sb.toString();
    }

    @Override // e.a.b.b.b.h
    public final e.a.b.b.b.h i(int i) {
        return j(this.f2354d.n(i));
    }

    @Override // e.a.b.b.b.h
    public final void k(e.a.b.f.a aVar) {
        this.b.f2357d.w(aVar, this);
    }
}
