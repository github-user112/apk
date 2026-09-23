package d.s;

/* loaded from: classes.dex */
public abstract class k implements java.lang.Cloneable {
    public static final int[] G = {2, 1, 3, 4};
    public static final d.s.f H = new d.s.k.a();
    public static java.lang.ThreadLocal<d.e.a<android.animation.Animator, d.s.k.b>> I = new java.lang.ThreadLocal<>();
    public d.s.p C;
    public d.s.k.c D;
    public java.util.ArrayList<d.s.s> t;
    public java.util.ArrayList<d.s.s> u;
    public java.lang.String a = getClass().getName();
    public long b = -1;

    /* renamed from: c, reason: collision with root package name */
    public long f2278c = -1;

    /* renamed from: d, reason: collision with root package name */
    public android.animation.TimeInterpolator f2279d = null;

    /* renamed from: e, reason: collision with root package name */
    public java.util.ArrayList<java.lang.Integer> f2280e = new java.util.ArrayList<>();

    /* renamed from: f, reason: collision with root package name */
    public java.util.ArrayList<android.view.View> f2281f = new java.util.ArrayList<>();

    /* renamed from: g, reason: collision with root package name */
    public java.util.ArrayList<java.lang.String> f2282g = null;
    public java.util.ArrayList<java.lang.Class> h = null;
    public java.util.ArrayList<java.lang.Integer> i = null;
    public java.util.ArrayList<android.view.View> j = null;
    public java.util.ArrayList<java.lang.Class> k = null;
    public java.util.ArrayList<java.lang.String> l = null;
    public java.util.ArrayList<java.lang.Integer> m = null;
    public java.util.ArrayList<android.view.View> n = null;
    public java.util.ArrayList<java.lang.Class> o = null;
    public d.s.t p = new d.s.t();
    public d.s.t q = new d.s.t();
    public d.s.q r = null;
    public int[] s = G;
    public boolean v = false;
    public java.util.ArrayList<android.animation.Animator> w = new java.util.ArrayList<>();
    public int x = 0;
    public boolean y = false;
    public boolean z = false;
    public java.util.ArrayList<d.s.k.d> A = null;
    public java.util.ArrayList<android.animation.Animator> B = new java.util.ArrayList<>();
    public d.s.f F = H;

    public static class a extends d.s.f {
        @Override // d.s.f
        public android.graphics.Path a(float f2, float f3, float f4, float f5) {
            android.graphics.Path path = new android.graphics.Path();
            path.moveTo(f2, f3);
            path.lineTo(f4, f5);
            return path;
        }
    }

    public static class b {
        public android.view.View a;
        public java.lang.String b;

        /* renamed from: c, reason: collision with root package name */
        public d.s.s f2283c;

        /* renamed from: d, reason: collision with root package name */
        public d.s.l0 f2284d;

        /* renamed from: e, reason: collision with root package name */
        public d.s.k f2285e;

        public b(android.view.View view, java.lang.String str, d.s.k kVar, d.s.l0 l0Var, d.s.s sVar) {
            this.a = view;
            this.b = str;
            this.f2283c = sVar;
            this.f2284d = l0Var;
            this.f2285e = kVar;
        }
    }

    public static abstract class c {
    }

    public interface d {
        void a(d.s.k kVar);

        void b(d.s.k kVar);

        void c(d.s.k kVar);

        void d(d.s.k kVar);
    }

    public static void c(d.s.t tVar, android.view.View view, d.s.s sVar) {
        tVar.a.put(view, sVar);
        int id = view.getId();
        if (id >= 0) {
            if (tVar.b.indexOfKey(id) >= 0) {
                tVar.b.put(id, null);
            } else {
                tVar.b.put(id, view);
            }
        }
        java.lang.String strU = d.g.m.s.u(view);
        if (strU != null) {
            if (tVar.f2290d.e(strU) >= 0) {
                tVar.f2290d.put(strU, null);
            } else {
                tVar.f2290d.put(strU, view);
            }
        }
        if (view.getParent() instanceof android.widget.ListView) {
            android.widget.ListView listView = (android.widget.ListView) view.getParent();
            if (listView.getAdapter().hasStableIds()) {
                long itemIdAtPosition = listView.getItemIdAtPosition(listView.getPositionForView(view));
                d.e.e<android.view.View> eVar = tVar.f2289c;
                if (eVar.a) {
                    eVar.d();
                }
                if (d.e.d.b(eVar.b, eVar.f1896d, itemIdAtPosition) < 0) {
                    view.setHasTransientState(true);
                    tVar.f2289c.g(itemIdAtPosition, view);
                    return;
                }
                android.view.View viewE = tVar.f2289c.e(itemIdAtPosition);
                if (viewE != null) {
                    viewE.setHasTransientState(false);
                    tVar.f2289c.g(itemIdAtPosition, null);
                }
            }
        }
    }

    public static d.e.a<android.animation.Animator, d.s.k.b> o() {
        d.e.a<android.animation.Animator, d.s.k.b> aVar = I.get();
        if (aVar != null) {
            return aVar;
        }
        d.e.a<android.animation.Animator, d.s.k.b> aVar2 = new d.e.a<>();
        I.set(aVar2);
        return aVar2;
    }

    public static boolean t(d.s.s sVar, d.s.s sVar2, java.lang.String str) {
        java.lang.Object obj = sVar.a.get(str);
        java.lang.Object obj2 = sVar2.a.get(str);
        if (obj == null && obj2 == null) {
            return false;
        }
        if (obj == null || obj2 == null) {
            return true;
        }
        return true ^ obj.equals(obj2);
    }

    public void A(d.s.k.c cVar) {
        this.D = cVar;
    }

    public d.s.k B(android.animation.TimeInterpolator timeInterpolator) {
        this.f2279d = timeInterpolator;
        return this;
    }

    public void C(d.s.f fVar) {
        if (fVar == null) {
            fVar = H;
        }
        this.F = fVar;
    }

    public void D(d.s.p pVar) {
        this.C = pVar;
    }

    public d.s.k E(long j) {
        this.b = j;
        return this;
    }

    public void F() {
        if (this.x == 0) {
            java.util.ArrayList<d.s.k.d> arrayList = this.A;
            if (arrayList != null && arrayList.size() > 0) {
                java.util.ArrayList arrayList2 = (java.util.ArrayList) this.A.clone();
                int size = arrayList2.size();
                for (int i = 0; i < size; i++) {
                    ((d.s.k.d) arrayList2.get(i)).a(this);
                }
            }
            this.z = false;
        }
        this.x++;
    }

    public java.lang.String G(java.lang.String str) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o(str);
        sbO.append(getClass().getSimpleName());
        sbO.append("@");
        sbO.append(java.lang.Integer.toHexString(hashCode()));
        sbO.append(": ");
        java.lang.String string = sbO.toString();
        if (this.f2278c != -1) {
            java.lang.StringBuilder sbQ = e.a.c.a.a.q(string, "dur(");
            sbQ.append(this.f2278c);
            sbQ.append(") ");
            string = sbQ.toString();
        }
        if (this.b != -1) {
            java.lang.StringBuilder sbQ2 = e.a.c.a.a.q(string, "dly(");
            sbQ2.append(this.b);
            sbQ2.append(") ");
            string = sbQ2.toString();
        }
        if (this.f2279d != null) {
            java.lang.StringBuilder sbQ3 = e.a.c.a.a.q(string, "interp(");
            sbQ3.append(this.f2279d);
            sbQ3.append(") ");
            string = sbQ3.toString();
        }
        if (this.f2280e.size() <= 0 && this.f2281f.size() <= 0) {
            return string;
        }
        java.lang.String strE = e.a.c.a.a.e(string, "tgts(");
        if (this.f2280e.size() > 0) {
            for (int i = 0; i < this.f2280e.size(); i++) {
                if (i > 0) {
                    strE = e.a.c.a.a.e(strE, ", ");
                }
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o(strE);
                sbO2.append(this.f2280e.get(i));
                strE = sbO2.toString();
            }
        }
        if (this.f2281f.size() > 0) {
            for (int i2 = 0; i2 < this.f2281f.size(); i2++) {
                if (i2 > 0) {
                    strE = e.a.c.a.a.e(strE, ", ");
                }
                java.lang.StringBuilder sbO3 = e.a.c.a.a.o(strE);
                sbO3.append(this.f2281f.get(i2));
                strE = sbO3.toString();
            }
        }
        return e.a.c.a.a.e(strE, ")");
    }

    public d.s.k a(d.s.k.d dVar) {
        if (this.A == null) {
            this.A = new java.util.ArrayList<>();
        }
        this.A.add(dVar);
        return this;
    }

    public d.s.k b(android.view.View view) {
        this.f2281f.add(view);
        return this;
    }

    public abstract void d(d.s.s sVar);

    public final void e(android.view.View view, boolean z) {
        if (view == null) {
            return;
        }
        int id = view.getId();
        java.util.ArrayList<java.lang.Integer> arrayList = this.i;
        if (arrayList == null || !arrayList.contains(java.lang.Integer.valueOf(id))) {
            java.util.ArrayList<android.view.View> arrayList2 = this.j;
            if (arrayList2 == null || !arrayList2.contains(view)) {
                java.util.ArrayList<java.lang.Class> arrayList3 = this.k;
                if (arrayList3 != null) {
                    int size = arrayList3.size();
                    for (int i = 0; i < size; i++) {
                        if (this.k.get(i).isInstance(view)) {
                            return;
                        }
                    }
                }
                if (view.getParent() instanceof android.view.ViewGroup) {
                    d.s.s sVar = new d.s.s();
                    sVar.b = view;
                    if (z) {
                        g(sVar);
                    } else {
                        d(sVar);
                    }
                    sVar.f2288c.add(this);
                    f(sVar);
                    c(z ? this.p : this.q, view, sVar);
                }
                if (view instanceof android.view.ViewGroup) {
                    java.util.ArrayList<java.lang.Integer> arrayList4 = this.m;
                    if (arrayList4 == null || !arrayList4.contains(java.lang.Integer.valueOf(id))) {
                        java.util.ArrayList<android.view.View> arrayList5 = this.n;
                        if (arrayList5 == null || !arrayList5.contains(view)) {
                            java.util.ArrayList<java.lang.Class> arrayList6 = this.o;
                            if (arrayList6 != null) {
                                int size2 = arrayList6.size();
                                for (int i2 = 0; i2 < size2; i2++) {
                                    if (this.o.get(i2).isInstance(view)) {
                                        return;
                                    }
                                }
                            }
                            android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
                            for (int i3 = 0; i3 < viewGroup.getChildCount(); i3++) {
                                e(viewGroup.getChildAt(i3), z);
                            }
                        }
                    }
                }
            }
        }
    }

    public void f(d.s.s sVar) {
    }

    public abstract void g(d.s.s sVar);

    public void h(android.view.ViewGroup viewGroup, boolean z) {
        java.util.ArrayList<java.lang.String> arrayList;
        java.util.ArrayList<java.lang.Class> arrayList2;
        i(z);
        if ((this.f2280e.size() <= 0 && this.f2281f.size() <= 0) || (((arrayList = this.f2282g) != null && !arrayList.isEmpty()) || ((arrayList2 = this.h) != null && !arrayList2.isEmpty()))) {
            e(viewGroup, z);
            return;
        }
        for (int i = 0; i < this.f2280e.size(); i++) {
            android.view.View viewFindViewById = viewGroup.findViewById(this.f2280e.get(i).intValue());
            if (viewFindViewById != null) {
                d.s.s sVar = new d.s.s();
                sVar.b = viewFindViewById;
                if (z) {
                    g(sVar);
                } else {
                    d(sVar);
                }
                sVar.f2288c.add(this);
                f(sVar);
                c(z ? this.p : this.q, viewFindViewById, sVar);
            }
        }
        for (int i2 = 0; i2 < this.f2281f.size(); i2++) {
            android.view.View view = this.f2281f.get(i2);
            d.s.s sVar2 = new d.s.s();
            sVar2.b = view;
            if (z) {
                g(sVar2);
            } else {
                d(sVar2);
            }
            sVar2.f2288c.add(this);
            f(sVar2);
            c(z ? this.p : this.q, view, sVar2);
        }
    }

    public void i(boolean z) {
        d.s.t tVar;
        if (z) {
            this.p.a.clear();
            this.p.b.clear();
            tVar = this.p;
        } else {
            this.q.a.clear();
            this.q.b.clear();
            tVar = this.q;
        }
        tVar.f2289c.b();
    }

    @Override // 
    /* renamed from: j, reason: merged with bridge method [inline-methods] */
    public d.s.k clone() {
        try {
            d.s.k kVar = (d.s.k) super.clone();
            kVar.B = new java.util.ArrayList<>();
            kVar.p = new d.s.t();
            kVar.q = new d.s.t();
            kVar.t = null;
            kVar.u = null;
            return kVar;
        } catch (java.lang.CloneNotSupportedException unused) {
            return null;
        }
    }

    public android.animation.Animator k(android.view.ViewGroup viewGroup, d.s.s sVar, d.s.s sVar2) {
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void l(android.view.ViewGroup r20, d.s.t r21, d.s.t r22, java.util.ArrayList<d.s.s> r23, java.util.ArrayList<d.s.s> r24) {
        /*
            Method dump skipped, instructions count: 313
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.k.l(android.view.ViewGroup, d.s.t, d.s.t, java.util.ArrayList, java.util.ArrayList):void");
    }

    public void m() {
        int i = this.x - 1;
        this.x = i;
        if (i == 0) {
            java.util.ArrayList<d.s.k.d> arrayList = this.A;
            if (arrayList != null && arrayList.size() > 0) {
                java.util.ArrayList arrayList2 = (java.util.ArrayList) this.A.clone();
                int size = arrayList2.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((d.s.k.d) arrayList2.get(i2)).d(this);
                }
            }
            for (int i3 = 0; i3 < this.p.f2289c.h(); i3++) {
                android.view.View viewI = this.p.f2289c.i(i3);
                if (viewI != null) {
                    d.g.m.s.R(viewI, false);
                }
            }
            for (int i4 = 0; i4 < this.q.f2289c.h(); i4++) {
                android.view.View viewI2 = this.q.f2289c.i(i4);
                if (viewI2 != null) {
                    d.g.m.s.R(viewI2, false);
                }
            }
            this.z = true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x002e, code lost:
    
        if (r3 < 0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0030, code lost:
    
        if (r8 == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0032, code lost:
    
        r7 = r6.u;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0035, code lost:
    
        r7 = r6.t;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x003e, code lost:
    
        return r7.get(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
    
        return null;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public d.s.s n(android.view.View r7, boolean r8) {
        /*
            r6 = this;
            d.s.q r0 = r6.r
            if (r0 == 0) goto L9
            d.s.s r7 = r0.n(r7, r8)
            return r7
        L9:
            if (r8 == 0) goto Le
            java.util.ArrayList<d.s.s> r0 = r6.t
            goto L10
        Le:
            java.util.ArrayList<d.s.s> r0 = r6.u
        L10:
            r1 = 0
            if (r0 != 0) goto L14
            return r1
        L14:
            int r2 = r0.size()
            r3 = -1
            r4 = 0
        L1a:
            if (r4 >= r2) goto L2e
            java.lang.Object r5 = r0.get(r4)
            d.s.s r5 = (d.s.s) r5
            if (r5 != 0) goto L25
            return r1
        L25:
            android.view.View r5 = r5.b
            if (r5 != r7) goto L2b
            r3 = r4
            goto L2e
        L2b:
            int r4 = r4 + 1
            goto L1a
        L2e:
            if (r3 < 0) goto L3e
            if (r8 == 0) goto L35
            java.util.ArrayList<d.s.s> r7 = r6.u
            goto L37
        L35:
            java.util.ArrayList<d.s.s> r7 = r6.t
        L37:
            java.lang.Object r7 = r7.get(r3)
            r1 = r7
            d.s.s r1 = (d.s.s) r1
        L3e:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.k.n(android.view.View, boolean):d.s.s");
    }

    public java.lang.String[] p() {
        return null;
    }

    public d.s.s q(android.view.View view, boolean z) {
        d.s.q qVar = this.r;
        if (qVar != null) {
            return qVar.q(view, z);
        }
        return (z ? this.p : this.q).a.getOrDefault(view, null);
    }

    public boolean r(d.s.s sVar, d.s.s sVar2) {
        if (sVar == null || sVar2 == null) {
            return false;
        }
        java.lang.String[] strArrP = p();
        if (strArrP == null) {
            java.util.Iterator<java.lang.String> it = sVar.a.keySet().iterator();
            while (it.hasNext()) {
                if (t(sVar, sVar2, it.next())) {
                }
            }
            return false;
        }
        for (java.lang.String str : strArrP) {
            if (!t(sVar, sVar2, str)) {
            }
        }
        return false;
        return true;
    }

    public boolean s(android.view.View view) {
        java.util.ArrayList<java.lang.Class> arrayList;
        java.util.ArrayList<java.lang.String> arrayList2;
        int id = view.getId();
        java.util.ArrayList<java.lang.Integer> arrayList3 = this.i;
        if (arrayList3 != null && arrayList3.contains(java.lang.Integer.valueOf(id))) {
            return false;
        }
        java.util.ArrayList<android.view.View> arrayList4 = this.j;
        if (arrayList4 != null && arrayList4.contains(view)) {
            return false;
        }
        java.util.ArrayList<java.lang.Class> arrayList5 = this.k;
        if (arrayList5 != null) {
            int size = arrayList5.size();
            for (int i = 0; i < size; i++) {
                if (this.k.get(i).isInstance(view)) {
                    return false;
                }
            }
        }
        if (this.l != null && d.g.m.s.u(view) != null && this.l.contains(d.g.m.s.u(view))) {
            return false;
        }
        if ((this.f2280e.size() == 0 && this.f2281f.size() == 0 && (((arrayList = this.h) == null || arrayList.isEmpty()) && ((arrayList2 = this.f2282g) == null || arrayList2.isEmpty()))) || this.f2280e.contains(java.lang.Integer.valueOf(id)) || this.f2281f.contains(view)) {
            return true;
        }
        java.util.ArrayList<java.lang.String> arrayList6 = this.f2282g;
        if (arrayList6 != null && arrayList6.contains(d.g.m.s.u(view))) {
            return true;
        }
        if (this.h != null) {
            for (int i2 = 0; i2 < this.h.size(); i2++) {
                if (this.h.get(i2).isInstance(view)) {
                    return true;
                }
            }
        }
        return false;
    }

    public java.lang.String toString() {
        return G("");
    }

    public void u(android.view.View view) {
        int i;
        if (this.z) {
            return;
        }
        d.e.a<android.animation.Animator, d.s.k.b> aVarO = o();
        int i2 = aVarO.f1912c;
        d.s.l0 l0VarC = d.s.c0.c(view);
        int i3 = i2 - 1;
        while (true) {
            i = 0;
            if (i3 < 0) {
                break;
            }
            d.s.k.b bVarK = aVarO.k(i3);
            if (bVarK.a != null && l0VarC.equals(bVarK.f2284d)) {
                android.animation.Animator animatorH = aVarO.h(i3);
                if (android.os.Build.VERSION.SDK_INT >= 19) {
                    animatorH.pause();
                } else {
                    java.util.ArrayList<android.animation.Animator.AnimatorListener> listeners = animatorH.getListeners();
                    if (listeners != null) {
                        int size = listeners.size();
                        while (i < size) {
                            android.animation.Animator.AnimatorListener animatorListener = listeners.get(i);
                            if (animatorListener instanceof d.s.a) {
                                ((d.s.a) animatorListener).onAnimationPause(animatorH);
                            }
                            i++;
                        }
                    }
                }
            }
            i3--;
        }
        java.util.ArrayList<d.s.k.d> arrayList = this.A;
        if (arrayList != null && arrayList.size() > 0) {
            java.util.ArrayList arrayList2 = (java.util.ArrayList) this.A.clone();
            int size2 = arrayList2.size();
            while (i < size2) {
                ((d.s.k.d) arrayList2.get(i)).b(this);
                i++;
            }
        }
        this.y = true;
    }

    public d.s.k v(d.s.k.d dVar) {
        java.util.ArrayList<d.s.k.d> arrayList = this.A;
        if (arrayList == null) {
            return this;
        }
        arrayList.remove(dVar);
        if (this.A.size() == 0) {
            this.A = null;
        }
        return this;
    }

    public d.s.k w(android.view.View view) {
        this.f2281f.remove(view);
        return this;
    }

    public void x(android.view.View view) {
        if (this.y) {
            if (!this.z) {
                d.e.a<android.animation.Animator, d.s.k.b> aVarO = o();
                int i = aVarO.f1912c;
                d.s.l0 l0VarC = d.s.c0.c(view);
                for (int i2 = i - 1; i2 >= 0; i2--) {
                    d.s.k.b bVarK = aVarO.k(i2);
                    if (bVarK.a != null && l0VarC.equals(bVarK.f2284d)) {
                        android.animation.Animator animatorH = aVarO.h(i2);
                        if (android.os.Build.VERSION.SDK_INT >= 19) {
                            animatorH.resume();
                        } else {
                            java.util.ArrayList<android.animation.Animator.AnimatorListener> listeners = animatorH.getListeners();
                            if (listeners != null) {
                                int size = listeners.size();
                                for (int i3 = 0; i3 < size; i3++) {
                                    android.animation.Animator.AnimatorListener animatorListener = listeners.get(i3);
                                    if (animatorListener instanceof d.s.a) {
                                        ((d.s.a) animatorListener).onAnimationResume(animatorH);
                                    }
                                }
                            }
                        }
                    }
                }
                java.util.ArrayList<d.s.k.d> arrayList = this.A;
                if (arrayList != null && arrayList.size() > 0) {
                    java.util.ArrayList arrayList2 = (java.util.ArrayList) this.A.clone();
                    int size2 = arrayList2.size();
                    for (int i4 = 0; i4 < size2; i4++) {
                        ((d.s.k.d) arrayList2.get(i4)).c(this);
                    }
                }
            }
            this.y = false;
        }
    }

    public void y() {
        F();
        d.e.a<android.animation.Animator, d.s.k.b> aVarO = o();
        java.util.Iterator<android.animation.Animator> it = this.B.iterator();
        while (it.hasNext()) {
            android.animation.Animator next = it.next();
            if (aVarO.containsKey(next)) {
                F();
                if (next != null) {
                    next.addListener(new d.s.l(this, aVarO));
                    long j = this.f2278c;
                    if (j >= 0) {
                        next.setDuration(j);
                    }
                    long j2 = this.b;
                    if (j2 >= 0) {
                        next.setStartDelay(j2);
                    }
                    android.animation.TimeInterpolator timeInterpolator = this.f2279d;
                    if (timeInterpolator != null) {
                        next.setInterpolator(timeInterpolator);
                    }
                    next.addListener(new d.s.m(this));
                    next.start();
                }
            }
        }
        this.B.clear();
        m();
    }

    public d.s.k z(long j) {
        this.f2278c = j;
        return this;
    }
}
