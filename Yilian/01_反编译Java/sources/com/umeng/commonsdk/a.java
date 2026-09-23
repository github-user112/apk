package com.umeng.commonsdk;

/* loaded from: classes.dex */
public class a {
    public static java.lang.Class<?> a;
    public static java.lang.reflect.Method b;

    static {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.umeng.commonsdk.UMInnerImpl");
            a = cls;
            java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("initAndSendInternal", android.content.Context.class);
            if (declaredMethod != null) {
                b = declaredMethod;
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public static void a(android.content.Context context) {
        java.lang.reflect.Method method;
        if (context == null || !com.umeng.commonsdk.utils.UMUtils.isMainProgress(context)) {
            return;
        }
        if (com.umeng.commonsdk.statistics.SdkVersion.SDK_TYPE == 1) {
            com.umeng.commonsdk.UMConfigureInternation.sendInternal(context);
            return;
        }
        java.lang.Class<?> cls = a;
        if (cls == null || (method = b) == null) {
            return;
        }
        try {
            method.invoke(cls, context);
        } catch (java.lang.Throwable unused) {
        }
    }
}
