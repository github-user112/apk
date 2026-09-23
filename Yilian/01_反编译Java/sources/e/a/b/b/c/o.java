package e.a.b.b.c;

/* loaded from: classes.dex */
public final class o extends e.a.b.b.c.p implements java.lang.Comparable<e.a.b.b.c.o> {
    public final e.a.b.d.c.j b;

    public o(e.a.b.d.c.j jVar, int i) {
        super(i);
        if (jVar == null) {
            throw new java.lang.NullPointerException("field == null");
        }
        this.b = jVar;
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        return this.b.a();
    }

    @Override // e.a.b.b.c.p
    public int b(e.a.b.b.c.m mVar, e.a.b.f.a aVar, int i, int i2) {
        int iM = mVar.i.m(this.b);
        int i3 = iM - i;
        int i4 = this.a;
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            cVar.b(0, java.lang.String.format("  [%x] %s", java.lang.Integer.valueOf(i2), this.b.a()));
            int iI0 = d.s.y.i0(i3);
            java.lang.StringBuilder sbO = e.a.c.a.a.o("    field_idx:    ");
            sbO.append(d.s.y.g0(iM));
            cVar.b(iI0, sbO.toString());
            int iI02 = d.s.y.i0(i4);
            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("    access_flags: ");
            sbO2.append(d.s.y.O(i4, 20703, 2));
            cVar.b(iI02, sbO2.toString());
        }
        cVar.n(i3);
        cVar.n(i4);
        return iM;
    }

    @Override // java.lang.Comparable
    public int compareTo(e.a.b.b.c.o oVar) {
        return this.b.compareTo(oVar.b);
    }

    public boolean equals(java.lang.Object obj) {
        return (obj instanceof e.a.b.b.c.o) && this.b.compareTo(((e.a.b.b.c.o) obj).b) == 0;
    }

    public int hashCode() {
        return this.b.hashCode();
    }

    public java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(100);
        stringBuffer.append(e.a.b.b.c.o.class.getName());
        stringBuffer.append('{');
        stringBuffer.append(d.s.y.e0(this.a));
        stringBuffer.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
        stringBuffer.append(this.b);
        stringBuffer.append('}');
        return stringBuffer.toString();
    }
}
