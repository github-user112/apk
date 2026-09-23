package e.a.b.b.c;

/* loaded from: classes.dex */
public final class h extends e.a.b.b.c.h0 {

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.d.c.s f2420e;

    /* renamed from: f, reason: collision with root package name */
    public final e.a.b.b.b.g f2421f;

    /* renamed from: g, reason: collision with root package name */
    public e.a.b.b.c.d f2422g;
    public final boolean h;
    public final e.a.b.d.d.e i;
    public e.a.b.b.c.l j;

    public class a {
        public final /* synthetic */ e.a.b.b.c.m a;

        public a(e.a.b.b.c.h hVar, e.a.b.b.c.m mVar) {
            this.a = mVar;
        }

        public int a(e.a.b.d.c.a aVar) {
            e.a.b.b.c.m mVar = this.a;
            e.a.b.b.c.s sVar = null;
            if (mVar == null) {
                throw null;
            }
            if (aVar instanceof e.a.b.d.c.v) {
                e.a.b.b.c.o0 o0Var = mVar.f2442f;
                if (o0Var == null) {
                    throw null;
                }
                if (aVar == null) {
                    throw new java.lang.NullPointerException("cst == null");
                }
                o0Var.g();
                sVar = o0Var.f2448f.get((e.a.b.d.c.v) aVar);
                if (sVar == null) {
                    throw new java.lang.IllegalArgumentException("not found");
                }
            } else if (aVar instanceof e.a.b.d.c.w) {
                e.a.b.b.c.q0 q0Var = mVar.f2443g;
                if (q0Var == null) {
                    throw null;
                }
                if (aVar == null) {
                    throw new java.lang.NullPointerException("cst == null");
                }
                q0Var.g();
                sVar = q0Var.f2450f.get(((e.a.b.d.c.w) aVar).a);
                if (sVar == null) {
                    throw new java.lang.IllegalArgumentException("not found: " + aVar);
                }
            } else if (aVar instanceof e.a.b.d.c.d) {
                e.a.b.b.c.f0 f0Var = mVar.j;
                if (f0Var == null) {
                    throw null;
                }
                if (aVar == null) {
                    throw new java.lang.NullPointerException("cst == null");
                }
                f0Var.g();
                sVar = f0Var.f2413f.get((e.a.b.d.c.d) aVar);
                if (sVar == null) {
                    throw new java.lang.IllegalArgumentException("not found");
                }
            } else if (aVar instanceof e.a.b.d.c.j) {
                e.a.b.b.c.t tVar = mVar.i;
                if (tVar == null) {
                    throw null;
                }
                if (aVar == null) {
                    throw new java.lang.NullPointerException("cst == null");
                }
                tVar.g();
                sVar = tVar.f2452f.get((e.a.b.d.c.j) aVar);
                if (sVar == null) {
                    throw new java.lang.IllegalArgumentException("not found");
                }
            }
            if (sVar == null) {
                return -1;
            }
            return sVar.e();
        }
    }

    public h(e.a.b.d.c.s sVar, e.a.b.b.b.g gVar, boolean z, e.a.b.d.d.e eVar) {
        super(4, -1);
        if (eVar == null) {
            throw new java.lang.NullPointerException("throwsList == null");
        }
        this.f2420e = sVar;
        this.f2421f = gVar;
        this.h = z;
        this.i = eVar;
        this.f2422g = null;
        this.j = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
        e.a.b.b.c.g0 g0Var = mVar.m;
        e.a.b.b.c.q0 q0Var = mVar.f2443g;
        e.a.b.b.b.g gVar = this.f2421f;
        boolean z = true;
        if ((gVar.a != 1 && gVar.b.f2378d) || this.f2421f.b.f2379e) {
            e.a.b.b.c.l lVar = new e.a.b.b.c.l(this.f2421f, this.h, this.f2420e);
            this.j = lVar;
            g0Var.l(lVar);
        }
        e.a.b.d.b.b bVar = ((e.a.b.b.b.y) this.f2421f.f2348c).a.a;
        int length = bVar.b.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            } else if (((e.a.b.f.d) bVar.k(i).b().d()).b.length != 0) {
                break;
            } else {
                i++;
            }
        }
        if (z) {
            e.a.b.b.b.y yVar = (e.a.b.b.b.y) this.f2421f.f2348c;
            if (yVar == null) {
                throw null;
            }
            java.util.HashSet hashSet = new java.util.HashSet(20);
            e.a.b.d.b.b bVar2 = yVar.a.a;
            int length2 = bVar2.b.length;
            for (int i2 = 0; i2 < length2; i2++) {
                e.a.b.d.d.e eVarD = bVar2.k(i2).b().d();
                int length3 = ((e.a.b.f.d) eVarD).b.length;
                for (int i3 = 0; i3 < length3; i3++) {
                    hashSet.add(eVarD.b(i3));
                }
            }
            java.util.Iterator it = hashSet.iterator();
            while (it.hasNext()) {
                q0Var.p((e.a.b.d.d.c) it.next());
            }
            this.f2422g = new e.a.b.b.c.d(this.f2421f);
        }
        e.a.b.b.b.s sVar = this.f2421f.b;
        if (sVar == null) {
            throw null;
        }
        java.util.HashSet hashSet2 = new java.util.HashSet(20);
        java.util.Iterator<e.a.b.b.b.h> it2 = sVar.f2377c.iterator();
        while (it2.hasNext()) {
            e.a.b.b.b.h next = it2.next();
            if (next instanceof e.a.b.b.b.f) {
                hashSet2.add(((e.a.b.b.b.f) next).f2345e);
            } else if (next instanceof e.a.b.b.b.p) {
                e.a.b.d.b.m mVar2 = ((e.a.b.b.b.p) next).f2375e;
                int i4 = mVar2.i();
                for (int i5 = 0; i5 < i4; i5++) {
                    if (mVar2.f(i5) != null) {
                        throw null;
                    }
                }
            } else if ((next instanceof e.a.b.b.b.q) && ((e.a.b.b.b.q) next).f2376e != null) {
                throw null;
            }
        }
        java.util.Iterator it3 = hashSet2.iterator();
        while (it3.hasNext()) {
            mVar.a((e.a.b.d.c.a) it3.next());
        }
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_CODE_ITEM;
    }

    @Override // e.a.b.b.c.h0
    public void k(e.a.b.b.c.l0 l0Var, int i) {
        int iA;
        e.a.b.b.c.m mVar = l0Var.b;
        e.a.b.b.b.g gVar = this.f2421f;
        e.a.b.b.c.h.a aVar = new e.a.b.b.c.h.a(this, mVar);
        java.util.Iterator<e.a.b.b.b.h> it = gVar.b.f2377c.iterator();
        while (it.hasNext()) {
            e.a.b.b.b.h next = it.next();
            if (next instanceof e.a.b.b.b.f) {
                e.a.b.b.b.f fVar = (e.a.b.b.b.f) next;
                e.a.b.d.c.a aVar2 = fVar.f2345e;
                int iA2 = aVar.a(aVar2);
                if (iA2 >= 0) {
                    fVar.n(iA2);
                }
                if ((aVar2 instanceof e.a.b.d.c.r) && (iA = aVar.a(((e.a.b.d.c.r) aVar2).a)) >= 0) {
                    fVar.m(iA);
                }
            }
        }
        e.a.b.b.c.d dVar = this.f2422g;
        int length = 0;
        if (dVar != null) {
            dVar.b();
            e.a.b.b.c.q0 q0Var = mVar.f2443g;
            int length2 = dVar.b.b.length;
            dVar.f2404e = new java.util.TreeMap<>();
            for (int i2 = 0; i2 < length2; i2++) {
                dVar.f2404e.put(dVar.b.i(i2).f2343c, null);
            }
            if (dVar.f2404e.size() > 65535) {
                throw new java.lang.UnsupportedOperationException("too many catch handlers");
            }
            e.a.b.f.c cVar = new e.a.b.f.c();
            dVar.f2403d = cVar.n(dVar.f2404e.size());
            for (java.util.Map.Entry<e.a.b.b.b.c, java.lang.Integer> entry : dVar.f2404e.entrySet()) {
                e.a.b.b.b.c key = entry.getKey();
                int length3 = key.b.length;
                boolean zI = key.i();
                entry.setValue(java.lang.Integer.valueOf(cVar.f2530c));
                if (zI) {
                    length3--;
                    cVar.m(-length3);
                } else {
                    cVar.m(length3);
                }
                for (int i3 = 0; i3 < length3; i3++) {
                    e.a.b.b.b.c.a aVarK = key.k(i3);
                    cVar.n(q0Var.m(aVarK.a));
                    cVar.n(aVarK.b);
                }
                if (zI) {
                    cVar.n(key.k(length3).b);
                }
            }
            dVar.f2402c = cVar.h();
            e.a.b.b.c.d dVar2 = this.f2422g;
            dVar2.b();
            length = (dVar2.b.b.length * 8) + dVar2.f2402c.length;
        }
        e.a.b.b.b.g gVar2 = this.f2421f;
        gVar2.a();
        int i4 = gVar2.f2352g.i();
        if ((i4 & 1) != 0) {
            i4++;
        }
        l((i4 * 2) + 16 + length);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // e.a.b.b.c.h0
    public void m(e.a.b.b.c.m mVar, e.a.b.f.a aVar) throws java.io.IOException {
        int length;
        java.lang.String string;
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        boolean zD = cVar.d();
        e.a.b.b.b.g gVar = this.f2421f;
        gVar.a();
        int i = gVar.f2352g.f2355c;
        e.a.b.b.b.g gVar2 = this.f2421f;
        gVar2.a();
        e.a.b.b.b.i iVar = gVar2.f2352g;
        int length2 = iVar.b.length;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            if (i2 >= length2) {
                break;
            }
            e.a.b.b.b.h hVar = (e.a.b.b.b.h) iVar.f(i2);
            if (hVar instanceof e.a.b.b.b.f) {
                e.a.b.d.c.a aVar2 = ((e.a.b.b.b.f) hVar).f2345e;
                if (aVar2 instanceof e.a.b.d.c.d) {
                    int iF = ((e.a.b.d.c.d) aVar2).f(hVar.b.b == 113);
                    if (iF > i3) {
                        i3 = iF;
                    }
                }
            }
            i2++;
        }
        int iF2 = this.f2420e.f(this.h);
        e.a.b.b.b.g gVar3 = this.f2421f;
        gVar3.a();
        int i4 = gVar3.f2352g.i();
        boolean z = (i4 & 1) != 0;
        e.a.b.b.c.d dVar = this.f2422g;
        if (dVar == null) {
            length = 0;
        } else {
            dVar.b();
            length = dVar.b.b.length;
        }
        e.a.b.b.c.l lVar = this.j;
        int iG = lVar == null ? 0 : lVar.g();
        if (zD) {
            cVar.b(0, i() + com.google.android.exoplayer2.text.webvtt.WebvttCueParser.CHAR_SPACE + this.f2420e.a());
            java.lang.StringBuilder sb = new java.lang.StringBuilder();
            sb.append("  registers_size: ");
            sb.append(d.s.y.e0(i));
            cVar.b(2, sb.toString());
            cVar.b(2, "  ins_size:       " + d.s.y.e0(iF2));
            cVar.b(2, "  outs_size:      " + d.s.y.e0(i3));
            cVar.b(2, "  tries_size:     " + d.s.y.e0(length));
            java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
            sb2.append("  debug_off:      ");
            e.a.c.a.a.u(i4, e.a.c.a.a.n(iG, sb2, cVar, 4, "  insns_size:     "), cVar, 4);
            if (((e.a.b.f.d) this.i).b.length != 0) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("  throws ");
                e.a.b.d.d.e eVar = this.i;
                int length3 = ((e.a.b.f.d) eVar).b.length;
                if (length3 == 0) {
                    string = "<empty>";
                } else {
                    java.lang.StringBuffer stringBuffer = new java.lang.StringBuffer(100);
                    for (int i5 = 0; i5 < length3; i5++) {
                        if (i5 != 0) {
                            stringBuffer.append(", ");
                        }
                        stringBuffer.append(eVar.b(i5).a());
                    }
                    string = stringBuffer.toString();
                }
                sbO.append(string);
                cVar.b(0, sbO.toString());
            }
        }
        cVar.l(i);
        cVar.l(iF2);
        cVar.l(i3);
        cVar.l(length);
        cVar.k(iG);
        cVar.k(i4);
        e.a.b.b.b.g gVar4 = this.f2421f;
        gVar4.a();
        try {
            gVar4.f2352g.k(cVar);
            if (this.f2422g != null) {
                if (z) {
                    if (zD) {
                        cVar.b(2, "  padding: 0");
                    }
                    cVar.l(0);
                }
                e.a.b.b.c.d dVar2 = this.f2422g;
                dVar2.b();
                if (cVar.d()) {
                    dVar2.b();
                    int length4 = dVar2.b.b.length;
                    cVar.b(0, "  tries:");
                    for (int i6 = 0; i6 < length4; i6++) {
                        e.a.b.b.b.d.a aVarI = dVar2.b.i(i6);
                        e.a.b.b.b.c cVar2 = aVarI.f2343c;
                        java.lang.StringBuilder sbQ = e.a.c.a.a.q("    ", "try ");
                        sbQ.append(d.s.y.f0(aVarI.a));
                        sbQ.append("..");
                        sbQ.append(d.s.y.f0(aVarI.b));
                        java.lang.String string2 = sbQ.toString();
                        java.lang.String strL = cVar2.l("    ", "");
                        cVar.b(6, string2);
                        cVar.b(2, strL);
                    }
                    cVar.b(0, "  handlers:");
                    int i7 = dVar2.f2403d;
                    java.lang.StringBuilder sbQ2 = e.a.c.a.a.q("    ", "size: ");
                    sbQ2.append(d.s.y.e0(dVar2.f2404e.size()));
                    cVar.b(i7, sbQ2.toString());
                    e.a.b.b.b.c cVar3 = null;
                    int i8 = 0;
                    for (java.util.Map.Entry<e.a.b.b.b.c, java.lang.Integer> entry : dVar2.f2404e.entrySet()) {
                        e.a.b.b.b.c key = entry.getKey();
                        int iIntValue = entry.getValue().intValue();
                        if (cVar3 != null) {
                            e.a.b.b.c.d.a(cVar3, i8, iIntValue - i8, "    ", null, cVar);
                        }
                        cVar3 = key;
                        i8 = iIntValue;
                    }
                    e.a.b.b.c.d.a(cVar3, i8, dVar2.f2402c.length - i8, "    ", null, cVar);
                }
                int length5 = dVar2.b.b.length;
                for (int i9 = 0; i9 < length5; i9++) {
                    e.a.b.b.b.d.a aVarI2 = dVar2.b.i(i9);
                    int i10 = aVarI2.a;
                    int i11 = aVarI2.b;
                    int i12 = i11 - i10;
                    if (i12 >= 65536) {
                        java.lang.StringBuilder sbO2 = e.a.c.a.a.o("bogus exception range: ");
                        sbO2.append(d.s.y.g0(i10));
                        sbO2.append("..");
                        sbO2.append(d.s.y.g0(i11));
                        throw new java.lang.UnsupportedOperationException(sbO2.toString());
                    }
                    cVar.k(i10);
                    cVar.l(i12);
                    cVar.l(dVar2.f2404e.get(aVarI2.f2343c).intValue());
                }
                cVar.i(dVar2.f2402c);
            }
            if (!zD || this.j == null) {
                return;
            }
            cVar.b(0, "  debug info");
            this.j.n(mVar, "    ", null, cVar, false);
        } catch (java.lang.RuntimeException e2) {
            java.lang.StringBuilder sbO3 = e.a.c.a.a.o("...while writing instructions for ");
            sbO3.append(this.f2420e.a());
            throw e.a.a.c.b.b(e2, sbO3.toString());
        }
    }

    public java.lang.String n() {
        return this.f2420e.a();
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("CodeItem{");
        sbO.append(n());
        sbO.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
        return sbO.toString();
    }
}
