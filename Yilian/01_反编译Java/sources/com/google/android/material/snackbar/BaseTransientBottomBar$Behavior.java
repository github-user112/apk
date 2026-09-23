package com.google.android.material.snackbar;

/* loaded from: classes.dex */
public class BaseTransientBottomBar$Behavior extends com.google.android.material.behavior.SwipeDismissBehavior<android.view.View> {
    public final e.c.a.b.t.a j = new e.c.a.b.t.a(this);

    @Override // com.google.android.material.behavior.SwipeDismissBehavior
    public boolean A(android.view.View view) {
        if (this.j != null) {
            return view instanceof e.c.a.b.t.d;
        }
        throw null;
    }

    @Override // com.google.android.material.behavior.SwipeDismissBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean i(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.MotionEvent motionEvent) {
        if (this.j == null) {
            throw null;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 3) {
                if (e.c.a.b.t.e.f2662c == null) {
                    e.c.a.b.t.e.f2662c = new e.c.a.b.t.e();
                }
                synchronized (e.c.a.b.t.e.f2662c.a) {
                }
            }
        } else if (coordinatorLayout.l(view, (int) motionEvent.getX(), (int) motionEvent.getY())) {
            if (e.c.a.b.t.e.f2662c == null) {
                e.c.a.b.t.e.f2662c = new e.c.a.b.t.e();
            }
            synchronized (e.c.a.b.t.e.f2662c.a) {
            }
        }
        return super.i(coordinatorLayout, view, motionEvent);
    }
}
