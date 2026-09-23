package com.umeng.umzid;

/* loaded from: classes.dex */
public class c {
    public static java.lang.String a(android.content.Context context) {
        android.content.SharedPreferences sharedPreferencesA;
        if (context == null || (sharedPreferencesA = com.umeng.umzid.a.a(context)) == null) {
            return null;
        }
        return sharedPreferencesA.getString("aaid", null);
    }

    public static void a(android.content.Context context, java.lang.String str) {
        android.content.SharedPreferences sharedPreferencesA;
        android.content.SharedPreferences.Editor editorEdit;
        if (context == null || str == null || android.text.TextUtils.isEmpty(str) || (sharedPreferencesA = com.umeng.umzid.a.a(context)) == null || (editorEdit = sharedPreferencesA.edit()) == null) {
            return;
        }
        editorEdit.putString(com.umeng.commonsdk.statistics.idtracking.g.a, str).commit();
    }

    public static java.lang.String b(android.content.Context context) {
        android.content.SharedPreferences sharedPreferencesA;
        return (context == null || (sharedPreferencesA = com.umeng.umzid.a.a(context)) == null) ? "" : sharedPreferencesA.getString("zdata", null);
    }

    public static void b(android.content.Context context, java.lang.String str) {
        android.content.SharedPreferences sharedPreferencesA;
        android.content.SharedPreferences.Editor editorEdit;
        if (context == null || str == null || android.text.TextUtils.isEmpty(str) || (sharedPreferencesA = com.umeng.umzid.a.a(context)) == null || (editorEdit = sharedPreferencesA.edit()) == null) {
            return;
        }
        editorEdit.putString(com.umeng.commonsdk.statistics.idtracking.i.f1538d, str).commit();
    }

    public static java.lang.String c(android.content.Context context) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.umeng.commonsdk.statistics.common.DeviceConfig");
            java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("getMac", android.content.Context.class);
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                java.lang.Object objInvoke = declaredMethod.invoke(cls, context);
                if (objInvoke != null && (objInvoke instanceof java.lang.String)) {
                    return (java.lang.String) objInvoke;
                }
            }
        } catch (java.lang.Throwable unused) {
        }
        return "";
    }

    public static void c(android.content.Context context, java.lang.String str) {
        android.content.SharedPreferences sharedPreferencesA;
        android.content.SharedPreferences.Editor editorEdit;
        if (context == null || android.text.TextUtils.isEmpty(str) || (sharedPreferencesA = com.umeng.umzid.a.a(context)) == null || (editorEdit = sharedPreferencesA.edit()) == null) {
            return;
        }
        editorEdit.putString("resetToken", str).commit();
    }

    public static java.lang.String d(android.content.Context context) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.umeng.commonsdk.statistics.common.DeviceConfig");
            java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("getOaid", android.content.Context.class);
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                java.lang.Object objInvoke = declaredMethod.invoke(cls, context);
                if (objInvoke != null && (objInvoke instanceof java.lang.String)) {
                    return (java.lang.String) objInvoke;
                }
            }
        } catch (java.lang.Throwable unused) {
        }
        return "";
    }

    public static void d(android.content.Context context, java.lang.String str) {
        android.content.SharedPreferences sharedPreferencesA;
        android.content.SharedPreferences.Editor editorEdit;
        if (context == null || android.text.TextUtils.isEmpty(str) || (sharedPreferencesA = com.umeng.umzid.a.a(context)) == null || (editorEdit = sharedPreferencesA.edit()) == null) {
            return;
        }
        editorEdit.putString("uabc", str).commit();
    }

    public static void e(android.content.Context context, java.lang.String str) {
        android.content.SharedPreferences sharedPreferencesA;
        android.content.SharedPreferences.Editor editorEdit;
        if (context == null || str == null || android.text.TextUtils.isEmpty(str) || (sharedPreferencesA = com.umeng.umzid.a.a(context)) == null || (editorEdit = sharedPreferencesA.edit()) == null) {
            return;
        }
        editorEdit.putString("aaid", str).commit();
    }

    public static void f(android.content.Context context, java.lang.String str) {
        android.content.SharedPreferences sharedPreferencesA;
        android.content.SharedPreferences.Editor editorEdit;
        if (context == null || str == null || android.text.TextUtils.isEmpty(str) || (sharedPreferencesA = com.umeng.umzid.a.a(context)) == null || (editorEdit = sharedPreferencesA.edit()) == null) {
            return;
        }
        editorEdit.putString("zdata", str).commit();
    }
}
