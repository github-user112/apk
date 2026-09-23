package com.tencent.bugly.crashreport;

/* loaded from: classes.dex */
public class CrashReport {
    public static android.content.Context a;

    public static class CrashHandleCallback extends com.tencent.bugly.BuglyStrategy.a {
    }

    public static class UserStrategy extends com.tencent.bugly.BuglyStrategy {
        public com.tencent.bugly.crashreport.CrashReport.CrashHandleCallback w;

        public UserStrategy(android.content.Context context) {
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized int getCallBackType() {
            return this.t;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized boolean getCloseErrorCallback() {
            return this.u;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized com.tencent.bugly.crashreport.CrashReport.CrashHandleCallback getCrashHandleCallback() {
            return this.w;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized void setCallBackType(int i) {
            this.t = i;
        }

        @Override // com.tencent.bugly.BuglyStrategy
        public synchronized void setCloseErrorCallback(boolean z) {
            this.u = z;
        }

        public synchronized void setCrashHandleCallback(com.tencent.bugly.crashreport.CrashReport.CrashHandleCallback crashHandleCallback) {
            this.w = crashHandleCallback;
        }
    }

    public interface WebViewInterface {
        void addJavascriptInterface(com.tencent.bugly.crashreport.crash.h5.H5JavaScriptInterface h5JavaScriptInterface, java.lang.String str);

        java.lang.CharSequence getContentDescription();

        java.lang.String getUrl();

        void loadUrl(java.lang.String str);

        void setJavaScriptEnabled(boolean z);
    }

    public static class a implements com.tencent.bugly.crashreport.CrashReport.WebViewInterface {
        public final /* synthetic */ android.webkit.WebView a;

        public a(android.webkit.WebView webView) {
            this.a = webView;
        }

        @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
        public void addJavascriptInterface(com.tencent.bugly.crashreport.crash.h5.H5JavaScriptInterface h5JavaScriptInterface, java.lang.String str) {
            this.a.addJavascriptInterface(h5JavaScriptInterface, str);
        }

        @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
        public java.lang.CharSequence getContentDescription() {
            return this.a.getContentDescription();
        }

        @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
        public java.lang.String getUrl() {
            return this.a.getUrl();
        }

        @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
        public void loadUrl(java.lang.String str) {
            this.a.loadUrl(str);
        }

        @Override // com.tencent.bugly.crashreport.CrashReport.WebViewInterface
        public void setJavaScriptEnabled(boolean z) {
            android.webkit.WebSettings settings = this.a.getSettings();
            if (settings.getJavaScriptEnabled()) {
                return;
            }
            settings.setJavaScriptEnabled(true);
        }
    }

    public static void closeBugly() {
        java.lang.String str;
        java.lang.String str2;
        if (!com.tencent.bugly.b.a) {
            str = com.tencent.bugly.proguard.aa.b;
            str2 = "Can not close bugly because bugly is disable.";
        } else {
            if (com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
                if (a == null) {
                    return;
                }
                com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver buglyBroadcastReceiver = com.tencent.bugly.crashreport.crash.BuglyBroadcastReceiver.getInstance();
                if (buglyBroadcastReceiver != null) {
                    buglyBroadcastReceiver.unregister(a);
                }
                closeCrashReport();
                com.tencent.bugly.crashreport.biz.e.a(a);
                com.tencent.bugly.proguard.Z zC = com.tencent.bugly.proguard.Z.c();
                if (zC != null) {
                    zC.b();
                    return;
                }
                return;
            }
            str = com.tencent.bugly.proguard.aa.b;
            str2 = "CrashReport has not been initialed! pls to call method 'initCrashReport' first!";
        }
        android.util.Log.w(str, str2);
    }

    public static void closeCrashReport() {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not close crash report because bugly is disable.");
        } else if (com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            com.tencent.bugly.crashreport.crash.m.g().b();
        } else {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        }
    }

    public static void closeNativeReport() {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not close native report because bugly is disable.");
        } else if (com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            com.tencent.bugly.crashreport.crash.m.g().e();
        } else {
            android.util.Log.e(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        }
    }

    public static void enableBugly(boolean z) {
        com.tencent.bugly.b.a = z;
    }

    public static void enableObtainId(android.content.Context context, boolean z) {
        setCollectPrivacyInfo(context, z);
    }

    public static java.util.Set<java.lang.String> getAllUserDataKeys(android.content.Context context) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not get all keys of user data because bugly is disable.");
            return new java.util.HashSet();
        }
        if (context != null) {
            return com.tencent.bugly.crashreport.common.info.a.a(context).b();
        }
        android.util.Log.e(com.tencent.bugly.proguard.aa.b, "getAllUserDataKeys args context should not be null");
        return new java.util.HashSet();
    }

    public static java.lang.String getAppChannel() {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not get App channel because bugly is disable.");
            return "unknown";
        }
        if (com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            return com.tencent.bugly.crashreport.common.info.a.a(a).J;
        }
        android.util.Log.e(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        return "unknown";
    }

    public static java.lang.String getAppID() {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not get App ID because bugly is disable.");
            return "unknown";
        }
        if (com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            return com.tencent.bugly.crashreport.common.info.a.a(a).e();
        }
        android.util.Log.e(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        return "unknown";
    }

    public static java.lang.String getAppVer() {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not get app version because bugly is disable.");
            return "unknown";
        }
        if (com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            return com.tencent.bugly.crashreport.common.info.a.a(a).F;
        }
        android.util.Log.e(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        return "unknown";
    }

    public static java.lang.String getBuglyVersion(android.content.Context context) {
        if (context != null) {
            return com.tencent.bugly.crashreport.common.info.a.a(context).u();
        }
        com.tencent.bugly.proguard.aa.e("Please call with context.", new java.lang.Object[0]);
        return "unknown";
    }

    public static android.content.Context getContext() {
        return a;
    }

    public static java.lang.String getDeviceID(android.content.Context context) {
        return com.tencent.bugly.crashreport.common.info.a.a(context).k();
    }

    public static java.net.Proxy getHttpProxy() {
        return com.tencent.bugly.proguard.da.a();
    }

    public static java.util.Map<java.lang.String, java.lang.String> getSdkExtraData() {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not get SDK extra data because bugly is disable.");
            return new java.util.HashMap();
        }
        if (com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            return com.tencent.bugly.crashreport.common.info.a.a(a).ia;
        }
        android.util.Log.e(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        return null;
    }

    public static java.util.Map<java.lang.String, java.lang.String> getSdkExtraData(android.content.Context context) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not get SDK extra data because bugly is disable.");
            return new java.util.HashMap();
        }
        if (context != null) {
            return com.tencent.bugly.crashreport.common.info.a.a(context).ia;
        }
        com.tencent.bugly.proguard.aa.e("Context should not be null.", new java.lang.Object[0]);
        return null;
    }

    public static java.lang.String getUserData(android.content.Context context, java.lang.String str) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not get user data because bugly is disable.");
            return "unknown";
        }
        if (context == null) {
            android.util.Log.e(com.tencent.bugly.proguard.aa.b, "getUserDataValue args context should not be null");
            return "unknown";
        }
        if (com.tencent.bugly.proguard.ha.b(str)) {
            return null;
        }
        return com.tencent.bugly.crashreport.common.info.a.a(context).a(str);
    }

    public static int getUserDatasSize(android.content.Context context) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not get size of user data because bugly is disable.");
            return -1;
        }
        if (context != null) {
            return com.tencent.bugly.crashreport.common.info.a.a(context).B();
        }
        android.util.Log.e(com.tencent.bugly.proguard.aa.b, "getUserDatasSize args context should not be null");
        return -1;
    }

    public static java.lang.String getUserId() {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not get user ID because bugly is disable.");
            return "unknown";
        }
        if (com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            return com.tencent.bugly.crashreport.common.info.a.a(a).A();
        }
        android.util.Log.e(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        return "unknown";
    }

    public static int getUserSceneTagId(android.content.Context context) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not get user scene tag because bugly is disable.");
            return -1;
        }
        if (context != null) {
            return com.tencent.bugly.crashreport.common.info.a.a(context).C();
        }
        android.util.Log.e(com.tencent.bugly.proguard.aa.b, "getUserSceneTagId args context should not be null");
        return -1;
    }

    public static void initCrashReport(android.content.Context context) {
        if (context == null) {
            return;
        }
        a = context;
        com.tencent.bugly.b.a(com.tencent.bugly.CrashModule.getInstance());
        com.tencent.bugly.b.a(context);
    }

    public static void initCrashReport(android.content.Context context, com.tencent.bugly.crashreport.CrashReport.UserStrategy userStrategy) {
        if (context == null) {
            return;
        }
        a = context;
        com.tencent.bugly.b.a(com.tencent.bugly.CrashModule.getInstance());
        com.tencent.bugly.b.a(context, userStrategy);
    }

    public static void initCrashReport(android.content.Context context, java.lang.String str, boolean z) {
        initCrashReport(context, str, z, null);
    }

    public static void initCrashReport(android.content.Context context, java.lang.String str, boolean z, com.tencent.bugly.crashreport.CrashReport.UserStrategy userStrategy) {
        if (context == null) {
            return;
        }
        a = context;
        com.tencent.bugly.b.a(com.tencent.bugly.CrashModule.getInstance());
        com.tencent.bugly.b.a(context, str, z, userStrategy);
    }

    public static boolean isLastSessionCrash() {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "The info 'isLastSessionCrash' is not accurate because bugly is disable.");
            return false;
        }
        if (com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            return com.tencent.bugly.crashreport.crash.m.g().h();
        }
        android.util.Log.e(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        return false;
    }

    public static void postCatchedException(java.lang.Throwable th) {
        postCatchedException(th, java.lang.Thread.currentThread());
    }

    public static void postCatchedException(java.lang.Throwable th, java.lang.Thread thread) {
        postCatchedException(th, thread, false);
    }

    public static void postCatchedException(java.lang.Throwable th, java.lang.Thread thread, boolean z) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not post crash caught because bugly is disable.");
            return;
        }
        if (!com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            android.util.Log.e(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
            return;
        }
        if (th == null) {
            com.tencent.bugly.proguard.aa.e("throwable is null, just return", new java.lang.Object[0]);
            return;
        }
        if (thread == null) {
            thread = java.lang.Thread.currentThread();
        }
        com.tencent.bugly.crashreport.crash.m.g().a(thread, th, false, null, null, z, true);
    }

    public static void postException(int i, java.lang.String str, java.lang.String str2, java.lang.String str3, java.util.Map<java.lang.String, java.lang.String> map) {
        postException(java.lang.Thread.currentThread(), i, str, str2, str3, map);
    }

    public static void postException(java.lang.Thread thread, int i, java.lang.String str, java.lang.String str2, java.lang.String str3, java.util.Map<java.lang.String, java.lang.String> map) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not post crash caught because bugly is disable.");
        } else if (com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            com.tencent.bugly.crashreport.crash.p.a(thread, i, str, str2, str3, map);
        } else {
            android.util.Log.e(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        }
    }

    public static void putSdkData(android.content.Context context, java.lang.String str, java.lang.String str2) {
        if (context == null || com.tencent.bugly.proguard.ha.b(str) || com.tencent.bugly.proguard.ha.b(str2)) {
            return;
        }
        java.lang.String strReplace = str.replace("[a-zA-Z[0-9]]+", "");
        if (strReplace.length() > 100) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, java.lang.String.format("putSdkData key length over limit %d, will be cutted.", 50));
            strReplace = strReplace.substring(0, 50);
        }
        if (str2.length() > 500) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, java.lang.String.format("putSdkData value length over limit %d, will be cutted!", 200));
            str2 = str2.substring(0, 200);
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).a(strReplace, str2);
        com.tencent.bugly.proguard.aa.d(java.lang.String.format("[param] putSdkData data: %s - %s", strReplace, str2), new java.lang.Object[0]);
    }

    public static void putUserData(android.content.Context context, java.lang.String str, java.lang.String str2) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not put user data because bugly is disable.");
            return;
        }
        if (context == null) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "putUserData args context should not be null");
            return;
        }
        if (str == null) {
            com.tencent.bugly.proguard.aa.e("putUserData args key should not be null or empty", new java.lang.Object[0]);
            return;
        }
        if (str2 == null) {
            com.tencent.bugly.proguard.aa.e("putUserData args value should not be null", new java.lang.Object[0]);
            return;
        }
        if (str2.length() > 200) {
            com.tencent.bugly.proguard.aa.e("user data value length over limit %d, it will be cutted!", 200);
            str2 = str2.substring(0, 200);
        }
        com.tencent.bugly.crashreport.common.info.a aVarA = com.tencent.bugly.crashreport.common.info.a.a(context);
        if (aVarA.b().contains(str)) {
            com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler nativeCrashHandler = com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.getInstance();
            if (nativeCrashHandler != null) {
                nativeCrashHandler.putKeyValueToNative(str, str2);
            }
            com.tencent.bugly.crashreport.common.info.a.a(context).b(str, str2);
            com.tencent.bugly.proguard.aa.a("replace KV %s %s", str, str2);
            return;
        }
        if (aVarA.B() >= 50) {
            com.tencent.bugly.proguard.aa.e("user data size is over limit %d, it will be cutted!", 50);
            return;
        }
        if (str.length() > 50) {
            com.tencent.bugly.proguard.aa.e("user data key length over limit %d , will drop this new key %s", 50, str);
            str = str.substring(0, 50);
        }
        com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler nativeCrashHandler2 = com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.getInstance();
        if (nativeCrashHandler2 != null) {
            nativeCrashHandler2.putKeyValueToNative(str, str2);
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).b(str, str2);
        com.tencent.bugly.proguard.aa.d("[param] set user data: %s - %s", str, str2);
    }

    public static java.lang.String removeUserData(android.content.Context context, java.lang.String str) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not remove user data because bugly is disable.");
            return "unknown";
        }
        if (context == null) {
            android.util.Log.e(com.tencent.bugly.proguard.aa.b, "removeUserData args context should not be null");
            return "unknown";
        }
        if (com.tencent.bugly.proguard.ha.b(str)) {
            return null;
        }
        com.tencent.bugly.proguard.aa.d("[param] remove user data: %s", str);
        return com.tencent.bugly.crashreport.common.info.a.a(context).b(str);
    }

    public static void setAllThreadStackEnable(android.content.Context context, boolean z, boolean z2) {
        com.tencent.bugly.crashreport.common.info.a.a(context).a(z, z2);
    }

    public static void setAppChannel(android.content.Context context, java.lang.String str) {
        java.lang.String str2;
        java.lang.String str3;
        if (!com.tencent.bugly.b.a) {
            str2 = com.tencent.bugly.proguard.aa.b;
            str3 = "Can not set App channel because Bugly is disable.";
        } else if (context == null) {
            str2 = com.tencent.bugly.proguard.aa.b;
            str3 = "setAppChannel args context should not be null";
        } else {
            if (str != null) {
                com.tencent.bugly.crashreport.common.info.a.a(context).J = str;
                com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler nativeCrashHandler = com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.getInstance();
                if (nativeCrashHandler != null) {
                    nativeCrashHandler.setNativeAppChannel(str);
                    return;
                }
                return;
            }
            str2 = com.tencent.bugly.proguard.aa.b;
            str3 = "App channel is null, will not set";
        }
        android.util.Log.w(str2, str3);
    }

    public static void setAppPackage(android.content.Context context, java.lang.String str) {
        java.lang.String str2;
        java.lang.String str3;
        if (!com.tencent.bugly.b.a) {
            str2 = com.tencent.bugly.proguard.aa.b;
            str3 = "Can not set App package because bugly is disable.";
        } else if (context == null) {
            str2 = com.tencent.bugly.proguard.aa.b;
            str3 = "setAppPackage args context should not be null";
        } else {
            if (str != null) {
                com.tencent.bugly.crashreport.common.info.a.a(context).f967g = str;
                com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler nativeCrashHandler = com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.getInstance();
                if (nativeCrashHandler != null) {
                    nativeCrashHandler.setNativeAppPackage(str);
                    return;
                }
                return;
            }
            str2 = com.tencent.bugly.proguard.aa.b;
            str3 = "App package is null, will not set";
        }
        android.util.Log.w(str2, str3);
    }

    public static void setAppVersion(android.content.Context context, java.lang.String str) {
        java.lang.String str2;
        java.lang.String str3;
        if (!com.tencent.bugly.b.a) {
            str2 = com.tencent.bugly.proguard.aa.b;
            str3 = "Can not set App version because bugly is disable.";
        } else if (context == null) {
            str2 = com.tencent.bugly.proguard.aa.b;
            str3 = "setAppVersion args context should not be null";
        } else {
            if (str != null) {
                com.tencent.bugly.crashreport.common.info.a.a(context).F = str;
                com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler nativeCrashHandler = com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.getInstance();
                if (nativeCrashHandler != null) {
                    nativeCrashHandler.setNativeAppVersion(str);
                    return;
                }
                return;
            }
            str2 = com.tencent.bugly.proguard.aa.b;
            str3 = "App version is null, will not set";
        }
        android.util.Log.w(str2, str3);
    }

    public static void setBuglyDbName(java.lang.String str) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not set DB name because bugly is disable.");
            return;
        }
        android.util.Log.i(com.tencent.bugly.proguard.aa.b, "Set Bugly DB name: " + str);
        com.tencent.bugly.proguard.K.a = str;
    }

    public static void setCollectPrivacyInfo(android.content.Context context, boolean z) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not set collect privacy info enable because bugly is disable.");
            return;
        }
        if (context == null) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "setCollectPrivacyInfo args context should not be null");
            return;
        }
        android.util.Log.i(com.tencent.bugly.proguard.aa.b, "setCollectPrivacyInfo: " + z);
        com.tencent.bugly.crashreport.common.info.a.a(context).a(z);
    }

    public static void setContext(android.content.Context context) {
        a = context;
    }

    public static void setCrashFilter(java.lang.String str) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not set App package because bugly is disable.");
            return;
        }
        android.util.Log.i(com.tencent.bugly.proguard.aa.b, "Set crash stack filter: " + str);
        com.tencent.bugly.crashreport.crash.m.n = str;
    }

    public static void setCrashRegularFilter(java.lang.String str) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not set App package because bugly is disable.");
            return;
        }
        android.util.Log.i(com.tencent.bugly.proguard.aa.b, "Set crash stack filter: " + str);
        com.tencent.bugly.crashreport.crash.m.o = str;
    }

    public static void setDeviceId(android.content.Context context, java.lang.String str) {
        if (context == null || android.text.TextUtils.isEmpty(str)) {
            return;
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).e(str);
    }

    public static void setDeviceModel(android.content.Context context, java.lang.String str) {
        if (context == null || android.text.TextUtils.isEmpty(str)) {
            return;
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).f(str);
    }

    public static void setHandleNativeCrashInJava(boolean z) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not set App package because bugly is disable.");
            return;
        }
        android.util.Log.i(com.tencent.bugly.proguard.aa.b, "Should handle native crash in Java profile after handled in native profile: " + z);
        com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.setShouldHandleInJava(z);
    }

    public static void setHttpProxy(java.lang.String str, int i) {
        com.tencent.bugly.proguard.da.a(str, i);
    }

    public static void setHttpProxy(java.net.InetAddress inetAddress, int i) {
        com.tencent.bugly.proguard.da.a(inetAddress, i);
    }

    @java.lang.Deprecated
    public static void setIsAppForeground(android.content.Context context, boolean z) {
        com.tencent.bugly.proguard.aa.c("App fore and back status are no longer supported", new java.lang.Object[0]);
    }

    public static void setIsDevelopmentDevice(android.content.Context context, boolean z) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not set 'isDevelopmentDevice' because bugly is disable.");
            return;
        }
        if (context == null) {
            com.tencent.bugly.proguard.aa.e("Context should not be null.", new java.lang.Object[0]);
            return;
        }
        java.lang.Object[] objArr = new java.lang.Object[0];
        if (z) {
            com.tencent.bugly.proguard.aa.a("This is a development device.", objArr);
        } else {
            com.tencent.bugly.proguard.aa.a("This is not a development device.", objArr);
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).ga = z;
    }

    public static boolean setJavascriptMonitor(android.webkit.WebView webView, boolean z) {
        return setJavascriptMonitor(webView, z, false);
    }

    @android.annotation.SuppressLint({"SetJavaScriptEnabled"})
    public static boolean setJavascriptMonitor(android.webkit.WebView webView, boolean z, boolean z2) {
        if (webView == null) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "WebView is null.");
            return false;
        }
        webView.getSettings().setSavePassword(false);
        webView.getSettings().setAllowFileAccess(false);
        return setJavascriptMonitor(new com.tencent.bugly.crashreport.CrashReport.a(webView), z, z2);
    }

    public static boolean setJavascriptMonitor(com.tencent.bugly.crashreport.CrashReport.WebViewInterface webViewInterface, boolean z) {
        return setJavascriptMonitor(webViewInterface, z, false);
    }

    @android.annotation.SuppressLint({"SetJavaScriptEnabled"})
    public static boolean setJavascriptMonitor(com.tencent.bugly.crashreport.CrashReport.WebViewInterface webViewInterface, boolean z, boolean z2) {
        if (webViewInterface == null) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "WebViewInterface is null.");
            return false;
        }
        if (!com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            com.tencent.bugly.proguard.aa.b("CrashReport has not been initialed! please to call method 'initCrashReport' first!", new java.lang.Object[0]);
            return false;
        }
        com.tencent.bugly.proguard.aa.c("Set Javascript exception monitor of webview.", new java.lang.Object[0]);
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not set JavaScript monitor because bugly is disable.");
            return false;
        }
        com.tencent.bugly.proguard.aa.a("URL of webview is %s", webViewInterface.getUrl());
        if (!z2 && android.os.Build.VERSION.SDK_INT < 19) {
            com.tencent.bugly.proguard.aa.b("This interface is only available for Android 4.4 or later.", new java.lang.Object[0]);
            return false;
        }
        com.tencent.bugly.proguard.aa.c("Enable the javascript needed by webview monitor.", new java.lang.Object[0]);
        webViewInterface.setJavaScriptEnabled(true);
        com.tencent.bugly.crashreport.crash.h5.H5JavaScriptInterface h5JavaScriptInterface = com.tencent.bugly.crashreport.crash.h5.H5JavaScriptInterface.getInstance(webViewInterface);
        if (h5JavaScriptInterface != null) {
            com.tencent.bugly.proguard.aa.c("Add a secure javascript interface to the webview.", new java.lang.Object[0]);
            webViewInterface.addJavascriptInterface(h5JavaScriptInterface, "exceptionUploader");
        }
        if (z) {
            com.tencent.bugly.proguard.aa.c("Inject bugly.js(v%s) to the webview.", com.tencent.bugly.crashreport.crash.h5.b.b());
            java.lang.String strA = com.tencent.bugly.crashreport.crash.h5.b.a();
            if (strA == null) {
                com.tencent.bugly.proguard.aa.b("Failed to inject Bugly.js.", com.tencent.bugly.crashreport.crash.h5.b.b());
                return false;
            }
            webViewInterface.loadUrl("javascript:" + strA);
        }
        return true;
    }

    public static void setSdkExtraData(android.content.Context context, java.lang.String str, java.lang.String str2) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not put SDK extra data because bugly is disable.");
        } else {
            if (context == null || com.tencent.bugly.proguard.ha.b(str) || com.tencent.bugly.proguard.ha.b(str2)) {
                return;
            }
            com.tencent.bugly.crashreport.common.info.a.a(context).c(str, str2);
        }
    }

    public static void setServerUrl(java.lang.String str) {
        if (com.tencent.bugly.proguard.ha.b(str) || !com.tencent.bugly.proguard.ha.c(str)) {
            android.util.Log.i(com.tencent.bugly.proguard.aa.b, "URL is invalid.");
            return;
        }
        com.tencent.bugly.crashreport.common.strategy.c.a(str);
        com.tencent.bugly.crashreport.common.strategy.StrategyBean.a = str;
        com.tencent.bugly.crashreport.common.strategy.StrategyBean.b = str;
    }

    public static void setSessionIntervalMills(long j) {
        if (com.tencent.bugly.b.a) {
            com.tencent.bugly.crashreport.biz.e.c(j);
        } else {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not set 'SessionIntervalMills' because bugly is disable.");
        }
    }

    public static void setUserId(android.content.Context context, java.lang.String str) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not set user ID because bugly is disable.");
            return;
        }
        if (context == null) {
            android.util.Log.e(com.tencent.bugly.proguard.aa.b, "Context should not be null when bugly has not been initialed!");
            return;
        }
        if (android.text.TextUtils.isEmpty(str)) {
            com.tencent.bugly.proguard.aa.e("userId should not be null", new java.lang.Object[0]);
            return;
        }
        if (str.length() > 100) {
            java.lang.String strSubstring = str.substring(0, 100);
            com.tencent.bugly.proguard.aa.e("userId %s length is over limit %d substring to %s", str, 100, strSubstring);
            str = strSubstring;
        }
        if (str.equals(com.tencent.bugly.crashreport.common.info.a.a(context).A())) {
            return;
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).i(str);
        com.tencent.bugly.proguard.aa.d("[user] set userId : %s", str);
        com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler nativeCrashHandler = com.tencent.bugly.crashreport.crash.jni.NativeCrashHandler.getInstance();
        if (nativeCrashHandler != null) {
            nativeCrashHandler.setNativeUserId(str);
        }
        if (com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            com.tencent.bugly.crashreport.biz.e.l();
        }
    }

    public static void setUserId(java.lang.String str) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not set user ID because bugly is disable.");
        } else if (com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            setUserId(a, str);
        } else {
            android.util.Log.e(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        }
    }

    public static void setUserSceneTag(android.content.Context context, int i) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not set tag caught because bugly is disable.");
            return;
        }
        if (context == null) {
            android.util.Log.e(com.tencent.bugly.proguard.aa.b, "setTag args context should not be null");
            return;
        }
        if (i <= 0) {
            com.tencent.bugly.proguard.aa.e("setTag args tagId should > 0", new java.lang.Object[0]);
        }
        com.tencent.bugly.crashreport.common.info.a.a(context).b(i);
        com.tencent.bugly.proguard.aa.d("[param] set user scene tag: %d", java.lang.Integer.valueOf(i));
    }

    public static void startCrashReport() {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not start crash report because bugly is disable.");
        } else if (com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            com.tencent.bugly.crashreport.crash.m.g().o();
        } else {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        }
    }

    public static void testANRCrash() {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not test ANR crash because bugly is disable.");
        } else if (!com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            android.util.Log.e(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            com.tencent.bugly.proguard.aa.c("start to create a anr crash for test!", new java.lang.Object[0]);
            com.tencent.bugly.crashreport.crash.m.g().t();
        }
    }

    public static void testJavaCrash() {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not test Java crash because bugly is disable.");
        } else {
            if (!com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
                android.util.Log.e(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
                return;
            }
            com.tencent.bugly.crashreport.common.info.a aVarN = com.tencent.bugly.crashreport.common.info.a.n();
            if (aVarN != null) {
                aVarN.a(24096);
            }
            throw new java.lang.RuntimeException("This Crash create for Test! You can go to Bugly see more detail!");
        }
    }

    public static void testNativeCrash() {
        testNativeCrash(false, false, false);
    }

    public static void testNativeCrash(boolean z, boolean z2, boolean z3) {
        if (!com.tencent.bugly.b.a) {
            android.util.Log.w(com.tencent.bugly.proguard.aa.b, "Can not test native crash because bugly is disable.");
        } else if (!com.tencent.bugly.CrashModule.getInstance().hasInitialized()) {
            android.util.Log.e(com.tencent.bugly.proguard.aa.b, "CrashReport has not been initialed! pls to call method 'initCrashReport' first!");
        } else {
            com.tencent.bugly.proguard.aa.c("start to create a native crash for test!", new java.lang.Object[0]);
            com.tencent.bugly.crashreport.crash.m.g().a(z, z2, z3);
        }
    }

    public static void uploadUserInfo() {
        java.lang.String str;
        java.lang.String str2;
        if (com.tencent.bugly.b.a) {
            com.tencent.bugly.crashreport.biz.c cVar = com.tencent.bugly.crashreport.biz.e.i;
            if (cVar != null) {
                cVar.b();
                return;
            } else {
                str = com.tencent.bugly.proguard.aa.b;
                str2 = "Can not upload user info because bugly is not init.";
            }
        } else {
            str = com.tencent.bugly.proguard.aa.b;
            str2 = "Can not upload user info because bugly is disable.";
        }
        android.util.Log.w(str, str2);
    }
}
