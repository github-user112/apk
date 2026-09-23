package e.c.a.b.t;

/* loaded from: classes.dex */
public class d extends android.widget.FrameLayout {
    public final android.view.accessibility.AccessibilityManager a;
    public final d.g.m.a0.b b;

    /* renamed from: c, reason: collision with root package name */
    public e.c.a.b.t.c f2660c;

    /* renamed from: d, reason: collision with root package name */
    public e.c.a.b.t.b f2661d;

    public class a implements d.g.m.a0.b {
        public a() {
        }
    }

    public d(android.content.Context context, android.util.AttributeSet attributeSet) {
        super(context, attributeSet);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.c.a.b.i.SnackbarLayout);
        if (typedArrayObtainStyledAttributes.hasValue(e.c.a.b.i.SnackbarLayout_elevation)) {
            d.g.m.s.Q(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(e.c.a.b.i.SnackbarLayout_elevation, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.a = (android.view.accessibility.AccessibilityManager) context.getSystemService("accessibility");
        e.c.a.b.t.d.a aVar = new e.c.a.b.t.d.a();
        this.b = aVar;
        android.view.accessibility.AccessibilityManager accessibilityManager = this.a;
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            accessibilityManager.addTouchExplorationStateChangeListener(new d.g.m.a0.c(aVar));
        }
        setClickableOrFocusableBasedOnAccessibility(this.a.isTouchExplorationEnabled());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setClickableOrFocusableBasedOnAccessibility(boolean z) {
        setClickable(!z);
        setFocusable(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        e.c.a.b.t.b bVar = this.f2661d;
        if (bVar != null) {
            bVar.onViewAttachedToWindow(this);
        }
        d.g.m.s.K(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        e.c.a.b.t.b bVar = this.f2661d;
        if (bVar != null) {
            bVar.onViewDetachedFromWindow(this);
        }
        android.view.accessibility.AccessibilityManager accessibilityManager = this.a;
        d.g.m.a0.b bVar2 = this.b;
        if (android.os.Build.VERSION.SDK_INT < 19 || bVar2 == null) {
            return;
        }
        accessibilityManager.removeTouchExplorationStateChangeListener(new d.g.m.a0.c(bVar2));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);
        e.c.a.b.t.c cVar = this.f2660c;
        if (cVar != null) {
            cVar.a(this, i, i2, i3, i4);
        }
    }

    public void setOnAttachStateChangeListener(e.c.a.b.t.b bVar) {
        this.f2661d = bVar;
    }

    public void setOnLayoutChangeListener(e.c.a.b.t.c cVar) {
        this.f2660c = cVar;
    }
}
