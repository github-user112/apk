package com.tencent.tinker.loader.hotplug.handler;

/* loaded from: classes.dex */
public class MHMessageHandler implements com.tencent.tinker.loader.hotplug.interceptor.HandlerMessageInterceptor.MessageHandler {
    public static final int LAUNCH_ACTIVITY;
    public static final java.lang.String TAG = "Tinker.MHMsgHndlr";
    public final android.content.Context mContext;

    static {
        int i = 100;
        if (android.os.Build.VERSION.SDK_INT < 27) {
            try {
                i = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(java.lang.Class.forName("android.app.ActivityThread$H"), "LAUNCH_ACTIVITY").getInt(null);
            } catch (java.lang.Throwable unused) {
            }
        }
        LAUNCH_ACTIVITY = i;
    }

    public MHMessageHandler(android.content.Context context) {
        android.content.Context baseContext;
        while ((context instanceof android.content.ContextWrapper) && (baseContext = ((android.content.ContextWrapper) context).getBaseContext()) != null) {
            context = baseContext;
        }
        this.mContext = context;
    }

    private <T> void copyInstanceFields(T t, T t2) {
        if (t == null || t2 == null) {
            return;
        }
        for (java.lang.Class<?> superclass = t.getClass(); !superclass.equals(java.lang.Object.class); superclass = superclass.getSuperclass()) {
            for (java.lang.reflect.Field field : superclass.getDeclaredFields()) {
                if (!field.isSynthetic() && !java.lang.reflect.Modifier.isStatic(field.getModifiers())) {
                    if (!field.isAccessible()) {
                        field.setAccessible(true);
                    }
                    try {
                        field.set(t2, field.get(t));
                    } catch (java.lang.Throwable unused) {
                    }
                }
            }
        }
    }

    private void fixActivityScreenOrientation(java.lang.Object obj, int i) {
        if (i == -1) {
            i = 2;
        }
        try {
            java.lang.Object obj2 = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(obj, "token").get(obj);
            java.lang.Object objInvoke = com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(java.lang.Class.forName("android.app.ActivityManagerNative"), "getDefault", (java.lang.Class<?>[]) new java.lang.Class[0]).invoke(null, new java.lang.Object[0]);
            com.tencent.tinker.loader.shareutil.ShareReflectUtil.findMethod(objInvoke, "setRequestedOrientation", (java.lang.Class<?>[]) new java.lang.Class[]{android.os.IBinder.class, java.lang.Integer.TYPE}).invoke(objInvoke, obj2, java.lang.Integer.valueOf(i));
        } catch (java.lang.Throwable th) {
            com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "Failed to fix screen orientation.", th);
        }
    }

    private void fixStubActivityInfo(android.content.pm.ActivityInfo activityInfo, android.content.pm.ActivityInfo activityInfo2) {
        copyInstanceFields(activityInfo2, activityInfo);
    }

    @Override // com.tencent.tinker.loader.hotplug.interceptor.HandlerMessageInterceptor.MessageHandler
    public boolean handleMessage(android.os.Message message) {
        if (message.what == LAUNCH_ACTIVITY) {
            try {
                java.lang.Object obj = message.obj;
                if (obj == null) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "msg: [" + message.what + "] has no 'obj' value.", new java.lang.Object[0]);
                    return false;
                }
                android.content.Intent intent = (android.content.Intent) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(obj, "intent").get(obj);
                if (intent == null) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "cannot fetch intent from message received by mH.", new java.lang.Object[0]);
                    return false;
                }
                com.tencent.tinker.loader.shareutil.ShareIntentUtil.fixIntentClassLoader(intent, this.mContext.getClassLoader());
                android.content.ComponentName componentName = (android.content.ComponentName) intent.getParcelableExtra(com.tencent.tinker.loader.hotplug.EnvConsts.INTENT_EXTRA_OLD_COMPONENT);
                if (componentName == null) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.w(TAG, "oldComponent was null, start " + intent.getComponent() + " next.", new java.lang.Object[0]);
                    return false;
                }
                android.content.pm.ActivityInfo activityInfo = (android.content.pm.ActivityInfo) com.tencent.tinker.loader.shareutil.ShareReflectUtil.findField(obj, "activityInfo").get(obj);
                if (activityInfo == null) {
                    return false;
                }
                android.content.pm.ActivityInfo activityInfoQueryActivityInfo = com.tencent.tinker.loader.hotplug.IncrementComponentManager.queryActivityInfo(componentName.getClassName());
                if (activityInfoQueryActivityInfo == null) {
                    com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "Failed to query target activity's info, perhaps the target is not hotpluged component. Target: " + componentName.getClassName(), new java.lang.Object[0]);
                    return false;
                }
                fixActivityScreenOrientation(obj, activityInfoQueryActivityInfo.screenOrientation);
                fixStubActivityInfo(activityInfo, activityInfoQueryActivityInfo);
                intent.setComponent(componentName);
                intent.removeExtra(com.tencent.tinker.loader.hotplug.EnvConsts.INTENT_EXTRA_OLD_COMPONENT);
            } catch (java.lang.Throwable th) {
                com.tencent.tinker.loader.shareutil.ShareTinkerLog.e(TAG, "exception in handleMessage.", th);
            }
        }
        return false;
    }
}
