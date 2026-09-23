package d.s;

/* loaded from: classes.dex */
public class z implements d.s.b0 {
    public d.s.z.a a;

    public static class a extends android.view.ViewGroup {
        public android.view.ViewGroup a;
        public android.view.View b;

        /* renamed from: c, reason: collision with root package name */
        public java.util.ArrayList<android.graphics.drawable.Drawable> f2296c;

        /* renamed from: d, reason: collision with root package name */
        public d.s.z f2297d;

        static {
            try {
                android.view.ViewGroup.class.getDeclaredMethod("invalidateChildInParentFast", java.lang.Integer.TYPE, java.lang.Integer.TYPE, android.graphics.Rect.class);
            } catch (java.lang.NoSuchMethodException unused) {
            }
        }

        public a(android.content.Context context, android.view.ViewGroup viewGroup, android.view.View view, d.s.z zVar) {
            super(context);
            this.f2296c = null;
            this.a = viewGroup;
            this.b = view;
            setRight(viewGroup.getWidth());
            setBottom(viewGroup.getHeight());
            viewGroup.addView(this);
            this.f2297d = zVar;
        }

        public void a(android.view.View view) {
            if (view.getParent() instanceof android.view.ViewGroup) {
                android.view.ViewGroup viewGroup = (android.view.ViewGroup) view.getParent();
                if (viewGroup != this.a && viewGroup.getParent() != null && d.g.m.s.z(viewGroup)) {
                    int[] iArr = new int[2];
                    int[] iArr2 = new int[2];
                    viewGroup.getLocationOnScreen(iArr);
                    this.a.getLocationOnScreen(iArr2);
                    d.g.m.s.E(view, iArr[0] - iArr2[0]);
                    d.g.m.s.F(view, iArr[1] - iArr2[1]);
                }
                viewGroup.removeView(view);
                if (view.getParent() != null) {
                    viewGroup.removeView(view);
                }
            }
            super.addView(view, getChildCount() - 1);
        }

        public void b(android.view.View view) {
            java.util.ArrayList<android.graphics.drawable.Drawable> arrayList;
            super.removeView(view);
            if (getChildCount() == 0 && ((arrayList = this.f2296c) == null || arrayList.size() == 0)) {
                this.a.removeView(this);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public void dispatchDraw(android.graphics.Canvas canvas) {
            this.a.getLocationOnScreen(new int[2]);
            this.b.getLocationOnScreen(new int[2]);
            canvas.translate(r0[0] - r1[0], r0[1] - r1[1]);
            canvas.clipRect(new android.graphics.Rect(0, 0, this.b.getWidth(), this.b.getHeight()));
            super.dispatchDraw(canvas);
            java.util.ArrayList<android.graphics.drawable.Drawable> arrayList = this.f2296c;
            int size = arrayList == null ? 0 : arrayList.size();
            for (int i = 0; i < size; i++) {
                this.f2296c.get(i).draw(canvas);
            }
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchTouchEvent(android.view.MotionEvent motionEvent) {
            return false;
        }

        @Override // android.view.ViewGroup, android.view.ViewParent
        public android.view.ViewParent invalidateChildInParent(int[] iArr, android.graphics.Rect rect) {
            if (this.a == null) {
                return null;
            }
            rect.offset(iArr[0], iArr[1]);
            android.view.ViewGroup viewGroup = this.a;
            if (!(viewGroup instanceof android.view.ViewGroup)) {
                invalidate(rect);
                return null;
            }
            iArr[0] = 0;
            iArr[1] = 0;
            int[] iArr2 = new int[2];
            int[] iArr3 = new int[2];
            viewGroup.getLocationOnScreen(iArr2);
            this.b.getLocationOnScreen(iArr3);
            int[] iArr4 = {iArr3[0] - iArr2[0], iArr3[1] - iArr2[1]};
            rect.offset(iArr4[0], iArr4[1]);
            return super.invalidateChildInParent(iArr, rect);
        }

        @Override // android.view.View, android.graphics.drawable.Drawable.Callback
        public void invalidateDrawable(android.graphics.drawable.Drawable drawable) {
            invalidate(drawable.getBounds());
        }

        @Override // android.view.ViewGroup, android.view.View
        public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        }

        @Override // android.view.View
        public boolean verifyDrawable(android.graphics.drawable.Drawable drawable) {
            java.util.ArrayList<android.graphics.drawable.Drawable> arrayList;
            return super.verifyDrawable(drawable) || ((arrayList = this.f2296c) != null && arrayList.contains(drawable));
        }
    }

    public z(android.content.Context context, android.view.ViewGroup viewGroup, android.view.View view) {
        this.a = new d.s.z.a(context, viewGroup, view, this);
    }

    public static d.s.z e(android.view.View view) {
        android.view.ViewGroup viewGroup;
        android.view.View view2 = view;
        while (true) {
            if (view2 == null) {
                viewGroup = null;
                break;
            }
            if (view2.getId() == 16908290 && (view2 instanceof android.view.ViewGroup)) {
                viewGroup = (android.view.ViewGroup) view2;
                break;
            }
            if (view2.getParent() instanceof android.view.ViewGroup) {
                view2 = (android.view.ViewGroup) view2.getParent();
            }
        }
        if (viewGroup == null) {
            return null;
        }
        int childCount = viewGroup.getChildCount();
        for (int i = 0; i < childCount; i++) {
            android.view.View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof d.s.z.a) {
                return ((d.s.z.a) childAt).f2297d;
            }
        }
        return new d.s.u(viewGroup.getContext(), viewGroup, view);
    }

    @Override // d.s.b0
    public void b(android.graphics.drawable.Drawable drawable) {
        d.s.z.a aVar = this.a;
        if (aVar.f2296c == null) {
            aVar.f2296c = new java.util.ArrayList<>();
        }
        if (aVar.f2296c.contains(drawable)) {
            return;
        }
        aVar.f2296c.add(drawable);
        aVar.invalidate(drawable.getBounds());
        drawable.setCallback(aVar);
    }

    @Override // d.s.b0
    public void d(android.graphics.drawable.Drawable drawable) {
        d.s.z.a aVar = this.a;
        java.util.ArrayList<android.graphics.drawable.Drawable> arrayList = aVar.f2296c;
        if (arrayList != null) {
            arrayList.remove(drawable);
            aVar.invalidate(drawable.getBounds());
            drawable.setCallback(null);
        }
    }
}
