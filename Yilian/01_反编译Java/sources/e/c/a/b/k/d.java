package e.c.a.b.k;

/* loaded from: classes.dex */
public class d<V extends android.view.View> extends androidx.coordinatorlayout.widget.CoordinatorLayout.c<V> {
    public e.c.a.b.k.e a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f2623c;

    public d() {
        this.b = 0;
        this.f2623c = 0;
    }

    public d(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.b = 0;
        this.f2623c = 0;
    }

    public int A() {
        e.c.a.b.k.e eVar = this.a;
        if (eVar != null) {
            return eVar.f2625d;
        }
        return 0;
    }

    public void B(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, int i) {
        coordinatorLayout.q(v, i);
    }

    public boolean C(int i) {
        e.c.a.b.k.e eVar = this.a;
        if (eVar == null) {
            this.b = i;
            return false;
        }
        if (eVar.f2625d == i) {
            return false;
        }
        eVar.f2625d = i;
        eVar.a();
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean j(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, int i) {
        B(coordinatorLayout, v, i);
        if (this.a == null) {
            this.a = new e.c.a.b.k.e(v);
        }
        e.c.a.b.k.e eVar = this.a;
        eVar.b = eVar.a.getTop();
        eVar.f2624c = eVar.a.getLeft();
        eVar.a();
        int i2 = this.b;
        if (i2 != 0) {
            e.c.a.b.k.e eVar2 = this.a;
            if (eVar2.f2625d != i2) {
                eVar2.f2625d = i2;
                eVar2.a();
            }
            this.b = 0;
        }
        int i3 = this.f2623c;
        if (i3 == 0) {
            return true;
        }
        e.c.a.b.k.e eVar3 = this.a;
        if (eVar3.f2626e != i3) {
            eVar3.f2626e = i3;
            eVar3.a();
        }
        this.f2623c = 0;
        return true;
    }
}
