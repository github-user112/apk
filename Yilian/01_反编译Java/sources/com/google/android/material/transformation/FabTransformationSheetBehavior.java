package com.google.android.material.transformation;

/* loaded from: classes.dex */
public class FabTransformationSheetBehavior extends com.google.android.material.transformation.FabTransformationBehavior {

    /* renamed from: g, reason: collision with root package name */
    public java.util.Map<android.view.View, java.lang.Integer> f247g;

    public FabTransformationSheetBehavior() {
    }

    public FabTransformationSheetBehavior(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // com.google.android.material.transformation.ExpandableTransformationBehavior, com.google.android.material.transformation.ExpandableBehavior
    public boolean B(android.view.View view, android.view.View view2, boolean z, boolean z2) {
        int iIntValue;
        android.view.ViewParent parent = view2.getParent();
        if (parent instanceof androidx.coordinatorlayout.widget.CoordinatorLayout) {
            androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout = (androidx.coordinatorlayout.widget.CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (z) {
                this.f247g = new java.util.HashMap(childCount);
            }
            for (int i = 0; i < childCount; i++) {
                android.view.View childAt = coordinatorLayout.getChildAt(i);
                boolean z3 = (childAt.getLayoutParams() instanceof androidx.coordinatorlayout.widget.CoordinatorLayout.f) && (((androidx.coordinatorlayout.widget.CoordinatorLayout.f) childAt.getLayoutParams()).a instanceof com.google.android.material.transformation.FabTransformationScrimBehavior);
                if (childAt != view2 && !z3) {
                    java.util.Map<android.view.View, java.lang.Integer> map = this.f247g;
                    if (z) {
                        map.put(childAt, java.lang.Integer.valueOf(childAt.getImportantForAccessibility()));
                        iIntValue = 4;
                    } else if (map != null && map.containsKey(childAt)) {
                        iIntValue = this.f247g.get(childAt).intValue();
                    }
                    d.g.m.s.S(childAt, iIntValue);
                }
            }
            if (!z) {
                this.f247g = null;
            }
        }
        super.B(view, view2, z, z2);
        return true;
    }
}
