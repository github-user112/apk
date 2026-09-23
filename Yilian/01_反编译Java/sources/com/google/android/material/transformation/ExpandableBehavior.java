package com.google.android.material.transformation;

/* loaded from: classes.dex */
public abstract class ExpandableBehavior extends androidx.coordinatorlayout.widget.CoordinatorLayout.c<android.view.View> {
    public int a;

    public class a implements android.view.ViewTreeObserver.OnPreDrawListener {
        public final /* synthetic */ android.view.View a;
        public final /* synthetic */ int b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ e.c.a.b.o.a f238c;

        public a(android.view.View view, int i, e.c.a.b.o.a aVar) {
            this.a = view;
            this.b = i;
            this.f238c = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.a.getViewTreeObserver().removeOnPreDrawListener(this);
            com.google.android.material.transformation.ExpandableBehavior expandableBehavior = com.google.android.material.transformation.ExpandableBehavior.this;
            if (expandableBehavior.a == this.b) {
                e.c.a.b.o.a aVar = this.f238c;
                expandableBehavior.B((android.view.View) aVar, this.a, aVar.a(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.a = 0;
    }

    public ExpandableBehavior(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.a = 0;
    }

    public final boolean A(boolean z) {
        if (!z) {
            return this.a == 1;
        }
        int i = this.a;
        return i == 0 || i == 2;
    }

    public abstract boolean B(android.view.View view, android.view.View view2, boolean z, boolean z2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean g(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.View view2) {
        e.c.a.b.o.a aVar = (e.c.a.b.o.a) view2;
        if (!A(aVar.a())) {
            return false;
        }
        this.a = aVar.a() ? 1 : 2;
        return B((android.view.View) aVar, view, aVar.a(), true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean j(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, int i) {
        e.c.a.b.o.a aVar;
        if (!d.g.m.s.A(view)) {
            java.util.List<android.view.View> listD = coordinatorLayout.d(view);
            int size = listD.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size) {
                    aVar = null;
                    break;
                }
                android.view.View view2 = listD.get(i2);
                if (d(coordinatorLayout, view, view2)) {
                    aVar = (e.c.a.b.o.a) view2;
                    break;
                }
                i2++;
            }
            if (aVar != null && A(aVar.a())) {
                int i3 = aVar.a() ? 1 : 2;
                this.a = i3;
                view.getViewTreeObserver().addOnPreDrawListener(new com.google.android.material.transformation.ExpandableBehavior.a(view, i3, aVar));
            }
        }
        return false;
    }
}
