package e.a.b.b.c;

/* loaded from: classes.dex */
public final class u0 {
    public final e.a.b.b.c.m a;
    public final e.a.b.f.a b;

    public u0(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        if (mVar == null) {
            throw new java.lang.NullPointerException("file == null");
        }
        this.a = mVar;
        this.b = aVar;
    }

    public static void a(e.a.b.b.c.m mVar, e.a.b.d.c.a aVar) {
        if (aVar instanceof e.a.b.d.c.b) {
            if (((e.a.b.d.c.b) aVar) == null) {
                throw null;
            }
            e.a.b.b.c.q0 q0Var = mVar.f2443g;
            throw null;
        }
        if (!(aVar instanceof e.a.b.d.c.c)) {
            mVar.a(aVar);
            return;
        }
        e.a.b.d.c.c.a aVar2 = ((e.a.b.d.c.c) aVar).a;
        int length = aVar2.b.length;
        for (int i = 0; i < length; i++) {
            a(mVar, (e.a.b.d.c.a) aVar2.f(i));
        }
    }

    public static java.lang.String b(e.a.b.d.c.a aVar) {
        if (c(aVar) == 30) {
            return "null";
        }
        return aVar.e() + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE + aVar.a();
    }

    public static int c(e.a.b.d.c.a aVar) {
        if (aVar instanceof e.a.b.d.c.f) {
            return 0;
        }
        if (aVar instanceof e.a.b.d.c.u) {
            return 2;
        }
        if (aVar instanceof e.a.b.d.c.g) {
            return 3;
        }
        if (aVar instanceof e.a.b.d.c.l) {
            return 4;
        }
        if (aVar instanceof e.a.b.d.c.q) {
            return 6;
        }
        if (aVar instanceof e.a.b.d.c.k) {
            return 16;
        }
        if (aVar instanceof e.a.b.d.c.h) {
            return 17;
        }
        if (aVar instanceof e.a.b.d.c.v) {
            return 23;
        }
        if (aVar instanceof e.a.b.d.c.w) {
            return 24;
        }
        if (aVar instanceof e.a.b.d.c.j) {
            return 25;
        }
        if (aVar instanceof e.a.b.d.c.s) {
            return 26;
        }
        if (aVar instanceof e.a.b.d.c.i) {
            return 27;
        }
        if (aVar instanceof e.a.b.d.c.c) {
            return 28;
        }
        if (aVar instanceof e.a.b.d.c.b) {
            return 29;
        }
        if (aVar instanceof e.a.b.d.c.m) {
            return 30;
        }
        if (aVar instanceof e.a.b.d.c.e) {
            return 31;
        }
        throw new java.lang.RuntimeException("Shouldn't happen");
    }

    public void d(e.a.b.d.a.a aVar, boolean z) {
        if (z) {
            ((e.a.b.f.c) this.b).d();
        }
        e.a.b.b.c.o0 o0Var = this.a.f2442f;
        throw null;
    }

    public void e(e.a.b.d.c.c cVar, boolean z) {
        boolean z2 = z && ((e.a.b.f.c) this.b).d();
        e.a.b.d.c.c.a aVar = cVar.a;
        int length = aVar.b.length;
        if (z2) {
            e.a.b.f.a aVar2 = this.b;
            java.lang.StringBuilder sbO = e.a.c.a.a.o("  size: ");
            sbO.append(d.s.y.g0(length));
            ((e.a.b.f.c) aVar2).c(sbO.toString());
        }
        ((e.a.b.f.c) this.b).n(length);
        for (int i = 0; i < length; i++) {
            e.a.b.d.c.a aVar3 = (e.a.b.d.c.a) aVar.f(i);
            if (z2) {
                e.a.b.f.a aVar4 = this.b;
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("  [");
                sbO2.append(java.lang.Integer.toHexString(i));
                sbO2.append("] ");
                sbO2.append(b(aVar3));
                ((e.a.b.f.c) aVar4).c(sbO2.toString());
            }
            f(aVar3);
        }
        if (z2) {
            ((e.a.b.f.c) this.b).e();
        }
    }

    public void f(e.a.b.d.c.a aVar) {
        long j;
        int iM;
        e.a.b.b.c.t tVar;
        e.a.b.d.c.j jVar;
        int iC = c(aVar);
        if (iC != 0 && iC != 6 && iC != 2) {
            if (iC == 3) {
                d.s.y.k0(this.b, iC, ((e.a.b.d.c.p) aVar).h());
                return;
            }
            if (iC != 4) {
                if (iC == 16) {
                    j = ((e.a.b.d.c.k) aVar).a << 32;
                } else {
                    if (iC != 17) {
                        switch (iC) {
                            case 23:
                                iM = this.a.f2442f.m((e.a.b.d.c.v) aVar);
                                d.s.y.k0(this.b, iC, iM);
                                return;
                            case 24:
                                iM = this.a.f2443g.m((e.a.b.d.c.w) aVar);
                                d.s.y.k0(this.b, iC, iM);
                                return;
                            case 25:
                                tVar = this.a.i;
                                jVar = (e.a.b.d.c.j) aVar;
                                iM = tVar.m(jVar);
                                d.s.y.k0(this.b, iC, iM);
                                return;
                            case 26:
                                iM = this.a.j.m((e.a.b.d.c.s) aVar);
                                d.s.y.k0(this.b, iC, iM);
                                return;
                            case 27:
                                e.a.b.d.c.i iVar = (e.a.b.d.c.i) aVar;
                                if (iVar.f2512c == null) {
                                    iVar.f2512c = new e.a.b.d.c.j(iVar.a, iVar.b);
                                }
                                jVar = iVar.f2512c;
                                tVar = this.a.i;
                                iM = tVar.m(jVar);
                                d.s.y.k0(this.b, iC, iM);
                                return;
                            case 28:
                                ((e.a.b.f.c) this.b).j(iC);
                                e((e.a.b.d.c.c) aVar, false);
                                return;
                            case 29:
                                ((e.a.b.f.c) this.b).j(iC);
                                d(null, false);
                                throw null;
                            case 30:
                                ((e.a.b.f.c) this.b).j(iC);
                                return;
                            case 31:
                                ((e.a.b.f.c) this.b).j((((e.a.b.d.c.e) aVar).a << 5) | iC);
                                return;
                            default:
                                throw new java.lang.RuntimeException("Shouldn't happen");
                        }
                    }
                    j = ((e.a.b.d.c.h) aVar).a;
                }
                d.s.y.j0(this.b, iC, j);
                return;
            }
        }
        long jH = ((e.a.b.d.c.p) aVar).h();
        e.a.b.f.a aVar2 = this.b;
        int iNumberOfLeadingZeros = ((65 - java.lang.Long.numberOfLeadingZeros((jH >> 63) ^ jH)) + 7) >> 3;
        e.a.b.f.c cVar = (e.a.b.f.c) aVar2;
        cVar.j(iC | ((iNumberOfLeadingZeros - 1) << 5));
        while (iNumberOfLeadingZeros > 0) {
            cVar.j((byte) jH);
            jH >>= 8;
            iNumberOfLeadingZeros--;
        }
    }
}
