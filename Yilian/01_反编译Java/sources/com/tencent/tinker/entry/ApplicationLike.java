package com.tencent.tinker.entry;

@com.tencent.tinker.anno.Keep
/* loaded from: classes.dex */
public abstract class ApplicationLike implements com.tencent.tinker.entry.ApplicationLifeCycle {
    public final android.app.Application application;
    public final long applicationStartElapsedTime;
    public final long applicationStartMillisTime;
    public final int tinkerFlags;
    public final boolean tinkerLoadVerifyFlag;
    public final android.content.Intent tinkerResultIntent;

    public ApplicationLike(android.app.Application application, int i, boolean z, long j, long j2, android.content.Intent intent) {
        this.application = application;
        this.tinkerFlags = i;
        this.tinkerLoadVerifyFlag = z;
        this.applicationStartElapsedTime = j;
        this.applicationStartMillisTime = j2;
        this.tinkerResultIntent = intent;
    }

    public android.app.Application getApplication() {
        return this.application;
    }

    public long getApplicationStartElapsedTime() {
        return this.applicationStartElapsedTime;
    }

    public long getApplicationStartMillisTime() {
        return this.applicationStartMillisTime;
    }

    @com.tencent.tinker.anno.Keep
    public android.content.res.AssetManager getAssets(android.content.res.AssetManager assetManager) {
        return assetManager;
    }

    @com.tencent.tinker.anno.Keep
    public android.content.Context getBaseContext(android.content.Context context) {
        return context;
    }

    @com.tencent.tinker.anno.Keep
    public java.lang.ClassLoader getClassLoader(java.lang.ClassLoader classLoader) {
        return classLoader;
    }

    @com.tencent.tinker.anno.Keep
    public android.content.res.Resources getResources(android.content.res.Resources resources) {
        return resources;
    }

    @com.tencent.tinker.anno.Keep
    public java.lang.Object getSystemService(java.lang.String str, java.lang.Object obj) {
        return obj;
    }

    public final int getTinkerFlags() {
        return this.tinkerFlags;
    }

    public final boolean getTinkerLoadVerifyFlag() {
        return this.tinkerLoadVerifyFlag;
    }

    public final android.content.Intent getTinkerResultIntent() {
        return this.tinkerResultIntent;
    }

    @com.tencent.tinker.anno.Keep
    public int mzNightModeUseOf() {
        return 1;
    }

    @Override // com.tencent.tinker.entry.ApplicationLifeCycle
    public void onBaseContextAttached(android.content.Context context) {
    }

    @Override // com.tencent.tinker.entry.ApplicationLifeCycle
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
    }

    @Override // com.tencent.tinker.entry.ApplicationLifeCycle
    public void onCreate() {
    }

    @Override // com.tencent.tinker.entry.ApplicationLifeCycle
    public void onLowMemory() {
    }

    @Override // com.tencent.tinker.entry.ApplicationLifeCycle
    public void onTerminate() {
    }

    @Override // com.tencent.tinker.entry.ApplicationLifeCycle
    public void onTrimMemory(int i) {
    }
}
