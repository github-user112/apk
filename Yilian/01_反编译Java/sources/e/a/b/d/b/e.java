package e.a.b.d.b;

/* loaded from: classes.dex */
public abstract class e implements e.a.b.f.k {
    public final e.a.b.d.b.n a;
    public final e.a.b.d.b.q b;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.d.b.k f2485c;

    /* renamed from: d, reason: collision with root package name */
    public final e.a.b.d.b.l f2486d;

    public static class a implements e.a.b.d.b.e.b {
        @Override // e.a.b.d.b.e.b
        public void a(e.a.b.d.b.j jVar) {
        }

        @Override // e.a.b.d.b.e.b
        public void c(e.a.b.d.b.s sVar) {
        }

        @Override // e.a.b.d.b.e.b
        public void d(e.a.b.d.b.r rVar) {
        }
    }

    public interface b {
        void a(e.a.b.d.b.j jVar);

        void b(e.a.b.d.b.i iVar);

        void c(e.a.b.d.b.s sVar);

        void d(e.a.b.d.b.r rVar);
    }

    public e(e.a.b.d.b.n nVar, e.a.b.d.b.q qVar, e.a.b.d.b.k kVar, e.a.b.d.b.l lVar) {
        if (nVar == null) {
            throw new java.lang.NullPointerException("opcode == null");
        }
        if (qVar == null) {
            throw new java.lang.NullPointerException("position == null");
        }
        if (lVar == null) {
            throw new java.lang.NullPointerException("sources == null");
        }
        this.a = nVar;
        this.b = qVar;
        this.f2485c = kVar;
        this.f2486d = lVar;
    }

    @Override // e.a.b.f.k
    public java.lang.String a() {
        java.lang.String strE = e();
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(80);
        stringBuffer.append(this.b);
        stringBuffer.append(": ");
        e.a.b.d.b.n nVar = this.a;
        java.lang.String string = nVar.f2497g;
        if (string == null) {
            string = nVar.toString();
        }
        stringBuffer.append(string);
        if (strE != null) {
            stringBuffer.append("(");
            stringBuffer.append(strE);
            stringBuffer.append(")");
        }
        if (this.f2485c == null) {
            stringBuffer.append(" .");
        } else {
            stringBuffer.append(" ");
            stringBuffer.append(this.f2485c.a());
        }
        stringBuffer.append(" <-");
        int length = this.f2486d.b.length;
        if (length == 0) {
            stringBuffer.append(" .");
        } else {
            for (int i = 0; i < length; i++) {
                stringBuffer.append(" ");
                stringBuffer.append(this.f2486d.i(i).a());
            }
        }
        return stringBuffer.toString();
    }

    public abstract void b(e.a.b.d.b.e.b bVar);

    public abstract e.a.b.d.d.e d();

    public java.lang.String e() {
        return null;
    }

    public final boolean equals(java.lang.Object obj) {
        return this == obj;
    }

    public final int hashCode() {
        return java.lang.System.identityHashCode(this);
    }

    public java.lang.String toString() {
        java.lang.String strE = e();
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(80);
        stringBuffer.append("Insn{");
        stringBuffer.append(this.b);
        stringBuffer.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
        stringBuffer.append(this.a);
        if (strE != null) {
            stringBuffer.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
            stringBuffer.append(strE);
        }
        stringBuffer.append(" :: ");
        e.a.b.d.b.k kVar = this.f2485c;
        if (kVar != null) {
            stringBuffer.append(kVar);
            stringBuffer.append(" <- ");
        }
        stringBuffer.append(this.f2486d);
        stringBuffer.append('}');
        return stringBuffer.toString();
    }
}
