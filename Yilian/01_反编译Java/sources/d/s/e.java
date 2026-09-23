package d.s;

/* loaded from: classes.dex */
public class e extends d.j.d.p0 {

    public class a extends d.s.k.c {
        public a(d.s.e eVar, android.graphics.Rect rect) {
        }
    }

    public class b implements d.s.k.d {
        public final /* synthetic */ android.view.View a;
        public final /* synthetic */ java.util.ArrayList b;

        public b(d.s.e eVar, android.view.View view, java.util.ArrayList arrayList) {
            this.a = view;
            this.b = arrayList;
        }

        @Override // d.s.k.d
        public void a(d.s.k kVar) {
        }

        @Override // d.s.k.d
        public void b(d.s.k kVar) {
        }

        @Override // d.s.k.d
        public void c(d.s.k kVar) {
        }

        @Override // d.s.k.d
        public void d(d.s.k kVar) {
            kVar.v(this);
            this.a.setVisibility(8);
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                ((android.view.View) this.b.get(i)).setVisibility(0);
            }
        }
    }

    public class c implements d.s.k.d {
        public final /* synthetic */ java.lang.Object a;
        public final /* synthetic */ java.util.ArrayList b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f2258c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f2259d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f2260e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f2261f;

        public c(java.lang.Object obj, java.util.ArrayList arrayList, java.lang.Object obj2, java.util.ArrayList arrayList2, java.lang.Object obj3, java.util.ArrayList arrayList3) {
            this.a = obj;
            this.b = arrayList;
            this.f2258c = obj2;
            this.f2259d = arrayList2;
            this.f2260e = obj3;
            this.f2261f = arrayList3;
        }

        @Override // d.s.k.d
        public void a(d.s.k kVar) {
            java.lang.Object obj = this.a;
            if (obj != null) {
                d.s.e.this.p(obj, this.b, null);
            }
            java.lang.Object obj2 = this.f2258c;
            if (obj2 != null) {
                d.s.e.this.p(obj2, this.f2259d, null);
            }
            java.lang.Object obj3 = this.f2260e;
            if (obj3 != null) {
                d.s.e.this.p(obj3, this.f2261f, null);
            }
        }

        @Override // d.s.k.d
        public void b(d.s.k kVar) {
        }

        @Override // d.s.k.d
        public void c(d.s.k kVar) {
        }

        @Override // d.s.k.d
        public void d(d.s.k kVar) {
        }
    }

    public class d extends d.s.k.c {
        public d(d.s.e eVar, android.graphics.Rect rect) {
        }
    }

    public static boolean z(d.s.k kVar) {
        return (d.j.d.p0.k(kVar.f2280e) && d.j.d.p0.k(kVar.f2282g) && d.j.d.p0.k(kVar.h)) ? false : true;
    }

    @Override // d.j.d.p0
    public void a(java.lang.Object obj, android.view.View view) {
        if (obj != null) {
            ((d.s.k) obj).b(view);
        }
    }

    @Override // d.j.d.p0
    public void b(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList) {
        d.s.k kVar = (d.s.k) obj;
        if (kVar == null) {
            return;
        }
        int i = 0;
        if (kVar instanceof d.s.q) {
            d.s.q qVar = (d.s.q) kVar;
            int size = qVar.J.size();
            while (i < size) {
                b(qVar.I(i), arrayList);
                i++;
            }
            return;
        }
        if (z(kVar) || !d.j.d.p0.k(kVar.f2281f)) {
            return;
        }
        int size2 = arrayList.size();
        while (i < size2) {
            kVar.b(arrayList.get(i));
            i++;
        }
    }

    @Override // d.j.d.p0
    public void c(android.view.ViewGroup viewGroup, java.lang.Object obj) {
        d.s.k kVar = (d.s.k) obj;
        if (d.s.o.f2286c.contains(viewGroup) || !d.g.m.s.A(viewGroup)) {
            return;
        }
        d.s.o.f2286c.add(viewGroup);
        if (kVar == null) {
            kVar = d.s.o.a;
        }
        d.s.k kVarClone = kVar.clone();
        java.util.ArrayList<d.s.k> orDefault = d.s.o.a().getOrDefault(viewGroup, null);
        if (orDefault != null && orDefault.size() > 0) {
            java.util.Iterator<d.s.k> it = orDefault.iterator();
            while (it.hasNext()) {
                it.next().u(viewGroup);
            }
        }
        if (kVarClone != null) {
            kVarClone.h(viewGroup, true);
        }
        if (((d.s.j) viewGroup.getTag(d.s.h.transition_current_scene)) != null) {
            throw null;
        }
        viewGroup.setTag(d.s.h.transition_current_scene, null);
        if (kVarClone != null) {
            d.s.o.a aVar = new d.s.o.a(kVarClone, viewGroup);
            viewGroup.addOnAttachStateChangeListener(aVar);
            viewGroup.getViewTreeObserver().addOnPreDrawListener(aVar);
        }
    }

    @Override // d.j.d.p0
    public boolean e(java.lang.Object obj) {
        return obj instanceof d.s.k;
    }

    @Override // d.j.d.p0
    public java.lang.Object g(java.lang.Object obj) {
        if (obj != null) {
            return ((d.s.k) obj).clone();
        }
        return null;
    }

    @Override // d.j.d.p0
    public java.lang.Object l(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        d.s.k kVar = (d.s.k) obj;
        d.s.k kVar2 = (d.s.k) obj2;
        d.s.k kVar3 = (d.s.k) obj3;
        if (kVar != null && kVar2 != null) {
            d.s.q qVar = new d.s.q();
            qVar.H(kVar);
            qVar.H(kVar2);
            qVar.J(1);
            kVar = qVar;
        } else if (kVar == null) {
            kVar = kVar2 != null ? kVar2 : null;
        }
        if (kVar3 == null) {
            return kVar;
        }
        d.s.q qVar2 = new d.s.q();
        if (kVar != null) {
            qVar2.H(kVar);
        }
        qVar2.H(kVar3);
        return qVar2;
    }

    @Override // d.j.d.p0
    public java.lang.Object m(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        d.s.q qVar = new d.s.q();
        if (obj != null) {
            qVar.H((d.s.k) obj);
        }
        if (obj2 != null) {
            qVar.H((d.s.k) obj2);
        }
        if (obj3 != null) {
            qVar.H((d.s.k) obj3);
        }
        return qVar;
    }

    @Override // d.j.d.p0
    public void o(java.lang.Object obj, android.view.View view) {
        if (obj != null) {
            ((d.s.k) obj).w(view);
        }
    }

    @Override // d.j.d.p0
    public void p(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2) {
        d.s.k kVar = (d.s.k) obj;
        int i = 0;
        if (kVar instanceof d.s.q) {
            d.s.q qVar = (d.s.q) kVar;
            int size = qVar.J.size();
            while (i < size) {
                p(qVar.I(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (z(kVar)) {
            return;
        }
        java.util.ArrayList<android.view.View> arrayList3 = kVar.f2281f;
        if (arrayList3.size() != arrayList.size() || !arrayList3.containsAll(arrayList)) {
            return;
        }
        int size2 = arrayList2 == null ? 0 : arrayList2.size();
        while (i < size2) {
            kVar.b(arrayList2.get(i));
            i++;
        }
        int size3 = arrayList.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                return;
            } else {
                kVar.w(arrayList.get(size3));
            }
        }
    }

    @Override // d.j.d.p0
    public void q(java.lang.Object obj, android.view.View view, java.util.ArrayList<android.view.View> arrayList) {
        ((d.s.k) obj).a(new d.s.e.b(this, view, arrayList));
    }

    @Override // d.j.d.p0
    public void r(java.lang.Object obj, java.lang.Object obj2, java.util.ArrayList<android.view.View> arrayList, java.lang.Object obj3, java.util.ArrayList<android.view.View> arrayList2, java.lang.Object obj4, java.util.ArrayList<android.view.View> arrayList3) {
        ((d.s.k) obj).a(new d.s.e.c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // d.j.d.p0
    public void s(java.lang.Object obj, android.graphics.Rect rect) {
        if (obj != null) {
            ((d.s.k) obj).A(new d.s.e.d(this, rect));
        }
    }

    @Override // d.j.d.p0
    public void t(java.lang.Object obj, android.view.View view) {
        if (view != null) {
            android.graphics.Rect rect = new android.graphics.Rect();
            j(view, rect);
            ((d.s.k) obj).A(new d.s.e.a(this, rect));
        }
    }

    @Override // d.j.d.p0
    public void w(java.lang.Object obj, android.view.View view, java.util.ArrayList<android.view.View> arrayList) {
        d.s.q qVar = (d.s.q) obj;
        java.util.ArrayList<android.view.View> arrayList2 = qVar.f2281f;
        arrayList2.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            d.j.d.p0.d(arrayList2, arrayList.get(i));
        }
        arrayList2.add(view);
        arrayList.add(view);
        b(qVar, arrayList);
    }

    @Override // d.j.d.p0
    public void x(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2) {
        d.s.q qVar = (d.s.q) obj;
        if (qVar != null) {
            qVar.f2281f.clear();
            qVar.f2281f.addAll(arrayList2);
            p(qVar, arrayList, arrayList2);
        }
    }

    @Override // d.j.d.p0
    public java.lang.Object y(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        d.s.q qVar = new d.s.q();
        qVar.H((d.s.k) obj);
        return qVar;
    }
}
