package d.b.q;

/* loaded from: classes.dex */
public abstract class a extends android.view.ViewGroup {
    public final d.b.q.a.C0038a a;
    public final android.content.Context b;

    /* renamed from: c, reason: collision with root package name */
    public androidx.appcompat.widget.ActionMenuView f1753c;

    /* renamed from: d, reason: collision with root package name */
    public d.b.q.c f1754d;

    /* renamed from: e, reason: collision with root package name */
    public int f1755e;

    /* renamed from: f, reason: collision with root package name */
    public d.g.m.v f1756f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f1757g;
    public boolean h;

    /* renamed from: d.b.q.a$a, reason: collision with other inner class name */
    public class C0038a implements d.g.m.w {
        public boolean a = false;
        public int b;

        public C0038a() {
        }

        @Override // d.g.m.w
        public void a(android.view.View view) {
            this.a = true;
        }

        @Override // d.g.m.w
        public void b(android.view.View view) {
            if (this.a) {
                return;
            }
            d.b.q.a aVar = d.b.q.a.this;
            aVar.f1756f = null;
            d.b.q.a.super.setVisibility(this.b);
        }

        @Override // d.g.m.w
        public void c(android.view.View view) {
            d.b.q.a.super.setVisibility(0);
            this.a = false;
        }
    }

    public a(android.content.Context context, android.util.AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public a(android.content.Context context, android.util.AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.a = new d.b.q.a.C0038a();
        android.util.TypedValue typedValue = new android.util.TypedValue();
        if (!context.getTheme().resolveAttribute(d.b.a.actionBarPopupTheme, typedValue, true) || typedValue.resourceId == 0) {
            this.b = context;
        } else {
            this.b = new android.view.ContextThemeWrapper(context, typedValue.resourceId);
        }
    }

    public int c(android.view.View view, int i, int i2, int i3) {
        view.measure(android.view.View.MeasureSpec.makeMeasureSpec(i, Integer.MIN_VALUE), i2);
        return java.lang.Math.max(0, (i - view.getMeasuredWidth()) - i3);
    }

    public int d(android.view.View view, int i, int i2, int i3, boolean z) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i4 = ((i3 - measuredHeight) / 2) + i2;
        if (z) {
            view.layout(i - measuredWidth, i4, i, measuredHeight + i4);
        } else {
            view.layout(i, i4, i + measuredWidth, measuredHeight + i4);
        }
        return z ? -measuredWidth : measuredWidth;
    }

    public d.g.m.v e(int i, long j) {
        d.g.m.v vVar = this.f1756f;
        if (vVar != null) {
            vVar.b();
        }
        if (i != 0) {
            d.g.m.v vVarA = d.g.m.s.a(this);
            vVarA.a(0.0f);
            vVarA.c(j);
            d.b.q.a.C0038a c0038a = this.a;
            d.b.q.a.this.f1756f = vVarA;
            c0038a.b = i;
            android.view.View view = vVarA.a.get();
            if (view != null) {
                vVarA.e(view, c0038a);
            }
            return vVarA;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        d.g.m.v vVarA2 = d.g.m.s.a(this);
        vVarA2.a(1.0f);
        vVarA2.c(j);
        d.b.q.a.C0038a c0038a2 = this.a;
        d.b.q.a.this.f1756f = vVarA2;
        c0038a2.b = i;
        android.view.View view2 = vVarA2.a.get();
        if (view2 != null) {
            vVarA2.e(view2, c0038a2);
        }
        return vVarA2;
    }

    public int getAnimatedVisibility() {
        return this.f1756f != null ? this.a.b : getVisibility();
    }

    public int getContentHeight() {
        return this.f1755e;
    }

    @Override // android.view.View
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        android.content.res.TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, d.b.j.ActionBar, d.b.a.actionBarStyle, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(d.b.j.ActionBar_height, 0));
        typedArrayObtainStyledAttributes.recycle();
        d.b.q.c cVar = this.f1754d;
        if (cVar != null) {
            android.content.res.Configuration configuration2 = cVar.b.getResources().getConfiguration();
            int i = configuration2.screenWidthDp;
            int i2 = configuration2.screenHeightDp;
            cVar.p = (configuration2.smallestScreenWidthDp > 600 || i > 600 || (i > 960 && i2 > 720) || (i > 720 && i2 > 960)) ? 5 : (i >= 500 || (i > 640 && i2 > 480) || (i > 480 && i2 > 640)) ? 4 : i >= 360 ? 3 : 2;
            d.b.p.i.g gVar = cVar.f1703c;
            if (gVar != null) {
                gVar.q(true);
            }
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.h = false;
        }
        if (!this.h) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.h = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.h = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f1757g = false;
        }
        if (!this.f1757g) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f1757g = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f1757g = false;
        }
        return true;
    }

    public abstract void setContentHeight(int i);

    @Override // android.view.View
    public void setVisibility(int i) {
        if (i != getVisibility()) {
            d.g.m.v vVar = this.f1756f;
            if (vVar != null) {
                vVar.b();
            }
            super.setVisibility(i);
        }
    }
}
