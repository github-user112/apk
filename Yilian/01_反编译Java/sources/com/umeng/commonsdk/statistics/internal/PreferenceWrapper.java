package com.umeng.commonsdk.statistics.internal;

/* loaded from: classes.dex */
public class PreferenceWrapper {
    public static final java.lang.String DEFAULT_PREFERENCE = "umeng_general_config";

    public static android.content.SharedPreferences getDefault(android.content.Context context) {
        if (context != null) {
            return context.getSharedPreferences("umeng_general_config", 0);
        }
        return null;
    }

    public static android.content.SharedPreferences getInstance(android.content.Context context, java.lang.String str) {
        if (context != null) {
            return context.getSharedPreferences(str, 0);
        }
        return null;
    }
}
