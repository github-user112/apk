package com.tencent.bugly;

/* loaded from: classes.dex */
public class b {
    public static boolean a = true;
    public static java.util.List<com.tencent.bugly.a> b = new java.util.ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public static boolean f893c;

    /* renamed from: d, reason: collision with root package name */
    public static com.tencent.bugly.proguard.J f894d;

    /* renamed from: e, reason: collision with root package name */
    public static boolean f895e;

    public static synchronized void a(android.content.Context context) {
        a(context, (com.tencent.bugly.BuglyStrategy) null);
    }

    public static synchronized void a(android.content.Context context, com.tencent.bugly.BuglyStrategy buglyStrategy) {
        if (f895e) {
            com.tencent.bugly.proguard.aa.e("[init] initial Multi-times, ignore this.", new java.lang.Object[0]);
            return;
        }
        if (context == null) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "[init] context of init() is null, check it.");
            return;
        }
        com.tencent.bugly.crashreport.common.info.a aVarA = com.tencent.bugly.crashreport.common.info.a.a(context);
        if (a(aVarA)) {
            a = false;
            return;
        }
        java.lang.String strE = aVarA.e();
        if (strE == null) {
            android.util.Log.e(com.tencent.bugly.proguard.aa.b, "[init] meta data of BUGLY_APPID in AndroidManifest.xml should be set.");
        } else {
            a(context, strE, aVarA.ba, buglyStrategy);
        }
    }

    public static synchronized void a(android.content.Context context, java.lang.String str, boolean z, com.tencent.bugly.BuglyStrategy buglyStrategy) {
        if (f895e) {
            com.tencent.bugly.proguard.aa.e("[init] initial Multi-times, ignore this.", new java.lang.Object[0]);
            return;
        }
        if (context == null) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "[init] context is null, check it.");
            return;
        }
        if (str == null) {
            android.util.Log.e(com.tencent.bugly.proguard.aa.b, "init arg 'crashReportAppID' should not be null!");
            return;
        }
        f895e = true;
        if (z) {
            f893c = true;
            com.tencent.bugly.proguard.aa.f1105c = true;
            com.tencent.bugly.proguard.aa.e("Bugly debug模式开启，请在发布时把isDebug关闭。 -- Running in debug model for 'isDebug' is enabled. Please disable it when you release.", new java.lang.Object[0]);
            com.tencent.bugly.proguard.aa.b("--------------------------------------------------------------------------------------------", new java.lang.Object[0]);
            com.tencent.bugly.proguard.aa.e("Bugly debug模式将有以下行为特性 -- The following list shows the behaviour of debug model: ", new java.lang.Object[0]);
            com.tencent.bugly.proguard.aa.e("[1] 输出详细的Bugly SDK的Log -- More detailed log of Bugly SDK will be output to logcat;", new java.lang.Object[0]);
            com.tencent.bugly.proguard.aa.e("[2] 每一条Crash都会被立即上报 -- Every crash caught by Bugly will be uploaded immediately.", new java.lang.Object[0]);
            com.tencent.bugly.proguard.aa.e("[3] 自定义日志将会在Logcat中输出 -- Custom log will be output to logcat.", new java.lang.Object[0]);
            com.tencent.bugly.proguard.aa.b("--------------------------------------------------------------------------------------------", new java.lang.Object[0]);
            com.tencent.bugly.proguard.aa.d("[init] Open debug mode of Bugly.", new java.lang.Object[0]);
        }
        com.tencent.bugly.proguard.aa.c(" crash report start initializing...", new java.lang.Object[0]);
        com.tencent.bugly.proguard.aa.d("[init] Bugly start initializing...", new java.lang.Object[0]);
        com.tencent.bugly.proguard.aa.c("[init] Bugly complete version: v%s", "3.4.2(1.6.1)");
        android.content.Context contextA = com.tencent.bugly.proguard.ha.a(context);
        com.tencent.bugly.crashreport.common.info.a aVarA = com.tencent.bugly.crashreport.common.info.a.a(contextA);
        aVarA.J();
        com.tencent.bugly.proguard.ga.a(contextA);
        f894d = com.tencent.bugly.proguard.J.a(contextA, b);
        com.tencent.bugly.proguard.W.a(contextA);
        com.tencent.bugly.crashreport.common.strategy.c.a(contextA, b);
        com.tencent.bugly.proguard.H hA = com.tencent.bugly.proguard.H.a(contextA);
        if (a(aVarA)) {
            a = false;
            return;
        }
        aVarA.c(str);
        com.tencent.bugly.proguard.aa.c("[param] Set APP ID:%s", str);
        a(buglyStrategy, aVarA);
        for (int i = 0; i < b.size(); i++) {
            try {
                if (hA.a(b.get(i).id)) {
                    b.get(i).init(contextA, z, buglyStrategy);
                }
            } catch (java.lang.Throwable th) {
                if (!com.tencent.bugly.proguard.aa.b(th)) {
                    th.printStackTrace();
                }
            }
        }
        com.tencent.bugly.crashreport.biz.e.b(contextA, buglyStrategy);
        com.tencent.bugly.crashreport.common.strategy.c.b().a(buglyStrategy != null ? buglyStrategy.getAppReportDelay() : 0L);
        com.tencent.bugly.proguard.aa.d("[init] Bugly initialization finished.", new java.lang.Object[0]);
    }

    public static void a(com.tencent.bugly.BuglyStrategy buglyStrategy, com.tencent.bugly.crashreport.common.info.a aVar) {
        byte[] bArr;
        if (buglyStrategy == null) {
            return;
        }
        java.lang.String appVersion = buglyStrategy.getAppVersion();
        if (!android.text.TextUtils.isEmpty(appVersion)) {
            if (appVersion.length() > 100) {
                java.lang.String strSubstring = appVersion.substring(0, 100);
                com.tencent.bugly.proguard.aa.e("appVersion %s length is over limit %d substring to %s", appVersion, 100, strSubstring);
                appVersion = strSubstring;
            }
            aVar.F = appVersion;
            com.tencent.bugly.proguard.aa.c("[param] Set App version: %s", buglyStrategy.getAppVersion());
        }
        try {
            if (buglyStrategy.isReplaceOldChannel()) {
                java.lang.String appChannel = buglyStrategy.getAppChannel();
                if (!android.text.TextUtils.isEmpty(appChannel)) {
                    if (appChannel.length() > 100) {
                        java.lang.String strSubstring2 = appChannel.substring(0, 100);
                        com.tencent.bugly.proguard.aa.e("appChannel %s length is over limit %d substring to %s", appChannel, 100, strSubstring2);
                        appChannel = strSubstring2;
                    }
                    f894d.a(556, "app_channel", appChannel.getBytes(), (com.tencent.bugly.proguard.I) null, false);
                    aVar.J = appChannel;
                }
            } else {
                java.util.Map<java.lang.String, byte[]> mapA = f894d.a(556, (com.tencent.bugly.proguard.I) null, true);
                if (mapA != null && (bArr = mapA.get("app_channel")) != null) {
                    aVar.J = new java.lang.String(bArr);
                }
            }
            com.tencent.bugly.proguard.aa.c("[param] Set App channel: %s", aVar.J);
        } catch (java.lang.Exception e2) {
            if (f893c) {
                e2.printStackTrace();
            }
        }
        java.lang.String appPackageName = buglyStrategy.getAppPackageName();
        if (!android.text.TextUtils.isEmpty(appPackageName)) {
            if (appPackageName.length() > 100) {
                java.lang.String strSubstring3 = appPackageName.substring(0, 100);
                com.tencent.bugly.proguard.aa.e("appPackageName %s length is over limit %d substring to %s", appPackageName, 100, strSubstring3);
                appPackageName = strSubstring3;
            }
            aVar.f967g = appPackageName;
            com.tencent.bugly.proguard.aa.c("[param] Set App package: %s", buglyStrategy.getAppPackageName());
        }
        java.lang.String deviceID = buglyStrategy.getDeviceID();
        if (deviceID != null) {
            if (deviceID.length() > 100) {
                java.lang.String strSubstring4 = deviceID.substring(0, 100);
                com.tencent.bugly.proguard.aa.e("deviceId %s length is over limit %d substring to %s", deviceID, 100, strSubstring4);
                deviceID = strSubstring4;
            }
            aVar.e(deviceID);
            com.tencent.bugly.proguard.aa.c("[param] Set device ID: %s", deviceID);
        }
        java.lang.String deviceModel = buglyStrategy.getDeviceModel();
        if (deviceModel != null) {
            aVar.f(deviceModel);
            com.tencent.bugly.proguard.aa.c("[param] Set device model: %s", deviceModel);
        }
        aVar.j = buglyStrategy.isUploadProcess();
        com.tencent.bugly.proguard.ga.f1113c = buglyStrategy.isBuglyLogUpload();
    }

    public static synchronized void a(com.tencent.bugly.a aVar) {
        if (!b.contains(aVar)) {
            b.add(aVar);
        }
    }

    public static boolean a(com.tencent.bugly.crashreport.common.info.a aVar) {
        java.util.List<java.lang.String> list = aVar.Q;
        aVar.getClass();
        return list != null && list.contains("bugly");
    }
}
