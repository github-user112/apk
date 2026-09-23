package e.a.b.b.c;

/* loaded from: classes.dex */
public final class e extends e.a.b.b.c.h0 {

    /* renamed from: e, reason: collision with root package name */
    public final e.a.b.d.c.w f2405e;

    /* renamed from: f, reason: collision with root package name */
    public final java.util.ArrayList<e.a.b.b.c.o> f2406f;

    /* renamed from: g, reason: collision with root package name */
    public final java.util.HashMap<e.a.b.b.c.o, e.a.b.d.c.a> f2407g;
    public final java.util.ArrayList<e.a.b.b.c.o> h;
    public final java.util.ArrayList<e.a.b.b.c.q> i;
    public final java.util.ArrayList<e.a.b.b.c.q> j;
    public e.a.b.d.c.c k;
    public byte[] l;

    public e(e.a.b.d.c.w wVar) {
        super(1, -1);
        this.f2405e = wVar;
        this.f2406f = new java.util.ArrayList<>(20);
        this.f2407g = new java.util.HashMap<>(40);
        this.h = new java.util.ArrayList<>(20);
        this.i = new java.util.ArrayList<>(20);
        this.j = new java.util.ArrayList<>(20);
        this.k = null;
    }

    public static void n(e.a.b.b.c.m mVar, e.a.b.f.a aVar, java.lang.String str, java.util.ArrayList<? extends e.a.b.b.c.p> arrayList) {
        int size = arrayList.size();
        if (size == 0) {
            return;
        }
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            cVar.b(0, "  " + str + ":");
        }
        int iB = 0;
        for (int i = 0; i < size; i++) {
            iB = arrayList.get(i).b(mVar, cVar, iB, i);
        }
    }

    public static void p(e.a.b.f.a aVar, java.lang.String str, int i) {
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            cVar.c(java.lang.String.format("  %-21s %08x", e.a.c.a.a.e(str, "_size:"), java.lang.Integer.valueOf(i)));
        }
        cVar.n(i);
    }

    @Override // e.a.b.b.c.y
    public void a(e.a.b.b.c.m mVar) {
        if (!this.f2406f.isEmpty()) {
            q();
            java.util.Iterator<e.a.b.b.c.o> it = this.f2406f.iterator();
            while (it.hasNext()) {
                e.a.b.b.c.o next = it.next();
                if (next == null) {
                    throw null;
                }
                mVar.i.n(next.b);
            }
        }
        if (!this.h.isEmpty()) {
            java.util.Collections.sort(this.h);
            java.util.Iterator<e.a.b.b.c.o> it2 = this.h.iterator();
            while (it2.hasNext()) {
                e.a.b.b.c.o next2 = it2.next();
                if (next2 == null) {
                    throw null;
                }
                mVar.i.n(next2.b);
            }
        }
        if (!this.i.isEmpty()) {
            java.util.Collections.sort(this.i);
            java.util.Iterator<e.a.b.b.c.q> it3 = this.i.iterator();
            while (it3.hasNext()) {
                e.a.b.b.c.q next3 = it3.next();
                if (next3 == null) {
                    throw null;
                }
                e.a.b.b.c.f0 f0Var = mVar.j;
                e.a.b.b.c.g0 g0Var = mVar.b;
                f0Var.n(next3.b);
                e.a.b.b.c.h hVar = next3.f2449c;
                if (hVar != null) {
                    g0Var.l(hVar);
                }
            }
        }
        if (this.j.isEmpty()) {
            return;
        }
        java.util.Collections.sort(this.j);
        java.util.Iterator<e.a.b.b.c.q> it4 = this.j.iterator();
        while (it4.hasNext()) {
            e.a.b.b.c.q next4 = it4.next();
            if (next4 == null) {
                throw null;
            }
            e.a.b.b.c.f0 f0Var2 = mVar.j;
            e.a.b.b.c.g0 g0Var2 = mVar.b;
            f0Var2.n(next4.b);
            e.a.b.b.c.h hVar2 = next4.f2449c;
            if (hVar2 != null) {
                g0Var2.l(hVar2);
            }
        }
    }

    @Override // e.a.b.b.c.y
    public e.a.b.b.c.z b() {
        return e.a.b.b.c.z.TYPE_CLASS_DATA_ITEM;
    }

    @Override // e.a.b.b.c.h0
    public void k(e.a.b.b.c.l0 l0Var, int i) {
        e.a.b.f.c cVar = new e.a.b.f.c();
        o(l0Var.b, cVar);
        byte[] bArrH = cVar.h();
        this.l = bArrH;
        l(bArrH.length);
    }

    @Override // e.a.b.b.c.h0
    public void m(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        if (cVar.d()) {
            o(mVar, cVar);
        } else {
            cVar.i(this.l);
        }
    }

    public final void o(e.a.b.b.c.m mVar, e.a.b.f.a aVar) {
        e.a.b.f.c cVar = (e.a.b.f.c) aVar;
        boolean zD = cVar.d();
        if (zD) {
            cVar.b(0, i() + " class data for " + this.f2405e.a());
        }
        p(cVar, "static_fields", this.f2406f.size());
        p(cVar, "instance_fields", this.h.size());
        p(cVar, "direct_methods", this.i.size());
        p(cVar, "virtual_methods", this.j.size());
        n(mVar, cVar, "static_fields", this.f2406f);
        n(mVar, cVar, "instance_fields", this.h);
        n(mVar, cVar, "direct_methods", this.i);
        n(mVar, cVar, "virtual_methods", this.j);
        if (zD) {
            cVar.e();
        }
    }

    public e.a.b.d.c.c q() {
        e.a.b.d.c.c cVar;
        e.a.b.d.c.a aVar;
        if (this.k == null && this.f2406f.size() != 0) {
            java.util.Collections.sort(this.f2406f);
            int size = this.f2406f.size();
            while (size > 0) {
                int i = size - 1;
                e.a.b.d.c.a aVar2 = this.f2407g.get(this.f2406f.get(i));
                if (aVar2 instanceof e.a.b.d.c.p) {
                    if (((e.a.b.d.c.p) aVar2).h() != 0) {
                        break;
                    }
                    size = i;
                } else {
                    if (aVar2 != null) {
                        break;
                    }
                    size = i;
                }
            }
            if (size == 0) {
                cVar = null;
            } else {
                e.a.b.d.c.c.a aVar3 = new e.a.b.d.c.c.a(size);
                for (int i2 = 0; i2 < size; i2++) {
                    e.a.b.b.c.o oVar = this.f2406f.get(i2);
                    e.a.b.d.c.a aVar4 = this.f2407g.get(oVar);
                    if (aVar4 == null) {
                        e.a.b.d.d.c type = oVar.b.getType();
                        switch (type.b) {
                            case 1:
                                aVar = e.a.b.d.c.e.b;
                                break;
                            case 2:
                                aVar = e.a.b.d.c.f.b;
                                break;
                            case 3:
                                aVar = e.a.b.d.c.g.b;
                                break;
                            case 4:
                                aVar = e.a.b.d.c.h.b;
                                break;
                            case 5:
                                aVar = e.a.b.d.c.k.b;
                                break;
                            case 6:
                                aVar = e.a.b.d.c.l.f2513c;
                                break;
                            case 7:
                                aVar = e.a.b.d.c.q.b;
                                break;
                            case 8:
                                aVar = e.a.b.d.c.u.b;
                                break;
                            case 9:
                                aVar = e.a.b.d.c.m.a;
                                break;
                            default:
                                java.lang.StringBuilder sbO = e.a.c.a.a.o("no zero for type: ");
                                sbO.append(type.a());
                                throw new java.lang.UnsupportedOperationException(sbO.toString());
                        }
                        aVar4 = aVar;
                    }
                    aVar3.g(i2, aVar4);
                }
                aVar3.a = false;
                cVar = new e.a.b.d.c.c(aVar3);
            }
            this.k = cVar;
        }
        return this.k;
    }

    public boolean r() {
        return this.f2406f.isEmpty() && this.h.isEmpty() && this.i.isEmpty() && this.j.isEmpty();
    }
}
