package e.c.a.b.k;

/* loaded from: classes.dex */
public abstract class c extends e.c.a.b.k.d<android.view.View> {

    /* renamed from: d, reason: collision with root package name */
    public final android.graphics.Rect f2619d;

    /* renamed from: e, reason: collision with root package name */
    public final android.graphics.Rect f2620e;

    /* renamed from: f, reason: collision with root package name */
    public int f2621f;

    /* renamed from: g, reason: collision with root package name */
    public int f2622g;

    public c() {
        this.f2619d = new android.graphics.Rect();
        this.f2620e = new android.graphics.Rect();
        this.f2621f = 0;
    }

    public c(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f2619d = new android.graphics.Rect();
        this.f2620e = new android.graphics.Rect();
        this.f2621f = 0;
    }

    @Override // e.c.a.b.k.d
    public void B(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, int i) {
        int bottom;
        com.google.android.material.appbar.AppBarLayout appBarLayoutE = ((com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior) this).E(coordinatorLayout.d(view));
        if (appBarLayoutE != null) {
            androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) view.getLayoutParams();
            android.graphics.Rect rect = this.f2619d;
            rect.set(coordinatorLayout.getPaddingLeft() + ((android.view.ViewGroup.MarginLayoutParams) fVar).leftMargin, appBarLayoutE.getBottom() + ((android.view.ViewGroup.MarginLayoutParams) fVar).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((android.view.ViewGroup.MarginLayoutParams) fVar).rightMargin, ((appBarLayoutE.getBottom() + coordinatorLayout.getHeight()) - coordinatorLayout.getPaddingBottom()) - ((android.view.ViewGroup.MarginLayoutParams) fVar).bottomMargin);
            d.g.m.z lastWindowInsets = coordinatorLayout.getLastWindowInsets();
            if (lastWindowInsets != null && d.g.m.s.m(coordinatorLayout) && !view.getFitsSystemWindows()) {
                rect.left = lastWindowInsets.b() + rect.left;
                rect.right -= lastWindowInsets.c();
            }
            android.graphics.Rect rect2 = this.f2620e;
            int i2 = fVar.f91c;
            int i3 = i2 == 0 ? 8388659 : i2;
            int measuredWidth = view.getMeasuredWidth();
            int measuredHeight = view.getMeasuredHeight();
            if (android.os.Build.VERSION.SDK_INT >= 17) {
                android.view.Gravity.apply(i3, measuredWidth, measuredHeight, rect, rect2, i);
            } else {
                android.view.Gravity.apply(i3, measuredWidth, measuredHeight, rect, rect2);
            }
            int iD = D(appBarLayoutE);
            view.layout(rect2.left, rect2.top - iD, rect2.right, rect2.bottom - iD);
            bottom = rect2.top - appBarLayoutE.getBottom();
        } else {
            coordinatorLayout.q(view, i);
            bottom = 0;
        }
        this.f2621f = bottom;
    }

    public final int D(android.view.View view) {
        int i;
        if (this.f2622g == 0) {
            return 0;
        }
        float f2 = 0.0f;
        if (view instanceof com.google.android.material.appbar.AppBarLayout) {
            com.google.android.material.appbar.AppBarLayout appBarLayout = (com.google.android.material.appbar.AppBarLayout) view;
            int totalScrollRange = appBarLayout.getTotalScrollRange();
            int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
            androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar = ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) appBarLayout.getLayoutParams()).a;
            int iE = cVar instanceof com.google.android.material.appbar.AppBarLayout.BaseBehavior ? ((com.google.android.material.appbar.AppBarLayout.BaseBehavior) cVar).E() : 0;
            if ((downNestedPreScrollRange == 0 || totalScrollRange + iE > downNestedPreScrollRange) && (i = totalScrollRange - downNestedPreScrollRange) != 0) {
                f2 = 1.0f + (iE / i);
            }
        }
        int i2 = this.f2622g;
        return d.b.k.r.h((int) (f2 * i2), 0, i2);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, int i, int i2, int i3, int i4) {
        int i5 = view.getLayoutParams().height;
        if (i5 != -1 && i5 != -2) {
            return false;
        }
        com.google.android.material.appbar.AppBarLayout appBarLayoutE = ((com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior) this).E(coordinatorLayout.d(view));
        if (appBarLayoutE == null) {
            return false;
        }
        if (d.g.m.s.m(appBarLayoutE) && !view.getFitsSystemWindows()) {
            view.setFitsSystemWindows(true);
            if (view.getFitsSystemWindows()) {
                view.requestLayout();
                return true;
            }
        }
        int size = android.view.View.MeasureSpec.getSize(i3);
        if (size == 0) {
            size = coordinatorLayout.getHeight();
        }
        coordinatorLayout.r(view, i, i2, android.view.View.MeasureSpec.makeMeasureSpec((size - appBarLayoutE.getMeasuredHeight()) + appBarLayoutE.getTotalScrollRange(), i5 == -1 ? 1073741824 : Integer.MIN_VALUE), i4);
        return true;
    }
}
