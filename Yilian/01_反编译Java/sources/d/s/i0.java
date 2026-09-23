package d.s;

/* loaded from: classes.dex */
public abstract class i0 extends d.s.k {
    public static final java.lang.String[] K = {"android:visibility:visibility", "android:visibility:parent"};
    public int J = 3;

    public static class a extends android.animation.AnimatorListenerAdapter implements d.s.k.d, d.s.a {
        public final android.view.View a;
        public final int b;

        /* renamed from: c, reason: collision with root package name */
        public final android.view.ViewGroup f2270c;

        /* renamed from: d, reason: collision with root package name */
        public final boolean f2271d;

        /* renamed from: e, reason: collision with root package name */
        public boolean f2272e;

        /* renamed from: f, reason: collision with root package name */
        public boolean f2273f = false;

        public a(android.view.View view, int i, boolean z) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            this.a = view;
            this.b = i;
            this.f2270c = (android.view.ViewGroup) view.getParent();
            this.f2271d = z;
            f(true);
        }

        @Override // d.s.k.d
        public void a(d.s.k kVar) {
        }

        @Override // d.s.k.d
        public void b(d.s.k kVar) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            f(false);
        }

        @Override // d.s.k.d
        public void c(d.s.k kVar) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            f(true);
        }

        @Override // d.s.k.d
        public void d(d.s.k kVar) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            e();
            kVar.v(this);
        }

        public final void e() throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            if (!this.f2273f) {
                d.s.c0.e(this.a, this.b);
                android.view.ViewGroup viewGroup = this.f2270c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            f(false);
        }

        public final void f(boolean z) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            android.view.ViewGroup viewGroup;
            if (!this.f2271d || this.f2272e == z || (viewGroup = this.f2270c) == null) {
                return;
            }
            this.f2272e = z;
            d.b.k.r.y0(viewGroup, z);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(android.animation.Animator animator) {
            this.f2273f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(android.animation.Animator animator) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.NoSuchMethodException, java.lang.SecurityException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
            e();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, d.s.a
        public void onAnimationPause(android.animation.Animator animator) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
            if (this.f2273f) {
                return;
            }
            d.s.c0.e(this.a, this.b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(android.animation.Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, d.s.a
        public void onAnimationResume(android.animation.Animator animator) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
            if (this.f2273f) {
                return;
            }
            d.s.c0.e(this.a, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(android.animation.Animator animator) {
        }
    }

    public static class b {
        public boolean a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public int f2274c;

        /* renamed from: d, reason: collision with root package name */
        public int f2275d;

        /* renamed from: e, reason: collision with root package name */
        public android.view.ViewGroup f2276e;

        /* renamed from: f, reason: collision with root package name */
        public android.view.ViewGroup f2277f;
    }

    public final void H(d.s.s sVar) {
        sVar.a.put("android:visibility:visibility", java.lang.Integer.valueOf(sVar.b.getVisibility()));
        sVar.a.put("android:visibility:parent", sVar.b.getParent());
        int[] iArr = new int[2];
        sVar.b.getLocationOnScreen(iArr);
        sVar.a.put("android:visibility:screenLocation", iArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x0079, code lost:
    
        if (r9 == 0) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0083, code lost:
    
        if (r0.f2276e == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0095, code lost:
    
        if (r0.f2274c == 0) goto L41;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final d.s.i0.b I(d.s.s r8, d.s.s r9) {
        /*
            r7 = this;
            d.s.i0$b r0 = new d.s.i0$b
            r0.<init>()
            r1 = 0
            r0.a = r1
            r0.b = r1
            java.lang.String r2 = "android:visibility:parent"
            r3 = 0
            r4 = -1
            java.lang.String r5 = "android:visibility:visibility"
            if (r8 == 0) goto L33
            java.util.Map<java.lang.String, java.lang.Object> r6 = r8.a
            boolean r6 = r6.containsKey(r5)
            if (r6 == 0) goto L33
            java.util.Map<java.lang.String, java.lang.Object> r6 = r8.a
            java.lang.Object r6 = r6.get(r5)
            java.lang.Integer r6 = (java.lang.Integer) r6
            int r6 = r6.intValue()
            r0.f2274c = r6
            java.util.Map<java.lang.String, java.lang.Object> r6 = r8.a
            java.lang.Object r6 = r6.get(r2)
            android.view.ViewGroup r6 = (android.view.ViewGroup) r6
            r0.f2276e = r6
            goto L37
        L33:
            r0.f2274c = r4
            r0.f2276e = r3
        L37:
            if (r9 == 0) goto L5a
            java.util.Map<java.lang.String, java.lang.Object> r6 = r9.a
            boolean r6 = r6.containsKey(r5)
            if (r6 == 0) goto L5a
            java.util.Map<java.lang.String, java.lang.Object> r3 = r9.a
            java.lang.Object r3 = r3.get(r5)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            r0.f2275d = r3
            java.util.Map<java.lang.String, java.lang.Object> r3 = r9.a
            java.lang.Object r2 = r3.get(r2)
            android.view.ViewGroup r2 = (android.view.ViewGroup) r2
            r0.f2277f = r2
            goto L5e
        L5a:
            r0.f2275d = r4
            r0.f2277f = r3
        L5e:
            r2 = 1
            if (r8 == 0) goto L86
            if (r9 == 0) goto L86
            int r8 = r0.f2274c
            int r9 = r0.f2275d
            if (r8 != r9) goto L70
            android.view.ViewGroup r8 = r0.f2276e
            android.view.ViewGroup r9 = r0.f2277f
            if (r8 != r9) goto L70
            return r0
        L70:
            int r8 = r0.f2274c
            int r9 = r0.f2275d
            if (r8 == r9) goto L7c
            if (r8 != 0) goto L79
            goto L97
        L79:
            if (r9 != 0) goto L9a
            goto L8c
        L7c:
            android.view.ViewGroup r8 = r0.f2277f
            if (r8 != 0) goto L81
            goto L97
        L81:
            android.view.ViewGroup r8 = r0.f2276e
            if (r8 != 0) goto L9a
            goto L8c
        L86:
            if (r8 != 0) goto L91
            int r8 = r0.f2275d
            if (r8 != 0) goto L91
        L8c:
            r0.b = r2
        L8e:
            r0.a = r2
            goto L9a
        L91:
            if (r9 != 0) goto L9a
            int r8 = r0.f2274c
            if (r8 != 0) goto L9a
        L97:
            r0.b = r1
            goto L8e
        L9a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.i0.I(d.s.s, d.s.s):d.s.i0$b");
    }

    public abstract android.animation.Animator J(android.view.ViewGroup viewGroup, android.view.View view, d.s.s sVar, d.s.s sVar2);

    @Override // d.s.k
    public void d(d.s.s sVar) {
        H(sVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x00e3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0136  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0138  */
    @Override // d.s.k
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator k(android.view.ViewGroup r10, d.s.s r11, d.s.s r12) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: d.s.i0.k(android.view.ViewGroup, d.s.s, d.s.s):android.animation.Animator");
    }

    @Override // d.s.k
    public java.lang.String[] p() {
        return K;
    }

    @Override // d.s.k
    public boolean r(d.s.s sVar, d.s.s sVar2) {
        if (sVar == null && sVar2 == null) {
            return false;
        }
        if (sVar != null && sVar2 != null && sVar2.a.containsKey("android:visibility:visibility") != sVar.a.containsKey("android:visibility:visibility")) {
            return false;
        }
        d.s.i0.b bVarI = I(sVar, sVar2);
        if (bVarI.a) {
            return bVarI.f2274c == 0 || bVarI.f2275d == 0;
        }
        return false;
    }
}
