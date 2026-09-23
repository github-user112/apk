package d.q.c;

/* loaded from: classes.dex */
public class k extends d.q.c.v {
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> h = new java.util.ArrayList<>();
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> i = new java.util.ArrayList<>();
    public java.util.ArrayList<d.q.c.k.b> j = new java.util.ArrayList<>();
    public java.util.ArrayList<d.q.c.k.a> k = new java.util.ArrayList<>();
    public java.util.ArrayList<java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x>> l = new java.util.ArrayList<>();
    public java.util.ArrayList<java.util.ArrayList<d.q.c.k.b>> m = new java.util.ArrayList<>();
    public java.util.ArrayList<java.util.ArrayList<d.q.c.k.a>> n = new java.util.ArrayList<>();
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> o = new java.util.ArrayList<>();
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> p = new java.util.ArrayList<>();
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> q = new java.util.ArrayList<>();
    public java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> r = new java.util.ArrayList<>();

    public static class a {
        public androidx.recyclerview.widget.RecyclerView.x a;
        public androidx.recyclerview.widget.RecyclerView.x b;

        /* renamed from: c, reason: collision with root package name */
        public int f2203c;

        /* renamed from: d, reason: collision with root package name */
        public int f2204d;

        /* renamed from: e, reason: collision with root package name */
        public int f2205e;

        /* renamed from: f, reason: collision with root package name */
        public int f2206f;

        public java.lang.String toString() {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("ChangeInfo{oldHolder=");
            sbO.append(this.a);
            sbO.append(", newHolder=");
            sbO.append(this.b);
            sbO.append(", fromX=");
            sbO.append(this.f2203c);
            sbO.append(", fromY=");
            sbO.append(this.f2204d);
            sbO.append(", toX=");
            sbO.append(this.f2205e);
            sbO.append(", toY=");
            sbO.append(this.f2206f);
            sbO.append('}');
            return sbO.toString();
        }
    }

    public static class b {
        public androidx.recyclerview.widget.RecyclerView.x a;
        public int b;

        /* renamed from: c, reason: collision with root package name */
        public int f2207c;

        /* renamed from: d, reason: collision with root package name */
        public int f2208d;

        /* renamed from: e, reason: collision with root package name */
        public int f2209e;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public boolean b(androidx.recyclerview.widget.RecyclerView.x xVar, java.util.List<java.lang.Object> list) {
        return !list.isEmpty() || super.b(xVar, list);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void e(androidx.recyclerview.widget.RecyclerView.x xVar) {
        throw null;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public void f() {
        int size = this.j.size();
        while (true) {
            size--;
            if (size < 0) {
                break;
            }
            d.q.c.k.b bVar = this.j.get(size);
            android.view.View view = bVar.a.a;
            view.setTranslationY(0.0f);
            view.setTranslationX(0.0f);
            c(bVar.a);
            this.j.remove(size);
        }
        int size2 = this.h.size();
        while (true) {
            size2--;
            if (size2 < 0) {
                break;
            }
            c(this.h.get(size2));
            this.h.remove(size2);
        }
        int size3 = this.i.size();
        while (true) {
            size3--;
            if (size3 < 0) {
                break;
            }
            androidx.recyclerview.widget.RecyclerView.x xVar = this.i.get(size3);
            xVar.a.setAlpha(1.0f);
            c(xVar);
            this.i.remove(size3);
        }
        int size4 = this.k.size();
        while (true) {
            size4--;
            if (size4 < 0) {
                break;
            }
            d.q.c.k.a aVar = this.k.get(size4);
            androidx.recyclerview.widget.RecyclerView.x xVar2 = aVar.a;
            if (xVar2 != null) {
                k(aVar, xVar2);
            }
            androidx.recyclerview.widget.RecyclerView.x xVar3 = aVar.b;
            if (xVar3 != null) {
                k(aVar, xVar3);
            }
        }
        this.k.clear();
        if (!g()) {
            return;
        }
        int size5 = this.m.size();
        while (true) {
            size5--;
            if (size5 < 0) {
                break;
            }
            java.util.ArrayList<d.q.c.k.b> arrayList = this.m.get(size5);
            int size6 = arrayList.size();
            while (true) {
                size6--;
                if (size6 >= 0) {
                    d.q.c.k.b bVar2 = arrayList.get(size6);
                    android.view.View view2 = bVar2.a.a;
                    view2.setTranslationY(0.0f);
                    view2.setTranslationX(0.0f);
                    c(bVar2.a);
                    arrayList.remove(size6);
                    if (arrayList.isEmpty()) {
                        this.m.remove(arrayList);
                    }
                }
            }
        }
        int size7 = this.l.size();
        while (true) {
            size7--;
            if (size7 < 0) {
                break;
            }
            java.util.ArrayList<androidx.recyclerview.widget.RecyclerView.x> arrayList2 = this.l.get(size7);
            int size8 = arrayList2.size();
            while (true) {
                size8--;
                if (size8 >= 0) {
                    androidx.recyclerview.widget.RecyclerView.x xVar4 = arrayList2.get(size8);
                    xVar4.a.setAlpha(1.0f);
                    c(xVar4);
                    arrayList2.remove(size8);
                    if (arrayList2.isEmpty()) {
                        this.l.remove(arrayList2);
                    }
                }
            }
        }
        int size9 = this.n.size();
        while (true) {
            size9--;
            if (size9 < 0) {
                i(this.q);
                i(this.p);
                i(this.o);
                i(this.r);
                d();
                return;
            }
            java.util.ArrayList<d.q.c.k.a> arrayList3 = this.n.get(size9);
            int size10 = arrayList3.size();
            while (true) {
                size10--;
                if (size10 >= 0) {
                    d.q.c.k.a aVar2 = arrayList3.get(size10);
                    androidx.recyclerview.widget.RecyclerView.x xVar5 = aVar2.a;
                    if (xVar5 != null) {
                        k(aVar2, xVar5);
                    }
                    androidx.recyclerview.widget.RecyclerView.x xVar6 = aVar2.b;
                    if (xVar6 != null) {
                        k(aVar2, xVar6);
                    }
                    if (arrayList3.isEmpty()) {
                        this.n.remove(arrayList3);
                    }
                }
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public boolean g() {
        return (this.i.isEmpty() && this.k.isEmpty() && this.j.isEmpty() && this.h.isEmpty() && this.p.isEmpty() && this.q.isEmpty() && this.o.isEmpty() && this.r.isEmpty() && this.m.isEmpty() && this.l.isEmpty() && this.n.isEmpty()) ? false : true;
    }

    public void i(java.util.List<androidx.recyclerview.widget.RecyclerView.x> list) {
        int size = list.size();
        while (true) {
            size--;
            if (size < 0) {
                return;
            } else {
                list.get(size).a.animate().cancel();
            }
        }
    }

    public void j() {
        if (g()) {
            return;
        }
        d();
    }

    public final boolean k(d.q.c.k.a aVar, androidx.recyclerview.widget.RecyclerView.x xVar) {
        if (aVar.b == xVar) {
            aVar.b = null;
        } else {
            if (aVar.a != xVar) {
                return false;
            }
            aVar.a = null;
        }
        xVar.a.setAlpha(1.0f);
        xVar.a.setTranslationX(0.0f);
        xVar.a.setTranslationY(0.0f);
        c(xVar);
        return true;
    }
}
