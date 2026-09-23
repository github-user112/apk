package d.b.p.i;

import d.b.q.c.b;

/* loaded from: classes.dex */
public abstract class b implements d.b.p.i.m {
    public android.content.Context a;
    public android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public d.b.p.i.g f1703c;

    /* renamed from: d, reason: collision with root package name */
    public android.view.LayoutInflater f1704d;

    /* renamed from: e, reason: collision with root package name */
    public d.b.p.i.m.a f1705e;

    /* renamed from: f, reason: collision with root package name */
    public int f1706f;

    /* renamed from: g, reason: collision with root package name */
    public int f1707g;
    public d.b.p.i.n h;

    public b(android.content.Context context, int i, int i2) {
        this.a = context;
        this.f1704d = android.view.LayoutInflater.from(context);
        this.f1706f = i;
        this.f1707g = i2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [android.view.View] */
    /* JADX WARN: Type inference failed for: r4v4, types: [d.b.p.i.n$a] */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    public android.view.View b(d.b.p.i.i iVar, android.view.View view, android.view.ViewGroup viewGroup) {
        androidx.appcompat.view.menu.ActionMenuItemView actionMenuItemView = view instanceof d.b.p.i.n.a ? (d.b.p.i.n.a) view : (d.b.p.i.n.a) this.f1704d.inflate(this.f1707g, viewGroup, false);
        d.b.q.c cVar = (d.b.q.c) this;
        actionMenuItemView.e(iVar, 0);
        androidx.appcompat.view.menu.ActionMenuItemView actionMenuItemView2 = actionMenuItemView;
        actionMenuItemView2.setItemInvoker((androidx.appcompat.widget.ActionMenuView) cVar.h);
        if (cVar.w == null) {
            cVar.w = cVar.new b();
        }
        actionMenuItemView2.setPopupCallback(cVar.w);
        return actionMenuItemView;
    }

    @Override // d.b.p.i.m
    public boolean e(d.b.p.i.r rVar) {
        d.b.p.i.m.a aVar = this.f1705e;
        if (aVar != null) {
            return aVar.b(rVar);
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // d.b.p.i.m
    public void f(boolean z) {
        int i;
        boolean z2;
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) this.h;
        if (viewGroup == null) {
            return;
        }
        d.b.p.i.g gVar = this.f1703c;
        if (gVar != null) {
            gVar.i();
            java.util.ArrayList<d.b.p.i.i> arrayListL = this.f1703c.l();
            int size = arrayListL.size();
            i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                d.b.p.i.i iVar = arrayListL.get(i2);
                if (iVar.g()) {
                    android.view.View childAt = viewGroup.getChildAt(i);
                    d.b.p.i.i itemData = childAt instanceof d.b.p.i.n.a ? ((d.b.p.i.n.a) childAt).getItemData() : null;
                    android.view.View viewB = b(iVar, childAt, viewGroup);
                    if (iVar != itemData) {
                        viewB.setPressed(false);
                        viewB.jumpDrawablesToCurrentState();
                    }
                    if (viewB != childAt) {
                        android.view.ViewGroup viewGroup2 = (android.view.ViewGroup) viewB.getParent();
                        if (viewGroup2 != null) {
                            viewGroup2.removeView(viewB);
                        }
                        ((android.view.ViewGroup) this.h).addView(viewB, i);
                    }
                    i++;
                }
            }
        } else {
            i = 0;
        }
        while (i < viewGroup.getChildCount()) {
            if (viewGroup.getChildAt(i) == ((d.b.q.c) this).i) {
                z2 = false;
            } else {
                viewGroup.removeViewAt(i);
                z2 = true;
            }
            if (!z2) {
                i++;
            }
        }
    }

    @Override // d.b.p.i.m
    public boolean i(d.b.p.i.g gVar, d.b.p.i.i iVar) {
        return false;
    }

    @Override // d.b.p.i.m
    public boolean j(d.b.p.i.g gVar, d.b.p.i.i iVar) {
        return false;
    }

    @Override // d.b.p.i.m
    public void k(d.b.p.i.m.a aVar) {
        this.f1705e = aVar;
    }
}
