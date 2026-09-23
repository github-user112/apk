package com.umeng.common;

/* loaded from: classes.dex */
public final class b {
    public static com.umeng.common.b a = null;
    public static android.content.Context b = null;

    /* renamed from: c, reason: collision with root package name */
    public static java.lang.String f1419c = null;

    /* renamed from: d, reason: collision with root package name */
    public static final java.lang.String f1420d = "mobclick_agent_user_";

    public static final class a {
        public static final com.umeng.common.b a = new com.umeng.common.b();
    }

    public static synchronized com.umeng.common.b a(android.content.Context context) {
        if (b == null && context != null) {
            b = context.getApplicationContext();
        }
        if (b != null) {
            f1419c = context.getPackageName();
        }
        return com.umeng.common.b.a.a;
    }

    private android.content.SharedPreferences e() {
        android.content.Context context = b;
        if (context == null) {
            return null;
        }
        java.lang.StringBuilder sbO = e.a.c.a.a.o("mobclick_agent_user_");
        sbO.append(f1419c);
        return context.getSharedPreferences(sbO.toString(), 0);
    }

    public void a(int i) {
        android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putInt("vt", i).commit();
        }
    }

    public void a(java.lang.String str) {
        android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(b);
        if (sharedPreferences != null) {
            sharedPreferences.edit().putString("st", str).commit();
        }
    }

    public void a(java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str) || android.text.TextUtils.isEmpty(str2)) {
            return;
        }
        android.content.SharedPreferences.Editor editorEdit = e().edit();
        editorEdit.putString("au_p", str);
        editorEdit.putString("au_u", str2);
        editorEdit.commit();
    }

    public java.lang.String[] a() {
        android.content.SharedPreferences sharedPreferencesE = e();
        if (sharedPreferencesE == null) {
            return null;
        }
        java.lang.String string = sharedPreferencesE.getString("au_p", null);
        java.lang.String string2 = sharedPreferencesE.getString("au_u", null);
        if (android.text.TextUtils.isEmpty(string) || android.text.TextUtils.isEmpty(string2)) {
            return null;
        }
        return new java.lang.String[]{string, string2};
    }

    public void b() {
        android.content.SharedPreferences sharedPreferencesE = e();
        if (sharedPreferencesE != null) {
            sharedPreferencesE.edit().remove("au_p").remove("au_u").commit();
        }
    }

    public java.lang.String c() {
        android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(b);
        if (sharedPreferences != null) {
            return sharedPreferences.getString("st", null);
        }
        return null;
    }

    public int d() {
        android.content.SharedPreferences sharedPreferences = com.umeng.commonsdk.statistics.internal.PreferenceWrapper.getDefault(b);
        if (sharedPreferences != null) {
            return sharedPreferences.getInt("vt", 0);
        }
        return 0;
    }
}
