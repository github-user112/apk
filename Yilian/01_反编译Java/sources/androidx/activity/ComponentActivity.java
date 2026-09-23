package androidx.activity;

/* loaded from: classes.dex */
public class ComponentActivity extends d.g.e.e implements d.l.h, d.l.z, d.r.d, d.a.c, d.a.e.d {
    public final androidx.activity.result.ActivityResultRegistry mActivityResultRegistry;
    public int mContentLayoutId;
    public final d.a.d.a mContextAwareHelper;
    public d.l.u mDefaultFactory;
    public final d.l.i mLifecycleRegistry;
    public final java.util.concurrent.atomic.AtomicInteger mNextLocalRequestCode;
    public final androidx.activity.OnBackPressedDispatcher mOnBackPressedDispatcher;
    public final d.r.c mSavedStateRegistryController;
    public d.l.y mViewModelStore;

    public class a implements java.lang.Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                androidx.activity.ComponentActivity.super.onBackPressed();
            } catch (java.lang.IllegalStateException e2) {
                if (!android.text.TextUtils.equals(e2.getMessage(), "Can not perform this action after onSaveInstanceState")) {
                    throw e2;
                }
            }
        }
    }

    public class b extends androidx.activity.result.ActivityResultRegistry {

        public class a implements java.lang.Runnable {
            public final /* synthetic */ int a;
            public final /* synthetic */ d.a.e.f.a.C0030a b;

            public a(int i, d.a.e.f.a.C0030a c0030a) {
                this.a = i;
                this.b = c0030a;
            }

            @Override // java.lang.Runnable
            public void run() {
                d.a.e.b<?> bVar;
                androidx.activity.ComponentActivity.b bVar2 = androidx.activity.ComponentActivity.b.this;
                int i = this.a;
                java.lang.Object obj = this.b.a;
                java.lang.String str = bVar2.b.get(java.lang.Integer.valueOf(i));
                if (str == null) {
                    return;
                }
                bVar2.f9e.remove(str);
                androidx.activity.result.ActivityResultRegistry.c<?> cVar = bVar2.f10f.get(str);
                if (cVar != null && (bVar = cVar.a) != null) {
                    bVar.a(obj);
                } else {
                    bVar2.h.remove(str);
                    bVar2.f11g.put(str, obj);
                }
            }
        }

        /* renamed from: androidx.activity.ComponentActivity$b$b, reason: collision with other inner class name */
        public class RunnableC0000b implements java.lang.Runnable {
            public final /* synthetic */ int a;
            public final /* synthetic */ android.content.IntentSender.SendIntentException b;

            public RunnableC0000b(int i, android.content.IntentSender.SendIntentException sendIntentException) {
                this.a = i;
                this.b = sendIntentException;
            }

            @Override // java.lang.Runnable
            public void run() {
                androidx.activity.ComponentActivity.b.this.a(this.a, 0, new android.content.Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", this.b));
            }
        }

        public b() {
        }

        @Override // androidx.activity.result.ActivityResultRegistry
        public <I, O> void b(int i, d.a.e.f.a<I, O> aVar, I i2, d.g.e.b bVar) {
            android.os.Bundle bundle;
            androidx.activity.ComponentActivity componentActivity = androidx.activity.ComponentActivity.this;
            d.a.e.f.a.C0030a<O> c0030aB = aVar.b(componentActivity, i2);
            if (c0030aB != null) {
                new android.os.Handler(android.os.Looper.getMainLooper()).post(new androidx.activity.ComponentActivity.b.a(i, c0030aB));
                return;
            }
            android.content.Intent intentA = aVar.a(componentActivity, i2);
            if (intentA.hasExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE")) {
                android.os.Bundle bundleExtra = intentA.getBundleExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                intentA.removeExtra("androidx.activity.result.contract.extra.ACTIVITY_OPTIONS_BUNDLE");
                bundle = bundleExtra;
            } else {
                if (bVar != null) {
                    throw null;
                }
                bundle = null;
            }
            if ("androidx.activity.result.contract.action.REQUEST_PERMISSIONS".equals(intentA.getAction())) {
                java.lang.String[] stringArrayExtra = intentA.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
                if (stringArrayExtra == null) {
                    stringArrayExtra = new java.lang.String[0];
                }
                d.g.e.a.m(componentActivity, stringArrayExtra, i);
                return;
            }
            if (!"androidx.activity.result.contract.action.INTENT_SENDER_REQUEST".equals(intentA.getAction())) {
                d.g.e.a.q(componentActivity, intentA, i, bundle);
                return;
            }
            d.a.e.e eVar = (d.a.e.e) intentA.getParcelableExtra("androidx.activity.result.contract.extra.INTENT_SENDER_REQUEST");
            try {
                d.g.e.a.r(componentActivity, eVar.a, i, eVar.b, eVar.f1624c, eVar.f1625d, 0, bundle);
            } catch (android.content.IntentSender.SendIntentException e2) {
                new android.os.Handler(android.os.Looper.getMainLooper()).post(new androidx.activity.ComponentActivity.b.RunnableC0000b(i, e2));
            }
        }
    }

    public static final class c {
        public java.lang.Object a;
        public d.l.y b;
    }

    public ComponentActivity() {
        this.mContextAwareHelper = new d.a.d.a();
        this.mLifecycleRegistry = new d.l.i(this);
        this.mSavedStateRegistryController = new d.r.c(this);
        this.mOnBackPressedDispatcher = new androidx.activity.OnBackPressedDispatcher(new androidx.activity.ComponentActivity.a());
        this.mNextLocalRequestCode = new java.util.concurrent.atomic.AtomicInteger();
        this.mActivityResultRegistry = new androidx.activity.ComponentActivity.b();
        if (getLifecycle() == null) {
            throw new java.lang.IllegalStateException("getLifecycle() returned null in ComponentActivity's constructor. Please make sure you are lazily constructing your Lifecycle in the first call to getLifecycle() rather than relying on field initialization.");
        }
        if (android.os.Build.VERSION.SDK_INT >= 19) {
            getLifecycle().a(new d.l.f() { // from class: androidx.activity.ComponentActivity.3
                @Override // d.l.f
                public void d(d.l.h hVar, d.l.e.a aVar) {
                    if (aVar == d.l.e.a.ON_STOP) {
                        android.view.Window window = androidx.activity.ComponentActivity.this.getWindow();
                        android.view.View viewPeekDecorView = window != null ? window.peekDecorView() : null;
                        if (viewPeekDecorView != null) {
                            viewPeekDecorView.cancelPendingInputEvents();
                        }
                    }
                }
            });
        }
        getLifecycle().a(new d.l.f() { // from class: androidx.activity.ComponentActivity.4
            @Override // d.l.f
            public void d(d.l.h hVar, d.l.e.a aVar) {
                if (aVar == d.l.e.a.ON_DESTROY) {
                    androidx.activity.ComponentActivity.this.mContextAwareHelper.b = null;
                    if (androidx.activity.ComponentActivity.this.isChangingConfigurations()) {
                        return;
                    }
                    androidx.activity.ComponentActivity.this.getViewModelStore().a();
                }
            }
        });
        getLifecycle().a(new d.l.f() { // from class: androidx.activity.ComponentActivity.5
            @Override // d.l.f
            public void d(d.l.h hVar, d.l.e.a aVar) {
                androidx.activity.ComponentActivity.this.ensureViewModelStore();
                d.l.i iVar = (d.l.i) androidx.activity.ComponentActivity.this.getLifecycle();
                iVar.d("removeObserver");
                iVar.a.e(this);
            }
        });
        int i = android.os.Build.VERSION.SDK_INT;
        if (19 > i || i > 23) {
            return;
        }
        getLifecycle().a(new androidx.activity.ImmLeaksCleaner(this));
    }

    public ComponentActivity(int i) {
        this();
        this.mContentLayoutId = i;
    }

    private void initViewTreeOwners() {
        getWindow().getDecorView().setTag(d.l.a0.a.view_tree_lifecycle_owner, this);
        getWindow().getDecorView().setTag(d.l.b0.a.view_tree_view_model_store_owner, this);
        getWindow().getDecorView().setTag(d.r.a.view_tree_saved_state_registry_owner, this);
    }

    @Override // android.app.Activity
    public void addContentView(@android.annotation.SuppressLint({"UnknownNullness", "MissingNullability"}) android.view.View view, @android.annotation.SuppressLint({"UnknownNullness", "MissingNullability"}) android.view.ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        super.addContentView(view, layoutParams);
    }

    public final void addOnContextAvailableListener(d.a.d.b bVar) {
        d.a.d.a aVar = this.mContextAwareHelper;
        if (aVar.b != null) {
            bVar.a(aVar.b);
        }
        aVar.a.add(bVar);
    }

    public void ensureViewModelStore() {
        if (this.mViewModelStore == null) {
            androidx.activity.ComponentActivity.c cVar = (androidx.activity.ComponentActivity.c) getLastNonConfigurationInstance();
            if (cVar != null) {
                this.mViewModelStore = cVar.b;
            }
            if (this.mViewModelStore == null) {
                this.mViewModelStore = new d.l.y();
            }
        }
    }

    @Override // d.a.e.d
    public final androidx.activity.result.ActivityResultRegistry getActivityResultRegistry() {
        return this.mActivityResultRegistry;
    }

    public d.l.u getDefaultViewModelProviderFactory() {
        if (getApplication() == null) {
            throw new java.lang.IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        if (this.mDefaultFactory == null) {
            this.mDefaultFactory = new d.l.r(getApplication(), this, getIntent() != null ? getIntent().getExtras() : null);
        }
        return this.mDefaultFactory;
    }

    @java.lang.Deprecated
    public java.lang.Object getLastCustomNonConfigurationInstance() {
        androidx.activity.ComponentActivity.c cVar = (androidx.activity.ComponentActivity.c) getLastNonConfigurationInstance();
        if (cVar != null) {
            return cVar.a;
        }
        return null;
    }

    @Override // d.g.e.e, d.l.h
    public d.l.e getLifecycle() {
        return this.mLifecycleRegistry;
    }

    @Override // d.a.c
    public final androidx.activity.OnBackPressedDispatcher getOnBackPressedDispatcher() {
        return this.mOnBackPressedDispatcher;
    }

    @Override // d.r.d
    public final d.r.b getSavedStateRegistry() {
        return this.mSavedStateRegistryController.b;
    }

    @Override // d.l.z
    public d.l.y getViewModelStore() {
        if (getApplication() == null) {
            throw new java.lang.IllegalStateException("Your activity is not yet attached to the Application instance. You can't request ViewModel before onCreate call.");
        }
        ensureViewModelStore();
        return this.mViewModelStore;
    }

    @Override // android.app.Activity
    @java.lang.Deprecated
    public void onActivityResult(int i, int i2, android.content.Intent intent) {
        if (this.mActivityResultRegistry.a(i, i2, intent)) {
            return;
        }
        super.onActivityResult(i, i2, intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        this.mOnBackPressedDispatcher.a();
    }

    @Override // d.g.e.e, android.app.Activity
    public void onCreate(android.os.Bundle bundle) {
        this.mSavedStateRegistryController.a(bundle);
        d.a.d.a aVar = this.mContextAwareHelper;
        aVar.b = this;
        java.util.Iterator<d.a.d.b> it = aVar.a.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
        super.onCreate(bundle);
        androidx.activity.result.ActivityResultRegistry activityResultRegistry = this.mActivityResultRegistry;
        if (activityResultRegistry == null) {
            throw null;
        }
        if (bundle != null) {
            java.util.ArrayList<java.lang.Integer> integerArrayList = bundle.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
            java.util.ArrayList<java.lang.String> stringArrayList = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
            if (stringArrayList != null && integerArrayList != null) {
                int size = stringArrayList.size();
                for (int i = 0; i < size; i++) {
                    int iIntValue = integerArrayList.get(i).intValue();
                    java.lang.String str = stringArrayList.get(i);
                    activityResultRegistry.b.put(java.lang.Integer.valueOf(iIntValue), str);
                    activityResultRegistry.f7c.put(str, java.lang.Integer.valueOf(iIntValue));
                }
                activityResultRegistry.f9e = bundle.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                activityResultRegistry.a = (java.util.Random) bundle.getSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT");
                activityResultRegistry.h.putAll(bundle.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
            }
        }
        d.l.p.c(this);
        int i2 = this.mContentLayoutId;
        if (i2 != 0) {
            setContentView(i2);
        }
    }

    @Override // android.app.Activity
    @java.lang.Deprecated
    public void onRequestPermissionsResult(int i, java.lang.String[] strArr, int[] iArr) {
        if (this.mActivityResultRegistry.a(i, -1, new android.content.Intent().putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr).putExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS", iArr)) || android.os.Build.VERSION.SDK_INT < 23) {
            return;
        }
        super.onRequestPermissionsResult(i, strArr, iArr);
    }

    @java.lang.Deprecated
    public java.lang.Object onRetainCustomNonConfigurationInstance() {
        return null;
    }

    @Override // android.app.Activity
    public final java.lang.Object onRetainNonConfigurationInstance() {
        androidx.activity.ComponentActivity.c cVar;
        java.lang.Object objOnRetainCustomNonConfigurationInstance = onRetainCustomNonConfigurationInstance();
        d.l.y yVar = this.mViewModelStore;
        if (yVar == null && (cVar = (androidx.activity.ComponentActivity.c) getLastNonConfigurationInstance()) != null) {
            yVar = cVar.b;
        }
        if (yVar == null && objOnRetainCustomNonConfigurationInstance == null) {
            return null;
        }
        androidx.activity.ComponentActivity.c cVar2 = new androidx.activity.ComponentActivity.c();
        cVar2.a = objOnRetainCustomNonConfigurationInstance;
        cVar2.b = yVar;
        return cVar2;
    }

    @Override // d.g.e.e, android.app.Activity
    public void onSaveInstanceState(android.os.Bundle bundle) {
        d.l.e lifecycle = getLifecycle();
        if (lifecycle instanceof d.l.i) {
            d.l.i iVar = (d.l.i) lifecycle;
            d.l.e.b bVar = d.l.e.b.CREATED;
            iVar.d("setCurrentState");
            iVar.g(bVar);
        }
        super.onSaveInstanceState(bundle);
        this.mSavedStateRegistryController.b(bundle);
        androidx.activity.result.ActivityResultRegistry activityResultRegistry = this.mActivityResultRegistry;
        if (activityResultRegistry == null) {
            throw null;
        }
        bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new java.util.ArrayList<>(activityResultRegistry.b.keySet()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new java.util.ArrayList<>(activityResultRegistry.b.values()));
        bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new java.util.ArrayList<>(activityResultRegistry.f9e));
        bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (android.os.Bundle) activityResultRegistry.h.clone());
        bundle.putSerializable("KEY_COMPONENT_ACTIVITY_RANDOM_OBJECT", activityResultRegistry.a);
    }

    public android.content.Context peekAvailableContext() {
        return this.mContextAwareHelper.b;
    }

    public final <I, O> d.a.e.c<I> registerForActivityResult(d.a.e.f.a<I, O> aVar, androidx.activity.result.ActivityResultRegistry activityResultRegistry, d.a.e.b<O> bVar) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("activity_rq#");
        sbO.append(this.mNextLocalRequestCode.getAndIncrement());
        return activityResultRegistry.d(sbO.toString(), this, aVar, bVar);
    }

    public final <I, O> d.a.e.c<I> registerForActivityResult(d.a.e.f.a<I, O> aVar, d.a.e.b<O> bVar) {
        return registerForActivityResult(aVar, this.mActivityResultRegistry, bVar);
    }

    public final void removeOnContextAvailableListener(d.a.d.b bVar) {
        this.mContextAwareHelper.a.remove(bVar);
    }

    @Override // android.app.Activity
    public void reportFullyDrawn() {
        try {
            if (d.b.k.r.S()) {
                java.lang.String str = "reportFullyDrawn() for " + getComponentName();
                if (android.os.Build.VERSION.SDK_INT >= 18) {
                    android.os.Trace.beginSection(str);
                }
            }
            if (android.os.Build.VERSION.SDK_INT > 19 || (android.os.Build.VERSION.SDK_INT == 19 && d.g.f.a.a(this, "android.permission.UPDATE_DEVICE_STATS") == 0)) {
                super.reportFullyDrawn();
            }
        } finally {
            if (android.os.Build.VERSION.SDK_INT >= 18) {
                android.os.Trace.endSection();
            }
        }
    }

    @Override // android.app.Activity
    public void setContentView(int i) {
        initViewTreeOwners();
        super.setContentView(i);
    }

    @Override // android.app.Activity
    public void setContentView(@android.annotation.SuppressLint({"UnknownNullness", "MissingNullability"}) android.view.View view) {
        initViewTreeOwners();
        super.setContentView(view);
    }

    @Override // android.app.Activity
    public void setContentView(@android.annotation.SuppressLint({"UnknownNullness", "MissingNullability"}) android.view.View view, @android.annotation.SuppressLint({"UnknownNullness", "MissingNullability"}) android.view.ViewGroup.LayoutParams layoutParams) {
        initViewTreeOwners();
        super.setContentView(view, layoutParams);
    }

    @Override // android.app.Activity
    @java.lang.Deprecated
    public void startActivityForResult(@android.annotation.SuppressLint({"UnknownNullness"}) android.content.Intent intent, int i) {
        super.startActivityForResult(intent, i);
    }

    @Override // android.app.Activity
    @java.lang.Deprecated
    public void startActivityForResult(@android.annotation.SuppressLint({"UnknownNullness"}) android.content.Intent intent, int i, android.os.Bundle bundle) {
        super.startActivityForResult(intent, i, bundle);
    }

    @Override // android.app.Activity
    @java.lang.Deprecated
    public void startIntentSenderForResult(@android.annotation.SuppressLint({"UnknownNullness"}) android.content.IntentSender intentSender, int i, android.content.Intent intent, int i2, int i3, int i4) throws android.content.IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4);
    }

    @Override // android.app.Activity
    @java.lang.Deprecated
    public void startIntentSenderForResult(@android.annotation.SuppressLint({"UnknownNullness"}) android.content.IntentSender intentSender, int i, android.content.Intent intent, int i2, int i3, int i4, android.os.Bundle bundle) throws android.content.IntentSender.SendIntentException {
        super.startIntentSenderForResult(intentSender, i, intent, i2, i3, i4, bundle);
    }
}
