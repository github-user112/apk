package e.a.b.b.c;

/* loaded from: classes.dex */
public final class a0 extends e.a.b.b.c.h0 {

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.b.c.z f2395e;

    /* renamed from: f, reason: collision with root package name */
    public final e.a.b.b.c.l0 f2396f;

    /* renamed from: g, reason: collision with root package name */
    public final e.a.b.b.c.y f2397g;
    public final int h;

    public a0(e.a.b.b.c.l0 l0Var) {
        super(4, 12);
        this.f2395e = e.a.b.b.c.z.TYPE_MAP_LIST;
        this.f2396f = l0Var;
        this.f2397g = null;
        this.h = 1;
    }

    public a0(e.a.b.b.c.z zVar, e.a.b.b.c.l0 l0Var, e.a.b.b.c.y yVar, e.a.b.b.c.y yVar2, int i) {
        super(4, 12);
        if (zVar == null) {
            throw new java.lang.NullPointerException("type == null");
        }
        if (yVar == null) {
            throw new java.lang.NullPointerException("firstItem == null");
        }
        if (yVar2 == null) {
            throw new java.lang.NullPointerException("lastItem == null");
        }
        if (i <= 0) {
            throw new java.lang.IllegalArgumentException("itemCount <= 0");
        }
        this.f2395e = zVar;
        this.f2396f = l0Var;
        this.f2397g = yVar;
        this.h = i;
    }

    public static void n(e.a.b.b.c.l0[] l0VarArr, e.a.b.b.c.g0 g0Var) {
        e.a.b.b.c.a0 a0Var;
        if (l0VarArr == null) {
            throw new java.lang.NullPointerException("sections == null");
        }
        if (g0Var.f2416f.size() != 0) {
            throw new java.lang.IllegalArgumentException("mapSection.items().size() != 0");
        }
        java.util.ArrayList arrayList = new java.util.ArrayList(50);
        for (e.a.b.b.c.l0 l0Var : l0VarArr) {
            e.a.b.b.c.z zVar = null;
            e.a.b.b.c.y yVar = null;
            e.a.b.b.c.y yVar2 = null;
            int i = 0;
            for (e.a.b.b.c.y yVar3 : l0Var.d()) {
                e.a.b.b.c.z zVarB = yVar3.b();
                if (zVarB != zVar) {
                    if (i != 0) {
                        arrayList.add(new e.a.b.b.c.a0(zVar, l0Var, yVar, yVar2, i));
                    }
                    yVar = yVar3;
                    zVar = zVarB;
                    i = 0;
                }
                i++;
                yVar2 = yVar3;
            }
            if (i != 0) {
                a0Var = new e.a.b.b.c.a0(zVar, l0Var, yVar, yVar2, i);
            } else if (l0Var == g0Var) {
                a0Var = new e.a.b.b.c.a0(g0Var);
            }
            arrayList.add(a0Var);
        }
        g0Var.l(new e.a.b.b.c.t0(e.a.b.b.c.z.TYPE_MAP_LIST, arrayList));
    }

    @Override // e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_MAP_ITEM;
    }

    @Override // e.a.b.b.c.h0
    public void m(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        int i = this.f2395e.a;
        e.a.b.b.c.y yVar = this.f2397g;
        int iC = yVar == null ? this.f2396f.c() : this.f2396f.a(yVar);
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            cVar.b(0, i() + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE + this.f2395e.b + " map");
            cVar.b(2, "  type:   " + d.s.y.e0(i) + " // " + this.f2395e.toString());
            cVar.b(2, "  unused: 0");
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("  size:   ");
            e.a.c.a.a.u(iC, e.a.c.a.a.n(this.h, sb, cVar, 4, "  offset: "), cVar, 4);
        }
        cVar.l(i);
        cVar.l(0);
        cVar.k(this.h);
        cVar.k(iC);
    }

    public java.lang.String toString() {
        java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(100);
        stringBuffer.append(e.a.b.b.c.a0.class.getName());
        stringBuffer.append('{');
        stringBuffer.append(this.f2396f.toString());
        stringBuffer.append(com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE);
        stringBuffer.append(this.f2395e.f2460c);
        stringBuffer.append('}');
        return stringBuffer.toString();
    }
}
