package d.q.c;

/* loaded from: classes.dex */
public class t implements d.q.c.a.InterfaceC0056a {
    public final /* synthetic */ androidx.recyclerview.widget.RecyclerView a;

    public t(androidx.recyclerview.widget.RecyclerView recyclerView) {
        this.a = recyclerView;
    }

    public void a(d.q.c.a.b bVar) {
        int i = bVar.a;
        if (i == 1) {
            androidx.recyclerview.widget.RecyclerView recyclerView = this.a;
            recyclerView.l.N(recyclerView, bVar.b, bVar.f2189d);
            return;
        }
        if (i == 2) {
            androidx.recyclerview.widget.RecyclerView recyclerView2 = this.a;
            recyclerView2.l.Q(recyclerView2, bVar.b, bVar.f2189d);
        } else if (i == 4) {
            androidx.recyclerview.widget.RecyclerView recyclerView3 = this.a;
            recyclerView3.l.S(recyclerView3, bVar.b, bVar.f2189d, bVar.f2188c);
        } else {
            if (i != 8) {
                return;
            }
            androidx.recyclerview.widget.RecyclerView recyclerView4 = this.a;
            recyclerView4.l.P(recyclerView4, bVar.b, bVar.f2189d, 1);
        }
    }

    public androidx.recyclerview.widget.RecyclerView.x b(int i) {
        androidx.recyclerview.widget.RecyclerView recyclerView = this.a;
        int iF = recyclerView.f145e.f();
        int i2 = 0;
        androidx.recyclerview.widget.RecyclerView.x xVar = null;
        while (true) {
            if (i2 >= iF) {
                break;
            }
            androidx.recyclerview.widget.RecyclerView.x xVarU = androidx.recyclerview.widget.RecyclerView.u(recyclerView.f145e.e(i2));
            if (xVarU != null && !xVarU.i() && xVarU.f179c == i) {
                if (!recyclerView.f145e.h(xVarU.a)) {
                    xVar = xVarU;
                    break;
                }
                xVar = xVarU;
            }
            i2++;
        }
        if (xVar == null || this.a.f145e.h(xVar.a)) {
            return null;
        }
        return xVar;
    }

    public void c(int i, int i2, java.lang.Object obj) {
        int i3;
        int i4;
        androidx.recyclerview.widget.RecyclerView recyclerView = this.a;
        int iF = recyclerView.f145e.f();
        int i5 = i2 + i;
        for (int i6 = 0; i6 < iF; i6++) {
            android.view.View viewE = recyclerView.f145e.e(i6);
            androidx.recyclerview.widget.RecyclerView.x xVarU = androidx.recyclerview.widget.RecyclerView.u(viewE);
            if (xVarU != null && !xVarU.r() && (i4 = xVarU.f179c) >= i && i4 < i5) {
                xVarU.b(2);
                xVarU.a(obj);
                ((androidx.recyclerview.widget.RecyclerView.l) viewE.getLayoutParams()).f159c = true;
            }
        }
        androidx.recyclerview.widget.RecyclerView.q qVar = recyclerView.b;
        int size = qVar.f163c.size();
        while (true) {
            size--;
            if (size < 0) {
                this.a.k0 = true;
                return;
            }
            androidx.recyclerview.widget.RecyclerView.x xVar = qVar.f163c.get(size);
            if (xVar != null && (i3 = xVar.f179c) >= i && i3 < i5) {
                xVar.b(2);
                qVar.f(size);
            }
        }
    }

    public void d(int i, int i2) {
        androidx.recyclerview.widget.RecyclerView recyclerView = this.a;
        int iF = recyclerView.f145e.f();
        for (int i3 = 0; i3 < iF; i3++) {
            androidx.recyclerview.widget.RecyclerView.x xVarU = androidx.recyclerview.widget.RecyclerView.u(recyclerView.f145e.e(i3));
            if (xVarU != null && !xVarU.r() && xVarU.f179c >= i) {
                xVarU.n(i2, false);
                throw null;
            }
        }
        androidx.recyclerview.widget.RecyclerView.q qVar = recyclerView.b;
        int size = qVar.f163c.size();
        for (int i4 = 0; i4 < size; i4++) {
            androidx.recyclerview.widget.RecyclerView.x xVar = qVar.f163c.get(i4);
            if (xVar != null && xVar.f179c >= i) {
                xVar.n(i2, true);
                throw null;
            }
        }
        recyclerView.requestLayout();
        this.a.j0 = true;
    }

    public void e(int i, int i2) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        androidx.recyclerview.widget.RecyclerView recyclerView = this.a;
        int iF = recyclerView.f145e.f();
        int i10 = -1;
        if (i < i2) {
            i4 = i;
            i3 = i2;
            i5 = -1;
        } else {
            i3 = i;
            i4 = i2;
            i5 = 1;
        }
        for (int i11 = 0; i11 < iF; i11++) {
            androidx.recyclerview.widget.RecyclerView.x xVarU = androidx.recyclerview.widget.RecyclerView.u(recyclerView.f145e.e(i11));
            if (xVarU != null && (i9 = xVarU.f179c) >= i4 && i9 <= i3) {
                if (i9 == i) {
                    xVarU.n(i2 - i, false);
                    throw null;
                }
                xVarU.n(i5, false);
                throw null;
            }
        }
        androidx.recyclerview.widget.RecyclerView.q qVar = recyclerView.b;
        if (i < i2) {
            i7 = i;
            i6 = i2;
        } else {
            i6 = i;
            i7 = i2;
            i10 = 1;
        }
        int size = qVar.f163c.size();
        for (int i12 = 0; i12 < size; i12++) {
            androidx.recyclerview.widget.RecyclerView.x xVar = qVar.f163c.get(i12);
            if (xVar != null && (i8 = xVar.f179c) >= i7 && i8 <= i6) {
                if (i8 == i) {
                    xVar.n(i2 - i, false);
                    throw null;
                }
                xVar.n(i10, false);
                throw null;
            }
        }
        recyclerView.requestLayout();
        this.a.j0 = true;
    }
}
