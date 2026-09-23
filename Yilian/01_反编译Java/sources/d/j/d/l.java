package d.j.d;

/* loaded from: classes.dex */
public class l extends androidx.activity.ComponentActivity implements d.g.e.a.c, d.g.e.a.d {
    public static final java.lang.String FRAGMENTS_TAG = "android:support:fragments";
    public boolean mCreated;
    public final d.l.i mFragmentLifecycleRegistry;
    public final d.j.d.t mFragments;
    public boolean mResumed;
    public boolean mStopped;

    public class a implements d.r.b.InterfaceC0058b {
        public a() {
        }

        @Override // d.r.b.InterfaceC0058b
        public android.os.Bundle a() {
            android.os.Bundle bundle = new android.os.Bundle();
            d.j.d.l.this.markFragmentsCreated();
            d.j.d.l.this.mFragmentLifecycleRegistry.e(d.l.e.a.ON_STOP);
            android.os.Parcelable parcelableZ = d.j.d.l.this.mFragments.a.f2146d.Z();
            if (parcelableZ != null) {
                bundle.putParcelable(d.j.d.l.FRAGMENTS_TAG, parcelableZ);
            }
            return bundle;
        }
    }

    public class b implements d.a.d.b {
        public b() {
        }

        @Override // d.a.d.b
        public void a(android.content.Context context) {
            d.j.d.v<?> vVar = d.j.d.l.this.mFragments.a;
            vVar.f2146d.b(vVar, vVar, null);
            android.os.Bundle bundleA = d.j.d.l.this.getSavedStateRegistry().a(d.j.d.l.FRAGMENTS_TAG);
            if (bundleA != null) {
                android.os.Parcelable parcelable = bundleA.getParcelable(d.j.d.l.FRAGMENTS_TAG);
                d.j.d.v<?> vVar2 = d.j.d.l.this.mFragments.a;
                if (!(vVar2 instanceof d.l.z)) {
                    throw new java.lang.IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
                }
                vVar2.f2146d.Y(parcelable);
            }
        }
    }

    public class c extends d.j.d.v<d.j.d.l> implements d.l.z, d.a.c, d.a.e.d, d.j.d.c0 {
        public c() {
            super(d.j.d.l.this);
        }

        @Override // d.j.d.c0
        public void a(d.j.d.y yVar, androidx.fragment.app.Fragment fragment) {
            d.j.d.l.this.onAttachFragment(fragment);
        }

        @Override // d.j.d.r
        public android.view.View b(int i) {
            return d.j.d.l.this.findViewById(i);
        }

        @Override // d.j.d.r
        public boolean c() {
            android.view.Window window = d.j.d.l.this.getWindow();
            return (window == null || window.peekDecorView() == null) ? false : true;
        }

        @Override // d.a.e.d
        public androidx.activity.result.ActivityResultRegistry getActivityResultRegistry() {
            return d.j.d.l.this.getActivityResultRegistry();
        }

        @Override // d.l.h
        public d.l.e getLifecycle() {
            return d.j.d.l.this.mFragmentLifecycleRegistry;
        }

        @Override // d.a.c
        public androidx.activity.OnBackPressedDispatcher getOnBackPressedDispatcher() {
            return d.j.d.l.this.getOnBackPressedDispatcher();
        }

        @Override // d.l.z
        public d.l.y getViewModelStore() {
            return d.j.d.l.this.getViewModelStore();
        }
    }

    public l() {
        d.j.d.l.c cVar = new d.j.d.l.c();
        d.b.k.r.f(cVar, "callbacks == null");
        this.mFragments = new d.j.d.t(cVar);
        this.mFragmentLifecycleRegistry = new d.l.i(this);
        this.mStopped = true;
        init();
    }

    private void init() {
        getSavedStateRegistry().b(FRAGMENTS_TAG, new d.j.d.l.a());
        addOnContextAvailableListener(new d.j.d.l.b());
    }

    public static boolean markState(d.j.d.y yVar, d.l.e.b bVar) {
        d.l.e.b bVar2 = d.l.e.b.STARTED;
        boolean zMarkState = false;
        for (androidx.fragment.app.Fragment fragment : yVar.J()) {
            if (fragment != null) {
                if (fragment.getHost() != null) {
                    zMarkState |= markState(fragment.getChildFragmentManager(), bVar);
                }
                d.j.d.s0 s0Var = fragment.mViewLifecycleOwner;
                if (s0Var != null) {
                    if (((d.l.i) s0Var.getLifecycle()).b.compareTo(bVar2) >= 0) {
                        d.l.i iVar = fragment.mViewLifecycleOwner.a;
                        iVar.d("setCurrentState");
                        iVar.g(bVar);
                        zMarkState = true;
                    }
                }
                if (fragment.mLifecycleRegistry.b.compareTo(bVar2) >= 0) {
                    d.l.i iVar2 = fragment.mLifecycleRegistry;
                    iVar2.d("setCurrentState");
                    iVar2.g(bVar);
                    zMarkState = true;
                }
            }
        }
        return zMarkState;
    }

    public final android.view.View dispatchFragmentsOnCreateView(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        return this.mFragments.a.f2146d.f2150f.onCreateView(view, str, context, attributeSet);
    }

    @Override // android.app.Activity
    public void dump(java.lang.String str, java.io.FileDescriptor fileDescriptor, java.io.PrintWriter printWriter, java.lang.String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        printWriter.print(str);
        printWriter.print("Local FragmentActivity ");
        printWriter.print(java.lang.Integer.toHexString(java.lang.System.identityHashCode(this)));
        printWriter.println(" State:");
        java.lang.String str2 = str + "  ";
        printWriter.print(str2);
        printWriter.print("mCreated=");
        printWriter.print(this.mCreated);
        printWriter.print(" mResumed=");
        printWriter.print(this.mResumed);
        printWriter.print(" mStopped=");
        printWriter.print(this.mStopped);
        if (getApplication() != null) {
            d.m.a.a.b(this).a(str2, fileDescriptor, printWriter, strArr);
        }
        this.mFragments.a.f2146d.y(str, fileDescriptor, printWriter, strArr);
    }

    public d.j.d.y getSupportFragmentManager() {
        return this.mFragments.a.f2146d;
    }

    @java.lang.Deprecated
    public d.m.a.a getSupportLoaderManager() {
        return d.m.a.a.b(this);
    }

    public void markFragmentsCreated() {
        while (markState(getSupportFragmentManager(), d.l.e.b.CREATED)) {
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onActivityResult(int i, int i2, android.content.Intent intent) {
        this.mFragments.a();
        super.onActivityResult(i, i2, intent);
    }

    @java.lang.Deprecated
    public void onAttachFragment(androidx.fragment.app.Fragment fragment) {
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        super.onConfigurationChanged(configuration);
        this.mFragments.a();
        this.mFragments.a.f2146d.k(configuration);
    }

    @Override // androidx.activity.ComponentActivity, d.g.e.e, android.app.Activity
    public void onCreate(android.os.Bundle bundle) {
        super.onCreate(bundle);
        this.mFragmentLifecycleRegistry.e(d.l.e.a.ON_CREATE);
        this.mFragments.a.f2146d.m();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onCreatePanelMenu(int i, android.view.Menu menu) {
        if (i != 0) {
            return super.onCreatePanelMenu(i, menu);
        }
        boolean zOnCreatePanelMenu = super.onCreatePanelMenu(i, menu);
        d.j.d.t tVar = this.mFragments;
        return zOnCreatePanelMenu | tVar.a.f2146d.n(menu, getMenuInflater());
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory2
    public android.view.View onCreateView(android.view.View view, java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        android.view.View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(view, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(view, str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity, android.view.LayoutInflater.Factory
    public android.view.View onCreateView(java.lang.String str, android.content.Context context, android.util.AttributeSet attributeSet) {
        android.view.View viewDispatchFragmentsOnCreateView = dispatchFragmentsOnCreateView(null, str, context, attributeSet);
        return viewDispatchFragmentsOnCreateView == null ? super.onCreateView(str, context, attributeSet) : viewDispatchFragmentsOnCreateView;
    }

    @Override // android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        this.mFragments.a.f2146d.o();
        this.mFragmentLifecycleRegistry.e(d.l.e.a.ON_DESTROY);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        this.mFragments.a.f2146d.p();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onMenuItemSelected(int i, android.view.MenuItem menuItem) {
        if (super.onMenuItemSelected(i, menuItem)) {
            return true;
        }
        if (i == 0) {
            return this.mFragments.a.f2146d.r(menuItem);
        }
        if (i != 6) {
            return false;
        }
        return this.mFragments.a.f2146d.l(menuItem);
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        this.mFragments.a.f2146d.q(z);
    }

    @Override // android.app.Activity
    public void onNewIntent(@android.annotation.SuppressLint({"UnknownNullness"}) android.content.Intent intent) {
        super.onNewIntent(intent);
        this.mFragments.a();
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onPanelClosed(int i, android.view.Menu menu) {
        if (i == 0) {
            this.mFragments.a.f2146d.s(menu);
        }
        super.onPanelClosed(i, menu);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.mResumed = false;
        this.mFragments.a.f2146d.w(5);
        this.mFragmentLifecycleRegistry.e(d.l.e.a.ON_PAUSE);
    }

    @Override // android.app.Activity
    public void onPictureInPictureModeChanged(boolean z) {
        this.mFragments.a.f2146d.u(z);
    }

    @Override // android.app.Activity
    public void onPostResume() {
        super.onPostResume();
        onResumeFragments();
    }

    @java.lang.Deprecated
    public boolean onPrepareOptionsPanel(android.view.View view, android.view.Menu menu) {
        return super.onPreparePanel(0, view, menu);
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean onPreparePanel(int i, android.view.View view, android.view.Menu menu) {
        return i == 0 ? onPrepareOptionsPanel(view, menu) | this.mFragments.a.f2146d.v(menu) : super.onPreparePanel(i, view, menu);
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onRequestPermissionsResult(int i, java.lang.String[] strArr, int[] iArr) {
        this.mFragments.a();
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        this.mResumed = true;
        this.mFragments.a();
        this.mFragments.a.f2146d.B(true);
    }

    public void onResumeFragments() {
        this.mFragmentLifecycleRegistry.e(d.l.e.a.ON_RESUME);
        d.j.d.y yVar = this.mFragments.a.f2146d;
        yVar.D = false;
        yVar.E = false;
        yVar.L.i = false;
        yVar.w(7);
    }

    @Override // android.app.Activity
    public void onStart() {
        super.onStart();
        this.mStopped = false;
        if (!this.mCreated) {
            this.mCreated = true;
            d.j.d.y yVar = this.mFragments.a.f2146d;
            yVar.D = false;
            yVar.E = false;
            yVar.L.i = false;
            yVar.w(4);
        }
        this.mFragments.a();
        this.mFragments.a.f2146d.B(true);
        this.mFragmentLifecycleRegistry.e(d.l.e.a.ON_START);
        d.j.d.y yVar2 = this.mFragments.a.f2146d;
        yVar2.D = false;
        yVar2.E = false;
        yVar2.L.i = false;
        yVar2.w(5);
    }

    @Override // android.app.Activity
    public void onStateNotSaved() {
        this.mFragments.a();
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        this.mStopped = true;
        markFragmentsCreated();
        d.j.d.y yVar = this.mFragments.a.f2146d;
        yVar.E = true;
        yVar.L.i = true;
        yVar.w(4);
        this.mFragmentLifecycleRegistry.e(d.l.e.a.ON_STOP);
    }

    public void setEnterSharedElementCallback(d.g.e.n nVar) {
        d.g.e.a.n(this);
    }

    public void setExitSharedElementCallback(d.g.e.n nVar) {
        d.g.e.a.o(this);
    }

    public void startActivityFromFragment(androidx.fragment.app.Fragment fragment, @android.annotation.SuppressLint({"UnknownNullness"}) android.content.Intent intent, int i) {
        startActivityFromFragment(fragment, intent, i, (android.os.Bundle) null);
    }

    public void startActivityFromFragment(androidx.fragment.app.Fragment fragment, @android.annotation.SuppressLint({"UnknownNullness"}) android.content.Intent intent, int i, android.os.Bundle bundle) {
        if (i == -1) {
            d.g.e.a.q(this, intent, -1, bundle);
        } else {
            fragment.startActivityForResult(intent, i, bundle);
        }
    }

    @java.lang.Deprecated
    public void startIntentSenderFromFragment(androidx.fragment.app.Fragment fragment, @android.annotation.SuppressLint({"UnknownNullness"}) android.content.IntentSender intentSender, int i, android.content.Intent intent, int i2, int i3, int i4, android.os.Bundle bundle) {
        if (i == -1) {
            d.g.e.a.r(this, intentSender, i, intent, i2, i3, i4, bundle);
        } else {
            fragment.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
        }
    }

    public void supportFinishAfterTransition() {
        d.g.e.a.j(this);
    }

    @java.lang.Deprecated
    public void supportInvalidateOptionsMenu() {
        invalidateOptionsMenu();
    }

    public void supportPostponeEnterTransition() {
        d.g.e.a.k(this);
    }

    public void supportStartPostponedEnterTransition() {
        d.g.e.a.s(this);
    }

    @Override // d.g.e.a.d
    @java.lang.Deprecated
    public final void validateRequestPermissionsRequestCode(int i) {
    }

    public l(int i) {
        super(i);
        d.j.d.l.c cVar = new d.j.d.l.c();
        d.b.k.r.f(cVar, "callbacks == null");
        this.mFragments = new d.j.d.t(cVar);
        this.mFragmentLifecycleRegistry = new d.l.i(this);
        this.mStopped = true;
        init();
    }
}
