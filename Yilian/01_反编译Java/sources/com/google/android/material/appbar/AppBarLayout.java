package com.google.android.material.appbar;

@androidx.coordinatorlayout.widget.CoordinatorLayout.d(com.google.android.material.appbar.AppBarLayout.Behavior.class)
/* loaded from: classes.dex */
public class AppBarLayout extends android.widget.LinearLayout {
    public int a;
    public int b;

    /* renamed from: c, reason: collision with root package name */
    public int f202c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f203d;

    /* renamed from: e, reason: collision with root package name */
    public int f204e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f205f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f206g;
    public boolean h;
    public int[] i;

    public static class BaseBehavior<T extends com.google.android.material.appbar.AppBarLayout> extends e.c.a.b.k.b<T> {
        public int k;
        public int l;
        public android.animation.ValueAnimator m;
        public int n;
        public boolean o;
        public float p;
        public java.lang.ref.WeakReference<android.view.View> q;

        public static class a extends d.i.a.a {
            public static final android.os.Parcelable.Creator<com.google.android.material.appbar.AppBarLayout.BaseBehavior.a> CREATOR = new com.google.android.material.appbar.AppBarLayout.BaseBehavior.a.C0002a();

            /* renamed from: c, reason: collision with root package name */
            public int f207c;

            /* renamed from: d, reason: collision with root package name */
            public float f208d;

            /* renamed from: e, reason: collision with root package name */
            public boolean f209e;

            /* renamed from: com.google.android.material.appbar.AppBarLayout$BaseBehavior$a$a, reason: collision with other inner class name */
            public static class C0002a implements android.os.Parcelable.ClassLoaderCreator<com.google.android.material.appbar.AppBarLayout.BaseBehavior.a> {
                @Override // android.os.Parcelable.Creator
                public java.lang.Object createFromParcel(android.os.Parcel parcel) {
                    return new com.google.android.material.appbar.AppBarLayout.BaseBehavior.a(parcel, null);
                }

                @Override // android.os.Parcelable.Creator
                public java.lang.Object[] newArray(int i) {
                    return new com.google.android.material.appbar.AppBarLayout.BaseBehavior.a[i];
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                public com.google.android.material.appbar.AppBarLayout.BaseBehavior.a createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                    return new com.google.android.material.appbar.AppBarLayout.BaseBehavior.a(parcel, classLoader);
                }
            }

            public a(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f207c = parcel.readInt();
                this.f208d = parcel.readFloat();
                this.f209e = parcel.readByte() != 0;
            }

            public a(android.os.Parcelable parcelable) {
                super(parcelable);
            }

            @Override // d.i.a.a, android.os.Parcelable
            public void writeToParcel(android.os.Parcel parcel, int i) {
                parcel.writeParcelable(this.a, i);
                parcel.writeInt(this.f207c);
                parcel.writeFloat(this.f208d);
                parcel.writeByte(this.f209e ? (byte) 1 : (byte) 0);
            }
        }

        public BaseBehavior() {
            this.n = -1;
        }

        public BaseBehavior(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.n = -1;
        }

        public static boolean J(int i, int i2) {
            return (i & i2) == i2;
        }

        @Override // e.c.a.b.k.b
        public boolean D(android.view.View view) {
            java.lang.ref.WeakReference<android.view.View> weakReference = this.q;
            if (weakReference == null) {
                return true;
            }
            android.view.View view2 = weakReference.get();
            return (view2 == null || !view2.isShown() || view2.canScrollVertically(-1)) ? false : true;
        }

        @Override // e.c.a.b.k.b
        public int E() {
            return A() + this.k;
        }

        @Override // e.c.a.b.k.b
        public int H(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, int i, int i2, int i3) {
            int top;
            java.util.ArrayList<android.view.View> orDefault;
            int topInset;
            com.google.android.material.appbar.AppBarLayout appBarLayout = (com.google.android.material.appbar.AppBarLayout) view;
            int iE = E();
            if (i2 == 0 || iE < i2 || iE > i3) {
                this.k = 0;
                return 0;
            }
            int iH = d.b.k.r.h(i, i2, i3);
            if (iE == iH) {
                return 0;
            }
            if (appBarLayout.f203d) {
                int iAbs = java.lang.Math.abs(iH);
                int childCount = appBarLayout.getChildCount();
                int i4 = 0;
                while (true) {
                    if (i4 >= childCount) {
                        break;
                    }
                    android.view.View childAt = appBarLayout.getChildAt(i4);
                    com.google.android.material.appbar.AppBarLayout.a aVar = (com.google.android.material.appbar.AppBarLayout.a) childAt.getLayoutParams();
                    android.view.animation.Interpolator interpolator = aVar.b;
                    if (iAbs < childAt.getTop() || iAbs > childAt.getBottom()) {
                        i4++;
                    } else if (interpolator != null) {
                        int i5 = aVar.a;
                        if ((i5 & 1) != 0) {
                            topInset = childAt.getHeight() + ((android.widget.LinearLayout.LayoutParams) aVar).topMargin + ((android.widget.LinearLayout.LayoutParams) aVar).bottomMargin + 0;
                            if ((i5 & 2) != 0) {
                                topInset -= d.g.m.s.p(childAt);
                            }
                        } else {
                            topInset = 0;
                        }
                        if (d.g.m.s.m(childAt)) {
                            topInset -= appBarLayout.getTopInset();
                        }
                        if (topInset > 0) {
                            float f2 = topInset;
                            top = (childAt.getTop() + java.lang.Math.round(interpolator.getInterpolation((iAbs - childAt.getTop()) / f2) * f2)) * java.lang.Integer.signum(iH);
                        }
                    }
                }
                top = iH;
            } else {
                top = iH;
            }
            boolean zC = C(top);
            int i6 = iE - iH;
            this.k = iH - top;
            if (!zC && appBarLayout.f203d && (orDefault = coordinatorLayout.b.b.getOrDefault(appBarLayout, null)) != null && !orDefault.isEmpty()) {
                for (int i7 = 0; i7 < orDefault.size(); i7++) {
                    android.view.View view2 = orDefault.get(i7);
                    androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar = ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) view2.getLayoutParams()).a;
                    if (cVar != null) {
                        cVar.g(coordinatorLayout, view2, appBarLayout);
                    }
                }
            }
            A();
            P(coordinatorLayout, appBarLayout, iH, iH < iE ? -1 : 1, false);
            return i6;
        }

        public final void I(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, T t, int i, float f2) {
            int iAbs = java.lang.Math.abs(E() - i);
            float fAbs = java.lang.Math.abs(f2);
            int iRound = fAbs > 0.0f ? java.lang.Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / t.getHeight()) + 1.0f) * 150.0f);
            int iE = E();
            if (iE == i) {
                android.animation.ValueAnimator valueAnimator = this.m;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.m.cancel();
                return;
            }
            android.animation.ValueAnimator valueAnimator2 = this.m;
            if (valueAnimator2 == null) {
                android.animation.ValueAnimator valueAnimator3 = new android.animation.ValueAnimator();
                this.m = valueAnimator3;
                valueAnimator3.setInterpolator(e.c.a.b.j.a.f2607d);
                this.m.addUpdateListener(new e.c.a.b.k.a(this, coordinatorLayout, t));
            } else {
                valueAnimator2.cancel();
            }
            this.m.setDuration(java.lang.Math.min(iRound, 600));
            this.m.setIntValues(iE, i);
            this.m.start();
        }

        public void K(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, com.google.android.material.appbar.AppBarLayout appBarLayout, android.view.View view, int i, int[] iArr, int i2) {
            int i3;
            int downNestedPreScrollRange;
            if (i != 0) {
                if (i < 0) {
                    int i4 = -appBarLayout.getTotalScrollRange();
                    i3 = i4;
                    downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange() + i4;
                } else {
                    i3 = -appBarLayout.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                if (i3 != downNestedPreScrollRange) {
                    iArr[1] = F(coordinatorLayout, appBarLayout, i, i3, downNestedPreScrollRange);
                    O(i, appBarLayout, view, i2);
                }
            }
        }

        public void L(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, com.google.android.material.appbar.AppBarLayout appBarLayout, android.view.View view, int i, int i2) {
            if (i < 0) {
                F(coordinatorLayout, appBarLayout, i, -appBarLayout.getDownNestedScrollRange(), 0);
                O(i, appBarLayout, view, i2);
            }
            if (appBarLayout.h) {
                appBarLayout.c(view.getScrollY() > 0);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x002a  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean M(androidx.coordinatorlayout.widget.CoordinatorLayout r3, com.google.android.material.appbar.AppBarLayout r4, android.view.View r5, int r6, int r7) {
            /*
                r2 = this;
                r6 = r6 & 2
                r0 = 1
                r1 = 0
                if (r6 == 0) goto L2a
                boolean r6 = r4.h
                if (r6 != 0) goto L2b
                int r6 = r4.getTotalScrollRange()
                if (r6 == 0) goto L12
                r6 = 1
                goto L13
            L12:
                r6 = 0
            L13:
                if (r6 == 0) goto L26
                int r3 = r3.getHeight()
                int r5 = r5.getHeight()
                int r3 = r3 - r5
                int r4 = r4.getHeight()
                if (r3 > r4) goto L26
                r3 = 1
                goto L27
            L26:
                r3 = 0
            L27:
                if (r3 == 0) goto L2a
                goto L2b
            L2a:
                r0 = 0
            L2b:
                if (r0 == 0) goto L34
                android.animation.ValueAnimator r3 = r2.m
                if (r3 == 0) goto L34
                r3.cancel()
            L34:
                r3 = 0
                r2.q = r3
                r2.l = r7
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.M(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, android.view.View, int, int):boolean");
        }

        public final void N(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, T t) {
            int iE = E();
            int childCount = t.getChildCount();
            int i = 0;
            while (true) {
                if (i >= childCount) {
                    i = -1;
                    break;
                }
                android.view.View childAt = t.getChildAt(i);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                com.google.android.material.appbar.AppBarLayout.a aVar = (com.google.android.material.appbar.AppBarLayout.a) childAt.getLayoutParams();
                if (J(aVar.a, 32)) {
                    top -= ((android.widget.LinearLayout.LayoutParams) aVar).topMargin;
                    bottom += ((android.widget.LinearLayout.LayoutParams) aVar).bottomMargin;
                }
                int i2 = -iE;
                if (top <= i2 && bottom >= i2) {
                    break;
                } else {
                    i++;
                }
            }
            if (i >= 0) {
                android.view.View childAt2 = t.getChildAt(i);
                com.google.android.material.appbar.AppBarLayout.a aVar2 = (com.google.android.material.appbar.AppBarLayout.a) childAt2.getLayoutParams();
                int i3 = aVar2.a;
                if ((i3 & 17) == 17) {
                    int i4 = -childAt2.getTop();
                    int iP = -childAt2.getBottom();
                    if (i == t.getChildCount() - 1) {
                        iP += t.getTopInset();
                    }
                    if (J(i3, 2)) {
                        iP += d.g.m.s.p(childAt2);
                    } else if (J(i3, 5)) {
                        int iP2 = d.g.m.s.p(childAt2) + iP;
                        if (iE < iP2) {
                            i4 = iP2;
                        } else {
                            iP = iP2;
                        }
                    }
                    if (J(i3, 32)) {
                        i4 += ((android.widget.LinearLayout.LayoutParams) aVar2).topMargin;
                        iP -= ((android.widget.LinearLayout.LayoutParams) aVar2).bottomMargin;
                    }
                    if (iE < (iP + i4) / 2) {
                        i4 = iP;
                    }
                    I(coordinatorLayout, t, d.b.k.r.h(i4, -t.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        public final void O(int i, T t, android.view.View view, int i2) {
            if (i2 == 1) {
                int iE = E();
                if ((i >= 0 || iE != 0) && (i <= 0 || iE != (-t.getDownNestedScrollRange()))) {
                    return;
                }
                d.g.m.s.X(view, 1);
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x005c  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final void P(androidx.coordinatorlayout.widget.CoordinatorLayout r8, T r9, int r10, int r11, boolean r12) {
            /*
                r7 = this;
                int r0 = java.lang.Math.abs(r10)
                int r1 = r9.getChildCount()
                r2 = 0
                r3 = 0
            La:
                r4 = 0
                if (r3 >= r1) goto L21
                android.view.View r5 = r9.getChildAt(r3)
                int r6 = r5.getTop()
                if (r0 < r6) goto L1e
                int r6 = r5.getBottom()
                if (r0 > r6) goto L1e
                goto L22
            L1e:
                int r3 = r3 + 1
                goto La
            L21:
                r5 = r4
            L22:
                if (r5 == 0) goto Lb5
                android.view.ViewGroup$LayoutParams r0 = r5.getLayoutParams()
                com.google.android.material.appbar.AppBarLayout$a r0 = (com.google.android.material.appbar.AppBarLayout.a) r0
                int r0 = r0.a
                r1 = r0 & 1
                r3 = 1
                if (r1 == 0) goto L5c
                int r1 = d.g.m.s.p(r5)
                if (r11 <= 0) goto L49
                r11 = r0 & 12
                if (r11 == 0) goto L49
                int r10 = -r10
                int r11 = r5.getBottom()
                int r11 = r11 - r1
                int r0 = r9.getTopInset()
                int r11 = r11 - r0
                if (r10 < r11) goto L5c
                goto L5a
            L49:
                r11 = r0 & 2
                if (r11 == 0) goto L5c
                int r10 = -r10
                int r11 = r5.getBottom()
                int r11 = r11 - r1
                int r0 = r9.getTopInset()
                int r11 = r11 - r0
                if (r10 < r11) goto L5c
            L5a:
                r10 = 1
                goto L5d
            L5c:
                r10 = 0
            L5d:
                boolean r11 = r9.h
                if (r11 == 0) goto L80
                int r11 = r8.getChildCount()
                r0 = 0
            L66:
                if (r0 >= r11) goto L75
                android.view.View r1 = r8.getChildAt(r0)
                boolean r5 = r1 instanceof d.g.m.f
                if (r5 == 0) goto L72
                r4 = r1
                goto L75
            L72:
                int r0 = r0 + 1
                goto L66
            L75:
                if (r4 == 0) goto L80
                int r10 = r4.getScrollY()
                if (r10 <= 0) goto L7f
                r10 = 1
                goto L80
            L7f:
                r10 = 0
            L80:
                boolean r10 = r9.c(r10)
                if (r12 != 0) goto Lb2
                if (r10 == 0) goto Lb5
                java.util.List r8 = r8.e(r9)
                int r10 = r8.size()
                r11 = 0
            L91:
                if (r11 >= r10) goto Lb0
                java.lang.Object r12 = r8.get(r11)
                android.view.View r12 = (android.view.View) r12
                android.view.ViewGroup$LayoutParams r12 = r12.getLayoutParams()
                androidx.coordinatorlayout.widget.CoordinatorLayout$f r12 = (androidx.coordinatorlayout.widget.CoordinatorLayout.f) r12
                androidx.coordinatorlayout.widget.CoordinatorLayout$c r12 = r12.a
                boolean r0 = r12 instanceof com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior
                if (r0 == 0) goto Lad
                com.google.android.material.appbar.AppBarLayout$ScrollingViewBehavior r12 = (com.google.android.material.appbar.AppBarLayout.ScrollingViewBehavior) r12
                int r8 = r12.f2622g
                if (r8 == 0) goto Lb0
                r2 = 1
                goto Lb0
            Lad:
                int r11 = r11 + 1
                goto L91
            Lb0:
                if (r2 == 0) goto Lb5
            Lb2:
                r9.jumpDrawablesToCurrentState()
            Lb5:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.BaseBehavior.P(androidx.coordinatorlayout.widget.CoordinatorLayout, com.google.android.material.appbar.AppBarLayout, int, int, boolean):void");
        }

        @Override // e.c.a.b.k.d, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean j(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, int i) {
            com.google.android.material.appbar.AppBarLayout appBarLayout = (com.google.android.material.appbar.AppBarLayout) view;
            super.j(coordinatorLayout, appBarLayout, i);
            int pendingAction = appBarLayout.getPendingAction();
            int i2 = this.n;
            if (i2 >= 0 && (pendingAction & 8) == 0) {
                android.view.View childAt = appBarLayout.getChildAt(i2);
                int i3 = -childAt.getBottom();
                G(coordinatorLayout, appBarLayout, this.o ? appBarLayout.getTopInset() + childAt.getMinimumHeight() + i3 : java.lang.Math.round(childAt.getHeight() * this.p) + i3);
            } else if (pendingAction != 0) {
                boolean z = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i4 = -appBarLayout.getUpNestedPreScrollRange();
                    if (z) {
                        I(coordinatorLayout, appBarLayout, i4, 0.0f);
                    } else {
                        G(coordinatorLayout, appBarLayout, i4);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z) {
                        I(coordinatorLayout, appBarLayout, 0, 0.0f);
                    } else {
                        G(coordinatorLayout, appBarLayout, 0);
                    }
                }
            }
            appBarLayout.f204e = 0;
            this.n = -1;
            C(d.b.k.r.h(A(), -appBarLayout.getTotalScrollRange(), 0));
            P(coordinatorLayout, appBarLayout, A(), 0, true);
            A();
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean k(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, int i, int i2, int i3, int i4) {
            com.google.android.material.appbar.AppBarLayout appBarLayout = (com.google.android.material.appbar.AppBarLayout) view;
            if (((android.view.ViewGroup.MarginLayoutParams) ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) appBarLayout.getLayoutParams())).height != -2) {
                return false;
            }
            coordinatorLayout.r(appBarLayout, i, i2, android.view.View.MeasureSpec.makeMeasureSpec(0, 0), i4);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ void o(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.View view2, int i, int i2, int[] iArr, int i3) {
            K(coordinatorLayout, (com.google.android.material.appbar.AppBarLayout) view, view2, i2, iArr, i3);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ void q(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.View view2, int i, int i2, int i3, int i4, int i5) {
            L(coordinatorLayout, (com.google.android.material.appbar.AppBarLayout) view, view2, i4, i5);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void t(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.os.Parcelable parcelable) {
            if (!(parcelable instanceof com.google.android.material.appbar.AppBarLayout.BaseBehavior.a)) {
                this.n = -1;
                return;
            }
            com.google.android.material.appbar.AppBarLayout.BaseBehavior.a aVar = (com.google.android.material.appbar.AppBarLayout.BaseBehavior.a) parcelable;
            this.n = aVar.f207c;
            this.p = aVar.f208d;
            this.o = aVar.f209e;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public android.os.Parcelable u(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view) {
            com.google.android.material.appbar.AppBarLayout appBarLayout = (com.google.android.material.appbar.AppBarLayout) view;
            android.view.AbsSavedState absSavedState = android.view.View.BaseSavedState.EMPTY_STATE;
            int iA = A();
            int childCount = appBarLayout.getChildCount();
            for (int i = 0; i < childCount; i++) {
                android.view.View childAt = appBarLayout.getChildAt(i);
                int bottom = childAt.getBottom() + iA;
                if (childAt.getTop() + iA <= 0 && bottom >= 0) {
                    com.google.android.material.appbar.AppBarLayout.BaseBehavior.a aVar = new com.google.android.material.appbar.AppBarLayout.BaseBehavior.a(absSavedState);
                    aVar.f207c = i;
                    aVar.f209e = bottom == appBarLayout.getTopInset() + d.g.m.s.p(childAt);
                    aVar.f208d = bottom / childAt.getHeight();
                    return aVar;
                }
            }
            return absSavedState;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ boolean w(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.View view2, android.view.View view3, int i, int i2) {
            return M(coordinatorLayout, (com.google.android.material.appbar.AppBarLayout) view, view2, i, i2);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void y(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.View view2, int i) {
            com.google.android.material.appbar.AppBarLayout appBarLayout = (com.google.android.material.appbar.AppBarLayout) view;
            if (this.l == 0 || i == 1) {
                N(coordinatorLayout, appBarLayout);
            }
            this.q = new java.lang.ref.WeakReference<>(view2);
        }
    }

    public static class Behavior extends com.google.android.material.appbar.AppBarLayout.BaseBehavior<com.google.android.material.appbar.AppBarLayout> {
        public Behavior() {
        }

        public Behavior(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends e.c.a.b.k.c {
        public ScrollingViewBehavior() {
        }

        public ScrollingViewBehavior(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.c.a.b.i.ScrollingViewBehavior_Layout);
            this.f2622g = typedArrayObtainStyledAttributes.getDimensionPixelSize(e.c.a.b.i.ScrollingViewBehavior_Layout_behavior_overlapTop, 0);
            typedArrayObtainStyledAttributes.recycle();
        }

        public com.google.android.material.appbar.AppBarLayout E(java.util.List<android.view.View> list) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                android.view.View view = list.get(i);
                if (view instanceof com.google.android.material.appbar.AppBarLayout) {
                    return (com.google.android.material.appbar.AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean d(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.View view2) {
            return view2 instanceof com.google.android.material.appbar.AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean g(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.view.View view2) {
            androidx.coordinatorlayout.widget.CoordinatorLayout.c cVar = ((androidx.coordinatorlayout.widget.CoordinatorLayout.f) view2.getLayoutParams()).a;
            if (cVar instanceof com.google.android.material.appbar.AppBarLayout.BaseBehavior) {
                d.g.m.s.F(view, (((view2.getBottom() - view.getTop()) + ((com.google.android.material.appbar.AppBarLayout.BaseBehavior) cVar).k) + this.f2621f) - D(view2));
            }
            if (view2 instanceof com.google.android.material.appbar.AppBarLayout) {
                com.google.android.material.appbar.AppBarLayout appBarLayout = (com.google.android.material.appbar.AppBarLayout) view2;
                if (appBarLayout.h) {
                    appBarLayout.c(view.getScrollY() > 0);
                }
            }
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean s(androidx.coordinatorlayout.widget.CoordinatorLayout coordinatorLayout, android.view.View view, android.graphics.Rect rect, boolean z) {
            com.google.android.material.appbar.AppBarLayout appBarLayoutE = E(coordinatorLayout.d(view));
            if (appBarLayoutE != null) {
                rect.offset(view.getLeft(), view.getTop());
                android.graphics.Rect rect2 = this.f2619d;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    appBarLayoutE.b(false, !z);
                    return true;
                }
            }
            return false;
        }
    }

    public static class a extends android.widget.LinearLayout.LayoutParams {
        public int a;
        public android.view.animation.Interpolator b;

        public a(int i, int i2) {
            super(i, i2);
            this.a = 1;
        }

        public a(android.content.Context context, android.util.AttributeSet attributeSet) {
            super(context, attributeSet);
            this.a = 1;
            android.content.res.TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, e.c.a.b.i.AppBarLayout_Layout);
            this.a = typedArrayObtainStyledAttributes.getInt(e.c.a.b.i.AppBarLayout_Layout_layout_scrollFlags, 0);
            if (typedArrayObtainStyledAttributes.hasValue(e.c.a.b.i.AppBarLayout_Layout_layout_scrollInterpolator)) {
                this.b = android.view.animation.AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(e.c.a.b.i.AppBarLayout_Layout_layout_scrollInterpolator, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public a(android.view.ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 1;
        }

        public a(android.view.ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.a = 1;
        }

        public a(android.widget.LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.a = 1;
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* renamed from: a, reason: merged with bridge method [inline-methods] */
    public com.google.android.material.appbar.AppBarLayout.a generateLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return (android.os.Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof android.widget.LinearLayout.LayoutParams)) ? layoutParams instanceof android.view.ViewGroup.MarginLayoutParams ? new com.google.android.material.appbar.AppBarLayout.a((android.view.ViewGroup.MarginLayoutParams) layoutParams) : new com.google.android.material.appbar.AppBarLayout.a(layoutParams) : new com.google.android.material.appbar.AppBarLayout.a((android.widget.LinearLayout.LayoutParams) layoutParams);
    }

    public void b(boolean z, boolean z2) {
        this.f204e = (z ? 1 : 2) | (z2 ? 4 : 0) | 8;
        requestLayout();
    }

    public boolean c(boolean z) {
        if (this.f206g == z) {
            return false;
        }
        this.f206g = z;
        refreshDrawableState();
        return true;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public boolean checkLayoutParams(android.view.ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof com.google.android.material.appbar.AppBarLayout.a;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new com.google.android.material.appbar.AppBarLayout.a(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public android.view.ViewGroup.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new com.google.android.material.appbar.AppBarLayout.a(getContext(), attributeSet);
    }

    public int getDownNestedPreScrollRange() {
        int i = this.b;
        if (i != -1) {
            return i;
        }
        int iP = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            android.view.View childAt = getChildAt(childCount);
            com.google.android.material.appbar.AppBarLayout.a aVar = (com.google.android.material.appbar.AppBarLayout.a) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i2 = aVar.a;
            if ((i2 & 5) != 5) {
                if (iP > 0) {
                    break;
                }
            } else {
                int i3 = ((android.widget.LinearLayout.LayoutParams) aVar).topMargin + ((android.widget.LinearLayout.LayoutParams) aVar).bottomMargin + iP;
                iP = (i2 & 8) != 0 ? d.g.m.s.p(childAt) + i3 : (measuredHeight - ((i2 & 2) != 0 ? d.g.m.s.p(childAt) : getTopInset())) + i3;
            }
        }
        int iMax = java.lang.Math.max(0, iP);
        this.b = iMax;
        return iMax;
    }

    public int getDownNestedScrollRange() {
        int i = this.f202c;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int topInset = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            android.view.View childAt = getChildAt(i2);
            com.google.android.material.appbar.AppBarLayout.a aVar = (com.google.android.material.appbar.AppBarLayout.a) childAt.getLayoutParams();
            int measuredHeight = ((android.widget.LinearLayout.LayoutParams) aVar).topMargin + ((android.widget.LinearLayout.LayoutParams) aVar).bottomMargin + childAt.getMeasuredHeight();
            int i3 = aVar.a;
            if ((i3 & 1) == 0) {
                break;
            }
            topInset += measuredHeight;
            if ((i3 & 2) != 0) {
                topInset -= getTopInset() + d.g.m.s.p(childAt);
                break;
            }
            i2++;
        }
        int iMax = java.lang.Math.max(0, topInset);
        this.f202c = iMax;
        return iMax;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int iP = d.g.m.s.p(this);
        if (iP == 0) {
            int childCount = getChildCount();
            iP = childCount >= 1 ? getChildAt(childCount - 1).getMinimumHeight() : 0;
            if (iP == 0) {
                return getHeight() / 3;
            }
        }
        return (iP * 2) + topInset;
    }

    public int getPendingAction() {
        return this.f204e;
    }

    @java.lang.Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    public final int getTopInset() {
        return 0;
    }

    public final int getTotalScrollRange() {
        int i = this.a;
        if (i != -1) {
            return i;
        }
        int childCount = getChildCount();
        int i2 = 0;
        int iP = 0;
        while (true) {
            if (i2 >= childCount) {
                break;
            }
            android.view.View childAt = getChildAt(i2);
            com.google.android.material.appbar.AppBarLayout.a aVar = (com.google.android.material.appbar.AppBarLayout.a) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i3 = aVar.a;
            if ((i3 & 1) == 0) {
                break;
            }
            iP += measuredHeight + ((android.widget.LinearLayout.LayoutParams) aVar).topMargin + ((android.widget.LinearLayout.LayoutParams) aVar).bottomMargin;
            if ((i3 & 2) != 0) {
                iP -= d.g.m.s.p(childAt);
                break;
            }
            i2++;
        }
        int iMax = java.lang.Math.max(0, iP - getTopInset());
        this.a = iMax;
        return iMax;
    }

    public int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int i) {
        if (this.i == null) {
            this.i = new int[4];
        }
        int[] iArr = this.i;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i + iArr.length);
        iArr[0] = this.f205f ? e.c.a.b.b.state_liftable : -e.c.a.b.b.state_liftable;
        iArr[1] = (this.f205f && this.f206g) ? e.c.a.b.b.state_lifted : -e.c.a.b.b.state_lifted;
        iArr[2] = this.f205f ? e.c.a.b.b.state_collapsible : -e.c.a.b.b.state_collapsible;
        iArr[3] = (this.f205f && this.f206g) ? e.c.a.b.b.state_collapsed : -e.c.a.b.b.state_collapsed;
        return android.widget.LinearLayout.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0055  */
    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onLayout(boolean r2, int r3, int r4, int r5, int r6) {
        /*
            r1 = this;
            super.onLayout(r2, r3, r4, r5, r6)
            r2 = -1
            r1.a = r2
            r1.b = r2
            r1.f202c = r2
            r2 = 0
            r1.f203d = r2
            int r3 = r1.getChildCount()
            r4 = 0
        L12:
            r5 = 1
            if (r4 >= r3) goto L29
            android.view.View r6 = r1.getChildAt(r4)
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            com.google.android.material.appbar.AppBarLayout$a r6 = (com.google.android.material.appbar.AppBarLayout.a) r6
            android.view.animation.Interpolator r6 = r6.b
            if (r6 == 0) goto L26
            r1.f203d = r5
            goto L29
        L26:
            int r4 = r4 + 1
            goto L12
        L29:
            boolean r3 = r1.h
            if (r3 != 0) goto L55
            int r3 = r1.getChildCount()
            r4 = 0
        L32:
            if (r4 >= r3) goto L52
            android.view.View r6 = r1.getChildAt(r4)
            android.view.ViewGroup$LayoutParams r6 = r6.getLayoutParams()
            com.google.android.material.appbar.AppBarLayout$a r6 = (com.google.android.material.appbar.AppBarLayout.a) r6
            int r6 = r6.a
            r0 = r6 & 1
            if (r0 != r5) goto L4a
            r6 = r6 & 10
            if (r6 == 0) goto L4a
            r6 = 1
            goto L4b
        L4a:
            r6 = 0
        L4b:
            if (r6 == 0) goto L4f
            r3 = 1
            goto L53
        L4f:
            int r4 = r4 + 1
            goto L32
        L52:
            r3 = 0
        L53:
            if (r3 == 0) goto L56
        L55:
            r2 = 1
        L56:
            boolean r3 = r1.f205f
            if (r3 == r2) goto L5f
            r1.f205f = r2
            r1.refreshDrawableState()
        L5f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.appbar.AppBarLayout.onLayout(boolean, int, int, int, int):void");
    }

    @Override // android.widget.LinearLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        this.a = -1;
        this.b = -1;
        this.f202c = -1;
    }

    public void setExpanded(boolean z) {
        b(z, d.g.m.s.A(this));
    }

    public void setLiftOnScroll(boolean z) {
        this.h = z;
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i) {
        if (i != 1) {
            throw new java.lang.IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i);
    }

    @java.lang.Deprecated
    public void setTargetElevation(float f2) throws android.content.res.Resources.NotFoundException {
        if (android.os.Build.VERSION.SDK_INT >= 21) {
            int integer = getResources().getInteger(e.c.a.b.f.app_bar_elevation_anim_duration);
            android.animation.StateListAnimator stateListAnimator = new android.animation.StateListAnimator();
            long j = integer;
            stateListAnimator.addState(new int[]{android.R.attr.enabled, e.c.a.b.b.state_liftable, -e.c.a.b.b.state_lifted}, android.animation.ObjectAnimator.ofFloat(this, "elevation", 0.0f).setDuration(j));
            stateListAnimator.addState(new int[]{android.R.attr.enabled}, android.animation.ObjectAnimator.ofFloat(this, "elevation", f2).setDuration(j));
            stateListAnimator.addState(new int[0], android.animation.ObjectAnimator.ofFloat(this, "elevation", 0.0f).setDuration(0L));
            setStateListAnimator(stateListAnimator);
        }
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public android.widget.LinearLayout.LayoutParams generateDefaultLayoutParams() {
        return new com.google.android.material.appbar.AppBarLayout.a(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    public android.widget.LinearLayout.LayoutParams generateLayoutParams(android.util.AttributeSet attributeSet) {
        return new com.google.android.material.appbar.AppBarLayout.a(getContext(), attributeSet);
    }
}
