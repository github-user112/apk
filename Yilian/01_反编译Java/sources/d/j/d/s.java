package d.j.d;

/* loaded from: classes.dex */
public final class s extends android.widget.FrameLayout {
    public java.util.ArrayList<android.view.View> a;
    public java.util.ArrayList<android.view.View> b;

    /* renamed from: c, reason: collision with root package name */
    public boolean f2131c;

    public s(android.content.Context context, android.util.AttributeSet attributeSet, d.j.d.y yVar) {
        android.view.View view;
        super(context, attributeSet);
        this.f2131c = true;
        java.lang.String classAttribute = attributeSet.getClassAttribute();
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.j.c.FragmentContainerView);
        classAttribute = classAttribute == null ? typedArrayObtainStyledAttributes.getString(d.j.c.FragmentContainerView_android_name) : classAttribute;
        java.lang.String string = typedArrayObtainStyledAttributes.getString(d.j.c.FragmentContainerView_android_tag);
        typedArrayObtainStyledAttributes.recycle();
        int id = getId();
        androidx.fragment.app.Fragment fragmentF = yVar.F(id);
        if (classAttribute != null && fragmentF == null) {
            if (id <= 0) {
                throw new java.lang.IllegalStateException(e.a.c.a.a.f("FragmentContainerView must have an android:id to add Fragment ", classAttribute, string != null ? e.a.c.a.a.e(" with tag ", string) : ""));
            }
            androidx.fragment.app.Fragment fragmentA = yVar.I().a(context.getClassLoader(), classAttribute);
            fragmentA.onInflate(context, attributeSet, (android.os.Bundle) null);
            d.j.d.a aVar = new d.j.d.a(yVar);
            aVar.o = true;
            fragmentA.mContainer = this;
            aVar.d(getId(), fragmentA, string, 1);
            aVar.c();
        }
        java.util.Iterator it = ((java.util.ArrayList) yVar.f2147c.f()).iterator();
        while (it.hasNext()) {
            d.j.d.e0 e0Var = (d.j.d.e0) it.next();
            androidx.fragment.app.Fragment fragment = e0Var.f2073c;
            if (fragment.mContainerId == getId() && (view = fragment.mView) != null && view.getParent() == null) {
                fragment.mContainer = this;
                e0Var.b();
            }
        }
    }

    public final void a(android.view.View view) {
        java.util.ArrayList<android.view.View> arrayList = this.b;
        if (arrayList == null || !arrayList.contains(view)) {
            return;
        }
        if (this.a == null) {
            this.a = new java.util.ArrayList<>();
        }
        this.a.add(view);
    }

    @Override // android.view.ViewGroup
    public void addView(android.view.View view, int i, android.view.ViewGroup.LayoutParams layoutParams) {
        java.lang.Object tag = view.getTag(d.j.b.fragment_container_view_tag);
        if ((tag instanceof androidx.fragment.app.Fragment ? (androidx.fragment.app.Fragment) tag : null) != null) {
            super.addView(view, i, layoutParams);
            return;
        }
        throw new java.lang.IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup
    public boolean addViewInLayout(android.view.View view, int i, android.view.ViewGroup.LayoutParams layoutParams, boolean z) {
        java.lang.Object tag = view.getTag(d.j.b.fragment_container_view_tag);
        if ((tag instanceof androidx.fragment.app.Fragment ? (androidx.fragment.app.Fragment) tag : null) != null) {
            return super.addViewInLayout(view, i, layoutParams, z);
        }
        throw new java.lang.IllegalStateException("Views added to a FragmentContainerView must be associated with a Fragment. View " + view + " is not associated with a Fragment.");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(android.graphics.Canvas canvas) {
        if (this.f2131c && this.a != null) {
            for (int i = 0; i < this.a.size(); i++) {
                super.drawChild(canvas, this.a.get(i), getDrawingTime());
            }
        }
        super.dispatchDraw(canvas);
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(android.graphics.Canvas canvas, android.view.View view, long j) {
        java.util.ArrayList<android.view.View> arrayList;
        if (!this.f2131c || (arrayList = this.a) == null || arrayList.size() <= 0 || !this.a.contains(view)) {
            return super.drawChild(canvas, view, j);
        }
        return false;
    }

    @Override // android.view.ViewGroup
    public void endViewTransition(android.view.View view) {
        java.util.ArrayList<android.view.View> arrayList = this.b;
        if (arrayList != null) {
            arrayList.remove(view);
            java.util.ArrayList<android.view.View> arrayList2 = this.a;
            if (arrayList2 != null && arrayList2.remove(view)) {
                this.f2131c = true;
            }
        }
        super.endViewTransition(view);
    }

    @Override // android.view.View
    public android.view.WindowInsets onApplyWindowInsets(android.view.WindowInsets windowInsets) {
        for (int i = 0; i < getChildCount(); i++) {
            getChildAt(i).dispatchApplyWindowInsets(new android.view.WindowInsets(windowInsets));
        }
        return windowInsets;
    }

    @Override // android.view.ViewGroup
    public void removeAllViewsInLayout() {
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            a(getChildAt(childCount));
        }
        super.removeAllViewsInLayout();
    }

    @Override // android.view.ViewGroup
    public void removeDetachedView(android.view.View view, boolean z) {
        if (z) {
            a(view);
        }
        super.removeDetachedView(view, z);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(android.view.View view) {
        a(view);
        super.removeView(view);
    }

    @Override // android.view.ViewGroup
    public void removeViewAt(int i) {
        a(getChildAt(i));
        super.removeViewAt(i);
    }

    @Override // android.view.ViewGroup
    public void removeViewInLayout(android.view.View view) {
        a(view);
        super.removeViewInLayout(view);
    }

    @Override // android.view.ViewGroup
    public void removeViews(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            a(getChildAt(i3));
        }
        super.removeViews(i, i2);
    }

    @Override // android.view.ViewGroup
    public void removeViewsInLayout(int i, int i2) {
        for (int i3 = i; i3 < i + i2; i3++) {
            a(getChildAt(i3));
        }
        super.removeViewsInLayout(i, i2);
    }

    public void setDrawDisappearingViewsLast(boolean z) {
        this.f2131c = z;
    }

    @Override // android.view.ViewGroup
    public void setLayoutTransition(android.animation.LayoutTransition layoutTransition) {
        if (android.os.Build.VERSION.SDK_INT >= 18) {
            throw new java.lang.UnsupportedOperationException("FragmentContainerView does not support Layout Transitions or animateLayoutChanges=\"true\".");
        }
        super.setLayoutTransition(layoutTransition);
    }

    @Override // android.view.ViewGroup
    public void startViewTransition(android.view.View view) {
        if (view.getParent() == this) {
            if (this.b == null) {
                this.b = new java.util.ArrayList<>();
            }
            this.b.add(view);
        }
        super.startViewTransition(view);
    }
}
