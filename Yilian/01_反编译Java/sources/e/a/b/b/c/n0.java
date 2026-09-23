package e.a.b.b.c;

/* loaded from: classes.dex */
public final class n0 extends e.a.b.b.c.x implements java.lang.Comparable {
    public final e.a.b.d.c.v b;

    /* renamed from: c, reason: collision with root package name */
    public e.a.b.b.c.m0 f2447c;

    public n0(e.a.b.d.c.v vVar) {
        if (vVar == null) {
            throw new java.lang.NullPointerException("value == null");
        }
        this.b = vVar;
        this.f2447c = null;
    }

    @Override // e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
        if (this.f2447c == null) {
            e.a.b.b.c.g0 g0Var = mVar.f2441e;
            e.a.b.b.c.m0 m0Var = new e.a.b.b.c.m0(this.b);
            this.f2447c = m0Var;
            g0Var.l(m0Var);
        }
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_STRING_ID_ITEM;
    }

    @Override // e.a.b.b.c.y
    public int c() {
        return 4;
    }

    @Override // java.lang.Comparable
    public int compareTo(java.lang.Object obj) {
        return this.b.compareTo(((e.a.b.b.c.n0) obj).b);
    }

    @Override // e.a.b.b.c.y
    public void d(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        java.lang.String str;
        int iG = this.f2447c.g();
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append(f());
            sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            java.lang.String strA = this.b.a();
            if (strA.length() <= 98) {
                str = "";
            } else {
                strA = strA.substring(0, 95);
                str = "...";
            }
            sb.append('\"' + strA + str + '\"');
            cVar.b(0, sb.toString());
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append("  string_data_off: ");
            e.a.c.a.a.u(iG, sb2, cVar, 4);
        }
        cVar.k(iG);
    }

    public boolean equals(java.lang.Object obj) {
        if (obj instanceof e.a.b.b.c.n0) {
            return this.b.equals(((e.a.b.b.c.n0) obj).b);
        }
        return false;
    }

    public int hashCode() {
        return this.b.hashCode();
    }
}
