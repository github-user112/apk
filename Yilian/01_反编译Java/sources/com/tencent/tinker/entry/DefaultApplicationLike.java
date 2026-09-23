package com.tencent.tinker.entry;

@com.tencent.tinker.anno.Keep
/* loaded from: classes.dex */
public class DefaultApplicationLike extends com.tencent.tinker.entry.ApplicationLike {
    public static final java.lang.String TAG = "Tinker.DefaultAppLike";

    public DefaultApplicationLike(android.app.Application application, int i, boolean z, long j, long j2, android.content.Intent intent) {
        super(application, i, z, j, j2, intent);
    }

    @Override // com.tencent.tinker.entry.ApplicationLike, com.tencent.tinker.entry.ApplicationLifeCycle
    public void onBaseContextAttached(android.content.Context context) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.d(TAG, "onBaseContextAttached:", new java.lang.Object[0]);
    }

    @Override // com.tencent.tinker.entry.ApplicationLike, com.tencent.tinker.entry.ApplicationLifeCycle
    public void onConfigurationChanged(android.content.res.Configuration configuration) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onConfigurationChanged:");
        sbO.append(configuration.toString());
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.d(TAG, sbO.toString(), new java.lang.Object[0]);
    }

    @Override // com.tencent.tinker.entry.ApplicationLike, com.tencent.tinker.entry.ApplicationLifeCycle
    public void onCreate() {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.d(TAG, "onCreate", new java.lang.Object[0]);
    }

    @Override // com.tencent.tinker.entry.ApplicationLike, com.tencent.tinker.entry.ApplicationLifeCycle
    public void onLowMemory() {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.d(TAG, "onLowMemory", new java.lang.Object[0]);
    }

    @Override // com.tencent.tinker.entry.ApplicationLike, com.tencent.tinker.entry.ApplicationLifeCycle
    public void onTerminate() {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.d(TAG, "onTerminate", new java.lang.Object[0]);
    }

    @Override // com.tencent.tinker.entry.ApplicationLike, com.tencent.tinker.entry.ApplicationLifeCycle
    public void onTrimMemory(int i) {
        com.tencent.tinker.loader.shareutil.ShareTinkerLog.d(TAG, e.a.c.a.a.K("onTrimMemory level:", i), new java.lang.Object[0]);
    }
}
