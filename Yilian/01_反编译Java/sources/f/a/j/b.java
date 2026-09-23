package f.a.j;

/* loaded from: classes.dex */
public final class b {
    public final f.a.j.h<?, ?> a;

    /* renamed from: c, reason: collision with root package name */
    public f.a.j.f f2985c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2986d;

    /* renamed from: e, reason: collision with root package name */
    public final f.a.j.g<?> f2987e;
    public final java.util.List<f.a.j.f> i;
    public e.a.b.d.d.b j;
    public final java.util.List<f.a.j.f> b = new java.util.ArrayList();

    /* renamed from: f, reason: collision with root package name */
    public final java.util.List<f.a.j.g<?>> f2988f = new java.util.ArrayList();

    /* renamed from: g, reason: collision with root package name */
    public final java.util.List<f.a.j.g<?>> f2989g = new java.util.ArrayList();
    public e.a.b.d.b.q h = e.a.b.d.b.q.f2505d;

    public b(f.a.j.d.b bVar) {
        new java.util.ArrayList();
        this.i = new java.util.ArrayList();
        this.j = e.a.b.d.d.b.f2519c;
        this.a = bVar.a;
        if ((bVar.b & 8) != 0) {
            this.f2987e = null;
        } else {
            f.a.j.g<?> gVar = new f.a.j.g<>(this, this.a.a);
            this.f2987e = gVar;
            this.f2988f.add(gVar);
        }
        for (f.a.j.k<?> kVar : this.a.f3013d.a) {
            this.f2988f.add(new f.a.j.g<>(this, kVar));
        }
        f.a.j.f fVar = new f.a.j.f();
        this.f2985c = fVar;
        b(fVar);
        this.f2985c.f3005c = true;
    }

    public final void a(e.a.b.d.b.e eVar, f.a.j.f fVar) {
        f.a.j.f fVar2 = this.f2985c;
        if (fVar2 == null || !fVar2.f3005c) {
            throw new java.lang.IllegalStateException("no current label");
        }
        fVar2.a.add(eVar);
        int i = eVar.a.f2495e;
        if (i == 1) {
            if (fVar == null) {
                return;
            }
            throw new java.lang.IllegalArgumentException("unexpected branch: " + fVar);
        }
        if (i != 2) {
            if (i != 3) {
                if (i == 4) {
                    if (fVar == null) {
                        throw new java.lang.IllegalArgumentException("branch == null");
                    }
                    o(fVar, java.util.Collections.emptyList());
                    return;
                } else {
                    if (i != 6) {
                        throw new java.lang.IllegalArgumentException();
                    }
                    if (fVar == null) {
                        o(null, new java.util.ArrayList(this.i));
                        return;
                    }
                    throw new java.lang.IllegalArgumentException("unexpected branch: " + fVar);
                }
            }
            if (fVar == null) {
                throw new java.lang.IllegalArgumentException("branch == null");
            }
            this.f2985c.f3007e = fVar;
        } else if (fVar != null) {
            throw new java.lang.IllegalArgumentException("unexpected branch: " + fVar);
        }
        this.f2985c = null;
    }

    public final void b(f.a.j.f fVar) {
        f.a.j.b bVar = fVar.b;
        if (bVar == this) {
            return;
        }
        if (bVar != null) {
            throw new java.lang.IllegalArgumentException("Cannot adopt label; it belongs to another Code");
        }
        fVar.b = this;
        this.b.add(fVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0050  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void c(f.a.j.g<?> r9, f.a.j.g<?> r10) {
        /*
            r8 = this;
            f.a.j.k<T> r0 = r10.b
            e.a.b.d.d.c r0 = r0.b
            boolean r0 = r0.j()
            r1 = 0
            if (r0 == 0) goto L2b
            e.a.b.d.b.r r0 = new e.a.b.d.b.r
            e.a.b.d.b.n r3 = e.a.b.d.b.p.L1
            e.a.b.d.b.q r4 = r8.h
            e.a.b.d.b.k r10 = r10.b()
            e.a.b.d.b.l r5 = e.a.b.d.b.l.k(r10)
            e.a.b.d.d.b r6 = r8.j
            f.a.j.k<T> r10 = r9.b
            e.a.b.d.c.w r7 = r10.f3027c
            r2 = r0
            r2.<init>(r3, r4, r5, r6, r7)
            r8.a(r0, r1)
            r10 = 1
            r8.k(r9, r10)
            goto L68
        L2b:
            e.a.b.d.b.j r0 = new e.a.b.d.b.j
            f.a.j.k<T> r2 = r10.b
            e.a.b.d.d.c r2 = r2.b
            f.a.j.k<T> r3 = r9.b
            e.a.b.d.d.c r3 = r3.b
            int r4 = r2.b
            r5 = 6
            if (r4 != r5) goto L50
            int r4 = r3.b
            r5 = 2
            if (r4 == r5) goto L4d
            r5 = 3
            if (r4 == r5) goto L4a
            r5 = 8
            if (r4 == r5) goto L47
            goto L50
        L47:
            e.a.b.d.b.n r2 = e.a.b.d.b.p.Z0
            goto L54
        L4a:
            e.a.b.d.b.n r2 = e.a.b.d.b.p.Y0
            goto L54
        L4d:
            e.a.b.d.b.n r2 = e.a.b.d.b.p.X0
            goto L54
        L50:
            e.a.b.d.b.n r2 = e.a.b.d.b.p.d(r3, r2)
        L54:
            e.a.b.d.b.q r3 = r8.h
            e.a.b.d.b.k r9 = r9.b()
            e.a.b.d.b.k r10 = r10.b()
            e.a.b.d.b.l r10 = e.a.b.d.b.l.k(r10)
            r0.<init>(r2, r3, r9, r10)
            r8.a(r0, r1)
        L68:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: f.a.j.b.c(f.a.j.g, f.a.j.g):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> f.a.j.g<T> d(f.a.j.g<?> gVar, f.a.j.k<T> kVar) {
        if (gVar.b.equals(kVar)) {
            return gVar;
        }
        throw new java.lang.IllegalArgumentException("requested " + kVar + " but was " + gVar.b);
    }

    public <T> f.a.j.g<T> e(int i, f.a.j.k<T> kVar) {
        if (this.f2987e != null) {
            i++;
        }
        f.a.j.g<T> gVar = (f.a.j.g) this.f2988f.get(i);
        d(gVar, kVar);
        return gVar;
    }

    public <T> f.a.j.g<T> f(f.a.j.k<T> kVar) {
        f.a.j.g<T> gVar = (f.a.j.g<T>) this.f2987e;
        if (gVar == null) {
            throw new java.lang.IllegalStateException("static methods cannot access 'this'");
        }
        d(gVar, kVar);
        return gVar;
    }

    public void g() {
        if (this.f2986d) {
            throw new java.lang.AssertionError();
        }
        this.f2986d = true;
        java.util.Iterator<f.a.j.g<?>> it = this.f2989g.iterator();
        int iA = 0;
        while (it.hasNext()) {
            iA += it.next().a(iA);
        }
        java.util.ArrayList arrayList = new java.util.ArrayList();
        int iA2 = iA;
        for (f.a.j.g<?> gVar : this.f2988f) {
            e.a.b.d.c.l lVarI = e.a.b.d.c.l.i(iA2 - iA);
            iA2 += gVar.a(iA2);
            arrayList.add(new e.a.b.d.b.i(e.a.b.d.b.p.i(gVar.b.b), this.h, gVar.b(), e.a.b.d.b.l.f2491c, lVarI));
        }
        this.b.get(0).a.addAll(0, arrayList);
    }

    public final <D, R> void h(e.a.b.d.b.n nVar, f.a.j.h<D, R> hVar, f.a.j.g<? super R> gVar, f.a.j.g<? extends D> gVar2, f.a.j.g<?>... gVarArr) {
        e.a.b.d.b.q qVar = this.h;
        int i = gVar2 != null ? 1 : 0;
        e.a.b.d.b.l lVar = new e.a.b.d.b.l(gVarArr.length + i);
        if (gVar2 != null) {
            lVar.g(0, gVar2.b());
        }
        for (int i2 = 0; i2 < gVarArr.length; i2++) {
            lVar.g(i2 + i, gVarArr[i2].b());
        }
        a(new e.a.b.d.b.r(nVar, qVar, lVar, this.j, hVar.f3015f), null);
        if (gVar != null) {
            k(gVar, false);
        }
    }

    public <D, R> void i(f.a.j.h<D, R> hVar, f.a.j.g<? super R> gVar, f.a.j.g<? extends D> gVar2, f.a.j.g<?>... gVarArr) {
        h(e.a.b.d.b.p.h(hVar.b(true)), hVar, gVar, gVar2, gVarArr);
    }

    public <T> void j(f.a.j.g<T> gVar, T t) {
        e.a.b.d.b.n nVarC = t == null ? e.a.b.d.b.p.q : e.a.b.d.b.p.c(gVar.b.b);
        if (nVarC.f2495e == 1) {
            a(new e.a.b.d.b.i(nVarC, this.h, gVar.b(), e.a.b.d.b.l.f2491c, d.s.y.C(t)), null);
        } else {
            a(new e.a.b.d.b.r(nVarC, this.h, e.a.b.d.b.l.f2491c, this.j, d.s.y.C(t)), null);
            k(gVar, true);
        }
    }

    public final void k(f.a.j.g<?> gVar, boolean z) {
        a(new e.a.b.d.b.j(z ? e.a.b.d.b.p.k(gVar.b.b) : e.a.b.d.b.p.j(gVar.b.b), this.h, gVar.b(), e.a.b.d.b.l.f2491c), null);
    }

    public <T> f.a.j.g<T> l(f.a.j.k<T> kVar) {
        if (this.f2986d) {
            throw new java.lang.IllegalStateException("Cannot allocate locals after adding instructions");
        }
        f.a.j.g<T> gVar = new f.a.j.g<>(this, kVar);
        this.f2989g.add(gVar);
        return gVar;
    }

    public void m(f.a.j.g<?> gVar) {
        if (gVar.b.equals(this.a.b)) {
            a(new e.a.b.d.b.j(e.a.b.d.b.p.m(gVar.b.b), this.h, null, e.a.b.d.b.l.k(gVar.b())), null);
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("declared ");
        sbO.append(this.a.b);
        sbO.append(" but returned ");
        sbO.append(gVar.b);
        throw new java.lang.IllegalArgumentException(sbO.toString());
    }

    public void n() {
        if (this.a.b.equals(f.a.j.k.l)) {
            a(new e.a.b.d.b.j(e.a.b.d.b.p.a1, this.h, null, e.a.b.d.b.l.f2491c), null);
            return;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("declared ");
        sbO.append(this.a.b);
        sbO.append(" but returned void");
        throw new java.lang.IllegalArgumentException(sbO.toString());
    }

    public final void o(f.a.j.f fVar, java.util.List<f.a.j.f> list) {
        f.a.j.f fVar2 = new f.a.j.f();
        b(fVar2);
        f.a.j.f fVar3 = this.f2985c;
        fVar3.f3007e = fVar2;
        fVar3.f3008f = fVar;
        fVar3.f3006d = list;
        this.f2985c = fVar2;
        fVar2.f3005c = true;
    }
}
