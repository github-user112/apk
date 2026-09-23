package androidx.coordinatorlayout.widget;

/* loaded from: classes.dex */
public class CoordinatorLayout extends android.view.ViewGroup implements d.g.m.h {
    public static final java.lang.String t;
    public static final java.lang.Class<?>[] u;
    public static final java.lang.ThreadLocal<java.util.Map<java.lang.String, java.lang.reflect.Constructor<androidx.coordinatorlayout.widget.CoordinatorLayout.c>>> v;
    public static final java.util.Comparator<android.view.View> w;
    public static final d.g.l.b<android.graphics.Rect> x;
    public final java.util.List<android.view.View> a;
    public final d.f.d.a<android.view.View> b;

    /* renamed from: c, reason: collision with root package name */
    public final java.util.List<android.view.View> f86c;

    /* renamed from: d, reason: collision with root package name */
    public final java.util.List<android.view.View> f87d;

    /* renamed from: e, reason: collision with root package name */
    public final int[] f88e;

    /* renamed from: f, reason: collision with root package name */
    public android.graphics.Paint f89f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f90g;
    public boolean h;
    public int[] i;
    public android.view.View j;
    public android.view.View k;
    public androidx.coordinatorlayout.widget.CoordinatorLayout.g l;
    public boolean m;
    public d.g.m.z n;
    public boolean o;
    public android.graphics.drawable.Drawable p;
    public android.view.ViewGroup.OnHierarchyChangeListener q;
    public d.g.m.l r;
    public final d.g.m.k s;

    public class a implements d.g.m.l {
        public a() {
        }

        @Override // d.g.m.l
        public d.g.m.z a(android.view.View view, d.g.m.z zVar) {
            androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar;
            androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout = androidx.coordinatorlayout.widget.CoordinatorLayout.this;
            if (!d.b.k.r.s(coordinatorLayout.n, zVar)) {
                coordinatorLayout.n = zVar;
                boolean z = zVar.d() > 0;
                coordinatorLayout.o = z;
                coordinatorLayout.setWillNotDraw(!z && coordinatorLayout.getBackground() == null);
                if (!zVar.a.h()) {
                    int childCount = coordinatorLayout.getChildCount();
                    for (int i = 0; i < childCount; i++) {
                        android.view.View childAt = coordinatorLayout.getChildAt(i);
                        if (d.g.m.s.m(childAt) && (cVar = ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) childAt.getLayoutParams()).a) != null) {
                            zVar = cVar.e(zVar);
                            if (zVar.a.h()) {
                                break;
                            }
                        }
                    }
                }
                coordinatorLayout.requestLayout();
            }
            return zVar;
        }
    }

    public interface b {
        androidx.coordinatorlayout.widget.CoordinatorLayout.c getBehavior();
    }

    public static abstract class c<V extends android.view.View> {
        public c() {
        }

        public c(android.content.Context context, android.util.AttributeSet attributeSet) {
        }

        public boolean a(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.graphics.Rect rect) {
            return false;
        }

        public int b() {
            return -16777216;
        }

        public float c() {
            return 0.0f;
        }

        public boolean d(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view) {
            return false;
        }

        public d.g.m.z e(d.g.m.z zVar) {
            return zVar;
        }

        public void f(androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar) {
        }

        public boolean g(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view) {
            return false;
        }

        public void h() {
        }

        public boolean i(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.MotionEvent motionEvent) {
            return false;
        }

        public boolean j(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, int i) {
            return false;
        }

        public boolean k(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, int i, int i2, int i3, int i4) {
            return false;
        }

        public boolean l() {
            return false;
        }

        public boolean m(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view, float f2, float f3) {
            return false;
        }

        @java.lang.Deprecated
        public void n() {
        }

        public void o(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view, int i, int i2, int[] iArr, int i3) {
            if (i3 == 0) {
                n();
            }
        }

        @java.lang.Deprecated
        public void p(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view, int i, int i2, int i3, int i4) {
        }

        public void q(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view, int i, int i2, int i3, int i4, int i5) {
            if (i5 == 0) {
                p(coordinatorLayout, v, view, i, i2, i3, i4);
            }
        }

        @java.lang.Deprecated
        public void r() {
        }

        public boolean s(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.graphics.Rect rect, boolean z) {
            return false;
        }

        public void t(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.os.Parcelable parcelable) {
        }

        public android.os.Parcelable u(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v) {
            return android.view.View.BaseSavedState.EMPTY_STATE;
        }

        @java.lang.Deprecated
        public boolean v(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view, android.view.View view2, int i) {
            return false;
        }

        public boolean w(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view, android.view.View view2, int i, int i2) {
            if (i2 == 0) {
                return v(coordinatorLayout, v, view, view2, i);
            }
            return false;
        }

        @java.lang.Deprecated
        public void x() {
        }

        public void y(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.View view, int i) {
            if (i == 0) {
                x();
            }
        }

        public boolean z(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, V v, android.view.MotionEvent motionEvent) {
            return false;
        }
    }

    @java.lang.annotation.Retention(java.lang.annotation.RetentionPolicy.RUNTIME)
    @java.lang.Deprecated
    public @interface d {
        java.lang.Class<? extends androidx.coordinatorlayout.widget.CoordinatorLayout.c> value();
    }

    public class e implements android.view.ViewGroup.OnHierarchyChangeListener {
        public e() {
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewAdded(android.view.View view, android.view.View view2) {
            android.view.ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = androidx.coordinatorlayout.widget.CoordinatorLayout.this.q;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewAdded(view, view2);
            }
        }

        @Override // android.view.ViewGroup.OnHierarchyChangeListener
        public void onChildViewRemoved(android.view.View view, android.view.View view2) {
            androidx.coordinatorlayout.widget.CoordinatorLayout.this.p(2);
            android.view.ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener = androidx.coordinatorlayout.widget.CoordinatorLayout.this.q;
            if (onHierarchyChangeListener != null) {
                onHierarchyChangeListener.onChildViewRemoved(view, view2);
            }
        }
    }

    public static class f extends android.view.ViewGroup.MarginLayoutParams {
        public androidx.coordinatorlayout.widget.CoordinatorLayout.c a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public int f91c;

        /* renamed from: d, reason: collision with root package name */
        public int f92d;

        /* renamed from: e, reason: collision with root package name */
        public int f93e;

        /* renamed from: f, reason: collision with root package name */
        public int f94f;

        /* renamed from: g, reason: collision with root package name */
        public int f95g;
        public int h;
        public int i;
        public int j;
        public android.view.View k;
        public android.view.View l;
        public boolean m;
        public boolean n;
        public boolean o;
        public boolean p;
        public final android.graphics.Rect q;

        public f(int i, int i2) {
            super(i, i2);
            this.b = false;
            this.f91c = 0;
            this.f92d = 0;
            this.f93e = -1;
            this.f94f = -1;
            this.f95g = 0;
            this.h = 0;
            this.q = new android.graphics.Rect();
        }

        public f(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.b = false;
            this.f91c = 0;
            this.f92d = 0;
            this.f93e = -1;
            this.f94f = -1;
            this.f95g = 0;
            this.h = 0;
            this.q = new android.graphics.Rect();
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, d.f.c.CoordinatorLayout_Layout);
            this.f91c = typedArrayObtainStyledAttributes.getInteger(d.f.c.CoordinatorLayout_Layout_android_layout_gravity, 0);
            this.f94f = typedArrayObtainStyledAttributes.getResourceId(d.f.c.CoordinatorLayout_Layout_layout_anchor, -1);
            this.f92d = typedArrayObtainStyledAttributes.getInteger(d.f.c.CoordinatorLayout_Layout_layout_anchorGravity, 0);
            this.f93e = typedArrayObtainStyledAttributes.getInteger(d.f.c.CoordinatorLayout_Layout_layout_keyline, -1);
            this.f95g = typedArrayObtainStyledAttributes.getInt(d.f.c.CoordinatorLayout_Layout_layout_insetEdge, 0);
            this.h = typedArrayObtainStyledAttributes.getInt(d.f.c.CoordinatorLayout_Layout_layout_dodgeInsetEdges, 0);
            boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(d.f.c.CoordinatorLayout_Layout_layout_behavior);
            this.b = zHasValue;
            if (zHasValue) {
                this.a = androidx.coordinatorlayout.widget.CoordinatorLayout.s(context, attributeSet, typedArrayObtainStyledAttributes.getString(d.f.c.CoordinatorLayout_Layout_layout_behavior));
            }
            typedArrayObtainStyledAttributes.recycle();
            androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar = this.a;
            if (cVar != null) {
                cVar.f(this);
            }
        }

        public f(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.b = false;
            this.f91c = 0;
            this.f92d = 0;
            this.f93e = -1;
            this.f94f = -1;
            this.f95g = 0;
            this.h = 0;
            this.q = new android.graphics.Rect();
        }

        public f(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.b = false;
            this.f91c = 0;
            this.f92d = 0;
            this.f93e = -1;
            this.f94f = -1;
            this.f95g = 0;
            this.h = 0;
            this.q = new android.graphics.Rect();
        }

        public f(androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar) {
            super((android.view.ViewGroup.MarginLayoutParams) fVar);
            this.b = false;
            this.f91c = 0;
            this.f92d = 0;
            this.f93e = -1;
            this.f94f = -1;
            this.f95g = 0;
            this.h = 0;
            this.q = new android.graphics.Rect();
        }

        public boolean a(int i) {
            if (i == 0) {
                return this.n;
            }
            if (i != 1) {
                return false;
            }
            return this.o;
        }

        public void b(androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar) {
            androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar2 = this.a;
            if (cVar2 != cVar) {
                if (cVar2 != null && cVar2 == null) {
                    throw null;
                }
                this.a = cVar;
                this.b = true;
                if (cVar != null) {
                    cVar.f(this);
                }
            }
        }

        public void c(int i, boolean z) {
            if (i == 0) {
                this.n = z;
            } else {
                if (i != 1) {
                    return;
                }
                this.o = z;
            }
        }
    }

    public class g implements android.view.ViewTreeObserver.OnPreDrawListener {
        public g() {
        }

        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            androidx.coordinatorlayout.widget.CoordinatorLayout.this.p(0);
            return true;
        }
    }

    public static class h extends d.i.a.a {
        public static final android.os.Parcelable.Creator<androidx.coordinatorlayout.widget.CoordinatorLayout.h> CREATOR = new androidx.coordinatorlayout.widget.CoordinatorLayout.h.a();

        /* renamed from: c, reason: collision with root package name */
        public android.util.SparseArray<android.os.Parcelable> f96c;

        public static class a implements android.os.Parcelable.ClassLoaderCreator<androidx.coordinatorlayout.widget.CoordinatorLayout.h> {
            @Override // android.os.Parcelable.Creator
            public java.lang.Object createFromParcel(android.os.Parcel parcel) {
                return new androidx.coordinatorlayout.widget.CoordinatorLayout.h(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public java.lang.Object[] newArray(int i) {
                return new androidx.coordinatorlayout.widget.CoordinatorLayout.h[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public androidx.coordinatorlayout.widget.CoordinatorLayout.h createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new androidx.coordinatorlayout.widget.CoordinatorLayout.h(parcel, classLoader);
            }
        }

        public h(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            super(parcel, classLoader);
            int i = parcel.readInt();
            int[] iArr = new int[i];
            parcel.readIntArray(iArr);
            android.os.Parcelable[] parcelableArray = parcel.readParcelableArray(classLoader);
            this.f96c = new android.util.SparseArray<>(i);
            for (int i2 = 0; i2 < i; i2++) {
                this.f96c.append(iArr[i2], parcelableArray[i2]);
            }
        }

        public h(android.os.Parcelable parcelable) {
            super(parcelable);
        }

        @Override // d.i.a.a, android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeParcelable(this.a, i);
            android.util.SparseArray<android.os.Parcelable> sparseArray = this.f96c;
            int size = sparseArray != null ? sparseArray.size() : 0;
            parcel.writeInt(size);
            int[] iArr = new int[size];
            android.os.Parcelable[] parcelableArr = new android.os.Parcelable[size];
            for (int i2 = 0; i2 < size; i2++) {
                iArr[i2] = this.f96c.keyAt(i2);
                parcelableArr[i2] = this.f96c.valueAt(i2);
            }
            parcel.writeIntArray(iArr);
            parcel.writeParcelableArray(parcelableArr, i);
        }
    }

    public static class i implements java.util.Comparator<android.view.View> {
        @Override // java.util.Comparator
        public int compare(android.view.View view, android.view.View view2) {
            android.view.View view3 = view2;
            float fW = d.g.m.s.w(view);
            float z = android.os.Build.VERSION.SDK_INT >= 21 ? view3.getZ() : 0.0f;
            if (fW > z) {
                return -1;
            }
            return fW < z ? 1 : 0;
        }
    }

    static {
        java.lang.Package r0 = androidx.coordinatorlayout.widget.CoordinatorLayout.class.getPackage();
        t = r0 != null ? r0.getName() : null;
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            w = new androidx.coordinatorlayout.widget.CoordinatorLayout.i();
        } else {
            w = null;
        }
        u = new java.lang.Class[]{android.content.Context.class, android.util.AttributeSet.class};
        v = new java.lang.ThreadLocal<>();
        x = new d.g.l.c(12);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public CoordinatorLayout(android.content.Context context, android.util.AttributeSet attributeSet) {
        int i2 = d.f.a.coordinatorLayoutStyle;
        super(context, attributeSet, i2);
        this.a = new java.util.ArrayList();
        this.b = new d.f.d.a<>();
        this.f86c = new java.util.ArrayList();
        this.f87d = new java.util.ArrayList();
        this.f88e = new int[2];
        this.s = new d.g.m.k();
        android.content.res.TypedArray typedArrayObtainStyledAttributes = i2 == 0 ? context.obtainStyledAttributes(attributeSet, d.f.c.CoordinatorLayout, 0, d.f.b.Widget_Support_CoordinatorLayout) : context.obtainStyledAttributes(attributeSet, d.f.c.CoordinatorLayout, i2, 0);
        int resourceId = typedArrayObtainStyledAttributes.getResourceId(d.f.c.CoordinatorLayout_keylines, 0);
        if (resourceId != 0) {
            android.content.res.Resources resources = context.getResources();
            this.i = resources.getIntArray(resourceId);
            float f2 = resources.getDisplayMetrics().density;
            int length = this.i.length;
            for (int i3 = 0; i3 < length; i3++) {
                this.i[i3] = (int) (r2[i3] * f2);
            }
        }
        this.p = typedArrayObtainStyledAttributes.getDrawable(d.f.c.CoordinatorLayout_statusBarBackground);
        typedArrayObtainStyledAttributes.recycle();
        y();
        super.setOnHierarchyChangeListener(new androidx.coordinatorlayout.widget.CoordinatorLayout.e());
    }

    public static android.graphics.Rect a() {
        android.graphics.Rect rectA = x.a();
        return rectA == null ? new android.graphics.Rect() : rectA;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static androidx.coordinatorlayout.widget.CoordinatorLayout.c s(android.content.Context context, android.util.AttributeSet attributeSet, java.lang.String str) throws java.lang.NoSuchMethodException, java.lang.SecurityException {
        if (android.text.TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith(".")) {
            str = context.getPackageName() + str;
        } else if (str.indexOf(46) < 0 && !android.text.TextUtils.isEmpty(t)) {
            str = t + '.' + str;
        }
        try {
            java.util.Map map = v.get();
            if (map == null) {
                map = new java.util.HashMap();
                v.set(map);
            }
            java.lang.reflect.Constructor<?> constructor = (java.lang.reflect.Constructor) map.get(str);
            if (constructor == null) {
                constructor = context.getClassLoader().loadClass(str).getConstructor(u);
                constructor.setAccessible(true);
                map.put(str, constructor);
            }
            return (androidx.coordinatorlayout.widget.CoordinatorLayout.c) constructor.newInstance(context, attributeSet);
        } catch (java.lang.Exception e2) {
            throw new java.lang.RuntimeException(e.a.c.a.a.e("Could not inflate Behavior subclass ", str), e2);
        }
    }

    public final void b(androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar, android.graphics.Rect rect, int i2, int i3) {
        int width = getWidth();
        int height = getHeight();
        int iMax = java.lang.Math.max(getPaddingLeft() + ((android.view.ViewGroup.MarginLayoutParams) fVar).leftMargin, java.lang.Math.min(rect.left, ((width - getPaddingRight()) - i2) - ((android.view.ViewGroup.MarginLayoutParams) fVar).rightMargin));
        int iMax2 = java.lang.Math.max(getPaddingTop() + ((android.view.ViewGroup.MarginLayoutParams) fVar).topMargin, java.lang.Math.min(rect.top, ((height - getPaddingBottom()) - i3) - ((android.view.ViewGroup.MarginLayoutParams) fVar).bottomMargin));
        rect.set(iMax, iMax2, i2 + iMax, i3 + iMax2);
    }

    public void c(android.view.View view, boolean z, android.graphics.Rect rect) {
        if (view.isLayoutRequested() || view.getVisibility() == 8) {
            rect.setEmpty();
        } else if (z) {
            d.f.d.b.a(this, view, rect);
        } else {
            rect.set(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof androidx.coordinatorlayout.widget.CoordinatorLayout.f) && super.checkLayoutParams(layoutParams);
    }

    public java.util.List<android.view.View> d(android.view.View view) {
        d.f.d.a<android.view.View> aVar = this.b;
        int i2 = aVar.b.f1912c;
        java.util.ArrayList arrayList = null;
        for (int i3 = 0; i3 < i2; i3++) {
            java.util.ArrayList<android.view.View> arrayListK = aVar.b.k(i3);
            if (arrayListK != null && arrayListK.contains(view)) {
                if (arrayList == null) {
                    arrayList = new java.util.ArrayList();
                }
                arrayList.add(aVar.b.h(i3));
            }
        }
        this.f87d.clear();
        if (arrayList != null) {
            this.f87d.addAll(arrayList);
        }
        return this.f87d;
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(android.graphics.Canvas canvas, android.view.View view, long j) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) view.getLayoutParams();
        androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar = fVar.a;
        if (cVar != null) {
            float fC = cVar.c();
            if (fC > 0.0f) {
                if (this.f89f == null) {
                    this.f89f = new android.graphics.Paint();
                }
                this.f89f.setColor(fVar.a.b());
                android.graphics.Paint paint = this.f89f;
                int iRound = java.lang.Math.round(fC * 255.0f);
                if (iRound < 0) {
                    iRound = 0;
                } else if (iRound > 255) {
                    iRound = 255;
                }
                paint.setAlpha(iRound);
                int iSave = canvas.save();
                if (view.isOpaque()) {
                    canvas.clipRect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom(), android.graphics.Region.Op.DIFFERENCE);
                }
                canvas.drawRect(getPaddingLeft(), getPaddingTop(), getWidth() - getPaddingRight(), getHeight() - getPaddingBottom(), this.f89f);
                canvas.restoreToCount(iSave);
            }
        }
        return super.drawChild(canvas, view, j);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        android.graphics.drawable.Drawable drawable = this.p;
        boolean state = false;
        if (drawable != null && drawable.isStateful()) {
            state = false | drawable.setState(drawableState);
        }
        if (state) {
            invalidate();
        }
    }

    public java.util.List<android.view.View> e(android.view.View view) {
        java.util.ArrayList<android.view.View> orDefault = this.b.b.getOrDefault(view, null);
        this.f87d.clear();
        if (orDefault != null) {
            this.f87d.addAll(orDefault);
        }
        return this.f87d;
    }

    public final void f(int i2, android.graphics.Rect rect, android.graphics.Rect rect2, androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar, int i3, int i4) {
        int i5 = fVar.f91c;
        if (i5 == 0) {
            i5 = 17;
        }
        int iV = d.b.k.r.v(i5, i2);
        int i6 = fVar.f92d;
        if ((i6 & 7) == 0) {
            i6 |= 8388611;
        }
        if ((i6 & 112) == 0) {
            i6 |= 48;
        }
        int iV2 = d.b.k.r.v(i6, i2);
        int i7 = iV & 7;
        int i8 = iV & 112;
        int i9 = iV2 & 7;
        int i10 = iV2 & 112;
        int iWidth = i9 != 1 ? i9 != 5 ? rect.left : rect.right : rect.left + (rect.width() / 2);
        int iHeight = i10 != 16 ? i10 != 80 ? rect.top : rect.bottom : rect.top + (rect.height() / 2);
        if (i7 == 1) {
            iWidth -= i3 / 2;
        } else if (i7 != 5) {
            iWidth -= i3;
        }
        if (i8 == 16) {
            iHeight -= i4 / 2;
        } else if (i8 != 80) {
            iHeight -= i4;
        }
        rect2.set(iWidth, iHeight, i3 + iWidth, i4 + iHeight);
    }

    public final int g(int i2) {
        java.lang.StringBuilder sb;
        int[] iArr = this.i;
        if (iArr == null) {
            sb = new java.lang.StringBuilder();
            sb.append("No keylines defined for ");
            sb.append(this);
            sb.append(" - attempted index lookup ");
            sb.append(i2);
        } else {
            if (i2 >= 0 && i2 < iArr.length) {
                return iArr[i2];
            }
            sb = new java.lang.StringBuilder();
            sb.append("Keyline index ");
            sb.append(i2);
            sb.append(" out of range for ");
            sb.append(this);
        }
        android.util.Log.e("CoordinatorLayout", sb.toString());
        return 0;
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new androidx.coordinatorlayout.widget.CoordinatorLayout.f(-2, -2);
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new androidx.coordinatorlayout.widget.CoordinatorLayout.f(getContext(), attributeSet);
    }

    public final java.util.List<android.view.View> getDependencySortedChildren() {
        u();
        return java.util.Collections.unmodifiableList(this.a);
    }

    public final d.g.m.z getLastWindowInsets() {
        return this.n;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.s.a();
    }

    public android.graphics.drawable.Drawable getStatusBarBackground() {
        return this.p;
    }

    @Override // android.view.View
    public int getSuggestedMinimumHeight() {
        return java.lang.Math.max(super.getSuggestedMinimumHeight(), getPaddingBottom() + getPaddingTop());
    }

    @Override // android.view.View
    public int getSuggestedMinimumWidth() {
        return java.lang.Math.max(super.getSuggestedMinimumWidth(), getPaddingRight() + getPaddingLeft());
    }

    @Override // d.g.m.h
    public void h(android.view.View view, android.view.View view2, int i2, int i3) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar;
        d.g.m.k kVar = this.s;
        if (i3 == 1) {
            kVar.b = i2;
        } else {
            kVar.a = i2;
        }
        this.k = view2;
        int childCount = getChildCount();
        for (int i4 = 0; i4 < childCount; i4++) {
            androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) getChildAt(i4).getLayoutParams();
            if (fVar.a(i3) && (cVar = fVar.a) != null && i3 == 0) {
                cVar.r();
            }
        }
    }

    @Override // d.g.m.h
    public void i(android.view.View view, int i2) {
        d.g.m.k kVar = this.s;
        if (i2 == 1) {
            kVar.b = 0;
        } else {
            kVar.a = 0;
        }
        int childCount = getChildCount();
        for (int i3 = 0; i3 < childCount; i3++) {
            android.view.View childAt = getChildAt(i3);
            androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) childAt.getLayoutParams();
            if (fVar.a(i2)) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar = fVar.a;
                if (cVar != null) {
                    cVar.y(this, childAt, view, i2);
                }
                fVar.c(i2, false);
                fVar.p = false;
            }
        }
        this.k = null;
    }

    @Override // d.g.m.h
    public void j(android.view.View view, int i2, int i3, int[] iArr, int i4) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar;
        int childCount = getChildCount();
        boolean z = false;
        int iMax = 0;
        int iMax2 = 0;
        for (int i5 = 0; i5 < childCount; i5++) {
            android.view.View childAt = getChildAt(i5);
            if (childAt.getVisibility() != 8) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) childAt.getLayoutParams();
                if (fVar.a(i4) && (cVar = fVar.a) != null) {
                    int[] iArr2 = this.f88e;
                    iArr2[1] = 0;
                    iArr2[0] = 0;
                    cVar.o(this, childAt, view, i2, i3, iArr2, i4);
                    int[] iArr3 = this.f88e;
                    iMax = i2 > 0 ? java.lang.Math.max(iMax, iArr3[0]) : java.lang.Math.min(iMax, iArr3[0]);
                    int[] iArr4 = this.f88e;
                    iMax2 = i3 > 0 ? java.lang.Math.max(iMax2, iArr4[1]) : java.lang.Math.min(iMax2, iArr4[1]);
                    z = true;
                }
            }
        }
        iArr[0] = iMax;
        iArr[1] = iMax2;
        if (z) {
            p(1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public androidx.coordinatorlayout.widget.CoordinatorLayout.f k(android.view.View view) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) view.getLayoutParams();
        if (!fVar.b) {
            if (view instanceof androidx.coordinatorlayout.widget.CoordinatorLayout.b) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.c behavior = ((androidx.coordinatorlayout.widget.CoordinatorLayout.b) view).getBehavior();
                if (behavior == null) {
                    android.util.Log.e("CoordinatorLayout", "Attached behavior class is null");
                }
                fVar.b(behavior);
            } else {
                androidx.coordinatorlayout.widget.CoordinatorLayout.d dVar = null;
                for (java.lang.Class<?> superclass = view.getClass(); superclass != null; superclass = superclass.getSuperclass()) {
                    dVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.d) superclass.getAnnotation(androidx.coordinatorlayout.widget.CoordinatorLayout.d.class);
                    if (dVar != null) {
                        break;
                    }
                }
                if (dVar != null) {
                    try {
                        fVar.b(dVar.value().getDeclaredConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]));
                    } catch (java.lang.Exception e2) {
                        java.lang.StringBuilder sbO = e.a.c.a.a.o("Default behavior class ");
                        sbO.append(dVar.value().getName());
                        sbO.append(" could not be instantiated. Did you forget");
                        sbO.append(" a default constructor?");
                        android.util.Log.e("CoordinatorLayout", sbO.toString(), e2);
                    }
                }
            }
            fVar.b = true;
        }
        return fVar;
    }

    public boolean l(android.view.View view, int i2, int i3) {
        android.graphics.Rect rectA = a();
        d.f.d.b.a(this, view, rectA);
        try {
            return rectA.contains(i2, i3);
        } finally {
            rectA.setEmpty();
            x.b(rectA);
        }
    }

    @Override // d.g.m.h
    public void n(android.view.View view, int i2, int i3, int i4, int i5, int i6) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar;
        int childCount = getChildCount();
        boolean z = false;
        for (int i7 = 0; i7 < childCount; i7++) {
            android.view.View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) childAt.getLayoutParams();
                if (fVar.a(i6) && (cVar = fVar.a) != null) {
                    cVar.q(this, childAt, view, i2, i3, i4, i5, i6);
                    z = true;
                }
            }
        }
        if (z) {
            p(1);
        }
    }

    @Override // d.g.m.h
    public boolean o(android.view.View view, android.view.View view2, int i2, int i3) {
        int childCount = getChildCount();
        boolean z = false;
        for (int i4 = 0; i4 < childCount; i4++) {
            android.view.View childAt = getChildAt(i4);
            if (childAt.getVisibility() != 8) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) childAt.getLayoutParams();
                androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar = fVar.a;
                if (cVar != null) {
                    boolean zW = cVar.w(this, childAt, view, view2, i2, i3);
                    z |= zW;
                    fVar.c(i3, zW);
                } else {
                    fVar.c(i3, false);
                }
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        v(false);
        if (this.m) {
            if (this.l == null) {
                this.l = new androidx.coordinatorlayout.widget.CoordinatorLayout.g();
            }
            getViewTreeObserver().addOnPreDrawListener(this.l);
        }
        if (this.n == null && d.g.m.s.m(this)) {
            if (android.os.Build.VERSION.SDK_INT >= 20) {
                requestApplyInsets();
            } else {
                requestFitSystemWindows();
            }
        }
        this.h = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        v(false);
        if (this.m && this.l != null) {
            getViewTreeObserver().removeOnPreDrawListener(this.l);
        }
        android.view.View view = this.k;
        if (view != null) {
            onStopNestedScroll(view);
        }
        this.h = false;
    }

    @Override // android.view.View
    public void onDraw(android.graphics.Canvas canvas) {
        super.onDraw(canvas);
        if (!this.o || this.p == null) {
            return;
        }
        d.g.m.z zVar = this.n;
        int iD = zVar != null ? zVar.d() : 0;
        if (iD > 0) {
            this.p.setBounds(0, 0, getWidth(), iD);
            this.p.draw(canvas);
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(android.view.MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            v(true);
        }
        boolean zT = t(motionEvent, 0);
        if (actionMasked == 1 || actionMasked == 3) {
            v(true);
        }
        return zT;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i2, int i3, int i4, int i5) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar;
        int iO = d.g.m.s.o(this);
        int size = this.a.size();
        for (int i6 = 0; i6 < size; i6++) {
            android.view.View view = this.a.get(i6);
            if (view.getVisibility() != 8 && ((cVar = ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) view.getLayoutParams()).a) == null || !cVar.j(this, view, iO))) {
                q(view, iO);
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:75:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0181  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r31, int r32) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public boolean onNestedFling(android.view.View view, float f2, float f3, boolean z) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar;
        int childCount = getChildCount();
        boolean zL = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            android.view.View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) childAt.getLayoutParams();
                if (fVar.a(0) && (cVar = fVar.a) != null) {
                    zL |= cVar.l();
                }
            }
        }
        if (zL) {
            p(1);
        }
        return zL;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public boolean onNestedPreFling(android.view.View view, float f2, float f3) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar;
        int childCount = getChildCount();
        boolean zM = false;
        for (int i2 = 0; i2 < childCount; i2++) {
            android.view.View childAt = getChildAt(i2);
            if (childAt.getVisibility() != 8) {
                androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) childAt.getLayoutParams();
                if (fVar.a(0) && (cVar = fVar.a) != null) {
                    zM |= cVar.m(this, childAt, view, f2, f3);
                }
            }
        }
        return zM;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public void onNestedPreScroll(android.view.View view, int i2, int i3, int[] iArr) {
        j(view, i2, i3, iArr, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public void onNestedScroll(android.view.View view, int i2, int i3, int i4, int i5) {
        n(view, i2, i3, i4, i5, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public void onNestedScrollAccepted(android.view.View view, android.view.View view2, int i2) {
        h(view, view2, i2, 0);
    }

    @Override // android.view.View
    public void onRestoreInstanceState(android.os.Parcelable parcelable) {
        android.os.Parcelable parcelable2;
        if (!(parcelable instanceof androidx.coordinatorlayout.widget.CoordinatorLayout.h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        androidx.coordinatorlayout.widget.CoordinatorLayout.h hVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.h) parcelable;
        super.onRestoreInstanceState(hVar.a);
        android.util.SparseArray<android.os.Parcelable> sparseArray = hVar.f96c;
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            android.view.View childAt = getChildAt(i2);
            int id = childAt.getId();
            androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar = k(childAt).a;
            if (id != -1 && cVar != null && (parcelable2 = sparseArray.get(id)) != null) {
                cVar.t(this, childAt, parcelable2);
            }
        }
    }

    @Override // android.view.View
    public android.os.Parcelable onSaveInstanceState() {
        android.os.Parcelable parcelableU;
        androidx.coordinatorlayout.widget.CoordinatorLayout.h hVar = new androidx.coordinatorlayout.widget.CoordinatorLayout.h(super.onSaveInstanceState());
        android.util.SparseArray<android.os.Parcelable> sparseArray = new android.util.SparseArray<>();
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            android.view.View childAt = getChildAt(i2);
            int id = childAt.getId();
            androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar = ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) childAt.getLayoutParams()).a;
            if (id != -1 && cVar != null && (parcelableU = cVar.u(this, childAt)) != null) {
                sparseArray.append(id, parcelableU);
            }
        }
        hVar.f96c = sparseArray;
        return hVar;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public boolean onStartNestedScroll(android.view.View view, android.view.View view2, int i2) {
        return o(view, view2, i2, 0);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, d.g.m.j
    public void onStopNestedScroll(android.view.View view) {
        i(view, 0);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0029 A[PHI: r3
  0x0029: PHI (r3v4 boolean) = (r3v2 boolean), (r3v5 boolean) binds: [B:9:0x0020, B:5:0x0012] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x002f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0052  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            r17 = this;
            r0 = r17
            r1 = r18
            int r2 = r18.getActionMasked()
            android.view.View r3 = r0.j
            r4 = 1
            r5 = 0
            if (r3 != 0) goto L15
            boolean r3 = r0.t(r1, r4)
            if (r3 == 0) goto L29
            goto L16
        L15:
            r3 = 0
        L16:
            android.view.View r6 = r0.j
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            androidx.coordinatorlayout.widget.CoordinatorLayout$f r6 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) r6
            androidx.coordinatorlayout.widget.CoordinatorLayout$c r6 = r6.a
            if (r6 == 0) goto L29
            android.view.View r7 = r0.j
            boolean r6 = r6.z(r0, r7, r1)
            goto L2a
        L29:
            r6 = 0
        L2a:
            android.view.View r7 = r0.j
            r8 = 0
            if (r7 != 0) goto L35
            boolean r1 = super.onTouchEvent(r18)
            r6 = r6 | r1
            goto L48
        L35:
            if (r3 == 0) goto L48
            long r11 = android.os.SystemClock.uptimeMillis()
            r13 = 3
            r14 = 0
            r15 = 0
            r16 = 0
            r9 = r11
            android.view.MotionEvent r8 = android.view.MotionEvent.obtain(r9, r11, r13, r14, r15, r16)
            super.onTouchEvent(r8)
        L48:
            if (r8 == 0) goto L4d
            r8.recycle()
        L4d:
            if (r2 == r4) goto L52
            r1 = 3
            if (r2 != r1) goto L55
        L52:
            r0.v(r5)
        L55:
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.onTouchEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00e7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void p(int r25) {
        /*
            Method dump skipped, instructions count: 742
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.p(int):void");
    }

    public void q(android.view.View view, int i2) {
        android.graphics.Rect rectA;
        android.graphics.Rect rectA2;
        androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) view.getLayoutParams();
        int i3 = 0;
        if (fVar.k == null && fVar.f94f != -1) {
            throw new java.lang.IllegalStateException("An anchor may not be changed after CoordinatorLayout measurement begins before layout is complete.");
        }
        android.view.View view2 = fVar.k;
        if (view2 != null) {
            rectA = a();
            rectA2 = a();
            try {
                d.f.d.b.a(this, view2, rectA);
                androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar2 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) view.getLayoutParams();
                int measuredWidth = view.getMeasuredWidth();
                int measuredHeight = view.getMeasuredHeight();
                f(i2, rectA, rectA2, fVar2, measuredWidth, measuredHeight);
                b(fVar2, rectA2, measuredWidth, measuredHeight);
                view.layout(rectA2.left, rectA2.top, rectA2.right, rectA2.bottom);
                return;
            } finally {
                rectA.setEmpty();
                x.b(rectA);
                rectA2.setEmpty();
                x.b(rectA2);
            }
        }
        int i4 = fVar.f93e;
        if (i4 < 0) {
            androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar3 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) view.getLayoutParams();
            rectA = a();
            rectA.set(getPaddingLeft() + ((android.view.ViewGroup.MarginLayoutParams) fVar3).leftMargin, getPaddingTop() + ((android.view.ViewGroup.MarginLayoutParams) fVar3).topMargin, (getWidth() - getPaddingRight()) - ((android.view.ViewGroup.MarginLayoutParams) fVar3).rightMargin, (getHeight() - getPaddingBottom()) - ((android.view.ViewGroup.MarginLayoutParams) fVar3).bottomMargin);
            if (this.n != null && d.g.m.s.m(this) && !view.getFitsSystemWindows()) {
                rectA.left = this.n.b() + rectA.left;
                rectA.top = this.n.d() + rectA.top;
                rectA.right -= this.n.c();
                rectA.bottom -= this.n.a();
            }
            rectA2 = a();
            int i5 = fVar3.f91c;
            if ((i5 & 7) == 0) {
                i5 |= 8388611;
            }
            if ((i5 & 112) == 0) {
                i5 |= 48;
            }
            int i6 = i5;
            int measuredWidth2 = view.getMeasuredWidth();
            int measuredHeight2 = view.getMeasuredHeight();
            if (android.os.Build.VERSION.SDK_INT >= 17) {
                android.view.Gravity.apply(i6, measuredWidth2, measuredHeight2, rectA, rectA2, i2);
            } else {
                android.view.Gravity.apply(i6, measuredWidth2, measuredHeight2, rectA, rectA2);
            }
            view.layout(rectA2.left, rectA2.top, rectA2.right, rectA2.bottom);
            return;
        }
        androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar4 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) view.getLayoutParams();
        int i7 = fVar4.f91c;
        if (i7 == 0) {
            i7 = 8388661;
        }
        int iV = d.b.k.r.v(i7, i2);
        int i8 = iV & 7;
        int i9 = iV & 112;
        int width = getWidth();
        int height = getHeight();
        int measuredWidth3 = view.getMeasuredWidth();
        int measuredHeight3 = view.getMeasuredHeight();
        if (i2 == 1) {
            i4 = width - i4;
        }
        int iG = g(i4) - measuredWidth3;
        if (i8 == 1) {
            iG += measuredWidth3 / 2;
        } else if (i8 == 5) {
            iG += measuredWidth3;
        }
        if (i9 == 16) {
            i3 = 0 + (measuredHeight3 / 2);
        } else if (i9 == 80) {
            i3 = measuredHeight3 + 0;
        }
        int iMax = java.lang.Math.max(getPaddingLeft() + ((android.view.ViewGroup.MarginLayoutParams) fVar4).leftMargin, java.lang.Math.min(iG, ((width - getPaddingRight()) - measuredWidth3) - ((android.view.ViewGroup.MarginLayoutParams) fVar4).rightMargin));
        int iMax2 = java.lang.Math.max(getPaddingTop() + ((android.view.ViewGroup.MarginLayoutParams) fVar4).topMargin, java.lang.Math.min(i3, ((height - getPaddingBottom()) - measuredHeight3) - ((android.view.ViewGroup.MarginLayoutParams) fVar4).bottomMargin));
        view.layout(iMax, iMax2, measuredWidth3 + iMax, measuredHeight3 + iMax2);
    }

    public void r(android.view.View view, int i2, int i3, int i4, int i5) {
        measureChildWithMargins(view, i2, i3, i4, i5);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(android.view.View view, android.graphics.Rect rect, boolean z) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar = ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) view.getLayoutParams()).a;
        if (cVar == null || !cVar.s(this, view, rect, z)) {
            return super.requestChildRectangleOnScreen(view, rect, z);
        }
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z) {
        super.requestDisallowInterceptTouchEvent(z);
        if (!z || this.f90g) {
            return;
        }
        v(false);
        this.f90g = true;
    }

    @Override // android.view.View
    public void setFitsSystemWindows(boolean z) {
        super.setFitsSystemWindows(z);
        y();
    }

    @Override // android.view.ViewGroup
    public void setOnHierarchyChangeListener(android.view.ViewGroup.OnHierarchyChangeListener onHierarchyChangeListener) {
        this.q = onHierarchyChangeListener;
    }

    public void setStatusBarBackground(android.graphics.drawable.Drawable drawable) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        android.graphics.drawable.Drawable drawable2 = this.p;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            android.graphics.drawable.Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.p = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.p.setState(getDrawableState());
                }
                d.b.k.r.o0(this.p, d.g.m.s.o(this));
                this.p.setVisible(getVisibility() == 0, false);
                this.p.setCallback(this);
            }
            d.g.m.s.H(this);
        }
    }

    public void setStatusBarBackgroundColor(int i2) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        setStatusBarBackground(new android.graphics.drawable.ColorDrawable(i2));
    }

    public void setStatusBarBackgroundResource(int i2) throws java.lang.IllegalAccessException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        setStatusBarBackground(i2 != 0 ? d.g.f.a.d(getContext(), i2) : null);
    }

    @Override // android.view.View
    public void setVisibility(int i2) {
        super.setVisibility(i2);
        boolean z = i2 == 0;
        android.graphics.drawable.Drawable drawable = this.p;
        if (drawable == null || drawable.isVisible() == z) {
            return;
        }
        this.p.setVisible(z, false);
    }

    public final boolean t(android.view.MotionEvent motionEvent, int i2) {
        boolean z;
        int actionMasked = motionEvent.getActionMasked();
        java.util.List<android.view.View> list = this.f86c;
        list.clear();
        boolean zIsChildrenDrawingOrderEnabled = isChildrenDrawingOrderEnabled();
        int childCount = getChildCount();
        for (int i3 = childCount - 1; i3 >= 0; i3--) {
            list.add(getChildAt(zIsChildrenDrawingOrderEnabled ? getChildDrawingOrder(childCount, i3) : i3));
        }
        java.util.Comparator<android.view.View> comparator = w;
        if (comparator != null) {
            java.util.Collections.sort(list, comparator);
        }
        int size = list.size();
        android.view.MotionEvent motionEventObtain = null;
        boolean zI = false;
        boolean z2 = false;
        for (int i4 = 0; i4 < size; i4++) {
            android.view.View view = list.get(i4);
            androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) view.getLayoutParams();
            androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar = fVar.a;
            if (!(zI || z2) || actionMasked == 0) {
                if (!zI && cVar != null) {
                    if (i2 == 0) {
                        zI = cVar.i(this, view, motionEvent);
                    } else if (i2 == 1) {
                        zI = cVar.z(this, view, motionEvent);
                    }
                    if (zI) {
                        this.j = view;
                    }
                }
                if (fVar.a == null) {
                    fVar.m = false;
                }
                boolean z3 = fVar.m;
                if (z3) {
                    z = true;
                } else {
                    androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar2 = fVar.a;
                    z = (cVar2 != null && cVar2.c() > 0.0f) | z3;
                    fVar.m = z;
                }
                z2 = z && !z3;
                if (z && !z2) {
                    break;
                }
            } else if (cVar != null) {
                if (motionEventObtain == null) {
                    long jUptimeMillis = android.os.SystemClock.uptimeMillis();
                    motionEventObtain = android.view.MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                }
                if (i2 == 0) {
                    cVar.i(this, view, motionEventObtain);
                } else if (i2 == 1) {
                    cVar.z(this, view, motionEventObtain);
                }
            }
        }
        list.clear();
        return zI;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:121:0x0160 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0103  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0106  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void u() {
        /*
            Method dump skipped, instructions count: 444
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.coordinatorlayout.widget.CoordinatorLayout.u():void");
    }

    public final void v(boolean z) {
        int childCount = getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            android.view.View childAt = getChildAt(i2);
            androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar = ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) childAt.getLayoutParams()).a;
            if (cVar != null) {
                long jUptimeMillis = android.os.SystemClock.uptimeMillis();
                android.view.MotionEvent motionEventObtain = android.view.MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                if (z) {
                    cVar.i(this, childAt, motionEventObtain);
                } else {
                    cVar.z(this, childAt, motionEventObtain);
                }
                motionEventObtain.recycle();
            }
        }
        for (int i3 = 0; i3 < childCount; i3++) {
            ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) getChildAt(i3).getLayoutParams()).m = false;
        }
        this.j = null;
        this.f90g = false;
    }

    @Override // android.view.View
    public boolean verifyDrawable(android.graphics.drawable.Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.p;
    }

    public final void w(android.view.View view, int i2) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) view.getLayoutParams();
        int i3 = fVar.i;
        if (i3 != i2) {
            d.g.m.s.E(view, i2 - i3);
            fVar.i = i2;
        }
    }

    public final void x(android.view.View view, int i2) {
        androidx.coordinatorlayout.widget.CoordinatorLayout.f fVar = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) view.getLayoutParams();
        int i3 = fVar.j;
        if (i3 != i2) {
            d.g.m.s.F(view, i2 - i3);
            fVar.j = i2;
        }
    }

    public final void y() {
        if (android.os.Build.VERSION.SDK_INT < 21) {
            return;
        }
        if (!d.g.m.s.m(this)) {
            d.g.m.s.T(this, null);
            return;
        }
        if (this.r == null) {
            this.r = new androidx.coordinatorlayout.widget.CoordinatorLayout.a();
        }
        d.g.m.s.T(this, this.r);
        setSystemUiVisibility(1280);
    }

    @Override // android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof androidx.coordinatorlayout.widget.CoordinatorLayout.f ? new androidx.coordinatorlayout.widget.CoordinatorLayout.f((androidx.coordinatorlayout.widget.CoordinatorLayout.f) layoutParams) : layoutParams instanceof android.view.ViewGroup.MarginLayoutParams ? new androidx.coordinatorlayout.widget.CoordinatorLayout.f((android.view.ViewGroup.MarginLayoutParams) layoutParams) : new androidx.coordinatorlayout.widget.CoordinatorLayout.f(layoutParams);
    }
}
