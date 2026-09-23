package com.umeng.commonsdk.internal.utils;

/* loaded from: classes.dex */
public class j {
    public static final java.lang.String a = "um_pri";
    public static final java.lang.String b = "um_common_strength";

    /* renamed from: c, reason: collision with root package name */
    public static final java.lang.String f1491c = "um_common_battery";

    public static java.lang.String a(android.content.Context context) {
        android.content.SharedPreferences sharedPreferences;
        if (context == null || (sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0)) == null) {
            return null;
        }
        return sharedPreferences.getString(f1491c, null);
    }

    public static void a(android.content.Context context, java.lang.String str) {
        android.content.SharedPreferences sharedPreferences;
        if (context == null || android.text.TextUtils.isEmpty(str) || (sharedPreferences = context.getApplicationContext().getSharedPreferences(a, 0)) == null) {
            return;
        }
        sharedPreferences.edit().putString(f1491c, str).commit();
    }
}
