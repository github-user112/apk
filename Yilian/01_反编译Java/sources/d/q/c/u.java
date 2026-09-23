package d.q.c;

/* loaded from: classes.dex */
public class u extends d.g.m.a {

    /* renamed from: d, reason: collision with root package name */
    public final androidx.recyclerview.widget.RecyclerView f2230d;

    /* renamed from: e, reason: collision with root package name */
    public final d.g.m.a f2231e = new d.q.c.u.a(this);

    public static class a extends d.g.m.a {

        /* renamed from: d, reason: collision with root package name */
        public final d.q.c.u f2232d;

        public a(d.q.c.u uVar) {
            this.f2232d = uVar;
        }

        @Override // d.g.m.a
        public void b(android.view.View view, d.g.m.a0.d dVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, dVar.a);
            if (this.f2232d.d() || this.f2232d.f2230d.getLayoutManager() == null) {
                return;
            }
            this.f2232d.f2230d.getLayoutManager().K(view, dVar);
        }

        @Override // d.g.m.a
        public boolean c(android.view.View view, int i, android.os.Bundle bundle) {
            if (super.c(view, i, bundle)) {
                return true;
            }
            if (this.f2232d.d() || this.f2232d.f2230d.getLayoutManager() == null) {
                return false;
            }
            androidx.recyclerview.widget.RecyclerView.k layoutManager = this.f2232d.f2230d.getLayoutManager();
            androidx.recyclerview.widget.RecyclerView.q qVar = layoutManager.b.b;
            return layoutManager.a0();
        }
    }

    public u(androidx.recyclerview.widget.RecyclerView recyclerView) {
        this.f2230d = recyclerView;
    }

    @Override // d.g.m.a
    public void a(android.view.View view, android.view.accessibility.AccessibilityEvent accessibilityEvent) {
        this.a.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setClassName(androidx.recyclerview.widget.RecyclerView.class.getName());
        if (!(view instanceof androidx.recyclerview.widget.RecyclerView) || d()) {
            return;
        }
        androidx.recyclerview.widget.RecyclerView recyclerView = (androidx.recyclerview.widget.RecyclerView) view;
        if (recyclerView.getLayoutManager() != null) {
            recyclerView.getLayoutManager().I(accessibilityEvent);
        }
    }

    @Override // d.g.m.a
    public void b(android.view.View view, d.g.m.a0.d dVar) {
        this.a.onInitializeAccessibilityNodeInfo(view, dVar.a);
        dVar.a.setClassName(androidx.recyclerview.widget.RecyclerView.class.getName());
        if (d() || this.f2230d.getLayoutManager() == null) {
            return;
        }
        androidx.recyclerview.widget.RecyclerView.k layoutManager = this.f2230d.getLayoutManager();
        androidx.recyclerview.widget.RecyclerView recyclerView = layoutManager.b;
        androidx.recyclerview.widget.RecyclerView.q qVar = recyclerView.b;
        androidx.recyclerview.widget.RecyclerView.u uVar = recyclerView.g0;
        if (recyclerView.canScrollVertically(-1) || layoutManager.b.canScrollHorizontally(-1)) {
            dVar.a.addAction(8192);
            dVar.a.setScrollable(true);
        }
        if (layoutManager.b.canScrollVertically(1) || layoutManager.b.canScrollHorizontally(1)) {
            dVar.a.addAction(4096);
            dVar.a.setScrollable(true);
        }
        int iZ = layoutManager.z(qVar, uVar);
        int iR = layoutManager.r(qVar, uVar);
        boolean zC = layoutManager.C();
        int iA = layoutManager.A();
        int i = android.os.Build.VERSION.SDK_INT;
        d.g.m.a0.d.b bVar = i >= 21 ? new d.g.m.a0.d.b(android.view.accessibility.AccessibilityNodeInfo.CollectionInfo.obtain(iZ, iR, zC, iA)) : i >= 19 ? new d.g.m.a0.d.b(android.view.accessibility.AccessibilityNodeInfo.CollectionInfo.obtain(iZ, iR, zC)) : new d.g.m.a0.d.b(null);
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            dVar.a.setCollectionInfo((android.view.accessibility.AccessibilityNodeInfo.CollectionInfo) bVar.a);
        }
    }

    @Override // d.g.m.a
    public boolean c(android.view.View view, int i, android.os.Bundle bundle) {
        if (super.c(view, i, bundle)) {
            return true;
        }
        if (d() || this.f2230d.getLayoutManager() == null) {
            return false;
        }
        androidx.recyclerview.widget.RecyclerView.k layoutManager = this.f2230d.getLayoutManager();
        androidx.recyclerview.widget.RecyclerView.q qVar = layoutManager.b.b;
        return layoutManager.Z(i);
    }

    public boolean d() {
        return this.f2230d.x();
    }
}
