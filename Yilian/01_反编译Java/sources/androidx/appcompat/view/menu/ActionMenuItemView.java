package androidx.appcompat.view.menu;

/* loaded from: classes.dex */
public class ActionMenuItemView extends d.b.q.x implements d.b.p.i.n.a, android.view.View.OnClickListener, androidx.appcompat.widget.ActionMenuView.a {

    /* renamed from: e, reason: collision with root package name */
    public d.b.p.i.i f30e;

    /* renamed from: f, reason: collision with root package name */
    public java.lang.CharSequence f31f;

    /* renamed from: g, reason: collision with root package name */
    public android.graphics.drawable.Drawable f32g;
    public d.b.p.i.g.b h;
    public d.b.q.f0 i;
    public androidx.appcompat.view.menu.ActionMenuItemView.b j;
    public boolean k;
    public boolean l;
    public int m;
    public int n;
    public int o;

    public class a extends d.b.q.f0 {
        public a() {
            super(androidx.appcompat.view.menu.ActionMenuItemView.this);
        }

        @Override // d.b.q.f0
        public d.b.p.i.p b() {
            d.b.q.c.a aVar;
            androidx.appcompat.view.menu.ActionMenuItemView.b bVar = androidx.appcompat.view.menu.ActionMenuItemView.this.j;
            if (bVar == null || (aVar = d.b.q.c.this.u) == null) {
                return null;
            }
            return aVar.a();
        }

        @Override // d.b.q.f0
        public boolean c() {
            d.b.p.i.p pVarB;
            androidx.appcompat.view.menu.ActionMenuItemView actionMenuItemView = androidx.appcompat.view.menu.ActionMenuItemView.this;
            d.b.p.i.g.b bVar = actionMenuItemView.h;
            return bVar != null && bVar.a(actionMenuItemView.f30e) && (pVarB = b()) != null && pVarB.b();
        }
    }

    public static abstract class b {
    }

    public ActionMenuItemView(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        android.content.res.Resources resources = context.getResources();
        this.k = f();
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.b.j.ActionMenuItemView, 0, 0);
        this.m = typedArrayObtainStyledAttributes.getDimensionPixelSize(d.b.j.ActionMenuItemView_android_minWidth, 0);
        typedArrayObtainStyledAttributes.recycle();
        this.o = (int) ((resources.getDisplayMetrics().density * 32.0f) + 0.5f);
        setOnClickListener(this);
        this.n = -1;
        setSaveEnabled(false);
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean a() {
        return c();
    }

    @Override // androidx.appcompat.widget.ActionMenuView.a
    public boolean b() {
        return c() && this.f30e.getIcon() == null;
    }

    public boolean c() {
        return !android.text.TextUtils.isEmpty(getText());
    }

    @Override // d.b.p.i.n.a
    public boolean d() {
        return true;
    }

    @Override // d.b.p.i.n.a
    public void e(d.b.p.i.i iVar, int i) {
        this.f30e = iVar;
        setIcon(iVar.getIcon());
        setTitle(d() ? iVar.getTitleCondensed() : iVar.f1734e);
        setId(iVar.a);
        setVisibility(iVar.isVisible() ? 0 : 8);
        setEnabled(iVar.isEnabled());
        if (iVar.hasSubMenu() && this.i == null) {
            this.i = new androidx.appcompat.view.menu.ActionMenuItemView.a();
        }
    }

    public final boolean f() {
        android.content.res.Configuration configuration = getContext().getResources().getConfiguration();
        int i = configuration.screenWidthDp;
        return i >= 480 || (i >= 640 && configuration.screenHeightDp >= 480) || configuration.orientation == 2;
    }

    public final void g() {
        boolean z = true;
        boolean z2 = !android.text.TextUtils.isEmpty(this.f31f);
        if (this.f32g != null) {
            if (!((this.f30e.y & 4) == 4) || (!this.k && !this.l)) {
                z = false;
            }
        }
        boolean z3 = z2 & z;
        setText(z3 ? this.f31f : null);
        java.lang.CharSequence charSequence = this.f30e.q;
        if (android.text.TextUtils.isEmpty(charSequence)) {
            charSequence = z3 ? null : this.f30e.f1734e;
        }
        setContentDescription(charSequence);
        java.lang.CharSequence charSequence2 = this.f30e.r;
        if (android.text.TextUtils.isEmpty(charSequence2)) {
            d.b.k.r.v0(this, z3 ? null : this.f30e.f1734e);
        } else {
            d.b.k.r.v0(this, charSequence2);
        }
    }

    @Override // d.b.p.i.n.a
    public d.b.p.i.i getItemData() {
        return this.f30e;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(android.view.View view) {
        d.b.p.i.g.b bVar = this.h;
        if (bVar != null) {
            bVar.a(this.f30e);
        }
    }

    @Override // android.widget.TextView, android.view.View
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.k = f();
        g();
    }

    @Override // d.b.q.x, android.widget.TextView, android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        boolean zC = c();
        if (zC && (i3 = this.n) >= 0) {
            super.setPadding(i3, getPaddingTop(), getPaddingRight(), getPaddingBottom());
        }
        super.onMeasure(i, i2);
        int mode = android.view.View.MeasureSpec.getMode(i);
        int size = android.view.View.MeasureSpec.getSize(i);
        int measuredWidth = getMeasuredWidth();
        int iMin = mode == Integer.MIN_VALUE ? java.lang.Math.min(size, this.m) : this.m;
        if (mode != 1073741824 && this.m > 0 && measuredWidth < iMin) {
            super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(iMin, 1073741824), i2);
        }
        if (zC || this.f32g == null) {
            return;
        }
        super.setPadding((getMeasuredWidth() - this.f32g.getBounds().width()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    }

    @Override // android.widget.TextView, android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        super.onRestoreInstanceState(null);
    }

    @Override // android.widget.TextView, android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        d.b.q.f0 f0Var;
        if (this.f30e.hasSubMenu() && (f0Var = this.i) != null && f0Var.onTouch(this, motionEvent)) {
            return true;
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setCheckable(boolean z) {
    }

    public void setChecked(boolean z) {
    }

    public void setExpandedFormat(boolean z) {
        if (this.l != z) {
            this.l = z;
            d.b.p.i.i iVar = this.f30e;
            if (iVar != null) {
                iVar.n.p();
            }
        }
    }

    public void setIcon(android.graphics.drawable.Drawable drawable) {
        this.f32g = drawable;
        if (drawable != null) {
            int intrinsicWidth = drawable.getIntrinsicWidth();
            int intrinsicHeight = drawable.getIntrinsicHeight();
            int i = this.o;
            if (intrinsicWidth > i) {
                intrinsicHeight = (int) (intrinsicHeight * (i / intrinsicWidth));
                intrinsicWidth = i;
            }
            int i2 = this.o;
            if (intrinsicHeight > i2) {
                intrinsicWidth = (int) (intrinsicWidth * (i2 / intrinsicHeight));
                intrinsicHeight = i2;
            }
            drawable.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        }
        setCompoundDrawables(drawable, null, null, null);
        g();
    }

    public void setItemInvoker(d.b.p.i.g.b bVar) {
        this.h = bVar;
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i, int i2, int i3, int i4) {
        this.n = i;
        super.setPadding(i, i2, i3, i4);
    }

    public void setPopupCallback(androidx.appcompat.view.menu.ActionMenuItemView.b bVar) {
        this.j = bVar;
    }

    public void setTitle(java.lang.CharSequence charSequence) {
        this.f31f = charSequence;
        g();
    }
}
