package com.tencent.tinker.loader.app;

/* loaded from: classes.dex */
public abstract class TinkerApplication extends android.app.Application {
    public static final java.lang.String INTENT_PATCH_EXCEPTION = "intent_patch_exception";
    public static final com.tencent.tinker.loader.app.TinkerApplication[] SELF_HOLDER = {null};
    public static final java.lang.String TINKER_LOADER_METHOD = "tryLoad";
    public final java.lang.String delegateClassName;
    public final java.lang.String loaderClassName;
    public java.lang.ClassLoader mCurrentClassLoader;
    public android.os.Handler mInlineFence;
    public final int tinkerFlags;
    public final boolean tinkerLoadVerifyFlag;
    public android.content.Intent tinkerResultIntent;
    public final boolean useDelegateLastClassLoader;
    public final boolean useInterpretModeOnSupported32BitSystem;
    public boolean useSafeMode;

    public TinkerApplication(int i) {
        this(i, "com.tencent.tinker.entry.DefaultApplicationLike");
    }

    public TinkerApplication(int i, java.lang.String str) {
        this(i, str, com.tencent.tinker.loader.TinkerLoader.class.getName(), false);
    }

    public TinkerApplication(int i, java.lang.String str, java.lang.String str2, boolean z) {
        this(i, str, str2, z, true, false);
    }

    public TinkerApplication(int i, java.lang.String str, java.lang.String str2, boolean z, boolean z2) {
        this(i, str, str2, z, z2, false);
    }

    public TinkerApplication(int i, java.lang.String str, java.lang.String str2, boolean z, boolean z2, boolean z3) {
        this.mCurrentClassLoader = null;
        this.mInlineFence = null;
        synchronized (SELF_HOLDER) {
            SELF_HOLDER[0] = this;
        }
        this.tinkerFlags = i;
        this.delegateClassName = str;
        this.loaderClassName = str2;
        this.tinkerLoadVerifyFlag = z;
        this.useDelegateLastClassLoader = z2;
        this.useInterpretModeOnSupported32BitSystem = z3;
    }

    private android.os.Handler createInlineFence(android.app.Application application, int i, java.lang.String str, boolean z, long j, long j2, android.content.Intent intent) {
        try {
            java.lang.Object objNewInstance = java.lang.Class.forName(str, false, this.mCurrentClassLoader).getConstructor(android.app.Application.class, java.lang.Integer.TYPE, java.lang.Boolean.TYPE, java.lang.Long.TYPE, java.lang.Long.TYPE, android.content.Intent.class).newInstance(application, java.lang.Integer.valueOf(i), java.lang.Boolean.valueOf(z), java.lang.Long.valueOf(j), java.lang.Long.valueOf(j2), intent);
            java.lang.reflect.Constructor<?> constructor = java.lang.Class.forName("com.tencent.tinker.entry.TinkerApplicationInlineFence", false, this.mCurrentClassLoader).getConstructor(java.lang.Class.forName("com.tencent.tinker.entry.ApplicationLike", false, this.mCurrentClassLoader));
            constructor.setAccessible(true);
            return (android.os.Handler) constructor.newInstance(objNewInstance);
        } catch (java.lang.Throwable th) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("createInlineFence failed", th);
        }
    }

    public static com.tencent.tinker.loader.app.TinkerApplication getInstance() {
        com.tencent.tinker.loader.app.TinkerApplication tinkerApplication;
        synchronized (SELF_HOLDER) {
            if (SELF_HOLDER[0] == null) {
                throw new java.lang.IllegalStateException("TinkerApplication is not initialized.");
            }
            tinkerApplication = SELF_HOLDER[0];
        }
        return tinkerApplication;
    }

    private void loadTinker() {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName(this.loaderClassName, false, com.tencent.tinker.loader.app.TinkerApplication.class.getClassLoader());
            this.tinkerResultIntent = (android.content.Intent) cls.getMethod(TINKER_LOADER_METHOD, com.tencent.tinker.loader.app.TinkerApplication.class).invoke(cls.getConstructor(new java.lang.Class[0]).newInstance(new java.lang.Object[0]), this);
        } catch (java.lang.Throwable th) {
            android.content.Intent intent = new android.content.Intent();
            this.tinkerResultIntent = intent;
            com.tencent.tinker.loader.shareutil.ShareIntentUtil.setIntentReturnCode(intent, -20);
            this.tinkerResultIntent.putExtra("intent_patch_exception", th);
        }
    }

    @Override // android.content.ContextWrapper
    public void attachBaseContext(android.content.Context context) {
        super.attachBaseContext(context);
        long jElapsedRealtime = android.os.SystemClock.elapsedRealtime();
        long jCurrentTimeMillis = java.lang.System.currentTimeMillis();
        java.lang.Thread.setDefaultUncaughtExceptionHandler(new com.tencent.tinker.loader.TinkerUncaughtHandler(this));
        onBaseContextAttached(context, jElapsedRealtime, jCurrentTimeMillis);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.AssetManager getAssets() {
        android.content.res.AssetManager assets = super.getAssets();
        android.os.Handler handler = this.mInlineFence;
        return handler == null ? assets : com.tencent.tinker.loader.app.TinkerInlineFenceAction.callGetAssets(handler, assets);
    }

    @Override // android.content.ContextWrapper
    public android.content.Context getBaseContext() {
        android.content.Context baseContext = super.getBaseContext();
        android.os.Handler handler = this.mInlineFence;
        return handler == null ? baseContext : com.tencent.tinker.loader.app.TinkerInlineFenceAction.callGetBaseContext(handler, baseContext);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public java.lang.ClassLoader getClassLoader() {
        java.lang.ClassLoader classLoader = super.getClassLoader();
        android.os.Handler handler = this.mInlineFence;
        return handler == null ? classLoader : com.tencent.tinker.loader.app.TinkerInlineFenceAction.callGetClassLoader(handler, classLoader);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public android.content.res.Resources getResources() {
        android.content.res.Resources resources = super.getResources();
        android.os.Handler handler = this.mInlineFence;
        return handler == null ? resources : com.tencent.tinker.loader.app.TinkerInlineFenceAction.callGetResources(handler, resources);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public java.lang.Object getSystemService(java.lang.String str) {
        java.lang.Object systemService = super.getSystemService(str);
        android.os.Handler handler = this.mInlineFence;
        return handler == null ? systemService : com.tencent.tinker.loader.app.TinkerInlineFenceAction.callGetSystemService(handler, str, systemService);
    }

    public int getTinkerFlags() {
        return this.tinkerFlags;
    }

    public boolean isTinkerLoadVerifyFlag() {
        return this.tinkerLoadVerifyFlag;
    }

    public boolean isUseDelegateLastClassLoader() {
        return this.useDelegateLastClassLoader;
    }

    public boolean isUseInterpretModeOnSupported32BitSystem() {
        return this.useInterpretModeOnSupported32BitSystem;
    }

    @com.tencent.tinker.anno.Keep
    public int mzNightModeUseOf() {
        android.os.Handler handler = this.mInlineFence;
        if (handler == null) {
            return 1;
        }
        return com.tencent.tinker.loader.app.TinkerInlineFenceAction.callMZNightModeUseOf(handler);
    }

    public void onBaseContextAttached(android.content.Context context, long j, long j2) {
        try {
            loadTinker();
            this.mCurrentClassLoader = context.getClassLoader();
            android.os.Handler handlerCreateInlineFence = createInlineFence(this, this.tinkerFlags, this.delegateClassName, this.tinkerLoadVerifyFlag, j, j2, this.tinkerResultIntent);
            this.mInlineFence = handlerCreateInlineFence;
            com.tencent.tinker.loader.app.TinkerInlineFenceAction.callOnBaseContextAttached(handlerCreateInlineFence, context);
            if (this.useSafeMode) {
                com.tencent.tinker.loader.shareutil.ShareTinkerInternals.setSafeModeCount(this, 0);
            }
        } catch (com.tencent.tinker.loader.TinkerRuntimeException e2) {
            throw e2;
        } catch (java.lang.Throwable th) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException(th.getMessage(), th);
        }
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onConfigurationChanged(android.content.res.Configuration configuration) throws java.lang.Throwable {
        super.onConfigurationChanged(configuration);
        android.os.Handler handler = this.mInlineFence;
        if (handler == null) {
            return;
        }
        com.tencent.tinker.loader.app.TinkerInlineFenceAction.callOnConfigurationChanged(handler, configuration);
    }

    @Override // android.app.Application
    public void onCreate() throws java.lang.Throwable {
        super.onCreate();
        android.os.Handler handler = this.mInlineFence;
        if (handler == null) {
            return;
        }
        com.tencent.tinker.loader.app.TinkerInlineFenceAction.callOnCreate(handler);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() throws java.lang.Throwable {
        super.onLowMemory();
        android.os.Handler handler = this.mInlineFence;
        if (handler == null) {
            return;
        }
        com.tencent.tinker.loader.app.TinkerInlineFenceAction.callOnLowMemory(handler);
    }

    @Override // android.app.Application
    public void onTerminate() throws java.lang.Throwable {
        super.onTerminate();
        android.os.Handler handler = this.mInlineFence;
        if (handler == null) {
            return;
        }
        com.tencent.tinker.loader.app.TinkerInlineFenceAction.callOnTerminate(handler);
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    @android.annotation.TargetApi(14)
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        android.os.Handler handler = this.mInlineFence;
        if (handler == null) {
            return;
        }
        com.tencent.tinker.loader.app.TinkerInlineFenceAction.callOnTrimMemory(handler, i);
    }

    public void setUseSafeMode(boolean z) {
        this.useSafeMode = z;
    }
}
