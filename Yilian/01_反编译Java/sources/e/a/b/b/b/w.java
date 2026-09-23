package e.a.b.b.b;

/* loaded from: classes.dex */
public final class w {
    public final e.a.b.d.b.o a;
    public final int b;

    /* renamed from: d, reason: collision with root package name */
    public final e.a.b.b.b.a f2385d;

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.b.b.r f2386e;

    /* renamed from: f, reason: collision with root package name */
    public final e.a.b.b.b.w.a f2387f;

    /* renamed from: g, reason: collision with root package name */
    public final int f2388g;
    public final int i;
    public boolean j;

    /* renamed from: c, reason: collision with root package name */
    public final e.a.b.d.b.h f2384c = null;
    public int[] h = null;

    public class a implements e.a.b.d.b.e.b {
        public final e.a.b.b.b.r a;
        public e.a.b.d.b.a b;

        /* renamed from: c, reason: collision with root package name */
        public e.a.b.b.b.e f2389c;

        public a(e.a.b.b.b.r rVar) {
            this.a = rVar;
        }

        @Override // e.a.b.d.b.e.b
        public void a(e.a.b.d.b.j jVar) {
            e.a.b.b.b.h xVar;
            e.a.b.d.b.n nVar = jVar.a;
            int i = nVar.a;
            if (i == 54 || i == 56) {
                return;
            }
            e.a.b.d.b.q qVar = jVar.b;
            e.a.b.b.b.j jVarA = e.a.b.b.b.u.a(jVar);
            int i2 = nVar.f2495e;
            if (i2 == 1 || i2 == 2) {
                xVar = new e.a.b.b.b.x(jVarA, qVar, e.a.b.b.b.w.a(jVar, jVar.f2485c));
            } else {
                if (i2 == 3) {
                    return;
                }
                if (i2 != 4) {
                    if (i2 != 6) {
                        throw new java.lang.RuntimeException("shouldn't happen");
                    }
                    xVar = new e.a.b.b.b.x(jVarA, qVar, e.a.b.b.b.w.a(jVar, jVar.f2485c));
                } else {
                    xVar = new e.a.b.b.b.z(jVarA, qVar, e.a.b.b.b.w.a(jVar, jVar.f2485c), e.a.b.b.b.w.this.f2385d.a[this.b.f2476c.g(1)]);
                }
            }
            this.a.a.a(xVar);
        }

        @Override // e.a.b.d.b.e.b
        public void b(e.a.b.d.b.i iVar) {
            e.a.b.d.b.q qVar = iVar.b;
            e.a.b.b.b.j jVarA = e.a.b.b.b.u.a(iVar);
            e.a.b.d.b.n nVar = iVar.a;
            int i = nVar.a;
            if (nVar.f2495e != 1) {
                throw new java.lang.RuntimeException("shouldn't happen");
            }
            if (i != 3) {
                this.a.a.a(new e.a.b.b.b.f(jVarA, qVar, e.a.b.b.b.w.a(iVar, iVar.f2485c), iVar.f2479e));
                return;
            }
            e.a.b.b.b.w wVar = e.a.b.b.b.w.this;
            if (wVar.j) {
                return;
            }
            e.a.b.d.b.k kVar = iVar.f2485c;
            this.a.a.a(new e.a.b.b.b.x(jVarA, qVar, e.a.b.d.b.l.l(kVar, e.a.b.d.b.k.i((wVar.f2388g - wVar.i) + ((e.a.b.d.c.l) iVar.f2479e).a, kVar.getType()))));
        }

        @Override // e.a.b.d.b.e.b
        public void c(e.a.b.d.b.s sVar) {
            e.a.b.d.b.q qVar = sVar.b;
            e.a.b.b.b.j jVarA = e.a.b.b.b.u.a(sVar);
            if (sVar.a.f2495e != 6) {
                throw new java.lang.RuntimeException("shouldn't happen");
            }
            e.a.b.d.b.k kVarF = f();
            if (jVarA.f2358e == (kVarF != null)) {
                e(this.f2389c);
                this.a.a.a(new e.a.b.b.b.x(jVarA, qVar, e.a.b.b.b.w.a(sVar, kVarF)));
            } else {
                throw new java.lang.RuntimeException("Insn with result/move-result-pseudo mismatch" + sVar);
            }
        }

        @Override // e.a.b.d.b.e.b
        public void d(e.a.b.d.b.r rVar) {
            e.a.b.d.b.q qVar = rVar.b;
            e.a.b.b.b.j jVarA = e.a.b.b.b.u.a(rVar);
            e.a.b.d.b.n nVar = rVar.a;
            e.a.b.d.c.a aVar = rVar.f2479e;
            if (nVar.f2495e != 6) {
                throw new java.lang.RuntimeException("shouldn't happen");
            }
            e(this.f2389c);
            if (nVar.f2496f) {
                this.a.a.a(new e.a.b.b.b.f(jVarA, qVar, rVar.f2486d, aVar));
                return;
            }
            e.a.b.d.b.k kVarF = f();
            e.a.b.d.b.l lVarA = e.a.b.b.b.w.a(rVar, kVarF);
            if ((jVarA.f2358e || nVar.a == 43) == (kVarF != null)) {
                this.a.a.a((nVar.a != 41 || jVarA.a == 35) ? new e.a.b.b.b.f(jVarA, qVar, lVarA, aVar) : new e.a.b.b.b.x(jVarA, qVar, lVarA));
                return;
            }
            throw new java.lang.RuntimeException("Insn with result/move-result-pseudo mismatch " + rVar);
        }

        public void e(e.a.b.b.b.h hVar) {
            this.a.a.a(hVar);
        }

        public final e.a.b.d.b.k f() {
            int i = this.b.f2477d;
            if (i < 0) {
                return null;
            }
            e.a.b.d.b.e eVarI = e.a.b.b.b.w.this.a.a.l(i).b.i(0);
            if (eVarI.a.a != 56) {
                return null;
            }
            return eVarI.f2485c;
        }
    }

    public w(e.a.b.d.b.o oVar, int i, int i2, e.a.b.b.a aVar) {
        this.a = oVar;
        this.b = i;
        this.f2385d = new e.a.b.b.b.a(oVar);
        this.i = i2;
        boolean[] zArr = {true};
        e.a.b.d.b.b bVar = oVar.a;
        if (bVar.f2478d == -1) {
            e.a.b.d.b.b.a aVar2 = new e.a.b.d.b.b.a();
            bVar.j(aVar2);
            bVar.f2478d = aVar2.a;
        }
        oVar.a.j(new e.a.b.b.b.v(zArr, bVar.f2478d, i2));
        this.j = zArr[0];
        e.a.b.d.b.b bVar2 = oVar.a;
        java.lang.Object[] objArr = bVar2.b;
        int length = objArr.length * 3;
        int length2 = objArr.length;
        int length3 = 0;
        for (int i3 = 0; i3 < length2; i3++) {
            e.a.b.d.b.a aVar3 = (e.a.b.d.b.a) bVar2.b[i3];
            if (aVar3 != null) {
                length3 += aVar3.b.b.length;
            }
        }
        int i4 = length + length3;
        if (bVar2.f2478d == -1) {
            e.a.b.d.b.b.a aVar4 = new e.a.b.d.b.b.a();
            bVar2.j(aVar4);
            bVar2.f2478d = aVar4.a;
        }
        int i5 = bVar2.f2478d + (this.j ? 0 : this.i);
        this.f2388g = i5;
        e.a.b.b.b.r rVar = new e.a.b.b.b.r(aVar, i4, length, i5, i2);
        this.f2386e = rVar;
        this.f2387f = new e.a.b.b.b.w.a(rVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static e.a.b.d.b.l a(e.a.b.d.b.e r6, e.a.b.d.b.k r7) {
        /*
            e.a.b.d.b.l r0 = r6.f2486d
            e.a.b.d.b.n r6 = r6.a
            int r6 = r6.a
            r1 = 14
            r2 = 0
            r3 = 1
            if (r6 == r1) goto L15
            r1 = 16
            if (r6 == r1) goto L15
            switch(r6) {
                case 20: goto L15;
                case 21: goto L15;
                case 22: goto L15;
                default: goto L13;
            }
        L13:
            r6 = 0
            goto L16
        L15:
            r6 = 1
        L16:
            if (r6 == 0) goto L34
            java.lang.Object[] r6 = r0.b
            int r6 = r6.length
            r1 = 2
            if (r6 != r1) goto L34
            int r6 = r7.a
            e.a.b.d.b.k r1 = r0.i(r3)
            int r1 = r1.a
            if (r6 != r1) goto L34
            e.a.b.d.b.k r6 = r0.i(r3)
            e.a.b.d.b.k r0 = r0.i(r2)
            e.a.b.d.b.l r0 = e.a.b.d.b.l.l(r6, r0)
        L34:
            if (r7 != 0) goto L37
            return r0
        L37:
            java.lang.Object[] r6 = r0.b
            int r6 = r6.length
            e.a.b.d.b.l r1 = new e.a.b.d.b.l
            int r4 = r6 + 1
            r1.<init>(r4)
            r4 = 0
        L42:
            if (r4 >= r6) goto L4f
            int r5 = r4 + 1
            java.lang.Object r4 = r0.f(r4)
            r1.g(r5, r4)
            r4 = r5
            goto L42
        L4f:
            r1.g(r2, r7)
            boolean r6 = r0.a
            r6 = r6 ^ r3
            if (r6 == 0) goto L59
            r1.a = r2
        L59:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: e.a.b.b.b.w.a(e.a.b.d.b.e, e.a.b.d.b.k):e.a.b.d.b.l");
    }
}
