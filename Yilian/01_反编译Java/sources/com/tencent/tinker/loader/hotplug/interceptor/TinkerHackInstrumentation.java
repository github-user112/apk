package com.tencent.tinker.loader.hotplug.interceptor;

/* loaded from: classes.dex */
public class TinkerHackInstrumentation extends android.app.Instrumentation {
    public static final java.lang.String TAG = "Tinker.Instrumentation";
    public final java.lang.Object mActivityThread;
    public final java.lang.reflect.Field mInstrumentationField;
    public final android.app.Instrumentation mOriginal;

    public TinkerHackInstrumentation(android.app.Instrumentation instrumentation, java.lang.Object obj, java.lang.reflect.Field field) {
        this.mOriginal = instrumentation;
        this.mActivityThread = obj;
        this.mInstrumentationField = field;
        try {
            copyAllFields(instrumentation);
        } catch (java.lang.Throwable th) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException(th.getMessage(), th);
        }
    }

    private void copyAllFields(android.app.Instrumentation instrumentation) throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        java.lang.reflect.Field[] declaredFields = android.app.Instrumentation.class.getDeclaredFields();
        for (int i = 0; i < declaredFields.length; i++) {
            declaredFields[i].setAccessible(true);
            declaredFields[i].set(this, declaredFields[i].get(instrumentation));
        }
    }

    public static com.tencent.tinker.loader.hotplug.interceptor.TinkerHackInstrumentation create(android.content.Context context) {
        try {
            java.lang.Object activityThread = com.tencent.tinker.loader.shareutil.ShareReflectUtil.getActivityThread(context, null);
            java.lang.reflect.Field fieldFindField = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(activityThread, "mInstrumentation");
            android.app.Instrumentation instrumentation = (android.app.Instrumentation) fieldFindField.get(activityThread);
            return instrumentation instanceof com.tencent.tinker.loader.hotplug.interceptor.TinkerHackInstrumentation ? (com.tencent.tinker.loader.hotplug.interceptor.TinkerHackInstrumentation) instrumentation : new com.tencent.tinker.loader.hotplug.interceptor.TinkerHackInstrumentation(instrumentation, activityThread, fieldFindField);
        } catch (java.lang.Throwable th) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("see next stacktrace", th);
        }
    }

    private void fixActivityParams(android.app.Activity activity, android.content.pm.ActivityInfo activityInfo) {
        activity.setRequestedOrientation(activityInfo.screenOrientation);
        activity.setTheme(activityInfo.theme);
        try {
            com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(activity, "mActivityInfo").set(activity, activityInfo);
        } catch (java.lang.Throwable th) {
            throw new com.tencent.tinker.loader.TinkerRuntimeException("see next stacktrace.", th);
        }
    }

    private boolean processIntent(java.lang.ClassLoader classLoader, android.content.Intent intent) {
        if (intent == null) {
            return false;
        }
        com.tencent.tinker.loader.shareutil.ShareIntentUtil.fixIntentClassLoader(intent, classLoader);
        android.content.ComponentName componentName = (android.content.ComponentName) intent.getParcelableExtra(com.tencent.tinker.loader.hotplug.EnvConsts.INTENT_EXTRA_OLD_COMPONENT);
        if (componentName == null) {
            java.lang.StringBuilder sbO = e.a.c.a.a.o("oldComponent was null, start ");
            sbO.append(intent.getComponent());
            sbO.append(" next.");
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, sbO.toString(), new java.lang.Object[0]);
            return false;
        }
        java.lang.String className = componentName.getClassName();
        if (com.tencent.tinker.loader.hotplug.IncrementComponentManager.queryActivityInfo(className) == null) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, e.a.c.a.a.e("Failed to query target activity's info, perhaps the target is not hotpluged component. Target: ", className), new java.lang.Object[0]);
            return false;
        }
        intent.setComponent(componentName);
        intent.removeExtra(com.tencent.tinker.loader.hotplug.EnvConsts.INTENT_EXTRA_OLD_COMPONENT);
        return true;
    }

    @Override // android.app.Instrumentation
    public void callActivityOnCreate(android.app.Activity activity, android.os.Bundle bundle) {
        android.content.pm.ActivityInfo activityInfoQueryActivityInfo;
        if (activity != null && (activityInfoQueryActivityInfo = com.tencent.tinker.loader.hotplug.IncrementComponentManager.queryActivityInfo(activity.getClass().getName())) != null) {
            fixActivityParams(activity, activityInfoQueryActivityInfo);
        }
        super.callActivityOnCreate(activity, bundle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnCreate(android.app.Activity activity, android.os.Bundle bundle, android.os.PersistableBundle persistableBundle) {
        android.content.pm.ActivityInfo activityInfoQueryActivityInfo;
        if (activity != null && (activityInfoQueryActivityInfo = com.tencent.tinker.loader.hotplug.IncrementComponentManager.queryActivityInfo(activity.getClass().getName())) != null) {
            fixActivityParams(activity, activityInfoQueryActivityInfo);
        }
        super.callActivityOnCreate(activity, bundle, persistableBundle);
    }

    @Override // android.app.Instrumentation
    public void callActivityOnNewIntent(android.app.Activity activity, android.content.Intent intent) {
        if (activity != null) {
            processIntent(activity.getClass().getClassLoader(), intent);
        }
        super.callActivityOnNewIntent(activity, intent);
    }

    public void install() throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        if (this.mInstrumentationField.get(this.mActivityThread) instanceof com.tencent.tinker.loader.hotplug.interceptor.TinkerHackInstrumentation) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "already installed, skip rest logic.", new java.lang.Object[0]);
        } else {
            this.mInstrumentationField.set(this.mActivityThread, this);
        }
    }

    @Override // android.app.Instrumentation
    public android.app.Activity newActivity(java.lang.Class<?> cls, android.content.Context context, android.os.IBinder iBinder, android.app.Application application, android.content.Intent intent, android.content.pm.ActivityInfo activityInfo, java.lang.CharSequence charSequence, android.app.Activity activity, java.lang.String str, java.lang.Object obj) {
        processIntent(context.getClassLoader(), intent);
        return super.newActivity(cls, context, iBinder, application, intent, activityInfo, charSequence, activity, str, obj);
    }

    @Override // android.app.Instrumentation
    public android.app.Activity newActivity(java.lang.ClassLoader classLoader, java.lang.String str, android.content.Intent intent) {
        return processIntent(classLoader, intent) ? super.newActivity(classLoader, intent.getComponent().getClassName(), intent) : super.newActivity(classLoader, str, intent);
    }

    public void uninstall() throws java.lang.IllegalAccessException, java.lang.IllegalArgumentException {
        this.mInstrumentationField.set(this.mActivityThread, this.mOriginal);
    }
}
