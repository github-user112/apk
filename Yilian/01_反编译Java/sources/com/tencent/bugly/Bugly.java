package com.tencent.bugly;

/* loaded from: classes.dex */
public class Bugly {
    public static boolean a = false;
    public static android.content.Context applicationContext = null;
    public static boolean enable = true;

    public static synchronized java.lang.String getAppChannel() {
        byte[] bArr;
        com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
        if (aVarN == null) {
            return null;
        }
        if (android.text.TextUtils.isEmpty(aVarN.J)) {
            com.tencent.bugly.proguard.J jA = com.tencent.bugly.proguard.J.a();
            if (jA == null) {
                return aVarN.J;
            }
            java.util.Map<java.lang.String, byte[]> mapA = jA.a(556, (com.tencent.bugly.proguard.I) null, true);
            if (mapA != null && (bArr = mapA.get("app_channel")) != null) {
                return new java.lang.String(bArr);
            }
        }
        return aVarN.J;
    }

    public static void init(android.content.Context context, java.lang.String str, boolean z) {
        init(context, str, z, null);
    }

    public static synchronized void init(android.content.Context context, java.lang.String str, boolean z, com.tencent.bugly.BuglyStrategy buglyStrategy) {
        if (a) {
            return;
        }
        a = true;
        android.content.Context contextA = com.tencent.bugly.proguard.ha.a(context);
        applicationContext = contextA;
        if (contextA == null) {
            android.util.Log.e(com.tencent.bugly.proguard.aa.b, "init arg 'context' should not be null!");
            return;
        }
        com.tencent.bugly.b.a(com.tencent.bugly.CrashModule.getInstance());
        com.tencent.bugly.b.a(com.tencent.bugly.beta.Beta.getInstance());
        com.tencent.bugly.b.a = enable;
        com.tencent.bugly.b.a(applicationContext, str, z, buglyStrategy);
    }

    public static void putUserData(android.content.Context context, java.lang.String str, java.lang.String str2) {
        com.tencent.bugly.crashreport.CrashReport.putUserData(context, str, str2);
    }

    public static void setAppChannel(android.content.Context context, java.lang.String str) {
        com.tencent.bugly.crashreport.CrashReport.setAppChannel(context, str);
    }

    public static void setIsDevelopmentDevice(android.content.Context context, boolean z) {
        com.tencent.bugly.crashreport.CrashReport.setIsDevelopmentDevice(context, z);
    }

    public static void setUserId(android.content.Context context, java.lang.String str) {
        com.tencent.bugly.crashreport.CrashReport.setUserId(context, str);
    }

    public static void setUserTag(android.content.Context context, int i) {
        com.tencent.bugly.crashreport.CrashReport.setUserSceneTag(context, i);
    }
}
