package com.tencent.tinker.loader.hotplug;

/* loaded from: classes.dex */
public final class ComponentHotplug {
    public static final java.lang.String TAG = "Tinker.ComponentHotplug";
    public static com.tencent.tinker.loader.hotplug.interceptor.ServiceBinderInterceptor sAMSInterceptor = null;
    public static volatile boolean sInstalled = false;
    public static com.tencent.tinker.loader.hotplug.interceptor.HandlerMessageInterceptor sMHMessageInterceptor;
    public static com.tencent.tinker.loader.hotplug.interceptor.ServiceBinderInterceptor sPMSInterceptor;
    public static com.tencent.tinker.loader.hotplug.interceptor.TinkerHackInstrumentation sTinkerHackInstrumentation;

    public ComponentHotplug() {
        throw new java.lang.UnsupportedOperationException();
    }

    public static synchronized void ensureComponentHotplugInstalled(com.tencent.tinker.loader.app.TinkerApplication tinkerApplication) {
        if (sInstalled) {
            try {
                sAMSInterceptor.install();
                sPMSInterceptor.install();
                if (android.os.Build.VERSION.SDK_INT < 27) {
                    sMHMessageInterceptor.install();
                } else {
                    sTinkerHackInstrumentation.install();
                }
            } catch (java.lang.Throwable th) {
                uninstall();
                throw new com.tencent.tinker.loader.hotplug.UnsupportedEnvironmentException(th);
            }
        } else {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "method install() is not invoked, ignore ensuring operations.", new java.lang.Object[0]);
        }
    }

    public static android.os.Handler fetchMHInstance(android.content.Context context) {
        java.lang.Object activityThread = com.tencent.tinker.loader.shareutil.ShareReflectUtil.getActivityThread(context, null);
        if (activityThread == null) {
            throw new java.lang.IllegalStateException("failed to fetch instance of ActivityThread.");
        }
        try {
            return (android.os.Handler) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(activityThread, "mH").get(activityThread);
        } catch (java.lang.Throwable th) {
            throw new java.lang.IllegalStateException(th);
        }
    }

    public static synchronized void install(com.tencent.tinker.loader.app.TinkerApplication tinkerApplication, com.tencent.tinker.loader.shareutil.ShareSecurityCheck shareSecurityCheck) {
        if (!sInstalled) {
            try {
                if (com.tencent.tinker.loader.hotplug.IncrementComponentManager.init(tinkerApplication, shareSecurityCheck)) {
                    sAMSInterceptor = new com.tencent.tinker.loader.hotplug.interceptor.ServiceBinderInterceptor(tinkerApplication, com.tencent.tinker.loader.hotplug.EnvConsts.ACTIVITY_MANAGER_SRVNAME, new com.tencent.tinker.loader.hotplug.handler.AMSInterceptHandler(tinkerApplication));
                    sPMSInterceptor = new com.tencent.tinker.loader.hotplug.interceptor.ServiceBinderInterceptor(tinkerApplication, com.tencent.tinker.loader.hotplug.EnvConsts.PACKAGE_MANAGER_SRVNAME, new com.tencent.tinker.loader.hotplug.handler.PMSInterceptHandler());
                    sAMSInterceptor.install();
                    sPMSInterceptor.install();
                    if (android.os.Build.VERSION.SDK_INT < 27) {
                        com.tencent.tinker.loader.hotplug.interceptor.HandlerMessageInterceptor handlerMessageInterceptor = new com.tencent.tinker.loader.hotplug.interceptor.HandlerMessageInterceptor(fetchMHInstance(tinkerApplication), new com.tencent.tinker.loader.hotplug.handler.MHMessageHandler(tinkerApplication));
                        sMHMessageInterceptor = handlerMessageInterceptor;
                        handlerMessageInterceptor.install();
                    } else {
                        com.tencent.tinker.loader.hotplug.interceptor.TinkerHackInstrumentation tinkerHackInstrumentationCreate = com.tencent.tinker.loader.hotplug.interceptor.TinkerHackInstrumentation.create(tinkerApplication);
                        sTinkerHackInstrumentation = tinkerHackInstrumentationCreate;
                        tinkerHackInstrumentationCreate.install();
                    }
                    sInstalled = true;
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.i(TAG, "installed successfully.", new java.lang.Object[0]);
                }
            } catch (java.lang.Throwable th) {
                uninstall();
                throw new com.tencent.tinker.loader.hotplug.UnsupportedEnvironmentException(th);
            }
        }
    }

    public static synchronized void uninstall() {
        if (sInstalled) {
            try {
                sAMSInterceptor.uninstall();
                sPMSInterceptor.uninstall();
                if (android.os.Build.VERSION.SDK_INT < 27) {
                    sMHMessageInterceptor.uninstall();
                } else {
                    sTinkerHackInstrumentation.uninstall();
                }
            } catch (java.lang.Throwable th) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "exception when uninstall.", th);
            }
            sInstalled = false;
        }
    }
}
