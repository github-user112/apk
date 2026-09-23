package com.google.android.material.internal;

/* loaded from: classes.dex */
public class NavigationMenuItemView extends e.c.a.b.q.c implements d.b.p.i.n.a {
    public static final int[] G = {android.R.attr.state_checked};
    public d.b.p.i.i A;
    public android.content.res.ColorStateList B;
    public boolean C;
    public android.graphics.drawable.Drawable D;
    public final d.g.m.a F;
    public final int v;
    public boolean w;
    public boolean x;
    public final android.widget.CheckedTextView y;
    public android.widget.FrameLayout z;

    public class a extends d.g.m.a {
        public a() {
        }

        @Override // d.g.m.a
        public void b(android.view.View view, d.g.m.a0.d dVar) {
            this.a.onInitializeAccessibilityNodeInfo(view, dVar.a);
            dVar.a.setCheckable(com.google.android.material.internal.NavigationMenuItemView.this.x);
        }
    }

    public NavigationMenuItemView(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.F = new com.google.android.material.internal.NavigationMenuItemView.a();
        setOrientation(0);
        android.view.LayoutInflater.from(context).inflate(e.c.a.b.g.design_navigation_menu_item, (android.view.ViewGroup) this, true);
        this.v = context.getResources().getDimensionPixelSize(e.c.a.b.c.design_navigation_icon_size);
        android.widget.CheckedTextView checkedTextView = (android.widget.CheckedTextView) findViewById(e.c.a.b.e.design_menu_item_text);
        this.y = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        d.g.m.s.L(this.y, this.F);
    }

    private void setActionView(android.view.View view) {
        if (view != null) {
            if (this.z == null) {
                this.z = (android.widget.FrameLayout) ((android.view.ViewStub) findViewById(e.c.a.b.e.design_menu_item_action_area_stub)).inflate();
            }
            this.z.removeAllViews();
            this.z.addView(view);
        }
    }

    @Override // d.b.p.i.n.a
    public boolean d() {
        return false;
    }

    @Override // d.b.p.i.n.a
    public void e(d.b.p.i.i iVar, int i) {
        d.b.q.g0.a aVar;
        int i2;
        android.graphics.drawable.StateListDrawable stateListDrawable;
        this.A = iVar;
        setVisibility(iVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            android.util.TypedValue typedValue = new android.util.TypedValue();
            if (getContext().getTheme().resolveAttribute(d.b.a.colorControlHighlight, typedValue, true)) {
                stateListDrawable = new android.graphics.drawable.StateListDrawable();
                stateListDrawable.addState(G, new android.graphics.drawable.ColorDrawable(typedValue.data));
                stateListDrawable.addState(android.view.ViewGroup.EMPTY_STATE_SET, new android.graphics.drawable.ColorDrawable(0));
            } else {
                stateListDrawable = null;
            }
            d.g.m.s.M(this, stateListDrawable);
        }
        setCheckable(iVar.isCheckable());
        setChecked(iVar.isChecked());
        setEnabled(iVar.isEnabled());
        setTitle(iVar.f1734e);
        setIcon(iVar.getIcon());
        setActionView(iVar.getActionView());
        setContentDescription(iVar.q);
        d.b.k.r.v0(this, iVar.r);
        d.b.p.i.i iVar2 = this.A;
        if (iVar2.f1734e == null && iVar2.getIcon() == null && this.A.getActionView() != null) {
            this.y.setVisibility(8);
            android.widget.FrameLayout frameLayout = this.z;
            if (frameLayout == null) {
                return;
            }
            aVar = (d.b.q.g0.a) frameLayout.getLayoutParams();
            i2 = -1;
        } else {
            this.y.setVisibility(0);
            android.widget.FrameLayout frameLayout2 = this.z;
            if (frameLayout2 == null) {
                return;
            }
            aVar = (d.b.q.g0.a) frameLayout2.getLayoutParams();
            i2 = -2;
        }
        ((android.view.ViewGroup.MarginLayoutParams) aVar).width = i2;
        this.z.setLayoutParams(aVar);
    }

    @Override // d.b.p.i.n.a
    public d.b.p.i.i getItemData() {
        return this.A;
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + 1);
        d.b.p.i.i iVar = this.A;
        if (iVar != null && iVar.isCheckable() && this.A.isChecked()) {
            android.view.ViewGroup.mergeDrawableStates(iArrOnCreateDrawableState, G);
        }
        return iArrOnCreateDrawableState;
    }

    public void setCheckable(boolean z) {
        refreshDrawableState();
        if (this.x != z) {
            this.x = z;
            d.g.m.a aVar = this.F;
            aVar.a.sendAccessibilityEvent(this.y, 2048);
        }
    }

    public void setChecked(boolean z) {
        refreshDrawableState();
        this.y.setChecked(z);
    }

    public void setHorizontalPadding(int i) {
        setPadding(i, 0, i, 0);
    }

    public void setIcon(android.graphics.drawable.Drawable drawable) {
        if (drawable != null) {
            if (this.C) {
                android.graphics.drawable.Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = d.b.k.r.A0(drawable).mutate();
                d.b.k.r.t0(drawable, this.B);
            }
            int i = this.v;
            drawable.setBounds(0, 0, i, i);
        } else if (this.w) {
            if (this.D == null) {
                android.graphics.drawable.Drawable drawableB = d.g.f.b.h.b(getResources(), e.c.a.b.d.navigation_empty_icon, getContext().getTheme());
                this.D = drawableB;
                if (drawableB != null) {
                    int i2 = this.v;
                    drawableB.setBounds(0, 0, i2, i2);
                }
            }
            drawable = this.D;
        }
        d.b.k.r.i0(this.y, drawable, null, null, null);
    }

    public void setIconPadding(int i) {
        this.y.setCompoundDrawablePadding(i);
    }

    public void setIconTintList(android.content.res.ColorStateList colorStateList) {
        this.B = colorStateList;
        this.C = colorStateList != null;
        d.b.p.i.i iVar = this.A;
        if (iVar != null) {
            setIcon(iVar.getIcon());
        }
    }

    public void setNeedsEmptyIcon(boolean z) {
        this.w = z;
    }

    public void setTextAppearance(int i) {
        android.widget.CheckedTextView checkedTextView = this.y;
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            checkedTextView.setTextAppearance(i);
        } else {
            checkedTextView.setTextAppearance(checkedTextView.getContext(), i);
        }
    }

    public void setTextColor(android.content.res.ColorStateList colorStateList) {
        this.y.setTextColor(colorStateList);
    }

    public void setTitle(java.lang.CharSequence charSequence) {
        this.y.setText(charSequence);
    }
}
