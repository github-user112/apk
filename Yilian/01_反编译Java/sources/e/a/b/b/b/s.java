package e.a.b.b.b;

/* loaded from: classes.dex */
public final class s {
    public final e.a.b.b.a a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public java.util.ArrayList<e.a.b.b.b.h> f2377c;

    /* renamed from: g, reason: collision with root package name */
    public int f2381g;
    public final int h;

    /* renamed from: f, reason: collision with root package name */
    public int f2380f = -1;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2378d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2379e = false;

    public s(e.a.b.b.a aVar, int i, int i2, int i3) {
        this.a = aVar;
        this.b = i2;
        this.f2377c = new java.util.ArrayList<>(i);
        this.h = i3;
    }

    public void a(e.a.b.b.b.h hVar) {
        this.f2377c.add(hVar);
        if (!this.f2378d && hVar.f2353c.f2506c >= 0) {
            this.f2378d = true;
        }
        if (this.f2379e) {
            return;
        }
        if (!(hVar instanceof e.a.b.b.b.p)) {
            if ((hVar instanceof e.a.b.b.b.q) && ((e.a.b.b.b.q) hVar).f2376e != null) {
                throw null;
            }
            return;
        }
        e.a.b.d.b.m mVar = ((e.a.b.b.b.p) hVar).f2375e;
        int i = mVar.i();
        for (int i2 = 0; i2 < i; i2++) {
            if (mVar.f(i2) != null) {
                throw null;
            }
        }
    }

    public final void b(int i) {
        int size = this.f2377c.size();
        int i2 = this.b + this.f2380f + this.f2381g;
        int i3 = i2 - this.h;
        e.a.b.e.a aVar = new e.a.b.e.a(i2);
        for (int i4 = 0; i4 < i2; i4++) {
            if (i4 >= i3) {
                aVar.a(i4, i4 + i, 1);
            } else {
                aVar.a(i4, i4, 1);
            }
        }
        for (int i5 = 0; i5 < size; i5++) {
            e.a.b.b.b.h hVar = this.f2377c.get(i5);
            if (!(hVar instanceof e.a.b.b.b.e)) {
                this.f2377c.set(i5, hVar.g(aVar));
            }
        }
        this.f2381g += i;
    }

    public final void c(int i) {
        int size = this.f2377c.size();
        for (int i2 = 0; i2 < size; i2++) {
            e.a.b.b.b.h hVar = this.f2377c.get(i2);
            if (!(hVar instanceof e.a.b.b.b.e)) {
                this.f2377c.set(i2, hVar.i(i));
            }
        }
        this.f2380f += i;
    }

    public final e.a.b.b.b.j d(e.a.b.b.b.h hVar) {
        e.a.b.b.b.j jVarE = e(hVar.j(hVar.f2354d.m(0, hVar.b.f2358e, null)), hVar.b);
        if (jVarE != null) {
            return jVarE;
        }
        throw new e.a.a.a("No expanded opcode for " + hVar);
    }

    public final e.a.b.b.b.j e(e.a.b.b.b.h hVar, e.a.b.b.b.j jVar) {
        while (jVar != null && (!jVar.f2357d.k(hVar) || (this.a.f2339c && jVar.a == 26))) {
            jVar = e.a.b.b.b.k.a(jVar);
        }
        return jVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean f(e.a.b.b.b.j[] jVarArr) {
        int i = this.f2380f;
        if (i < 0) {
            i = 0;
        }
        boolean z = false;
        while (true) {
            int size = this.f2377c.size();
            int i2 = this.f2380f;
            for (int i3 = 0; i3 < size; i3++) {
                e.a.b.b.b.h hVar = this.f2377c.get(i3);
                e.a.b.b.b.j jVar = jVarArr[i3];
                e.a.b.b.b.j jVarE = e(hVar, jVar);
                if (jVarE == null) {
                    java.util.BitSet bitSetF = d(hVar).f2357d.f(hVar);
                    boolean z2 = hVar.b.f2358e;
                    int length = hVar.f2354d.b.length;
                    int iH = (z2 == 0 || bitSetF.get(0)) ? 0 : hVar.f2354d.i(0).h();
                    int iH2 = 0;
                    for (int i4 = z2; i4 < length; i4++) {
                        if (!bitSetF.get(i4)) {
                            iH2 += hVar.f2354d.i(i4).h();
                        }
                    }
                    int iMax = java.lang.Math.max(iH2, iH);
                    if (iMax > i2) {
                        i2 = iMax;
                    }
                } else {
                    if (jVar == jVarE) {
                    }
                }
                jVarArr[i3] = jVarE;
            }
            if (i >= i2) {
                this.f2380f = i;
                return z;
            }
            int i5 = i2 - i;
            int size2 = this.f2377c.size();
            for (int i6 = 0; i6 < size2; i6++) {
                e.a.b.b.b.h hVar2 = this.f2377c.get(i6);
                if (!(hVar2 instanceof e.a.b.b.b.e)) {
                    this.f2377c.set(i6, hVar2.i(i5));
                }
            }
            z = true;
            i = i2;
        }
    }
}
