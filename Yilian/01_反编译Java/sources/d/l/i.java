package d.l;

/* loaded from: classes.dex */
public class i extends d.l.e {

    /* renamed from: c, reason: collision with root package name */
    public final java.lang.ref.WeakReference<d.l.h> f2162c;
    public d.c.a.b.a<d.l.g, d.l.i.a> a = new d.c.a.b.a<>();

    /* renamed from: d, reason: collision with root package name */
    public int f2163d = 0;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2164e = false;

    /* renamed from: f, reason: collision with root package name */
    public boolean f2165f = false;

    /* renamed from: g, reason: collision with root package name */
    public java.util.ArrayList<d.l.e.b> f2166g = new java.util.ArrayList<>();
    public d.l.e.b b = d.l.e.b.INITIALIZED;
    public final boolean h = true;

    public static class a {
        public d.l.e.b a;
        public d.l.f b;

        public a(d.l.g gVar, d.l.e.b bVar) {
            this.b = d.l.k.d(gVar);
            this.a = bVar;
        }

        public void a(d.l.h hVar, d.l.e.a aVar) {
            d.l.e.b bVarA = aVar.a();
            this.a = d.l.i.f(this.a, bVarA);
            this.b.d(hVar, aVar);
            this.a = bVarA;
        }
    }

    public i(d.l.h hVar) {
        this.f2162c = new java.lang.ref.WeakReference<>(hVar);
    }

    public static d.l.e.b f(d.l.e.b bVar, d.l.e.b bVar2) {
        return (bVar2 == null || bVar2.compareTo(bVar) >= 0) ? bVar : bVar2;
    }

    @Override // d.l.e
    public void a(d.l.g gVar) {
        d.l.h hVar;
        d("addObserver");
        d.l.e.b bVar = this.b;
        d.l.e.b bVar2 = d.l.e.b.DESTROYED;
        if (bVar != bVar2) {
            bVar2 = d.l.e.b.INITIALIZED;
        }
        d.l.i.a aVar = new d.l.i.a(gVar, bVar2);
        if (this.a.d(gVar, aVar) == null && (hVar = this.f2162c.get()) != null) {
            boolean z = this.f2163d != 0 || this.f2164e;
            d.l.e.b bVarC = c(gVar);
            this.f2163d++;
            while (aVar.a.compareTo(bVarC) < 0 && this.a.f1869e.containsKey(gVar)) {
                this.f2166g.add(aVar.a);
                d.l.e.a aVarB = d.l.e.a.b(aVar.a);
                if (aVarB == null) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("no event up from ");
                    sbO.append(aVar.a);
                    throw new java.lang.IllegalStateException(sbO.toString());
                }
                aVar.a(hVar, aVarB);
                h();
                bVarC = c(gVar);
            }
            if (!z) {
                i();
            }
            this.f2163d--;
        }
    }

    @Override // d.l.e
    public void b(d.l.g gVar) {
        d("removeObserver");
        this.a.e(gVar);
    }

    public final d.l.e.b c(d.l.g gVar) {
        d.c.a.b.a<d.l.g, d.l.i.a> aVar = this.a;
        d.l.e.b bVar = null;
        d.c.a.b.b.c<d.l.g, d.l.i.a> cVar = aVar.f1869e.containsKey(gVar) ? aVar.f1869e.get(gVar).f1873d : null;
        d.l.e.b bVar2 = cVar != null ? cVar.getValue().a : null;
        if (!this.f2166g.isEmpty()) {
            bVar = this.f2166g.get(r0.size() - 1);
        }
        return f(f(this.b, bVar2), bVar);
    }

    @android.annotation.SuppressLint({"RestrictedApi"})
    public final void d(java.lang.String str) {
        if (this.h && !d.c.a.a.a.b().a()) {
            throw new java.lang.IllegalStateException(e.a.c.a.a.f("Method ", str, " must be called on the main thread"));
        }
    }

    public void e(d.l.e.a aVar) {
        d("handleLifecycleEvent");
        g(aVar.a());
    }

    public final void g(d.l.e.b bVar) {
        if (this.b == bVar) {
            return;
        }
        this.b = bVar;
        if (this.f2164e || this.f2163d != 0) {
            this.f2165f = true;
            return;
        }
        this.f2164e = true;
        i();
        this.f2164e = false;
    }

    public final void h() {
        this.f2166g.remove(r0.size() - 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void i() {
        d.l.h hVar = this.f2162c.get();
        if (hVar == null) {
            throw new java.lang.IllegalStateException("LifecycleOwner of this LifecycleRegistry is alreadygarbage collected. It is too late to change lifecycle state.");
        }
        while (true) {
            d.c.a.b.a<d.l.g, d.l.i.a> aVar = this.a;
            boolean z = true;
            if (aVar.f1871d != 0) {
                d.l.e.b bVar = aVar.a.b.a;
                d.l.e.b bVar2 = aVar.b.b.a;
                if (bVar != bVar2 || this.b != bVar2) {
                    z = false;
                }
            }
            this.f2165f = false;
            if (z) {
                return;
            }
            if (this.b.compareTo(this.a.a.b.a) < 0) {
                d.c.a.b.a<d.l.g, d.l.i.a> aVar2 = this.a;
                d.c.a.b.b.C0041b c0041b = new d.c.a.b.b.C0041b(aVar2.b, aVar2.a);
                aVar2.f1870c.put(c0041b, java.lang.Boolean.FALSE);
                while (c0041b.hasNext() && !this.f2165f) {
                    java.util.Map.Entry entry = (java.util.Map.Entry) c0041b.next();
                    d.l.i.a aVar3 = (d.l.i.a) entry.getValue();
                    while (aVar3.a.compareTo(this.b) > 0 && !this.f2165f && this.a.contains(entry.getKey())) {
                        int iOrdinal = aVar3.a.ordinal();
                        d.l.e.a aVar4 = iOrdinal != 2 ? iOrdinal != 3 ? iOrdinal != 4 ? null : d.l.e.a.ON_PAUSE : d.l.e.a.ON_STOP : d.l.e.a.ON_DESTROY;
                        if (aVar4 == null) {
                            java.lang.StringBuilder sbO = e.a.c.a.a.o("no event down from ");
                            sbO.append(aVar3.a);
                            throw new java.lang.IllegalStateException(sbO.toString());
                        }
                        this.f2166g.add(aVar4.a());
                        aVar3.a(hVar, aVar4);
                        h();
                    }
                }
            }
            d.c.a.b.b.c<d.l.g, d.l.i.a> cVar = this.a.b;
            if (!this.f2165f && cVar != null && this.b.compareTo(cVar.b.a) > 0) {
                d.c.a.b.b<d.l.g, d.l.i.a>.d dVarB = this.a.b();
                while (dVarB.hasNext() && !this.f2165f) {
                    java.util.Map.Entry entry2 = (java.util.Map.Entry) dVarB.next();
                    d.l.i.a aVar5 = (d.l.i.a) entry2.getValue();
                    while (aVar5.a.compareTo(this.b) < 0 && !this.f2165f && this.a.contains(entry2.getKey())) {
                        this.f2166g.add(aVar5.a);
                        d.l.e.a aVarB = d.l.e.a.b(aVar5.a);
                        if (aVarB == null) {
                            java.lang.StringBuilder sbO2 = e.a.c.a.a.o("no event up from ");
                            sbO2.append(aVar5.a);
                            throw new java.lang.IllegalStateException(sbO2.toString());
                        }
                        aVar5.a(hVar, aVarB);
                        h();
                    }
                }
            }
        }
    }
}
