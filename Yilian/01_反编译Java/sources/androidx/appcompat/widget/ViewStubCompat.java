package androidx.appcompat.widget;

/* loaded from: classes.dex */
public final class ViewStubCompat extends android.view.View {
    public int a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public java.lang.ref.WeakReference<android.view.View> f83c;

    /* renamed from: d, reason: collision with root package name */
    public android.view.LayoutInflater f84d;

    /* renamed from: e, reason: collision with root package name */
    public androidx.appcompat.widget.ViewStubCompat.a f85e;

    public interface a {
        void a(androidx.appcompat.widget.ViewStubCompat viewStubCompat, android.view.View view);
    }

    public ViewStubCompat(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet, 0);
        this.a = 0;
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.b.j.ViewStubCompat, 0, 0);
        this.b = typedArrayObtainStyledAttributes.getResourceId(d.b.j.ViewStubCompat_android_inflatedId, -1);
        this.a = typedArrayObtainStyledAttributes.getResourceId(d.b.j.ViewStubCompat_android_layout, 0);
        setId(typedArrayObtainStyledAttributes.getResourceId(d.b.j.ViewStubCompat_android_id, -1));
        typedArrayObtainStyledAttributes.recycle();
        setVisibility(8);
        setWillNotDraw(true);
    }

    public android.view.View a() {
        android.view.ViewParent parent = getParent();
        if (!(parent instanceof android.view.ViewGroup)) {
            throw new java.lang.IllegalStateException("ViewStub must have a non-null ViewGroup viewParent");
        }
        if (this.a == 0) {
            throw new java.lang.IllegalArgumentException("ViewStub must have a valid layoutResource");
        }
        android.view.ViewGroup viewGroup = (android.view.ViewGroup) parent;
        android.view.LayoutInflater layoutInflaterFrom = this.f84d;
        if (layoutInflaterFrom == null) {
            layoutInflaterFrom = android.view.LayoutInflater.from(getContext());
        }
        android.view.View viewInflate = layoutInflaterFrom.inflate(this.a, viewGroup, false);
        int i = this.b;
        if (i != -1) {
            viewInflate.setId(i);
        }
        int iIndexOfChild = viewGroup.indexOfChild(this);
        viewGroup.removeViewInLayout(this);
        android.view.ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            viewGroup.addView(viewInflate, iIndexOfChild, layoutParams);
        } else {
            viewGroup.addView(viewInflate, iIndexOfChild);
        }
        this.f83c = new java.lang.ref.WeakReference<>(viewInflate);
        androidx.appcompat.widget.ViewStubCompat.a aVar = this.f85e;
        if (aVar != null) {
            aVar.a(this, viewInflate);
        }
        return viewInflate;
    }

    @Override // android.view.View
    public void dispatchDraw(android.graphics.Canvas canvas) {
    }

    @Override // android.view.View
    @android.annotation.SuppressLint({"MissingSuperCall"})
    public void draw(android.graphics.Canvas canvas) {
    }

    public int getInflatedId() {
        return this.b;
    }

    public android.view.LayoutInflater getLayoutInflater() {
        return this.f84d;
    }

    public int getLayoutResource() {
        return this.a;
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        setMeasuredDimension(0, 0);
    }

    public void setInflatedId(int i) {
        this.b = i;
    }

    public void setLayoutInflater(android.view.LayoutInflater layoutInflater) {
        this.f84d = layoutInflater;
    }

    public void setLayoutResource(int i) {
        this.a = i;
    }

    public void setOnInflateListener(androidx.appcompat.widget.ViewStubCompat.a aVar) {
        this.f85e = aVar;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        java.lang.ref.WeakReference<android.view.View> weakReference = this.f83c;
        if (weakReference != null) {
            android.view.View view = weakReference.get();
            if (view == null) {
                throw new java.lang.IllegalStateException("setVisibility called on un-referenced view");
            }
            view.setVisibility(i);
            return;
        }
        super.setVisibility(i);
        if (i == 0 || i == 4) {
            a();
        }
    }
}
