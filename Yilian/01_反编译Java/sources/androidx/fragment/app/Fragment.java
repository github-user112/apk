package androidx.fragment.app;

/* loaded from: classes.dex */
public class Fragment implements android.content.ComponentCallbacks, android.view.View.OnCreateContextMenuListener, d.l.h, d.l.z, d.r.d {
    public static final int ACTIVITY_CREATED = 4;
    public static final int ATTACHED = 0;
    public static final int AWAITING_ENTER_EFFECTS = 6;
    public static final int AWAITING_EXIT_EFFECTS = 3;
    public static final int CREATED = 1;
    public static final int INITIALIZING = -1;
    public static final int RESUMED = 7;
    public static final int STARTED = 5;
    public static final java.lang.Object USE_DEFAULT_TRANSITION = new java.lang.Object();
    public static final int VIEW_CREATED = 2;
    public boolean mAdded;
    public androidx.fragment.app.Fragment.i mAnimationInfo;
    public android.os.Bundle mArguments;
    public int mBackStackNesting;
    public boolean mCalled;
    public d.j.d.y mChildFragmentManager;
    public android.view.ViewGroup mContainer;
    public int mContainerId;
    public int mContentLayoutId;
    public d.l.u mDefaultFactory;
    public boolean mDeferStart;
    public boolean mDetached;
    public int mFragmentId;
    public d.j.d.y mFragmentManager;
    public boolean mFromLayout;
    public boolean mHasMenu;
    public boolean mHidden;
    public boolean mHiddenChanged;
    public d.j.d.v<?> mHost;
    public boolean mInLayout;
    public boolean mIsCreated;
    public boolean mIsNewlyAdded;
    public java.lang.Boolean mIsPrimaryNavigationFragment;
    public android.view.LayoutInflater mLayoutInflater;
    public d.l.i mLifecycleRegistry;
    public d.l.e.b mMaxState;
    public boolean mMenuVisible;
    public final java.util.concurrent.atomic.AtomicInteger mNextLocalRequestCode;
    public final java.util.ArrayList<androidx.fragment.app.Fragment.k> mOnPreAttachedListeners;
    public androidx.fragment.app.Fragment mParentFragment;
    public boolean mPerformedCreateView;
    public float mPostponedAlpha;
    public java.lang.Runnable mPostponedDurationRunnable;
    public boolean mRemoving;
    public boolean mRestored;
    public boolean mRetainInstance;
    public boolean mRetainInstanceChangedWhileDetached;
    public android.os.Bundle mSavedFragmentState;
    public d.r.c mSavedStateRegistryController;
    public java.lang.Boolean mSavedUserVisibleHint;
    public android.os.Bundle mSavedViewRegistryState;
    public android.util.SparseArray<android.os.Parcelable> mSavedViewState;
    public int mState;
    public java.lang.String mTag;
    public androidx.fragment.app.Fragment mTarget;
    public int mTargetRequestCode;
    public java.lang.String mTargetWho;
    public boolean mUserVisibleHint;
    public android.view.View mView;
    public d.j.d.s0 mViewLifecycleOwner;
    public d.l.m<d.l.h> mViewLifecycleOwnerLiveData;
    public java.lang.String mWho;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.fragment.app.Fragment.this.startPostponedEnterTransition();
        }
    }

    public class b implements java.lang.Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            androidx.fragment.app.Fragment.this.callStartTransitionListener(false);
        }
    }

    public class c implements java.lang.Runnable {
        public final /* synthetic */ d.j.d.u0 a;

        public c(androidx.fragment.app.Fragment fragment, d.j.d.u0 u0Var) {
            this.a = u0Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.a.c();
        }
    }

    public class d extends d.j.d.r {
        public d() {
        }

        @Override // d.j.d.r
        public android.view.View b(int i) {
            android.view.View view = androidx.fragment.app.Fragment.this.mView;
            if (view != null) {
                return view.findViewById(i);
            }
            java.lang.StringBuilder sbO = e.a.c.a.a.o("Fragment ");
            sbO.append(androidx.fragment.app.Fragment.this);
            sbO.append(" does not have a view");
            throw new java.lang.IllegalStateException(sbO.toString());
        }

        @Override // d.j.d.r
        public boolean c() {
            return androidx.fragment.app.Fragment.this.mView != null;
        }
    }

    public class e implements d.c.a.c.a<java.lang.Void, androidx.activity.result.ActivityResultRegistry> {
        public e() {
        }

        @Override // d.c.a.c.a
        public androidx.activity.result.ActivityResultRegistry apply(java.lang.Void r3) {
            androidx.fragment.app.Fragment fragment = androidx.fragment.app.Fragment.this;
            java.lang.Object obj = fragment.mHost;
            return obj instanceof d.a.e.d ? ((d.a.e.d) obj).getActivityResultRegistry() : fragment.requireActivity().getActivityResultRegistry();
        }
    }

    public class f implements d.c.a.c.a<java.lang.Void, androidx.activity.result.ActivityResultRegistry> {
        public final /* synthetic */ androidx.activity.result.ActivityResultRegistry a;

        public f(androidx.fragment.app.Fragment fragment, androidx.activity.result.ActivityResultRegistry activityResultRegistry) {
            this.a = activityResultRegistry;
        }

        @Override // d.c.a.c.a
        public androidx.activity.result.ActivityResultRegistry apply(java.lang.Void r1) {
            return this.a;
        }
    }

    public class g extends androidx.fragment.app.Fragment.k {
        public final /* synthetic */ d.c.a.c.a a;
        public final /* synthetic */ java.util.concurrent.atomic.AtomicReference b;

        /* renamed from: c, reason: collision with root package name */
        public final /* synthetic */ d.a.e.f.a f111c;

        /* renamed from: d, reason: collision with root package name */
        public final /* synthetic */ d.a.e.b f112d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(d.c.a.c.a aVar, java.util.concurrent.atomic.AtomicReference atomicReference, d.a.e.f.a aVar2, d.a.e.b bVar) {
            super(null);
            this.a = aVar;
            this.b = atomicReference;
            this.f111c = aVar2;
            this.f112d = bVar;
        }

        @Override // androidx.fragment.app.Fragment.k
        public void a() {
            java.lang.String strGenerateActivityResultKey = androidx.fragment.app.Fragment.this.generateActivityResultKey();
            this.b.set(((androidx.activity.result.ActivityResultRegistry) this.a.apply(null)).d(strGenerateActivityResultKey, androidx.fragment.app.Fragment.this, this.f111c, this.f112d));
        }
    }

    /* JADX INFO: Add missing generic type declarations: [I] */
    public class h<I> extends d.a.e.c<I> {
        public final /* synthetic */ java.util.concurrent.atomic.AtomicReference a;

        public h(androidx.fragment.app.Fragment fragment, java.util.concurrent.atomic.AtomicReference atomicReference, d.a.e.f.a aVar) {
            this.a = atomicReference;
        }

        @Override // d.a.e.c
        public void a(I i, d.g.e.b bVar) {
            d.a.e.c cVar = (d.a.e.c) this.a.get();
            if (cVar == null) {
                throw new java.lang.IllegalStateException("Operation cannot be started before fragment is in created state");
            }
            cVar.a(i, bVar);
        }

        @Override // d.a.e.c
        public void b() {
            d.a.e.c cVar = (d.a.e.c) this.a.getAndSet(null);
            if (cVar != null) {
                cVar.b();
            }
        }
    }

    public static class i {
        public android.view.View a;
        public android.animation.Animator b;

        /* renamed from: c, reason: collision with root package name */
        public int f114c;

        /* renamed from: d, reason: collision with root package name */
        public int f115d;

        /* renamed from: e, reason: collision with root package name */
        public java.util.ArrayList<java.lang.String> f116e;

        /* renamed from: f, reason: collision with root package name */
        public java.util.ArrayList<java.lang.String> f117f;

        /* renamed from: g, reason: collision with root package name */
        public java.lang.Object f118g = null;
        public java.lang.Object h;
        public java.lang.Object i;
        public java.lang.Object j;
        public java.lang.Object k;
        public java.lang.Object l;
        public java.lang.Boolean m;
        public java.lang.Boolean n;
        public d.g.e.n o;
        public d.g.e.n p;
        public float q;
        public android.view.View r;
        public boolean s;
        public androidx.fragment.app.Fragment.l t;
        public boolean u;

        public i() {
            java.lang.Object obj = androidx.fragment.app.Fragment.USE_DEFAULT_TRANSITION;
            this.h = obj;
            this.i = null;
            this.j = obj;
            this.k = null;
            this.l = obj;
            this.o = null;
            this.p = null;
            this.q = 1.0f;
            this.r = null;
        }
    }

    public static class j extends java.lang.RuntimeException {
        public j(java.lang.String str, java.lang.Exception exc) {
            super(str, exc);
        }
    }

    public static abstract class k {
        public k() {
        }

        public k(androidx.fragment.app.Fragment.a aVar) {
        }

        public abstract void a();
    }

    public interface l {
    }

    @android.annotation.SuppressLint({"BanParcelableUsage, ParcelClassLoader"})
    public static class m implements android.os.Parcelable {
        public static final android.os.Parcelable.Creator<androidx.fragment.app.Fragment.m> CREATOR = new androidx.fragment.app.Fragment.m.a();
        public final android.os.Bundle a;

        public class a implements android.os.Parcelable.ClassLoaderCreator<androidx.fragment.app.Fragment.m> {
            @Override // android.os.Parcelable.Creator
            public java.lang.Object createFromParcel(android.os.Parcel parcel) {
                return new androidx.fragment.app.Fragment.m(parcel, null);
            }

            @Override // android.os.Parcelable.Creator
            public java.lang.Object[] newArray(int i) {
                return new androidx.fragment.app.Fragment.m[i];
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            public androidx.fragment.app.Fragment.m createFromParcel(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
                return new androidx.fragment.app.Fragment.m(parcel, classLoader);
            }
        }

        public m(android.os.Parcel parcel, java.lang.ClassLoader classLoader) {
            android.os.Bundle bundle = parcel.readBundle();
            this.a = bundle;
            if (classLoader == null || bundle == null) {
                return;
            }
            bundle.setClassLoader(classLoader);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(android.os.Parcel parcel, int i) {
            parcel.writeBundle(this.a);
        }
    }

    public Fragment() {
        this.mState = -1;
        this.mWho = java.util.UUID.randomUUID().toString();
        this.mTargetWho = null;
        this.mIsPrimaryNavigationFragment = null;
        this.mChildFragmentManager = new d.j.d.z();
        this.mMenuVisible = true;
        this.mUserVisibleHint = true;
        this.mPostponedDurationRunnable = new androidx.fragment.app.Fragment.a();
        this.mMaxState = d.l.e.b.RESUMED;
        this.mViewLifecycleOwnerLiveData = new d.l.m<>();
        this.mNextLocalRequestCode = new java.util.concurrent.atomic.AtomicInteger();
        this.mOnPreAttachedListeners = new java.util.ArrayList<>();
        initLifecycle();
    }

    public Fragment(int i2) {
        this();
        this.mContentLayoutId = i2;
    }

    private androidx.fragment.app.Fragment.i ensureAnimationInfo() {
        if (this.mAnimationInfo == null) {
            this.mAnimationInfo = new androidx.fragment.app.Fragment.i();
        }
        return this.mAnimationInfo;
    }

    private int getMinimumMaxLifecycleState() {
        d.l.e.b bVar = this.mMaxState;
        return (bVar == d.l.e.b.INITIALIZED || this.mParentFragment == null) ? this.mMaxState.ordinal() : java.lang.Math.min(bVar.ordinal(), this.mParentFragment.getMinimumMaxLifecycleState());
    }

    private void initLifecycle() {
        this.mLifecycleRegistry = new d.l.i(this);
        this.mSavedStateRegistryController = new d.r.c(this);
        this.mDefaultFactory = null;
    }

    @java.lang.Deprecated
    public static androidx.fragment.app.Fragment instantiate(android.content.Context context, java.lang.String str) {
        return instantiate(context, str, null);
    }

    @java.lang.Deprecated
    public static androidx.fragment.app.Fragment instantiate(android.content.Context context, java.lang.String str, android.os.Bundle bundle) throws java.lang.IllegalAccessException, java.lang.InstantiationException, java.lang.IllegalArgumentException, java.lang.reflect.InvocationTargetException {
        try {
            androidx.fragment.app.Fragment fragmentNewInstance = d.j.d.u.d(context.getClassLoader(), str).getConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]);
            if (bundle != null) {
                bundle.setClassLoader(fragmentNewInstance.getClass().getClassLoader());
                fragmentNewInstance.setArguments(bundle);
            }
            return fragmentNewInstance;
        } catch (java.lang.IllegalAccessException e2) {
            throw new androidx.fragment.app.Fragment.j(e.a.c.a.a.f("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e2);
        } catch (java.lang.InstantiationException e3) {
            throw new androidx.fragment.app.Fragment.j(e.a.c.a.a.f("Unable to instantiate fragment ", str, ": make sure class name exists, is public, and has an empty constructor that is public"), e3);
        } catch (java.lang.NoSuchMethodException e4) {
            throw new androidx.fragment.app.Fragment.j(e.a.c.a.a.f("Unable to instantiate fragment ", str, ": could not find Fragment constructor"), e4);
        } catch (java.lang.reflect.InvocationTargetException e5) {
            throw new androidx.fragment.app.Fragment.j(e.a.c.a.a.f("Unable to instantiate fragment ", str, ": calling Fragment constructor caused an exception"), e5);
        }
    }

    private <I, O> d.a.e.c<I> prepareCallInternal(d.a.e.f.a<I, O> aVar, d.c.a.c.a<java.lang.Void, androidx.activity.result.ActivityResultRegistry> aVar2, d.a.e.b<O> bVar) {
        if (this.mState > 1) {
            throw new java.lang.IllegalStateException(e.a.c.a.a.c("Fragment ", this, " is attempting to registerForActivityResult after being created. Fragments must call registerForActivityResult() before they are created (i.e. initialization, onAttach(), or onCreate())."));
        }
        java.util.concurrent.atomic.AtomicReference atomicReference = new java.util.concurrent.atomic.AtomicReference();
        registerOnPreAttachListener(new androidx.fragment.app.Fragment.g(aVar2, atomicReference, aVar, bVar));
        return new androidx.fragment.app.Fragment.h(this, atomicReference, aVar);
    }

    private void registerOnPreAttachListener(androidx.fragment.app.Fragment.k kVar) {
        if (this.mState >= 0) {
            kVar.a();
        } else {
            this.mOnPreAttachedListeners.add(kVar);
        }
    }

    private void restoreViewState() {
        if (d.j.d.y.M(3)) {
            android.util.Log.d("FragmentManager", "moveto RESTORE_VIEW_STATE: " + this);
        }
        if (this.mView != null) {
            restoreViewState(this.mSavedFragmentState);
        }
        this.mSavedFragmentState = null;
    }

    public void callStartTransitionListener(boolean z) {
        android.view.ViewGroup viewGroup;
        d.j.d.y yVar;
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        java.lang.Object obj = null;
        if (iVar != null) {
            iVar.s = false;
            java.lang.Object obj2 = iVar.t;
            iVar.t = null;
            obj = obj2;
        }
        if (obj != null) {
            d.j.d.y.m mVar = (d.j.d.y.m) obj;
            int i2 = mVar.f2153c - 1;
            mVar.f2153c = i2;
            if (i2 != 0) {
                return;
            }
            mVar.b.q.a0();
            return;
        }
        if (this.mView == null || (viewGroup = this.mContainer) == null || (yVar = this.mFragmentManager) == null) {
            return;
        }
        d.j.d.u0 u0VarF = d.j.d.u0.f(viewGroup, yVar);
        u0VarF.h();
        if (z) {
            this.mHost.f2145c.post(new androidx.fragment.app.Fragment.c(this, u0VarF));
        } else {
            u0VarF.c();
        }
    }

    public d.j.d.r createFragmentContainer() {
        return new androidx.fragment.app.Fragment.d();
    }

    public void dump(java.lang.String str, java.io.FileDescriptor fileDescriptor, java.io.PrintWriter printWriter, java.lang.String[] strArr) {
        printWriter.print(str);
        printWriter.print("mFragmentId=#");
        printWriter.print(java.lang.Integer.toHexString(this.mFragmentId));
        printWriter.print(" mContainerId=#");
        printWriter.print(java.lang.Integer.toHexString(this.mContainerId));
        printWriter.print(" mTag=");
        printWriter.println(this.mTag);
        printWriter.print(str);
        printWriter.print("mState=");
        printWriter.print(this.mState);
        printWriter.print(" mWho=");
        printWriter.print(this.mWho);
        printWriter.print(" mBackStackNesting=");
        printWriter.println(this.mBackStackNesting);
        printWriter.print(str);
        printWriter.print("mAdded=");
        printWriter.print(this.mAdded);
        printWriter.print(" mRemoving=");
        printWriter.print(this.mRemoving);
        printWriter.print(" mFromLayout=");
        printWriter.print(this.mFromLayout);
        printWriter.print(" mInLayout=");
        printWriter.println(this.mInLayout);
        printWriter.print(str);
        printWriter.print("mHidden=");
        printWriter.print(this.mHidden);
        printWriter.print(" mDetached=");
        printWriter.print(this.mDetached);
        printWriter.print(" mMenuVisible=");
        printWriter.print(this.mMenuVisible);
        printWriter.print(" mHasMenu=");
        printWriter.println(this.mHasMenu);
        printWriter.print(str);
        printWriter.print("mRetainInstance=");
        printWriter.print(this.mRetainInstance);
        printWriter.print(" mUserVisibleHint=");
        printWriter.println(this.mUserVisibleHint);
        if (this.mFragmentManager != null) {
            printWriter.print(str);
            printWriter.print("mFragmentManager=");
            printWriter.println(this.mFragmentManager);
        }
        if (this.mHost != null) {
            printWriter.print(str);
            printWriter.print("mHost=");
            printWriter.println(this.mHost);
        }
        if (this.mParentFragment != null) {
            printWriter.print(str);
            printWriter.print("mParentFragment=");
            printWriter.println(this.mParentFragment);
        }
        if (this.mArguments != null) {
            printWriter.print(str);
            printWriter.print("mArguments=");
            printWriter.println(this.mArguments);
        }
        if (this.mSavedFragmentState != null) {
            printWriter.print(str);
            printWriter.print("mSavedFragmentState=");
            printWriter.println(this.mSavedFragmentState);
        }
        if (this.mSavedViewState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewState=");
            printWriter.println(this.mSavedViewState);
        }
        if (this.mSavedViewRegistryState != null) {
            printWriter.print(str);
            printWriter.print("mSavedViewRegistryState=");
            printWriter.println(this.mSavedViewRegistryState);
        }
        androidx.fragment.app.Fragment targetFragment = getTargetFragment();
        if (targetFragment != null) {
            printWriter.print(str);
            printWriter.print("mTarget=");
            printWriter.print(targetFragment);
            printWriter.print(" mTargetRequestCode=");
            printWriter.println(this.mTargetRequestCode);
        }
        if (getNextAnim() != 0) {
            printWriter.print(str);
            printWriter.print("mNextAnim=");
            printWriter.println(getNextAnim());
        }
        if (this.mContainer != null) {
            printWriter.print(str);
            printWriter.print("mContainer=");
            printWriter.println(this.mContainer);
        }
        if (this.mView != null) {
            printWriter.print(str);
            printWriter.print("mView=");
            printWriter.println(this.mView);
        }
        if (getAnimatingAway() != null) {
            printWriter.print(str);
            printWriter.print("mAnimatingAway=");
            printWriter.println(getAnimatingAway());
        }
        if (getContext() != null) {
            d.m.a.a.b(this).a(str, fileDescriptor, printWriter, strArr);
        }
        printWriter.print(str);
        printWriter.println("Child " + this.mChildFragmentManager + ":");
        this.mChildFragmentManager.y(e.a.c.a.a.e(str, "  "), fileDescriptor, printWriter, strArr);
    }

    public final boolean equals(java.lang.Object obj) {
        return super.equals(obj);
    }

    public androidx.fragment.app.Fragment findFragmentByWho(java.lang.String str) {
        return str.equals(this.mWho) ? this : this.mChildFragmentManager.f2147c.e(str);
    }

    public java.lang.String generateActivityResultKey() {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("fragment_");
        sbO.append(this.mWho);
        sbO.append("_rq#");
        sbO.append(this.mNextLocalRequestCode.getAndIncrement());
        return sbO.toString();
    }

    public final d.j.d.l getActivity() {
        d.j.d.v<?> vVar = this.mHost;
        if (vVar == null) {
            return null;
        }
        return (d.j.d.l) vVar.a;
    }

    public boolean getAllowEnterTransitionOverlap() {
        java.lang.Boolean bool;
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null || (bool = iVar.n) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public boolean getAllowReturnTransitionOverlap() {
        java.lang.Boolean bool;
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null || (bool = iVar.m) == null) {
            return true;
        }
        return bool.booleanValue();
    }

    public android.view.View getAnimatingAway() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return null;
        }
        return iVar.a;
    }

    public android.animation.Animator getAnimator() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return null;
        }
        return iVar.b;
    }

    public final android.os.Bundle getArguments() {
        return this.mArguments;
    }

    public final d.j.d.y getChildFragmentManager() {
        if (this.mHost != null) {
            return this.mChildFragmentManager;
        }
        throw new java.lang.IllegalStateException(e.a.c.a.a.c("Fragment ", this, " has not been attached yet."));
    }

    public android.content.Context getContext() {
        d.j.d.v<?> vVar = this.mHost;
        if (vVar == null) {
            return null;
        }
        return vVar.b;
    }

    public d.l.u getDefaultViewModelProviderFactory() {
        if (this.mFragmentManager == null) {
            throw new java.lang.IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (this.mDefaultFactory == null) {
            android.app.Application application = null;
            android.content.Context applicationContext = requireContext().getApplicationContext();
            while (true) {
                if (!(applicationContext instanceof android.content.ContextWrapper)) {
                    break;
                }
                if (applicationContext instanceof android.app.Application) {
                    application = (android.app.Application) applicationContext;
                    break;
                }
                applicationContext = ((android.content.ContextWrapper) applicationContext).getBaseContext();
            }
            if (application == null && d.j.d.y.M(3)) {
                java.lang.StringBuilder sbO = e.a.c.a.a.o("Could not find Application instance from Context ");
                sbO.append(requireContext().getApplicationContext());
                sbO.append(", you will not be able to use AndroidViewModel with the default ViewModelProvider.Factory");
                android.util.Log.d("FragmentManager", sbO.toString());
            }
            this.mDefaultFactory = new d.l.r(application, this, getArguments());
        }
        return this.mDefaultFactory;
    }

    public java.lang.Object getEnterTransition() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return null;
        }
        return iVar.f118g;
    }

    public d.g.e.n getEnterTransitionCallback() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        return null;
    }

    public java.lang.Object getExitTransition() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return null;
        }
        return iVar.i;
    }

    public d.g.e.n getExitTransitionCallback() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        return null;
    }

    public android.view.View getFocusedView() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return null;
        }
        return iVar.r;
    }

    @java.lang.Deprecated
    public final d.j.d.y getFragmentManager() {
        return this.mFragmentManager;
    }

    public final java.lang.Object getHost() {
        d.j.d.v<?> vVar = this.mHost;
        if (vVar == null) {
            return null;
        }
        return d.j.d.l.this;
    }

    public final int getId() {
        return this.mFragmentId;
    }

    public final android.view.LayoutInflater getLayoutInflater() {
        android.view.LayoutInflater layoutInflater = this.mLayoutInflater;
        return layoutInflater == null ? performGetLayoutInflater(null) : layoutInflater;
    }

    @java.lang.Deprecated
    public android.view.LayoutInflater getLayoutInflater(android.os.Bundle bundle) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        d.j.d.v<?> vVar = this.mHost;
        if (vVar == null) {
            throw new java.lang.IllegalStateException("onGetLayoutInflater() cannot be executed until the Fragment is attached to the FragmentManager.");
        }
        d.j.d.l.c cVar = (d.j.d.l.c) vVar;
        android.view.LayoutInflater layoutInflaterCloneInContext = d.j.d.l.this.getLayoutInflater().cloneInContext(d.j.d.l.this);
        d.b.k.r.j0(layoutInflaterCloneInContext, this.mChildFragmentManager.f2150f);
        return layoutInflaterCloneInContext;
    }

    @Override // d.l.h
    public d.l.e getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @java.lang.Deprecated
    public d.m.a.a getLoaderManager() {
        return d.m.a.a.b(this);
    }

    public int getNextAnim() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return 0;
        }
        return iVar.f114c;
    }

    public int getNextTransition() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return 0;
        }
        return iVar.f115d;
    }

    public final androidx.fragment.app.Fragment getParentFragment() {
        return this.mParentFragment;
    }

    public final d.j.d.y getParentFragmentManager() {
        d.j.d.y yVar = this.mFragmentManager;
        if (yVar != null) {
            return yVar;
        }
        throw new java.lang.IllegalStateException(e.a.c.a.a.c("Fragment ", this, " not associated with a fragment manager."));
    }

    public float getPostOnViewCreatedAlpha() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return 1.0f;
        }
        return iVar.q;
    }

    public java.lang.Object getReenterTransition() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return null;
        }
        java.lang.Object obj = iVar.j;
        return obj == USE_DEFAULT_TRANSITION ? getExitTransition() : obj;
    }

    public final android.content.res.Resources getResources() {
        return requireContext().getResources();
    }

    @java.lang.Deprecated
    public final boolean getRetainInstance() {
        return this.mRetainInstance;
    }

    public java.lang.Object getReturnTransition() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return null;
        }
        java.lang.Object obj = iVar.h;
        return obj == USE_DEFAULT_TRANSITION ? getEnterTransition() : obj;
    }

    @Override // d.r.d
    public final d.r.b getSavedStateRegistry() {
        return this.mSavedStateRegistryController.b;
    }

    public java.lang.Object getSharedElementEnterTransition() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return null;
        }
        return iVar.k;
    }

    public java.lang.Object getSharedElementReturnTransition() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return null;
        }
        java.lang.Object obj = iVar.l;
        return obj == USE_DEFAULT_TRANSITION ? getSharedElementEnterTransition() : obj;
    }

    public java.util.ArrayList<java.lang.String> getSharedElementSourceNames() {
        java.util.ArrayList<java.lang.String> arrayList;
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        return (iVar == null || (arrayList = iVar.f116e) == null) ? new java.util.ArrayList<>() : arrayList;
    }

    public java.util.ArrayList<java.lang.String> getSharedElementTargetNames() {
        java.util.ArrayList<java.lang.String> arrayList;
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        return (iVar == null || (arrayList = iVar.f117f) == null) ? new java.util.ArrayList<>() : arrayList;
    }

    public final java.lang.String getString(int i2) {
        return getResources().getString(i2);
    }

    public final java.lang.String getString(int i2, java.lang.Object... objArr) {
        return getResources().getString(i2, objArr);
    }

    public final java.lang.String getTag() {
        return this.mTag;
    }

    @java.lang.Deprecated
    public final androidx.fragment.app.Fragment getTargetFragment() {
        java.lang.String str;
        androidx.fragment.app.Fragment fragment = this.mTarget;
        if (fragment != null) {
            return fragment;
        }
        d.j.d.y yVar = this.mFragmentManager;
        if (yVar == null || (str = this.mTargetWho) == null) {
            return null;
        }
        return yVar.E(str);
    }

    @java.lang.Deprecated
    public final int getTargetRequestCode() {
        return this.mTargetRequestCode;
    }

    public final java.lang.CharSequence getText(int i2) {
        return getResources().getText(i2);
    }

    @java.lang.Deprecated
    public boolean getUserVisibleHint() {
        return this.mUserVisibleHint;
    }

    public android.view.View getView() {
        return this.mView;
    }

    public d.l.h getViewLifecycleOwner() {
        d.j.d.s0 s0Var = this.mViewLifecycleOwner;
        if (s0Var != null) {
            return s0Var;
        }
        throw new java.lang.IllegalStateException("Can't access the Fragment View's LifecycleOwner when getView() is null i.e., before onCreateView() or after onDestroyView()");
    }

    public androidx.lifecycle.LiveData<d.l.h> getViewLifecycleOwnerLiveData() {
        return this.mViewLifecycleOwnerLiveData;
    }

    @Override // d.l.z
    public d.l.y getViewModelStore() {
        if (this.mFragmentManager == null) {
            throw new java.lang.IllegalStateException("Can't access ViewModels from detached fragment");
        }
        if (getMinimumMaxLifecycleState() == 1) {
            throw new java.lang.IllegalStateException("Calling getViewModelStore() before a Fragment reaches onCreate() when using setMaxLifecycle(INITIALIZED) is not supported");
        }
        d.j.d.b0 b0Var = this.mFragmentManager.L;
        d.l.y yVar = b0Var.f2056e.get(this.mWho);
        if (yVar != null) {
            return yVar;
        }
        d.l.y yVar2 = new d.l.y();
        b0Var.f2056e.put(this.mWho, yVar2);
        return yVar2;
    }

    @android.annotation.SuppressLint({"KotlinPropertyAccess"})
    public final boolean hasOptionsMenu() {
        return this.mHasMenu;
    }

    public final int hashCode() {
        return super.hashCode();
    }

    public void initState() {
        initLifecycle();
        this.mWho = java.util.UUID.randomUUID().toString();
        this.mAdded = false;
        this.mRemoving = false;
        this.mFromLayout = false;
        this.mInLayout = false;
        this.mRestored = false;
        this.mBackStackNesting = 0;
        this.mFragmentManager = null;
        this.mChildFragmentManager = new d.j.d.z();
        this.mHost = null;
        this.mFragmentId = 0;
        this.mContainerId = 0;
        this.mTag = null;
        this.mHidden = false;
        this.mDetached = false;
    }

    public final boolean isAdded() {
        return this.mHost != null && this.mAdded;
    }

    public final boolean isDetached() {
        return this.mDetached;
    }

    public final boolean isHidden() {
        return this.mHidden;
    }

    public boolean isHideReplaced() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return false;
        }
        return iVar.u;
    }

    public final boolean isInBackStack() {
        return this.mBackStackNesting > 0;
    }

    public final boolean isInLayout() {
        return this.mInLayout;
    }

    public final boolean isMenuVisible() {
        d.j.d.y yVar;
        return this.mMenuVisible && ((yVar = this.mFragmentManager) == null || yVar.O(this.mParentFragment));
    }

    public boolean isPostponed() {
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar == null) {
            return false;
        }
        return iVar.s;
    }

    public final boolean isRemoving() {
        return this.mRemoving;
    }

    public final boolean isRemovingParent() {
        androidx.fragment.app.Fragment parentFragment = getParentFragment();
        return parentFragment != null && (parentFragment.isRemoving() || parentFragment.isRemovingParent());
    }

    public final boolean isResumed() {
        return this.mState >= 7;
    }

    public final boolean isStateSaved() {
        d.j.d.y yVar = this.mFragmentManager;
        if (yVar == null) {
            return false;
        }
        return yVar.Q();
    }

    public final boolean isVisible() {
        android.view.View view;
        return (!isAdded() || isHidden() || (view = this.mView) == null || view.getWindowToken() == null || this.mView.getVisibility() != 0) ? false : true;
    }

    public void noteStateNotSaved() {
        this.mChildFragmentManager.T();
    }

    @java.lang.Deprecated
    public void onActivityCreated(android.os.Bundle bundle) {
        this.mCalled = true;
    }

    @java.lang.Deprecated
    public void onActivityResult(int i2, int i3, android.content.Intent intent) {
        if (d.j.d.y.M(2)) {
            android.util.Log.v("FragmentManager", "Fragment " + this + " received the following in onActivityResult(): requestCode: " + i2 + " resultCode: " + i3 + " data: " + intent);
        }
    }

    @java.lang.Deprecated
    public void onAttach(android.app.Activity activity) {
        this.mCalled = true;
    }

    public void onAttach(android.content.Context context) {
        this.mCalled = true;
        d.j.d.v<?> vVar = this.mHost;
        android.app.Activity activity = vVar == null ? null : vVar.a;
        if (activity != null) {
            this.mCalled = false;
            onAttach(activity);
        }
    }

    @java.lang.Deprecated
    public void onAttachFragment(androidx.fragment.app.Fragment fragment) {
    }

    @Override // android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        this.mCalled = true;
    }

    public boolean onContextItemSelected(android.view.MenuItem menuItem) {
        return false;
    }

    public void onCreate(android.os.Bundle bundle) {
        this.mCalled = true;
        restoreChildFragmentState(bundle);
        if (this.mChildFragmentManager.p >= 1) {
            return;
        }
        this.mChildFragmentManager.m();
    }

    public android.view.animation.Animation onCreateAnimation(int i2, boolean z, int i3) {
        return null;
    }

    public android.animation.Animator onCreateAnimator(int i2, boolean z, int i3) {
        return null;
    }

    @Override // android.view.View.OnCreateContextMenuListener
    public void onCreateContextMenu(android.view.ContextMenu contextMenu, android.view.View view, android.view.ContextMenu.ContextMenuInfo contextMenuInfo) {
        requireActivity().onCreateContextMenu(contextMenu, view, contextMenuInfo);
    }

    public void onCreateOptionsMenu(android.view.Menu menu, android.view.MenuInflater menuInflater) {
    }

    public android.view.View onCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) {
        int i2 = this.mContentLayoutId;
        if (i2 != 0) {
            return layoutInflater.inflate(i2, viewGroup, false);
        }
        return null;
    }

    public void onDestroy() {
        this.mCalled = true;
    }

    public void onDestroyOptionsMenu() {
    }

    public void onDestroyView() {
        this.mCalled = true;
    }

    public void onDetach() {
        this.mCalled = true;
    }

    public android.view.LayoutInflater onGetLayoutInflater(android.os.Bundle bundle) {
        return getLayoutInflater(bundle);
    }

    public void onHiddenChanged(boolean z) {
    }

    @java.lang.Deprecated
    public void onInflate(android.app.Activity activity, android.util.AttributeSet attributeSet, android.os.Bundle bundle) {
        this.mCalled = true;
    }

    public void onInflate(android.content.Context context, android.util.AttributeSet attributeSet, android.os.Bundle bundle) {
        this.mCalled = true;
        d.j.d.v<?> vVar = this.mHost;
        android.app.Activity activity = vVar == null ? null : vVar.a;
        if (activity != null) {
            this.mCalled = false;
            onInflate(activity, attributeSet, bundle);
        }
    }

    @Override // android.content.ComponentCallbacks
    public void onLowMemory() {
        this.mCalled = true;
    }

    public void onMultiWindowModeChanged(boolean z) {
    }

    public boolean onOptionsItemSelected(android.view.MenuItem menuItem) {
        return false;
    }

    public void onOptionsMenuClosed(android.view.Menu menu) {
    }

    public void onPause() {
        this.mCalled = true;
    }

    public void onPictureInPictureModeChanged(boolean z) {
    }

    public void onPrepareOptionsMenu(android.view.Menu menu) {
    }

    public void onPrimaryNavigationFragmentChanged(boolean z) {
    }

    @java.lang.Deprecated
    public void onRequestPermissionsResult(int i2, java.lang.String[] strArr, int[] iArr) {
    }

    public void onResume() {
        this.mCalled = true;
    }

    public void onSaveInstanceState(android.os.Bundle bundle) {
    }

    public void onStart() {
        this.mCalled = true;
    }

    public void onStop() {
        this.mCalled = true;
    }

    public void onViewCreated(android.view.View view, android.os.Bundle bundle) {
    }

    public void onViewStateRestored(android.os.Bundle bundle) {
        this.mCalled = true;
    }

    public void performActivityCreated(android.os.Bundle bundle) {
        this.mChildFragmentManager.T();
        this.mState = 3;
        this.mCalled = false;
        onActivityCreated(bundle);
        if (!this.mCalled) {
            throw new d.j.d.w0(e.a.c.a.a.c("Fragment ", this, " did not call through to super.onActivityCreated()"));
        }
        restoreViewState();
        d.j.d.y yVar = this.mChildFragmentManager;
        yVar.D = false;
        yVar.E = false;
        yVar.L.i = false;
        yVar.w(4);
    }

    public void performAttach() {
        java.util.Iterator<androidx.fragment.app.Fragment.k> it = this.mOnPreAttachedListeners.iterator();
        while (it.hasNext()) {
            it.next().a();
        }
        this.mOnPreAttachedListeners.clear();
        this.mChildFragmentManager.b(this.mHost, createFragmentContainer(), this);
        this.mState = 0;
        this.mCalled = false;
        onAttach(this.mHost.b);
        if (!this.mCalled) {
            throw new d.j.d.w0(e.a.c.a.a.c("Fragment ", this, " did not call through to super.onAttach()"));
        }
        d.j.d.y yVar = this.mFragmentManager;
        java.util.Iterator<d.j.d.c0> it2 = yVar.o.iterator();
        while (it2.hasNext()) {
            it2.next().a(yVar, this);
        }
        d.j.d.y yVar2 = this.mChildFragmentManager;
        yVar2.D = false;
        yVar2.E = false;
        yVar2.L.i = false;
        yVar2.w(0);
    }

    public void performConfigurationChanged(android.content.res.Configuration configuration) {
        onConfigurationChanged(configuration);
        this.mChildFragmentManager.k(configuration);
    }

    public boolean performContextItemSelected(android.view.MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (onContextItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.l(menuItem);
    }

    public void performCreate(android.os.Bundle bundle) {
        this.mChildFragmentManager.T();
        this.mState = 1;
        this.mCalled = false;
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            this.mLifecycleRegistry.a(new d.l.f() { // from class: androidx.fragment.app.Fragment.5
                @Override // d.l.f
                public void d(d.l.h hVar, d.l.e.a aVar) {
                    android.view.View view;
                    if (aVar != d.l.e.a.ON_STOP || (view = androidx.fragment.app.Fragment.this.mView) == null) {
                        return;
                    }
                    view.cancelPendingInputEvents();
                }
            });
        }
        this.mSavedStateRegistryController.a(bundle);
        onCreate(bundle);
        this.mIsCreated = true;
        if (!this.mCalled) {
            throw new d.j.d.w0(e.a.c.a.a.c("Fragment ", this, " did not call through to super.onCreate()"));
        }
        this.mLifecycleRegistry.e(d.l.e.a.ON_CREATE);
    }

    public boolean performCreateOptionsMenu(android.view.Menu menu, android.view.MenuInflater menuInflater) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onCreateOptionsMenu(menu, menuInflater);
        }
        return z | this.mChildFragmentManager.n(menu, menuInflater);
    }

    public void performCreateView(android.view.LayoutInflater layoutInflater, android.view.ViewGroup viewGroup, android.os.Bundle bundle) {
        this.mChildFragmentManager.T();
        this.mPerformedCreateView = true;
        this.mViewLifecycleOwner = new d.j.d.s0();
        android.view.View viewOnCreateView = onCreateView(layoutInflater, viewGroup, bundle);
        this.mView = viewOnCreateView;
        if (viewOnCreateView == null) {
            if (this.mViewLifecycleOwner.a != null) {
                throw new java.lang.IllegalStateException("Called getViewLifecycleOwner() but onCreateView() returned null");
            }
            this.mViewLifecycleOwner = null;
            return;
        }
        d.j.d.s0 s0Var = this.mViewLifecycleOwner;
        if (s0Var.a == null) {
            s0Var.a = new d.l.i(s0Var);
            s0Var.b = new d.r.c(s0Var);
        }
        this.mView.setTag(d.l.a0.a.view_tree_lifecycle_owner, this.mViewLifecycleOwner);
        this.mView.setTag(d.l.b0.a.view_tree_view_model_store_owner, this);
        this.mView.setTag(d.r.a.view_tree_saved_state_registry_owner, this.mViewLifecycleOwner);
        this.mViewLifecycleOwnerLiveData.g(this.mViewLifecycleOwner);
    }

    public void performDestroy() {
        this.mChildFragmentManager.o();
        this.mLifecycleRegistry.e(d.l.e.a.ON_DESTROY);
        this.mState = 0;
        this.mCalled = false;
        this.mIsCreated = false;
        onDestroy();
        if (!this.mCalled) {
            throw new d.j.d.w0(e.a.c.a.a.c("Fragment ", this, " did not call through to super.onDestroy()"));
        }
    }

    public void performDestroyView() {
        this.mChildFragmentManager.w(1);
        if (this.mView != null) {
            if (((d.l.i) this.mViewLifecycleOwner.getLifecycle()).b.compareTo(d.l.e.b.CREATED) >= 0) {
                this.mViewLifecycleOwner.a(d.l.e.a.ON_DESTROY);
            }
        }
        this.mState = 1;
        this.mCalled = false;
        onDestroyView();
        if (!this.mCalled) {
            throw new d.j.d.w0(e.a.c.a.a.c("Fragment ", this, " did not call through to super.onDestroyView()"));
        }
        d.m.a.b.c cVar = ((d.m.a.b) d.m.a.a.b(this)).b;
        int iF = cVar.f2177c.f();
        for (int i2 = 0; i2 < iF; i2++) {
            d.l.h hVar = cVar.f2177c.g(i2).k;
        }
        this.mPerformedCreateView = false;
    }

    public void performDetach() {
        this.mState = -1;
        this.mCalled = false;
        onDetach();
        this.mLayoutInflater = null;
        if (!this.mCalled) {
            throw new d.j.d.w0(e.a.c.a.a.c("Fragment ", this, " did not call through to super.onDetach()"));
        }
        d.j.d.y yVar = this.mChildFragmentManager;
        if (yVar.F) {
            return;
        }
        yVar.o();
        this.mChildFragmentManager = new d.j.d.z();
    }

    public android.view.LayoutInflater performGetLayoutInflater(android.os.Bundle bundle) {
        android.view.LayoutInflater layoutInflaterOnGetLayoutInflater = onGetLayoutInflater(bundle);
        this.mLayoutInflater = layoutInflaterOnGetLayoutInflater;
        return layoutInflaterOnGetLayoutInflater;
    }

    public void performLowMemory() {
        onLowMemory();
        this.mChildFragmentManager.p();
    }

    public void performMultiWindowModeChanged(boolean z) {
        onMultiWindowModeChanged(z);
        this.mChildFragmentManager.q(z);
    }

    public boolean performOptionsItemSelected(android.view.MenuItem menuItem) {
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible && onOptionsItemSelected(menuItem)) {
            return true;
        }
        return this.mChildFragmentManager.r(menuItem);
    }

    public void performOptionsMenuClosed(android.view.Menu menu) {
        if (this.mHidden) {
            return;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            onOptionsMenuClosed(menu);
        }
        this.mChildFragmentManager.s(menu);
    }

    public void performPause() {
        this.mChildFragmentManager.w(5);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(d.l.e.a.ON_PAUSE);
        }
        this.mLifecycleRegistry.e(d.l.e.a.ON_PAUSE);
        this.mState = 6;
        this.mCalled = false;
        onPause();
        if (!this.mCalled) {
            throw new d.j.d.w0(e.a.c.a.a.c("Fragment ", this, " did not call through to super.onPause()"));
        }
    }

    public void performPictureInPictureModeChanged(boolean z) {
        onPictureInPictureModeChanged(z);
        this.mChildFragmentManager.u(z);
    }

    public boolean performPrepareOptionsMenu(android.view.Menu menu) {
        boolean z = false;
        if (this.mHidden) {
            return false;
        }
        if (this.mHasMenu && this.mMenuVisible) {
            z = true;
            onPrepareOptionsMenu(menu);
        }
        return z | this.mChildFragmentManager.v(menu);
    }

    public void performPrimaryNavigationFragmentChanged() {
        boolean zP = this.mFragmentManager.P(this);
        java.lang.Boolean bool = this.mIsPrimaryNavigationFragment;
        if (bool == null || bool.booleanValue() != zP) {
            this.mIsPrimaryNavigationFragment = java.lang.Boolean.valueOf(zP);
            onPrimaryNavigationFragmentChanged(zP);
            d.j.d.y yVar = this.mChildFragmentManager;
            yVar.h0();
            yVar.t(yVar.t);
        }
    }

    public void performResume() {
        this.mChildFragmentManager.T();
        this.mChildFragmentManager.B(true);
        this.mState = 7;
        this.mCalled = false;
        onResume();
        if (!this.mCalled) {
            throw new d.j.d.w0(e.a.c.a.a.c("Fragment ", this, " did not call through to super.onResume()"));
        }
        this.mLifecycleRegistry.e(d.l.e.a.ON_RESUME);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(d.l.e.a.ON_RESUME);
        }
        d.j.d.y yVar = this.mChildFragmentManager;
        yVar.D = false;
        yVar.E = false;
        yVar.L.i = false;
        yVar.w(7);
    }

    public void performSaveInstanceState(android.os.Bundle bundle) {
        onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.b(bundle);
        android.os.Parcelable parcelableZ = this.mChildFragmentManager.Z();
        if (parcelableZ != null) {
            bundle.putParcelable(d.j.d.l.FRAGMENTS_TAG, parcelableZ);
        }
    }

    public void performStart() {
        this.mChildFragmentManager.T();
        this.mChildFragmentManager.B(true);
        this.mState = 5;
        this.mCalled = false;
        onStart();
        if (!this.mCalled) {
            throw new d.j.d.w0(e.a.c.a.a.c("Fragment ", this, " did not call through to super.onStart()"));
        }
        this.mLifecycleRegistry.e(d.l.e.a.ON_START);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(d.l.e.a.ON_START);
        }
        d.j.d.y yVar = this.mChildFragmentManager;
        yVar.D = false;
        yVar.E = false;
        yVar.L.i = false;
        yVar.w(5);
    }

    public void performStop() {
        d.j.d.y yVar = this.mChildFragmentManager;
        yVar.E = true;
        yVar.L.i = true;
        yVar.w(4);
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(d.l.e.a.ON_STOP);
        }
        this.mLifecycleRegistry.e(d.l.e.a.ON_STOP);
        this.mState = 4;
        this.mCalled = false;
        onStop();
        if (!this.mCalled) {
            throw new d.j.d.w0(e.a.c.a.a.c("Fragment ", this, " did not call through to super.onStop()"));
        }
    }

    public void performViewCreated() {
        onViewCreated(this.mView, this.mSavedFragmentState);
        this.mChildFragmentManager.w(2);
    }

    public void postponeEnterTransition() {
        ensureAnimationInfo().s = true;
    }

    public final void postponeEnterTransition(long j2, java.util.concurrent.TimeUnit timeUnit) {
        ensureAnimationInfo().s = true;
        d.j.d.y yVar = this.mFragmentManager;
        android.os.Handler handler = yVar != null ? yVar.q.f2145c : new android.os.Handler(android.os.Looper.getMainLooper());
        handler.removeCallbacks(this.mPostponedDurationRunnable);
        handler.postDelayed(this.mPostponedDurationRunnable, timeUnit.toMillis(j2));
    }

    public final <I, O> d.a.e.c<I> registerForActivityResult(d.a.e.f.a<I, O> aVar, androidx.activity.result.ActivityResultRegistry activityResultRegistry, d.a.e.b<O> bVar) {
        return prepareCallInternal(aVar, new androidx.fragment.app.Fragment.f(this, activityResultRegistry), bVar);
    }

    public final <I, O> d.a.e.c<I> registerForActivityResult(d.a.e.f.a<I, O> aVar, d.a.e.b<O> bVar) {
        return prepareCallInternal(aVar, new androidx.fragment.app.Fragment.e(), bVar);
    }

    public void registerForContextMenu(android.view.View view) {
        view.setOnCreateContextMenuListener(this);
    }

    @java.lang.Deprecated
    public final void requestPermissions(java.lang.String[] strArr, int i2) {
        if (this.mHost == null) {
            throw new java.lang.IllegalStateException(e.a.c.a.a.c("Fragment ", this, " not attached to Activity"));
        }
        d.j.d.y parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.A == null) {
            if (parentFragmentManager.q == null) {
                throw null;
            }
        } else {
            parentFragmentManager.B.addLast(new d.j.d.y.k(this.mWho, i2));
            parentFragmentManager.A.a(strArr, null);
        }
    }

    public final d.j.d.l requireActivity() {
        d.j.d.l activity = getActivity();
        if (activity != null) {
            return activity;
        }
        throw new java.lang.IllegalStateException(e.a.c.a.a.c("Fragment ", this, " not attached to an activity."));
    }

    public final android.os.Bundle requireArguments() {
        android.os.Bundle arguments = getArguments();
        if (arguments != null) {
            return arguments;
        }
        throw new java.lang.IllegalStateException(e.a.c.a.a.c("Fragment ", this, " does not have any arguments."));
    }

    public final android.content.Context requireContext() {
        android.content.Context context = getContext();
        if (context != null) {
            return context;
        }
        throw new java.lang.IllegalStateException(e.a.c.a.a.c("Fragment ", this, " not attached to a context."));
    }

    @java.lang.Deprecated
    public final d.j.d.y requireFragmentManager() {
        return getParentFragmentManager();
    }

    public final java.lang.Object requireHost() {
        java.lang.Object host = getHost();
        if (host != null) {
            return host;
        }
        throw new java.lang.IllegalStateException(e.a.c.a.a.c("Fragment ", this, " not attached to a host."));
    }

    public final androidx.fragment.app.Fragment requireParentFragment() {
        androidx.fragment.app.Fragment parentFragment = getParentFragment();
        if (parentFragment != null) {
            return parentFragment;
        }
        if (getContext() == null) {
            throw new java.lang.IllegalStateException(e.a.c.a.a.c("Fragment ", this, " is not attached to any Fragment or host"));
        }
        throw new java.lang.IllegalStateException("Fragment " + this + " is not a child Fragment, it is directly attached to " + getContext());
    }

    public final android.view.View requireView() {
        android.view.View view = getView();
        if (view != null) {
            return view;
        }
        throw new java.lang.IllegalStateException(e.a.c.a.a.c("Fragment ", this, " did not return a View from onCreateView() or this was called before onCreateView()."));
    }

    public void restoreChildFragmentState(android.os.Bundle bundle) {
        android.os.Parcelable parcelable;
        if (bundle == null || (parcelable = bundle.getParcelable(d.j.d.l.FRAGMENTS_TAG)) == null) {
            return;
        }
        this.mChildFragmentManager.Y(parcelable);
        this.mChildFragmentManager.m();
    }

    public final void restoreViewState(android.os.Bundle bundle) {
        android.util.SparseArray<android.os.Parcelable> sparseArray = this.mSavedViewState;
        if (sparseArray != null) {
            this.mView.restoreHierarchyState(sparseArray);
            this.mSavedViewState = null;
        }
        if (this.mView != null) {
            d.j.d.s0 s0Var = this.mViewLifecycleOwner;
            s0Var.b.a(this.mSavedViewRegistryState);
            this.mSavedViewRegistryState = null;
        }
        this.mCalled = false;
        onViewStateRestored(bundle);
        if (!this.mCalled) {
            throw new d.j.d.w0(e.a.c.a.a.c("Fragment ", this, " did not call through to super.onViewStateRestored()"));
        }
        if (this.mView != null) {
            this.mViewLifecycleOwner.a(d.l.e.a.ON_CREATE);
        }
    }

    public void setAllowEnterTransitionOverlap(boolean z) {
        ensureAnimationInfo().n = java.lang.Boolean.valueOf(z);
    }

    public void setAllowReturnTransitionOverlap(boolean z) {
        ensureAnimationInfo().m = java.lang.Boolean.valueOf(z);
    }

    public void setAnimatingAway(android.view.View view) {
        ensureAnimationInfo().a = view;
    }

    public void setAnimator(android.animation.Animator animator) {
        ensureAnimationInfo().b = animator;
    }

    public void setArguments(android.os.Bundle bundle) {
        if (this.mFragmentManager != null && isStateSaved()) {
            throw new java.lang.IllegalStateException("Fragment already added and state has been saved");
        }
        this.mArguments = bundle;
    }

    public void setEnterSharedElementCallback(d.g.e.n nVar) {
        ensureAnimationInfo();
    }

    public void setEnterTransition(java.lang.Object obj) {
        ensureAnimationInfo().f118g = obj;
    }

    public void setExitSharedElementCallback(d.g.e.n nVar) {
        ensureAnimationInfo();
    }

    public void setExitTransition(java.lang.Object obj) {
        ensureAnimationInfo().i = obj;
    }

    public void setFocusedView(android.view.View view) {
        ensureAnimationInfo().r = view;
    }

    public void setHasOptionsMenu(boolean z) {
        if (this.mHasMenu != z) {
            this.mHasMenu = z;
            if (!isAdded() || isHidden()) {
                return;
            }
            d.j.d.l.this.supportInvalidateOptionsMenu();
        }
    }

    public void setHideReplaced(boolean z) {
        ensureAnimationInfo().u = z;
    }

    public void setInitialSavedState(androidx.fragment.app.Fragment.m mVar) {
        android.os.Bundle bundle;
        if (this.mFragmentManager != null) {
            throw new java.lang.IllegalStateException("Fragment already added");
        }
        if (mVar == null || (bundle = mVar.a) == null) {
            bundle = null;
        }
        this.mSavedFragmentState = bundle;
    }

    public void setMenuVisibility(boolean z) {
        if (this.mMenuVisible != z) {
            this.mMenuVisible = z;
            if (this.mHasMenu && isAdded() && !isHidden()) {
                d.j.d.l.this.supportInvalidateOptionsMenu();
            }
        }
    }

    public void setNextAnim(int i2) {
        if (this.mAnimationInfo == null && i2 == 0) {
            return;
        }
        ensureAnimationInfo().f114c = i2;
    }

    public void setNextTransition(int i2) {
        if (this.mAnimationInfo == null && i2 == 0) {
            return;
        }
        ensureAnimationInfo();
        this.mAnimationInfo.f115d = i2;
    }

    public void setOnStartEnterTransitionListener(androidx.fragment.app.Fragment.l lVar) {
        ensureAnimationInfo();
        androidx.fragment.app.Fragment.l lVar2 = this.mAnimationInfo.t;
        if (lVar == lVar2) {
            return;
        }
        if (lVar != null && lVar2 != null) {
            throw new java.lang.IllegalStateException("Trying to set a replacement startPostponedEnterTransition on " + this);
        }
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        if (iVar.s) {
            iVar.t = lVar;
        }
        if (lVar != null) {
            ((d.j.d.y.m) lVar).f2153c++;
        }
    }

    public void setPostOnViewCreatedAlpha(float f2) {
        ensureAnimationInfo().q = f2;
    }

    public void setReenterTransition(java.lang.Object obj) {
        ensureAnimationInfo().j = obj;
    }

    @java.lang.Deprecated
    public void setRetainInstance(boolean z) {
        this.mRetainInstance = z;
        d.j.d.y yVar = this.mFragmentManager;
        if (yVar == null) {
            this.mRetainInstanceChangedWhileDetached = true;
        } else if (z) {
            yVar.L.c(this);
        } else {
            yVar.L.d(this);
        }
    }

    public void setReturnTransition(java.lang.Object obj) {
        ensureAnimationInfo().h = obj;
    }

    public void setSharedElementEnterTransition(java.lang.Object obj) {
        ensureAnimationInfo().k = obj;
    }

    public void setSharedElementNames(java.util.ArrayList<java.lang.String> arrayList, java.util.ArrayList<java.lang.String> arrayList2) {
        ensureAnimationInfo();
        androidx.fragment.app.Fragment.i iVar = this.mAnimationInfo;
        iVar.f116e = arrayList;
        iVar.f117f = arrayList2;
    }

    public void setSharedElementReturnTransition(java.lang.Object obj) {
        ensureAnimationInfo().l = obj;
    }

    @java.lang.Deprecated
    public void setTargetFragment(androidx.fragment.app.Fragment fragment, int i2) {
        d.j.d.y yVar = this.mFragmentManager;
        d.j.d.y yVar2 = fragment != null ? fragment.mFragmentManager : null;
        if (yVar != null && yVar2 != null && yVar != yVar2) {
            throw new java.lang.IllegalArgumentException(e.a.c.a.a.c("Fragment ", fragment, " must share the same FragmentManager to be set as a target fragment"));
        }
        for (androidx.fragment.app.Fragment targetFragment = fragment; targetFragment != null; targetFragment = targetFragment.getTargetFragment()) {
            if (targetFragment.equals(this)) {
                throw new java.lang.IllegalArgumentException("Setting " + fragment + " as the target of " + this + " would create a target cycle");
            }
        }
        if (fragment == null) {
            this.mTargetWho = null;
        } else {
            if (this.mFragmentManager == null || fragment.mFragmentManager == null) {
                this.mTargetWho = null;
                this.mTarget = fragment;
                this.mTargetRequestCode = i2;
            }
            this.mTargetWho = fragment.mWho;
        }
        this.mTarget = null;
        this.mTargetRequestCode = i2;
    }

    @java.lang.Deprecated
    public void setUserVisibleHint(boolean z) {
        if (!this.mUserVisibleHint && z && this.mState < 5 && this.mFragmentManager != null && isAdded() && this.mIsCreated) {
            d.j.d.y yVar = this.mFragmentManager;
            yVar.U(yVar.h(this));
        }
        this.mUserVisibleHint = z;
        this.mDeferStart = this.mState < 5 && !z;
        if (this.mSavedFragmentState != null) {
            this.mSavedUserVisibleHint = java.lang.Boolean.valueOf(z);
        }
    }

    public boolean shouldShowRequestPermissionRationale(java.lang.String str) {
        d.j.d.v<?> vVar = this.mHost;
        if (vVar != null) {
            return d.g.e.a.p(d.j.d.l.this, str);
        }
        return false;
    }

    public void startActivity(@android.annotation.SuppressLint({"UnknownNullness"}) android.content.Intent intent) {
        startActivity(intent, null);
    }

    public void startActivity(@android.annotation.SuppressLint({"UnknownNullness"}) android.content.Intent intent, android.os.Bundle bundle) {
        d.j.d.v<?> vVar = this.mHost;
        if (vVar == null) {
            throw new java.lang.IllegalStateException(e.a.c.a.a.c("Fragment ", this, " not attached to Activity"));
        }
        d.g.f.a.h(vVar.b, intent, bundle);
    }

    @java.lang.Deprecated
    public void startActivityForResult(@android.annotation.SuppressLint({"UnknownNullness"}) android.content.Intent intent, int i2) {
        startActivityForResult(intent, i2, null);
    }

    @java.lang.Deprecated
    public void startActivityForResult(@android.annotation.SuppressLint({"UnknownNullness"}) android.content.Intent intent, int i2, android.os.Bundle bundle) {
        if (this.mHost == null) {
            throw new java.lang.IllegalStateException(e.a.c.a.a.c("Fragment ", this, " not attached to Activity"));
        }
        d.j.d.y parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.y != null) {
            parentFragmentManager.B.addLast(new d.j.d.y.k(this.mWho, i2));
            if (intent != null && bundle != null) {
                intent.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
            }
            parentFragmentManager.y.a(intent, null);
            return;
        }
        d.j.d.v<?> vVar = parentFragmentManager.q;
        if (vVar == null) {
            throw null;
        }
        if (i2 != -1) {
            throw new java.lang.IllegalStateException("Starting activity with a requestCode requires a FragmentActivity host");
        }
        d.g.f.a.h(vVar.b, intent, bundle);
    }

    @java.lang.Deprecated
    public void startIntentSenderForResult(@android.annotation.SuppressLint({"UnknownNullness"}) android.content.IntentSender intentSender, int i2, android.content.Intent intent, int i3, int i4, int i5, android.os.Bundle bundle) {
        android.content.Intent intent2 = intent;
        if (this.mHost == null) {
            throw new java.lang.IllegalStateException(e.a.c.a.a.c("Fragment ", this, " not attached to Activity"));
        }
        if (d.j.d.y.M(2)) {
            android.util.Log.v("FragmentManager", "Fragment " + this + " received the following in startIntentSenderForResult() requestCode: " + i2 + " IntentSender: " + intentSender + " fillInIntent: " + intent + " options: " + bundle);
        }
        d.j.d.y parentFragmentManager = getParentFragmentManager();
        if (parentFragmentManager.z == null) {
            d.j.d.v<?> vVar = parentFragmentManager.q;
            if (vVar == null) {
                throw null;
            }
            if (i2 != -1) {
                throw new java.lang.IllegalStateException("Starting intent sender with a requestCode requires a FragmentActivity host");
            }
            d.g.e.a.r(vVar.a, intentSender, i2, intent, i3, i4, i5, bundle);
            return;
        }
        if (bundle != null) {
            if (intent2 == null) {
                intent2 = new android.content.Intent();
                intent2.putExtra("androidx.fragment.extra.ACTIVITY_OPTIONS_BUNDLE", true);
            }
            if (d.j.d.y.M(2)) {
                android.util.Log.v("FragmentManager", "ActivityOptions " + bundle + " were added to fillInIntent " + intent2 + " for fragment " + this);
            }
            intent2.putExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE", bundle);
        }
        d.a.e.e eVar = new d.a.e.e(intentSender, intent2, i3, i4);
        parentFragmentManager.B.addLast(new d.j.d.y.k(this.mWho, i2));
        if (d.j.d.y.M(2)) {
            android.util.Log.v("FragmentManager", "Fragment " + this + "is launching an IntentSender for result ");
        }
        parentFragmentManager.z.a(eVar, null);
    }

    public void startPostponedEnterTransition() {
        if (this.mAnimationInfo == null || !ensureAnimationInfo().s) {
            return;
        }
        if (this.mHost == null) {
            ensureAnimationInfo().s = false;
        } else if (android.os.Looper.myLooper() != this.mHost.f2145c.getLooper()) {
            this.mHost.f2145c.postAtFrontOfQueue(new androidx.fragment.app.Fragment.b());
        } else {
            callStartTransitionListener(true);
        }
    }

    public java.lang.String toString() {
        java.lang.StringBuilder sb = new java.lang.StringBuilder(128);
        sb.append(getClass().getSimpleName());
        sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_START);
        sb.append(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
        sb.append(com.google.android.exoplayer2.text.webvtt.WebvttCssParser.RULE_END);
        sb.append(" (");
        sb.append(this.mWho);
        if (this.mFragmentId != 0) {
            sb.append(" id=0x");
            sb.append(java.lang.Integer.toHexString(this.mFragmentId));
        }
        if (this.mTag != null) {
            sb.append(" tag=");
            sb.append(this.mTag);
        }
        sb.append(")");
        return sb.toString();
    }

    public void unregisterForContextMenu(android.view.View view) {
        view.setOnCreateContextMenuListener(null);
    }
}
