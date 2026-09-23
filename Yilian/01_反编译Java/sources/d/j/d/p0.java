package d.j.d;

@android.annotation.SuppressLint({"UnknownNullness"})
/* loaded from: classes.dex */
public abstract class p0 {

    public class a implements java.lang.Runnable {
        public final /* synthetic */ int a;
        public final /* synthetic */ java.util.ArrayList b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f2125c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f2126d;

        /* renamed from: e, reason: collision with root package name */
        public final /* synthetic */ java.util.ArrayList f2127e;

        public a(d.j.d.p0 p0Var, int i, java.util.ArrayList arrayList, java.util.ArrayList arrayList2, java.util.ArrayList arrayList3, java.util.ArrayList arrayList4) {
            this.a = i;
            this.b = arrayList;
            this.f2125c = arrayList2;
            this.f2126d = arrayList3;
            this.f2127e = arrayList4;
        }

        @Override // java.lang.Runnable
        public void run() {
            for (int i = 0; i < this.a; i++) {
                d.g.m.s.V((android.view.View) this.b.get(i), (java.lang.String) this.f2125c.get(i));
                d.g.m.s.V((android.view.View) this.f2126d.get(i), (java.lang.String) this.f2127e.get(i));
            }
        }
    }

    public static void d(java.util.List<android.view.View> list, android.view.View view) {
        int size = list.size();
        if (h(list, view, size)) {
            return;
        }
        list.add(view);
        for (int i = size; i < list.size(); i++) {
            android.view.View view2 = list.get(i);
            if (view2 instanceof android.view.ViewGroup) {
                android.view.ViewGroup viewGroup = (android.view.ViewGroup) view2;
                int childCount = viewGroup.getChildCount();
                for (int i2 = 0; i2 < childCount; i2++) {
                    android.view.View childAt = viewGroup.getChildAt(i2);
                    if (!h(list, childAt, size)) {
                        list.add(childAt);
                    }
                }
            }
        }
    }

    public static boolean h(java.util.List<android.view.View> list, android.view.View view, int i) {
        for (int i2 = 0; i2 < i; i2++) {
            if (list.get(i2) == view) {
                return true;
            }
        }
        return false;
    }

    public static boolean k(java.util.List list) {
        return list == null || list.isEmpty();
    }

    public abstract void a(java.lang.Object obj, android.view.View view);

    public abstract void b(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList);

    public abstract void c(android.view.ViewGroup viewGroup, java.lang.Object obj);

    public abstract boolean e(java.lang.Object obj);

    public void f(java.util.ArrayList<android.view.View> arrayList, android.view.View view) {
        if (view.getVisibility() == 0) {
            boolean z = view instanceof android.view.ViewGroup;
            android.view.View view2 = view;
            if (z) {
                android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
                boolean zT = d.b.k.r.T(viewGroup);
                view2 = viewGroup;
                if (!zT) {
                    int childCount = viewGroup.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        f(arrayList, viewGroup.getChildAt(i));
                    }
                    return;
                }
            }
            arrayList.add(view2);
        }
    }

    public abstract java.lang.Object g(java.lang.Object obj);

    public void i(java.util.Map<java.lang.String, android.view.View> map, android.view.View view) {
        if (view.getVisibility() == 0) {
            java.lang.String strU = d.g.m.s.u(view);
            if (strU != null) {
                map.put(strU, view);
            }
            if (view instanceof android.view.ViewGroup) {
                android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
                int childCount = viewGroup.getChildCount();
                for (int i = 0; i < childCount; i++) {
                    i(map, viewGroup.getChildAt(i));
                }
            }
        }
    }

    public void j(android.view.View view, android.graphics.Rect rect) {
        if (d.g.m.s.z(view)) {
            android.graphics.RectF rectF = new android.graphics.RectF();
            rectF.set(0.0f, 0.0f, view.getWidth(), view.getHeight());
            view.getMatrix().mapRect(rectF);
            rectF.offset(view.getLeft(), view.getTop());
            java.lang.Object parent = view.getParent();
            while (parent instanceof android.view.View) {
                android.view.View view2 = (android.view.View) parent;
                rectF.offset(-view2.getScrollX(), -view2.getScrollY());
                view2.getMatrix().mapRect(rectF);
                rectF.offset(view2.getLeft(), view2.getTop());
                parent = view2.getParent();
            }
            view.getRootView().getLocationOnScreen(new int[2]);
            rectF.offset(r1[0], r1[1]);
            rect.set(java.lang.Math.round(rectF.left), java.lang.Math.round(rectF.top), java.lang.Math.round(rectF.right), java.lang.Math.round(rectF.bottom));
        }
    }

    public abstract java.lang.Object l(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3);

    public abstract java.lang.Object m(java.lang.Object obj, java.lang.Object obj2, java.lang.Object obj3);

    public java.util.ArrayList<java.lang.String> n(java.util.ArrayList<android.view.View> arrayList) {
        java.util.ArrayList<java.lang.String> arrayList2 = new java.util.ArrayList<>();
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            android.view.View view = arrayList.get(i);
            arrayList2.add(d.g.m.s.u(view));
            d.g.m.s.V(view, null);
        }
        return arrayList2;
    }

    public abstract void o(java.lang.Object obj, android.view.View view);

    public abstract void p(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2);

    public abstract void q(java.lang.Object obj, android.view.View view, java.util.ArrayList<android.view.View> arrayList);

    public abstract void r(java.lang.Object obj, java.lang.Object obj2, java.util.ArrayList<android.view.View> arrayList, java.lang.Object obj3, java.util.ArrayList<android.view.View> arrayList2, java.lang.Object obj4, java.util.ArrayList<android.view.View> arrayList3);

    public abstract void s(java.lang.Object obj, android.graphics.Rect rect);

    public abstract void t(java.lang.Object obj, android.view.View view);

    public void u(androidx.fragment.app.Fragment fragment, java.lang.Object obj, d.g.i.a aVar, java.lang.Runnable runnable) {
        runnable.run();
    }

    public void v(android.view.View view, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2, java.util.ArrayList<java.lang.String> arrayList3, java.util.Map<java.lang.String, java.lang.String> map) {
        int size = arrayList2.size();
        java.util.ArrayList arrayList4 = new java.util.ArrayList();
        for (int i = 0; i < size; i++) {
            android.view.View view2 = arrayList.get(i);
            java.lang.String strU = d.g.m.s.u(view2);
            arrayList4.add(strU);
            if (strU != null) {
                d.g.m.s.V(view2, null);
                java.lang.String str = map.get(strU);
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    if (str.equals(arrayList3.get(i2))) {
                        d.g.m.s.V(arrayList2.get(i2), strU);
                        break;
                    }
                    i2++;
                }
            }
        }
        d.g.m.m.a(view, new d.j.d.p0.a(this, size, arrayList2, arrayList3, arrayList, arrayList4));
    }

    public abstract void w(java.lang.Object obj, android.view.View view, java.util.ArrayList<android.view.View> arrayList);

    public abstract void x(java.lang.Object obj, java.util.ArrayList<android.view.View> arrayList, java.util.ArrayList<android.view.View> arrayList2);

    public abstract java.lang.Object y(java.lang.Object obj);
}
