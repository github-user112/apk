package e.a.b.b.c;

/* loaded from: classes.dex */
public final class q extends e.a.b.b.c.p implements java.lang.Comparable<e.a.b.b.c.q> {
    public final e.a.b.d.c.s b;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.b.c.h f2449c;

    public q(e.a.b.d.c.s sVar, int i, e.a.b.b.b.g gVar, e.a.b.d.d.e eVar) {
        super(i);
        if (sVar == null) {
            throw new java.lang.NullPointerException("method == null");
        }
        this.b = sVar;
        this.f2449c = new e.a.b.b.c.h(sVar, gVar, (i & 8) != 0, eVar);
    }

    @Override // e.a.b.f.k
    public final java.lang.String a() {
        return this.b.a();
    }

    @Override // e.a.b.b.c.p
    public int b(e.a.b.b.c.m mVar, e.a.b.f.a aVar, int i, int i2) {
        int iM = mVar.j.m(this.b);
        int i3 = iM - i;
        int i4 = this.a;
        int iH = e.a.b.b.c.h0.h(this.f2449c);
        if ((iH != 0) != ((i4 & 1280) == 0)) {
            throw new java.lang.UnsupportedOperationException("code vs. access_flags mismatch");
        }
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            cVar.b(0, java.lang.String.format("  [%x] %s", java.lang.Integer.valueOf(i2), this.b.a()));
            int iI0 = d.s.y.i0(i3);
            java.lang.StringBuilder sbO = e.a.c.a.a.o("    method_idx:   ");
            sbO.append(d.s.y.g0(iM));
            cVar.b(iI0, sbO.toString());
            int iI02 = d.s.y.i0(i4);
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("    access_flags: ");
            sbO2.append(d.s.y.O(i4, 204287, 3));
            cVar.b(iI02, sbO2.toString());
            e.a.c.a.a.u(iH, e.a.c.a.a.o("    code_off:     "), cVar, d.s.y.i0(iH));
        }
        cVar.n(i3);
        cVar.n(i4);
        cVar.n(iH);
        return iM;
    }

    @Override // java.lang.Comparable
    public int compareTo(e.a.b.b.c.q qVar) {
        return this.b.compareTo(qVar.b);
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof e.a.b.b.c.q) && this.b.compareTo(((e.a.b.b.c.q) obj).b) == 0;
    }

    public java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(100);
        stringBuffer.append(e.a.b.b.c.q.class.getName());
        stringBuffer.append('{');
        stringBuffer.append(d.s.y.e0(this.a));
        stringBuffer.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
        stringBuffer.append(this.b);
        if (this.f2449c != null) {
            stringBuffer.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            stringBuffer.append(this.f2449c);
        }
        stringBuffer.append('}');
        return stringBuffer.toString();
    }
}
