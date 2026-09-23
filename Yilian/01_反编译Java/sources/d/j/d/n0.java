package d.j.d;

/* loaded from: classes.dex */
public class n0 {
    public static final int[] a = {0, 3, 0, 1, 5, 4, 7, 6, 9, 8, 10};
    public static final d.j.d.p0 b;

    /* renamed from: c, reason: collision with root package name */
    public static final d.j.d.p0 f2112c;

    public interface a {
    }

    public static class b {
        public androidx.fragment.app.Fragment a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public d.j.d.a f2113c;

        /* renamed from: d, reason: collision with root package name */
        public androidx.fragment.app.Fragment f2114d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f2115e;

        /* renamed from: f, reason: collision with root package name */
        public d.j.d.a f2116f;
    }

    static {
        d.j.d.p0 p0Var = null;
        b = android.os.Build.VERSION.SDK_INT >= 21 ? new d.j.d.o0() : null;
        try {
            p0Var = (d.j.d.p0) java.lang.Class.forName("d.s.e").getDeclaredConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]);
        } catch (java.lang.Exception unused) {
        }
        f2112c = p0Var;
    }

    public static void a(java.util.ArrayList<android.view.View> arrayList, d.e.a<java.lang.String, android.view.View> aVar, java.util.Collection<java.lang.String> collection) {
        for (int i = aVar.f1912c - 1; i >= 0; i--) {
            android.view.View viewK = aVar.k(i);
            if (collection.contains(d.g.m.s.u(viewK))) {
                arrayList.add(viewK);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0076  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(d.j.d.a r8, d.j.d.g0.a r9, android.util.SparseArray<d.j.d.n0.b> r10, boolean r11, boolean r12) throws android.content.res.Resources.NotFoundException {
        /*
            Method dump skipped, instructions count: 238
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.j.d.n0.b(d.j.d.a, d.j.d.g0$a, android.util.SparseArray, boolean, boolean):void");
    }

    public static void c(androidx.fragment.app.Fragment fragment, androidx.fragment.app.Fragment fragment2, boolean z, d.e.a<java.lang.String, android.view.View> aVar, boolean z2) {
        if ((z ? fragment2.getEnterTransitionCallback() : fragment.getEnterTransitionCallback()) != null) {
            java.util.ArrayList arrayList = new java.util.ArrayList();
            java.util.ArrayList arrayList2 = new java.util.ArrayList();
            int i = aVar == null ? 0 : aVar.f1912c;
            for (int i2 = 0; i2 < i; i2++) {
                arrayList2.add(aVar.h(i2));
                arrayList.add(aVar.k(i2));
            }
            throw null;
        }
    }

    public static boolean d(d.j.d.p0 p0Var, java.util.List<java.lang.Object> list) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            if (!p0Var.e(list.get(i))) {
                return false;
            }
        }
        return true;
    }

    public static d.e.a<java.lang.String, android.view.View> e(d.j.d.p0 p0Var, d.e.a<java.lang.String, java.lang.String> aVar, java.lang.Object obj, d.j.d.n0.b bVar) {
        d.g.e.n enterTransitionCallback;
        java.util.ArrayList<java.lang.String> arrayList;
        androidx.fragment.app.Fragment fragment = bVar.a;
        android.view.View view = fragment.getView();
        if (aVar.isEmpty() || obj == null || view == null) {
            aVar.clear();
            return null;
        }
        d.e.a<java.lang.String, android.view.View> aVar2 = new d.e.a<>();
        p0Var.i(aVar2, view);
        d.j.d.a aVar3 = bVar.f2113c;
        if (bVar.b) {
            enterTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = aVar3.m;
        } else {
            enterTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = aVar3.n;
        }
        if (arrayList != null) {
            d.e.g.k(aVar2, arrayList);
            d.e.g.k(aVar2, aVar.values());
        }
        if (enterTransitionCallback != null) {
            throw null;
        }
        n(aVar, aVar2);
        return aVar2;
    }

    public static d.e.a<java.lang.String, android.view.View> f(d.j.d.p0 p0Var, d.e.a<java.lang.String, java.lang.String> aVar, java.lang.Object obj, d.j.d.n0.b bVar) {
        d.g.e.n exitTransitionCallback;
        java.util.ArrayList<java.lang.String> arrayList;
        if (aVar.isEmpty() || obj == null) {
            aVar.clear();
            return null;
        }
        androidx.fragment.app.Fragment fragment = bVar.f2114d;
        d.e.a<java.lang.String, android.view.View> aVar2 = new d.e.a<>();
        p0Var.i(aVar2, fragment.requireView());
        d.j.d.a aVar3 = bVar.f2116f;
        if (bVar.f2115e) {
            exitTransitionCallback = fragment.getEnterTransitionCallback();
            arrayList = aVar3.n;
        } else {
            exitTransitionCallback = fragment.getExitTransitionCallback();
            arrayList = aVar3.m;
        }
        if (arrayList != null) {
            d.e.g.k(aVar2, arrayList);
        }
        if (exitTransitionCallback != null) {
            throw null;
        }
        d.e.g.k(aVar, aVar2.keySet());
        return aVar2;
    }

    public static d.j.d.p0 g(androidx.fragment.app.Fragment fragment, androidx.fragment.app.Fragment fragment2) {
        java.util.ArrayList arrayList = new java.util.ArrayList();
        if (fragment != null) {
            java.lang.Object exitTransition = fragment.getExitTransition();
            if (exitTransition != null) {
                arrayList.add(exitTransition);
            }
            java.lang.Object returnTransition = fragment.getReturnTransition();
            if (returnTransition != null) {
                arrayList.add(returnTransition);
            }
            java.lang.Object sharedElementReturnTransition = fragment.getSharedElementReturnTransition();
            if (sharedElementReturnTransition != null) {
                arrayList.add(sharedElementReturnTransition);
            }
        }
        if (fragment2 != null) {
            java.lang.Object enterTransition = fragment2.getEnterTransition();
            if (enterTransition != null) {
                arrayList.add(enterTransition);
            }
            java.lang.Object reenterTransition = fragment2.getReenterTransition();
            if (reenterTransition != null) {
                arrayList.add(reenterTransition);
            }
            java.lang.Object sharedElementEnterTransition = fragment2.getSharedElementEnterTransition();
            if (sharedElementEnterTransition != null) {
                arrayList.add(sharedElementEnterTransition);
            }
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        d.j.d.p0 p0Var = b;
        if (p0Var != null && d(p0Var, arrayList)) {
            return b;
        }
        d.j.d.p0 p0Var2 = f2112c;
        if (p0Var2 != null && d(p0Var2, arrayList)) {
            return f2112c;
        }
        if (b == null && f2112c == null) {
            return null;
        }
        throw new java.lang.IllegalArgumentException("Invalid Transition types");
    }

    public static java.util.ArrayList<android.view.View> h(d.j.d.p0 p0Var, java.lang.Object obj, androidx.fragment.app.Fragment fragment, java.util.ArrayList<android.view.View> arrayList, android.view.View view) {
        if (obj == null) {
            return null;
        }
        java.util.ArrayList<android.view.View> arrayList2 = new java.util.ArrayList<>();
        android.view.View view2 = fragment.getView();
        if (view2 != null) {
            p0Var.f(arrayList2, view2);
        }
        if (arrayList != null) {
            arrayList2.removeAll(arrayList);
        }
        if (arrayList2.isEmpty()) {
            return arrayList2;
        }
        arrayList2.add(view);
        p0Var.b(obj, arrayList2);
        return arrayList2;
    }

    public static java.lang.Object i(d.j.d.p0 p0Var, androidx.fragment.app.Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return p0Var.g(z ? fragment.getReenterTransition() : fragment.getEnterTransition());
    }

    public static java.lang.Object j(d.j.d.p0 p0Var, androidx.fragment.app.Fragment fragment, boolean z) {
        if (fragment == null) {
            return null;
        }
        return p0Var.g(z ? fragment.getReturnTransition() : fragment.getExitTransition());
    }

    public static android.view.View k(d.e.a<java.lang.String, android.view.View> aVar, d.j.d.n0.b bVar, java.lang.Object obj, boolean z) {
        java.util.ArrayList<java.lang.String> arrayList;
        d.j.d.a aVar2 = bVar.f2113c;
        if (obj == null || aVar == null || (arrayList = aVar2.m) == null || arrayList.isEmpty()) {
            return null;
        }
        return aVar.get((z ? aVar2.m : aVar2.n).get(0));
    }

    public static java.lang.Object l(d.j.d.p0 p0Var, androidx.fragment.app.Fragment fragment, androidx.fragment.app.Fragment fragment2, boolean z) {
        return p0Var.y(p0Var.g(z ? fragment2.getSharedElementReturnTransition() : fragment.getSharedElementEnterTransition()));
    }

    public static java.lang.Object m(d.j.d.p0 p0Var, java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3, androidx.fragment.app.Fragment fragment, boolean z) {
        return (obj == null || obj2 == null || fragment == null) ? true : z ? fragment.getAllowReturnTransitionOverlap() : fragment.getAllowEnterTransitionOverlap() ? p0Var.m(obj2, obj, obj3) : p0Var.l(obj2, obj, obj3);
    }

    public static void n(d.e.a<java.lang.String, java.lang.String> aVar, d.e.a<java.lang.String, android.view.View> aVar2) {
        int i = aVar.f1912c;
        while (true) {
            i--;
            if (i < 0) {
                return;
            }
            if (!aVar2.containsKey(aVar.k(i))) {
                aVar.i(i);
            }
        }
    }

    public static void o(d.j.d.p0 p0Var, java.lang.Object obj, java.lang.Object obj2, d.e.a<java.lang.String, android.view.View> aVar, boolean z, d.j.d.a aVar2) {
        java.util.ArrayList<java.lang.String> arrayList = aVar2.m;
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        android.view.View view = aVar.get((z ? aVar2.n : aVar2.m).get(0));
        p0Var.t(obj, view);
        if (obj2 != null) {
            p0Var.t(obj2, view);
        }
    }

    public static void p(java.util.ArrayList<android.view.View> arrayList, int i) {
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            arrayList.get(size).setVisibility(i);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0399  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x03a7  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x03e2  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x0426 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01f6  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x023c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void q(android.content.Context r39, d.j.d.r r40, java.util.ArrayList<d.j.d.a> r41, java.util.ArrayList<java.lang.Boolean> r42, int r43, int r44, boolean r45, d.j.d.n0.a r46) {
        /*
            Method dump skipped, instructions count: 1081
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.j.d.n0.q(android.content.Context, d.j.d.r, java.util.ArrayList, java.util.ArrayList, int, int, boolean, d.j.d.n0$a):void");
    }
}
