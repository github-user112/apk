package d.j.d;

/* loaded from: classes.dex */
public class e0 {
    public final d.j.d.x a;
    public final d.j.d.f0 b;

    /* renamed from: c, reason: collision with root package name */
    public final androidx.fragment.app.Fragment f2073c;

    /* renamed from: d, reason: collision with root package name */
    public boolean f2074d = false;

    /* renamed from: e, reason: collision with root package name */
    public int f2075e = -1;

    public class a implements android.view.View.OnAttachStateChangeListener {
        public final /* synthetic */ android.view.View a;

        public a(d.j.d.e0 e0Var, android.view.View view) {
            this.a = view;
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(android.view.View view) {
            this.a.removeOnAttachStateChangeListener(this);
            d.g.m.s.K(this.a);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(android.view.View view) {
        }
    }

    public e0(d.j.d.x xVar, d.j.d.f0 f0Var, androidx.fragment.app.Fragment fragment) {
        this.a = xVar;
        this.b = f0Var;
        this.f2073c = fragment;
    }

    public e0(d.j.d.x xVar, d.j.d.f0 f0Var, androidx.fragment.app.Fragment fragment, d.j.d.d0 d0Var) {
        this.a = xVar;
        this.b = f0Var;
        this.f2073c = fragment;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
        fragment.mBackStackNesting = 0;
        fragment.mInLayout = false;
        fragment.mAdded = false;
        androidx.fragment.app.Fragment fragment2 = fragment.mTarget;
        fragment.mTargetWho = fragment2 != null ? fragment2.mWho : null;
        androidx.fragment.app.Fragment fragment3 = this.f2073c;
        fragment3.mTarget = null;
        android.os.Bundle bundle = d0Var.m;
        fragment3.mSavedFragmentState = bundle == null ? new android.os.Bundle() : bundle;
    }

    public e0(d.j.d.x xVar, d.j.d.f0 f0Var, java.lang.ClassLoader classLoader, d.j.d.u uVar, d.j.d.d0 d0Var) {
        this.a = xVar;
        this.b = f0Var;
        this.f2073c = uVar.a(classLoader, d0Var.a);
        android.os.Bundle bundle = d0Var.j;
        if (bundle != null) {
            bundle.setClassLoader(classLoader);
        }
        this.f2073c.setArguments(d0Var.j);
        androidx.fragment.app.Fragment fragment = this.f2073c;
        fragment.mWho = d0Var.b;
        fragment.mFromLayout = d0Var.f2068c;
        fragment.mRestored = true;
        fragment.mFragmentId = d0Var.f2069d;
        fragment.mContainerId = d0Var.f2070e;
        fragment.mTag = d0Var.f2071f;
        fragment.mRetainInstance = d0Var.f2072g;
        fragment.mRemoving = d0Var.h;
        fragment.mDetached = d0Var.i;
        fragment.mHidden = d0Var.k;
        fragment.mMaxState = d.l.e.b.values()[d0Var.l];
        android.os.Bundle bundle2 = d0Var.m;
        if (bundle2 != null) {
            this.f2073c.mSavedFragmentState = bundle2;
        } else {
            this.f2073c.mSavedFragmentState = new android.os.Bundle();
        }
        if (d.j.d.y.M(2)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Instantiated fragment ");
            sbO.append(this.f2073c);
            android.util.Log.v("FragmentManager", sbO.toString());
        }
    }

    public void a() {
        if (d.j.d.y.M(3)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("moveto ACTIVITY_CREATED: ");
            sbO.append(this.f2073c);
            android.util.Log.d("FragmentManager", sbO.toString());
        }
        androidx.fragment.app.Fragment fragment = this.f2073c;
        fragment.performActivityCreated(fragment.mSavedFragmentState);
        d.j.d.x xVar = this.a;
        androidx.fragment.app.Fragment fragment2 = this.f2073c;
        xVar.a(fragment2, fragment2.mSavedFragmentState, false);
    }

    public void b() {
        android.view.View view;
        android.view.View view2;
        d.j.d.f0 f0Var = this.b;
        androidx.fragment.app.Fragment fragment = this.f2073c;
        if (f0Var == null) {
            throw null;
        }
        android.view.ViewGroup viewGroup = fragment.mContainer;
        int iIndexOfChild = -1;
        if (viewGroup != null) {
            int iIndexOf = f0Var.a.indexOf(fragment);
            int i = iIndexOf - 1;
            while (true) {
                if (i < 0) {
                    while (true) {
                        iIndexOf++;
                        if (iIndexOf >= f0Var.a.size()) {
                            break;
                        }
                        androidx.fragment.app.Fragment fragment2 = f0Var.a.get(iIndexOf);
                        if (fragment2.mContainer == viewGroup && (view = fragment2.mView) != null) {
                            iIndexOfChild = viewGroup.indexOfChild(view);
                            break;
                        }
                    }
                } else {
                    androidx.fragment.app.Fragment fragment3 = f0Var.a.get(i);
                    if (fragment3.mContainer == viewGroup && (view2 = fragment3.mView) != null) {
                        iIndexOfChild = viewGroup.indexOfChild(view2) + 1;
                        break;
                    }
                    i--;
                }
            }
        }
        androidx.fragment.app.Fragment fragment4 = this.f2073c;
        fragment4.mContainer.addView(fragment4.mView, iIndexOfChild);
    }

    public void c() {
        if (d.j.d.y.M(3)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("moveto ATTACHED: ");
            sbO.append(this.f2073c);
            android.util.Log.d("FragmentManager", sbO.toString());
        }
        androidx.fragment.app.Fragment fragment = this.f2073c;
        androidx.fragment.app.Fragment fragment2 = fragment.mTarget;
        d.j.d.e0 e0VarH = null;
        if (fragment2 != null) {
            d.j.d.e0 e0VarH2 = this.b.h(fragment2.mWho);
            if (e0VarH2 == null) {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Fragment ");
                sbO2.append(this.f2073c);
                sbO2.append(" declared target fragment ");
                sbO2.append(this.f2073c.mTarget);
                sbO2.append(" that does not belong to this FragmentManager!");
                throw new java.lang.IllegalStateException(sbO2.toString());
            }
            androidx.fragment.app.Fragment fragment3 = this.f2073c;
            fragment3.mTargetWho = fragment3.mTarget.mWho;
            fragment3.mTarget = null;
            e0VarH = e0VarH2;
        } else {
            java.lang.String str = fragment.mTargetWho;
            if (str != null && (e0VarH = this.b.h(str)) == null) {
                java.lang.StringBuilder sbO3 = e.a.c.a.a.o("Fragment ");
                sbO3.append(this.f2073c);
                sbO3.append(" declared target fragment ");
                throw new java.lang.IllegalStateException(e.a.c.a.a.j(sbO3, this.f2073c.mTargetWho, " that does not belong to this FragmentManager!"));
            }
        }
        if (e0VarH != null) {
            e0VarH.k();
        }
        androidx.fragment.app.Fragment fragment4 = this.f2073c;
        d.j.d.y yVar = fragment4.mFragmentManager;
        fragment4.mHost = yVar.q;
        fragment4.mParentFragment = yVar.s;
        this.a.g(fragment4, false);
        this.f2073c.performAttach();
        this.a.b(this.f2073c, false);
    }

    public int d() {
        d.j.d.u0.d next;
        d.j.d.u0.d.b bVar;
        androidx.fragment.app.Fragment fragment = this.f2073c;
        if (fragment.mFragmentManager == null) {
            return fragment.mState;
        }
        int iMin = this.f2075e;
        int iOrdinal = fragment.mMaxState.ordinal();
        if (iOrdinal == 1) {
            iMin = java.lang.Math.min(iMin, 0);
        } else if (iOrdinal == 2) {
            iMin = java.lang.Math.min(iMin, 1);
        } else if (iOrdinal == 3) {
            iMin = java.lang.Math.min(iMin, 5);
        } else if (iOrdinal != 4) {
            iMin = java.lang.Math.min(iMin, -1);
        }
        androidx.fragment.app.Fragment fragment2 = this.f2073c;
        if (fragment2.mFromLayout) {
            if (fragment2.mInLayout) {
                iMin = java.lang.Math.max(this.f2075e, 2);
                android.view.View view = this.f2073c.mView;
                if (view != null && view.getParent() == null) {
                    iMin = java.lang.Math.min(iMin, 2);
                }
            } else {
                iMin = this.f2075e < 4 ? java.lang.Math.min(iMin, fragment2.mState) : java.lang.Math.min(iMin, 1);
            }
        }
        if (!this.f2073c.mAdded) {
            iMin = java.lang.Math.min(iMin, 1);
        }
        androidx.fragment.app.Fragment fragment3 = this.f2073c;
        android.view.ViewGroup viewGroup = fragment3.mContainer;
        d.j.d.u0.d.b bVar2 = null;
        if (viewGroup != null) {
            d.j.d.u0 u0VarF = d.j.d.u0.f(viewGroup, fragment3.getParentFragmentManager());
            if (u0VarF == null) {
                throw null;
            }
            d.j.d.u0.d dVarD = u0VarF.d(this.f2073c);
            if (dVarD != null) {
                bVar = dVarD.b;
            } else {
                androidx.fragment.app.Fragment fragment4 = this.f2073c;
                java.util.Iterator<d.j.d.u0.d> it = u0VarF.f2132c.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    if (next.f2135c.equals(fragment4) && !next.f2138f) {
                        break;
                    }
                }
                if (next != null) {
                    bVar = next.b;
                }
            }
            bVar2 = bVar;
        }
        if (bVar2 == d.j.d.u0.d.b.ADDING) {
            iMin = java.lang.Math.min(iMin, 6);
        } else if (bVar2 == d.j.d.u0.d.b.REMOVING) {
            iMin = java.lang.Math.max(iMin, 3);
        } else {
            androidx.fragment.app.Fragment fragment5 = this.f2073c;
            if (fragment5.mRemoving) {
                iMin = fragment5.isInBackStack() ? java.lang.Math.min(iMin, 1) : java.lang.Math.min(iMin, -1);
            }
        }
        androidx.fragment.app.Fragment fragment6 = this.f2073c;
        if (fragment6.mDeferStart && fragment6.mState < 5) {
            iMin = java.lang.Math.min(iMin, 4);
        }
        if (d.j.d.y.M(2)) {
            java.lang.StringBuilder sbP = e.a.c.a.a.p("computeExpectedState() of ", iMin, " for ");
            sbP.append(this.f2073c);
            android.util.Log.v("FragmentManager", sbP.toString());
        }
        return iMin;
    }

    public void e() {
        if (d.j.d.y.M(3)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("moveto CREATED: ");
            sbO.append(this.f2073c);
            android.util.Log.d("FragmentManager", sbO.toString());
        }
        androidx.fragment.app.Fragment fragment = this.f2073c;
        if (fragment.mIsCreated) {
            fragment.restoreChildFragmentState(fragment.mSavedFragmentState);
            this.f2073c.mState = 1;
            return;
        }
        this.a.h(fragment, fragment.mSavedFragmentState, false);
        androidx.fragment.app.Fragment fragment2 = this.f2073c;
        fragment2.performCreate(fragment2.mSavedFragmentState);
        d.j.d.x xVar = this.a;
        androidx.fragment.app.Fragment fragment3 = this.f2073c;
        xVar.c(fragment3, fragment3.mSavedFragmentState, false);
    }

    public void f() {
        java.lang.String resourceName;
        if (this.f2073c.mFromLayout) {
            return;
        }
        if (d.j.d.y.M(3)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("moveto CREATE_VIEW: ");
            sbO.append(this.f2073c);
            android.util.Log.d("FragmentManager", sbO.toString());
        }
        androidx.fragment.app.Fragment fragment = this.f2073c;
        android.view.LayoutInflater layoutInflaterPerformGetLayoutInflater = fragment.performGetLayoutInflater(fragment.mSavedFragmentState);
        android.view.ViewGroup viewGroup = null;
        androidx.fragment.app.Fragment fragment2 = this.f2073c;
        android.view.ViewGroup viewGroup2 = fragment2.mContainer;
        if (viewGroup2 != null) {
            viewGroup = viewGroup2;
        } else {
            int i = fragment2.mContainerId;
            if (i != 0) {
                if (i == -1) {
                    java.lang.StringBuilder sbO2 = e.a.c.a.a.o("Cannot create fragment ");
                    sbO2.append(this.f2073c);
                    sbO2.append(" for a container view with no id");
                    throw new java.lang.IllegalArgumentException(sbO2.toString());
                }
                viewGroup = (android.view.ViewGroup) fragment2.mFragmentManager.r.b(i);
                if (viewGroup == null) {
                    androidx.fragment.app.Fragment fragment3 = this.f2073c;
                    if (!fragment3.mRestored) {
                        try {
                            resourceName = fragment3.getResources().getResourceName(this.f2073c.mContainerId);
                        } catch (android.content.res.Resources.NotFoundException unused) {
                            resourceName = "unknown";
                        }
                        java.lang.StringBuilder sbO3 = e.a.c.a.a.o("No view found for id 0x");
                        sbO3.append(java.lang.Integer.toHexString(this.f2073c.mContainerId));
                        sbO3.append(" (");
                        sbO3.append(resourceName);
                        sbO3.append(") for fragment ");
                        sbO3.append(this.f2073c);
                        throw new java.lang.IllegalArgumentException(sbO3.toString());
                    }
                }
            }
        }
        androidx.fragment.app.Fragment fragment4 = this.f2073c;
        fragment4.mContainer = viewGroup;
        fragment4.performCreateView(layoutInflaterPerformGetLayoutInflater, viewGroup, fragment4.mSavedFragmentState);
        android.view.View view = this.f2073c.mView;
        if (view != null) {
            view.setSaveFromParentEnabled(false);
            androidx.fragment.app.Fragment fragment5 = this.f2073c;
            fragment5.mView.setTag(d.j.b.fragment_container_view_tag, fragment5);
            if (viewGroup != null) {
                b();
            }
            androidx.fragment.app.Fragment fragment6 = this.f2073c;
            if (fragment6.mHidden) {
                fragment6.mView.setVisibility(8);
            }
            if (d.g.m.s.z(this.f2073c.mView)) {
                d.g.m.s.K(this.f2073c.mView);
            } else {
                android.view.View view2 = this.f2073c.mView;
                view2.addOnAttachStateChangeListener(new d.j.d.e0.a(this, view2));
            }
            this.f2073c.performViewCreated();
            d.j.d.x xVar = this.a;
            androidx.fragment.app.Fragment fragment7 = this.f2073c;
            xVar.m(fragment7, fragment7.mView, fragment7.mSavedFragmentState, false);
            int visibility = this.f2073c.mView.getVisibility();
            this.f2073c.setPostOnViewCreatedAlpha(this.f2073c.mView.getAlpha());
            androidx.fragment.app.Fragment fragment8 = this.f2073c;
            if (fragment8.mContainer != null && visibility == 0) {
                android.view.View viewFindFocus = fragment8.mView.findFocus();
                if (viewFindFocus != null) {
                    this.f2073c.setFocusedView(viewFindFocus);
                    if (d.j.d.y.M(2)) {
                        android.util.Log.v("FragmentManager", "requestFocus: Saved focused view " + viewFindFocus + " for Fragment " + this.f2073c);
                    }
                }
                this.f2073c.mView.setAlpha(0.0f);
            }
        }
        this.f2073c.mState = 2;
    }

    public void g() {
        androidx.fragment.app.Fragment fragmentD;
        if (d.j.d.y.M(3)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("movefrom CREATED: ");
            sbO.append(this.f2073c);
            android.util.Log.d("FragmentManager", sbO.toString());
        }
        androidx.fragment.app.Fragment fragment = this.f2073c;
        boolean zIsChangingConfigurations = true;
        boolean z = fragment.mRemoving && !fragment.isInBackStack();
        if (!(z || this.b.f2077c.e(this.f2073c))) {
            java.lang.String str = this.f2073c.mTargetWho;
            if (str != null && (fragmentD = this.b.d(str)) != null && fragmentD.mRetainInstance) {
                this.f2073c.mTarget = fragmentD;
            }
            this.f2073c.mState = 0;
            return;
        }
        d.j.d.v<?> vVar = this.f2073c.mHost;
        if (vVar instanceof d.l.z) {
            zIsChangingConfigurations = this.b.f2077c.f2058g;
        } else {
            android.content.Context context = vVar.b;
            if (context instanceof android.app.Activity) {
                zIsChangingConfigurations = true ^ ((android.app.Activity) context).isChangingConfigurations();
            }
        }
        if (z || zIsChangingConfigurations) {
            d.j.d.b0 b0Var = this.b.f2077c;
            androidx.fragment.app.Fragment fragment2 = this.f2073c;
            if (b0Var == null) {
                throw null;
            }
            if (d.j.d.y.M(3)) {
                android.util.Log.d("FragmentManager", "Clearing non-config state for " + fragment2);
            }
            d.j.d.b0 b0Var2 = b0Var.f2055d.get(fragment2.mWho);
            if (b0Var2 != null) {
                b0Var2.a();
                b0Var.f2055d.remove(fragment2.mWho);
            }
            d.l.y yVar = b0Var.f2056e.get(fragment2.mWho);
            if (yVar != null) {
                yVar.a();
                b0Var.f2056e.remove(fragment2.mWho);
            }
        }
        this.f2073c.performDestroy();
        this.a.d(this.f2073c, false);
        java.util.Iterator it = ((java.util.ArrayList) this.b.f()).iterator();
        while (it.hasNext()) {
            d.j.d.e0 e0Var = (d.j.d.e0) it.next();
            if (e0Var != null) {
                androidx.fragment.app.Fragment fragment3 = e0Var.f2073c;
                if (this.f2073c.mWho.equals(fragment3.mTargetWho)) {
                    fragment3.mTarget = this.f2073c;
                    fragment3.mTargetWho = null;
                }
            }
        }
        androidx.fragment.app.Fragment fragment4 = this.f2073c;
        java.lang.String str2 = fragment4.mTargetWho;
        if (str2 != null) {
            fragment4.mTarget = this.b.d(str2);
        }
        this.b.k(this);
    }

    public void h() {
        android.view.View view;
        if (d.j.d.y.M(3)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("movefrom CREATE_VIEW: ");
            sbO.append(this.f2073c);
            android.util.Log.d("FragmentManager", sbO.toString());
        }
        androidx.fragment.app.Fragment fragment = this.f2073c;
        android.view.ViewGroup viewGroup = fragment.mContainer;
        if (viewGroup != null && (view = fragment.mView) != null) {
            viewGroup.removeView(view);
        }
        this.f2073c.performDestroyView();
        this.a.n(this.f2073c, false);
        androidx.fragment.app.Fragment fragment2 = this.f2073c;
        fragment2.mContainer = null;
        fragment2.mView = null;
        fragment2.mViewLifecycleOwner = null;
        fragment2.mViewLifecycleOwnerLiveData.g(null);
        this.f2073c.mInLayout = false;
    }

    public void i() {
        if (d.j.d.y.M(3)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("movefrom ATTACHED: ");
            sbO.append(this.f2073c);
            android.util.Log.d("FragmentManager", sbO.toString());
        }
        this.f2073c.performDetach();
        boolean z = false;
        this.a.e(this.f2073c, false);
        androidx.fragment.app.Fragment fragment = this.f2073c;
        fragment.mState = -1;
        fragment.mHost = null;
        fragment.mParentFragment = null;
        fragment.mFragmentManager = null;
        if (fragment.mRemoving && !fragment.isInBackStack()) {
            z = true;
        }
        if (z || this.b.f2077c.e(this.f2073c)) {
            if (d.j.d.y.M(3)) {
                java.lang.StringBuilder sbO2 = e.a.c.a.a.o("initState called for fragment: ");
                sbO2.append(this.f2073c);
                android.util.Log.d("FragmentManager", sbO2.toString());
            }
            this.f2073c.initState();
        }
    }

    public void j() {
        androidx.fragment.app.Fragment fragment = this.f2073c;
        if (fragment.mFromLayout && fragment.mInLayout && !fragment.mPerformedCreateView) {
            if (d.j.d.y.M(3)) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("moveto CREATE_VIEW: ");
                sbO.append(this.f2073c);
                android.util.Log.d("FragmentManager", sbO.toString());
            }
            androidx.fragment.app.Fragment fragment2 = this.f2073c;
            fragment2.performCreateView(fragment2.performGetLayoutInflater(fragment2.mSavedFragmentState), null, this.f2073c.mSavedFragmentState);
            android.view.View view = this.f2073c.mView;
            if (view != null) {
                view.setSaveFromParentEnabled(false);
                androidx.fragment.app.Fragment fragment3 = this.f2073c;
                fragment3.mView.setTag(d.j.b.fragment_container_view_tag, fragment3);
                androidx.fragment.app.Fragment fragment4 = this.f2073c;
                if (fragment4.mHidden) {
                    fragment4.mView.setVisibility(8);
                }
                this.f2073c.performViewCreated();
                d.j.d.x xVar = this.a;
                androidx.fragment.app.Fragment fragment5 = this.f2073c;
                xVar.m(fragment5, fragment5.mView, fragment5.mSavedFragmentState, false);
                this.f2073c.mState = 2;
            }
        }
    }

    public void k() {
        d.j.d.u0.d.b bVar = d.j.d.u0.d.b.NONE;
        if (this.f2074d) {
            if (d.j.d.y.M(2)) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Ignoring re-entrant call to moveToExpectedState() for ");
                sbO.append(this.f2073c);
                android.util.Log.v("FragmentManager", sbO.toString());
                return;
            }
            return;
        }
        try {
            this.f2074d = true;
            while (true) {
                int iD = d();
                if (iD == this.f2073c.mState) {
                    if (this.f2073c.mHiddenChanged) {
                        if (this.f2073c.mView != null && this.f2073c.mContainer != null) {
                            d.j.d.u0 u0VarF = d.j.d.u0.f(this.f2073c.mContainer, this.f2073c.getParentFragmentManager());
                            if (this.f2073c.mHidden) {
                                if (u0VarF == null) {
                                    throw null;
                                }
                                if (d.j.d.y.M(2)) {
                                    android.util.Log.v("FragmentManager", "SpecialEffectsController: Enqueuing hide operation for fragment " + this.f2073c);
                                }
                                u0VarF.a(d.j.d.u0.d.c.GONE, bVar, this);
                            } else {
                                if (u0VarF == null) {
                                    throw null;
                                }
                                if (d.j.d.y.M(2)) {
                                    android.util.Log.v("FragmentManager", "SpecialEffectsController: Enqueuing show operation for fragment " + this.f2073c);
                                }
                                u0VarF.a(d.j.d.u0.d.c.VISIBLE, bVar, this);
                            }
                        }
                        if (this.f2073c.mFragmentManager != null) {
                            d.j.d.y yVar = this.f2073c.mFragmentManager;
                            androidx.fragment.app.Fragment fragment = this.f2073c;
                            if (yVar == null) {
                                throw null;
                            }
                            if (fragment.mAdded && yVar.N(fragment)) {
                                yVar.C = true;
                            }
                        }
                        this.f2073c.mHiddenChanged = false;
                        this.f2073c.onHiddenChanged(this.f2073c.mHidden);
                    }
                    return;
                }
                if (iD <= this.f2073c.mState) {
                    switch (this.f2073c.mState - 1) {
                        case -1:
                            i();
                            break;
                        case 0:
                            g();
                            break;
                        case 1:
                            h();
                            this.f2073c.mState = 1;
                            break;
                        case 2:
                            this.f2073c.mInLayout = false;
                            this.f2073c.mState = 2;
                            break;
                        case 3:
                            if (d.j.d.y.M(3)) {
                                android.util.Log.d("FragmentManager", "movefrom ACTIVITY_CREATED: " + this.f2073c);
                            }
                            if (this.f2073c.mView != null && this.f2073c.mSavedViewState == null) {
                                o();
                            }
                            if (this.f2073c.mView != null && this.f2073c.mContainer != null) {
                                d.j.d.u0 u0VarF2 = d.j.d.u0.f(this.f2073c.mContainer, this.f2073c.getParentFragmentManager());
                                if (u0VarF2 == null) {
                                    throw null;
                                }
                                if (d.j.d.y.M(2)) {
                                    android.util.Log.v("FragmentManager", "SpecialEffectsController: Enqueuing remove operation for fragment " + this.f2073c);
                                }
                                u0VarF2.a(d.j.d.u0.d.c.REMOVED, d.j.d.u0.d.b.REMOVING, this);
                            }
                            this.f2073c.mState = 3;
                            break;
                        case 4:
                            q();
                            break;
                        case 5:
                            this.f2073c.mState = 5;
                            break;
                        case 6:
                            l();
                            break;
                    }
                } else {
                    switch (this.f2073c.mState + 1) {
                        case 0:
                            c();
                            break;
                        case 1:
                            e();
                            break;
                        case 2:
                            j();
                            f();
                            break;
                        case 3:
                            a();
                            break;
                        case 4:
                            if (this.f2073c.mView != null && this.f2073c.mContainer != null) {
                                d.j.d.u0 u0VarF3 = d.j.d.u0.f(this.f2073c.mContainer, this.f2073c.getParentFragmentManager());
                                d.j.d.u0.d.c cVarB = d.j.d.u0.d.c.b(this.f2073c.mView.getVisibility());
                                if (u0VarF3 == null) {
                                    throw null;
                                }
                                if (d.j.d.y.M(2)) {
                                    android.util.Log.v("FragmentManager", "SpecialEffectsController: Enqueuing add operation for fragment " + this.f2073c);
                                }
                                u0VarF3.a(cVarB, d.j.d.u0.d.b.ADDING, this);
                            }
                            this.f2073c.mState = 4;
                            break;
                        case 5:
                            p();
                            break;
                        case 6:
                            this.f2073c.mState = 6;
                            break;
                        case 7:
                            n();
                            break;
                    }
                }
            }
        } finally {
            this.f2074d = false;
        }
    }

    public void l() {
        if (d.j.d.y.M(3)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("movefrom RESUMED: ");
            sbO.append(this.f2073c);
            android.util.Log.d("FragmentManager", sbO.toString());
        }
        this.f2073c.performPause();
        this.a.f(this.f2073c, false);
    }

    public void m(java.lang.ClassLoader classLoader) {
        android.os.Bundle bundle = this.f2073c.mSavedFragmentState;
        if (bundle == null) {
            return;
        }
        bundle.setClassLoader(classLoader);
        androidx.fragment.app.Fragment fragment = this.f2073c;
        fragment.mSavedViewState = fragment.mSavedFragmentState.getSparseParcelableArray("android:view_state");
        androidx.fragment.app.Fragment fragment2 = this.f2073c;
        fragment2.mSavedViewRegistryState = fragment2.mSavedFragmentState.getBundle("android:view_registry_state");
        androidx.fragment.app.Fragment fragment3 = this.f2073c;
        fragment3.mTargetWho = fragment3.mSavedFragmentState.getString("android:target_state");
        androidx.fragment.app.Fragment fragment4 = this.f2073c;
        if (fragment4.mTargetWho != null) {
            fragment4.mTargetRequestCode = fragment4.mSavedFragmentState.getInt("android:target_req_state", 0);
        }
        androidx.fragment.app.Fragment fragment5 = this.f2073c;
        java.lang.Boolean bool = fragment5.mSavedUserVisibleHint;
        if (bool != null) {
            fragment5.mUserVisibleHint = bool.booleanValue();
            this.f2073c.mSavedUserVisibleHint = null;
        } else {
            fragment5.mUserVisibleHint = fragment5.mSavedFragmentState.getBoolean("android:user_visible_hint", true);
        }
        androidx.fragment.app.Fragment fragment6 = this.f2073c;
        if (fragment6.mUserVisibleHint) {
            return;
        }
        fragment6.mDeferStart = true;
    }

    public void n() {
        if (d.j.d.y.M(3)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("moveto RESUMED: ");
            sbO.append(this.f2073c);
            android.util.Log.d("FragmentManager", sbO.toString());
        }
        android.view.View focusedView = this.f2073c.getFocusedView();
        if (focusedView != null) {
            boolean z = true;
            if (focusedView != this.f2073c.mView) {
                android.view.ViewParent parent = focusedView.getParent();
                while (true) {
                    if (parent == null) {
                        z = false;
                        break;
                    } else if (parent == this.f2073c.mView) {
                        break;
                    } else {
                        parent = parent.getParent();
                    }
                }
            }
            if (z) {
                boolean zRequestFocus = focusedView.requestFocus();
                if (d.j.d.y.M(2)) {
                    java.lang.StringBuilder sb = new java.lang.StringBuilder();
                    sb.append("requestFocus: Restoring focused view ");
                    sb.append(focusedView);
                    sb.append(" ");
                    sb.append(zRequestFocus ? "succeeded" : "failed");
                    sb.append(" on Fragment ");
                    sb.append(this.f2073c);
                    sb.append(" resulting in focused view ");
                    sb.append(this.f2073c.mView.findFocus());
                    android.util.Log.v("FragmentManager", sb.toString());
                }
            }
        }
        this.f2073c.setFocusedView(null);
        this.f2073c.performResume();
        this.a.i(this.f2073c, false);
        androidx.fragment.app.Fragment fragment = this.f2073c;
        fragment.mSavedFragmentState = null;
        fragment.mSavedViewState = null;
        fragment.mSavedViewRegistryState = null;
    }

    public void o() {
        if (this.f2073c.mView == null) {
            return;
        }
        android.util.SparseArray<android.os.Parcelable> sparseArray = new android.util.SparseArray<>();
        this.f2073c.mView.saveHierarchyState(sparseArray);
        if (sparseArray.size() > 0) {
            this.f2073c.mSavedViewState = sparseArray;
        }
        android.os.Bundle bundle = new android.os.Bundle();
        this.f2073c.mViewLifecycleOwner.b.b(bundle);
        if (bundle.isEmpty()) {
            return;
        }
        this.f2073c.mSavedViewRegistryState = bundle;
    }

    public void p() {
        if (d.j.d.y.M(3)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("moveto STARTED: ");
            sbO.append(this.f2073c);
            android.util.Log.d("FragmentManager", sbO.toString());
        }
        this.f2073c.performStart();
        this.a.k(this.f2073c, false);
    }

    public void q() {
        if (d.j.d.y.M(3)) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("movefrom STARTED: ");
            sbO.append(this.f2073c);
            android.util.Log.d("FragmentManager", sbO.toString());
        }
        this.f2073c.performStop();
        this.a.l(this.f2073c, false);
    }
}
