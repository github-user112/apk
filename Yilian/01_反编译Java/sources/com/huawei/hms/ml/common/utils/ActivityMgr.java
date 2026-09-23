package com.huawei.hms.ml.common.utils;

/* loaded from: classes.dex */
public final class ActivityMgr implements android.app.Application.ActivityLifecycleCallbacks {
    public static final com.huawei.hms.ml.common.utils.ActivityMgr INST = new com.huawei.hms.ml.common.utils.ActivityMgr();
    public java.lang.ref.WeakReference<android.app.Activity> activity;

    public static java.lang.String toString(java.lang.Object obj) {
        if (obj == null) {
            return "null";
        }
        return obj.getClass().getName() + '@' + java.lang.Integer.toHexString(obj.hashCode());
    }

    public android.app.Activity getCurrentActivity() {
        java.lang.ref.WeakReference<android.app.Activity> weakReference = this.activity;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    public void init(android.app.Application application) {
        if (application == null) {
            com.huawei.hms.ml.common.utils.SmartLog.w("ActivityMgr", "init failed for app is null");
        } else {
            application.unregisterActivityLifecycleCallbacks(INST);
            application.registerActivityLifecycleCallbacks(INST);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(android.app.Activity activity, android.os.Bundle bundle) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onCreated:");
        sbO.append(toString(activity));
        com.huawei.hms.ml.common.utils.SmartLog.d("ActivityMgr", sbO.toString());
        this.activity = new java.lang.ref.WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(android.app.Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(android.app.Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(android.app.Activity activity) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onResumed:");
        sbO.append(toString(activity));
        com.huawei.hms.ml.common.utils.SmartLog.d("ActivityMgr", sbO.toString());
        this.activity = new java.lang.ref.WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(android.app.Activity activity, android.os.Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(android.app.Activity activity) {
        java.lang.StringBuilder sbO = e.a.c.a.a.o("onStarted:");
        sbO.append(toString(activity));
        com.huawei.hms.ml.common.utils.SmartLog.d("ActivityMgr", sbO.toString());
        this.activity = new java.lang.ref.WeakReference<>(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(android.app.Activity activity) {
    }
}
