package com.tencent.tinker.entry;

@com.tencent.tinker.anno.Keep
/* loaded from: classes.dex */
public final class TinkerApplicationInlineFence extends android.os.Handler {
    public final com.tencent.tinker.entry.ApplicationLike mAppLike;

    public TinkerApplicationInlineFence(com.tencent.tinker.entry.ApplicationLike applicationLike) {
        this.mAppLike = applicationLike;
    }

    public static void dummyThrowExceptionMethod() {
        if (com.tencent.tinker.entry.TinkerApplicationInlineFence.class.isPrimitive()) {
            throw new java.lang.RuntimeException();
        }
    }

    private void handleMessageImpl(android.os.Message message) {
        java.lang.Object classLoader;
        switch (message.what) {
            case 1:
                this.mAppLike.onBaseContextAttached((android.content.Context) message.obj);
                return;
            case 2:
                this.mAppLike.onCreate();
                return;
            case 3:
                this.mAppLike.onConfigurationChanged((android.content.res.Configuration) message.obj);
                return;
            case 4:
                this.mAppLike.onTrimMemory(((java.lang.Integer) message.obj).intValue());
                return;
            case 5:
                this.mAppLike.onLowMemory();
                return;
            case 6:
                this.mAppLike.onTerminate();
                return;
            case 7:
                classLoader = this.mAppLike.getClassLoader((java.lang.ClassLoader) message.obj);
                break;
            case 8:
                classLoader = this.mAppLike.getBaseContext((android.content.Context) message.obj);
                break;
            case 9:
                classLoader = this.mAppLike.getAssets((android.content.res.AssetManager) message.obj);
                break;
            case 10:
                classLoader = this.mAppLike.getResources((android.content.res.Resources) message.obj);
                break;
            case 11:
                java.lang.Object[] objArr = (java.lang.Object[]) message.obj;
                classLoader = this.mAppLike.getSystemService((java.lang.String) objArr[0], objArr[1]);
                break;
            case 12:
                classLoader = java.lang.Integer.valueOf(this.mAppLike.mzNightModeUseOf());
                break;
            default:
                throw new java.lang.IllegalStateException("Should not be here.");
        }
        message.obj = classLoader;
    }

    private void handleMessage_$noinline$(android.os.Message message) {
        try {
            dummyThrowExceptionMethod();
        } finally {
            handleMessageImpl(message);
        }
    }

    @Override // android.os.Handler
    public void dispatchMessage(android.os.Message message) {
    }

    @Override // android.os.Handler
    public void handleMessage(android.os.Message message) {
        handleMessage_$noinline$(message);
    }
}
