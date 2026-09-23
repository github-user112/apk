package com.umeng.commonsdk.service;

/* loaded from: classes.dex */
public class UMGlobalContext {
    public static final java.lang.String TAG = "UMGlobalContext";
    public java.lang.String mAppVersion;
    public java.lang.String mAppkey;
    public android.content.Context mApplicationContext;
    public java.lang.String mChannel;
    public java.lang.String mProcessName;

    public static class a {
        public static final com.umeng.commonsdk.service.UMGlobalContext a = new com.umeng.commonsdk.service.UMGlobalContext();
    }

    public UMGlobalContext() {
        this.mProcessName = "";
    }

    public static android.content.Context getAppContext() {
        return com.umeng.commonsdk.service.UMGlobalContext.a.a.mApplicationContext;
    }

    public static android.content.Context getAppContext(android.content.Context context) {
        if (com.umeng.commonsdk.service.UMGlobalContext.a.a.mApplicationContext == null && context != null) {
            com.umeng.commonsdk.service.UMGlobalContext.a.a.mApplicationContext = context.getApplicationContext();
        }
        return com.umeng.commonsdk.service.UMGlobalContext.a.a.mApplicationContext;
    }

    public static com.umeng.commonsdk.service.UMGlobalContext getInstance(android.content.Context context) {
        if (com.umeng.commonsdk.service.UMGlobalContext.a.a.mApplicationContext == null && context != null) {
            com.umeng.commonsdk.service.UMGlobalContext.a.a.mApplicationContext = context;
        }
        return com.umeng.commonsdk.service.UMGlobalContext.a.a;
    }

    public java.lang.String getAppVersion() {
        if (android.text.TextUtils.isEmpty(this.mAppVersion)) {
            this.mAppVersion = com.umeng.commonsdk.utils.UMUtils.getAppVersionName(this.mApplicationContext);
        }
        return this.mAppVersion;
    }

    public java.lang.String getAppkey() {
        if (android.text.TextUtils.isEmpty(this.mAppkey)) {
            this.mAppkey = com.umeng.commonsdk.UMConfigure.sAppkey;
        }
        return this.mAppkey;
    }

    public java.lang.String getChannel() {
        if (android.text.TextUtils.isEmpty(this.mChannel)) {
            this.mChannel = com.umeng.commonsdk.UMConfigure.sChannel;
        }
        return this.mChannel;
    }

    public java.lang.String getProcessName(android.content.Context context) {
        java.lang.String currentProcessName;
        if (android.text.TextUtils.isEmpty(this.mProcessName)) {
            if (context != null) {
                android.content.Context context2 = com.umeng.commonsdk.service.UMGlobalContext.a.a.mApplicationContext;
                if (context2 != null) {
                    currentProcessName = com.umeng.commonsdk.framework.UMFrUtils.getCurrentProcessName(context2);
                }
                this.mProcessName = currentProcessName;
            } else {
                context = com.umeng.commonsdk.service.UMGlobalContext.a.a.mApplicationContext;
            }
            currentProcessName = com.umeng.commonsdk.framework.UMFrUtils.getCurrentProcessName(context);
            this.mProcessName = currentProcessName;
        }
        return this.mProcessName;
    }

    public boolean isMainProcess(android.content.Context context) {
        return com.umeng.commonsdk.utils.UMUtils.isMainProgress(context);
    }

    public java.lang.String toString() {
        if (com.umeng.commonsdk.service.UMGlobalContext.a.a.mApplicationContext == null) {
            return "uninitialized.";
        }
        java.lang.StringBuilder sb = new java.lang.StringBuilder("[");
        java.lang.StringBuilder sbO = e.a.c.a.a.o("appkey:");
        sbO.append(this.mAppkey);
        sbO.append(",");
        sb.append(sbO.toString());
        sb.append("channel:" + this.mChannel + ",");
        sb.append("procName:" + this.mProcessName + "]");
        return sb.toString();
    }
}
