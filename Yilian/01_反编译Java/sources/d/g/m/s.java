package d.g.m;

@android.annotation.SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public class s {
    public static java.util.WeakHashMap<android.view.View, java.lang.String> a;
    public static java.util.WeakHashMap<android.view.View, d.g.m.v> b;

    /* renamed from: c, reason: collision with root package name */
    public static java.lang.reflect.Field f1999c;

    /* renamed from: d, reason: collision with root package name */
    public static boolean f2000d;

    /* renamed from: e, reason: collision with root package name */
    public static java.lang.ThreadLocal<android.graphics.Rect> f2001e;

    public static abstract class a<T> {
        public final int a;
        public final java.lang.Class<T> b;

        /* renamed from: c, reason: collision with root package name */
        public final int f2002c;

        public a(int i, java.lang.Class<T> cls, int i2) {
            this.a = i;
            this.b = cls;
            this.f2002c = i2;
        }

        public a(int i, java.lang.Class<T> cls, int i2, int i3) {
            this.a = i;
            this.b = cls;
            this.f2002c = i3;
        }

        public abstract T a(android.view.View view);

        public T b(android.view.View view) {
            if (android.os.Build.VERSION.SDK_INT >= this.f2002c) {
                return a(view);
            }
            if (!(android.os.Build.VERSION.SDK_INT >= 19)) {
                return null;
            }
            T t = (T) view.getTag(this.a);
            if (this.b.isInstance(t)) {
                return t;
            }
            return null;
        }
    }

    public interface b {
        boolean a(android.view.View view, android.view.KeyEvent keyEvent);
    }

    public static class c {

        /* renamed from: d, reason: collision with root package name */
        public static final java.util.ArrayList<java.lang.ref.WeakReference<android.view.View>> f2003d = new java.util.ArrayList<>();
        public java.util.WeakHashMap<android.view.View, java.lang.Boolean> a = null;
        public android.util.SparseArray<java.lang.ref.WeakReference<android.view.View>> b = null;

        /* renamed from: c, reason: collision with root package name */
        public java.lang.ref.WeakReference<android.view.KeyEvent> f2004c = null;

        public static d.g.m.s.c a(android.view.View view) {
            d.g.m.s.c cVar = (d.g.m.s.c) view.getTag(d.g.c.tag_unhandled_key_event_manager);
            if (cVar != null) {
                return cVar;
            }
            d.g.m.s.c cVar2 = new d.g.m.s.c();
            view.setTag(d.g.c.tag_unhandled_key_event_manager, cVar2);
            return cVar2;
        }

        public final android.view.View b(android.view.View view, android.view.KeyEvent keyEvent) {
            java.util.WeakHashMap<android.view.View, java.lang.Boolean> weakHashMap = this.a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof android.view.ViewGroup) {
                    android.view.ViewGroup viewGroup = (android.view.ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        android.view.View viewB = b(viewGroup.getChildAt(childCount), keyEvent);
                        if (viewB != null) {
                            return viewB;
                        }
                    }
                }
                if (c(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        public final boolean c(android.view.View view, android.view.KeyEvent keyEvent) {
            java.util.ArrayList arrayList = (java.util.ArrayList) view.getTag(d.g.c.tag_unhandled_key_listeners);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((d.g.m.s.b) arrayList.get(size)).a(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }
    }

    static {
        new java.util.concurrent.atomic.AtomicInteger(1);
        b = null;
        f2000d = false;
        new java.util.WeakHashMap();
    }

    public static boolean A(android.view.View view) {
        return android.os.Build.VERSION.SDK_INT >= 19 ? view.isLaidOut() : view.getWidth() > 0 && view.getHeight() > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean B(android.view.View view) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            return view.isNestedScrollingEnabled();
        }
        if (view instanceof d.g.m.f) {
            return ((d.g.m.f) view).isNestedScrollingEnabled();
        }
        return false;
    }

    public static boolean C(android.view.View view) {
        if (android.os.Build.VERSION.SDK_INT >= 17) {
            return view.isPaddingRelative();
        }
        return false;
    }

    public static boolean D(android.view.View view) {
        java.lang.Boolean boolB = new d.g.m.o(d.g.c.tag_screen_reader_focusable, java.lang.Boolean.class, 28).b(view);
        if (boolB == null) {
            return false;
        }
        return boolB.booleanValue();
    }

    public static void E(android.view.View view, int i) {
        int i2 = android.os.Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            view.offsetLeftAndRight(i);
            return;
        }
        if (i2 < 21) {
            b(view, i);
            return;
        }
        android.graphics.Rect rectL = l();
        boolean z = false;
        java.lang.Object parent = view.getParent();
        if (parent instanceof android.view.View) {
            android.view.View view2 = (android.view.View) parent;
            rectL.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectL.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        b(view, i);
        if (z && rectL.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((android.view.View) parent).invalidate(rectL);
        }
    }

    public static void F(android.view.View view, int i) {
        int i2 = android.os.Build.VERSION.SDK_INT;
        if (i2 >= 23) {
            view.offsetTopAndBottom(i);
            return;
        }
        if (i2 < 21) {
            c(view, i);
            return;
        }
        android.graphics.Rect rectL = l();
        boolean z = false;
        java.lang.Object parent = view.getParent();
        if (parent instanceof android.view.View) {
            android.view.View view2 = (android.view.View) parent;
            rectL.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z = !rectL.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        c(view, i);
        if (z && rectL.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((android.view.View) parent).invalidate(rectL);
        }
    }

    public static d.g.m.z G(android.view.View view, d.g.m.z zVar) {
        android.view.WindowInsets windowInsetsE;
        if (android.os.Build.VERSION.SDK_INT >= 21 && (windowInsetsE = zVar.e()) != null) {
            android.view.WindowInsets windowInsetsOnApplyWindowInsets = view.onApplyWindowInsets(windowInsetsE);
            if (!windowInsetsOnApplyWindowInsets.equals(windowInsetsE)) {
                return d.g.m.z.g(windowInsetsOnApplyWindowInsets, view);
            }
        }
        return zVar;
    }

    public static void H(android.view.View view) {
        view.postInvalidateOnAnimation();
    }

    public static void I(android.view.View view, java.lang.Runnable runnable) {
        view.postOnAnimation(runnable);
    }

    public static void J(android.view.View view, java.lang.Runnable runnable, long j) {
        view.postOnAnimationDelayed(runnable, j);
    }

    public static void K(android.view.View view) {
        if (android.os.Build.VERSION.SDK_INT >= 20) {
            view.requestApplyInsets();
        } else {
            view.requestFitSystemWindows();
        }
    }

    public static void L(android.view.View view, d.g.m.a aVar) {
        if (aVar == null && (f(view) instanceof d.g.m.a.C0048a)) {
            aVar = new d.g.m.a();
        }
        view.setAccessibilityDelegate(aVar == null ? null : aVar.b);
    }

    public static void M(android.view.View view, android.graphics.drawable.Drawable drawable) {
        view.setBackground(drawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void N(android.view.View view, android.content.res.ColorStateList colorStateList) {
        if (android.os.Build.VERSION.SDK_INT < 21) {
            if (view instanceof d.g.m.n) {
                ((d.g.m.n) view).setSupportBackgroundTintList(colorStateList);
                return;
            }
            return;
        }
        view.setBackgroundTintList(colorStateList);
        if (android.os.Build.VERSION.SDK_INT == 21) {
            android.graphics.drawable.Drawable background = view.getBackground();
            boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
            if (background == null || !z) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            view.setBackground(background);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void O(android.view.View view, android.graphics.PorterDuff.Mode mode) {
        if (android.os.Build.VERSION.SDK_INT < 21) {
            if (view instanceof d.g.m.n) {
                ((d.g.m.n) view).setSupportBackgroundTintMode(mode);
                return;
            }
            return;
        }
        view.setBackgroundTintMode(mode);
        if (android.os.Build.VERSION.SDK_INT == 21) {
            android.graphics.drawable.Drawable background = view.getBackground();
            boolean z = (view.getBackgroundTintList() == null && view.getBackgroundTintMode() == null) ? false : true;
            if (background == null || !z) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            view.setBackground(background);
        }
    }

    public static void P(android.view.View view, android.graphics.Rect rect) {
        if (android.os.Build.VERSION.SDK_INT >= 18) {
            view.setClipBounds(rect);
        }
    }

    public static void Q(android.view.View view, float f2) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            view.setElevation(f2);
        }
    }

    public static void R(android.view.View view, boolean z) {
        view.setHasTransientState(z);
    }

    public static void S(android.view.View view, int i) {
        if (android.os.Build.VERSION.SDK_INT < 19 && i == 4) {
            i = 2;
        }
        view.setImportantForAccessibility(i);
    }

    public static void T(android.view.View view, d.g.m.l lVar) {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 21) {
            if (i < 30) {
                view.setTag(d.g.c.tag_on_apply_window_listener, lVar);
            }
            if (lVar == null) {
                view.setOnApplyWindowInsetsListener((android.view.View.OnApplyWindowInsetsListener) view.getTag(d.g.c.tag_window_insets_animation_callback));
            } else {
                view.setOnApplyWindowInsetsListener(new d.g.m.t(view, lVar));
            }
        }
    }

    public static void U(android.view.View view, int i, int i2) {
        if (android.os.Build.VERSION.SDK_INT >= 23) {
            view.setScrollIndicators(i, i2);
        }
    }

    public static void V(android.view.View view, java.lang.String str) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            view.setTransitionName(str);
            return;
        }
        if (a == null) {
            a = new java.util.WeakHashMap<>();
        }
        a.put(view, str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void W(android.view.View view) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            view.stopNestedScroll();
        } else if (view instanceof d.g.m.f) {
            ((d.g.m.f) view).stopNestedScroll();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void X(android.view.View view, int i) {
        if (view instanceof d.g.m.e) {
            ((d.g.m.e) view).a(i);
            return;
        }
        if (i == 0) {
            if (android.os.Build.VERSION.SDK_INT >= 21) {
                view.stopNestedScroll();
            } else if (view instanceof d.g.m.f) {
                ((d.g.m.f) view).stopNestedScroll();
            }
        }
    }

    public static void Y(android.view.View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static d.g.m.v a(android.view.View view) {
        if (b == null) {
            b = new java.util.WeakHashMap<>();
        }
        d.g.m.v vVar = b.get(view);
        if (vVar != null) {
            return vVar;
        }
        d.g.m.v vVar2 = new d.g.m.v(view);
        b.put(view, vVar2);
        return vVar2;
    }

    public static void b(android.view.View view, int i) {
        view.offsetLeftAndRight(i);
        if (view.getVisibility() == 0) {
            float translationY = view.getTranslationY();
            view.setTranslationY(1.0f + translationY);
            view.setTranslationY(translationY);
            java.lang.Object parent = view.getParent();
            if (parent instanceof android.view.View) {
                Y((android.view.View) parent);
            }
        }
    }

    public static void c(android.view.View view, int i) {
        view.offsetTopAndBottom(i);
        if (view.getVisibility() == 0) {
            float translationY = view.getTranslationY();
            view.setTranslationY(1.0f + translationY);
            view.setTranslationY(translationY);
            java.lang.Object parent = view.getParent();
            if (parent instanceof android.view.View) {
                Y((android.view.View) parent);
            }
        }
    }

    public static boolean d(android.view.View view, android.view.KeyEvent keyEvent) {
        if (android.os.Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        d.g.m.s.c cVarA = d.g.m.s.c.a(view);
        if (keyEvent.getAction() == 0) {
            java.util.WeakHashMap<android.view.View, java.lang.Boolean> weakHashMap = cVarA.a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            if (!d.g.m.s.c.f2003d.isEmpty()) {
                synchronized (d.g.m.s.c.f2003d) {
                    if (cVarA.a == null) {
                        cVarA.a = new java.util.WeakHashMap<>();
                    }
                    int size = d.g.m.s.c.f2003d.size();
                    while (true) {
                        size--;
                        if (size < 0) {
                            break;
                        }
                        android.view.View view2 = d.g.m.s.c.f2003d.get(size).get();
                        if (view2 == null) {
                            d.g.m.s.c.f2003d.remove(size);
                        } else {
                            cVarA.a.put(view2, java.lang.Boolean.TRUE);
                            for (android.view.ViewParent parent = view2.getParent(); parent instanceof android.view.View; parent = parent.getParent()) {
                                cVarA.a.put((android.view.View) parent, java.lang.Boolean.TRUE);
                            }
                        }
                    }
                }
            }
        }
        android.view.View viewB = cVarA.b(view, keyEvent);
        if (keyEvent.getAction() == 0) {
            int keyCode = keyEvent.getKeyCode();
            if (viewB != null && !android.view.KeyEvent.isModifierKey(keyCode)) {
                if (cVarA.b == null) {
                    cVarA.b = new android.util.SparseArray<>();
                }
                cVarA.b.put(keyCode, new java.lang.ref.WeakReference<>(viewB));
            }
        }
        return viewB != null;
    }

    public static boolean e(android.view.View view, android.view.KeyEvent keyEvent) {
        int iIndexOfKey;
        if (android.os.Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        d.g.m.s.c cVarA = d.g.m.s.c.a(view);
        java.lang.ref.WeakReference<android.view.KeyEvent> weakReference = cVarA.f2004c;
        if (weakReference != null && weakReference.get() == keyEvent) {
            return false;
        }
        cVarA.f2004c = new java.lang.ref.WeakReference<>(keyEvent);
        java.lang.ref.WeakReference<android.view.View> weakReferenceValueAt = null;
        if (cVarA.b == null) {
            cVarA.b = new android.util.SparseArray<>();
        }
        android.util.SparseArray<java.lang.ref.WeakReference<android.view.View>> sparseArray = cVarA.b;
        if (keyEvent.getAction() == 1 && (iIndexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
            weakReferenceValueAt = sparseArray.valueAt(iIndexOfKey);
            sparseArray.removeAt(iIndexOfKey);
        }
        if (weakReferenceValueAt == null) {
            weakReferenceValueAt = sparseArray.get(keyEvent.getKeyCode());
        }
        if (weakReferenceValueAt == null) {
            return false;
        }
        android.view.View view2 = weakReferenceValueAt.get();
        if (view2 != null && z(view2)) {
            cVarA.c(view2, keyEvent);
        }
        return true;
    }

    public static android.view.View.AccessibilityDelegate f(android.view.View view) {
        if (android.os.Build.VERSION.SDK_INT >= 29) {
            return view.getAccessibilityDelegate();
        }
        if (f2000d) {
            return null;
        }
        if (f1999c == null) {
            try {
                java.lang.reflect.Field declaredField = android.view.View.class.getDeclaredField("mAccessibilityDelegate");
                f1999c = declaredField;
                declaredField.setAccessible(true);
            } catch (java.lang.Throwable unused) {
                f2000d = true;
                return null;
            }
        }
        java.lang.Object obj = f1999c.get(view);
        if (obj instanceof android.view.View.AccessibilityDelegate) {
            return (android.view.View.AccessibilityDelegate) obj;
        }
        return null;
    }

    public static java.lang.CharSequence g(android.view.View view) {
        return new d.g.m.p(d.g.c.tag_accessibility_pane_title, java.lang.CharSequence.class, 8, 28).b(view);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static android.content.res.ColorStateList h(android.view.View view) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            return view.getBackgroundTintList();
        }
        if (view instanceof d.g.m.n) {
            return ((d.g.m.n) view).getSupportBackgroundTintList();
        }
        return null;
    }

    public static android.graphics.Rect i(android.view.View view) {
        if (android.os.Build.VERSION.SDK_INT >= 18) {
            return view.getClipBounds();
        }
        return null;
    }

    public static android.view.Display j(android.view.View view) {
        if (android.os.Build.VERSION.SDK_INT >= 17) {
            return view.getDisplay();
        }
        if (z(view)) {
            return ((android.view.WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }

    public static float k(android.view.View view) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            return view.getElevation();
        }
        return 0.0f;
    }

    public static android.graphics.Rect l() {
        if (f2001e == null) {
            f2001e = new java.lang.ThreadLocal<>();
        }
        android.graphics.Rect rect = f2001e.get();
        if (rect == null) {
            rect = new android.graphics.Rect();
            f2001e.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static boolean m(android.view.View view) {
        return view.getFitsSystemWindows();
    }

    @android.annotation.SuppressLint({"InlinedApi"})
    public static int n(android.view.View view) {
        if (android.os.Build.VERSION.SDK_INT >= 26) {
            return view.getImportantForAutofill();
        }
        return 0;
    }

    public static int o(android.view.View view) {
        if (android.os.Build.VERSION.SDK_INT >= 17) {
            return view.getLayoutDirection();
        }
        return 0;
    }

    public static int p(android.view.View view) {
        return view.getMinimumHeight();
    }

    public static int q(android.view.View view) {
        return view.getMinimumWidth();
    }

    public static int r(android.view.View view) {
        return android.os.Build.VERSION.SDK_INT >= 17 ? view.getPaddingEnd() : view.getPaddingRight();
    }

    public static int s(android.view.View view) {
        return android.os.Build.VERSION.SDK_INT >= 17 ? view.getPaddingStart() : view.getPaddingLeft();
    }

    public static d.g.m.z t(android.view.View view) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        int i = android.os.Build.VERSION.SDK_INT;
        if (i >= 23) {
            android.view.WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            d.g.m.z zVarF = d.g.m.z.f(rootWindowInsets);
            zVarF.a.k(zVarF);
            zVarF.a.d(view.getRootView());
            return zVarF;
        }
        if (i < 21 || !d.g.m.z.a.f2009d || !view.isAttachedToWindow()) {
            return null;
        }
        try {
            java.lang.Object obj = d.g.m.z.a.a.get(view.getRootView());
            if (obj == null) {
                return null;
            }
            android.graphics.Rect rect = (android.graphics.Rect) d.g.m.z.a.b.get(obj);
            android.graphics.Rect rect2 = (android.graphics.Rect) d.g.m.z.a.f2008c.get(obj);
            if (rect == null || rect2 == null) {
                return null;
            }
            int i2 = android.os.Build.VERSION.SDK_INT;
            d.g.m.z.f eVar = i2 >= 30 ? new d.g.m.z.e() : i2 >= 29 ? new d.g.m.z.d() : i2 >= 20 ? new d.g.m.z.c() : new d.g.m.z.f();
            eVar.b(d.g.g.b.a(rect.left, rect.top, rect.right, rect.bottom));
            eVar.c(d.g.g.b.a(rect2.left, rect2.top, rect2.right, rect2.bottom));
            d.g.m.z zVarA = eVar.a();
            zVarA.a.k(zVarA);
            zVarA.a.d(view.getRootView());
            return zVarA;
        } catch (java.lang.IllegalAccessException e2) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Failed to get insets from AttachInfo. ");
            sbO.append(e2.getMessage());
            android.util.Log.w("WindowInsetsCompat", sbO.toString(), e2);
            return null;
        }
    }

    public static java.lang.String u(android.view.View view) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            return view.getTransitionName();
        }
        java.util.WeakHashMap<android.view.View, java.lang.String> weakHashMap = a;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    public static int v(android.view.View view) {
        return view.getWindowSystemUiVisibility();
    }

    public static float w(android.view.View view) {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            return view.getZ();
        }
        return 0.0f;
    }

    public static boolean x(android.view.View view) {
        return view.hasOnClickListeners();
    }

    public static boolean y(android.view.View view) {
        return view.hasOverlappingRendering();
    }

    public static boolean z(android.view.View view) {
        return android.os.Build.VERSION.SDK_INT >= 19 ? view.isAttachedToWindow() : view.getWindowToken() != null;
    }
}
