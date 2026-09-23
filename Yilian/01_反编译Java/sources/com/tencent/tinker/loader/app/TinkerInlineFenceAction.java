package com.tencent.tinker.loader.app;

/* loaded from: classes.dex */
public final class TinkerInlineFenceAction {
    public static final int ACTION_GET_ASSETS = 9;
    public static final int ACTION_GET_BASE_CONTEXT = 8;
    public static final int ACTION_GET_CLASSLOADER = 7;
    public static final int ACTION_GET_RESOURCES = 10;
    public static final int ACTION_GET_SYSTEM_SERVICE = 11;
    public static final int ACTION_MZ_NIGHTMODE_USE_OF = 12;
    public static final int ACTION_ON_BASE_CONTEXT_ATTACHED = 1;
    public static final int ACTION_ON_CONFIGURATION_CHANGED = 3;
    public static final int ACTION_ON_CREATE = 2;
    public static final int ACTION_ON_LOW_MEMORY = 5;
    public static final int ACTION_ON_TERMINATE = 6;
    public static final int ACTION_ON_TRIM_MEMORY = 4;

    public static android.content.res.AssetManager callGetAssets(android.os.Handler handler, android.content.res.AssetManager assetManager) throws java.lang.Throwable {
        android.os.Message messageObtain;
        try {
            messageObtain = android.os.Message.obtain(handler, 9, assetManager);
            try {
                handler.handleMessage(messageObtain);
                android.content.res.AssetManager assetManager2 = (android.content.res.AssetManager) messageObtain.obj;
                messageObtain.recycle();
                return assetManager2;
            } catch (java.lang.Throwable th) {
                th = th;
                messageObtain.recycle();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            messageObtain = null;
        }
    }

    public static android.content.Context callGetBaseContext(android.os.Handler handler, android.content.Context context) throws java.lang.Throwable {
        android.os.Message messageObtain;
        try {
            messageObtain = android.os.Message.obtain(handler, 8, context);
            try {
                handler.handleMessage(messageObtain);
                android.content.Context context2 = (android.content.Context) messageObtain.obj;
                messageObtain.recycle();
                return context2;
            } catch (java.lang.Throwable th) {
                th = th;
                messageObtain.recycle();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            messageObtain = null;
        }
    }

    public static java.lang.ClassLoader callGetClassLoader(android.os.Handler handler, java.lang.ClassLoader classLoader) throws java.lang.Throwable {
        android.os.Message messageObtain;
        try {
            messageObtain = android.os.Message.obtain(handler, 7, classLoader);
            try {
                handler.handleMessage(messageObtain);
                java.lang.ClassLoader classLoader2 = (java.lang.ClassLoader) messageObtain.obj;
                messageObtain.recycle();
                return classLoader2;
            } catch (java.lang.Throwable th) {
                th = th;
                messageObtain.recycle();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            messageObtain = null;
        }
    }

    public static android.content.res.Resources callGetResources(android.os.Handler handler, android.content.res.Resources resources) throws java.lang.Throwable {
        android.os.Message messageObtain;
        try {
            messageObtain = android.os.Message.obtain(handler, 10, resources);
            try {
                handler.handleMessage(messageObtain);
                android.content.res.Resources resources2 = (android.content.res.Resources) messageObtain.obj;
                messageObtain.recycle();
                return resources2;
            } catch (java.lang.Throwable th) {
                th = th;
                messageObtain.recycle();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            messageObtain = null;
        }
    }

    public static java.lang.Object callGetSystemService(android.os.Handler handler, java.lang.String str, java.lang.Object obj) {
        android.os.Message messageObtain = null;
        try {
            messageObtain = android.os.Message.obtain(handler, 11, new java.lang.Object[]{str, obj});
            handler.handleMessage(messageObtain);
            return messageObtain.obj;
        } finally {
            messageObtain.recycle();
        }
    }

    public static int callMZNightModeUseOf(android.os.Handler handler) throws java.lang.Throwable {
        android.os.Message messageObtain;
        try {
            messageObtain = android.os.Message.obtain(handler, 12);
            try {
                handler.handleMessage(messageObtain);
                int iIntValue = ((java.lang.Integer) messageObtain.obj).intValue();
                messageObtain.recycle();
                return iIntValue;
            } catch (java.lang.Throwable th) {
                th = th;
                messageObtain.recycle();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            messageObtain = null;
        }
    }

    public static void callOnBaseContextAttached(android.os.Handler handler, android.content.Context context) throws java.lang.Throwable {
        android.os.Message messageObtain;
        try {
            messageObtain = android.os.Message.obtain(handler, 1, context);
            try {
                handler.handleMessage(messageObtain);
                messageObtain.recycle();
            } catch (java.lang.Throwable th) {
                th = th;
                messageObtain.recycle();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            messageObtain = null;
        }
    }

    public static void callOnConfigurationChanged(android.os.Handler handler, android.content.res.Configuration configuration) throws java.lang.Throwable {
        android.os.Message messageObtain;
        try {
            messageObtain = android.os.Message.obtain(handler, 3, configuration);
            try {
                handler.handleMessage(messageObtain);
                messageObtain.recycle();
            } catch (java.lang.Throwable th) {
                th = th;
                messageObtain.recycle();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            messageObtain = null;
        }
    }

    public static void callOnCreate(android.os.Handler handler) throws java.lang.Throwable {
        android.os.Message messageObtain;
        try {
            messageObtain = android.os.Message.obtain(handler, 2);
            try {
                handler.handleMessage(messageObtain);
                messageObtain.recycle();
            } catch (java.lang.Throwable th) {
                th = th;
                messageObtain.recycle();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            messageObtain = null;
        }
    }

    public static void callOnLowMemory(android.os.Handler handler) throws java.lang.Throwable {
        android.os.Message messageObtain;
        try {
            messageObtain = android.os.Message.obtain(handler, 5);
            try {
                handler.handleMessage(messageObtain);
                messageObtain.recycle();
            } catch (java.lang.Throwable th) {
                th = th;
                messageObtain.recycle();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            messageObtain = null;
        }
    }

    public static void callOnTerminate(android.os.Handler handler) throws java.lang.Throwable {
        android.os.Message messageObtain;
        try {
            messageObtain = android.os.Message.obtain(handler, 6);
            try {
                handler.handleMessage(messageObtain);
                messageObtain.recycle();
            } catch (java.lang.Throwable th) {
                th = th;
                messageObtain.recycle();
                throw th;
            }
        } catch (java.lang.Throwable th2) {
            th = th2;
            messageObtain = null;
        }
    }

    public static void callOnTrimMemory(android.os.Handler handler, int i) {
        android.os.Message messageObtain = null;
        try {
            messageObtain = android.os.Message.obtain(handler, 4, java.lang.Integer.valueOf(i));
            handler.handleMessage(messageObtain);
        } finally {
            messageObtain.recycle();
        }
    }
}
