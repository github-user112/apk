package d.b.q;

/* loaded from: classes.dex */
public class o0 extends android.widget.HorizontalScrollView implements android.widget.AdapterView.OnItemSelectedListener {
    public java.lang.Runnable a;
    public boolean b;

    /* renamed from: c, reason: collision with root package name */
    public int f1810c;

    /* renamed from: d, reason: collision with root package name */
    public int f1811d;

    /* renamed from: e, reason: collision with root package name */
    public int f1812e;

    /* renamed from: f, reason: collision with root package name */
    public int f1813f;

    public class a extends android.widget.LinearLayout {
        public d.b.k.a.c a;
        public final /* synthetic */ d.b.q.o0 b;

        @Override // android.view.View
        public void onInitializeAccessibilityEvent(android.view.accessibility.AccessibilityEvent accessibilityEvent) {
            super.onInitializeAccessibilityEvent(accessibilityEvent);
            accessibilityEvent.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.view.View
        public void onInitializeAccessibilityNodeInfo(android.view.accessibility.AccessibilityNodeInfo accessibilityNodeInfo) {
            super.onInitializeAccessibilityNodeInfo(accessibilityNodeInfo);
            accessibilityNodeInfo.setClassName("androidx.appcompat.app.ActionBar$Tab");
        }

        @Override // android.widget.LinearLayout, android.view.View
        public void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (this.b.f1810c > 0) {
                int measuredWidth = getMeasuredWidth();
                int i3 = this.b.f1810c;
                if (measuredWidth > i3) {
                    super.onMeasure(android.view.View.MeasureSpec.makeMeasureSpec(i3, 1073741824), i2);
                }
            }
        }

        @Override // android.view.View
        public void setSelected(boolean z) {
            boolean z2 = isSelected() != z;
            super.setSelected(z);
            if (z2 && z) {
                sendAccessibilityEvent(4);
            }
        }
    }

    static {
        new android.view.animation.DecelerateInterpolator();
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        java.lang.Runnable runnable = this.a;
        if (runnable != null) {
            post(runnable);
        }
    }

    @Override // android.view.View
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        android.content.Context context = getContext();
        android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(null, d.b.j.ActionBar, d.b.a.actionBarStyle, 0);
        int layoutDimension = typedArrayObtainStyledAttributes.getLayoutDimension(d.b.j.ActionBar_height, 0);
        android.content.res.Resources resources = context.getResources();
        if (!context.getResources().getBoolean(d.b.b.abc_action_bar_embed_tabs)) {
            layoutDimension = java.lang.Math.min(layoutDimension, resources.getDimensionPixelSize(d.b.d.abc_action_bar_stacked_max_height));
        }
        typedArrayObtainStyledAttributes.recycle();
        setContentHeight(layoutDimension);
        this.f1811d = context.getResources().getDimensionPixelSize(d.b.d.abc_action_bar_stacked_tab_max_width);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        java.lang.Runnable runnable = this.a;
        if (runnable != null) {
            removeCallbacks(runnable);
        }
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onItemSelected(android.widget.AdapterView<?> adapterView, android.view.View view, int i, long j) {
        ((d.b.q.o0.a) view).a.a();
    }

    @Override // android.widget.HorizontalScrollView, android.widget.FrameLayout, android.view.View
    public void onMeasure(int i, int i2) {
        setFillViewport(android.view.View.MeasureSpec.getMode(i) == 1073741824);
        throw null;
    }

    @Override // android.widget.AdapterView.OnItemSelectedListener
    public void onNothingSelected(android.widget.AdapterView<?> adapterView) {
    }

    public void setAllowCollapse(boolean z) {
        this.b = z;
    }

    public void setContentHeight(int i) {
        this.f1812e = i;
        requestLayout();
    }

    public void setTabSelected(int i) {
        this.f1813f = i;
        throw null;
    }
}
