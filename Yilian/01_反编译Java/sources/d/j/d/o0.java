package d.j.d;

/* loaded from: classes.dex */
public class o0 extends d.j.d.p0 {

    public class a extends android.transition.Transition.EpicenterCallback {
        public final /* synthetic */ android.graphics.Rect a;

        public a(d.j.d.o0 o0Var, android.graphics.Rect rect) {
            this.a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public android.graphics.Rect onGetEpicenter(android.transition.Transition transition) {
            return this.a;
        }
    }

    public class b implements android.transition.Transition.TransitionListener {
        public final /* synthetic */ android.view.View a;
        public final /* synthetic */ java.util.ArrayList b;

        public b(d.j.d.o0 o0Var, android.view.View view, java.util.ArrayList arrayList) {
            this.a = view;
            this.b = arrayList;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(android.transition.Transition transition) {
            transition.removeListener(this);
            this.a.setVisibility(8);
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                ((android.view.View) this.b.get(i)).setVisibility(0);
            }
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionPause(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionResume(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionStart(android.transition.Transition transition) {
            transition.removeListener(this);
            transition.addListener(this);
        }
    }

    public class c implements android.transition.Transition.TransitionListener {
        public final /* synthetic */ java.lang.Object a;
        public final /* synthetic */ java.util.ArrayList b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f2120c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f2121d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ java.lang.Object f2122e;

        /* renamed from: f, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f2123f;

        public c(java.lang.Object obj, java.util.ArrayList arrayList, java.lang.Object obj2, java.util.ArrayList arrayList2, java.lang.Object obj3, java.util.ArrayList arrayList3) {
            this.a = obj;
            this.b = arrayList;
            this.f2120c = obj2;
            this.f2121d = arrayList2;
            this.f2122e = obj3;
            this.f2123f = arrayList3;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(android.transition.Transition transition) {
            transition.removeListener(this);
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionPause(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionResume(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionStart(android.transition.Transition transition) {
            java.lang.Object obj = this.a;
            if (obj != null) {
                d.j.d.o0.this.p(obj, this.b, null);
            }
            java.lang.Object obj2 = this.f2120c;
            if (obj2 != null) {
                d.j.d.o0.this.p(obj2, this.f2121d, null);
            }
            java.lang.Object obj3 = this.f2122e;
            if (obj3 != null) {
                d.j.d.o0.this.p(obj3, this.f2123f, null);
            }
        }
    }

    public class d implements android.transition.Transition.TransitionListener {
        public final /* synthetic */ java.lang.Runnable a;

        public d(d.j.d.o0 o0Var, java.lang.Runnable runnable) {
            this.a = runnable;
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionCancel(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionEnd(android.transition.Transition transition) {
            this.a.run();
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionPause(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionResume(android.transition.Transition transition) {
        }

        @Override // android.transition.Transition.TransitionListener
        public void onTransitionStart(android.transition.Transition transition) {
        }
    }

    public class e extends android.transition.Transition.EpicenterCallback {
        public final /* synthetic */ android.graphics.Rect a;

        public e(d.j.d.o0 o0Var, android.graphics.Rect rect) {
            this.a = rect;
        }

        @Override // android.transition.Transition.EpicenterCallback
        public android.graphics.Rect onGetEpicenter(android.transition.Transition transition) {
            android.graphics.Rect rect = this.a;
            if (rect == null || rect.isEmpty()) {
                return null;
            }
            return this.a;
        }
    }

    public static boolean z(android.transition.Transition transition) {
        return (d.j.d.p0.k(transition.getTargetIds()) && d.j.d.p0.k(transition.getTargetNames()) && d.j.d.p0.k(transition.getTargetTypes())) ? false : true;
    }

    @Override // d.j.d.p0
    public void a(java.lang.Object obj, android.view.View view) {
        if (obj != null) {
            ((android.transition.Transition) obj).addTarget(view);
        }
    }

    @Override // d.j.d.p0
    public void b(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList) {
        android.transition.Transition transition = (android.transition.Transition) obj;
        if (transition == null) {
            return;
        }
        int i = 0;
        if (transition instanceof android.transition.TransitionSet) {
            android.transition.TransitionSet transitionSet = (android.transition.TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i < transitionCount) {
                b(transitionSet.getTransitionAt(i), arrayList);
                i++;
            }
            return;
        }
        if (z(transition) || !d.j.d.p0.k(transition.getTargets())) {
            return;
        }
        int size = arrayList.size();
        while (i < size) {
            transition.addTarget(arrayList.get(i));
            i++;
        }
    }

    @Override // d.j.d.p0
    public void c(android.view.ViewGroup viewGroup, java.lang.Object obj) {
        android.transition.TransitionManager.beginDelayedTransition(viewGroup, (android.transition.Transition) obj);
    }

    @Override // d.j.d.p0
    public boolean e(java.lang.Object obj) {
        return obj instanceof android.transition.Transition;
    }

    @Override // d.j.d.p0
    public java.lang.Object g(java.lang.Object obj) {
        if (obj != null) {
            return ((android.transition.Transition) obj).clone();
        }
        return null;
    }

    @Override // d.j.d.p0
    public java.lang.Object l(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        android.transition.Transition ordering = (android.transition.Transition) obj;
        android.transition.Transition transition = (android.transition.Transition) obj2;
        android.transition.Transition transition2 = (android.transition.Transition) obj3;
        if (ordering != null && transition != null) {
            ordering = new android.transition.TransitionSet().addTransition(ordering).addTransition(transition).setOrdering(1);
        } else if (ordering == null) {
            ordering = transition != null ? transition : null;
        }
        if (transition2 == null) {
            return ordering;
        }
        android.transition.TransitionSet transitionSet = new android.transition.TransitionSet();
        if (ordering != null) {
            transitionSet.addTransition(ordering);
        }
        transitionSet.addTransition(transition2);
        return transitionSet;
    }

    @Override // d.j.d.p0
    public java.lang.Object m(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3) {
        android.transition.TransitionSet transitionSet = new android.transition.TransitionSet();
        if (obj != null) {
            transitionSet.addTransition((android.transition.Transition) obj);
        }
        if (obj2 != null) {
            transitionSet.addTransition((android.transition.Transition) obj2);
        }
        if (obj3 != null) {
            transitionSet.addTransition((android.transition.Transition) obj3);
        }
        return transitionSet;
    }

    @Override // d.j.d.p0
    public void o(java.lang.Object obj, android.view.View view) {
        if (obj != null) {
            ((android.transition.Transition) obj).removeTarget(view);
        }
    }

    @Override // d.j.d.p0
    public void p(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2) {
        java.util.List<android.view.View> targets;
        android.transition.Transition transition = (android.transition.Transition) obj;
        int i = 0;
        if (transition instanceof android.transition.TransitionSet) {
            android.transition.TransitionSet transitionSet = (android.transition.TransitionSet) transition;
            int transitionCount = transitionSet.getTransitionCount();
            while (i < transitionCount) {
                p(transitionSet.getTransitionAt(i), arrayList, arrayList2);
                i++;
            }
            return;
        }
        if (z(transition) || (targets = transition.getTargets()) == null || targets.size() != arrayList.size() || !targets.containsAll(arrayList)) {
            return;
        }
        int size = arrayList2 == null ? 0 : arrayList2.size();
        while (i < size) {
            transition.addTarget(arrayList2.get(i));
            i++;
        }
        for (int size2 = arrayList.size() - 1; size2 >= 0; size2--) {
            transition.removeTarget(arrayList.get(size2));
        }
    }

    @Override // d.j.d.p0
    public void q(java.lang.Object obj, android.view.View view, java.util.ArrayList<android.view.View> arrayList) {
        ((android.transition.Transition) obj).addListener(new d.j.d.o0.b(this, view, arrayList));
    }

    @Override // d.j.d.p0
    public void r(java.lang.Object obj, java.lang.Object obj2, java.util.ArrayList<android.view.View> arrayList, java.lang.Object obj3, java.util.ArrayList<android.view.View> arrayList2, java.lang.Object obj4, java.util.ArrayList<android.view.View> arrayList3) {
        ((android.transition.Transition) obj).addListener(new d.j.d.o0.c(obj2, arrayList, obj3, arrayList2, obj4, arrayList3));
    }

    @Override // d.j.d.p0
    public void s(java.lang.Object obj, android.graphics.Rect rect) {
        if (obj != null) {
            ((android.transition.Transition) obj).setEpicenterCallback(new d.j.d.o0.e(this, rect));
        }
    }

    @Override // d.j.d.p0
    public void t(java.lang.Object obj, android.view.View view) {
        if (view != null) {
            android.graphics.Rect rect = new android.graphics.Rect();
            j(view, rect);
            ((android.transition.Transition) obj).setEpicenterCallback(new d.j.d.o0.a(this, rect));
        }
    }

    @Override // d.j.d.p0
    public void u(androidx.fragment.app.Fragment fragment, java.lang.Object obj, d.g.i.a aVar, java.lang.Runnable runnable) {
        ((android.transition.Transition) obj).addListener(new d.j.d.o0.d(this, runnable));
    }

    @Override // d.j.d.p0
    public void w(java.lang.Object obj, android.view.View view, java.util.ArrayList<android.view.View> arrayList) {
        android.transition.TransitionSet transitionSet = (android.transition.TransitionSet) obj;
        java.util.List<android.view.View> targets = transitionSet.getTargets();
        targets.clear();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            d.j.d.p0.d(targets, arrayList.get(i));
        }
        targets.add(view);
        arrayList.add(view);
        b(transitionSet, arrayList);
    }

    @Override // d.j.d.p0
    public void x(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2) {
        android.transition.TransitionSet transitionSet = (android.transition.TransitionSet) obj;
        if (transitionSet != null) {
            transitionSet.getTargets().clear();
            transitionSet.getTargets().addAll(arrayList2);
            p(transitionSet, arrayList, arrayList2);
        }
    }

    @Override // d.j.d.p0
    public java.lang.Object y(java.lang.Object obj) {
        if (obj == null) {
            return null;
        }
        android.transition.TransitionSet transitionSet = new android.transition.TransitionSet();
        transitionSet.addTransition((android.transition.Transition) obj);
        return transitionSet;
    }
}
