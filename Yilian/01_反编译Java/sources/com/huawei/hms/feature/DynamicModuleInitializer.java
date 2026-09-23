package com.huawei.hms.feature;

/* loaded from: classes.dex */
public class DynamicModuleInitializer {
    public static java.lang.ref.WeakReference<android.content.Context> sContext;

    public static android.content.Context getContext() {
        java.lang.ref.WeakReference<android.content.Context> weakReference = sContext;
        if (weakReference != null) {
            return weakReference.get();
        }
        android.util.Log.i("DynamicModuleInitia", "getContext: is null");
        return null;
    }

    public static void initializeModule(android.content.Context context) {
        sContext = new java.lang.ref.WeakReference<>(context);
    }
}
