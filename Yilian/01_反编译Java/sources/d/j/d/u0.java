package d.j.d;

/* loaded from: classes.dex */
public abstract class u0 {
    public final android.view.ViewGroup a;
    public final java.util.ArrayList<d.j.d.u0.d> b = new java.util.ArrayList<>();

    /* renamed from: c, reason: collision with root package name */
    public final java.util.ArrayList<d.j.d.u0.d> f2132c = new java.util.ArrayList<>();

    /* renamed from: d, reason: collision with root package name */
    public boolean f2133d = false;

    /* renamed from: e, reason: collision with root package name */
    public boolean f2134e = false;

    public class a implements java.lang.Runnable {
        public final /* synthetic */ d.j.d.u0.c a;

        public a(d.j.d.u0.c cVar) {
            this.a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d.j.d.u0.this.b.contains(this.a)) {
                d.j.d.u0.c cVar = this.a;
                cVar.a.a(cVar.f2135c.mView);
            }
        }
    }

    public class b implements java.lang.Runnable {
        public final /* synthetic */ d.j.d.u0.c a;

        public b(d.j.d.u0.c cVar) {
            this.a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            d.j.d.u0.this.b.remove(this.a);
            d.j.d.u0.this.f2132c.remove(this.a);
        }
    }

    public static class c extends d.j.d.u0.d {
        public final d.j.d.e0 h;

        public c(d.j.d.u0.d.c cVar, d.j.d.u0.d.b bVar, d.j.d.e0 e0Var, d.g.i.a aVar) {
            super(cVar, bVar, e0Var.f2073c, aVar);
            this.h = e0Var;
        }

        @Override // d.j.d.u0.d
        public void b() {
            super.b();
            this.h.k();
        }

        @Override // d.j.d.u0.d
        public void d() {
            if (this.b == d.j.d.u0.d.b.ADDING) {
                androidx.fragment.app.Fragment fragment = this.h.f2073c;
                android.view.View viewFindFocus = fragment.mView.findFocus();
                if (viewFindFocus != null) {
                    fragment.setFocusedView(viewFindFocus);
                    if (d.j.d.y.M(2)) {
                        android.util.Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + fragment);
                    }
                }
                android.view.View viewRequireView = this.f2135c.requireView();
                if (viewRequireView.getParent() == null) {
                    this.h.b();
                    viewRequireView.setAlpha(0.0f);
                }
                if (viewRequireView.getAlpha() == 0.0f && viewRequireView.getVisibility() == 0) {
                    viewRequireView.setVisibility(4);
                }
                viewRequireView.setAlpha(fragment.getPostOnViewCreatedAlpha());
            }
        }
    }

    public static class d {
        public d.j.d.u0.d.c a;
        public d.j.d.u0.d.b b;

        /* renamed from: c, reason: collision with root package name */
        public final androidx.fragment.app.Fragment f2135c;

        /* renamed from: d, reason: collision with root package name */
        public final java.util.List<java.lang.Runnable> f2136d = new java.util.ArrayList();

        /* renamed from: e, reason: collision with root package name */
        public final java.util.HashSet<d.g.i.a> f2137e = new java.util.HashSet<>();

        /* renamed from: f, reason: collision with root package name */
        public boolean f2138f = false;

        /* renamed from: g, reason: collision with root package name */
        public boolean f2139g = false;

        public class a implements d.g.i.a.InterfaceC0046a {
            public a() {
            }

            @Override // d.g.i.a.InterfaceC0046a
            public void c() {
                d.j.d.u0.d.this.a();
            }
        }

        public enum b {
            NONE,
            ADDING,
            REMOVING
        }

        public enum c {
            REMOVED,
            VISIBLE,
            GONE,
            INVISIBLE;

            public static d.j.d.u0.d.c b(int i) {
                if (i == 0) {
                    return VISIBLE;
                }
                if (i == 4) {
                    return INVISIBLE;
                }
                if (i == 8) {
                    return GONE;
                }
                throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Unknown visibility ", i));
            }

            public static d.j.d.u0.d.c c(android.view.View view) {
                return (view.getAlpha() == 0.0f && view.getVisibility() == 0) ? INVISIBLE : b(view.getVisibility());
            }

            public void a(android.view.View view) {
                int i;
                int iOrdinal = ordinal();
                if (iOrdinal == 0) {
                    android.view.ViewGroup viewGroup = (android.view.ViewGroup) view.getParent();
                    if (viewGroup != null) {
                        if (d.j.d.y.M(2)) {
                            android.util.Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                        }
                        viewGroup.removeView(view);
                        return;
                    }
                    return;
                }
                if (iOrdinal == 1) {
                    if (d.j.d.y.M(2)) {
                        android.util.Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
                    }
                    i = 0;
                } else if (iOrdinal == 2) {
                    if (d.j.d.y.M(2)) {
                        android.util.Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
                    }
                    i = 8;
                } else {
                    if (iOrdinal != 3) {
                        return;
                    }
                    if (d.j.d.y.M(2)) {
                        android.util.Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
                    }
                    i = 4;
                }
                view.setVisibility(i);
            }
        }

        public d(d.j.d.u0.d.c cVar, d.j.d.u0.d.b bVar, androidx.fragment.app.Fragment fragment, d.g.i.a aVar) {
            this.a = cVar;
            this.b = bVar;
            this.f2135c = fragment;
            aVar.b(new d.j.d.u0.d.a());
        }

        public final void a() {
            if (this.f2138f) {
                return;
            }
            this.f2138f = true;
            if (this.f2137e.isEmpty()) {
                b();
                return;
            }
            java.util.Iterator it = new java.util.ArrayList(this.f2137e).iterator();
            while (it.hasNext()) {
                ((d.g.i.a) it.next()).a();
            }
        }

        public void b() {
            if (this.f2139g) {
                return;
            }
            if (d.j.d.y.M(2)) {
                android.util.Log.v("FragmentManager", "SpecialEffectsController: " + this + " has called complete.");
            }
            this.f2139g = true;
            java.util.Iterator<java.lang.Runnable> it = this.f2136d.iterator();
            while (it.hasNext()) {
                it.next().run();
            }
        }

        public final void c(d.j.d.u0.d.c cVar, d.j.d.u0.d.b bVar) {
            d.j.d.u0.d.b bVar2;
            d.j.d.u0.d.c cVar2 = d.j.d.u0.d.c.REMOVED;
            int iOrdinal = bVar.ordinal();
            if (iOrdinal == 0) {
                if (this.a != cVar2) {
                    if (d.j.d.y.M(2)) {
                        java.lang.StringBuilder sbO = e.a.c.a.a.o("SpecialEffectsController: For fragment ");
                        sbO.append(this.f2135c);
                        sbO.append(" mFinalState = ");
                        sbO.append(this.a);
                        sbO.append(" -> ");
                        sbO.append(cVar);
                        sbO.append(". ");
                        android.util.Log.v("FragmentManager", sbO.toString());
                    }
                    this.a = cVar;
                    return;
                }
                return;
            }
            if (iOrdinal != 1) {
                if (iOrdinal != 2) {
                    return;
                }
                if (d.j.d.y.M(2)) {
                    java.lang.StringBuilder sbO2 = e.a.c.a.a.o("SpecialEffectsController: For fragment ");
                    sbO2.append(this.f2135c);
                    sbO2.append(" mFinalState = ");
                    sbO2.append(this.a);
                    sbO2.append(" -> REMOVED. mLifecycleImpact  = ");
                    sbO2.append(this.b);
                    sbO2.append(" to REMOVING.");
                    android.util.Log.v("FragmentManager", sbO2.toString());
                }
                this.a = cVar2;
                bVar2 = d.j.d.u0.d.b.REMOVING;
            } else {
                if (this.a != cVar2) {
                    return;
                }
                if (d.j.d.y.M(2)) {
                    java.lang.StringBuilder sbO3 = e.a.c.a.a.o("SpecialEffectsController: For fragment ");
                    sbO3.append(this.f2135c);
                    sbO3.append(" mFinalState = REMOVED -> VISIBLE. mLifecycleImpact = ");
                    sbO3.append(this.b);
                    sbO3.append(" to ADDING.");
                    android.util.Log.v("FragmentManager", sbO3.toString());
                }
                this.a = d.j.d.u0.d.c.VISIBLE;
                bVar2 = d.j.d.u0.d.b.ADDING;
            }
            this.b = bVar2;
        }

        public void d() {
        }

        public java.lang.String toString() {
            java.lang.StringBuilder sbQ = e.a.c.a.a.q("Operation ", com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START);
            sbQ.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
            sbQ.append("} ");
            sbQ.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START);
            sbQ.append("mFinalState = ");
            sbQ.append(this.a);
            sbQ.append("} ");
            sbQ.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START);
            sbQ.append("mLifecycleImpact = ");
            sbQ.append(this.b);
            sbQ.append("} ");
            sbQ.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START);
            sbQ.append("mFragment = ");
            sbQ.append(this.f2135c);
            sbQ.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
            return sbQ.toString();
        }
    }

    public u0(android.view.ViewGroup viewGroup) {
        this.a = viewGroup;
    }

    public static d.j.d.u0 f(android.view.ViewGroup viewGroup, d.j.d.y yVar) {
        return g(viewGroup, yVar.K());
    }

    public static d.j.d.u0 g(android.view.ViewGroup viewGroup, d.j.d.v0 v0Var) {
        java.lang.Object tag = viewGroup.getTag(d.j.b.special_effects_controller_view_tag);
        if (tag instanceof d.j.d.u0) {
            return (d.j.d.u0) tag;
        }
        if (((d.j.d.y.f) v0Var) == null) {
            throw null;
        }
        d.j.d.c cVar = new d.j.d.c(viewGroup);
        viewGroup.setTag(d.j.b.special_effects_controller_view_tag, cVar);
        return cVar;
    }

    public final void a(d.j.d.u0.d.c cVar, d.j.d.u0.d.b bVar, d.j.d.e0 e0Var) {
        synchronized (this.b) {
            d.g.i.a aVar = new d.g.i.a();
            d.j.d.u0.d dVarD = d(e0Var.f2073c);
            if (dVarD != null) {
                dVarD.c(cVar, bVar);
                return;
            }
            d.j.d.u0.c cVar2 = new d.j.d.u0.c(cVar, bVar, e0Var, aVar);
            this.b.add(cVar2);
            cVar2.f2136d.add(new d.j.d.u0.a(cVar2));
            cVar2.f2136d.add(new d.j.d.u0.b(cVar2));
        }
    }

    public abstract void b(java.util.List<d.j.d.u0.d> list, boolean z);

    public void c() {
        if (this.f2134e) {
            return;
        }
        if (!d.g.m.s.z(this.a)) {
            e();
            this.f2133d = false;
            return;
        }
        synchronized (this.b) {
            if (!this.b.isEmpty()) {
                java.util.ArrayList arrayList = new java.util.ArrayList(this.f2132c);
                this.f2132c.clear();
                java.util.Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    d.j.d.u0.d dVar = (d.j.d.u0.d) it.next();
                    if (d.j.d.y.M(2)) {
                        android.util.Log.v("FragmentManager", "SpecialEffectsController: Cancelling operation " + dVar);
                    }
                    dVar.a();
                    if (!dVar.f2139g) {
                        this.f2132c.add(dVar);
                    }
                }
                i();
                java.util.ArrayList arrayList2 = new java.util.ArrayList(this.b);
                this.b.clear();
                this.f2132c.addAll(arrayList2);
                java.util.Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    ((d.j.d.u0.d) it2.next()).d();
                }
                b(arrayList2, this.f2133d);
                this.f2133d = false;
            }
        }
    }

    public final d.j.d.u0.d d(androidx.fragment.app.Fragment fragment) {
        java.util.Iterator<d.j.d.u0.d> it = this.b.iterator();
        while (it.hasNext()) {
            d.j.d.u0.d next = it.next();
            if (next.f2135c.equals(fragment) && !next.f2138f) {
                return next;
            }
        }
        return null;
    }

    public void e() {
        java.lang.String str;
        java.lang.String str2;
        boolean z = d.g.m.s.z(this.a);
        synchronized (this.b) {
            i();
            java.util.Iterator<d.j.d.u0.d> it = this.b.iterator();
            while (it.hasNext()) {
                it.next().d();
            }
            java.util.Iterator it2 = new java.util.ArrayList(this.f2132c).iterator();
            while (it2.hasNext()) {
                d.j.d.u0.d dVar = (d.j.d.u0.d) it2.next();
                if (d.j.d.y.M(2)) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append("SpecialEffectsController: ");
                    if (z) {
                        str2 = "";
                    } else {
                        str2 = "Container " + this.a + " is not attached to window. ";
                    }
                    sb.append(str2);
                    sb.append("Cancelling running operation ");
                    sb.append(dVar);
                    android.util.Log.v("FragmentManager", sb.toString());
                }
                dVar.a();
            }
            java.util.Iterator it3 = new java.util.ArrayList(this.b).iterator();
            while (it3.hasNext()) {
                d.j.d.u0.d dVar2 = (d.j.d.u0.d) it3.next();
                if (d.j.d.y.M(2)) {
                    java.lang.StringBuilder sb2 = new java.lang.StringBuilder();
                    sb2.append("SpecialEffectsController: ");
                    if (z) {
                        str = "";
                    } else {
                        str = "Container " + this.a + " is not attached to window. ";
                    }
                    sb2.append(str);
                    sb2.append("Cancelling pending operation ");
                    sb2.append(dVar2);
                    android.util.Log.v("FragmentManager", sb2.toString());
                }
                dVar2.a();
            }
        }
    }

    public void h() {
        d.j.d.u0.d.c cVar = d.j.d.u0.d.c.VISIBLE;
        synchronized (this.b) {
            i();
            this.f2134e = false;
            int size = this.b.size() - 1;
            while (true) {
                if (size < 0) {
                    break;
                }
                d.j.d.u0.d dVar = this.b.get(size);
                d.j.d.u0.d.c cVarC = d.j.d.u0.d.c.c(dVar.f2135c.mView);
                if (dVar.a == cVar && cVarC != cVar) {
                    this.f2134e = dVar.f2135c.isPostponed();
                    break;
                }
                size--;
            }
        }
    }

    public final void i() {
        java.util.Iterator<d.j.d.u0.d> it = this.b.iterator();
        while (it.hasNext()) {
            d.j.d.u0.d next = it.next();
            if (next.b == d.j.d.u0.d.b.ADDING) {
                next.c(d.j.d.u0.d.c.b(next.f2135c.requireView().getVisibility()), d.j.d.u0.d.b.NONE);
            }
        }
    }
}
