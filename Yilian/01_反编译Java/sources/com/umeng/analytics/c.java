package com.umeng.analytics;

/* loaded from: classes.dex */
public class c {
    public static java.lang.String[] a = new java.lang.String[2];

    public static void a(android.content.Context context, java.lang.String str, java.lang.String str2) {
        java.lang.String[] strArr = a;
        strArr[0] = str;
        strArr[1] = str2;
        if (context != null) {
            com.umeng.common.b.a(context).a(str, str2);
        }
    }

    public static java.lang.String[] a(android.content.Context context) {
        java.lang.String[] strArrA;
        if (!android.text.TextUtils.isEmpty(a[0]) && !android.text.TextUtils.isEmpty(a[1])) {
            return a;
        }
        if (context == null || (strArrA = com.umeng.common.b.a(context).a()) == null) {
            return null;
        }
        java.lang.String[] strArr = a;
        strArr[0] = strArrA[0];
        strArr[1] = strArrA[1];
        return strArr;
    }

    public static void b(android.content.Context context) {
        java.lang.String[] strArr = a;
        strArr[0] = null;
        strArr[1] = null;
        if (context != null) {
            com.umeng.common.b.a(context).b();
        }
    }
}
