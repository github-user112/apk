package androidx.recyclerview.widget;

/* loaded from: classes.dex */
public class GridLayoutManager extends androidx.recyclerview.widget.LinearLayoutManager {
    public boolean E;
    public int F;
    public final android.util.SparseIntArray G;
    public final android.util.SparseIntArray H;
    public androidx.recyclerview.widget.GridLayoutManager.c I;
    public final android.graphics.Rect J;

    public static final class a extends androidx.recyclerview.widget.GridLayoutManager.c {
    }

    public static class b extends androidx.recyclerview.widget.RecyclerView.l {

        /* renamed from: e, reason: collision with root package name */
        public int f136e;

        /* renamed from: f, reason: collision with root package name */
        public int f137f;

        public b(int i, int i2) {
            super(i, i2);
            this.f136e = -1;
            this.f137f = 0;
        }

        public b(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f136e = -1;
            this.f137f = 0;
        }

        public b(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f136e = -1;
            this.f137f = 0;
        }

        public b(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f136e = -1;
            this.f137f = 0;
        }
    }

    public static abstract class c {
        public final android.util.SparseIntArray a = new android.util.SparseIntArray();
        public boolean b = false;

        public int a(int i, int i2) {
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < i; i5++) {
                i3++;
                if (i3 == i2) {
                    i4++;
                    i3 = 0;
                } else if (i3 > i2) {
                    i4++;
                    i3 = 1;
                }
            }
            return i3 + 1 > i2 ? i4 + 1 : i4;
        }
    }

    public GridLayoutManager(android.content.Context context, android.util.AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.E = false;
        this.F = -1;
        this.G = new android.util.SparseIntArray();
        this.H = new android.util.SparseIntArray();
        this.I = new androidx.recyclerview.widget.GridLayoutManager.a();
        this.J = new android.graphics.Rect();
        int i3 = androidx.recyclerview.widget.RecyclerView.k.y(context, attributeSet, i, i2).b;
        if (i3 == this.F) {
            return;
        }
        this.E = true;
        if (i3 < 1) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.K("Span count should be at least 1. Provided ", i3));
        }
        this.F = i3;
        this.I.a.clear();
        g0();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void L(androidx.recyclerview.widget.RecyclerView.q qVar, androidx.recyclerview.widget.RecyclerView.u uVar, android.view.View view, d.g.m.a0.d dVar) {
        int i;
        int i2;
        int i3;
        boolean z;
        boolean z2;
        int i4;
        android.view.ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (!(layoutParams instanceof androidx.recyclerview.widget.GridLayoutManager.b)) {
            super.K(view, dVar);
            return;
        }
        androidx.recyclerview.widget.GridLayoutManager.b bVar = (androidx.recyclerview.widget.GridLayoutManager.b) layoutParams;
        int iU0 = u0(qVar, uVar, bVar.a());
        if (this.q == 0) {
            int i5 = bVar.f136e;
            i = bVar.f137f;
            i3 = 1;
            int i6 = this.F;
            z = i6 > 1 && i == i6;
            z2 = false;
            i4 = i5;
            i2 = iU0;
        } else {
            i = 1;
            i2 = bVar.f136e;
            i3 = bVar.f137f;
            int i7 = this.F;
            z = i7 > 1 && i3 == i7;
            z2 = false;
            i4 = iU0;
        }
        dVar.g(d.g.m.a0.d.c.a(i4, i, i2, i3, z, z2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void N(androidx.recyclerview.widget.RecyclerView recyclerView, int i, int i2) {
        this.I.a.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void O(androidx.recyclerview.widget.RecyclerView recyclerView) {
        this.I.a.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void P(androidx.recyclerview.widget.RecyclerView recyclerView, int i, int i2, int i3) {
        this.I.a.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void Q(androidx.recyclerview.widget.RecyclerView recyclerView, int i, int i2) {
        this.I.a.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public void S(androidx.recyclerview.widget.RecyclerView recyclerView, int i, int i2, java.lang.Object obj) {
        this.I.a.clear();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public boolean d(androidx.recyclerview.widget.RecyclerView.l lVar) {
        return lVar instanceof androidx.recyclerview.widget.GridLayoutManager.b;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.k
    public boolean i0() {
        return this.A == null && !this.E;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.k
    public androidx.recyclerview.widget.RecyclerView.l l() {
        return this.q == 0 ? new androidx.recyclerview.widget.GridLayoutManager.b(-2, -1) : new androidx.recyclerview.widget.GridLayoutManager.b(-1, -2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public androidx.recyclerview.widget.RecyclerView.l m(android.content.Context context, android.util.AttributeSet attributeSet) {
        return new androidx.recyclerview.widget.GridLayoutManager.b(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public androidx.recyclerview.widget.RecyclerView.l n(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof android.view.ViewGroup.MarginLayoutParams ? new androidx.recyclerview.widget.GridLayoutManager.b((android.view.ViewGroup.MarginLayoutParams) layoutParams) : new androidx.recyclerview.widget.GridLayoutManager.b(layoutParams);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int r(androidx.recyclerview.widget.RecyclerView.q qVar, androidx.recyclerview.widget.RecyclerView.u uVar) {
        if (this.q == 1) {
            return this.F;
        }
        if (uVar.a() < 1) {
            return 0;
        }
        return u0(qVar, uVar, uVar.a() - 1) + 1;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public void t0(boolean z) {
        if (z) {
            throw new java.lang.UnsupportedOperationException("GridLayoutManager does not support stack from end. Consider using reverse layout");
        }
        a(null);
        if (this.w) {
            this.w = false;
            g0();
        }
    }

    public final int u0(androidx.recyclerview.widget.RecyclerView.q qVar, androidx.recyclerview.widget.RecyclerView.u uVar, int i) {
        if (!uVar.f173g) {
            return this.I.a(i, this.F);
        }
        int iC = qVar.c(i);
        if (iC != -1) {
            return this.I.a(iC, this.F);
        }
        android.util.Log.w("GridLayoutManager", "Cannot find span size for pre layout position. " + i);
        return 0;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.k
    public int z(androidx.recyclerview.widget.RecyclerView.q qVar, androidx.recyclerview.widget.RecyclerView.u uVar) {
        if (this.q == 0) {
            return this.F;
        }
        if (uVar.a() < 1) {
            return 0;
        }
        return u0(qVar, uVar, uVar.a() - 1) + 1;
    }
}
