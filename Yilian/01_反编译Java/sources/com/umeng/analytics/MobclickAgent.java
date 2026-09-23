package com.umeng.analytics;

/* loaded from: classes.dex */
public class MobclickAgent {

    public enum EScenarioType {
        E_UM_NORMAL(0),
        E_UM_GAME(1);

        public int a;

        EScenarioType(int i) {
            this.a = i;
        }

        public int toValue() {
            return this.a;
        }
    }

    public enum PageMode {
        AUTO,
        MANUAL,
        LEGACY_AUTO,
        LEGACY_MANUAL
    }

    public static void clearPreProperties(android.content.Context context) {
        getAgent().g(context);
    }

    public static void disable() {
        com.umeng.analytics.AnalyticsConfig.enable = false;
    }

    public static void disableExceptionCatch() {
        com.umeng.analytics.b.a().a(false);
        com.umeng.analytics.AnalyticsConfig.CHANGE_CATCH_EXCEPTION_NOTALLOW = true;
    }

    public static void enableEncrypt(boolean z) {
    }

    public static com.umeng.analytics.b getAgent() {
        return com.umeng.analytics.b.a();
    }

    public static org.json.JSONObject getPreProperties(android.content.Context context) {
        return getAgent().h(context);
    }

    public static void init(android.content.Context context) {
        com.umeng.analytics.b.a().a(context);
    }

    public static void onEvent(android.content.Context context, java.lang.String str) {
        com.umeng.analytics.b.a().a(context, str, (java.lang.String) null, -1L, 1);
    }

    public static void onEvent(android.content.Context context, java.lang.String str, java.lang.String str2) {
        if (android.text.TextUtils.isEmpty(str2)) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.k, 0, "\\|");
        } else {
            com.umeng.analytics.b.a().a(context, str, str2, -1L, 1);
        }
    }

    public static void onEvent(android.content.Context context, java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map) {
        if (map == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.a, 0, "\\|");
        } else {
            com.umeng.analytics.b.a().a(context, str, new java.util.HashMap(map), -1L);
        }
    }

    public static void onEventObject(android.content.Context context, java.lang.String str, java.util.Map<java.lang.String, java.lang.Object> map) {
        if (map == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.a, 0, "\\|");
        } else {
            com.umeng.analytics.b.a().a(context, str, map, -1L);
        }
    }

    public static void onEventValue(android.content.Context context, java.lang.String str, java.util.Map<java.lang.String, java.lang.String> map, int i) {
        java.util.HashMap map2 = map == null ? new java.util.HashMap() : new java.util.HashMap(map);
        map2.put("__ct__", java.lang.Integer.valueOf(i));
        com.umeng.analytics.b.a().a(context, str, map2, -1L);
    }

    public static void onGKVEvent(android.content.Context context, java.lang.String str, java.util.HashMap<java.lang.String, java.lang.Object> map) {
        com.umeng.analytics.b.a().a(context, str, map);
    }

    public static void onKillProcess(android.content.Context context) {
        com.umeng.analytics.b.a().d(context);
    }

    public static void onPageEnd(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.D, 0, "\\|");
        } else {
            com.umeng.analytics.b.a().b(str);
        }
    }

    public static void onPageStart(java.lang.String str) {
        if (android.text.TextUtils.isEmpty(str)) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.C, 0, "\\|");
        } else {
            com.umeng.analytics.b.a().a(str);
        }
    }

    public static void onPause(android.content.Context context) {
        com.umeng.analytics.b.a().c(context);
    }

    public static void onProfileSignIn(java.lang.String str) {
        onProfileSignIn("_adhoc", str);
    }

    public static void onProfileSignIn(java.lang.String str, java.lang.String str2) {
        java.lang.String str3;
        if (android.text.TextUtils.isEmpty(str2)) {
            str3 = com.umeng.analytics.pro.i.t;
        } else if (str2.length() > 64) {
            str3 = com.umeng.analytics.pro.i.u;
        } else if (android.text.TextUtils.isEmpty(str)) {
            com.umeng.analytics.b.a().a("_adhoc", str2);
            return;
        } else {
            if (str.length() <= 32) {
                com.umeng.analytics.b.a().a(str, str2);
                return;
            }
            str3 = com.umeng.analytics.pro.i.v;
        }
        com.umeng.commonsdk.debug.UMLog.aq(str3, 0, "\\|");
    }

    public static void onProfileSignOff() {
        com.umeng.analytics.b.a().j();
    }

    public static void onResume(android.content.Context context) {
        if (context == null) {
            com.umeng.commonsdk.debug.UMLog.aq(com.umeng.analytics.pro.i.n, 0, "\\|");
        } else {
            com.umeng.analytics.b.a().b(context);
        }
    }

    public static void registerPreProperties(android.content.Context context, org.json.JSONObject jSONObject) {
        getAgent().a(context, jSONObject);
    }

    public static void reportError(android.content.Context context, java.lang.String str) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.umeng.umcrash.UMCrash");
            java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("generateCustomLog", java.lang.String.class, java.lang.String.class);
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(cls, str, "DEFAULT");
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public static void reportError(android.content.Context context, java.lang.Throwable th) {
        try {
            java.lang.Class<?> cls = java.lang.Class.forName("com.umeng.umcrash.UMCrash");
            java.lang.reflect.Method declaredMethod = cls.getDeclaredMethod("generateCustomLog", java.lang.Throwable.class, java.lang.String.class);
            if (declaredMethod != null) {
                declaredMethod.setAccessible(true);
                declaredMethod.invoke(cls, th, "DEFAULT");
            }
        } catch (java.lang.Throwable unused) {
        }
    }

    public static void setCatchUncaughtExceptions(boolean z) {
        com.umeng.analytics.b.a().a(z);
    }

    public static void setCheckDevice(boolean z) {
    }

    public static void setDebugMode(boolean z) {
    }

    public static void setFirstLaunchEvent(android.content.Context context, java.util.List<java.lang.String> list) {
        getAgent().a(context, list);
    }

    public static void setGameScenarioType(android.content.Context context) {
        com.umeng.analytics.b.a().a(context, com.umeng.analytics.MobclickAgent.EScenarioType.E_UM_GAME);
    }

    public static void setLatencyWindow(long j) {
    }

    public static void setLocation(double d2, double d3) {
        com.umeng.analytics.b.a().a(d2, d3);
    }

    public static void setOpenGLContext(javax.microedition.khronos.opengles.GL10 gl10) {
        com.umeng.analytics.b.a().a(gl10);
    }

    public static void setPageCollectionMode(com.umeng.analytics.MobclickAgent.PageMode pageMode) {
        com.umeng.analytics.b.a().a(pageMode);
    }

    public static void setScenarioType(android.content.Context context, com.umeng.analytics.MobclickAgent.EScenarioType eScenarioType) {
    }

    public static void setSecret(android.content.Context context, java.lang.String str) {
        com.umeng.analytics.b.a().c(context, str);
    }

    public static void setSessionContinueMillis(long j) {
        if (j <= 30000) {
            j = 30000;
        }
        com.umeng.analytics.b.a().a(j);
    }

    public static void setSysListener(com.umeng.common.ISysListener iSysListener) {
        com.umeng.analytics.b.a().a(iSysListener);
    }

    public static void unregisterPreProperty(android.content.Context context, java.lang.String str) {
        getAgent().f(context, str);
    }
}
