package com.umeng.analytics;

/* loaded from: classes.dex */
public class AnalyticsConfig {
    public static boolean CATCH_EXCEPTION = false;
    public static boolean CHANGE_CATCH_EXCEPTION_NOTALLOW = true;
    public static boolean CLEAR_EKV_BL = false;
    public static boolean CLEAR_EKV_WL = false;
    public static java.lang.String GPU_RENDERER = "";
    public static java.lang.String GPU_VENDER = "";
    public static double[] a = null;
    public static java.lang.String b = null;

    /* renamed from: c, reason: collision with root package name */
    public static java.lang.String f1193c = null;

    /* renamed from: d, reason: collision with root package name */
    public static java.lang.String f1194d = null;

    /* renamed from: e, reason: collision with root package name */
    public static int f1195e = 0;
    public static boolean enable = true;
    public static long kContinueSessionMillis = 30000;
    public static java.lang.String mWrapperType;
    public static java.lang.String mWrapperVersion;

    public static void a(android.content.Context context, int i) {
        f1195e = i;
        com.umeng.common.b.a(context).a(f1195e);
    }

    public static void a(android.content.Context context, java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.A, 0, "\\|");
        } else {
            f1194d = str;
            com.umeng.common.b.a(context).a(f1194d);
        }
    }

    public static void a(java.lang.String str) {
        f1193c = str;
    }

    public static java.lang.String getAppkey(android.content.Context context) {
        return com.umeng.commonsdk.utils.UMUtils.getAppkey(context);
    }

    public static java.lang.String getChannel(android.content.Context context) {
        return com.umeng.commonsdk.utils.UMUtils.getChannel(context);
    }

    public static java.lang.String getGameSdkVersion(android.content.Context context) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.umeng.analytics.game.GameSdkVersion");
            return (java.lang.String) cls.getDeclaredField("SDK_VERSION").get(cls);
        } catch (java.lang.Throwable unused) {
            return null;
        }
    }

    public static double[] getLocation() {
        return a;
    }

    public static java.lang.String getSecretKey(android.content.Context context) {
        if (android.text.TextUtils.isEmpty(f1194d)) {
            f1194d = com.umeng.common.b.a(context).c();
        }
        return f1194d;
    }

    public static int getVerticalType(android.content.Context context) {
        if (f1195e == 0) {
            f1195e = com.umeng.common.b.a(context).d();
        }
        return f1195e;
    }
}
