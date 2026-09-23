package com.huawei.hms.scankit.p;

@android.annotation.SuppressLint({"ApplySharedPref"})
/* renamed from: com.huawei.hms.scankit.p.da, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public class C0131da {
    public static java.lang.String a(android.content.Context context, java.lang.String str) {
        java.lang.String packageName = context.getPackageName();
        java.lang.String strD = com.huawei.hms.scankit.p.AbstractC0125c.d("_hms_config_tag", "oper");
        if (android.text.TextUtils.isEmpty(strD)) {
            return e.a.c.a.a.g("hms_", str, "_", packageName);
        }
        return "hms_" + str + "_" + packageName + "_" + strD;
    }

    public static void a(android.content.Context context, java.lang.String str, java.lang.String str2, long j) {
        if (context == null || android.text.TextUtils.isEmpty(str) || android.text.TextUtils.isEmpty(str2)) {
            com.huawei.hms.scankit.p.T.c("SharedPreUtils", "context is null or spName empty or spkey is empty");
            return;
        }
        android.content.SharedPreferences sharedPreferencesB = b(context, str);
        if (sharedPreferencesB != null) {
            android.content.SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
            editorEdit.putLong(str2, j);
            editorEdit.commit();
        }
    }

    public static void a(android.content.Context context, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if (context == null || android.text.TextUtils.isEmpty(str) || android.text.TextUtils.isEmpty(str2)) {
            com.huawei.hms.scankit.p.T.c("SharedPreUtils", "context is null or spName empty or spkey is empty");
            return;
        }
        android.content.SharedPreferences sharedPreferencesB = b(context, str);
        if (sharedPreferencesB != null) {
            android.content.SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
            editorEdit.putString(str2, str3);
            editorEdit.commit();
        }
    }

    public static void a(android.content.Context context, java.lang.String str, java.lang.String... strArr) {
        java.lang.String str2;
        if (context == null || android.text.TextUtils.isEmpty(str)) {
            str2 = "clearData(): parameter error.context,spname";
        } else {
            if (strArr != null) {
                android.content.SharedPreferences sharedPreferencesB = b(context, str);
                if (sharedPreferencesB != null) {
                    android.content.SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
                    if (strArr.length == 0) {
                        editorEdit.clear();
                        editorEdit.commit();
                        return;
                    }
                    for (java.lang.String str3 : strArr) {
                        if (sharedPreferencesB.contains(str3)) {
                            editorEdit.remove(str3);
                            editorEdit.commit();
                        }
                    }
                    return;
                }
                return;
            }
            str2 = "clearData(): No data need to be deleted,keys is null";
        }
        com.huawei.hms.scankit.p.T.c("SharedPreUtils", str2);
    }

    public static long b(android.content.Context context, java.lang.String str, java.lang.String str2, long j) {
        if (context == null || android.text.TextUtils.isEmpty(str) || android.text.TextUtils.isEmpty(str2)) {
            com.huawei.hms.scankit.p.T.c("SharedPreUtils", "context is null or spName empty or spkey is empty");
            return j;
        }
        android.content.SharedPreferences sharedPreferencesB = b(context, str);
        return sharedPreferencesB != null ? sharedPreferencesB.getLong(str2, j) : j;
    }

    public static android.content.SharedPreferences b(android.content.Context context, java.lang.String str) {
        return context.getSharedPreferences(a(context, str), 0);
    }

    public static java.lang.String b(android.content.Context context, java.lang.String str, java.lang.String str2, java.lang.String str3) {
        if (context == null || android.text.TextUtils.isEmpty(str) || android.text.TextUtils.isEmpty(str2)) {
            com.huawei.hms.scankit.p.T.c("SharedPreUtils", "context is null or spName empty or spkey is empty");
            return str3;
        }
        android.content.SharedPreferences sharedPreferencesB = b(context, str);
        return sharedPreferencesB != null ? sharedPreferencesB.getString(str2, str3) : str3;
    }
}
