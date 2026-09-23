package d.j.d;

/* loaded from: classes.dex */
public class c extends d.j.d.u0 {

    public class a implements java.lang.Runnable {
        public final /* synthetic */ java.util.List a;
        public final /* synthetic */ d.j.d.u0.d b;

        public a(java.util.List list, d.j.d.u0.d dVar) {
            this.a = list;
            this.b = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.a.contains(this.b)) {
                this.a.remove(this.b);
                d.j.d.c cVar = d.j.d.c.this;
                d.j.d.u0.d dVar = this.b;
                if (cVar == null) {
                    throw null;
                }
                dVar.a.a(dVar.f2135c.mView);
            }
        }
    }

    public static class b extends d.j.d.c.C0053c {

        /* renamed from: c, reason: collision with root package name */
        public boolean f2060c;

        /* renamed from: d, reason: collision with root package name */
        public d.j.d.p f2061d;

        public b(d.j.d.u0.d dVar, d.g.i.a aVar) {
            super(dVar, aVar);
            this.f2060c = false;
        }

        public d.j.d.p c(android.content.Context context) throws android.content.res.Resources.NotFoundException {
            if (this.f2060c) {
                return this.f2061d;
            }
            d.j.d.u0.d dVar = this.a;
            d.j.d.p pVarU = d.b.k.r.U(context, dVar.f2135c, dVar.a == d.j.d.u0.d.c.VISIBLE);
            this.f2061d = pVarU;
            this.f2060c = true;
            return pVarU;
        }
    }

    /* renamed from: d.j.d.c$c, reason: collision with other inner class name */
    public static class C0053c {
        public final d.j.d.u0.d a;
        public final d.g.i.a b;

        public C0053c(d.j.d.u0.d dVar, d.g.i.a aVar) {
            this.a = dVar;
            this.b = aVar;
        }

        public void a() {
            d.j.d.u0.d dVar = this.a;
            if (dVar.f2137e.remove(this.b) && dVar.f2137e.isEmpty()) {
                dVar.b();
            }
        }

        public boolean b() {
            d.j.d.u0.d.c cVar;
            d.j.d.u0.d.c cVarC = d.j.d.u0.d.c.c(this.a.f2135c.mView);
            d.j.d.u0.d.c cVar2 = this.a.a;
            return cVarC == cVar2 || !(cVarC == (cVar = d.j.d.u0.d.c.VISIBLE) || cVar2 == cVar);
        }
    }

    public static class d extends d.j.d.c.C0053c {

        /* renamed from: c, reason: collision with root package name */
        public final java.lang.Object f2062c;

        /* renamed from: d, reason: collision with root package name */
        public final boolean f2063d;

        /* renamed from: e, reason: collision with root package name */
        public final java.lang.Object f2064e;

        public d(d.j.d.u0.d dVar, d.g.i.a aVar, boolean z, boolean z2) {
            boolean allowReturnTransitionOverlap;
            super(dVar, aVar);
            if (dVar.a == d.j.d.u0.d.c.VISIBLE) {
                this.f2062c = z ? dVar.f2135c.getReenterTransition() : dVar.f2135c.getEnterTransition();
                allowReturnTransitionOverlap = z ? dVar.f2135c.getAllowReturnTransitionOverlap() : dVar.f2135c.getAllowEnterTransitionOverlap();
            } else {
                this.f2062c = z ? dVar.f2135c.getReturnTransition() : dVar.f2135c.getExitTransition();
                allowReturnTransitionOverlap = true;
            }
            this.f2063d = allowReturnTransitionOverlap;
            this.f2064e = z2 ? z ? dVar.f2135c.getSharedElementReturnTransition() : dVar.f2135c.getSharedElementEnterTransition() : null;
        }

        public final d.j.d.p0 c(java.lang.Object obj) {
            if (obj == null) {
                return null;
            }
            d.j.d.p0 p0Var = d.j.d.n0.b;
            if (p0Var != null && p0Var.e(obj)) {
                return d.j.d.n0.b;
            }
            d.j.d.p0 p0Var2 = d.j.d.n0.f2112c;
            if (p0Var2 != null && p0Var2.e(obj)) {
                return d.j.d.n0.f2112c;
            }
            throw new java.lang.IllegalArgumentException("Transition " + obj + " for fragment " + this.a.f2135c + " is not a valid framework Transition or AndroidX Transition");
        }
    }

    public c(android.view.ViewGroup viewGroup) {
        super(viewGroup);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // d.j.d.u0
    public void b(java.util.List<d.j.d.u0.d> list, boolean z) throws android.content.res.Resources.NotFoundException {
        java.util.ArrayList arrayList;
        java.util.ArrayList arrayList2;
        java.util.HashMap map;
        d.j.d.u0.d.c cVar;
        java.lang.String str;
        java.lang.String str2;
        java.util.Iterator it;
        java.lang.Object obj;
        java.lang.Object objM;
        d.j.d.u0.d.c cVar2;
        android.view.View view;
        d.j.d.u0.d.c cVar3;
        android.view.View view2;
        android.graphics.Rect rect;
        d.j.d.u0.d.c cVar4;
        d.j.d.u0.d.c cVar5;
        d.j.d.u0.d dVar;
        java.util.ArrayList arrayList3;
        d.e.a aVar;
        java.util.HashMap map2;
        java.lang.String str3;
        java.util.ArrayList<android.view.View> arrayList4;
        java.util.ArrayList<android.view.View> arrayList5;
        android.view.View view3;
        d.j.d.p0 p0Var;
        d.j.d.u0.d dVar2;
        d.g.e.n enterTransitionCallback;
        d.g.e.n exitTransitionCallback;
        android.view.View view4;
        android.view.View view5;
        java.lang.StringBuilder sb;
        java.lang.String str4;
        d.j.d.p pVarC;
        boolean z2 = z;
        d.j.d.u0.d.c cVar6 = d.j.d.u0.d.c.GONE;
        d.j.d.u0.d.c cVar7 = d.j.d.u0.d.c.VISIBLE;
        d.j.d.u0.d dVar3 = null;
        d.j.d.u0.d dVar4 = null;
        for (d.j.d.u0.d dVar5 : list) {
            d.j.d.u0.d.c cVarC = d.j.d.u0.d.c.c(dVar5.f2135c.mView);
            int iOrdinal = dVar5.a.ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal != 1) {
                    if (iOrdinal == 2 || iOrdinal == 3) {
                    }
                } else if (cVarC != cVar7) {
                    dVar4 = dVar5;
                }
            }
            if (cVarC == cVar7 && dVar3 == null) {
                dVar3 = dVar5;
            }
        }
        java.util.ArrayList arrayList6 = new java.util.ArrayList();
        java.util.ArrayList arrayList7 = new java.util.ArrayList();
        java.util.ArrayList arrayList8 = new java.util.ArrayList(list);
        java.util.Iterator<d.j.d.u0.d> it2 = list.iterator();
        while (it2.hasNext()) {
            d.j.d.u0.d next = it2.next();
            d.g.i.a aVar2 = new d.g.i.a();
            next.d();
            next.f2137e.add(aVar2);
            arrayList6.add(new d.j.d.c.b(next, aVar2));
            d.g.i.a aVar3 = new d.g.i.a();
            next.d();
            next.f2137e.add(aVar3);
            arrayList7.add(new d.j.d.c.d(next, aVar3, z2, !z2 ? next != dVar4 : next != dVar3));
            next.f2136d.add(new d.j.d.c.a(arrayList8, next));
        }
        java.util.HashMap map3 = new java.util.HashMap();
        java.util.Iterator it3 = arrayList7.iterator();
        d.j.d.p0 p0Var2 = null;
        while (it3.hasNext()) {
            d.j.d.c.d dVar6 = (d.j.d.c.d) it3.next();
            if (!dVar6.b()) {
                d.j.d.p0 p0VarC = dVar6.c(dVar6.f2062c);
                d.j.d.p0 p0VarC2 = dVar6.c(dVar6.f2064e);
                if (p0VarC != null && p0VarC2 != null && p0VarC != p0VarC2) {
                    java.lang.StringBuilder sbO = e.a.c.a.a.o("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
                    sbO.append(dVar6.a.f2135c);
                    sbO.append(" returned Transition ");
                    sbO.append(dVar6.f2062c);
                    sbO.append(" which uses a different Transition  type than its shared element transition ");
                    sbO.append(dVar6.f2064e);
                    throw new java.lang.IllegalArgumentException(sbO.toString());
                }
                if (p0VarC == null) {
                    p0VarC = p0VarC2;
                }
                if (p0Var2 == null) {
                    p0Var2 = p0VarC;
                } else if (p0VarC != null && p0Var2 != p0VarC) {
                    java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Mixing framework transitions and AndroidX transitions is not allowed. Fragment ");
                    sbO2.append(dVar6.a.f2135c);
                    sbO2.append(" returned Transition ");
                    sbO2.append(dVar6.f2062c);
                    sbO2.append(" which uses a different Transition  type than other Fragments.");
                    throw new java.lang.IllegalArgumentException(sbO2.toString());
                }
            }
        }
        java.lang.String str5 = "FragmentManager";
        if (p0Var2 == null) {
            java.util.Iterator it4 = arrayList7.iterator();
            while (it4.hasNext()) {
                d.j.d.c.d dVar7 = (d.j.d.c.d) it4.next();
                map3.put(dVar7.a, java.lang.Boolean.FALSE);
                dVar7.a();
            }
            str = "FragmentManager";
            arrayList2 = arrayList6;
            arrayList = arrayList8;
            cVar = cVar6;
            map = map3;
        } else {
            android.view.View view6 = new android.view.View(this.a.getContext());
            android.graphics.Rect rect2 = new android.graphics.Rect();
            java.util.ArrayList<android.view.View> arrayList9 = new java.util.ArrayList<>();
            java.util.ArrayList<android.view.View> arrayList10 = new java.util.ArrayList<>();
            arrayList = arrayList8;
            d.e.a aVar4 = new d.e.a();
            java.util.Iterator it5 = arrayList7.iterator();
            android.graphics.Rect rect3 = rect2;
            arrayList2 = arrayList6;
            java.lang.Object obj2 = null;
            android.view.View view7 = null;
            boolean z3 = false;
            android.view.View view8 = view6;
            d.j.d.u0.d dVar8 = dVar4;
            while (it5.hasNext()) {
                java.lang.String str6 = str5;
                d.j.d.c.d dVar9 = (d.j.d.c.d) it5.next();
                android.view.View view9 = view7;
                if (!(dVar9.f2064e != null) || dVar3 == null || dVar8 == null) {
                    rect = rect3;
                    cVar4 = cVar6;
                    cVar5 = cVar7;
                    dVar = dVar4;
                    arrayList3 = arrayList7;
                    aVar = aVar4;
                    map2 = map3;
                    str3 = str6;
                    arrayList4 = arrayList10;
                    arrayList5 = arrayList9;
                    view3 = view8;
                    d.j.d.u0.d dVar10 = dVar3;
                    p0Var = p0Var2;
                    dVar2 = dVar10;
                    view7 = view9;
                } else {
                    java.lang.Object objY = p0Var2.y(p0Var2.g(dVar9.f2064e));
                    java.util.ArrayList<java.lang.String> sharedElementSourceNames = dVar8.f2135c.getSharedElementSourceNames();
                    java.util.ArrayList<java.lang.String> sharedElementSourceNames2 = dVar3.f2135c.getSharedElementSourceNames();
                    d.j.d.p0 p0Var3 = p0Var2;
                    java.util.ArrayList<java.lang.String> sharedElementTargetNames = dVar3.f2135c.getSharedElementTargetNames();
                    cVar4 = cVar6;
                    cVar5 = cVar7;
                    int i = 0;
                    while (i < sharedElementTargetNames.size()) {
                        int iIndexOf = sharedElementSourceNames.indexOf(sharedElementTargetNames.get(i));
                        java.util.ArrayList<java.lang.String> arrayList11 = sharedElementTargetNames;
                        if (iIndexOf != -1) {
                            sharedElementSourceNames.set(iIndexOf, sharedElementSourceNames2.get(i));
                        }
                        i++;
                        sharedElementTargetNames = arrayList11;
                    }
                    java.util.ArrayList<java.lang.String> sharedElementTargetNames2 = dVar8.f2135c.getSharedElementTargetNames();
                    if (z2) {
                        enterTransitionCallback = dVar3.f2135c.getEnterTransitionCallback();
                        exitTransitionCallback = dVar8.f2135c.getExitTransitionCallback();
                    } else {
                        enterTransitionCallback = dVar3.f2135c.getExitTransitionCallback();
                        exitTransitionCallback = dVar8.f2135c.getEnterTransitionCallback();
                    }
                    int size = sharedElementSourceNames.size();
                    arrayList3 = arrayList7;
                    int i2 = 0;
                    while (i2 < size) {
                        aVar4.put(sharedElementSourceNames.get(i2), sharedElementTargetNames2.get(i2));
                        i2++;
                        size = size;
                        map3 = map3;
                    }
                    java.util.HashMap map4 = map3;
                    d.e.a<java.lang.String, android.view.View> aVar5 = new d.e.a<>();
                    k(aVar5, dVar3.f2135c.mView);
                    d.e.g.k(aVar5, sharedElementSourceNames);
                    if (enterTransitionCallback != null) {
                        throw null;
                    }
                    d.e.g.k(aVar4, aVar5.keySet());
                    d.e.a<java.lang.String, android.view.View> aVar6 = new d.e.a<>();
                    k(aVar6, dVar8.f2135c.mView);
                    d.e.g.k(aVar6, sharedElementTargetNames2);
                    d.e.g.k(aVar6, aVar4.values());
                    if (exitTransitionCallback != null) {
                        throw null;
                    }
                    d.j.d.n0.n(aVar4, aVar6);
                    l(aVar5, aVar4.keySet());
                    l(aVar6, aVar4.values());
                    if (aVar4.isEmpty()) {
                        arrayList9.clear();
                        arrayList10.clear();
                        obj2 = null;
                        rect = rect3;
                        dVar2 = dVar3;
                        dVar = dVar4;
                        aVar = aVar4;
                        p0Var = p0Var3;
                        str3 = str6;
                        view7 = view9;
                        map2 = map4;
                        arrayList4 = arrayList10;
                        arrayList5 = arrayList9;
                        view3 = view8;
                    } else {
                        d.j.d.n0.c(dVar8.f2135c, dVar3.f2135c, z2, aVar5, true);
                        android.graphics.Rect rect4 = rect3;
                        aVar = aVar4;
                        arrayList5 = arrayList9;
                        d.j.d.u0.d dVar11 = dVar4;
                        d.j.d.u0.d dVar12 = dVar4;
                        android.view.View view10 = view8;
                        arrayList4 = arrayList10;
                        d.j.d.u0.d dVar13 = dVar3;
                        str3 = str6;
                        d.j.d.u0.d dVar14 = dVar3;
                        p0Var = p0Var3;
                        d.g.m.m.a(this.a, new d.j.d.h(this, dVar11, dVar13, z, aVar6));
                        java.util.Iterator it6 = ((d.e.g.e) aVar5.values()).iterator();
                        while (true) {
                            d.e.g.a aVar7 = (d.e.g.a) it6;
                            if (!aVar7.hasNext()) {
                                break;
                            } else {
                                j(arrayList5, (android.view.View) aVar7.next());
                            }
                        }
                        if (sharedElementSourceNames.isEmpty()) {
                            view4 = view9;
                        } else {
                            view4 = (android.view.View) aVar5.get(sharedElementSourceNames.get(0));
                            p0Var.t(objY, view4);
                        }
                        java.util.Iterator it7 = ((d.e.g.e) aVar6.values()).iterator();
                        while (true) {
                            d.e.g.a aVar8 = (d.e.g.a) it7;
                            if (!aVar8.hasNext()) {
                                break;
                            } else {
                                j(arrayList4, (android.view.View) aVar8.next());
                            }
                        }
                        if (sharedElementTargetNames2.isEmpty() || (view5 = (android.view.View) aVar6.get(sharedElementTargetNames2.get(0))) == null) {
                            rect = rect4;
                            view3 = view10;
                        } else {
                            rect = rect4;
                            d.g.m.m.a(this.a, new d.j.d.i(this, p0Var, view5, rect));
                            view3 = view10;
                            z3 = true;
                        }
                        p0Var.w(objY, view3, arrayList5);
                        p0Var.r(objY, null, null, null, null, objY, arrayList4);
                        map2 = map4;
                        dVar2 = dVar14;
                        map2.put(dVar2, java.lang.Boolean.TRUE);
                        dVar = dVar12;
                        map2.put(dVar, java.lang.Boolean.TRUE);
                        dVar8 = dVar;
                        obj2 = objY;
                        view7 = view4;
                    }
                }
                view8 = view3;
                map3 = map2;
                arrayList10 = arrayList4;
                arrayList9 = arrayList5;
                cVar7 = cVar5;
                cVar6 = cVar4;
                arrayList7 = arrayList3;
                aVar4 = aVar;
                rect3 = rect;
                dVar4 = dVar;
                str5 = str3;
                z2 = z;
                d.j.d.p0 p0Var4 = p0Var;
                dVar3 = dVar2;
                p0Var2 = p0Var4;
            }
            java.lang.String str7 = str5;
            d.j.d.u0.d.c cVar8 = cVar6;
            d.j.d.u0.d.c cVar9 = cVar7;
            d.j.d.u0.d dVar15 = dVar4;
            android.view.View view11 = view7;
            java.util.ArrayList arrayList12 = arrayList7;
            map = map3;
            android.graphics.Rect rect5 = rect3;
            java.util.ArrayList<android.view.View> arrayList13 = arrayList10;
            d.e.a aVar9 = aVar4;
            java.util.ArrayList<android.view.View> arrayList14 = arrayList9;
            android.view.View view12 = view8;
            d.j.d.u0.d dVar16 = dVar3;
            d.j.d.p0 p0Var5 = p0Var2;
            java.util.ArrayList arrayList15 = new java.util.ArrayList();
            java.util.Iterator it8 = arrayList12.iterator();
            java.lang.Object obj3 = null;
            java.lang.Object objM2 = null;
            while (it8.hasNext()) {
                d.j.d.c.d dVar17 = (d.j.d.c.d) it8.next();
                if (dVar17.b()) {
                    map.put(dVar17.a, java.lang.Boolean.FALSE);
                    dVar17.a();
                    it8 = it8;
                    dVar15 = dVar15;
                } else {
                    d.j.d.u0.d dVar18 = dVar15;
                    java.util.Iterator it9 = it8;
                    java.lang.Object objG = p0Var5.g(dVar17.f2062c);
                    d.j.d.u0.d dVar19 = dVar17.a;
                    boolean z4 = obj2 != null && (dVar19 == dVar16 || dVar19 == dVar8);
                    if (objG == null) {
                        if (!z4) {
                            map.put(dVar19, java.lang.Boolean.FALSE);
                            dVar17.a();
                        }
                        view = view12;
                        obj = obj2;
                        objM = obj3;
                        view2 = view11;
                        cVar3 = cVar9;
                        cVar2 = cVar8;
                    } else {
                        obj = obj2;
                        java.util.ArrayList<android.view.View> arrayList16 = new java.util.ArrayList<>();
                        objM = obj3;
                        j(arrayList16, dVar19.f2135c.mView);
                        if (z4) {
                            if (dVar19 == dVar16) {
                                arrayList16.removeAll(arrayList14);
                            } else {
                                arrayList16.removeAll(arrayList13);
                            }
                        }
                        if (arrayList16.isEmpty()) {
                            p0Var5.a(objG, view12);
                            view = view12;
                            cVar2 = cVar8;
                        } else {
                            p0Var5.b(objG, arrayList16);
                            p0Var5.r(objG, objG, arrayList16, null, null, null, null);
                            cVar2 = cVar8;
                            if (dVar19.a == cVar2) {
                                p0Var5.q(objG, dVar19.f2135c.mView, arrayList16);
                                view = view12;
                                d.g.m.m.a(this.a, new d.j.d.j(this, arrayList16));
                            } else {
                                view = view12;
                            }
                        }
                        cVar3 = cVar9;
                        if (dVar19.a == cVar3) {
                            arrayList15.addAll(arrayList16);
                            if (z3) {
                                p0Var5.s(objG, rect5);
                            }
                            view2 = view11;
                        } else {
                            view2 = view11;
                            p0Var5.t(objG, view2);
                        }
                        map.put(dVar19, java.lang.Boolean.TRUE);
                        if (dVar17.f2063d) {
                            objM2 = p0Var5.m(objM2, objG, null);
                        } else {
                            objM = p0Var5.m(objM, objG, null);
                        }
                    }
                    it8 = it9;
                    view11 = view2;
                    cVar9 = cVar3;
                    cVar8 = cVar2;
                    obj2 = obj;
                    obj3 = objM;
                    dVar8 = dVar18;
                    dVar15 = dVar8;
                    view12 = view;
                }
            }
            d.j.d.u0.d dVar20 = dVar15;
            java.lang.Object obj4 = obj3;
            cVar = cVar8;
            java.lang.Object objL = p0Var5.l(objM2, obj4, obj2);
            java.util.Iterator it10 = arrayList12.iterator();
            while (it10.hasNext()) {
                d.j.d.c.d dVar21 = (d.j.d.c.d) it10.next();
                if (!dVar21.b()) {
                    java.lang.Object obj5 = dVar21.f2062c;
                    d.j.d.u0.d dVar22 = dVar21.a;
                    d.j.d.u0.d dVar23 = dVar20;
                    boolean z5 = obj2 != null && (dVar22 == dVar16 || dVar22 == dVar23);
                    if (obj5 == null && !z5) {
                        it = it10;
                        str2 = str7;
                    } else if (d.g.m.s.A(this.a)) {
                        str2 = str7;
                        it = it10;
                        p0Var5.u(dVar21.a.f2135c, objL, dVar21.b, new d.j.d.k(this, dVar21));
                    } else {
                        if (d.j.d.y.M(2)) {
                            java.lang.StringBuilder sbO3 = e.a.c.a.a.o("SpecialEffectsController: Container ");
                            sbO3.append(this.a);
                            sbO3.append(" has not been laid out. Completing operation ");
                            sbO3.append(dVar22);
                            str2 = str7;
                            android.util.Log.v(str2, sbO3.toString());
                        } else {
                            str2 = str7;
                        }
                        dVar21.a();
                        it = it10;
                    }
                    it10 = it;
                    str7 = str2;
                    dVar20 = dVar23;
                }
            }
            str = str7;
            if (d.g.m.s.A(this.a)) {
                d.j.d.n0.p(arrayList15, 4);
                java.util.ArrayList<java.lang.String> arrayListN = p0Var5.n(arrayList13);
                p0Var5.c(this.a, objL);
                p0Var5.v(this.a, arrayList14, arrayList13, arrayListN, aVar9);
                d.j.d.n0.p(arrayList15, 0);
                p0Var5.x(obj2, arrayList14, arrayList13);
            }
        }
        boolean zContainsValue = map.containsValue(java.lang.Boolean.TRUE);
        android.view.ViewGroup viewGroup = this.a;
        android.content.Context context = viewGroup.getContext();
        java.util.ArrayList arrayList17 = new java.util.ArrayList();
        java.util.Iterator it11 = arrayList2.iterator();
        boolean z6 = false;
        while (it11.hasNext()) {
            d.j.d.c.b bVar = (d.j.d.c.b) it11.next();
            if (!bVar.b() && (pVarC = bVar.c(context)) != null) {
                android.animation.Animator animator = pVarC.b;
                if (animator == null) {
                    arrayList17.add(bVar);
                } else {
                    d.j.d.u0.d dVar24 = bVar.a;
                    androidx.fragment.app.Fragment fragment = dVar24.f2135c;
                    if (!java.lang.Boolean.TRUE.equals(map.get(dVar24))) {
                        boolean z7 = dVar24.a == cVar;
                        java.util.ArrayList arrayList18 = arrayList;
                        if (z7) {
                            arrayList18.remove(dVar24);
                        }
                        android.view.View view13 = fragment.mView;
                        viewGroup.startViewTransition(view13);
                        animator.addListener(new d.j.d.d(this, viewGroup, view13, z7, dVar24, bVar));
                        animator.setTarget(view13);
                        animator.start();
                        bVar.b.b(new d.j.d.e(this, animator));
                        z6 = true;
                        arrayList = arrayList18;
                        cVar = cVar;
                        map = map;
                    } else if (d.j.d.y.M(2)) {
                        android.util.Log.v(str, "Ignoring Animator set on " + fragment + " as this Fragment was involved in a Transition.");
                    }
                }
            }
            bVar.a();
        }
        java.util.ArrayList arrayList19 = arrayList;
        java.util.Iterator it12 = arrayList17.iterator();
        while (it12.hasNext()) {
            d.j.d.c.b bVar2 = (d.j.d.c.b) it12.next();
            d.j.d.u0.d dVar25 = bVar2.a;
            androidx.fragment.app.Fragment fragment2 = dVar25.f2135c;
            if (zContainsValue) {
                if (d.j.d.y.M(2)) {
                    sb = new java.lang.StringBuilder();
                    sb.append("Ignoring Animation set on ");
                    sb.append(fragment2);
                    str4 = " as Animations cannot run alongside Transitions.";
                    sb.append(str4);
                    android.util.Log.v(str, sb.toString());
                }
                bVar2.a();
            } else if (z6) {
                if (d.j.d.y.M(2)) {
                    sb = new java.lang.StringBuilder();
                    sb.append("Ignoring Animation set on ");
                    sb.append(fragment2);
                    str4 = " as Animations cannot run alongside Animators.";
                    sb.append(str4);
                    android.util.Log.v(str, sb.toString());
                }
                bVar2.a();
            } else {
                android.view.View view14 = fragment2.mView;
                d.j.d.p pVarC2 = bVar2.c(context);
                d.b.k.r.e(pVarC2);
                android.view.animation.Animation animation = pVarC2.a;
                d.b.k.r.e(animation);
                if (dVar25.a != d.j.d.u0.d.c.REMOVED) {
                    view14.startAnimation(animation);
                    bVar2.a();
                } else {
                    viewGroup.startViewTransition(view14);
                    d.j.d.q qVar = new d.j.d.q(animation, viewGroup, view14);
                    qVar.setAnimationListener(new d.j.d.f(this, viewGroup, view14, bVar2));
                    view14.startAnimation(qVar);
                }
                bVar2.b.b(new d.j.d.g(this, view14, viewGroup, bVar2));
            }
        }
        java.util.Iterator it13 = arrayList19.iterator();
        while (it13.hasNext()) {
            d.j.d.u0.d dVar26 = (d.j.d.u0.d) it13.next();
            dVar26.a.a(dVar26.f2135c.mView);
        }
        arrayList19.clear();
    }

    public void j(java.util.ArrayList<android.view.View> arrayList, android.view.View view) {
        boolean z = view instanceof android.view.ViewGroup;
        android.view.View view2 = view;
        if (z) {
            android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
            boolean zT = d.b.k.r.T(viewGroup);
            view2 = viewGroup;
            if (!zT) {
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    android.view.View childAt = viewGroup.getChildAt(i);
                    if (childAt.getVisibility() == 0) {
                        j(arrayList, childAt);
                    }
                }
                return;
            }
        }
        arrayList.add(view2);
    }

    public void k(java.util.Map<java.lang.String, android.view.View> map, android.view.View view) {
        java.lang.String strU = d.g.m.s.u(view);
        if (strU != null) {
            map.put(strU, view);
        }
        if (view instanceof android.view.ViewGroup) {
            android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                android.view.View childAt = viewGroup.getChildAt(i);
                if (childAt.getVisibility() == 0) {
                    k(map, childAt);
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void l(d.e.a<java.lang.String, android.view.View> aVar, java.util.Collection<java.lang.String> collection) {
        java.util.Iterator it = ((d.e.g.b) aVar.entrySet()).iterator();
        while (true) {
            d.e.g.d dVar = (d.e.g.d) it;
            if (!dVar.hasNext()) {
                return;
            }
            dVar.next();
            if (!collection.contains(d.g.m.s.u((android.view.View) dVar.getValue()))) {
                dVar.remove();
            }
        }
    }
}
